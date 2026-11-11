; ModuleID = 'turmites.calls'
source_filename = "turmites.calls"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"

define void @asm_main(ptr %machine, ptr %regs, ptr %memory) {
pc0:
  %0 = call i32 @emu_store(ptr %machine, i32 73856, i32 0, i32 1)
  br label %pc1

pc1:                                              ; preds = %pc0
  %1 = call i32 @emu_store(ptr %machine, i32 73856, i32 1, i32 -1)
  br label %pc2

pc2:                                              ; preds = %pc1
  %2 = call i32 @emu_store(ptr %machine, i32 73856, i32 2, i32 -1)
  br label %pc3

pc3:                                              ; preds = %pc2
  %3 = call i32 @emu_store(ptr %machine, i32 73856, i32 3, i32 1)
  br label %pc4

pc4:                                              ; preds = %pc3
  %4 = call i32 @emu_store(ptr %machine, i32 73856, i32 4, i32 1)
  br label %pc5

pc5:                                              ; preds = %pc4
  %5 = call i32 @emu_store(ptr %machine, i32 73856, i32 5, i32 -1)
  br label %pc6

pc6:                                              ; preds = %pc5
  %6 = call i32 @emu_store(ptr %machine, i32 73862, i32 0, i32 -16777216)
  br label %pc7

pc7:                                              ; preds = %pc6
  %7 = call i32 @emu_store(ptr %machine, i32 73862, i32 1, i32 -14074749)
  br label %pc8

pc8:                                              ; preds = %pc7
  %8 = call i32 @emu_store(ptr %machine, i32 73862, i32 2, i32 -13005898)
  br label %pc9

pc9:                                              ; preds = %pc8
  %9 = call i32 @emu_store(ptr %machine, i32 73862, i32 3, i32 -8858434)
  br label %pc10

pc10:                                             ; preds = %pc9
  %10 = call i32 @emu_store(ptr %machine, i32 73862, i32 4, i32 -800131)
  br label %pc11

pc11:                                             ; preds = %pc10
  %11 = call i32 @emu_store(ptr %machine, i32 73862, i32 5, i32 -1085051)
  br label %pc12

pc12:                                             ; preds = %pc11
  %12 = call i32 @emu_mov(ptr %machine, i32 0, i32 0, i32 0)
  %13 = getelementptr i32, ptr %regs, i32 0
  store i32 %12, ptr %13, align 4
  br label %pc13

pc13:                                             ; preds = %pc26, %pc12
  %14 = getelementptr i32, ptr %regs, i32 0
  %15 = load i32, ptr %14, align 4
  %16 = call i32 @emu_mul(ptr %machine, i32 %15, i32 101, i32 0)
  %17 = getelementptr i32, ptr %regs, i32 1
  store i32 %16, ptr %17, align 4
  br label %pc14

pc14:                                             ; preds = %pc13
  %18 = getelementptr i32, ptr %regs, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = call i32 @emu_add(ptr %machine, i32 %19, i32 37, i32 0)
  %21 = getelementptr i32, ptr %regs, i32 1
  store i32 %20, ptr %21, align 4
  br label %pc15

pc15:                                             ; preds = %pc14
  %22 = getelementptr i32, ptr %regs, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = call i32 @emu_urem(ptr %machine, i32 %23, i32 384, i32 0)
  %25 = getelementptr i32, ptr %regs, i32 1
  store i32 %24, ptr %25, align 4
  br label %pc16

pc16:                                             ; preds = %pc15
  %26 = getelementptr i32, ptr %regs, i32 0
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %regs, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = call i32 @emu_store(ptr %machine, i32 73728, i32 %27, i32 %29)
  br label %pc17

pc17:                                             ; preds = %pc16
  %31 = getelementptr i32, ptr %regs, i32 0
  %32 = load i32, ptr %31, align 4
  %33 = call i32 @emu_mul(ptr %machine, i32 %32, i32 73, i32 0)
  %34 = getelementptr i32, ptr %regs, i32 1
  store i32 %33, ptr %34, align 4
  br label %pc18

pc18:                                             ; preds = %pc17
  %35 = getelementptr i32, ptr %regs, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = call i32 @emu_add(ptr %machine, i32 %36, i32 19, i32 0)
  %38 = getelementptr i32, ptr %regs, i32 1
  store i32 %37, ptr %38, align 4
  br label %pc19

pc19:                                             ; preds = %pc18
  %39 = getelementptr i32, ptr %regs, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = call i32 @emu_urem(ptr %machine, i32 %40, i32 192, i32 0)
  %42 = getelementptr i32, ptr %regs, i32 1
  store i32 %41, ptr %42, align 4
  br label %pc20

pc20:                                             ; preds = %pc19
  %43 = getelementptr i32, ptr %regs, i32 0
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr i32, ptr %regs, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = call i32 @emu_store(ptr %machine, i32 73760, i32 %44, i32 %46)
  br label %pc21

pc21:                                             ; preds = %pc20
  %48 = getelementptr i32, ptr %regs, i32 0
  %49 = load i32, ptr %48, align 4
  %50 = call i32 @emu_mul(ptr %machine, i32 %49, i32 7, i32 0)
  %51 = getelementptr i32, ptr %regs, i32 1
  store i32 %50, ptr %51, align 4
  br label %pc22

pc22:                                             ; preds = %pc21
  %52 = getelementptr i32, ptr %regs, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = call i32 @emu_and(ptr %machine, i32 %53, i32 3, i32 0)
  %55 = getelementptr i32, ptr %regs, i32 1
  store i32 %54, ptr %55, align 4
  br label %pc23

pc23:                                             ; preds = %pc22
  %56 = getelementptr i32, ptr %regs, i32 0
  %57 = load i32, ptr %56, align 4
  %58 = getelementptr i32, ptr %regs, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = call i32 @emu_store(ptr %machine, i32 73792, i32 %57, i32 %59)
  br label %pc24

pc24:                                             ; preds = %pc23
  %61 = getelementptr i32, ptr %regs, i32 0
  %62 = load i32, ptr %61, align 4
  %63 = call i32 @emu_urem(ptr %machine, i32 %62, i32 6, i32 0)
  %64 = getelementptr i32, ptr %regs, i32 1
  store i32 %63, ptr %64, align 4
  br label %pc25

pc25:                                             ; preds = %pc24
  %65 = getelementptr i32, ptr %regs, i32 0
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr i32, ptr %regs, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = call i32 @emu_store(ptr %machine, i32 73824, i32 %66, i32 %68)
  br label %pc26

pc26:                                             ; preds = %pc25
  %70 = getelementptr i32, ptr %regs, i32 0
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  %73 = getelementptr i32, ptr %regs, i32 0
  store i32 %72, ptr %73, align 4
  %74 = icmp ult i32 %72, 32
  br i1 %74, label %pc13, label %pc27

pc27:                                             ; preds = %pc94, %pc26
  %75 = call i32 @emu_mov(ptr %machine, i32 0, i32 0, i32 0)
  %76 = getelementptr i32, ptr %regs, i32 1
  store i32 %75, ptr %76, align 4
  br label %pc28

pc28:                                             ; preds = %pc78, %pc27
  %77 = call i32 @emu_mov(ptr %machine, i32 0, i32 0, i32 0)
  %78 = getelementptr i32, ptr %regs, i32 0
  store i32 %77, ptr %78, align 4
  br label %pc29

pc29:                                             ; preds = %pc77, %pc28
  %79 = getelementptr i32, ptr %regs, i32 0
  %80 = load i32, ptr %79, align 4
  %81 = call i32 @emu_load(ptr %machine, i32 73728, i32 %80, i32 0)
  %82 = getelementptr i32, ptr %regs, i32 2
  store i32 %81, ptr %82, align 4
  br label %pc30

pc30:                                             ; preds = %pc29
  %83 = getelementptr i32, ptr %regs, i32 0
  %84 = load i32, ptr %83, align 4
  %85 = call i32 @emu_load(ptr %machine, i32 73760, i32 %84, i32 0)
  %86 = getelementptr i32, ptr %regs, i32 3
  store i32 %85, ptr %86, align 4
  br label %pc31

pc31:                                             ; preds = %pc30
  %87 = getelementptr i32, ptr %regs, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = call i32 @emu_mul(ptr %machine, i32 %88, i32 384, i32 0)
  %90 = getelementptr i32, ptr %regs, i32 4
  store i32 %89, ptr %90, align 4
  br label %pc32

pc32:                                             ; preds = %pc31
  %91 = getelementptr i32, ptr %regs, i32 4
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i32, ptr %regs, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = call i32 @emu_add(ptr %machine, i32 %92, i32 %94, i32 0)
  %96 = getelementptr i32, ptr %regs, i32 4
  store i32 %95, ptr %96, align 4
  br label %pc33

pc33:                                             ; preds = %pc32
  %97 = getelementptr i32, ptr %regs, i32 4
  %98 = load i32, ptr %97, align 4
  %99 = call i32 @emu_load(ptr %machine, i32 0, i32 %98, i32 0)
  %100 = getelementptr i32, ptr %regs, i32 5
  store i32 %99, ptr %100, align 4
  br label %pc34

pc34:                                             ; preds = %pc33
  %101 = getelementptr i32, ptr %regs, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = call i32 @emu_add(ptr %machine, i32 %102, i32 1, i32 0)
  %104 = getelementptr i32, ptr %regs, i32 6
  store i32 %103, ptr %104, align 4
  br label %pc35

pc35:                                             ; preds = %pc34
  %105 = getelementptr i32, ptr %regs, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = call i32 @emu_eq(ptr %machine, i32 %106, i32 6, i32 0)
  %108 = getelementptr i32, ptr %regs, i32 7
  store i32 %107, ptr %108, align 4
  br label %pc36

pc36:                                             ; preds = %pc35
  %109 = getelementptr i32, ptr %regs, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr i32, ptr %regs, i32 6
  %112 = load i32, ptr %111, align 4
  %113 = call i32 @emu_select(ptr %machine, i32 %110, i32 0, i32 %112)
  %114 = getelementptr i32, ptr %regs, i32 6
  store i32 %113, ptr %114, align 4
  br label %pc37

pc37:                                             ; preds = %pc36
  %115 = getelementptr i32, ptr %regs, i32 0
  %116 = load i32, ptr %115, align 4
  %117 = call i32 @emu_load(ptr %machine, i32 73824, i32 %116, i32 0)
  %118 = getelementptr i32, ptr %regs, i32 7
  store i32 %117, ptr %118, align 4
  br label %pc38

pc38:                                             ; preds = %pc37
  %119 = getelementptr i32, ptr %regs, i32 5
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr i32, ptr %regs, i32 7
  %122 = load i32, ptr %121, align 4
  %123 = call i32 @emu_add(ptr %machine, i32 %120, i32 %122, i32 0)
  %124 = getelementptr i32, ptr %regs, i32 7
  store i32 %123, ptr %124, align 4
  br label %pc39

pc39:                                             ; preds = %pc38
  %125 = getelementptr i32, ptr %regs, i32 7
  %126 = load i32, ptr %125, align 4
  %127 = call i32 @emu_slt(ptr %machine, i32 %126, i32 6, i32 0)
  %128 = getelementptr i32, ptr %regs, i32 8
  store i32 %127, ptr %128, align 4
  br label %pc40

pc40:                                             ; preds = %pc39
  %129 = getelementptr i32, ptr %regs, i32 7
  %130 = load i32, ptr %129, align 4
  %131 = call i32 @emu_sub(ptr %machine, i32 %130, i32 6, i32 0)
  %132 = getelementptr i32, ptr %regs, i32 9
  store i32 %131, ptr %132, align 4
  br label %pc41

pc41:                                             ; preds = %pc40
  %133 = getelementptr i32, ptr %regs, i32 8
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr i32, ptr %regs, i32 7
  %136 = load i32, ptr %135, align 4
  %137 = getelementptr i32, ptr %regs, i32 9
  %138 = load i32, ptr %137, align 4
  %139 = call i32 @emu_select(ptr %machine, i32 %134, i32 %136, i32 %138)
  %140 = getelementptr i32, ptr %regs, i32 7
  store i32 %139, ptr %140, align 4
  br label %pc42

pc42:                                             ; preds = %pc41
  %141 = getelementptr i32, ptr %regs, i32 7
  %142 = load i32, ptr %141, align 4
  %143 = call i32 @emu_load(ptr %machine, i32 73856, i32 %142, i32 0)
  %144 = getelementptr i32, ptr %regs, i32 8
  store i32 %143, ptr %144, align 4
  br label %pc43

pc43:                                             ; preds = %pc42
  %145 = getelementptr i32, ptr %regs, i32 0
  %146 = load i32, ptr %145, align 4
  %147 = call i32 @emu_load(ptr %machine, i32 73792, i32 %146, i32 0)
  %148 = getelementptr i32, ptr %regs, i32 9
  store i32 %147, ptr %148, align 4
  br label %pc44

pc44:                                             ; preds = %pc43
  %149 = getelementptr i32, ptr %regs, i32 9
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr i32, ptr %regs, i32 8
  %152 = load i32, ptr %151, align 4
  %153 = call i32 @emu_add(ptr %machine, i32 %150, i32 %152, i32 0)
  %154 = getelementptr i32, ptr %regs, i32 9
  store i32 %153, ptr %154, align 4
  br label %pc45

pc45:                                             ; preds = %pc44
  %155 = getelementptr i32, ptr %regs, i32 9
  %156 = load i32, ptr %155, align 4
  %157 = call i32 @emu_add(ptr %machine, i32 %156, i32 4, i32 0)
  %158 = getelementptr i32, ptr %regs, i32 9
  store i32 %157, ptr %158, align 4
  br label %pc46

pc46:                                             ; preds = %pc45
  %159 = getelementptr i32, ptr %regs, i32 9
  %160 = load i32, ptr %159, align 4
  %161 = call i32 @emu_and(ptr %machine, i32 %160, i32 3, i32 0)
  %162 = getelementptr i32, ptr %regs, i32 9
  store i32 %161, ptr %162, align 4
  br label %pc47

pc47:                                             ; preds = %pc46
  %163 = getelementptr i32, ptr %regs, i32 0
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr i32, ptr %regs, i32 9
  %166 = load i32, ptr %165, align 4
  %167 = call i32 @emu_store(ptr %machine, i32 73792, i32 %164, i32 %166)
  br label %pc48

pc48:                                             ; preds = %pc47
  %168 = getelementptr i32, ptr %regs, i32 4
  %169 = load i32, ptr %168, align 4
  %170 = getelementptr i32, ptr %regs, i32 6
  %171 = load i32, ptr %170, align 4
  %172 = call i32 @emu_store(ptr %machine, i32 0, i32 %169, i32 %171)
  br label %pc49

pc49:                                             ; preds = %pc48
  %173 = getelementptr i32, ptr %regs, i32 6
  %174 = load i32, ptr %173, align 4
  %175 = call i32 @emu_load(ptr %machine, i32 73862, i32 %174, i32 0)
  %176 = getelementptr i32, ptr %regs, i32 10
  store i32 %175, ptr %176, align 4
  br label %pc50

pc50:                                             ; preds = %pc49
  %177 = getelementptr i32, ptr %regs, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = call i32 @emu_mul(ptr %machine, i32 %178, i32 4, i32 0)
  %180 = getelementptr i32, ptr %regs, i32 11
  store i32 %179, ptr %180, align 4
  br label %pc51

pc51:                                             ; preds = %pc50
  %181 = getelementptr i32, ptr %regs, i32 3
  %182 = load i32, ptr %181, align 4
  %183 = call i32 @emu_mul(ptr %machine, i32 %182, i32 4, i32 0)
  %184 = getelementptr i32, ptr %regs, i32 12
  store i32 %183, ptr %184, align 4
  br label %pc52

pc52:                                             ; preds = %pc51
  %185 = call i32 @emu_mov(ptr %machine, i32 0, i32 0, i32 0)
  %186 = getelementptr i32, ptr %regs, i32 13
  store i32 %185, ptr %186, align 4
  br label %pc53

pc53:                                             ; preds = %pc58, %pc52
  %187 = call i32 @emu_mov(ptr %machine, i32 0, i32 0, i32 0)
  %188 = getelementptr i32, ptr %regs, i32 14
  store i32 %187, ptr %188, align 4
  br label %pc54

pc54:                                             ; preds = %pc57, %pc53
  %189 = getelementptr i32, ptr %regs, i32 11
  %190 = load i32, ptr %189, align 4
  %191 = getelementptr i32, ptr %regs, i32 14
  %192 = load i32, ptr %191, align 4
  %193 = call i32 @emu_add(ptr %machine, i32 %190, i32 %192, i32 0)
  %194 = getelementptr i32, ptr %regs, i32 15
  store i32 %193, ptr %194, align 4
  br label %pc55

pc55:                                             ; preds = %pc54
  %195 = getelementptr i32, ptr %regs, i32 12
  %196 = load i32, ptr %195, align 4
  %197 = getelementptr i32, ptr %regs, i32 13
  %198 = load i32, ptr %197, align 4
  %199 = call i32 @emu_add(ptr %machine, i32 %196, i32 %198, i32 0)
  %200 = getelementptr i32, ptr %regs, i32 16
  store i32 %199, ptr %200, align 4
  br label %pc56

pc56:                                             ; preds = %pc55
  %201 = getelementptr i32, ptr %regs, i32 15
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr i32, ptr %regs, i32 16
  %204 = load i32, ptr %203, align 4
  %205 = getelementptr i32, ptr %regs, i32 10
  %206 = load i32, ptr %205, align 4
  %207 = call i32 @emu_pixel(ptr %machine, i32 %202, i32 %204, i32 %206)
  br label %pc57

pc57:                                             ; preds = %pc56
  %208 = getelementptr i32, ptr %regs, i32 14
  %209 = load i32, ptr %208, align 4
  %210 = add i32 %209, 1
  %211 = getelementptr i32, ptr %regs, i32 14
  store i32 %210, ptr %211, align 4
  %212 = icmp ult i32 %210, 4
  br i1 %212, label %pc54, label %pc58

pc58:                                             ; preds = %pc57
  %213 = getelementptr i32, ptr %regs, i32 13
  %214 = load i32, ptr %213, align 4
  %215 = add i32 %214, 1
  %216 = getelementptr i32, ptr %regs, i32 13
  store i32 %215, ptr %216, align 4
  %217 = icmp ult i32 %215, 4
  br i1 %217, label %pc53, label %pc59

pc59:                                             ; preds = %pc58
  %218 = getelementptr i32, ptr %regs, i32 9
  %219 = load i32, ptr %218, align 4
  %220 = call i32 @emu_eq(ptr %machine, i32 %219, i32 1, i32 0)
  %221 = getelementptr i32, ptr %regs, i32 7
  store i32 %220, ptr %221, align 4
  br label %pc60

pc60:                                             ; preds = %pc59
  %222 = getelementptr i32, ptr %regs, i32 9
  %223 = load i32, ptr %222, align 4
  %224 = call i32 @emu_eq(ptr %machine, i32 %223, i32 3, i32 0)
  %225 = getelementptr i32, ptr %regs, i32 8
  store i32 %224, ptr %225, align 4
  br label %pc61

pc61:                                             ; preds = %pc60
  %226 = getelementptr i32, ptr %regs, i32 2
  %227 = load i32, ptr %226, align 4
  %228 = getelementptr i32, ptr %regs, i32 7
  %229 = load i32, ptr %228, align 4
  %230 = call i32 @emu_add(ptr %machine, i32 %227, i32 %229, i32 0)
  %231 = getelementptr i32, ptr %regs, i32 2
  store i32 %230, ptr %231, align 4
  br label %pc62

pc62:                                             ; preds = %pc61
  %232 = getelementptr i32, ptr %regs, i32 2
  %233 = load i32, ptr %232, align 4
  %234 = getelementptr i32, ptr %regs, i32 8
  %235 = load i32, ptr %234, align 4
  %236 = call i32 @emu_sub(ptr %machine, i32 %233, i32 %235, i32 0)
  %237 = getelementptr i32, ptr %regs, i32 2
  store i32 %236, ptr %237, align 4
  br label %pc63

pc63:                                             ; preds = %pc62
  %238 = getelementptr i32, ptr %regs, i32 9
  %239 = load i32, ptr %238, align 4
  %240 = call i32 @emu_eq(ptr %machine, i32 %239, i32 2, i32 0)
  %241 = getelementptr i32, ptr %regs, i32 7
  store i32 %240, ptr %241, align 4
  br label %pc64

pc64:                                             ; preds = %pc63
  %242 = getelementptr i32, ptr %regs, i32 9
  %243 = load i32, ptr %242, align 4
  %244 = call i32 @emu_eq(ptr %machine, i32 %243, i32 0, i32 0)
  %245 = getelementptr i32, ptr %regs, i32 8
  store i32 %244, ptr %245, align 4
  br label %pc65

pc65:                                             ; preds = %pc64
  %246 = getelementptr i32, ptr %regs, i32 3
  %247 = load i32, ptr %246, align 4
  %248 = getelementptr i32, ptr %regs, i32 7
  %249 = load i32, ptr %248, align 4
  %250 = call i32 @emu_add(ptr %machine, i32 %247, i32 %249, i32 0)
  %251 = getelementptr i32, ptr %regs, i32 3
  store i32 %250, ptr %251, align 4
  br label %pc66

pc66:                                             ; preds = %pc65
  %252 = getelementptr i32, ptr %regs, i32 3
  %253 = load i32, ptr %252, align 4
  %254 = getelementptr i32, ptr %regs, i32 8
  %255 = load i32, ptr %254, align 4
  %256 = call i32 @emu_sub(ptr %machine, i32 %253, i32 %255, i32 0)
  %257 = getelementptr i32, ptr %regs, i32 3
  store i32 %256, ptr %257, align 4
  br label %pc67

pc67:                                             ; preds = %pc66
  %258 = getelementptr i32, ptr %regs, i32 2
  %259 = load i32, ptr %258, align 4
  %260 = call i32 @emu_slt(ptr %machine, i32 %259, i32 0, i32 0)
  %261 = getelementptr i32, ptr %regs, i32 7
  store i32 %260, ptr %261, align 4
  br label %pc68

pc68:                                             ; preds = %pc67
  %262 = getelementptr i32, ptr %regs, i32 7
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr i32, ptr %regs, i32 2
  %265 = load i32, ptr %264, align 4
  %266 = call i32 @emu_select(ptr %machine, i32 %263, i32 383, i32 %265)
  %267 = getelementptr i32, ptr %regs, i32 2
  store i32 %266, ptr %267, align 4
  br label %pc69

pc69:                                             ; preds = %pc68
  %268 = getelementptr i32, ptr %regs, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = call i32 @emu_eq(ptr %machine, i32 %269, i32 384, i32 0)
  %271 = getelementptr i32, ptr %regs, i32 7
  store i32 %270, ptr %271, align 4
  br label %pc70

pc70:                                             ; preds = %pc69
  %272 = getelementptr i32, ptr %regs, i32 7
  %273 = load i32, ptr %272, align 4
  %274 = getelementptr i32, ptr %regs, i32 2
  %275 = load i32, ptr %274, align 4
  %276 = call i32 @emu_select(ptr %machine, i32 %273, i32 0, i32 %275)
  %277 = getelementptr i32, ptr %regs, i32 2
  store i32 %276, ptr %277, align 4
  br label %pc71

pc71:                                             ; preds = %pc70
  %278 = getelementptr i32, ptr %regs, i32 3
  %279 = load i32, ptr %278, align 4
  %280 = call i32 @emu_slt(ptr %machine, i32 %279, i32 0, i32 0)
  %281 = getelementptr i32, ptr %regs, i32 7
  store i32 %280, ptr %281, align 4
  br label %pc72

pc72:                                             ; preds = %pc71
  %282 = getelementptr i32, ptr %regs, i32 7
  %283 = load i32, ptr %282, align 4
  %284 = getelementptr i32, ptr %regs, i32 3
  %285 = load i32, ptr %284, align 4
  %286 = call i32 @emu_select(ptr %machine, i32 %283, i32 191, i32 %285)
  %287 = getelementptr i32, ptr %regs, i32 3
  store i32 %286, ptr %287, align 4
  br label %pc73

pc73:                                             ; preds = %pc72
  %288 = getelementptr i32, ptr %regs, i32 3
  %289 = load i32, ptr %288, align 4
  %290 = call i32 @emu_eq(ptr %machine, i32 %289, i32 192, i32 0)
  %291 = getelementptr i32, ptr %regs, i32 7
  store i32 %290, ptr %291, align 4
  br label %pc74

pc74:                                             ; preds = %pc73
  %292 = getelementptr i32, ptr %regs, i32 7
  %293 = load i32, ptr %292, align 4
  %294 = getelementptr i32, ptr %regs, i32 3
  %295 = load i32, ptr %294, align 4
  %296 = call i32 @emu_select(ptr %machine, i32 %293, i32 0, i32 %295)
  %297 = getelementptr i32, ptr %regs, i32 3
  store i32 %296, ptr %297, align 4
  br label %pc75

pc75:                                             ; preds = %pc74
  %298 = getelementptr i32, ptr %regs, i32 0
  %299 = load i32, ptr %298, align 4
  %300 = getelementptr i32, ptr %regs, i32 2
  %301 = load i32, ptr %300, align 4
  %302 = call i32 @emu_store(ptr %machine, i32 73728, i32 %299, i32 %301)
  br label %pc76

pc76:                                             ; preds = %pc75
  %303 = getelementptr i32, ptr %regs, i32 0
  %304 = load i32, ptr %303, align 4
  %305 = getelementptr i32, ptr %regs, i32 3
  %306 = load i32, ptr %305, align 4
  %307 = call i32 @emu_store(ptr %machine, i32 73760, i32 %304, i32 %306)
  br label %pc77

pc77:                                             ; preds = %pc76
  %308 = getelementptr i32, ptr %regs, i32 0
  %309 = load i32, ptr %308, align 4
  %310 = add i32 %309, 1
  %311 = getelementptr i32, ptr %regs, i32 0
  store i32 %310, ptr %311, align 4
  %312 = icmp ult i32 %310, 32
  br i1 %312, label %pc29, label %pc78

pc78:                                             ; preds = %pc77
  %313 = getelementptr i32, ptr %regs, i32 1
  %314 = load i32, ptr %313, align 4
  %315 = add i32 %314, 1
  %316 = getelementptr i32, ptr %regs, i32 1
  store i32 %315, ptr %316, align 4
  %317 = icmp ult i32 %315, 128
  br i1 %317, label %pc28, label %pc79

pc79:                                             ; preds = %pc78
  %318 = call i32 @emu_mov(ptr %machine, i32 0, i32 0, i32 0)
  %319 = getelementptr i32, ptr %regs, i32 0
  store i32 %318, ptr %319, align 4
  br label %pc80

pc80:                                             ; preds = %pc92, %pc79
  %320 = getelementptr i32, ptr %regs, i32 0
  %321 = load i32, ptr %320, align 4
  %322 = call i32 @emu_load(ptr %machine, i32 73728, i32 %321, i32 0)
  %323 = getelementptr i32, ptr %regs, i32 2
  store i32 %322, ptr %323, align 4
  br label %pc81

pc81:                                             ; preds = %pc80
  %324 = getelementptr i32, ptr %regs, i32 0
  %325 = load i32, ptr %324, align 4
  %326 = call i32 @emu_load(ptr %machine, i32 73760, i32 %325, i32 0)
  %327 = getelementptr i32, ptr %regs, i32 3
  store i32 %326, ptr %327, align 4
  br label %pc82

pc82:                                             ; preds = %pc81
  %328 = getelementptr i32, ptr %regs, i32 2
  %329 = load i32, ptr %328, align 4
  %330 = call i32 @emu_mul(ptr %machine, i32 %329, i32 4, i32 0)
  %331 = getelementptr i32, ptr %regs, i32 2
  store i32 %330, ptr %331, align 4
  br label %pc83

pc83:                                             ; preds = %pc82
  %332 = getelementptr i32, ptr %regs, i32 3
  %333 = load i32, ptr %332, align 4
  %334 = call i32 @emu_mul(ptr %machine, i32 %333, i32 4, i32 0)
  %335 = getelementptr i32, ptr %regs, i32 3
  store i32 %334, ptr %335, align 4
  br label %pc84

pc84:                                             ; preds = %pc83
  %336 = getelementptr i32, ptr %regs, i32 2
  %337 = load i32, ptr %336, align 4
  %338 = call i32 @emu_add(ptr %machine, i32 %337, i32 1, i32 0)
  %339 = getelementptr i32, ptr %regs, i32 2
  store i32 %338, ptr %339, align 4
  br label %pc85

pc85:                                             ; preds = %pc84
  %340 = getelementptr i32, ptr %regs, i32 3
  %341 = load i32, ptr %340, align 4
  %342 = call i32 @emu_add(ptr %machine, i32 %341, i32 1, i32 0)
  %343 = getelementptr i32, ptr %regs, i32 3
  store i32 %342, ptr %343, align 4
  br label %pc86

pc86:                                             ; preds = %pc85
  %344 = getelementptr i32, ptr %regs, i32 2
  %345 = load i32, ptr %344, align 4
  %346 = call i32 @emu_add(ptr %machine, i32 %345, i32 1, i32 0)
  %347 = getelementptr i32, ptr %regs, i32 4
  store i32 %346, ptr %347, align 4
  br label %pc87

pc87:                                             ; preds = %pc86
  %348 = getelementptr i32, ptr %regs, i32 3
  %349 = load i32, ptr %348, align 4
  %350 = call i32 @emu_add(ptr %machine, i32 %349, i32 1, i32 0)
  %351 = getelementptr i32, ptr %regs, i32 5
  store i32 %350, ptr %351, align 4
  br label %pc88

pc88:                                             ; preds = %pc87
  %352 = getelementptr i32, ptr %regs, i32 2
  %353 = load i32, ptr %352, align 4
  %354 = getelementptr i32, ptr %regs, i32 3
  %355 = load i32, ptr %354, align 4
  %356 = call i32 @emu_pixel(ptr %machine, i32 %353, i32 %355, i32 -1)
  br label %pc89

pc89:                                             ; preds = %pc88
  %357 = getelementptr i32, ptr %regs, i32 4
  %358 = load i32, ptr %357, align 4
  %359 = getelementptr i32, ptr %regs, i32 3
  %360 = load i32, ptr %359, align 4
  %361 = call i32 @emu_pixel(ptr %machine, i32 %358, i32 %360, i32 -1)
  br label %pc90

pc90:                                             ; preds = %pc89
  %362 = getelementptr i32, ptr %regs, i32 2
  %363 = load i32, ptr %362, align 4
  %364 = getelementptr i32, ptr %regs, i32 5
  %365 = load i32, ptr %364, align 4
  %366 = call i32 @emu_pixel(ptr %machine, i32 %363, i32 %365, i32 -1)
  br label %pc91

pc91:                                             ; preds = %pc90
  %367 = getelementptr i32, ptr %regs, i32 4
  %368 = load i32, ptr %367, align 4
  %369 = getelementptr i32, ptr %regs, i32 5
  %370 = load i32, ptr %369, align 4
  %371 = call i32 @emu_pixel(ptr %machine, i32 %368, i32 %370, i32 -1)
  br label %pc92

pc92:                                             ; preds = %pc91
  %372 = getelementptr i32, ptr %regs, i32 0
  %373 = load i32, ptr %372, align 4
  %374 = add i32 %373, 1
  %375 = getelementptr i32, ptr %regs, i32 0
  store i32 %374, ptr %375, align 4
  %376 = icmp ult i32 %374, 32
  br i1 %376, label %pc80, label %pc93

pc93:                                             ; preds = %pc92
  %377 = call i32 @emu_flush(ptr %machine, i32 0, i32 0, i32 0)
  br label %pc94

pc94:                                             ; preds = %pc93
  br label %pc27

pc95:                                             ; No predecessors!
  ret void
}

declare i32 @emu_store(ptr, i32, i32, i32)

declare i32 @emu_mov(ptr, i32, i32, i32)

declare i32 @emu_mul(ptr, i32, i32, i32)

declare i32 @emu_add(ptr, i32, i32, i32)

declare i32 @emu_urem(ptr, i32, i32, i32)

declare i32 @emu_and(ptr, i32, i32, i32)

declare i32 @emu_load(ptr, i32, i32, i32)

declare i32 @emu_eq(ptr, i32, i32, i32)

declare i32 @emu_select(ptr, i32, i32, i32)

declare i32 @emu_slt(ptr, i32, i32, i32)

declare i32 @emu_sub(ptr, i32, i32, i32)

declare i32 @emu_pixel(ptr, i32, i32, i32)

declare i32 @emu_flush(ptr, i32, i32, i32)
