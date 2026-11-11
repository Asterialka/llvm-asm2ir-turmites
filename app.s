# Six-colour turmites, 1536x768 pixels, 384x192 cells.
# Memory: cells=0..73727; x=73728; y=73760; dir=73792;
# phase=73824; turn=73856; palette=73862.
store 73856 0 1
store 73856 1 -1
store 73856 2 -1
store 73856 3 1
store 73856 4 1
store 73856 5 -1
store 73862 0 0xff000000
store 73862 1 0xff293c83
store 73862 2 0xff398bb6
store 73862 3 0xff78d4be
store 73862 4 0xfff3ca7d
store 73862 5 0xffef7185
mov r0 0
init:
mul r1 r0 101
add r1 r1 37
urem r1 r1 384
store 73728 r0 r1
mul r1 r0 73
add r1 r1 19
urem r1 r1 192
store 73760 r0 r1
mul r1 r0 7
and r1 r1 3
store 73792 r0 r1
urem r1 r0 6
store 73824 r0 r1
loop r0 32 init

frame:
mov r1 0
step:
mov r0 0
ant:
load r2 73728 r0
load r3 73760 r0
mul r4 r3 384
add r4 r4 r2
load r5 0 r4
add r6 r5 1
eq r7 r6 6
select r6 r7 0 r6
load r7 73824 r0
add r7 r5 r7
slt r8 r7 6
sub r9 r7 6
select r7 r8 r7 r9
load r8 73856 r7
load r9 73792 r0
add r9 r9 r8
add r9 r9 4
and r9 r9 3
store 73792 r0 r9
store 0 r4 r6
load r10 73862 r6
# paint_cell: row-major 4x4 pixels, exactly as in app.c.
mul r11 r2 4
mul r12 r3 4
mov r13 0
paint_y:
mov r14 0
paint_x:
add r15 r11 r14
add r16 r12 r13
pixel r15 r16 r10
loop r14 4 paint_x
loop r13 4 paint_y
# Move and wrap the ant.
eq r7 r9 1
eq r8 r9 3
add r2 r2 r7
sub r2 r2 r8
eq r7 r9 2
eq r8 r9 0
add r3 r3 r7
sub r3 r3 r8
slt r7 r2 0
select r2 r7 383 r2
eq r7 r2 384
select r2 r7 0 r2
slt r7 r3 0
select r3 r7 191 r3
eq r7 r3 192
select r3 r7 0 r3
store 73728 r0 r2
store 73760 r0 r3
loop r0 32 ant
loop r1 128 step

mov r0 0
highlight:
load r2 73728 r0
load r3 73760 r0
mul r2 r2 4
mul r3 r3 4
add r2 r2 1
add r3 r3 1
add r4 r2 1
add r5 r3 1
pixel r2 r3 0xffffffff
pixel r4 r3 0xffffffff
pixel r2 r5 0xffffffff
pixel r4 r5 0xffffffff
loop r0 32 highlight
flush
jmp frame
