; ModuleID = 'score.c'
source_filename = "score.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }

@printmoyo = external dso_local global i32, align 4
@debug = external dso_local global i32, align 4
@board_size = external dso_local global i32, align 4
@board = external dso_local global [421 x i8], align 16
@chinese_rules = external dso_local global i32, align 4
@.str = private unnamed_addr constant [36 x i8] c"in row %d, white area=%d, black=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"in row %d, white territory=%d, black=%d\0A\00", align 1
@komi = external dso_local global float, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"black captured: %d\0Awhite captured: %d\0Akomi: %f\0A\00", align 1
@black_captured = external dso_local global i32, align 4
@white_captured = external dso_local global i32, align 4
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@dragon2 = external dso_local global %struct.dragon_data2*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_moyo() #0 {
  %1 = load i32, i32* @printmoyo, align 4
  %2 = and i32 %1, 1
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  call void @print_new_moyo(i32 5, i32 21)
  br label %5

5:                                                ; preds = %4, %0
  %6 = load i32, i32* @printmoyo, align 4
  %7 = and i32 %6, 2
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  call void @print_new_moyo(i32 5, i32 10)
  br label %10

10:                                               ; preds = %9, %5
  %11 = load i32, i32* @printmoyo, align 4
  %12 = and i32 %11, 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  call void @print_new_moyo(i32 4, i32 0)
  br label %15

15:                                               ; preds = %14, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_new_moyo(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [400 x i32], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 0
  %9 = call i32 @dilate_erode(i32 %6, i32 %7, i32* %8, i32 1)
  %10 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 0
  call void @close_bubbles(i32* %10)
  %11 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 0
  call void @print_regions(i32* %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @estimate_score(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca [400 x i32], align 16
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  %24 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 0
  %25 = call i32 @dilate_erode(i32 5, i32 21, i32* %24, i32 1)
  store i32 %25, i32* %15, align 4
  %26 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 0
  call void @close_bubbles(i32* %26)
  %27 = load i32, i32* @debug, align 4
  %28 = and i32 %27, 65536
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 0
  call void @print_regions(i32* %31)
  br label %32

32:                                               ; preds = %30, %2
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %168, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @board_size, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %171

37:                                               ; preds = %33
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %135, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @board_size, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %138

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = mul nsw i32 %43, 20
  %45 = add nsw i32 21, %44
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %73

54:                                               ; preds = %42
  %55 = load i32, i32* %12, align 4
  %56 = call i32 @captured_territory(i32 %55, i32 1)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load float, float* %6, align 4
  %60 = fadd float %59, 2.000000e+00
  store float %60, float* %6, align 4
  %61 = load float, float* %8, align 4
  %62 = fadd float %61, 1.000000e+00
  store float %62, float* %8, align 4
  %63 = load i32, i32* %17, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %17, align 4
  %65 = load i32, i32* %18, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %18, align 4
  br label %72

67:                                               ; preds = %54
  %68 = load float, float* %9, align 4
  %69 = fadd float %68, 1.000000e+00
  store float %69, float* %9, align 4
  %70 = load i32, i32* %19, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  br label %72

72:                                               ; preds = %67, %58
  br label %134

73:                                               ; preds = %42
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %99

80:                                               ; preds = %73
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @captured_territory(i32 %81, i32 1)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load float, float* %7, align 4
  %86 = fadd float %85, 2.000000e+00
  store float %86, float* %7, align 4
  %87 = load float, float* %9, align 4
  %88 = fadd float %87, 1.000000e+00
  store float %88, float* %9, align 4
  %89 = load i32, i32* %16, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %16, align 4
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %98

93:                                               ; preds = %80
  %94 = load float, float* %8, align 4
  %95 = fadd float %94, 1.000000e+00
  store float %95, float* %8, align 4
  %96 = load i32, i32* %18, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %93, %84
  br label %133

99:                                               ; preds = %73
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sitofp i32 %103 to double
  %105 = fcmp ogt double %104, 0.000000e+00
  br i1 %105, label %106, label %115

106:                                              ; preds = %99
  %107 = load float, float* %6, align 4
  %108 = fadd float %107, 1.000000e+00
  store float %108, float* %6, align 4
  %109 = load float, float* %8, align 4
  %110 = fadd float %109, 1.000000e+00
  store float %110, float* %8, align 4
  %111 = load i32, i32* %17, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %18, align 4
  br label %132

115:                                              ; preds = %99
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sitofp i32 %119 to double
  %121 = fcmp olt double %120, 0.000000e+00
  br i1 %121, label %122, label %131

122:                                              ; preds = %115
  %123 = load float, float* %7, align 4
  %124 = fadd float %123, 1.000000e+00
  store float %124, float* %7, align 4
  %125 = load float, float* %9, align 4
  %126 = fadd float %125, 1.000000e+00
  store float %126, float* %9, align 4
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %131

131:                                              ; preds = %122, %115
  br label %132

132:                                              ; preds = %131, %106
  br label %133

133:                                              ; preds = %132, %98
  br label %134

134:                                              ; preds = %133, %72
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %38, !llvm.loop !4

138:                                              ; preds = %38
  %139 = load i32, i32* @chinese_rules, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %138
  %142 = load i32, i32* @debug, align 4
  %143 = and i32 %142, 65536
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %146, label %145

145:                                              ; preds = %141
  br label %153

146:                                              ; preds = %141
  %147 = load i32, i32* @board_size, align 4
  %148 = load i32, i32* %10, align 4
  %149 = sub nsw i32 %147, %148
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %19, align 4
  %152 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %149, i32 %150, i32 %151)
  br label %153

153:                                              ; preds = %146, %145
  br label %167

154:                                              ; preds = %138
  %155 = load i32, i32* @debug, align 4
  %156 = and i32 %155, 65536
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %154
  br label %166

159:                                              ; preds = %154
  %160 = load i32, i32* @board_size, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 %160, %161
  %163 = load i32, i32* %17, align 4
  %164 = load i32, i32* %16, align 4
  %165 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %159, %158
  br label %167

167:                                              ; preds = %166, %153
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  br label %33, !llvm.loop !6

171:                                              ; preds = %33
  %172 = load i32, i32* @chinese_rules, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load float, float* %8, align 4
  %176 = load float, float* %9, align 4
  %177 = fsub float %175, %176
  %178 = load float, float* @komi, align 4
  %179 = fadd float %177, %178
  store float %179, float* %13, align 4
  br label %203

180:                                              ; preds = %171
  %181 = load i32, i32* @debug, align 4
  %182 = and i32 %181, 65536
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  br label %191

185:                                              ; preds = %180
  %186 = load i32, i32* @black_captured, align 4
  %187 = load i32, i32* @white_captured, align 4
  %188 = load float, float* @komi, align 4
  %189 = fpext float %188 to double
  %190 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %186, i32 %187, double %189)
  br label %191

191:                                              ; preds = %185, %184
  %192 = load float, float* %6, align 4
  %193 = load i32, i32* @black_captured, align 4
  %194 = sitofp i32 %193 to float
  %195 = fadd float %192, %194
  %196 = load float, float* %7, align 4
  %197 = fsub float %195, %196
  %198 = load i32, i32* @white_captured, align 4
  %199 = sitofp i32 %198 to float
  %200 = fsub float %197, %199
  %201 = load float, float* @komi, align 4
  %202 = fadd float %200, %201
  store float %202, float* %13, align 4
  br label %203

203:                                              ; preds = %191, %174
  %204 = load i32, i32* %15, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %376

206:                                              ; preds = %203
  store float 0.000000e+00, float* %6, align 4
  store float 0.000000e+00, float* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  store float 0.000000e+00, float* %9, align 4
  %207 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 0
  %208 = call i32 @dilate_erode(i32 5, i32 21, i32* %207, i32 2)
  %209 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 0
  call void @close_bubbles(i32* %209)
  store i32 0, i32* %10, align 4
  br label %210

210:                                              ; preds = %340, %206
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* @board_size, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %343

214:                                              ; preds = %210
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %11, align 4
  br label %215

215:                                              ; preds = %307, %214
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @board_size, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %310

219:                                              ; preds = %215
  %220 = load i32, i32* %10, align 4
  %221 = mul nsw i32 %220, 20
  %222 = add nsw i32 21, %221
  %223 = load i32, i32* %11, align 4
  %224 = add nsw i32 %222, %223
  store i32 %224, i32* %12, align 4
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %231, label %250

231:                                              ; preds = %219
  %232 = load i32, i32* %12, align 4
  %233 = call i32 @captured_territory(i32 %232, i32 2)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %231
  %236 = load float, float* %6, align 4
  %237 = fadd float %236, 2.000000e+00
  store float %237, float* %6, align 4
  %238 = load i32, i32* %21, align 4
  %239 = add nsw i32 %238, 2
  store i32 %239, i32* %21, align 4
  %240 = load float, float* %8, align 4
  %241 = fadd float %240, 1.000000e+00
  store float %241, float* %8, align 4
  %242 = load i32, i32* %22, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %22, align 4
  br label %249

244:                                              ; preds = %231
  %245 = load float, float* %9, align 4
  %246 = fadd float %245, 1.000000e+00
  store float %246, float* %9, align 4
  %247 = load i32, i32* %23, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %23, align 4
  br label %249

249:                                              ; preds = %244, %235
  br label %306

250:                                              ; preds = %219
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i32 %255, 1
  br i1 %256, label %257, label %271

257:                                              ; preds = %250
  %258 = load i32, i32* %12, align 4
  %259 = call i32 @captured_territory(i32 %258, i32 2)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %270

261:                                              ; preds = %257
  %262 = load float, float* %7, align 4
  %263 = fadd float %262, 2.000000e+00
  store float %263, float* %7, align 4
  %264 = load float, float* %9, align 4
  %265 = fadd float %264, 1.000000e+00
  store float %265, float* %9, align 4
  %266 = load i32, i32* %20, align 4
  %267 = add nsw i32 %266, 2
  store i32 %267, i32* %20, align 4
  %268 = load float, float* %9, align 4
  %269 = fadd float %268, 1.000000e+00
  store float %269, float* %9, align 4
  br label %270

270:                                              ; preds = %261, %257
  br label %305

271:                                              ; preds = %250
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = sitofp i32 %275 to double
  %277 = fcmp ogt double %276, 0.000000e+00
  br i1 %277, label %278, label %287

278:                                              ; preds = %271
  %279 = load float, float* %6, align 4
  %280 = fadd float %279, 1.000000e+00
  store float %280, float* %6, align 4
  %281 = load float, float* %8, align 4
  %282 = fadd float %281, 1.000000e+00
  store float %282, float* %8, align 4
  %283 = load i32, i32* %21, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %21, align 4
  %285 = load float, float* %8, align 4
  %286 = fadd float %285, 1.000000e+00
  store float %286, float* %8, align 4
  br label %304

287:                                              ; preds = %271
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [400 x i32], [400 x i32]* %5, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sitofp i32 %291 to double
  %293 = fcmp olt double %292, 0.000000e+00
  br i1 %293, label %294, label %303

294:                                              ; preds = %287
  %295 = load float, float* %7, align 4
  %296 = fadd float %295, 1.000000e+00
  store float %296, float* %7, align 4
  %297 = load float, float* %9, align 4
  %298 = fadd float %297, 1.000000e+00
  store float %298, float* %9, align 4
  %299 = load i32, i32* %20, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %20, align 4
  %301 = load i32, i32* %23, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %23, align 4
  br label %303

303:                                              ; preds = %294, %287
  br label %304

304:                                              ; preds = %303, %278
  br label %305

305:                                              ; preds = %304, %270
  br label %306

306:                                              ; preds = %305, %249
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %11, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %11, align 4
  br label %215, !llvm.loop !7

310:                                              ; preds = %215
  %311 = load i32, i32* @chinese_rules, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %326

313:                                              ; preds = %310
  %314 = load i32, i32* @debug, align 4
  %315 = and i32 %314, 65536
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  br label %325

318:                                              ; preds = %313
  %319 = load i32, i32* @board_size, align 4
  %320 = load i32, i32* %10, align 4
  %321 = sub nsw i32 %319, %320
  %322 = load i32, i32* %22, align 4
  %323 = load i32, i32* %23, align 4
  %324 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %321, i32 %322, i32 %323)
  br label %325

325:                                              ; preds = %318, %317
  br label %339

326:                                              ; preds = %310
  %327 = load i32, i32* @debug, align 4
  %328 = and i32 %327, 65536
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %326
  br label %338

331:                                              ; preds = %326
  %332 = load i32, i32* @board_size, align 4
  %333 = load i32, i32* %10, align 4
  %334 = sub nsw i32 %332, %333
  %335 = load i32, i32* %21, align 4
  %336 = load i32, i32* %20, align 4
  %337 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %334, i32 %335, i32 %336)
  br label %338

338:                                              ; preds = %331, %330
  br label %339

339:                                              ; preds = %338, %325
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %10, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %10, align 4
  br label %210, !llvm.loop !8

343:                                              ; preds = %210
  %344 = load i32, i32* @chinese_rules, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load float, float* %8, align 4
  %348 = load float, float* %9, align 4
  %349 = fsub float %347, %348
  %350 = load float, float* @komi, align 4
  %351 = fadd float %349, %350
  store float %351, float* %14, align 4
  br label %375

352:                                              ; preds = %343
  %353 = load i32, i32* @debug, align 4
  %354 = and i32 %353, 65536
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %357, label %356

356:                                              ; preds = %352
  br label %363

357:                                              ; preds = %352
  %358 = load i32, i32* @black_captured, align 4
  %359 = load i32, i32* @white_captured, align 4
  %360 = load float, float* @komi, align 4
  %361 = fpext float %360 to double
  %362 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %358, i32 %359, double %361)
  br label %363

363:                                              ; preds = %357, %356
  %364 = load float, float* %6, align 4
  %365 = load i32, i32* @black_captured, align 4
  %366 = sitofp i32 %365 to float
  %367 = fadd float %364, %366
  %368 = load float, float* %7, align 4
  %369 = fsub float %367, %368
  %370 = load i32, i32* @white_captured, align 4
  %371 = sitofp i32 %370 to float
  %372 = fsub float %369, %371
  %373 = load float, float* @komi, align 4
  %374 = fadd float %372, %373
  store float %374, float* %14, align 4
  br label %375

375:                                              ; preds = %363, %346
  br label %378

376:                                              ; preds = %203
  %377 = load float, float* %13, align 4
  store float %377, float* %14, align 4
  br label %378

378:                                              ; preds = %376, %375
  %379 = load float*, float** %3, align 8
  %380 = icmp ne float* %379, null
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load float, float* %13, align 4
  %383 = load float*, float** %3, align 8
  store float %382, float* %383, align 4
  br label %384

384:                                              ; preds = %381, %378
  %385 = load float*, float** %4, align 8
  %386 = icmp ne float* %385, null
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = load float, float* %14, align 4
  %389 = load float*, float** %4, align 8
  store float %388, float* %389, align 4
  br label %390

390:                                              ; preds = %387, %384
  %391 = load float, float* %13, align 4
  %392 = load float, float* %14, align 4
  %393 = fadd float %391, %392
  %394 = fdiv float %393, 2.000000e+00
  ret float %394
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dilate_erode(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [400 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 21, i32* %9, align 4
  br label %13

13:                                               ; preds = %80, %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 400
  br i1 %15, label %16, label %83

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %80

24:                                               ; preds = %16
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  br label %39

39:                                               ; preds = %38, %31, %24
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @captured_territory(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 128, i32* %55, align 4
  br label %79

56:                                               ; preds = %46, %39
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @captured_territory(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 -128, i32* %72, align 4
  br label %78

73:                                               ; preds = %63, %56
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 0, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %51
  br label %80

80:                                               ; preds = %79, %23
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %13, !llvm.loop !9

83:                                               ; preds = %13
  %84 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 0
  %85 = bitcast i32* %84 to i8*
  %86 = load i32*, i32** %7, align 8
  %87 = bitcast i32* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %85, i8* align 4 %87, i64 1600, i1 false)
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %433, %83
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %436

92:                                               ; preds = %88
  store i32 21, i32* %9, align 4
  br label %93

93:                                               ; preds = %425, %92
  %94 = load i32, i32* %9, align 4
  %95 = icmp slt i32 %94, 400
  br i1 %95, label %96, label %428

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp ne i32 %101, 3
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  br label %425

104:                                              ; preds = %96
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %109, 0
  br i1 %110, label %111, label %264

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 20
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 3
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 20
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %264

127:                                              ; preds = %119, %111
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 3
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load i32*, i32** %7, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %136, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %264

143:                                              ; preds = %135, %127
  %144 = load i32, i32* %9, align 4
  %145 = sub nsw i32 %144, 20
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp ne i32 %149, 3
  br i1 %150, label %151, label %159

151:                                              ; preds = %143
  %152 = load i32*, i32** %7, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sub nsw i32 %153, 20
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %152, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = icmp sge i32 %157, 0
  br i1 %158, label %159, label %264

159:                                              ; preds = %151, %143
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp ne i32 %165, 3
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load i32*, i32** %7, align 8
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %264

175:                                              ; preds = %167, %159
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 20
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = icmp ne i32 %181, 3
  br i1 %182, label %183, label %197

183:                                              ; preds = %175
  %184 = load i32*, i32** %7, align 8
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 20
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %183
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %191, %183, %175
  %198 = load i32, i32* %9, align 4
  %199 = sub nsw i32 %198, 1
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp ne i32 %203, 3
  br i1 %204, label %205, label %219

205:                                              ; preds = %197
  %206 = load i32*, i32** %7, align 8
  %207 = load i32, i32* %9, align 4
  %208 = sub nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %205
  %214 = load i32, i32* %9, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  br label %219

219:                                              ; preds = %213, %205, %197
  %220 = load i32, i32* %9, align 4
  %221 = sub nsw i32 %220, 20
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = icmp ne i32 %225, 3
  br i1 %226, label %227, label %241

227:                                              ; preds = %219
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sub nsw i32 %229, 20
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %228, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %227
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %235, %227, %219
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 1
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp ne i32 %247, 3
  br i1 %248, label %249, label %263

249:                                              ; preds = %241
  %250 = load i32*, i32** %7, align 8
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %263

257:                                              ; preds = %249
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %257, %249, %241
  br label %264

264:                                              ; preds = %263, %167, %151, %135, %119, %104
  %265 = load i32*, i32** %7, align 8
  %266 = load i32, i32* %9, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = icmp sle i32 %269, 0
  br i1 %270, label %271, label %424

271:                                              ; preds = %264
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, 20
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp ne i32 %277, 3
  br i1 %278, label %279, label %287

279:                                              ; preds = %271
  %280 = load i32*, i32** %7, align 8
  %281 = load i32, i32* %9, align 4
  %282 = add nsw i32 %281, 20
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = icmp sle i32 %285, 0
  br i1 %286, label %287, label %424

287:                                              ; preds = %279, %271
  %288 = load i32, i32* %9, align 4
  %289 = sub nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp ne i32 %293, 3
  br i1 %294, label %295, label %303

295:                                              ; preds = %287
  %296 = load i32*, i32** %7, align 8
  %297 = load i32, i32* %9, align 4
  %298 = sub nsw i32 %297, 1
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = icmp sle i32 %301, 0
  br i1 %302, label %303, label %424

303:                                              ; preds = %295, %287
  %304 = load i32, i32* %9, align 4
  %305 = sub nsw i32 %304, 20
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = icmp ne i32 %309, 3
  br i1 %310, label %311, label %319

311:                                              ; preds = %303
  %312 = load i32*, i32** %7, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sub nsw i32 %313, 20
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %312, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = icmp sle i32 %317, 0
  br i1 %318, label %319, label %424

319:                                              ; preds = %311, %303
  %320 = load i32, i32* %9, align 4
  %321 = add nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp ne i32 %325, 3
  br i1 %326, label %327, label %335

327:                                              ; preds = %319
  %328 = load i32*, i32** %7, align 8
  %329 = load i32, i32* %9, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %328, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp sle i32 %333, 0
  br i1 %334, label %335, label %424

335:                                              ; preds = %327, %319
  %336 = load i32, i32* %9, align 4
  %337 = add nsw i32 %336, 20
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = icmp ne i32 %341, 3
  br i1 %342, label %343, label %357

343:                                              ; preds = %335
  %344 = load i32*, i32** %7, align 8
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 20
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %357

351:                                              ; preds = %343
  %352 = load i32, i32* %9, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = add nsw i32 %355, -1
  store i32 %356, i32* %354, align 4
  br label %357

357:                                              ; preds = %351, %343, %335
  %358 = load i32, i32* %9, align 4
  %359 = sub nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  %364 = icmp ne i32 %363, 3
  br i1 %364, label %365, label %379

365:                                              ; preds = %357
  %366 = load i32*, i32** %7, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sub nsw i32 %367, 1
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %366, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = icmp slt i32 %371, 0
  br i1 %372, label %373, label %379

373:                                              ; preds = %365
  %374 = load i32, i32* %9, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %375
  %377 = load i32, i32* %376, align 4
  %378 = add nsw i32 %377, -1
  store i32 %378, i32* %376, align 4
  br label %379

379:                                              ; preds = %373, %365, %357
  %380 = load i32, i32* %9, align 4
  %381 = sub nsw i32 %380, 20
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %382
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = icmp ne i32 %385, 3
  br i1 %386, label %387, label %401

387:                                              ; preds = %379
  %388 = load i32*, i32** %7, align 8
  %389 = load i32, i32* %9, align 4
  %390 = sub nsw i32 %389, 20
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i32, i32* %388, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %393, 0
  br i1 %394, label %395, label %401

395:                                              ; preds = %387
  %396 = load i32, i32* %9, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, -1
  store i32 %400, i32* %398, align 4
  br label %401

401:                                              ; preds = %395, %387, %379
  %402 = load i32, i32* %9, align 4
  %403 = add nsw i32 %402, 1
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %404
  %406 = load i8, i8* %405, align 1
  %407 = zext i8 %406 to i32
  %408 = icmp ne i32 %407, 3
  br i1 %408, label %409, label %423

409:                                              ; preds = %401
  %410 = load i32*, i32** %7, align 8
  %411 = load i32, i32* %9, align 4
  %412 = add nsw i32 %411, 1
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %410, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %423

417:                                              ; preds = %409
  %418 = load i32, i32* %9, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %421, -1
  store i32 %422, i32* %420, align 4
  br label %423

423:                                              ; preds = %417, %409, %401
  br label %424

424:                                              ; preds = %423, %327, %311, %295, %279, %264
  br label %425

425:                                              ; preds = %424, %103
  %426 = load i32, i32* %9, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %9, align 4
  br label %93, !llvm.loop !10

428:                                              ; preds = %93
  %429 = load i32*, i32** %7, align 8
  %430 = bitcast i32* %429 to i8*
  %431 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 0
  %432 = bitcast i32* %431 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %430, i8* align 16 %432, i64 1600, i1 false)
  br label %433

433:                                              ; preds = %428
  %434 = load i32, i32* %11, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %11, align 4
  br label %88, !llvm.loop !11

436:                                              ; preds = %88
  store i32 0, i32* %11, align 4
  br label %437

437:                                              ; preds = %688, %436
  %438 = load i32, i32* %11, align 4
  %439 = load i32, i32* %6, align 4
  %440 = icmp slt i32 %438, %439
  br i1 %440, label %441, label %691

441:                                              ; preds = %437
  store i32 21, i32* %9, align 4
  br label %442

442:                                              ; preds = %680, %441
  %443 = load i32, i32* %9, align 4
  %444 = icmp slt i32 %443, 400
  br i1 %444, label %445, label %683

445:                                              ; preds = %442
  %446 = load i32, i32* %9, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %447
  %449 = load i8, i8* %448, align 1
  %450 = zext i8 %449 to i32
  %451 = icmp ne i32 %450, 3
  br i1 %451, label %453, label %452

452:                                              ; preds = %445
  br label %680

453:                                              ; preds = %445
  %454 = load i32, i32* %9, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %455
  %457 = load i32, i32* %456, align 4
  %458 = icmp sgt i32 %457, 0
  br i1 %458, label %459, label %566

459:                                              ; preds = %453
  %460 = load i32, i32* %9, align 4
  %461 = add nsw i32 %460, 20
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %462
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i32
  %466 = icmp ne i32 %465, 3
  br i1 %466, label %467, label %481

467:                                              ; preds = %459
  %468 = load i32*, i32** %7, align 8
  %469 = load i32, i32* %9, align 4
  %470 = add nsw i32 %469, 20
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %468, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = icmp sle i32 %473, 0
  br i1 %474, label %475, label %481

475:                                              ; preds = %467
  %476 = load i32, i32* %9, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %477
  %479 = load i32, i32* %478, align 4
  %480 = add nsw i32 %479, -1
  store i32 %480, i32* %478, align 4
  br label %481

481:                                              ; preds = %475, %467, %459
  %482 = load i32, i32* %9, align 4
  %483 = sub nsw i32 %482, 1
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %484
  %486 = load i8, i8* %485, align 1
  %487 = zext i8 %486 to i32
  %488 = icmp ne i32 %487, 3
  br i1 %488, label %489, label %509

489:                                              ; preds = %481
  %490 = load i32*, i32** %7, align 8
  %491 = load i32, i32* %9, align 4
  %492 = sub nsw i32 %491, 1
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %490, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = icmp sle i32 %495, 0
  br i1 %496, label %497, label %509

497:                                              ; preds = %489
  %498 = load i32, i32* %9, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = icmp sgt i32 %501, 0
  br i1 %502, label %503, label %509

503:                                              ; preds = %497
  %504 = load i32, i32* %9, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %505
  %507 = load i32, i32* %506, align 4
  %508 = add nsw i32 %507, -1
  store i32 %508, i32* %506, align 4
  br label %509

509:                                              ; preds = %503, %497, %489, %481
  %510 = load i32, i32* %9, align 4
  %511 = sub nsw i32 %510, 20
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %512
  %514 = load i8, i8* %513, align 1
  %515 = zext i8 %514 to i32
  %516 = icmp ne i32 %515, 3
  br i1 %516, label %517, label %537

517:                                              ; preds = %509
  %518 = load i32*, i32** %7, align 8
  %519 = load i32, i32* %9, align 4
  %520 = sub nsw i32 %519, 20
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %518, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = icmp sle i32 %523, 0
  br i1 %524, label %525, label %537

525:                                              ; preds = %517
  %526 = load i32, i32* %9, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %531, label %537

531:                                              ; preds = %525
  %532 = load i32, i32* %9, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = add nsw i32 %535, -1
  store i32 %536, i32* %534, align 4
  br label %537

537:                                              ; preds = %531, %525, %517, %509
  %538 = load i32, i32* %9, align 4
  %539 = add nsw i32 %538, 1
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %540
  %542 = load i8, i8* %541, align 1
  %543 = zext i8 %542 to i32
  %544 = icmp ne i32 %543, 3
  br i1 %544, label %545, label %565

545:                                              ; preds = %537
  %546 = load i32*, i32** %7, align 8
  %547 = load i32, i32* %9, align 4
  %548 = add nsw i32 %547, 1
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32, i32* %546, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = icmp sle i32 %551, 0
  br i1 %552, label %553, label %565

553:                                              ; preds = %545
  %554 = load i32, i32* %9, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %555
  %557 = load i32, i32* %556, align 4
  %558 = icmp sgt i32 %557, 0
  br i1 %558, label %559, label %565

559:                                              ; preds = %553
  %560 = load i32, i32* %9, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = add nsw i32 %563, -1
  store i32 %564, i32* %562, align 4
  br label %565

565:                                              ; preds = %559, %553, %545, %537
  br label %566

566:                                              ; preds = %565, %453
  %567 = load i32, i32* %9, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = icmp slt i32 %570, 0
  br i1 %571, label %572, label %679

572:                                              ; preds = %566
  %573 = load i32, i32* %9, align 4
  %574 = add nsw i32 %573, 20
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %575
  %577 = load i8, i8* %576, align 1
  %578 = zext i8 %577 to i32
  %579 = icmp ne i32 %578, 3
  br i1 %579, label %580, label %594

580:                                              ; preds = %572
  %581 = load i32*, i32** %7, align 8
  %582 = load i32, i32* %9, align 4
  %583 = add nsw i32 %582, 20
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32, i32* %581, i64 %584
  %586 = load i32, i32* %585, align 4
  %587 = icmp sge i32 %586, 0
  br i1 %587, label %588, label %594

588:                                              ; preds = %580
  %589 = load i32, i32* %9, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %591, align 4
  br label %594

594:                                              ; preds = %588, %580, %572
  %595 = load i32, i32* %9, align 4
  %596 = sub nsw i32 %595, 1
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %597
  %599 = load i8, i8* %598, align 1
  %600 = zext i8 %599 to i32
  %601 = icmp ne i32 %600, 3
  br i1 %601, label %602, label %622

602:                                              ; preds = %594
  %603 = load i32*, i32** %7, align 8
  %604 = load i32, i32* %9, align 4
  %605 = sub nsw i32 %604, 1
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds i32, i32* %603, i64 %606
  %608 = load i32, i32* %607, align 4
  %609 = icmp sge i32 %608, 0
  br i1 %609, label %610, label %622

610:                                              ; preds = %602
  %611 = load i32, i32* %9, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = icmp slt i32 %614, 0
  br i1 %615, label %616, label %622

616:                                              ; preds = %610
  %617 = load i32, i32* %9, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %619, align 4
  br label %622

622:                                              ; preds = %616, %610, %602, %594
  %623 = load i32, i32* %9, align 4
  %624 = sub nsw i32 %623, 20
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %625
  %627 = load i8, i8* %626, align 1
  %628 = zext i8 %627 to i32
  %629 = icmp ne i32 %628, 3
  br i1 %629, label %630, label %650

630:                                              ; preds = %622
  %631 = load i32*, i32** %7, align 8
  %632 = load i32, i32* %9, align 4
  %633 = sub nsw i32 %632, 20
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds i32, i32* %631, i64 %634
  %636 = load i32, i32* %635, align 4
  %637 = icmp sge i32 %636, 0
  br i1 %637, label %638, label %650

638:                                              ; preds = %630
  %639 = load i32, i32* %9, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %640
  %642 = load i32, i32* %641, align 4
  %643 = icmp slt i32 %642, 0
  br i1 %643, label %644, label %650

644:                                              ; preds = %638
  %645 = load i32, i32* %9, align 4
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %646
  %648 = load i32, i32* %647, align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %647, align 4
  br label %650

650:                                              ; preds = %644, %638, %630, %622
  %651 = load i32, i32* %9, align 4
  %652 = add nsw i32 %651, 1
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %653
  %655 = load i8, i8* %654, align 1
  %656 = zext i8 %655 to i32
  %657 = icmp ne i32 %656, 3
  br i1 %657, label %658, label %678

658:                                              ; preds = %650
  %659 = load i32*, i32** %7, align 8
  %660 = load i32, i32* %9, align 4
  %661 = add nsw i32 %660, 1
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds i32, i32* %659, i64 %662
  %664 = load i32, i32* %663, align 4
  %665 = icmp sge i32 %664, 0
  br i1 %665, label %666, label %678

666:                                              ; preds = %658
  %667 = load i32, i32* %9, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = icmp slt i32 %670, 0
  br i1 %671, label %672, label %678

672:                                              ; preds = %666
  %673 = load i32, i32* %9, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = add nsw i32 %676, 1
  store i32 %677, i32* %675, align 4
  br label %678

678:                                              ; preds = %672, %666, %658, %650
  br label %679

679:                                              ; preds = %678, %566
  br label %680

680:                                              ; preds = %679, %452
  %681 = load i32, i32* %9, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %9, align 4
  br label %442, !llvm.loop !12

683:                                              ; preds = %442
  %684 = load i32*, i32** %7, align 8
  %685 = bitcast i32* %684 to i8*
  %686 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 0
  %687 = bitcast i32* %686 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %685, i8* align 16 %687, i64 1600, i1 false)
  br label %688

688:                                              ; preds = %683
  %689 = load i32, i32* %11, align 4
  %690 = add nsw i32 %689, 1
  store i32 %690, i32* %11, align 4
  br label %437, !llvm.loop !13

691:                                              ; preds = %437
  %692 = load i32, i32* %12, align 4
  ret i32 %692
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_bubbles(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [400 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 1, i32* %5, align 4
  %9 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 0
  %10 = bitcast i32* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 1600, i1 false)
  br label %11

11:                                               ; preds = %335, %1
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %336

14:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  store i32 21, i32* %4, align 4
  br label %15

15:                                               ; preds = %332, %14
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 400
  br i1 %17, label %18, label %335

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %38

25:                                               ; preds = %18
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %32, %25, %18
  br label %332

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 20
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 3
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 20
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %99, label %54

54:                                               ; preds = %47, %39
  %55 = load i32, i32* %4, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 3
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %99, label %69

69:                                               ; preds = %62, %54
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 20
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 3
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load i32, i32* %4, align 4
  %79 = sub nsw i32 %78, 20
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 3
  br i1 %83, label %99, label %84

84:                                               ; preds = %77, %69
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 3
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %103

99:                                               ; preds = %92, %77, %62, %47
  store i32 1, i32* %5, align 4
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %101
  store i32 3, i32* %102, align 4
  br label %331

103:                                              ; preds = %92, %84
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %201, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 20
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %115, 3
  br i1 %116, label %117, label %132

117:                                              ; preds = %109
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 20
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %201, label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 20
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %201, label %132

132:                                              ; preds = %125, %109
  %133 = load i32, i32* %4, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp ne i32 %138, 3
  br i1 %139, label %140, label %155

140:                                              ; preds = %132
  %141 = load i32*, i32** %2, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sub nsw i32 %142, 1
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %201, label %148

148:                                              ; preds = %140
  %149 = load i32, i32* %4, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %201, label %155

155:                                              ; preds = %148, %132
  %156 = load i32, i32* %4, align 4
  %157 = sub nsw i32 %156, 20
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp ne i32 %161, 3
  br i1 %162, label %163, label %178

163:                                              ; preds = %155
  %164 = load i32*, i32** %2, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sub nsw i32 %165, 20
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %164, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 0
  br i1 %170, label %201, label %171

171:                                              ; preds = %163
  %172 = load i32, i32* %4, align 4
  %173 = sub nsw i32 %172, 20
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %201, label %178

178:                                              ; preds = %171, %155
  %179 = load i32, i32* %4, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp ne i32 %184, 3
  br i1 %185, label %186, label %202

186:                                              ; preds = %178
  %187 = load i32*, i32** %2, align 8
  %188 = load i32, i32* %4, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %201, label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %4, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %194, %186, %171, %163, %148, %140, %125, %117, %103
  store i32 1, i32* %6, align 4
  br label %202

202:                                              ; preds = %201, %194, %178
  %203 = load i32, i32* %4, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 2
  br i1 %207, label %300, label %208

208:                                              ; preds = %202
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 20
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp ne i32 %214, 3
  br i1 %215, label %216, label %231

216:                                              ; preds = %208
  %217 = load i32*, i32** %2, align 8
  %218 = load i32, i32* %4, align 4
  %219 = add nsw i32 %218, 20
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %222, 0
  br i1 %223, label %300, label %224

224:                                              ; preds = %216
  %225 = load i32, i32* %4, align 4
  %226 = add nsw i32 %225, 20
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 2
  br i1 %230, label %300, label %231

231:                                              ; preds = %224, %208
  %232 = load i32, i32* %4, align 4
  %233 = sub nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp ne i32 %237, 3
  br i1 %238, label %239, label %254

239:                                              ; preds = %231
  %240 = load i32*, i32** %2, align 8
  %241 = load i32, i32* %4, align 4
  %242 = sub nsw i32 %241, 1
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %300, label %247

247:                                              ; preds = %239
  %248 = load i32, i32* %4, align 4
  %249 = sub nsw i32 %248, 1
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp eq i32 %252, 2
  br i1 %253, label %300, label %254

254:                                              ; preds = %247, %231
  %255 = load i32, i32* %4, align 4
  %256 = sub nsw i32 %255, 20
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp ne i32 %260, 3
  br i1 %261, label %262, label %277

262:                                              ; preds = %254
  %263 = load i32*, i32** %2, align 8
  %264 = load i32, i32* %4, align 4
  %265 = sub nsw i32 %264, 20
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %300, label %270

270:                                              ; preds = %262
  %271 = load i32, i32* %4, align 4
  %272 = sub nsw i32 %271, 20
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 2
  br i1 %276, label %300, label %277

277:                                              ; preds = %270, %254
  %278 = load i32, i32* %4, align 4
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = icmp ne i32 %283, 3
  br i1 %284, label %285, label %301

285:                                              ; preds = %277
  %286 = load i32*, i32** %2, align 8
  %287 = load i32, i32* %4, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %300, label %293

293:                                              ; preds = %285
  %294 = load i32, i32* %4, align 4
  %295 = add nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 2
  br i1 %299, label %300, label %301

300:                                              ; preds = %293, %285, %270, %262, %247, %239, %224, %216, %202
  store i32 1, i32* %7, align 4
  br label %301

301:                                              ; preds = %300, %293, %277
  %302 = load i32, i32* %6, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %301
  %305 = load i32, i32* %7, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 3, i32* %8, align 4
  br label %309

308:                                              ; preds = %304
  store i32 1, i32* %8, align 4
  br label %309

309:                                              ; preds = %308, %307
  br label %315

310:                                              ; preds = %301
  %311 = load i32, i32* %7, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store i32 2, i32* %8, align 4
  br label %314

314:                                              ; preds = %313, %310
  br label %315

315:                                              ; preds = %314, %309
  %316 = load i32, i32* %8, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %330

318:                                              ; preds = %315
  %319 = load i32, i32* %8, align 4
  %320 = load i32, i32* %4, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %319, %323
  br i1 %324, label %325, label %330

325:                                              ; preds = %318
  store i32 1, i32* %5, align 4
  %326 = load i32, i32* %8, align 4
  %327 = load i32, i32* %4, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %328
  store i32 %326, i32* %329, align 4
  br label %330

330:                                              ; preds = %325, %318, %315
  br label %331

331:                                              ; preds = %330, %99
  br label %332

332:                                              ; preds = %331, %38
  %333 = load i32, i32* %4, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %4, align 4
  br label %15, !llvm.loop !14

335:                                              ; preds = %15
  br label %11, !llvm.loop !15

336:                                              ; preds = %11
  store i32 21, i32* %4, align 4
  br label %337

337:                                              ; preds = %378, %336
  %338 = load i32, i32* %4, align 4
  %339 = icmp slt i32 %338, 400
  br i1 %339, label %340, label %381

340:                                              ; preds = %337
  %341 = load i32, i32* %4, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp ne i32 %345, 3
  br i1 %346, label %347, label %354

347:                                              ; preds = %340
  %348 = load i32*, i32** %2, align 8
  %349 = load i32, i32* %4, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %355

354:                                              ; preds = %347, %340
  br label %378

355:                                              ; preds = %347
  %356 = load i32, i32* %4, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = icmp eq i32 %359, 1
  br i1 %360, label %361, label %366

361:                                              ; preds = %355
  %362 = load i32*, i32** %2, align 8
  %363 = load i32, i32* %4, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  store i32 1, i32* %365, align 4
  br label %366

366:                                              ; preds = %361, %355
  %367 = load i32, i32* %4, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [400 x i32], [400 x i32]* %3, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %372, label %377

372:                                              ; preds = %366
  %373 = load i32*, i32** %2, align 8
  %374 = load i32, i32* %4, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds i32, i32* %373, i64 %375
  store i32 -1, i32* %376, align 4
  br label %377

377:                                              ; preds = %372, %366
  br label %378

378:                                              ; preds = %377, %354
  %379 = load i32, i32* %4, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %4, align 4
  br label %337, !llvm.loop !16

381:                                              ; preds = %337
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_regions(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  call void @start_draw_board()
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %102, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @board_size, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %105

11:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %98, %11
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @board_size, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %101

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = mul nsw i32 %17, 20
  %19 = add nsw i32 21, %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %42

41:                                               ; preds = %28, %16
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %5, align 4
  switch i32 %43, label %97 [
    i32 0, label %44
    i32 2, label %69
    i32 1, label %83
  ]

44:                                               ; preds = %42
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  call void @draw_color_char(i32 %52, i32 %53, i32 119, i32 2)
  br label %68

54:                                               ; preds = %44
  %55 = load i32*, i32** %2, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  call void @draw_color_char(i32 %62, i32 %63, i32 98, i32 5)
  br label %67

64:                                               ; preds = %54
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  call void @draw_color_char(i32 %65, i32 %66, i32 46, i32 0)
  br label %67

67:                                               ; preds = %64, %61
  br label %68

68:                                               ; preds = %67, %51
  br label %97

69:                                               ; preds = %42
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %72, i32 0, i32 16
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %4, align 4
  call void @draw_color_char(i32 %77, i32 %78, i32 88, i32 1)
  br label %82

79:                                               ; preds = %69
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %4, align 4
  call void @draw_color_char(i32 %80, i32 %81, i32 88, i32 0)
  br label %82

82:                                               ; preds = %79, %76
  br label %97

83:                                               ; preds = %42
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %86, i32 0, i32 16
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* %4, align 4
  call void @draw_color_char(i32 %91, i32 %92, i32 79, i32 1)
  br label %96

93:                                               ; preds = %83
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %4, align 4
  call void @draw_color_char(i32 %94, i32 %95, i32 79, i32 0)
  br label %96

96:                                               ; preds = %93, %90
  br label %97

97:                                               ; preds = %42, %96, %82, %68
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %4, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %12, !llvm.loop !17

101:                                              ; preds = %12
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %3, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %3, align 4
  br label %7, !llvm.loop !18

105:                                              ; preds = %7
  call void @end_draw_board()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @captured_territory(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %42, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %42, label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %42, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %38, i32 0, i32 16
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %20, %13, %2
  store i32 0, i32* %3, align 4
  br label %169

43:                                               ; preds = %35, %27
  %44 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %44, i64 %50
  %52 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %43
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %169

63:                                               ; preds = %55, %43
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %165, %63
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %66, i64 %72
  %74 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %65, %75
  br i1 %76, label %77, label %168

77:                                               ; preds = %64
  %78 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %79 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %79, i64 %85
  %87 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %86, i32 0, i32 1
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %87, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %78, i64 %92
  %94 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = sub nsw i32 3, %104
  %106 = icmp eq i32 %99, %105
  br i1 %106, label %107, label %164

107:                                              ; preds = %77
  %108 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %109 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %109, i64 %115
  %117 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %116, i32 0, i32 1
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %117, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %108, i64 %122
  %124 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %127, i32 0, i32 16
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %163, label %131

131:                                              ; preds = %107
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %131
  %140 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %141 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %143
  %145 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %141, i64 %147
  %149 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %148, i32 0, i32 1
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [10 x i32], [10 x i32]* %149, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %140, i64 %154
  %156 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %159, i32 0, i32 16
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %164

163:                                              ; preds = %139, %107
  store i32 1, i32* %3, align 4
  br label %169

164:                                              ; preds = %139, %131, %77
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %6, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %6, align 4
  br label %64, !llvm.loop !19

168:                                              ; preds = %64
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %168, %163, %62, %42
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local void @start_draw_board() #1

declare dso_local void @draw_color_char(i32, i32, i32, i32) #1

declare dso_local void @end_draw_board() #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{!16, !5}
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
