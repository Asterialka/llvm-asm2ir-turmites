# Prefer a working system LLVM; this workspace also has the task-2 toolchain.
LLVM_CONFIG ?= $(shell if llvm-config --link-shared --libs core >/dev/null 2>&1; then command -v llvm-config; elif test -x ../llvm-2-task/.tools/toolchain/usr/bin/llvm-config; then realpath ../llvm-2-task/.tools/toolchain/usr/bin/llvm-config; else echo llvm-config; fi)
PKG_CONFIG ?= pkg-config
CXXFLAGS := -O2 -Wall -Wextra -Wpedantic
LLVM_FLAGS = $(shell $(LLVM_CONFIG) --cxxflags | sed 's/-I/-isystem /g')
LLVM_LIBS = $(shell $(LLVM_CONFIG) --link-shared --ldflags --libs core executionengine mcjit native --system-libs)
SDL_FLAGS = $(shell $(PKG_CONFIG) --cflags sdl2)
SDL_LIBS = $(shell $(PKG_CONFIG) --libs sdl2)
MODE ?= ir
FRAMES ?= 64

.PHONY: all run check ir clean
all: build/asm2ir
build:
	mkdir -p $@
build/sim.o: src/sim.c src/sim.h src/sim_control.h | build
	$(CC) -std=c11 -O2 -Wall -Wextra $(SDL_FLAGS) -c $< -o $@
build/asm2ir: src/main.cpp src/machine.cpp src/irgen.cpp src/machine.h src/sim.h src/sim_control.h build/sim.o
	$(CXX) $(LLVM_FLAGS) $(CXXFLAGS) -std=c++17 -fexceptions -Isrc src/main.cpp src/machine.cpp src/irgen.cpp build/sim.o $(LLVM_LIBS) -Wl,-rpath,$(shell $(LLVM_CONFIG) --libdir) $(SDL_LIBS) -o $@
build/reference: reference/app.c reference/main.c src/sim.h src/sim_control.h build/sim.o
	$(CC) -std=c11 -O2 -Wall -Wextra -Isrc reference/app.c reference/main.c build/sim.o $(SDL_LIBS) -o $@
run: all
	./build/asm2ir --mode $(MODE)
ir: all
	./build/asm2ir --mode calls --emit-ir build/calls.ll --emit-only
	./build/asm2ir --mode ir --emit-ir build/direct.ll --emit-only
check: all build/reference ir
	python3 tests/check.py
clean:
	rm -rf build
