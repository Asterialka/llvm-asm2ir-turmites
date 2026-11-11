#include "machine.h"
extern "C" {
#include "sim.h"
}
#include <algorithm>
#include <fstream>
#include <iomanip>
#include <limits>
#include <map>
#include <regex>
#include <sstream>
#include <stdexcept>

const std::vector<Spec> specs = {
    {"mov", Op::Mov, 2, true}, {"add", Op::Add, 3, true},
    {"sub", Op::Sub, 3, true}, {"mul", Op::Mul, 3, true},
    {"urem", Op::Rem, 3, true}, {"and", Op::And, 3, true},
    {"eq", Op::Eq, 3, true}, {"slt", Op::Slt, 3, true},
    {"select", Op::Select, 4, true}, {"load", Op::Load, 3, true},
    {"store", Op::Store, 3, false}, {"pixel", Op::Pixel, 3, false},
    {"flush", Op::Flush, 0, false}, {"jmp", Op::Jump, 1, false},
    {"jnz", Op::Jnz, 2, false}, {"loop", Op::Loop, 3, true},
    {"halt", Op::Halt, 0, false}
};
Program parse(const std::string &path) {
    std::ifstream in(path);
    if (!in) throw std::runtime_error("Cannot open ASM: " + path);
    Program result;
    std::map<std::string, size_t> labels;
    std::vector<std::pair<size_t, std::string>> references;
    std::string line;
    unsigned number = 0;
    const std::regex labelPattern("[A-Za-z_][A-Za-z_0-9]*");
    while (std::getline(in, line)) {
        ++number;
        auto fail = [&](const std::string &s) {
            throw std::runtime_error(path + ":" + std::to_string(number) + ": " + s);
        };
        line = line.substr(0, line.find('#'));
        std::replace(line.begin(), line.end(), ',', ' ');
        std::istringstream words(line);
        std::string name;
        if (!(words >> name)) continue;
        if (name.back() == ':') {
            name.pop_back();
            if (!std::regex_match(name, labelPattern)) fail("Invalid label");
            if (!labels.emplace(name, result.size()).second) fail("Duplicate label: " + name);
            if (!(words >> name)) continue;
        }
        auto spec = std::find_if(specs.begin(), specs.end(),
                                [&](const Spec &s) { return name == s.name; });
        if (spec == specs.end()) fail("Unknown instruction: " + name);
        std::vector<std::string> args;
        std::string token;
        while (words >> token) args.push_back(token);
        if (args.size() != spec->argc) fail("Wrong operand count for " + name);
        Instruction inst{};
        inst.op = spec->op;
        inst.line = number;
        for (unsigned i = 0; i < args.size(); ++i) {
            bool target = (inst.op == Op::Jump && i == 0) ||
                          (inst.op == Op::Jnz && i == 1) ||
                          (inst.op == Op::Loop && i == 2);
            if (target) {
                if (!std::regex_match(args[i], labelPattern)) fail("Invalid branch label");
                references.emplace_back(result.size(), args[i]);
                continue;
            }
            bool reg = args[i][0] == 'r';
            try {
                size_t used = 0;
                const auto text = reg ? args[i].substr(1) : args[i];
                if (text.empty()) fail("Empty register");
                long long value = std::stoll(text, &used, reg ? 10 : 0);
                if (used != text.size() ||
                    (reg && (value < 0 || value >= 32)) ||
                    (!reg && (value < INT32_MIN || value > UINT32_MAX)))
                    fail("Operand out of range: " + args[i]);
                inst.args[i] = {reg, static_cast<uint32_t>(value)};
            } catch (const std::invalid_argument &) { fail("Invalid operand: " + args[i]); }
              catch (const std::out_of_range &) { fail("Operand out of range: " + args[i]); }
        }
        if (spec->destination && !inst.args[0].reg) fail("Destination must be a register");
        result.push_back(inst);
    }
    if (result.empty()) throw std::runtime_error(path + ": Empty program");
    for (const auto &[index, label] : references) {
        auto found = labels.find(label);
        if (found == labels.end() || found->second == result.size())
            throw std::runtime_error(path + ":" + std::to_string(result[index].line) +
                                     ": Undefined or empty target: " + label);
        result[index].target = found->second;
    }
    return result;
}

// The same instruction functions are used by the interpreter and calls-mode JIT.
// Arguments are already read from registers; the returned value is written to dst.
#define EMU(name, expression) \
static uint32_t name([[maybe_unused]] Machine *m, [[maybe_unused]] uint32_t a, \
                     [[maybe_unused]] uint32_t b, [[maybe_unused]] uint32_t c) { return (expression); }
EMU(mov, a)
EMU(add, a + b)
EMU(sub, a - b)
EMU(mul, a * b)
EMU(rem, b ? a % b : 0)
EMU(bitand_, a & b)
EMU(eq, a == b)
EMU(slt, (a ^ 0x80000000u) < (b ^ 0x80000000u))
EMU(select_, a ? b : c)
EMU(load, m->memory[(a + b) & (MemorySize - 1)])
EMU(store, (m->memory[(a + b) & (MemorySize - 1)] = c, 0))
EMU(pixel, (simPutPixel(a, b, c), 0))
EMU(flush, (simFlush(), 0))
#undef EMU
Emulator emulator(Op op) {
    switch (op) {
    case Op::Mov: return mov; case Op::Add: return add; case Op::Sub: return sub;
    case Op::Mul: return mul; case Op::Rem: return rem; case Op::And: return bitand_;
    case Op::Eq: return eq; case Op::Slt: return slt; case Op::Select: return select_;
    case Op::Load: return load; case Op::Store: return store;
    case Op::Pixel: return pixel; case Op::Flush: return flush;
    default: throw std::runtime_error("Control flow has no emulator");
    }
}
void interpret(const Program &program, Machine &machine) {
    size_t pc = 0;
    auto value = [&](Operand a) { return a.reg ? machine.regs[a.value] : a.value; };
    while (pc < program.size()) {
        const auto &i = program[pc++];
        if (i.op == Op::Halt) return;
        if (i.op == Op::Jump) { pc = i.target; continue; }
        if (i.op == Op::Jnz) { if (value(i.args[0])) pc = i.target; continue; }
        if (i.op == Op::Loop) {
            // Read the limit before modifying dst (also defined when they alias).
            auto limit = value(i.args[1]);
            if (++machine.regs[i.args[0].value] < limit) pc = i.target;
            continue;
        }
        bool dst = specs[static_cast<unsigned>(i.op)].destination;
        unsigned offset = dst ? 1 : 0;
        auto result = emulator(i.op)(&machine, value(i.args[offset]),
                                     value(i.args[offset + 1]), value(i.args[offset + 2]));
        if (dst) machine.regs[i.args[0].value] = result;
    }
}
void dumpState(const Machine &machine, const std::string &path) {
    std::ofstream out(path);
    if (!out) throw std::runtime_error("Cannot write state: " + path);
    for (unsigned i = 0; i < machine.regs.size(); ++i)
        out << "r" << i << "=" << machine.regs[i] << "\n";
    for (unsigned i = 0; i < MemorySize; ++i)
        if (machine.memory[i]) out << "m" << i << "=" << machine.memory[i] << "\n";
    if (!out) throw std::runtime_error("State write failed");
}
