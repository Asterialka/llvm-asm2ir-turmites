#pragma once
#include <array>
#include <cstdint>
#include <string>
#include <vector>

constexpr uint32_t MemorySize = 131072;
struct Machine {
    std::array<uint32_t, 32> regs{};
    std::array<uint32_t, MemorySize> memory{};
};
enum class Op { Mov, Add, Sub, Mul, Rem, And, Eq, Slt, Select,
                Load, Store, Pixel, Flush, Jump, Jnz, Loop, Halt };
struct Spec { const char *name; Op op; unsigned argc; bool destination; };
extern const std::vector<Spec> specs;
struct Operand { bool reg = false; uint32_t value = 0; };
struct Instruction {
    Op op;
    std::array<Operand, 4> args{};
    size_t target = 0;
    unsigned line = 0;
};
using Program = std::vector<Instruction>;
using Emulator = uint32_t (*)(Machine *, uint32_t, uint32_t, uint32_t);
Program parse(const std::string &path);
Emulator emulator(Op op);
void interpret(const Program &program, Machine &machine);
void executeIR(const Program &program, Machine &machine, bool calls,
               const std::string &output, bool emitOnly);
void dumpState(const Machine &machine, const std::string &path);
