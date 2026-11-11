#!/usr/bin/env python3
"""Differential application test, independent ISA oracle, parser and IR checks."""
from pathlib import Path
import random
import subprocess

ROOT = Path(__file__).resolve().parents[1]
BUILD = ROOT / "build"
MODES = ("sim", "calls", "ir")


def run(*args, ok=True):
    p = subprocess.run([str(a) for a in args], cwd=ROOT, text=True,
                       capture_output=True, timeout=120)
    if ok:
        assert p.returncode == 0, (args, p.stdout, p.stderr)
    else:
        assert p.returncode != 0, (args, "unexpected success")
    return p


for frames in (1, 2, 16, 64):
    expected = run(BUILD / "reference", "--headless", "--frames", frames).stdout
    for mode in MODES:
        actual = run(BUILD / "asm2ir", "--mode", mode, "--headless",
                     "--frames", frames).stdout
        assert actual == expected, (mode, frames, actual, expected)
    if frames == 64:
        assert expected == (ROOT / "stats/O2/result.txt").read_text()
    print(f"Application: {frames} frames, all modes match C: {expected.strip()}", flush=True)

# Independent fixed-seed oracle: wrapping arithmetic, zero divisors, signed
# comparisons, source/destination aliasing, immediate/register operands, memory.
rng = random.Random(42)
regs = [0] * 32
memory = {}
lines = []
mask = 2**32 - 1


def signed(x):
    return x if x < 2**31 else x - 2**32


def operand():
    if rng.randrange(2):
        r = rng.randrange(32)
        return f"r{r}", regs[r]
    v = rng.choice([0, 1, mask, 2**31, rng.getrandbits(32)])
    return hex(v), v


for _ in range(500):
    op = rng.choice(("mov", "add", "sub", "mul", "urem", "and", "eq", "slt",
                     "select", "load", "store"))
    dst = rng.randrange(32)
    aa, a = operand()
    bb, b = operand()
    cc, c = operand()
    if op == "store":
        lines.append(f"store {aa} {bb} {cc}")
        memory[(a + b) & 131071] = c
        continue
    if op == "mov":
        result, args = a, aa
    elif op == "select":
        result, args = b if a else c, f"{aa} {bb} {cc}"
    else:
        args = f"{aa} {bb}"
        result = {
            "add": lambda: a + b, "sub": lambda: a - b, "mul": lambda: a * b,
            "urem": lambda: a % b if b else 0, "and": lambda: a & b,
            "eq": lambda: int(a == b), "slt": lambda: int(signed(a) < signed(b)),
            "load": lambda: memory.get((a + b) & 131071, 0),
        }[op]()
    lines.append(f"{op} r{dst} {args}")
    regs[dst] = result & mask

# Explicit forward/backward control flow, false/true jnz, loop wrap and alias.
lines += [
    "mov r0 0", "mov r1 0", "jnz r0 bad", "jmp start",
    "bad: mov r1 999", "halt", "start: add r1 r1 7",
    "loop r0 5 start", "jnz r1 good", "jmp bad",
    "good: mov r2 -1", "loop r2 0 bad",
    "mov r3 9", "loop r3 r3 bad", "halt", "mov r1 888"
]
regs[0], regs[1], regs[2], regs[3] = 5, 35, 0, 10
source = BUILD / "isa.s"
source.write_text("\n".join(lines) + "\n")
expected = {f"r{i}": v for i, v in enumerate(regs)}
expected.update({f"m{i}": v for i, v in memory.items() if v})
for mode in MODES:
    state = BUILD / f"state-{mode}.txt"
    run(BUILD / "asm2ir", "--asm", source, "--mode", mode,
        "--headless", "--dump-state", state)
    actual = {k: int(v) for k, v in
              (line.split("=") for line in state.read_text().splitlines())}
    assert actual == expected, (mode, "ISA state differs from Python oracle")
print("ISA: 500 generated instructions and control-flow cases match independent oracle", flush=True)

# EOF without halt is defined to return.
source.write_text("mov r31 123\n")
for mode in MODES:
    run(BUILD / "asm2ir", "--asm", source, "--mode", mode, "--headless")

for text in ("", "wat r0", "mov 1 2", "mov r32 1", "mov r0 4294967296",
             "mov r0 -2147483649", "mov r0 1 junk", "mov r0 nope",
             "jmp absent", "a: halt\na: halt", "jmp end\nend:",
             "jnz 1 123", "loop 0 2 foo", "mov r0 0xzz"):
    source.write_text(text + "\n")
    p = run(BUILD / "asm2ir", "--asm", source, "--headless", ok=False)
    assert "error:" in p.stderr
for args in (("--mode", "bad"), ("--frames", "-1"), ("--frames", "0"),
             ("--frames", "2oops"), ("--mode",), ("--emit-only",),
             ("--mode", "sim", "--emit-ir", "x")):
    run(BUILD / "asm2ir", *args, ok=False)
print("Parser/CLI: malformed programs and options rejected", flush=True)

calls = (BUILD / "calls.ll").read_text()
direct = (BUILD / "direct.ll").read_text()
assert "call i32 @emu_" in calls
assert "@emu_" not in direct
assert "call void @simPutPixel" in direct and "call void @simFlush" in direct
for op in ("add i32", "mul i32", "urem i32", "icmp slt", "select i1",
           "getelementptr i32", "br i1"):
    assert op in direct, op
assert "@emu_jmp" not in calls and "@emu_loop" not in calls
print("IR: emulator calls only in calls mode; native operations and branches in ir mode")
print("All checks passed.")
