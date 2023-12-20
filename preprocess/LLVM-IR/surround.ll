; ModuleID = 'surround.c'
source_filename = "surround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.surround_data = type { i32, [400 x i8] }

@board = external dso_local global [421 x i8], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@.str = private unnamed_addr constant [11 x i8] c"surround.c\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"(board[apos] != 3)\00", align 1
@board_size = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"(board[best_found] != 3)\00", align 1
@delta = external dso_local global [8 x i32], align 16
@surround_pointer = external dso_local global i32, align 4
@surroundings = external dso_local global [10 x %struct.surround_data], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_surroundings(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [19 x i32], align 16
  %18 = alloca [19 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [400 x i8], align 16
  %26 = alloca [400 x i8], align 16
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca float, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca float, align 4
  %33 = alloca i32, align 4
  %34 = alloca float, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca float, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca float, align 4
  %41 = alloca float, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  %45 = alloca float, align 4
  %46 = alloca float, align 4
  %47 = alloca float, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  store i32 %56, i32* %23, align 4
  %57 = load i32, i32* %23, align 4
  %58 = sub nsw i32 3, %57
  store i32 %58, i32* %24, align 4
  %59 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 400, i1 false)
  %60 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 400, i1 false)
  store i32 21, i32* %15, align 4
  br label %61

61:                                               ; preds = %88, %4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 400
  br i1 %63, label %64, label %91

64:                                               ; preds = %61
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %69, 3
  br i1 %70, label %71, label %87

71:                                               ; preds = %64
  %72 = load i32, i32* %15, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %71
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @is_same_dragon(i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* %15, align 4
  %86 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  call void @mark_string(i32 %85, i8* %86, i8 signext 1)
  br label %87

87:                                               ; preds = %84, %79, %71, %64
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  br label %61, !llvm.loop !4

91:                                               ; preds = %61
  %92 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %92, i64 %98
  %100 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %1449

104:                                              ; preds = %91
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %181, %104
  %106 = load i32, i32* %14, align 4
  %107 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %107, i64 %113
  %115 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp slt i32 %106, %116
  br i1 %117, label %118, label %184

118:                                              ; preds = %105
  %119 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %120 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %120, i64 %126
  %128 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %127, i32 0, i32 1
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* %128, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %119, i64 %133
  %135 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %27, align 4
  %141 = load i32, i32* %27, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = load i32, i32* %23, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %180

148:                                              ; preds = %118
  store i32 21, i32* %15, align 4
  br label %149

149:                                              ; preds = %176, %148
  %150 = load i32, i32* %15, align 4
  %151 = icmp slt i32 %150, 400
  br i1 %151, label %152, label %179

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ne i32 %157, 3
  br i1 %158, label %159, label %175

159:                                              ; preds = %152
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %15, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %175

167:                                              ; preds = %159
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %27, align 4
  %170 = call i32 @is_same_dragon(i32 %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* %15, align 4
  %174 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  call void @mark_string(i32 %173, i8* %174, i8 signext 1)
  br label %175

175:                                              ; preds = %172, %167, %159, %152
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %149, !llvm.loop !6

179:                                              ; preds = %149
  br label %180

180:                                              ; preds = %179, %118
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %14, align 4
  br label %105, !llvm.loop !7

184:                                              ; preds = %105
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp ne i32 %192, 3
  br i1 %193, label %194, label %195

194:                                              ; preds = %187
  br label %196

195:                                              ; preds = %187
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %196

196:                                              ; preds = %195, %194
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %198
  store i8 1, i8* %199, align 1
  br label %200

200:                                              ; preds = %196, %184
  store i32 -1, i32* %21, align 4
  store i32 0, i32* %12, align 4
  br label %201

201:                                              ; preds = %237, %200
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @board_size, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %240

205:                                              ; preds = %201
  %206 = load i32, i32* %21, align 4
  %207 = icmp ne i32 %206, -1
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %240

209:                                              ; preds = %205
  store i32 0, i32* %13, align 4
  br label %210

210:                                              ; preds = %233, %209
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* @board_size, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %236

214:                                              ; preds = %210
  %215 = load i32, i32* %12, align 4
  %216 = mul nsw i32 %215, 20
  %217 = add nsw i32 21, %216
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %217, %218
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = icmp ne i8 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %214
  %225 = load i32, i32* %12, align 4
  %226 = mul nsw i32 %225, 20
  %227 = add nsw i32 21, %226
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %227, %228
  %230 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 0
  store i32 %229, i32* %230, align 16
  %231 = load i32, i32* %12, align 4
  store i32 %231, i32* %21, align 4
  br label %236

232:                                              ; preds = %214
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %13, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  br label %210, !llvm.loop !8

236:                                              ; preds = %224, %210
  br label %237

237:                                              ; preds = %236
  %238 = load i32, i32* %12, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %12, align 4
  br label %201, !llvm.loop !9

240:                                              ; preds = %208, %201
  store i32 -1, i32* %22, align 4
  %241 = load i32, i32* @board_size, align 4
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %12, align 4
  br label %243

243:                                              ; preds = %272, %240
  %244 = load i32, i32* %12, align 4
  %245 = icmp sge i32 %244, 0
  br i1 %245, label %246, label %275

246:                                              ; preds = %243
  %247 = load i32, i32* %22, align 4
  %248 = icmp ne i32 %247, -1
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %275

250:                                              ; preds = %246
  store i32 0, i32* %13, align 4
  br label %251

251:                                              ; preds = %268, %250
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @board_size, align 4
  %254 = icmp slt i32 %252, %253
  br i1 %254, label %255, label %271

255:                                              ; preds = %251
  %256 = load i32, i32* %12, align 4
  %257 = mul nsw i32 %256, 20
  %258 = add nsw i32 21, %257
  %259 = load i32, i32* %13, align 4
  %260 = add nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = icmp ne i8 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %255
  %266 = load i32, i32* %12, align 4
  store i32 %266, i32* %22, align 4
  br label %271

267:                                              ; preds = %255
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %13, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %13, align 4
  br label %251, !llvm.loop !10

271:                                              ; preds = %265, %251
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, -1
  store i32 %274, i32* %12, align 4
  br label %243, !llvm.loop !11

275:                                              ; preds = %249, %243
  store i32 1, i32* %19, align 4
  br label %276

276:                                              ; preds = %368, %275
  %277 = load i32, i32* %19, align 4
  %278 = sub nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sdiv i32 %281, 20
  %283 = sub nsw i32 %282, 1
  %284 = load i32, i32* %22, align 4
  %285 = icmp slt i32 %283, %284
  br i1 %285, label %286, label %371

286:                                              ; preds = %276
  store i32 0, i32* %28, align 4
  store float 0.000000e+00, float* %29, align 4
  %287 = load i32, i32* %19, align 4
  %288 = sub nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sdiv i32 %291, 20
  %293 = sub nsw i32 %292, 1
  store i32 %293, i32* %30, align 4
  %294 = load i32, i32* %19, align 4
  %295 = sub nsw i32 %294, 1
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = srem i32 %298, 20
  %300 = sub nsw i32 %299, 1
  store i32 %300, i32* %31, align 4
  %301 = load i32, i32* %30, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %303

303:                                              ; preds = %351, %286
  %304 = load i32, i32* %10, align 4
  %305 = load i32, i32* %22, align 4
  %306 = icmp sle i32 %304, %305
  br i1 %306, label %307, label %354

307:                                              ; preds = %303
  store i32 0, i32* %11, align 4
  br label %308

308:                                              ; preds = %347, %307
  %309 = load i32, i32* %11, align 4
  %310 = load i32, i32* @board_size, align 4
  %311 = icmp slt i32 %309, %310
  br i1 %311, label %312, label %350

312:                                              ; preds = %308
  %313 = load i32, i32* %10, align 4
  %314 = mul nsw i32 %313, 20
  %315 = add nsw i32 21, %314
  %316 = load i32, i32* %11, align 4
  %317 = add nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = icmp ne i8 %320, 0
  br i1 %321, label %322, label %346

322:                                              ; preds = %312
  %323 = load i32, i32* %11, align 4
  %324 = load i32, i32* %31, align 4
  %325 = sub nsw i32 %323, %324
  %326 = sitofp i32 %325 to float
  %327 = load i32, i32* %10, align 4
  %328 = load i32, i32* %30, align 4
  %329 = sub nsw i32 %327, %328
  %330 = sitofp i32 %329 to float
  %331 = fdiv float %326, %330
  store float %331, float* %32, align 4
  %332 = load i32, i32* %28, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %322
  %335 = load float, float* %32, align 4
  %336 = load float, float* %29, align 4
  %337 = fcmp olt float %335, %336
  br i1 %337, label %338, label %345

338:                                              ; preds = %334, %322
  %339 = load i32, i32* %10, align 4
  %340 = mul nsw i32 %339, 20
  %341 = add nsw i32 21, %340
  %342 = load i32, i32* %11, align 4
  %343 = add nsw i32 %341, %342
  store i32 %343, i32* %28, align 4
  %344 = load float, float* %32, align 4
  store float %344, float* %29, align 4
  br label %345

345:                                              ; preds = %338, %334
  br label %346

346:                                              ; preds = %345, %312
  br label %347

347:                                              ; preds = %346
  %348 = load i32, i32* %11, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %11, align 4
  br label %308, !llvm.loop !12

350:                                              ; preds = %308
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %10, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %10, align 4
  br label %303, !llvm.loop !13

354:                                              ; preds = %303
  %355 = load i32, i32* %28, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %356
  %358 = load i8, i8* %357, align 1
  %359 = zext i8 %358 to i32
  %360 = icmp ne i32 %359, 3
  br i1 %360, label %361, label %362

361:                                              ; preds = %354
  br label %363

362:                                              ; preds = %354
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %363

363:                                              ; preds = %362, %361
  %364 = load i32, i32* %28, align 4
  %365 = load i32, i32* %19, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %366
  store i32 %364, i32* %367, align 4
  br label %368

368:                                              ; preds = %363
  %369 = load i32, i32* %19, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %19, align 4
  br label %276, !llvm.loop !14

371:                                              ; preds = %276
  %372 = load i32, i32* @board_size, align 4
  %373 = sub nsw i32 %372, 1
  store i32 %373, i32* %13, align 4
  br label %374

374:                                              ; preds = %395, %371
  %375 = load i32, i32* %13, align 4
  %376 = icmp sge i32 %375, 0
  br i1 %376, label %377, label %398

377:                                              ; preds = %374
  %378 = load i32, i32* %21, align 4
  %379 = mul nsw i32 %378, 20
  %380 = add nsw i32 21, %379
  %381 = load i32, i32* %13, align 4
  %382 = add nsw i32 %380, %381
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %383
  %385 = load i8, i8* %384, align 1
  %386 = icmp ne i8 %385, 0
  br i1 %386, label %387, label %394

387:                                              ; preds = %377
  %388 = load i32, i32* %21, align 4
  %389 = mul nsw i32 %388, 20
  %390 = add nsw i32 21, %389
  %391 = load i32, i32* %13, align 4
  %392 = add nsw i32 %390, %391
  %393 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 0
  store i32 %392, i32* %393, align 16
  br label %398

394:                                              ; preds = %377
  br label %395

395:                                              ; preds = %394
  %396 = load i32, i32* %13, align 4
  %397 = add nsw i32 %396, -1
  store i32 %397, i32* %13, align 4
  br label %374, !llvm.loop !15

398:                                              ; preds = %387, %374
  store i32 1, i32* %20, align 4
  br label %399

399:                                              ; preds = %492, %398
  %400 = load i32, i32* %20, align 4
  %401 = sub nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = sdiv i32 %404, 20
  %406 = sub nsw i32 %405, 1
  %407 = load i32, i32* %22, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %495

409:                                              ; preds = %399
  store i32 0, i32* %33, align 4
  store float 0.000000e+00, float* %34, align 4
  %410 = load i32, i32* %20, align 4
  %411 = sub nsw i32 %410, 1
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = sdiv i32 %414, 20
  %416 = sub nsw i32 %415, 1
  store i32 %416, i32* %35, align 4
  %417 = load i32, i32* %20, align 4
  %418 = sub nsw i32 %417, 1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = srem i32 %421, 20
  %423 = sub nsw i32 %422, 1
  store i32 %423, i32* %36, align 4
  %424 = load i32, i32* %35, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %10, align 4
  br label %426

426:                                              ; preds = %475, %409
  %427 = load i32, i32* %10, align 4
  %428 = load i32, i32* %22, align 4
  %429 = icmp sle i32 %427, %428
  br i1 %429, label %430, label %478

430:                                              ; preds = %426
  %431 = load i32, i32* @board_size, align 4
  %432 = sub nsw i32 %431, 1
  store i32 %432, i32* %11, align 4
  br label %433

433:                                              ; preds = %471, %430
  %434 = load i32, i32* %11, align 4
  %435 = icmp sge i32 %434, 0
  br i1 %435, label %436, label %474

436:                                              ; preds = %433
  %437 = load i32, i32* %10, align 4
  %438 = mul nsw i32 %437, 20
  %439 = add nsw i32 21, %438
  %440 = load i32, i32* %11, align 4
  %441 = add nsw i32 %439, %440
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %442
  %444 = load i8, i8* %443, align 1
  %445 = icmp ne i8 %444, 0
  br i1 %445, label %446, label %470

446:                                              ; preds = %436
  %447 = load i32, i32* %11, align 4
  %448 = load i32, i32* %36, align 4
  %449 = sub nsw i32 %447, %448
  %450 = sitofp i32 %449 to float
  %451 = load i32, i32* %10, align 4
  %452 = load i32, i32* %35, align 4
  %453 = sub nsw i32 %451, %452
  %454 = sitofp i32 %453 to float
  %455 = fdiv float %450, %454
  store float %455, float* %37, align 4
  %456 = load i32, i32* %33, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %462

458:                                              ; preds = %446
  %459 = load float, float* %37, align 4
  %460 = load float, float* %34, align 4
  %461 = fcmp ogt float %459, %460
  br i1 %461, label %462, label %469

462:                                              ; preds = %458, %446
  %463 = load i32, i32* %10, align 4
  %464 = mul nsw i32 %463, 20
  %465 = add nsw i32 21, %464
  %466 = load i32, i32* %11, align 4
  %467 = add nsw i32 %465, %466
  store i32 %467, i32* %33, align 4
  %468 = load float, float* %37, align 4
  store float %468, float* %34, align 4
  br label %469

469:                                              ; preds = %462, %458
  br label %470

470:                                              ; preds = %469, %436
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %11, align 4
  %473 = add nsw i32 %472, -1
  store i32 %473, i32* %11, align 4
  br label %433, !llvm.loop !16

474:                                              ; preds = %433
  br label %475

475:                                              ; preds = %474
  %476 = load i32, i32* %10, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %10, align 4
  br label %426, !llvm.loop !17

478:                                              ; preds = %426
  %479 = load i32, i32* %33, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %480
  %482 = load i8, i8* %481, align 1
  %483 = zext i8 %482 to i32
  %484 = icmp ne i32 %483, 3
  br i1 %484, label %485, label %486

485:                                              ; preds = %478
  br label %487

486:                                              ; preds = %478
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 207, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %487

487:                                              ; preds = %486, %485
  %488 = load i32, i32* %33, align 4
  %489 = load i32, i32* %20, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %490
  store i32 %488, i32* %491, align 4
  br label %492

492:                                              ; preds = %487
  %493 = load i32, i32* %20, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %20, align 4
  br label %399, !llvm.loop !18

495:                                              ; preds = %399
  %496 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 0
  %497 = load i32, i32* %496, align 16
  %498 = srem i32 %497, 20
  %499 = sub nsw i32 %498, 1
  store i32 %499, i32* %13, align 4
  br label %500

500:                                              ; preds = %515, %495
  %501 = load i32, i32* %13, align 4
  %502 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 0
  %503 = load i32, i32* %502, align 16
  %504 = srem i32 %503, 20
  %505 = sub nsw i32 %504, 1
  %506 = icmp sle i32 %501, %505
  br i1 %506, label %507, label %518

507:                                              ; preds = %500
  %508 = load i32, i32* %21, align 4
  %509 = mul nsw i32 %508, 20
  %510 = add nsw i32 21, %509
  %511 = load i32, i32* %13, align 4
  %512 = add nsw i32 %510, %511
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %513
  store i8 1, i8* %514, align 1
  br label %515

515:                                              ; preds = %507
  %516 = load i32, i32* %13, align 4
  %517 = add nsw i32 %516, 1
  store i32 %517, i32* %13, align 4
  br label %500, !llvm.loop !19

518:                                              ; preds = %500
  %519 = load i32, i32* %19, align 4
  %520 = sub nsw i32 %519, 1
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = srem i32 %523, 20
  %525 = sub nsw i32 %524, 1
  store i32 %525, i32* %13, align 4
  br label %526

526:                                              ; preds = %544, %518
  %527 = load i32, i32* %13, align 4
  %528 = load i32, i32* %20, align 4
  %529 = sub nsw i32 %528, 1
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = srem i32 %532, 20
  %534 = sub nsw i32 %533, 1
  %535 = icmp sle i32 %527, %534
  br i1 %535, label %536, label %547

536:                                              ; preds = %526
  %537 = load i32, i32* %22, align 4
  %538 = mul nsw i32 %537, 20
  %539 = add nsw i32 21, %538
  %540 = load i32, i32* %13, align 4
  %541 = add nsw i32 %539, %540
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %542
  store i8 1, i8* %543, align 1
  br label %544

544:                                              ; preds = %536
  %545 = load i32, i32* %13, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %13, align 4
  br label %526, !llvm.loop !20

547:                                              ; preds = %526
  %548 = load i32, i32* %21, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %12, align 4
  br label %550

550:                                              ; preds = %708, %547
  %551 = load i32, i32* %12, align 4
  %552 = load i32, i32* %22, align 4
  %553 = icmp slt i32 %551, %552
  br i1 %553, label %554, label %711

554:                                              ; preds = %550
  store i32 -1, i32* %38, align 4
  store i32 -1, i32* %39, align 4
  store i32 1, i32* %14, align 4
  br label %555

555:                                              ; preds = %619, %554
  %556 = load i32, i32* %14, align 4
  %557 = load i32, i32* %19, align 4
  %558 = icmp slt i32 %556, %557
  br i1 %558, label %559, label %622

559:                                              ; preds = %555
  %560 = load i32, i32* %14, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = sdiv i32 %563, 20
  %565 = sub nsw i32 %564, 1
  %566 = load i32, i32* %12, align 4
  %567 = icmp sgt i32 %565, %566
  br i1 %567, label %568, label %618

568:                                              ; preds = %559
  %569 = load i32, i32* %14, align 4
  %570 = sub nsw i32 %569, 1
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %571
  %573 = load i32, i32* %572, align 4
  %574 = sdiv i32 %573, 20
  %575 = sub nsw i32 %574, 1
  %576 = sitofp i32 %575 to float
  store float %576, float* %40, align 4
  %577 = load i32, i32* %14, align 4
  %578 = sub nsw i32 %577, 1
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %579
  %581 = load i32, i32* %580, align 4
  %582 = srem i32 %581, 20
  %583 = sub nsw i32 %582, 1
  %584 = sitofp i32 %583 to float
  store float %584, float* %41, align 4
  %585 = load i32, i32* %14, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = sdiv i32 %588, 20
  %590 = sub nsw i32 %589, 1
  %591 = sitofp i32 %590 to float
  store float %591, float* %42, align 4
  %592 = load i32, i32* %14, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [19 x i32], [19 x i32]* %17, i64 0, i64 %593
  %595 = load i32, i32* %594, align 4
  %596 = srem i32 %595, 20
  %597 = sub nsw i32 %596, 1
  %598 = sitofp i32 %597 to float
  store float %598, float* %43, align 4
  %599 = load float, float* %41, align 4
  %600 = fpext float %599 to double
  %601 = fadd double -1.000000e-03, %600
  %602 = load i32, i32* %12, align 4
  %603 = sitofp i32 %602 to float
  %604 = load float, float* %40, align 4
  %605 = fsub float %603, %604
  %606 = load float, float* %43, align 4
  %607 = load float, float* %41, align 4
  %608 = fsub float %606, %607
  %609 = fmul float %605, %608
  %610 = load float, float* %42, align 4
  %611 = load float, float* %40, align 4
  %612 = fsub float %610, %611
  %613 = fdiv float %609, %612
  %614 = fpext float %613 to double
  %615 = fadd double %601, %614
  %616 = call double @llvm.ceil.f64(double %615)
  %617 = fptosi double %616 to i32
  store i32 %617, i32* %38, align 4
  br label %622

618:                                              ; preds = %559
  br label %619

619:                                              ; preds = %618
  %620 = load i32, i32* %14, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %14, align 4
  br label %555, !llvm.loop !21

622:                                              ; preds = %568, %555
  store i32 1, i32* %14, align 4
  br label %623

623:                                              ; preds = %687, %622
  %624 = load i32, i32* %14, align 4
  %625 = load i32, i32* %20, align 4
  %626 = icmp slt i32 %624, %625
  br i1 %626, label %627, label %690

627:                                              ; preds = %623
  %628 = load i32, i32* %14, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %629
  %631 = load i32, i32* %630, align 4
  %632 = sdiv i32 %631, 20
  %633 = sub nsw i32 %632, 1
  %634 = load i32, i32* %12, align 4
  %635 = icmp sgt i32 %633, %634
  br i1 %635, label %636, label %686

636:                                              ; preds = %627
  %637 = load i32, i32* %14, align 4
  %638 = sub nsw i32 %637, 1
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %639
  %641 = load i32, i32* %640, align 4
  %642 = sdiv i32 %641, 20
  %643 = sub nsw i32 %642, 1
  %644 = sitofp i32 %643 to float
  store float %644, float* %44, align 4
  %645 = load i32, i32* %14, align 4
  %646 = sub nsw i32 %645, 1
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %647
  %649 = load i32, i32* %648, align 4
  %650 = srem i32 %649, 20
  %651 = sub nsw i32 %650, 1
  %652 = sitofp i32 %651 to float
  store float %652, float* %45, align 4
  %653 = load i32, i32* %14, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %654
  %656 = load i32, i32* %655, align 4
  %657 = sdiv i32 %656, 20
  %658 = sub nsw i32 %657, 1
  %659 = sitofp i32 %658 to float
  store float %659, float* %46, align 4
  %660 = load i32, i32* %14, align 4
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [19 x i32], [19 x i32]* %18, i64 0, i64 %661
  %663 = load i32, i32* %662, align 4
  %664 = srem i32 %663, 20
  %665 = sub nsw i32 %664, 1
  %666 = sitofp i32 %665 to float
  store float %666, float* %47, align 4
  %667 = load float, float* %45, align 4
  %668 = fpext float %667 to double
  %669 = fadd double 1.000000e-03, %668
  %670 = load i32, i32* %12, align 4
  %671 = sitofp i32 %670 to float
  %672 = load float, float* %44, align 4
  %673 = fsub float %671, %672
  %674 = load float, float* %47, align 4
  %675 = load float, float* %45, align 4
  %676 = fsub float %674, %675
  %677 = fmul float %673, %676
  %678 = load float, float* %46, align 4
  %679 = load float, float* %44, align 4
  %680 = fsub float %678, %679
  %681 = fdiv float %677, %680
  %682 = fpext float %681 to double
  %683 = fadd double %669, %682
  %684 = call double @llvm.floor.f64(double %683)
  %685 = fptosi double %684 to i32
  store i32 %685, i32* %39, align 4
  br label %690

686:                                              ; preds = %627
  br label %687

687:                                              ; preds = %686
  %688 = load i32, i32* %14, align 4
  %689 = add nsw i32 %688, 1
  store i32 %689, i32* %14, align 4
  br label %623, !llvm.loop !22

690:                                              ; preds = %636, %623
  %691 = load i32, i32* %38, align 4
  store i32 %691, i32* %13, align 4
  br label %692

692:                                              ; preds = %704, %690
  %693 = load i32, i32* %13, align 4
  %694 = load i32, i32* %39, align 4
  %695 = icmp sle i32 %693, %694
  br i1 %695, label %696, label %707

696:                                              ; preds = %692
  %697 = load i32, i32* %12, align 4
  %698 = mul nsw i32 %697, 20
  %699 = add nsw i32 21, %698
  %700 = load i32, i32* %13, align 4
  %701 = add nsw i32 %699, %700
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %702
  store i8 1, i8* %703, align 1
  br label %704

704:                                              ; preds = %696
  %705 = load i32, i32* %13, align 4
  %706 = add nsw i32 %705, 1
  store i32 %706, i32* %13, align 4
  br label %692, !llvm.loop !23

707:                                              ; preds = %692
  br label %708

708:                                              ; preds = %707
  %709 = load i32, i32* %12, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %12, align 4
  br label %550, !llvm.loop !24

711:                                              ; preds = %550
  store i32 21, i32* %15, align 4
  br label %712

712:                                              ; preds = %771, %711
  %713 = load i32, i32* %15, align 4
  %714 = icmp slt i32 %713, 400
  br i1 %714, label %715, label %774

715:                                              ; preds = %712
  %716 = load i32, i32* %15, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %717
  %719 = load i8, i8* %718, align 1
  %720 = zext i8 %719 to i32
  %721 = icmp ne i32 %720, 3
  br i1 %721, label %722, label %770

722:                                              ; preds = %715
  %723 = load i32, i32* %15, align 4
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %724
  %726 = load i8, i8* %725, align 1
  %727 = sext i8 %726 to i32
  %728 = icmp eq i32 %727, 1
  br i1 %728, label %729, label %770

729:                                              ; preds = %722
  store i32 0, i32* %14, align 4
  br label %730

730:                                              ; preds = %766, %729
  %731 = load i32, i32* %14, align 4
  %732 = icmp slt i32 %731, 4
  br i1 %732, label %733, label %769

733:                                              ; preds = %730
  %734 = load i32, i32* %15, align 4
  %735 = load i32, i32* %14, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %736
  %738 = load i32, i32* %737, align 4
  %739 = add nsw i32 %734, %738
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %740
  %742 = load i8, i8* %741, align 1
  %743 = zext i8 %742 to i32
  %744 = icmp ne i32 %743, 3
  br i1 %744, label %745, label %765

745:                                              ; preds = %733
  %746 = load i32, i32* %15, align 4
  %747 = load i32, i32* %14, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %748
  %750 = load i32, i32* %749, align 4
  %751 = add nsw i32 %746, %750
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %752
  %754 = load i8, i8* %753, align 1
  %755 = icmp ne i8 %754, 0
  br i1 %755, label %765, label %756

756:                                              ; preds = %745
  %757 = load i32, i32* %15, align 4
  %758 = load i32, i32* %14, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %759
  %761 = load i32, i32* %760, align 4
  %762 = add nsw i32 %757, %761
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %763
  store i8 2, i8* %764, align 1
  br label %765

765:                                              ; preds = %756, %745, %733
  br label %766

766:                                              ; preds = %765
  %767 = load i32, i32* %14, align 4
  %768 = add nsw i32 %767, 1
  store i32 %768, i32* %14, align 4
  br label %730, !llvm.loop !25

769:                                              ; preds = %730
  br label %770

770:                                              ; preds = %769, %722, %715
  br label %771

771:                                              ; preds = %770
  %772 = load i32, i32* %15, align 4
  %773 = add nsw i32 %772, 1
  store i32 %773, i32* %15, align 4
  br label %712, !llvm.loop !26

774:                                              ; preds = %712
  store i32 21, i32* %15, align 4
  br label %775

775:                                              ; preds = %837, %774
  %776 = load i32, i32* %15, align 4
  %777 = icmp slt i32 %776, 400
  br i1 %777, label %778, label %840

778:                                              ; preds = %775
  %779 = load i32, i32* %15, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %780
  %782 = load i8, i8* %781, align 1
  %783 = zext i8 %782 to i32
  %784 = icmp ne i32 %783, 3
  br i1 %784, label %785, label %836

785:                                              ; preds = %778
  %786 = load i32, i32* %15, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %787
  %789 = load i8, i8* %788, align 1
  %790 = sext i8 %789 to i32
  %791 = icmp eq i32 %790, 1
  br i1 %791, label %792, label %836

792:                                              ; preds = %785
  %793 = load i32, i32* %15, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %794
  %796 = load i8, i8* %795, align 1
  %797 = zext i8 %796 to i32
  %798 = load i32, i32* %23, align 4
  %799 = icmp eq i32 %797, %798
  br i1 %799, label %800, label %836

800:                                              ; preds = %792
  %801 = load i32, i32* %6, align 4
  %802 = load i32, i32* %15, align 4
  %803 = call i32 @are_neighbor_dragons(i32 %801, i32 %802)
  %804 = icmp ne i32 %803, 0
  br i1 %804, label %805, label %836

805:                                              ; preds = %800
  %806 = load i32, i32* %15, align 4
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %807
  %809 = load i8, i8* %808, align 1
  %810 = icmp ne i8 %809, 0
  br i1 %810, label %836, label %811

811:                                              ; preds = %805
  store i32 21, i32* %48, align 4
  br label %812

812:                                              ; preds = %832, %811
  %813 = load i32, i32* %48, align 4
  %814 = icmp slt i32 %813, 400
  br i1 %814, label %815, label %835

815:                                              ; preds = %812
  %816 = load i32, i32* %48, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %817
  %819 = load i8, i8* %818, align 1
  %820 = zext i8 %819 to i32
  %821 = icmp ne i32 %820, 3
  br i1 %821, label %822, label %831

822:                                              ; preds = %815
  %823 = load i32, i32* %48, align 4
  %824 = load i32, i32* %15, align 4
  %825 = call i32 @is_same_dragon(i32 %823, i32 %824)
  %826 = icmp ne i32 %825, 0
  br i1 %826, label %827, label %831

827:                                              ; preds = %822
  %828 = load i32, i32* %48, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %829
  store i8 2, i8* %830, align 1
  br label %831

831:                                              ; preds = %827, %822, %815
  br label %832

832:                                              ; preds = %831
  %833 = load i32, i32* %48, align 4
  %834 = add nsw i32 %833, 1
  store i32 %834, i32* %48, align 4
  br label %812, !llvm.loop !27

835:                                              ; preds = %812
  br label %836

836:                                              ; preds = %835, %805, %800, %792, %785, %778
  br label %837

837:                                              ; preds = %836
  %838 = load i32, i32* %15, align 4
  %839 = add nsw i32 %838, 1
  store i32 %839, i32* %15, align 4
  br label %775, !llvm.loop !28

840:                                              ; preds = %775
  store i32 1, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %841

841:                                              ; preds = %891, %840
  %842 = load i32, i32* %12, align 4
  %843 = load i32, i32* @board_size, align 4
  %844 = icmp slt i32 %842, %843
  br i1 %844, label %845, label %894

845:                                              ; preds = %841
  store i32 0, i32* %13, align 4
  br label %846

846:                                              ; preds = %887, %845
  %847 = load i32, i32* %13, align 4
  %848 = load i32, i32* @board_size, align 4
  %849 = icmp slt i32 %847, %848
  br i1 %849, label %850, label %890

850:                                              ; preds = %846
  %851 = load i32, i32* %12, align 4
  %852 = mul nsw i32 %851, 20
  %853 = add nsw i32 21, %852
  %854 = load i32, i32* %13, align 4
  %855 = add nsw i32 %853, %854
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %856
  %858 = load i8, i8* %857, align 1
  %859 = icmp ne i8 %858, 0
  br i1 %859, label %860, label %886

860:                                              ; preds = %850
  %861 = load i32, i32* %12, align 4
  %862 = mul nsw i32 %861, 20
  %863 = add nsw i32 21, %862
  %864 = load i32, i32* %13, align 4
  %865 = add nsw i32 %863, %864
  %866 = sext i32 %865 to i64
  %867 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %866
  %868 = load i8, i8* %867, align 1
  %869 = sext i8 %868 to i32
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %871, label %872

871:                                              ; preds = %860
  store i32 0, i32* %16, align 4
  br label %890

872:                                              ; preds = %860
  %873 = load i32, i32* %12, align 4
  %874 = mul nsw i32 %873, 20
  %875 = add nsw i32 21, %874
  %876 = load i32, i32* %13, align 4
  %877 = add nsw i32 %875, %876
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %878
  %880 = load i8, i8* %879, align 1
  %881 = sext i8 %880 to i32
  %882 = icmp eq i32 %881, 2
  br i1 %882, label %883, label %884

883:                                              ; preds = %872
  store i32 2, i32* %16, align 4
  br label %884

884:                                              ; preds = %883, %872
  br label %885

885:                                              ; preds = %884
  br label %886

886:                                              ; preds = %885, %850
  br label %887

887:                                              ; preds = %886
  %888 = load i32, i32* %13, align 4
  %889 = add nsw i32 %888, 1
  store i32 %889, i32* %13, align 4
  br label %846, !llvm.loop !29

890:                                              ; preds = %871, %846
  br label %891

891:                                              ; preds = %890
  %892 = load i32, i32* %12, align 4
  %893 = add nsw i32 %892, 1
  store i32 %893, i32* %12, align 4
  br label %841, !llvm.loop !30

894:                                              ; preds = %841
  %895 = load i32, i32* %16, align 4
  %896 = icmp ne i32 %895, 0
  br i1 %896, label %897, label %1255

897:                                              ; preds = %894
  store i32 21, i32* %15, align 4
  br label %898

898:                                              ; preds = %1251, %897
  %899 = load i32, i32* %15, align 4
  %900 = icmp slt i32 %899, 400
  br i1 %900, label %901, label %904

901:                                              ; preds = %898
  %902 = load i32, i32* %16, align 4
  %903 = icmp ne i32 %902, 0
  br label %904

904:                                              ; preds = %901, %898
  %905 = phi i1 [ false, %898 ], [ %903, %901 ]
  br i1 %905, label %906, label %1254

906:                                              ; preds = %904
  %907 = load i32, i32* %15, align 4
  %908 = sext i32 %907 to i64
  %909 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %908
  %910 = load i8, i8* %909, align 1
  %911 = zext i8 %910 to i32
  %912 = icmp ne i32 %911, 3
  br i1 %912, label %913, label %1250

913:                                              ; preds = %906
  %914 = load i32, i32* %15, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %915
  %917 = load i8, i8* %916, align 1
  %918 = sext i8 %917 to i32
  %919 = icmp ne i32 %918, 0
  br i1 %919, label %920, label %1250

920:                                              ; preds = %913
  %921 = load i32, i32* %15, align 4
  %922 = sub nsw i32 %921, 20
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %923
  %925 = load i8, i8* %924, align 1
  %926 = zext i8 %925 to i32
  %927 = icmp ne i32 %926, 3
  br i1 %927, label %928, label %1002

928:                                              ; preds = %920
  %929 = load i32, i32* %15, align 4
  %930 = sub nsw i32 %929, 20
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %931
  %933 = load i8, i8* %932, align 1
  %934 = zext i8 %933 to i32
  %935 = icmp eq i32 %934, 0
  br i1 %935, label %936, label %1002

936:                                              ; preds = %928
  %937 = load i32, i32* %15, align 4
  %938 = sub nsw i32 %937, 20
  %939 = sub nsw i32 %938, 20
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %940
  %942 = load i8, i8* %941, align 1
  %943 = zext i8 %942 to i32
  %944 = icmp ne i32 %943, 3
  br i1 %944, label %945, label %1002

945:                                              ; preds = %936
  %946 = load i32, i32* %15, align 4
  %947 = sub nsw i32 %946, 20
  %948 = sub nsw i32 %947, 20
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %949
  %951 = load i8, i8* %950, align 1
  %952 = zext i8 %951 to i32
  %953 = load i32, i32* %23, align 4
  %954 = icmp eq i32 %952, %953
  br i1 %954, label %955, label %1002

955:                                              ; preds = %945
  %956 = load i32, i32* %15, align 4
  %957 = sub nsw i32 %956, 20
  %958 = sub nsw i32 %957, 20
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %959
  %961 = load i8, i8* %960, align 1
  %962 = sext i8 %961 to i32
  %963 = icmp ne i32 %962, 1
  br i1 %963, label %964, label %1002

964:                                              ; preds = %955
  %965 = load i32, i32* %15, align 4
  %966 = sub nsw i32 %965, 20
  %967 = add nsw i32 %966, 1
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %968
  %970 = load i8, i8* %969, align 1
  %971 = zext i8 %970 to i32
  %972 = icmp ne i32 %971, 3
  br i1 %972, label %973, label %1002

973:                                              ; preds = %964
  %974 = load i32, i32* %15, align 4
  %975 = sub nsw i32 %974, 20
  %976 = add nsw i32 %975, 1
  %977 = sext i32 %976 to i64
  %978 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %977
  %979 = load i8, i8* %978, align 1
  %980 = zext i8 %979 to i32
  %981 = load i32, i32* %24, align 4
  %982 = icmp ne i32 %980, %981
  br i1 %982, label %983, label %1002

983:                                              ; preds = %973
  %984 = load i32, i32* %15, align 4
  %985 = sub nsw i32 %984, 20
  %986 = sub nsw i32 %985, 1
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %987
  %989 = load i8, i8* %988, align 1
  %990 = zext i8 %989 to i32
  %991 = icmp ne i32 %990, 3
  br i1 %991, label %992, label %1002

992:                                              ; preds = %983
  %993 = load i32, i32* %15, align 4
  %994 = sub nsw i32 %993, 20
  %995 = sub nsw i32 %994, 1
  %996 = sext i32 %995 to i64
  %997 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %996
  %998 = load i8, i8* %997, align 1
  %999 = zext i8 %998 to i32
  %1000 = load i32, i32* %24, align 4
  %1001 = icmp ne i32 %999, %1000
  br i1 %1001, label %1248, label %1002

1002:                                             ; preds = %992, %983, %973, %964, %955, %945, %936, %928, %920
  %1003 = load i32, i32* %15, align 4
  %1004 = add nsw i32 %1003, 20
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1005
  %1007 = load i8, i8* %1006, align 1
  %1008 = zext i8 %1007 to i32
  %1009 = icmp ne i32 %1008, 3
  br i1 %1009, label %1010, label %1084

1010:                                             ; preds = %1002
  %1011 = load i32, i32* %15, align 4
  %1012 = add nsw i32 %1011, 20
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1013
  %1015 = load i8, i8* %1014, align 1
  %1016 = zext i8 %1015 to i32
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1018, label %1084

1018:                                             ; preds = %1010
  %1019 = load i32, i32* %15, align 4
  %1020 = add nsw i32 %1019, 20
  %1021 = add nsw i32 %1020, 20
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1022
  %1024 = load i8, i8* %1023, align 1
  %1025 = zext i8 %1024 to i32
  %1026 = icmp ne i32 %1025, 3
  br i1 %1026, label %1027, label %1084

1027:                                             ; preds = %1018
  %1028 = load i32, i32* %15, align 4
  %1029 = add nsw i32 %1028, 20
  %1030 = add nsw i32 %1029, 20
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1031
  %1033 = load i8, i8* %1032, align 1
  %1034 = zext i8 %1033 to i32
  %1035 = load i32, i32* %23, align 4
  %1036 = icmp eq i32 %1034, %1035
  br i1 %1036, label %1037, label %1084

1037:                                             ; preds = %1027
  %1038 = load i32, i32* %15, align 4
  %1039 = add nsw i32 %1038, 20
  %1040 = add nsw i32 %1039, 20
  %1041 = sext i32 %1040 to i64
  %1042 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1041
  %1043 = load i8, i8* %1042, align 1
  %1044 = sext i8 %1043 to i32
  %1045 = icmp ne i32 %1044, 1
  br i1 %1045, label %1046, label %1084

1046:                                             ; preds = %1037
  %1047 = load i32, i32* %15, align 4
  %1048 = add nsw i32 %1047, 20
  %1049 = add nsw i32 %1048, 1
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1050
  %1052 = load i8, i8* %1051, align 1
  %1053 = zext i8 %1052 to i32
  %1054 = icmp ne i32 %1053, 3
  br i1 %1054, label %1055, label %1084

1055:                                             ; preds = %1046
  %1056 = load i32, i32* %15, align 4
  %1057 = add nsw i32 %1056, 20
  %1058 = add nsw i32 %1057, 1
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1059
  %1061 = load i8, i8* %1060, align 1
  %1062 = zext i8 %1061 to i32
  %1063 = load i32, i32* %24, align 4
  %1064 = icmp ne i32 %1062, %1063
  br i1 %1064, label %1065, label %1084

1065:                                             ; preds = %1055
  %1066 = load i32, i32* %15, align 4
  %1067 = add nsw i32 %1066, 20
  %1068 = sub nsw i32 %1067, 1
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1069
  %1071 = load i8, i8* %1070, align 1
  %1072 = zext i8 %1071 to i32
  %1073 = icmp ne i32 %1072, 3
  br i1 %1073, label %1074, label %1084

1074:                                             ; preds = %1065
  %1075 = load i32, i32* %15, align 4
  %1076 = add nsw i32 %1075, 20
  %1077 = sub nsw i32 %1076, 1
  %1078 = sext i32 %1077 to i64
  %1079 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1078
  %1080 = load i8, i8* %1079, align 1
  %1081 = zext i8 %1080 to i32
  %1082 = load i32, i32* %24, align 4
  %1083 = icmp ne i32 %1081, %1082
  br i1 %1083, label %1248, label %1084

1084:                                             ; preds = %1074, %1065, %1055, %1046, %1037, %1027, %1018, %1010, %1002
  %1085 = load i32, i32* %15, align 4
  %1086 = add nsw i32 %1085, 1
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1087
  %1089 = load i8, i8* %1088, align 1
  %1090 = zext i8 %1089 to i32
  %1091 = icmp ne i32 %1090, 3
  br i1 %1091, label %1092, label %1166

1092:                                             ; preds = %1084
  %1093 = load i32, i32* %15, align 4
  %1094 = add nsw i32 %1093, 1
  %1095 = sext i32 %1094 to i64
  %1096 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1095
  %1097 = load i8, i8* %1096, align 1
  %1098 = zext i8 %1097 to i32
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1166

1100:                                             ; preds = %1092
  %1101 = load i32, i32* %15, align 4
  %1102 = add nsw i32 %1101, 1
  %1103 = add nsw i32 %1102, 1
  %1104 = sext i32 %1103 to i64
  %1105 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1104
  %1106 = load i8, i8* %1105, align 1
  %1107 = zext i8 %1106 to i32
  %1108 = icmp ne i32 %1107, 3
  br i1 %1108, label %1109, label %1166

1109:                                             ; preds = %1100
  %1110 = load i32, i32* %15, align 4
  %1111 = add nsw i32 %1110, 1
  %1112 = add nsw i32 %1111, 1
  %1113 = sext i32 %1112 to i64
  %1114 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1113
  %1115 = load i8, i8* %1114, align 1
  %1116 = zext i8 %1115 to i32
  %1117 = load i32, i32* %23, align 4
  %1118 = icmp eq i32 %1116, %1117
  br i1 %1118, label %1119, label %1166

1119:                                             ; preds = %1109
  %1120 = load i32, i32* %15, align 4
  %1121 = add nsw i32 %1120, 1
  %1122 = add nsw i32 %1121, 1
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1123
  %1125 = load i8, i8* %1124, align 1
  %1126 = sext i8 %1125 to i32
  %1127 = icmp ne i32 %1126, 1
  br i1 %1127, label %1128, label %1166

1128:                                             ; preds = %1119
  %1129 = load i32, i32* %15, align 4
  %1130 = add nsw i32 %1129, 1
  %1131 = sub nsw i32 %1130, 20
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1132
  %1134 = load i8, i8* %1133, align 1
  %1135 = zext i8 %1134 to i32
  %1136 = icmp ne i32 %1135, 3
  br i1 %1136, label %1137, label %1166

1137:                                             ; preds = %1128
  %1138 = load i32, i32* %15, align 4
  %1139 = add nsw i32 %1138, 1
  %1140 = sub nsw i32 %1139, 20
  %1141 = sext i32 %1140 to i64
  %1142 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1141
  %1143 = load i8, i8* %1142, align 1
  %1144 = zext i8 %1143 to i32
  %1145 = load i32, i32* %24, align 4
  %1146 = icmp ne i32 %1144, %1145
  br i1 %1146, label %1147, label %1166

1147:                                             ; preds = %1137
  %1148 = load i32, i32* %15, align 4
  %1149 = add nsw i32 %1148, 1
  %1150 = add nsw i32 %1149, 20
  %1151 = sext i32 %1150 to i64
  %1152 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1151
  %1153 = load i8, i8* %1152, align 1
  %1154 = zext i8 %1153 to i32
  %1155 = icmp ne i32 %1154, 3
  br i1 %1155, label %1156, label %1166

1156:                                             ; preds = %1147
  %1157 = load i32, i32* %15, align 4
  %1158 = add nsw i32 %1157, 1
  %1159 = add nsw i32 %1158, 20
  %1160 = sext i32 %1159 to i64
  %1161 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1160
  %1162 = load i8, i8* %1161, align 1
  %1163 = zext i8 %1162 to i32
  %1164 = load i32, i32* %24, align 4
  %1165 = icmp ne i32 %1163, %1164
  br i1 %1165, label %1248, label %1166

1166:                                             ; preds = %1156, %1147, %1137, %1128, %1119, %1109, %1100, %1092, %1084
  %1167 = load i32, i32* %15, align 4
  %1168 = sub nsw i32 %1167, 1
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1169
  %1171 = load i8, i8* %1170, align 1
  %1172 = zext i8 %1171 to i32
  %1173 = icmp ne i32 %1172, 3
  br i1 %1173, label %1174, label %1249

1174:                                             ; preds = %1166
  %1175 = load i32, i32* %15, align 4
  %1176 = sub nsw i32 %1175, 1
  %1177 = sext i32 %1176 to i64
  %1178 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1177
  %1179 = load i8, i8* %1178, align 1
  %1180 = zext i8 %1179 to i32
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1182, label %1249

1182:                                             ; preds = %1174
  %1183 = load i32, i32* %15, align 4
  %1184 = sub nsw i32 %1183, 1
  %1185 = sub nsw i32 %1184, 1
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1186
  %1188 = load i8, i8* %1187, align 1
  %1189 = zext i8 %1188 to i32
  %1190 = icmp ne i32 %1189, 3
  br i1 %1190, label %1191, label %1249

1191:                                             ; preds = %1182
  %1192 = load i32, i32* %15, align 4
  %1193 = sub nsw i32 %1192, 1
  %1194 = sub nsw i32 %1193, 1
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1195
  %1197 = load i8, i8* %1196, align 1
  %1198 = zext i8 %1197 to i32
  %1199 = load i32, i32* %23, align 4
  %1200 = icmp eq i32 %1198, %1199
  br i1 %1200, label %1201, label %1249

1201:                                             ; preds = %1191
  %1202 = load i32, i32* %15, align 4
  %1203 = sub nsw i32 %1202, 1
  %1204 = sub nsw i32 %1203, 1
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1205
  %1207 = load i8, i8* %1206, align 1
  %1208 = sext i8 %1207 to i32
  %1209 = icmp ne i32 %1208, 1
  br i1 %1209, label %1210, label %1249

1210:                                             ; preds = %1201
  %1211 = load i32, i32* %15, align 4
  %1212 = sub nsw i32 %1211, 1
  %1213 = sub nsw i32 %1212, 20
  %1214 = sext i32 %1213 to i64
  %1215 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1214
  %1216 = load i8, i8* %1215, align 1
  %1217 = zext i8 %1216 to i32
  %1218 = icmp ne i32 %1217, 3
  br i1 %1218, label %1219, label %1249

1219:                                             ; preds = %1210
  %1220 = load i32, i32* %15, align 4
  %1221 = sub nsw i32 %1220, 1
  %1222 = sub nsw i32 %1221, 20
  %1223 = sext i32 %1222 to i64
  %1224 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1223
  %1225 = load i8, i8* %1224, align 1
  %1226 = zext i8 %1225 to i32
  %1227 = load i32, i32* %24, align 4
  %1228 = icmp ne i32 %1226, %1227
  br i1 %1228, label %1229, label %1249

1229:                                             ; preds = %1219
  %1230 = load i32, i32* %15, align 4
  %1231 = sub nsw i32 %1230, 1
  %1232 = add nsw i32 %1231, 20
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1233
  %1235 = load i8, i8* %1234, align 1
  %1236 = zext i8 %1235 to i32
  %1237 = icmp ne i32 %1236, 3
  br i1 %1237, label %1238, label %1249

1238:                                             ; preds = %1229
  %1239 = load i32, i32* %15, align 4
  %1240 = sub nsw i32 %1239, 1
  %1241 = add nsw i32 %1240, 20
  %1242 = sext i32 %1241 to i64
  %1243 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1242
  %1244 = load i8, i8* %1243, align 1
  %1245 = zext i8 %1244 to i32
  %1246 = load i32, i32* %24, align 4
  %1247 = icmp ne i32 %1245, %1246
  br i1 %1247, label %1248, label %1249

1248:                                             ; preds = %1238, %1156, %1074, %992
  store i32 0, i32* %16, align 4
  br label %1249

1249:                                             ; preds = %1248, %1238, %1229, %1219, %1210, %1201, %1191, %1182, %1174, %1166
  br label %1250

1250:                                             ; preds = %1249, %913, %906
  br label %1251

1251:                                             ; preds = %1250
  %1252 = load i32, i32* %15, align 4
  %1253 = add nsw i32 %1252, 1
  store i32 %1253, i32* %15, align 4
  br label %898, !llvm.loop !31

1254:                                             ; preds = %904
  br label %1255

1255:                                             ; preds = %1254, %894
  %1256 = load i32, i32* %8, align 4
  %1257 = icmp eq i32 %1256, 1
  br i1 %1257, label %1264, label %1258

1258:                                             ; preds = %1255
  %1259 = load i32, i32* %8, align 4
  %1260 = icmp eq i32 %1259, 2
  br i1 %1260, label %1261, label %1389

1261:                                             ; preds = %1258
  %1262 = load i32, i32* %16, align 4
  %1263 = icmp ne i32 %1262, 0
  br i1 %1263, label %1264, label %1389

1264:                                             ; preds = %1261, %1255
  call void @start_draw_board()
  store i32 0, i32* %12, align 4
  br label %1265

1265:                                             ; preds = %1385, %1264
  %1266 = load i32, i32* %12, align 4
  %1267 = load i32, i32* @board_size, align 4
  %1268 = icmp slt i32 %1266, %1267
  br i1 %1268, label %1269, label %1388

1269:                                             ; preds = %1265
  store i32 0, i32* %13, align 4
  br label %1270

1270:                                             ; preds = %1381, %1269
  %1271 = load i32, i32* %13, align 4
  %1272 = load i32, i32* @board_size, align 4
  %1273 = icmp slt i32 %1271, %1272
  br i1 %1273, label %1274, label %1384

1274:                                             ; preds = %1270
  %1275 = load i32, i32* %12, align 4
  %1276 = mul nsw i32 %1275, 20
  %1277 = add nsw i32 21, %1276
  %1278 = load i32, i32* %13, align 4
  %1279 = add nsw i32 %1277, %1278
  %1280 = sext i32 %1279 to i64
  %1281 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %1280
  %1282 = load i8, i8* %1281, align 1
  %1283 = icmp ne i8 %1282, 0
  br i1 %1283, label %1284, label %1311

1284:                                             ; preds = %1274
  %1285 = load i32, i32* %12, align 4
  %1286 = mul nsw i32 %1285, 20
  %1287 = add nsw i32 21, %1286
  %1288 = load i32, i32* %13, align 4
  %1289 = add nsw i32 %1287, %1288
  %1290 = sext i32 %1289 to i64
  %1291 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1290
  %1292 = load i8, i8* %1291, align 1
  %1293 = sext i8 %1292 to i32
  %1294 = icmp eq i32 %1293, 1
  br i1 %1294, label %1295, label %1296

1295:                                             ; preds = %1284
  store i32 1, i32* %49, align 4
  br label %1310

1296:                                             ; preds = %1284
  %1297 = load i32, i32* %12, align 4
  %1298 = mul nsw i32 %1297, 20
  %1299 = add nsw i32 21, %1298
  %1300 = load i32, i32* %13, align 4
  %1301 = add nsw i32 %1299, %1300
  %1302 = sext i32 %1301 to i64
  %1303 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1302
  %1304 = load i8, i8* %1303, align 1
  %1305 = sext i8 %1304 to i32
  %1306 = icmp eq i32 %1305, 2
  br i1 %1306, label %1307, label %1308

1307:                                             ; preds = %1296
  store i32 3, i32* %49, align 4
  br label %1309

1308:                                             ; preds = %1296
  store i32 2, i32* %49, align 4
  br label %1309

1309:                                             ; preds = %1308, %1307
  br label %1310

1310:                                             ; preds = %1309, %1295
  br label %1338

1311:                                             ; preds = %1274
  %1312 = load i32, i32* %12, align 4
  %1313 = mul nsw i32 %1312, 20
  %1314 = add nsw i32 21, %1313
  %1315 = load i32, i32* %13, align 4
  %1316 = add nsw i32 %1314, %1315
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1317
  %1319 = load i8, i8* %1318, align 1
  %1320 = sext i8 %1319 to i32
  %1321 = icmp eq i32 %1320, 1
  br i1 %1321, label %1322, label %1323

1322:                                             ; preds = %1311
  store i32 4, i32* %49, align 4
  br label %1337

1323:                                             ; preds = %1311
  %1324 = load i32, i32* %12, align 4
  %1325 = mul nsw i32 %1324, 20
  %1326 = add nsw i32 21, %1325
  %1327 = load i32, i32* %13, align 4
  %1328 = add nsw i32 %1326, %1327
  %1329 = sext i32 %1328 to i64
  %1330 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1329
  %1331 = load i8, i8* %1330, align 1
  %1332 = sext i8 %1331 to i32
  %1333 = icmp eq i32 %1332, 2
  br i1 %1333, label %1334, label %1335

1334:                                             ; preds = %1323
  store i32 6, i32* %49, align 4
  br label %1336

1335:                                             ; preds = %1323
  store i32 0, i32* %49, align 4
  br label %1336

1336:                                             ; preds = %1335, %1334
  br label %1337

1337:                                             ; preds = %1336, %1322
  br label %1338

1338:                                             ; preds = %1337, %1310
  %1339 = load i32, i32* %12, align 4
  %1340 = mul nsw i32 %1339, 20
  %1341 = add nsw i32 21, %1340
  %1342 = load i32, i32* %13, align 4
  %1343 = add nsw i32 %1341, %1342
  %1344 = sext i32 %1343 to i64
  %1345 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1344
  %1346 = load i8, i8* %1345, align 1
  %1347 = zext i8 %1346 to i32
  %1348 = icmp eq i32 %1347, 2
  br i1 %1348, label %1349, label %1350

1349:                                             ; preds = %1338
  store i32 88, i32* %50, align 4
  br label %1376

1350:                                             ; preds = %1338
  %1351 = load i32, i32* %12, align 4
  %1352 = mul nsw i32 %1351, 20
  %1353 = add nsw i32 21, %1352
  %1354 = load i32, i32* %13, align 4
  %1355 = add nsw i32 %1353, %1354
  %1356 = sext i32 %1355 to i64
  %1357 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1356
  %1358 = load i8, i8* %1357, align 1
  %1359 = zext i8 %1358 to i32
  %1360 = icmp eq i32 %1359, 1
  br i1 %1360, label %1361, label %1362

1361:                                             ; preds = %1350
  store i32 79, i32* %50, align 4
  br label %1375

1362:                                             ; preds = %1350
  %1363 = load i32, i32* %12, align 4
  %1364 = mul nsw i32 %1363, 20
  %1365 = add nsw i32 21, %1364
  %1366 = load i32, i32* %13, align 4
  %1367 = add nsw i32 %1365, %1366
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1368
  %1370 = load i8, i8* %1369, align 1
  %1371 = icmp ne i8 %1370, 0
  br i1 %1371, label %1372, label %1373

1372:                                             ; preds = %1362
  store i32 42, i32* %50, align 4
  br label %1374

1373:                                             ; preds = %1362
  store i32 46, i32* %50, align 4
  br label %1374

1374:                                             ; preds = %1373, %1372
  br label %1375

1375:                                             ; preds = %1374, %1361
  br label %1376

1376:                                             ; preds = %1375, %1349
  %1377 = load i32, i32* %12, align 4
  %1378 = load i32, i32* %13, align 4
  %1379 = load i32, i32* %50, align 4
  %1380 = load i32, i32* %49, align 4
  call void @draw_color_char(i32 %1377, i32 %1378, i32 %1379, i32 %1380)
  br label %1381

1381:                                             ; preds = %1376
  %1382 = load i32, i32* %13, align 4
  %1383 = add nsw i32 %1382, 1
  store i32 %1383, i32* %13, align 4
  br label %1270, !llvm.loop !32

1384:                                             ; preds = %1270
  br label %1385

1385:                                             ; preds = %1384
  %1386 = load i32, i32* %12, align 4
  %1387 = add nsw i32 %1386, 1
  store i32 %1387, i32* %12, align 4
  br label %1265, !llvm.loop !33

1388:                                             ; preds = %1265
  call void @end_draw_board()
  br label %1389

1389:                                             ; preds = %1388, %1261, %1258
  %1390 = load i32, i32* %7, align 4
  %1391 = icmp ne i32 %1390, 0
  br i1 %1391, label %1416, label %1392

1392:                                             ; preds = %1389
  %1393 = load i32, i32* %16, align 4
  %1394 = icmp ne i32 %1393, 0
  br i1 %1394, label %1395, label %1416

1395:                                             ; preds = %1392
  %1396 = load i32, i32* @surround_pointer, align 4
  %1397 = icmp slt i32 %1396, 10
  br i1 %1397, label %1398, label %1416

1398:                                             ; preds = %1395
  %1399 = load i32, i32* @surround_pointer, align 4
  %1400 = sext i32 %1399 to i64
  %1401 = getelementptr inbounds [10 x %struct.surround_data], [10 x %struct.surround_data]* @surroundings, i64 0, i64 %1400
  %1402 = getelementptr inbounds %struct.surround_data, %struct.surround_data* %1401, i32 0, i32 1
  %1403 = getelementptr inbounds [400 x i8], [400 x i8]* %1402, i64 0, i64 0
  %1404 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1403, i8* align 16 %1404, i64 400, i1 false)
  %1405 = load i32, i32* %6, align 4
  %1406 = sext i32 %1405 to i64
  %1407 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1406
  %1408 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1407, i32 0, i32 1
  %1409 = load i32, i32* %1408, align 4
  %1410 = load i32, i32* @surround_pointer, align 4
  %1411 = sext i32 %1410 to i64
  %1412 = getelementptr inbounds [10 x %struct.surround_data], [10 x %struct.surround_data]* @surroundings, i64 0, i64 %1411
  %1413 = getelementptr inbounds %struct.surround_data, %struct.surround_data* %1412, i32 0, i32 0
  store i32 %1409, i32* %1413, align 4
  %1414 = load i32, i32* @surround_pointer, align 4
  %1415 = add nsw i32 %1414, 1
  store i32 %1415, i32* @surround_pointer, align 4
  br label %1416

1416:                                             ; preds = %1398, %1395, %1392, %1389
  %1417 = load i32*, i32** %9, align 8
  %1418 = icmp ne i32* %1417, null
  br i1 %1418, label %1419, label %1447

1419:                                             ; preds = %1416
  %1420 = load i32*, i32** %9, align 8
  store i32 0, i32* %1420, align 4
  store i32 21, i32* %51, align 4
  br label %1421

1421:                                             ; preds = %1443, %1419
  %1422 = load i32, i32* %51, align 4
  %1423 = icmp slt i32 %1422, 400
  br i1 %1423, label %1424, label %1446

1424:                                             ; preds = %1421
  %1425 = load i32, i32* %51, align 4
  %1426 = sext i32 %1425 to i64
  %1427 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1426
  %1428 = load i8, i8* %1427, align 1
  %1429 = zext i8 %1428 to i32
  %1430 = icmp ne i32 %1429, 3
  br i1 %1430, label %1431, label %1442

1431:                                             ; preds = %1424
  %1432 = load i32, i32* %51, align 4
  %1433 = sext i32 %1432 to i64
  %1434 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %1433
  %1435 = load i8, i8* %1434, align 1
  %1436 = sext i8 %1435 to i32
  %1437 = icmp eq i32 %1436, 1
  br i1 %1437, label %1438, label %1442

1438:                                             ; preds = %1431
  %1439 = load i32*, i32** %9, align 8
  %1440 = load i32, i32* %1439, align 4
  %1441 = add nsw i32 %1440, 1
  store i32 %1441, i32* %1439, align 4
  br label %1442

1442:                                             ; preds = %1438, %1431, %1424
  br label %1443

1443:                                             ; preds = %1442
  %1444 = load i32, i32* %51, align 4
  %1445 = add nsw i32 %1444, 1
  store i32 %1445, i32* %51, align 4
  br label %1421, !llvm.loop !34

1446:                                             ; preds = %1421
  br label %1447

1447:                                             ; preds = %1446, %1416
  %1448 = load i32, i32* %16, align 4
  store i32 %1448, i32* %5, align 4
  br label %1449

1449:                                             ; preds = %1447, %103
  %1450 = load i32, i32* %5, align 4
  ret i32 %1450
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_same_dragon(i32, i32) #2

declare dso_local void @mark_string(i32, i8*, i8 signext) #2

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.ceil.f64(double) #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.floor.f64(double) #3

declare dso_local i32 @are_neighbor_dragons(i32, i32) #2

declare dso_local void @start_draw_board() #2

declare dso_local void @draw_color_char(i32, i32, i32, i32) #2

declare dso_local void @end_draw_board() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_surrounded(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %3, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %10, i32 0, i32 15
  %12 = load i32, i32* %11, align 4
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @does_surround(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %6, i64 %12
  %14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @compute_surroundings(i32 %19, i32 %20, i32 0, i32* null)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %17
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_surround_data() #0 {
  store i32 0, i32* @surround_pointer, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @surround_map(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @surround_pointer, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [10 x %struct.surround_data], [10 x %struct.surround_data]* @surroundings, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.surround_data, %struct.surround_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %16, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %11
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [10 x %struct.surround_data], [10 x %struct.surround_data]* @surroundings, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.surround_data, %struct.surround_data* %26, i32 0, i32 1
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %7, !llvm.loop !35

37:                                               ; preds = %7
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %23
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }

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
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
