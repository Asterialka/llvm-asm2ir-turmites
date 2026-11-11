#include "machine.h"
extern "C" {
#include "sim.h"
}
#include <llvm/ExecutionEngine/ExecutionEngine.h>
#include <llvm/ExecutionEngine/MCJIT.h>
#include <llvm/IR/IRBuilder.h>
#include <llvm/IR/Module.h>
#include <llvm/IR/Verifier.h>
#include <llvm/Support/TargetSelect.h>
#include <llvm/Support/raw_ostream.h>
#include <memory>
#include <stdexcept>

void executeIR(const Program &program, Machine &machine, bool calls,
               const std::string &output, bool emitOnly) {
    using namespace llvm;
    InitializeNativeTarget();
    InitializeNativeTargetAsmPrinter();
    LLVMContext context;
    auto module = std::make_unique<Module>(calls ? "turmites.calls" : "turmites.direct", context);
    IRBuilder<> b(context);
    auto *i32 = b.getInt32Ty();
    auto *ptr = PointerType::getUnqual(context);
    // Three pointers avoid assuming the native C++ struct's layout in IR.
    auto *fn = Function::Create(FunctionType::get(b.getVoidTy(), {ptr, ptr, ptr}, false),
                                Function::ExternalLinkage, "asm_main", *module);
    auto *state = fn->getArg(0);
    auto *regs = fn->getArg(1);
    auto *memory = fn->getArg(2);
    state->setName("machine"); regs->setName("regs"); memory->setName("memory");
    std::vector<BasicBlock *> blocks;
    for (size_t n = 0; n <= program.size(); ++n)
        blocks.push_back(BasicBlock::Create(context, "pc" + std::to_string(n), fn));
    auto regptr = [&](unsigned r) { return b.CreateGEP(i32, regs, b.getInt32(r)); };
    auto read = [&](Operand a) -> Value * {
        if (a.reg) return b.CreateLoad(i32, regptr(a.value));
        return b.getInt32(a.value);
    };
    auto memptr = [&](Value *a, Value *v) {
        return b.CreateGEP(i32, memory, b.CreateAnd(b.CreateAdd(a, v), b.getInt32(MemorySize - 1)));
    };
    std::vector<std::pair<Function *, void *>> mappings;
    auto external = [&](const std::string &name, FunctionType *type, void *address) {
        auto callee = module->getOrInsertFunction(name, type);
        mappings.emplace_back(cast<Function>(callee.getCallee()), address);
        return callee;
    };
    for (size_t n = 0; n < program.size(); ++n) {
        b.SetInsertPoint(blocks[n]);
        const auto &inst = program[n];
        auto &args = inst.args;
        if (inst.op == Op::Halt) { b.CreateRetVoid(); continue; }
        if (inst.op == Op::Jump) { b.CreateBr(blocks[inst.target]); continue; }
        if (inst.op == Op::Jnz) {
            b.CreateCondBr(b.CreateICmpNE(read(args[0]), b.getInt32(0)),
                           blocks[inst.target], blocks[n + 1]);
            continue;
        }
        if (inst.op == Op::Loop) {
            auto *limit = read(args[1]);
            auto *next = b.CreateAdd(read(args[0]), b.getInt32(1));
            b.CreateStore(next, regptr(args[0].value));
            b.CreateCondBr(b.CreateICmpULT(next, limit), blocks[inst.target], blocks[n + 1]);
            continue;
        }
        const auto &spec = specs[static_cast<unsigned>(inst.op)];
        unsigned offset = spec.destination ? 1 : 0;
        Value *a = read(args[offset]), *v = read(args[offset + 1]), *c = read(args[offset + 2]);
        Value *result = nullptr;
        if (calls) {
            auto callee = external("emu_" + std::string(spec.name),
                FunctionType::get(i32, {ptr, i32, i32, i32}, false),
                reinterpret_cast<void *>(emulator(inst.op)));
            result = b.CreateCall(callee, {state, a, v, c});
        } else {
            switch (inst.op) {
            case Op::Mov: result = a; break;
            case Op::Add: result = b.CreateAdd(a, v); break;
            case Op::Sub: result = b.CreateSub(a, v); break;
            case Op::Mul: result = b.CreateMul(a, v); break;
            case Op::And: result = b.CreateAnd(a, v); break;
            case Op::Rem: {
                auto *zero = b.CreateICmpEQ(v, b.getInt32(0));
                // Never generate a division by zero, even in an unselected value.
                auto *safe = b.CreateSelect(zero, b.getInt32(1), v);
                result = b.CreateSelect(zero, b.getInt32(0), b.CreateURem(a, safe));
                break;
            }
            case Op::Eq: result = b.CreateZExt(b.CreateICmpEQ(a, v), i32); break;
            case Op::Slt: result = b.CreateZExt(b.CreateICmpSLT(a, v), i32); break;
            case Op::Select: result = b.CreateSelect(b.CreateICmpNE(a, b.getInt32(0)), v, c); break;
            case Op::Load: result = b.CreateLoad(i32, memptr(a, v)); break;
            case Op::Store: b.CreateStore(c, memptr(a, v)); break;
            case Op::Pixel:
                b.CreateCall(external("simPutPixel",
                    FunctionType::get(b.getVoidTy(), {i32, i32, i32}, false),
                    reinterpret_cast<void *>(&simPutPixel)), {a, v, c});
                break;
            case Op::Flush:
                b.CreateCall(external("simFlush", FunctionType::get(b.getVoidTy(), false),
                    reinterpret_cast<void *>(&simFlush)));
                break;
            default: throw std::runtime_error("Unexpected opcode in IR generator");
            }
        }
        if (spec.destination) b.CreateStore(result, regptr(args[0].value));
        b.CreateBr(blocks[n + 1]);
    }
    b.SetInsertPoint(blocks.back());
    b.CreateRetVoid();
    std::string error;
    EngineBuilder builder(std::move(module));
    builder.setEngineKind(EngineKind::JIT).setErrorStr(&error);
    std::unique_ptr<ExecutionEngine> engine(builder.create());
    if (!engine) throw std::runtime_error("ExecutionEngine: " + error);
    auto *generated = fn->getParent();
    generated->setDataLayout(engine->getDataLayout());
    if (verifyModule(*generated, &errs())) throw std::runtime_error("Invalid generated LLVM IR");
    if (!output.empty()) {
        std::error_code ec;
        raw_fd_ostream file(output, ec);
        if (ec) throw std::runtime_error("Cannot write IR: " + ec.message());
        generated->print(file, nullptr);
        file.flush();
        if (file.has_error()) throw std::runtime_error("IR write failed");
    }
    if (emitOnly) return;
    for (auto [function, address] : mappings) engine->addGlobalMapping(function, address);
    engine->finalizeObject();
    auto address = engine->getFunctionAddress("asm_main");
    if (!address) throw std::runtime_error("JIT entry point not found");
    reinterpret_cast<void (*)(Machine *, uint32_t *, uint32_t *)>(address)(
        &machine, machine.regs.data(), machine.memory.data());
}
