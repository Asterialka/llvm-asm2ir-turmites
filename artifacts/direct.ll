; ModuleID = 'turmites.direct'
source_filename = "turmites.direct"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"

define void @asm_main(ptr %machine, ptr %regs, ptr %memory) {
pc0:
  %0 = getelementptr i32, ptr %memory, i32 73856
  store i32 1, ptr %0, align 4
  br label %pc1

pc1:                                              ; preds = %pc0
  %1 = getelementptr i32, ptr %memory, i32 73857
  store i32 -1, ptr %1, align 4
  br label %pc2

pc2:                                              ; preds = %pc1
  %2 = getelementptr i32, ptr %memory, i32 73858
  store i32 -1, ptr %2, align 4
  br label %pc3

pc3:                                              ; preds = %pc2
  %3 = getelementptr i32, ptr %memory, i32 73859
  store i32 1, ptr %3, align 4
  br label %pc4

pc4:                                              ; preds = %pc3
  %4 = getelementptr i32, ptr %memory, i32 73860
  store i32 1, ptr %4, align 4
  br label %pc5

pc5:                                              ; preds = %pc4
  %5 = getelementptr i32, ptr %memory, i32 73861
  store i32 -1, ptr %5, align 4
  br label %pc6

pc6:                                              ; preds = %pc5
  %6 = getelementptr i32, ptr %memory, i32 73862
  store i32 -16777216, ptr %6, align 4
  br label %pc7

pc7:                                              ; preds = %pc6
  %7 = getelementptr i32, ptr %memory, i32 73863
  store i32 -14074749, ptr %7, align 4
  br label %pc8

pc8:                                              ; preds = %pc7
  %8 = getelementptr i32, ptr %memory, i32 73864
  store i32 -13005898, ptr %8, align 4
  br label %pc9

pc9:                                              ; preds = %pc8
  %9 = getelementptr i32, ptr %memory, i32 73865
  store i32 -8858434, ptr %9, align 4
  br label %pc10

pc10:                                             ; preds = %pc9
  %10 = getelementptr i32, ptr %memory, i32 73866
  store i32 -800131, ptr %10, align 4
  br label %pc11

pc11:                                             ; preds = %pc10
  %11 = getelementptr i32, ptr %memory, i32 73867
  store i32 -1085051, ptr %11, align 4
  br label %pc12

pc12:                                             ; preds = %pc11
  %12 = getelementptr i32, ptr %regs, i32 0
  store i32 0, ptr %12, align 4
  br label %pc13

pc13:                                             ; preds = %pc26, %pc12
  %13 = getelementptr i32, ptr %regs, i32 0
  %14 = load i32, ptr %13, align 4
  %15 = mul i32 %14, 101
  %16 = getelementptr i32, ptr %regs, i32 1
  store i32 %15, ptr %16, align 4
  br label %pc14

pc14:                                             ; preds = %pc13
  %17 = getelementptr i32, ptr %regs, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, 37
  %20 = getelementptr i32, ptr %regs, i32 1
  store i32 %19, ptr %20, align 4
  br label %pc15

pc15:                                             ; preds = %pc14
  %21 = getelementptr i32, ptr %regs, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = urem i32 %22, 384
  %24 = select i1 false, i32 0, i32 %23
  %25 = getelementptr i32, ptr %regs, i32 1
  store i32 %24, ptr %25, align 4
  br label %pc16

pc16:                                             ; preds = %pc15
  %26 = getelementptr i32, ptr %regs, i32 0
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr i32, ptr %regs, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = add i32 73728, %27
  %31 = and i32 %30, 131071
  %32 = getelementptr i32, ptr %memory, i32 %31
  store i32 %29, ptr %32, align 4
  br label %pc17

pc17:                                             ; preds = %pc16
  %33 = getelementptr i32, ptr %regs, i32 0
  %34 = load i32, ptr %33, align 4
  %35 = mul i32 %34, 73
  %36 = getelementptr i32, ptr %regs, i32 1
  store i32 %35, ptr %36, align 4
  br label %pc18

pc18:                                             ; preds = %pc17
  %37 = getelementptr i32, ptr %regs, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = add i32 %38, 19
  %40 = getelementptr i32, ptr %regs, i32 1
  store i32 %39, ptr %40, align 4
  br label %pc19

pc19:                                             ; preds = %pc18
  %41 = getelementptr i32, ptr %regs, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = urem i32 %42, 192
  %44 = select i1 false, i32 0, i32 %43
  %45 = getelementptr i32, ptr %regs, i32 1
  store i32 %44, ptr %45, align 4
  br label %pc20

pc20:                                             ; preds = %pc19
  %46 = getelementptr i32, ptr %regs, i32 0
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i32, ptr %regs, i32 1
  %49 = load i32, ptr %48, align 4
  %50 = add i32 73760, %47
  %51 = and i32 %50, 131071
  %52 = getelementptr i32, ptr %memory, i32 %51
  store i32 %49, ptr %52, align 4
  br label %pc21

pc21:                                             ; preds = %pc20
  %53 = getelementptr i32, ptr %regs, i32 0
  %54 = load i32, ptr %53, align 4
  %55 = mul i32 %54, 7
  %56 = getelementptr i32, ptr %regs, i32 1
  store i32 %55, ptr %56, align 4
  br label %pc22

pc22:                                             ; preds = %pc21
  %57 = getelementptr i32, ptr %regs, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 3
  %60 = getelementptr i32, ptr %regs, i32 1
  store i32 %59, ptr %60, align 4
  br label %pc23

pc23:                                             ; preds = %pc22
  %61 = getelementptr i32, ptr %regs, i32 0
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr i32, ptr %regs, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = add i32 73792, %62
  %66 = and i32 %65, 131071
  %67 = getelementptr i32, ptr %memory, i32 %66
  store i32 %64, ptr %67, align 4
  br label %pc24

pc24:                                             ; preds = %pc23
  %68 = getelementptr i32, ptr %regs, i32 0
  %69 = load i32, ptr %68, align 4
  %70 = urem i32 %69, 6
  %71 = select i1 false, i32 0, i32 %70
  %72 = getelementptr i32, ptr %regs, i32 1
  store i32 %71, ptr %72, align 4
  br label %pc25

pc25:                                             ; preds = %pc24
  %73 = getelementptr i32, ptr %regs, i32 0
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr i32, ptr %regs, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = add i32 73824, %74
  %78 = and i32 %77, 131071
  %79 = getelementptr i32, ptr %memory, i32 %78
  store i32 %76, ptr %79, align 4
  br label %pc26

pc26:                                             ; preds = %pc25
  %80 = getelementptr i32, ptr %regs, i32 0
  %81 = load i32, ptr %80, align 4
  %82 = add i32 %81, 1
  %83 = getelementptr i32, ptr %regs, i32 0
  store i32 %82, ptr %83, align 4
  %84 = icmp ult i32 %82, 32
  br i1 %84, label %pc13, label %pc27

pc27:                                             ; preds = %pc94, %pc26
  %85 = getelementptr i32, ptr %regs, i32 1
  store i32 0, ptr %85, align 4
  br label %pc28

pc28:                                             ; preds = %pc78, %pc27
  %86 = getelementptr i32, ptr %regs, i32 0
  store i32 0, ptr %86, align 4
  br label %pc29

pc29:                                             ; preds = %pc77, %pc28
  %87 = getelementptr i32, ptr %regs, i32 0
  %88 = load i32, ptr %87, align 4
  %89 = add i32 73728, %88
  %90 = and i32 %89, 131071
  %91 = getelementptr i32, ptr %memory, i32 %90
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr i32, ptr %regs, i32 2
  store i32 %92, ptr %93, align 4
  br label %pc30

pc30:                                             ; preds = %pc29
  %94 = getelementptr i32, ptr %regs, i32 0
  %95 = load i32, ptr %94, align 4
  %96 = add i32 73760, %95
  %97 = and i32 %96, 131071
  %98 = getelementptr i32, ptr %memory, i32 %97
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr i32, ptr %regs, i32 3
  store i32 %99, ptr %100, align 4
  br label %pc31

pc31:                                             ; preds = %pc30
  %101 = getelementptr i32, ptr %regs, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = mul i32 %102, 384
  %104 = getelementptr i32, ptr %regs, i32 4
  store i32 %103, ptr %104, align 4
  br label %pc32

pc32:                                             ; preds = %pc31
  %105 = getelementptr i32, ptr %regs, i32 4
  %106 = load i32, ptr %105, align 4
  %107 = getelementptr i32, ptr %regs, i32 2
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %106, %108
  %110 = getelementptr i32, ptr %regs, i32 4
  store i32 %109, ptr %110, align 4
  br label %pc33

pc33:                                             ; preds = %pc32
  %111 = getelementptr i32, ptr %regs, i32 4
  %112 = load i32, ptr %111, align 4
  %113 = add i32 0, %112
  %114 = and i32 %113, 131071
  %115 = getelementptr i32, ptr %memory, i32 %114
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr i32, ptr %regs, i32 5
  store i32 %116, ptr %117, align 4
  br label %pc34

pc34:                                             ; preds = %pc33
  %118 = getelementptr i32, ptr %regs, i32 5
  %119 = load i32, ptr %118, align 4
  %120 = add i32 %119, 1
  %121 = getelementptr i32, ptr %regs, i32 6
  store i32 %120, ptr %121, align 4
  br label %pc35

pc35:                                             ; preds = %pc34
  %122 = getelementptr i32, ptr %regs, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = icmp eq i32 %123, 6
  %125 = zext i1 %124 to i32
  %126 = getelementptr i32, ptr %regs, i32 7
  store i32 %125, ptr %126, align 4
  br label %pc36

pc36:                                             ; preds = %pc35
  %127 = getelementptr i32, ptr %regs, i32 7
  %128 = load i32, ptr %127, align 4
  %129 = getelementptr i32, ptr %regs, i32 6
  %130 = load i32, ptr %129, align 4
  %131 = icmp ne i32 %128, 0
  %132 = select i1 %131, i32 0, i32 %130
  %133 = getelementptr i32, ptr %regs, i32 6
  store i32 %132, ptr %133, align 4
  br label %pc37

pc37:                                             ; preds = %pc36
  %134 = getelementptr i32, ptr %regs, i32 0
  %135 = load i32, ptr %134, align 4
  %136 = add i32 73824, %135
  %137 = and i32 %136, 131071
  %138 = getelementptr i32, ptr %memory, i32 %137
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr i32, ptr %regs, i32 7
  store i32 %139, ptr %140, align 4
  br label %pc38

pc38:                                             ; preds = %pc37
  %141 = getelementptr i32, ptr %regs, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = getelementptr i32, ptr %regs, i32 7
  %144 = load i32, ptr %143, align 4
  %145 = add i32 %142, %144
  %146 = getelementptr i32, ptr %regs, i32 7
  store i32 %145, ptr %146, align 4
  br label %pc39

pc39:                                             ; preds = %pc38
  %147 = getelementptr i32, ptr %regs, i32 7
  %148 = load i32, ptr %147, align 4
  %149 = icmp slt i32 %148, 6
  %150 = zext i1 %149 to i32
  %151 = getelementptr i32, ptr %regs, i32 8
  store i32 %150, ptr %151, align 4
  br label %pc40

pc40:                                             ; preds = %pc39
  %152 = getelementptr i32, ptr %regs, i32 7
  %153 = load i32, ptr %152, align 4
  %154 = sub i32 %153, 6
  %155 = getelementptr i32, ptr %regs, i32 9
  store i32 %154, ptr %155, align 4
  br label %pc41

pc41:                                             ; preds = %pc40
  %156 = getelementptr i32, ptr %regs, i32 8
  %157 = load i32, ptr %156, align 4
  %158 = getelementptr i32, ptr %regs, i32 7
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr i32, ptr %regs, i32 9
  %161 = load i32, ptr %160, align 4
  %162 = icmp ne i32 %157, 0
  %163 = select i1 %162, i32 %159, i32 %161
  %164 = getelementptr i32, ptr %regs, i32 7
  store i32 %163, ptr %164, align 4
  br label %pc42

pc42:                                             ; preds = %pc41
  %165 = getelementptr i32, ptr %regs, i32 7
  %166 = load i32, ptr %165, align 4
  %167 = add i32 73856, %166
  %168 = and i32 %167, 131071
  %169 = getelementptr i32, ptr %memory, i32 %168
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr i32, ptr %regs, i32 8
  store i32 %170, ptr %171, align 4
  br label %pc43

pc43:                                             ; preds = %pc42
  %172 = getelementptr i32, ptr %regs, i32 0
  %173 = load i32, ptr %172, align 4
  %174 = add i32 73792, %173
  %175 = and i32 %174, 131071
  %176 = getelementptr i32, ptr %memory, i32 %175
  %177 = load i32, ptr %176, align 4
  %178 = getelementptr i32, ptr %regs, i32 9
  store i32 %177, ptr %178, align 4
  br label %pc44

pc44:                                             ; preds = %pc43
  %179 = getelementptr i32, ptr %regs, i32 9
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr i32, ptr %regs, i32 8
  %182 = load i32, ptr %181, align 4
  %183 = add i32 %180, %182
  %184 = getelementptr i32, ptr %regs, i32 9
  store i32 %183, ptr %184, align 4
  br label %pc45

pc45:                                             ; preds = %pc44
  %185 = getelementptr i32, ptr %regs, i32 9
  %186 = load i32, ptr %185, align 4
  %187 = add i32 %186, 4
  %188 = getelementptr i32, ptr %regs, i32 9
  store i32 %187, ptr %188, align 4
  br label %pc46

pc46:                                             ; preds = %pc45
  %189 = getelementptr i32, ptr %regs, i32 9
  %190 = load i32, ptr %189, align 4
  %191 = and i32 %190, 3
  %192 = getelementptr i32, ptr %regs, i32 9
  store i32 %191, ptr %192, align 4
  br label %pc47

pc47:                                             ; preds = %pc46
  %193 = getelementptr i32, ptr %regs, i32 0
  %194 = load i32, ptr %193, align 4
  %195 = getelementptr i32, ptr %regs, i32 9
  %196 = load i32, ptr %195, align 4
  %197 = add i32 73792, %194
  %198 = and i32 %197, 131071
  %199 = getelementptr i32, ptr %memory, i32 %198
  store i32 %196, ptr %199, align 4
  br label %pc48

pc48:                                             ; preds = %pc47
  %200 = getelementptr i32, ptr %regs, i32 4
  %201 = load i32, ptr %200, align 4
  %202 = getelementptr i32, ptr %regs, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = add i32 0, %201
  %205 = and i32 %204, 131071
  %206 = getelementptr i32, ptr %memory, i32 %205
  store i32 %203, ptr %206, align 4
  br label %pc49

pc49:                                             ; preds = %pc48
  %207 = getelementptr i32, ptr %regs, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = add i32 73862, %208
  %210 = and i32 %209, 131071
  %211 = getelementptr i32, ptr %memory, i32 %210
  %212 = load i32, ptr %211, align 4
  %213 = getelementptr i32, ptr %regs, i32 10
  store i32 %212, ptr %213, align 4
  br label %pc50

pc50:                                             ; preds = %pc49
  %214 = getelementptr i32, ptr %regs, i32 2
  %215 = load i32, ptr %214, align 4
  %216 = mul i32 %215, 4
  %217 = getelementptr i32, ptr %regs, i32 11
  store i32 %216, ptr %217, align 4
  br label %pc51

pc51:                                             ; preds = %pc50
  %218 = getelementptr i32, ptr %regs, i32 3
  %219 = load i32, ptr %218, align 4
  %220 = mul i32 %219, 4
  %221 = getelementptr i32, ptr %regs, i32 12
  store i32 %220, ptr %221, align 4
  br label %pc52

pc52:                                             ; preds = %pc51
  %222 = getelementptr i32, ptr %regs, i32 13
  store i32 0, ptr %222, align 4
  br label %pc53

pc53:                                             ; preds = %pc58, %pc52
  %223 = getelementptr i32, ptr %regs, i32 14
  store i32 0, ptr %223, align 4
  br label %pc54

pc54:                                             ; preds = %pc57, %pc53
  %224 = getelementptr i32, ptr %regs, i32 11
  %225 = load i32, ptr %224, align 4
  %226 = getelementptr i32, ptr %regs, i32 14
  %227 = load i32, ptr %226, align 4
  %228 = add i32 %225, %227
  %229 = getelementptr i32, ptr %regs, i32 15
  store i32 %228, ptr %229, align 4
  br label %pc55

pc55:                                             ; preds = %pc54
  %230 = getelementptr i32, ptr %regs, i32 12
  %231 = load i32, ptr %230, align 4
  %232 = getelementptr i32, ptr %regs, i32 13
  %233 = load i32, ptr %232, align 4
  %234 = add i32 %231, %233
  %235 = getelementptr i32, ptr %regs, i32 16
  store i32 %234, ptr %235, align 4
  br label %pc56

pc56:                                             ; preds = %pc55
  %236 = getelementptr i32, ptr %regs, i32 15
  %237 = load i32, ptr %236, align 4
  %238 = getelementptr i32, ptr %regs, i32 16
  %239 = load i32, ptr %238, align 4
  %240 = getelementptr i32, ptr %regs, i32 10
  %241 = load i32, ptr %240, align 4
  call void @simPutPixel(i32 %237, i32 %239, i32 %241)
  br label %pc57

pc57:                                             ; preds = %pc56
  %242 = getelementptr i32, ptr %regs, i32 14
  %243 = load i32, ptr %242, align 4
  %244 = add i32 %243, 1
  %245 = getelementptr i32, ptr %regs, i32 14
  store i32 %244, ptr %245, align 4
  %246 = icmp ult i32 %244, 4
  br i1 %246, label %pc54, label %pc58

pc58:                                             ; preds = %pc57
  %247 = getelementptr i32, ptr %regs, i32 13
  %248 = load i32, ptr %247, align 4
  %249 = add i32 %248, 1
  %250 = getelementptr i32, ptr %regs, i32 13
  store i32 %249, ptr %250, align 4
  %251 = icmp ult i32 %249, 4
  br i1 %251, label %pc53, label %pc59

pc59:                                             ; preds = %pc58
  %252 = getelementptr i32, ptr %regs, i32 9
  %253 = load i32, ptr %252, align 4
  %254 = icmp eq i32 %253, 1
  %255 = zext i1 %254 to i32
  %256 = getelementptr i32, ptr %regs, i32 7
  store i32 %255, ptr %256, align 4
  br label %pc60

pc60:                                             ; preds = %pc59
  %257 = getelementptr i32, ptr %regs, i32 9
  %258 = load i32, ptr %257, align 4
  %259 = icmp eq i32 %258, 3
  %260 = zext i1 %259 to i32
  %261 = getelementptr i32, ptr %regs, i32 8
  store i32 %260, ptr %261, align 4
  br label %pc61

pc61:                                             ; preds = %pc60
  %262 = getelementptr i32, ptr %regs, i32 2
  %263 = load i32, ptr %262, align 4
  %264 = getelementptr i32, ptr %regs, i32 7
  %265 = load i32, ptr %264, align 4
  %266 = add i32 %263, %265
  %267 = getelementptr i32, ptr %regs, i32 2
  store i32 %266, ptr %267, align 4
  br label %pc62

pc62:                                             ; preds = %pc61
  %268 = getelementptr i32, ptr %regs, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = getelementptr i32, ptr %regs, i32 8
  %271 = load i32, ptr %270, align 4
  %272 = sub i32 %269, %271
  %273 = getelementptr i32, ptr %regs, i32 2
  store i32 %272, ptr %273, align 4
  br label %pc63

pc63:                                             ; preds = %pc62
  %274 = getelementptr i32, ptr %regs, i32 9
  %275 = load i32, ptr %274, align 4
  %276 = icmp eq i32 %275, 2
  %277 = zext i1 %276 to i32
  %278 = getelementptr i32, ptr %regs, i32 7
  store i32 %277, ptr %278, align 4
  br label %pc64

pc64:                                             ; preds = %pc63
  %279 = getelementptr i32, ptr %regs, i32 9
  %280 = load i32, ptr %279, align 4
  %281 = icmp eq i32 %280, 0
  %282 = zext i1 %281 to i32
  %283 = getelementptr i32, ptr %regs, i32 8
  store i32 %282, ptr %283, align 4
  br label %pc65

pc65:                                             ; preds = %pc64
  %284 = getelementptr i32, ptr %regs, i32 3
  %285 = load i32, ptr %284, align 4
  %286 = getelementptr i32, ptr %regs, i32 7
  %287 = load i32, ptr %286, align 4
  %288 = add i32 %285, %287
  %289 = getelementptr i32, ptr %regs, i32 3
  store i32 %288, ptr %289, align 4
  br label %pc66

pc66:                                             ; preds = %pc65
  %290 = getelementptr i32, ptr %regs, i32 3
  %291 = load i32, ptr %290, align 4
  %292 = getelementptr i32, ptr %regs, i32 8
  %293 = load i32, ptr %292, align 4
  %294 = sub i32 %291, %293
  %295 = getelementptr i32, ptr %regs, i32 3
  store i32 %294, ptr %295, align 4
  br label %pc67

pc67:                                             ; preds = %pc66
  %296 = getelementptr i32, ptr %regs, i32 2
  %297 = load i32, ptr %296, align 4
  %298 = icmp slt i32 %297, 0
  %299 = zext i1 %298 to i32
  %300 = getelementptr i32, ptr %regs, i32 7
  store i32 %299, ptr %300, align 4
  br label %pc68

pc68:                                             ; preds = %pc67
  %301 = getelementptr i32, ptr %regs, i32 7
  %302 = load i32, ptr %301, align 4
  %303 = getelementptr i32, ptr %regs, i32 2
  %304 = load i32, ptr %303, align 4
  %305 = icmp ne i32 %302, 0
  %306 = select i1 %305, i32 383, i32 %304
  %307 = getelementptr i32, ptr %regs, i32 2
  store i32 %306, ptr %307, align 4
  br label %pc69

pc69:                                             ; preds = %pc68
  %308 = getelementptr i32, ptr %regs, i32 2
  %309 = load i32, ptr %308, align 4
  %310 = icmp eq i32 %309, 384
  %311 = zext i1 %310 to i32
  %312 = getelementptr i32, ptr %regs, i32 7
  store i32 %311, ptr %312, align 4
  br label %pc70

pc70:                                             ; preds = %pc69
  %313 = getelementptr i32, ptr %regs, i32 7
  %314 = load i32, ptr %313, align 4
  %315 = getelementptr i32, ptr %regs, i32 2
  %316 = load i32, ptr %315, align 4
  %317 = icmp ne i32 %314, 0
  %318 = select i1 %317, i32 0, i32 %316
  %319 = getelementptr i32, ptr %regs, i32 2
  store i32 %318, ptr %319, align 4
  br label %pc71

pc71:                                             ; preds = %pc70
  %320 = getelementptr i32, ptr %regs, i32 3
  %321 = load i32, ptr %320, align 4
  %322 = icmp slt i32 %321, 0
  %323 = zext i1 %322 to i32
  %324 = getelementptr i32, ptr %regs, i32 7
  store i32 %323, ptr %324, align 4
  br label %pc72

pc72:                                             ; preds = %pc71
  %325 = getelementptr i32, ptr %regs, i32 7
  %326 = load i32, ptr %325, align 4
  %327 = getelementptr i32, ptr %regs, i32 3
  %328 = load i32, ptr %327, align 4
  %329 = icmp ne i32 %326, 0
  %330 = select i1 %329, i32 191, i32 %328
  %331 = getelementptr i32, ptr %regs, i32 3
  store i32 %330, ptr %331, align 4
  br label %pc73

pc73:                                             ; preds = %pc72
  %332 = getelementptr i32, ptr %regs, i32 3
  %333 = load i32, ptr %332, align 4
  %334 = icmp eq i32 %333, 192
  %335 = zext i1 %334 to i32
  %336 = getelementptr i32, ptr %regs, i32 7
  store i32 %335, ptr %336, align 4
  br label %pc74

pc74:                                             ; preds = %pc73
  %337 = getelementptr i32, ptr %regs, i32 7
  %338 = load i32, ptr %337, align 4
  %339 = getelementptr i32, ptr %regs, i32 3
  %340 = load i32, ptr %339, align 4
  %341 = icmp ne i32 %338, 0
  %342 = select i1 %341, i32 0, i32 %340
  %343 = getelementptr i32, ptr %regs, i32 3
  store i32 %342, ptr %343, align 4
  br label %pc75

pc75:                                             ; preds = %pc74
  %344 = getelementptr i32, ptr %regs, i32 0
  %345 = load i32, ptr %344, align 4
  %346 = getelementptr i32, ptr %regs, i32 2
  %347 = load i32, ptr %346, align 4
  %348 = add i32 73728, %345
  %349 = and i32 %348, 131071
  %350 = getelementptr i32, ptr %memory, i32 %349
  store i32 %347, ptr %350, align 4
  br label %pc76

pc76:                                             ; preds = %pc75
  %351 = getelementptr i32, ptr %regs, i32 0
  %352 = load i32, ptr %351, align 4
  %353 = getelementptr i32, ptr %regs, i32 3
  %354 = load i32, ptr %353, align 4
  %355 = add i32 73760, %352
  %356 = and i32 %355, 131071
  %357 = getelementptr i32, ptr %memory, i32 %356
  store i32 %354, ptr %357, align 4
  br label %pc77

pc77:                                             ; preds = %pc76
  %358 = getelementptr i32, ptr %regs, i32 0
  %359 = load i32, ptr %358, align 4
  %360 = add i32 %359, 1
  %361 = getelementptr i32, ptr %regs, i32 0
  store i32 %360, ptr %361, align 4
  %362 = icmp ult i32 %360, 32
  br i1 %362, label %pc29, label %pc78

pc78:                                             ; preds = %pc77
  %363 = getelementptr i32, ptr %regs, i32 1
  %364 = load i32, ptr %363, align 4
  %365 = add i32 %364, 1
  %366 = getelementptr i32, ptr %regs, i32 1
  store i32 %365, ptr %366, align 4
  %367 = icmp ult i32 %365, 128
  br i1 %367, label %pc28, label %pc79

pc79:                                             ; preds = %pc78
  %368 = getelementptr i32, ptr %regs, i32 0
  store i32 0, ptr %368, align 4
  br label %pc80

pc80:                                             ; preds = %pc92, %pc79
  %369 = getelementptr i32, ptr %regs, i32 0
  %370 = load i32, ptr %369, align 4
  %371 = add i32 73728, %370
  %372 = and i32 %371, 131071
  %373 = getelementptr i32, ptr %memory, i32 %372
  %374 = load i32, ptr %373, align 4
  %375 = getelementptr i32, ptr %regs, i32 2
  store i32 %374, ptr %375, align 4
  br label %pc81

pc81:                                             ; preds = %pc80
  %376 = getelementptr i32, ptr %regs, i32 0
  %377 = load i32, ptr %376, align 4
  %378 = add i32 73760, %377
  %379 = and i32 %378, 131071
  %380 = getelementptr i32, ptr %memory, i32 %379
  %381 = load i32, ptr %380, align 4
  %382 = getelementptr i32, ptr %regs, i32 3
  store i32 %381, ptr %382, align 4
  br label %pc82

pc82:                                             ; preds = %pc81
  %383 = getelementptr i32, ptr %regs, i32 2
  %384 = load i32, ptr %383, align 4
  %385 = mul i32 %384, 4
  %386 = getelementptr i32, ptr %regs, i32 2
  store i32 %385, ptr %386, align 4
  br label %pc83

pc83:                                             ; preds = %pc82
  %387 = getelementptr i32, ptr %regs, i32 3
  %388 = load i32, ptr %387, align 4
  %389 = mul i32 %388, 4
  %390 = getelementptr i32, ptr %regs, i32 3
  store i32 %389, ptr %390, align 4
  br label %pc84

pc84:                                             ; preds = %pc83
  %391 = getelementptr i32, ptr %regs, i32 2
  %392 = load i32, ptr %391, align 4
  %393 = add i32 %392, 1
  %394 = getelementptr i32, ptr %regs, i32 2
  store i32 %393, ptr %394, align 4
  br label %pc85

pc85:                                             ; preds = %pc84
  %395 = getelementptr i32, ptr %regs, i32 3
  %396 = load i32, ptr %395, align 4
  %397 = add i32 %396, 1
  %398 = getelementptr i32, ptr %regs, i32 3
  store i32 %397, ptr %398, align 4
  br label %pc86

pc86:                                             ; preds = %pc85
  %399 = getelementptr i32, ptr %regs, i32 2
  %400 = load i32, ptr %399, align 4
  %401 = add i32 %400, 1
  %402 = getelementptr i32, ptr %regs, i32 4
  store i32 %401, ptr %402, align 4
  br label %pc87

pc87:                                             ; preds = %pc86
  %403 = getelementptr i32, ptr %regs, i32 3
  %404 = load i32, ptr %403, align 4
  %405 = add i32 %404, 1
  %406 = getelementptr i32, ptr %regs, i32 5
  store i32 %405, ptr %406, align 4
  br label %pc88

pc88:                                             ; preds = %pc87
  %407 = getelementptr i32, ptr %regs, i32 2
  %408 = load i32, ptr %407, align 4
  %409 = getelementptr i32, ptr %regs, i32 3
  %410 = load i32, ptr %409, align 4
  call void @simPutPixel(i32 %408, i32 %410, i32 -1)
  br label %pc89

pc89:                                             ; preds = %pc88
  %411 = getelementptr i32, ptr %regs, i32 4
  %412 = load i32, ptr %411, align 4
  %413 = getelementptr i32, ptr %regs, i32 3
  %414 = load i32, ptr %413, align 4
  call void @simPutPixel(i32 %412, i32 %414, i32 -1)
  br label %pc90

pc90:                                             ; preds = %pc89
  %415 = getelementptr i32, ptr %regs, i32 2
  %416 = load i32, ptr %415, align 4
  %417 = getelementptr i32, ptr %regs, i32 5
  %418 = load i32, ptr %417, align 4
  call void @simPutPixel(i32 %416, i32 %418, i32 -1)
  br label %pc91

pc91:                                             ; preds = %pc90
  %419 = getelementptr i32, ptr %regs, i32 4
  %420 = load i32, ptr %419, align 4
  %421 = getelementptr i32, ptr %regs, i32 5
  %422 = load i32, ptr %421, align 4
  call void @simPutPixel(i32 %420, i32 %422, i32 -1)
  br label %pc92

pc92:                                             ; preds = %pc91
  %423 = getelementptr i32, ptr %regs, i32 0
  %424 = load i32, ptr %423, align 4
  %425 = add i32 %424, 1
  %426 = getelementptr i32, ptr %regs, i32 0
  store i32 %425, ptr %426, align 4
  %427 = icmp ult i32 %425, 32
  br i1 %427, label %pc80, label %pc93

pc93:                                             ; preds = %pc92
  call void @simFlush()
  br label %pc94

pc94:                                             ; preds = %pc93
  br label %pc27

pc95:                                             ; No predecessors!
  ret void
}

declare void @simPutPixel(i32, i32, i32)

declare void @simFlush()
