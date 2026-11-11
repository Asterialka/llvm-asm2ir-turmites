#include "machine.h"
extern "C" {
#include "sim.h"
#include "sim_control.h"
}
#include <iostream>
#include <memory>
#include <stdexcept>

int main(int argc, char **argv) {
    try {
        std::string mode = "ir", input = "app.s", output, state;
        uint32_t frames = 0;
        bool headless = false, emitOnly = false;
        for (int i = 1; i < argc; ++i) {
            std::string arg = argv[i];
            auto next = [&]() -> std::string {
                if (++i == argc) throw std::runtime_error("Missing value for " + arg);
                return argv[i];
            };
            if (arg == "--mode") mode = next();
            else if (arg == "--asm") input = next();
            else if (arg == "--emit-ir") output = next();
            else if (arg == "--dump-state") state = next();
            else if (arg == "--headless") headless = true;
            else if (arg == "--emit-only") emitOnly = true;
            else if (arg == "--frames") {
                auto text = next();
                size_t used = 0;
                auto n = std::stoll(text, &used);
                if (used != text.size() || n < 1 || n > 1000000)
                    throw std::runtime_error("Frames must be between 1 and 1000000");
                frames = static_cast<uint32_t>(n);
            } else if (arg == "--help") {
                std::cout << "Usage: asm2ir [--mode sim|calls|ir] [--asm app.s]\n"
                             "  [--headless] [--frames N] [--emit-ir file.ll] [--emit-only]\n"
                             "  [--dump-state file] (for programs returning via halt/end)\n";
                return 0;
            } else throw std::runtime_error("Unknown option: " + arg);
        }
        if (mode != "sim" && mode != "calls" && mode != "ir")
            throw std::runtime_error("Mode must be sim, calls or ir");
        if ((emitOnly || !output.empty()) && mode == "sim")
            throw std::runtime_error("IR output requires calls or ir mode");
        if (emitOnly && output.empty()) throw std::runtime_error("--emit-only requires --emit-ir");
        auto program = parse(input);
        auto machine = std::make_unique<Machine>();
        if (!emitOnly) {
            if (headless && !frames) frames = 64;
            simConfigure(frames, headless);
            simInit();
        }
        if (mode == "sim") interpret(program, *machine);
        else executeIR(program, *machine, mode == "calls", output, emitOnly);
        if (!state.empty()) dumpState(*machine, state);
        return 0;
    } catch (const std::exception &e) {
        std::cerr << "error: " << e.what() << "\n";
        return 1;
    }
}
