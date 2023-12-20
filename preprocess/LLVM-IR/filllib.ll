; ModuleID = 'filllib.c'
source_filename = "filllib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@board = external dso_local global [421 x i8], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@delta = external dso_local global [8 x i32], align 16
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"Filllib: Considering move at %1m.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Filllib: Tactically safe.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Filllib: Safety confirmed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Filllib: Safety not confirmed, but %1m defends.\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Filllib: Safety not confirmed, discarded.\0A\00", align 1
@verbose = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Warning: Blunder detected in fill_liberty().\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"fill_liberty\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"Filllib: Legal but not safe, looking for backfilling move.\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Filllib: Backfilling move at %1m.\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Filllib: Was illegal, discarded.\0A\00", align 1
@.str.10 = private unnamed_addr constant [52 x i8] c"Filllib: Not tactically safe, but captures stones.\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Filllib: Illegal, looking for back-capture.\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Filllib: Found at %1m.\0A\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"Filllib: Nothing found, looking for ko back-capture.\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"Filllib: Nothing found, looking for threat to back-capture.\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Filllib: No move found.\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"find_backfilling_move\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"filllib.c\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"acode != 0 && apos > 0\00", align 1
@libs = internal global [241 x i32] zeroinitializer, align 16
@adjs = internal global [160 x i32] zeroinitializer, align 16
@stackp = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"defense_point != ((void*)0)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fill_liberty(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [400 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [2 x i32], align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 3, %20
  store i32 %21, i32* %8, align 4
  %22 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 0
  %23 = bitcast i32* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %23, i8 0, i64 1600, i1 false)
  store i32 21, i32* %7, align 4
  br label %24

24:                                               ; preds = %163, %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 400
  br i1 %26, label %27, label %166

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %42, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %163

42:                                               ; preds = %34, %27
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %50, i64 %56
  %58 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %62

61:                                               ; preds = %49, %42
  br label %163

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %65, i32 0, i32 16
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %103

69:                                               ; preds = %62
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %99, %69
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %102

73:                                               ; preds = %70
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %74, %78
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %73
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = sub nsw i32 3, %91
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %86, %73
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %70, !llvm.loop !4

102:                                              ; preds = %70
  br label %103

103:                                              ; preds = %102, %62
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %106, i32 0, i32 16
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %162

110:                                              ; preds = %103
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %158, %110
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %112, 12
  br i1 %113, label %114, label %161

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = srem i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp sge i32 %120, 8
  br i1 %121, label %122, label %135

122:                                              ; preds = %114
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %158

132:                                              ; preds = %122
  %133 = load i32, i32* %12, align 4
  %134 = mul nsw i32 %133, 2
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %132, %114
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %135
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %150, %151
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = or i32 %155, %149
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %144, %135
  br label %158

158:                                              ; preds = %157, %131
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %111, !llvm.loop !6

161:                                              ; preds = %111
  br label %162

162:                                              ; preds = %161, %103
  br label %163

163:                                              ; preds = %162, %61, %41
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  br label %24, !llvm.loop !7

166:                                              ; preds = %24
  store i32 21, i32* %7, align 4
  br label %167

167:                                              ; preds = %576, %166
  %168 = load i32, i32* %7, align 4
  %169 = icmp slt i32 %168, 400
  br i1 %169, label %170, label %579

170:                                              ; preds = %167
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %170
  br label %576

178:                                              ; preds = %170
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 3
  br i1 %183, label %184, label %185

184:                                              ; preds = %178
  br label %576

185:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %186

186:                                              ; preds = %207, %185
  %187 = load i32, i32* %6, align 4
  %188 = icmp slt i32 %187, 4
  br i1 %188, label %189, label %210

189:                                              ; preds = %186
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %15, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp ne i32 %200, 3
  br i1 %201, label %202, label %206

202:                                              ; preds = %189
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %203, %204
  call void @analyze_neighbor(i32 %205, i32* %14, i32* %13)
  br label %206

206:                                              ; preds = %202, %189
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %6, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %6, align 4
  br label %186, !llvm.loop !8

210:                                              ; preds = %186
  %211 = load i32, i32* %13, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* %14, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %213, %210
  br label %576

217:                                              ; preds = %213
  %218 = load i32, i32* @debug, align 4
  %219 = and i32 %218, 16384
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %222, label %221

221:                                              ; preds = %217
  br label %225

222:                                              ; preds = %217
  %223 = load i32, i32* %7, align 4
  %224 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %223)
  br label %225

225:                                              ; preds = %222, %221
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* %5, align 4
  %228 = call i32 @safe_move(i32 %226, i32 %227)
  %229 = icmp eq i32 %228, 5
  br i1 %229, label %230, label %280

230:                                              ; preds = %225
  %231 = load i32, i32* @debug, align 4
  %232 = and i32 %231, 16384
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  br label %237

235:                                              ; preds = %230
  %236 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %237

237:                                              ; preds = %235, %234
  %238 = load i32, i32* %7, align 4
  %239 = load i32, i32* %5, align 4
  %240 = call i32 @filllib_confirm_safety(i32 %238, i32 %239, i32* %9)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %237
  %243 = load i32, i32* @debug, align 4
  %244 = and i32 %243, 16384
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  br label %249

247:                                              ; preds = %242
  %248 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %249

249:                                              ; preds = %247, %246
  %250 = load i32, i32* %7, align 4
  %251 = load i32*, i32** %4, align 8
  store i32 %250, i32* %251, align 4
  store i32 1, i32* %3, align 4
  br label %587

252:                                              ; preds = %237
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %266

255:                                              ; preds = %252
  %256 = load i32, i32* @debug, align 4
  %257 = and i32 %256, 16384
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %260, label %259

259:                                              ; preds = %255
  br label %263

260:                                              ; preds = %255
  %261 = load i32, i32* %9, align 4
  %262 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %260, %259
  %264 = load i32, i32* %9, align 4
  %265 = load i32*, i32** %4, align 8
  store i32 %264, i32* %265, align 4
  store i32 1, i32* %3, align 4
  br label %587

266:                                              ; preds = %252
  %267 = load i32, i32* @debug, align 4
  %268 = and i32 %267, 16384
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %266
  br label %273

271:                                              ; preds = %266
  %272 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %273

273:                                              ; preds = %271, %270
  %274 = load i32, i32* @verbose, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %277, label %276

276:                                              ; preds = %273
  br label %279

277:                                              ; preds = %273
  %278 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %279

279:                                              ; preds = %277, %276
  br label %576

280:                                              ; preds = %225
  %281 = load i32, i32* %7, align 4
  %282 = load i32, i32* %5, align 4
  %283 = call i32 @trymove(i32 %281, i32 %282, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 0, i32 0, i32 0)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %367

285:                                              ; preds = %280
  call void @popgo()
  %286 = load i32, i32* @debug, align 4
  %287 = and i32 %286, 16384
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %290, label %289

289:                                              ; preds = %285
  br label %292

290:                                              ; preds = %285
  %291 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.7, i64 0, i64 0))
  br label %292

292:                                              ; preds = %290, %289
  %293 = load i32, i32* %7, align 4
  %294 = load i32, i32* %5, align 4
  %295 = load i32*, i32** %4, align 8
  %296 = call i32 @find_backfilling_move(i32 %293, i32 %294, i32* %295)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %337

298:                                              ; preds = %292
  %299 = load i32, i32* @debug, align 4
  %300 = and i32 %299, 16384
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %298
  br label %307

303:                                              ; preds = %298
  %304 = load i32*, i32** %4, align 8
  %305 = load i32, i32* %304, align 4
  %306 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i32 %305)
  br label %307

307:                                              ; preds = %303, %302
  %308 = load i32*, i32** %4, align 8
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %5, align 4
  %311 = call i32 @is_legal(i32 %309, i32 %310)
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %322, label %313

313:                                              ; preds = %307
  %314 = load i32, i32* @debug, align 4
  %315 = and i32 %314, 16384
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  br label %320

318:                                              ; preds = %313
  %319 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %320

320:                                              ; preds = %318, %317
  %321 = load i32*, i32** %4, align 8
  store i32 0, i32* %321, align 4
  br label %576

322:                                              ; preds = %307
  %323 = load i32*, i32** %4, align 8
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %5, align 4
  %326 = call i32 @filllib_confirm_safety(i32 %324, i32 %325, i32* %9)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %336, label %328

328:                                              ; preds = %322
  %329 = load i32, i32* @debug, align 4
  %330 = and i32 %329, 16384
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %333, label %332

332:                                              ; preds = %328
  br label %335

333:                                              ; preds = %328
  %334 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %335

335:                                              ; preds = %333, %332
  br label %576

336:                                              ; preds = %322
  store i32 1, i32* %3, align 4
  br label %587

337:                                              ; preds = %292
  %338 = load i32, i32* %7, align 4
  %339 = load i32, i32* %5, align 4
  %340 = call i32 @does_capture_something(i32 %338, i32 %339)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %365

342:                                              ; preds = %337
  %343 = load i32, i32* @debug, align 4
  %344 = and i32 %343, 16384
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %347, label %346

346:                                              ; preds = %342
  br label %349

347:                                              ; preds = %342
  %348 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.10, i64 0, i64 0))
  br label %349

349:                                              ; preds = %347, %346
  %350 = load i32, i32* %7, align 4
  %351 = load i32, i32* %5, align 4
  %352 = call i32 @filllib_confirm_safety(i32 %350, i32 %351, i32* %9)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %362, label %354

354:                                              ; preds = %349
  %355 = load i32, i32* @debug, align 4
  %356 = and i32 %355, 16384
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %359, label %358

358:                                              ; preds = %354
  br label %361

359:                                              ; preds = %354
  %360 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  br label %361

361:                                              ; preds = %359, %358
  br label %576

362:                                              ; preds = %349
  %363 = load i32, i32* %7, align 4
  %364 = load i32*, i32** %4, align 8
  store i32 %363, i32* %364, align 4
  store i32 1, i32* %3, align 4
  br label %587

365:                                              ; preds = %337
  br label %366

366:                                              ; preds = %365
  br label %575

367:                                              ; preds = %280
  %368 = load i32, i32* @debug, align 4
  %369 = and i32 %368, 16384
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %372, label %371

371:                                              ; preds = %367
  br label %374

372:                                              ; preds = %367
  %373 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  br label %374

374:                                              ; preds = %372, %371
  store i32 0, i32* %6, align 4
  br label %375

375:                                              ; preds = %422, %374
  %376 = load i32, i32* %6, align 4
  %377 = icmp slt i32 %376, 4
  br i1 %377, label %378, label %425

378:                                              ; preds = %375
  %379 = load i32, i32* %6, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %380
  %382 = load i32, i32* %381, align 4
  store i32 %382, i32* %16, align 4
  %383 = load i32, i32* %7, align 4
  %384 = load i32, i32* %16, align 4
  %385 = add nsw i32 %383, %384
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %386
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i32
  %390 = load i32, i32* %8, align 4
  %391 = icmp eq i32 %389, %390
  br i1 %391, label %392, label %421

392:                                              ; preds = %378
  %393 = load i32, i32* %7, align 4
  %394 = load i32, i32* %16, align 4
  %395 = add nsw i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %396
  %398 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %397, i32 0, i32 16
  %399 = getelementptr inbounds [10 x i32], [10 x i32]* %398, i64 0, i64 0
  %400 = load i32, i32* %399, align 4
  %401 = icmp eq i32 %400, 5
  br i1 %401, label %402, label %421

402:                                              ; preds = %392
  %403 = load i32, i32* %7, align 4
  %404 = load i32, i32* %16, align 4
  %405 = add nsw i32 %403, %404
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %406
  %408 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %407, i32 0, i32 15
  %409 = getelementptr inbounds [10 x i32], [10 x i32]* %408, i64 0, i64 0
  %410 = load i32, i32* %409, align 4
  %411 = load i32*, i32** %4, align 8
  store i32 %410, i32* %411, align 4
  %412 = load i32, i32* @debug, align 4
  %413 = and i32 %412, 16384
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %416, label %415

415:                                              ; preds = %402
  br label %420

416:                                              ; preds = %402
  %417 = load i32*, i32** %4, align 8
  %418 = load i32, i32* %417, align 4
  %419 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %418)
  br label %420

420:                                              ; preds = %416, %415
  store i32 1, i32* %3, align 4
  br label %587

421:                                              ; preds = %392, %378
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %6, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %6, align 4
  br label %375, !llvm.loop !9

425:                                              ; preds = %375
  %426 = load i32, i32* @debug, align 4
  %427 = and i32 %426, 16384
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %430, label %429

429:                                              ; preds = %425
  br label %432

430:                                              ; preds = %425
  %431 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  br label %432

432:                                              ; preds = %430, %429
  store i32 0, i32* %6, align 4
  br label %433

433:                                              ; preds = %492, %432
  %434 = load i32, i32* %6, align 4
  %435 = icmp slt i32 %434, 4
  br i1 %435, label %436, label %495

436:                                              ; preds = %433
  %437 = load i32, i32* %6, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %438
  %440 = load i32, i32* %439, align 4
  store i32 %440, i32* %17, align 4
  %441 = load i32, i32* %7, align 4
  %442 = load i32, i32* %17, align 4
  %443 = add nsw i32 %441, %442
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %444
  %446 = load i8, i8* %445, align 1
  %447 = zext i8 %446 to i32
  %448 = load i32, i32* %8, align 4
  %449 = icmp eq i32 %447, %448
  br i1 %449, label %450, label %491

450:                                              ; preds = %436
  %451 = load i32, i32* %7, align 4
  %452 = load i32, i32* %17, align 4
  %453 = add nsw i32 %451, %452
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %454
  %456 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %455, i32 0, i32 16
  %457 = getelementptr inbounds [10 x i32], [10 x i32]* %456, i64 0, i64 0
  %458 = load i32, i32* %457, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %491

460:                                              ; preds = %450
  %461 = load i32, i32* %7, align 4
  %462 = load i32, i32* %17, align 4
  %463 = add nsw i32 %461, %462
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %464
  %466 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %465, i32 0, i32 15
  %467 = getelementptr inbounds [10 x i32], [10 x i32]* %466, i64 0, i64 0
  %468 = load i32, i32* %467, align 4
  %469 = load i32, i32* %5, align 4
  %470 = call i32 @is_legal(i32 %468, i32 %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %491

472:                                              ; preds = %460
  %473 = load i32, i32* %7, align 4
  %474 = load i32, i32* %17, align 4
  %475 = add nsw i32 %473, %474
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %476
  %478 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %477, i32 0, i32 15
  %479 = getelementptr inbounds [10 x i32], [10 x i32]* %478, i64 0, i64 0
  %480 = load i32, i32* %479, align 4
  %481 = load i32*, i32** %4, align 8
  store i32 %480, i32* %481, align 4
  %482 = load i32, i32* @debug, align 4
  %483 = and i32 %482, 16384
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %486, label %485

485:                                              ; preds = %472
  br label %490

486:                                              ; preds = %472
  %487 = load i32*, i32** %4, align 8
  %488 = load i32, i32* %487, align 4
  %489 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %488)
  br label %490

490:                                              ; preds = %486, %485
  store i32 1, i32* %3, align 4
  br label %587

491:                                              ; preds = %460, %450, %436
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %6, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %6, align 4
  br label %433, !llvm.loop !10

495:                                              ; preds = %433
  %496 = load i32, i32* @debug, align 4
  %497 = and i32 %496, 16384
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %500, label %499

499:                                              ; preds = %495
  br label %502

500:                                              ; preds = %495
  %501 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0))
  br label %502

502:                                              ; preds = %500, %499
  store i32 0, i32* %6, align 4
  br label %503

503:                                              ; preds = %571, %502
  %504 = load i32, i32* %6, align 4
  %505 = icmp slt i32 %504, 4
  br i1 %505, label %506, label %574

506:                                              ; preds = %503
  %507 = load i32, i32* %6, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %508
  %510 = load i32, i32* %509, align 4
  store i32 %510, i32* %18, align 4
  %511 = load i32, i32* %7, align 4
  %512 = load i32, i32* %18, align 4
  %513 = add nsw i32 %511, %512
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %514
  %516 = load i8, i8* %515, align 1
  %517 = zext i8 %516 to i32
  %518 = load i32, i32* %8, align 4
  %519 = icmp eq i32 %517, %518
  br i1 %519, label %520, label %570

520:                                              ; preds = %506
  %521 = load i32, i32* %7, align 4
  %522 = load i32, i32* %18, align 4
  %523 = add nsw i32 %521, %522
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %524
  %526 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %525, i32 0, i32 16
  %527 = getelementptr inbounds [10 x i32], [10 x i32]* %526, i64 0, i64 0
  %528 = load i32, i32* %527, align 4
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %570

530:                                              ; preds = %520
  %531 = load i32, i32* %7, align 4
  %532 = load i32, i32* %18, align 4
  %533 = add nsw i32 %531, %532
  %534 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %535 = call i32 @findlib(i32 %533, i32 2, i32* %534)
  %536 = icmp sgt i32 %535, 1
  br i1 %536, label %537, label %569

537:                                              ; preds = %530
  %538 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %539 = load i32, i32* %538, align 4
  %540 = load i32, i32* %5, align 4
  %541 = call i32 @is_legal(i32 %539, i32 %540)
  %542 = icmp ne i32 %541, 0
  br i1 %542, label %543, label %547

543:                                              ; preds = %537
  %544 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 0
  %545 = load i32, i32* %544, align 4
  %546 = load i32*, i32** %4, align 8
  store i32 %545, i32* %546, align 4
  br label %559

547:                                              ; preds = %537
  %548 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* %5, align 4
  %551 = call i32 @is_legal(i32 %549, i32 %550)
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %557

553:                                              ; preds = %547
  %554 = getelementptr inbounds [2 x i32], [2 x i32]* %19, i64 0, i64 1
  %555 = load i32, i32* %554, align 4
  %556 = load i32*, i32** %4, align 8
  store i32 %555, i32* %556, align 4
  br label %558

557:                                              ; preds = %547
  br label %571

558:                                              ; preds = %553
  br label %559

559:                                              ; preds = %558, %543
  %560 = load i32, i32* @debug, align 4
  %561 = and i32 %560, 16384
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %564, label %563

563:                                              ; preds = %559
  br label %568

564:                                              ; preds = %559
  %565 = load i32*, i32** %4, align 8
  %566 = load i32, i32* %565, align 4
  %567 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0), i32 %566)
  br label %568

568:                                              ; preds = %564, %563
  store i32 1, i32* %3, align 4
  br label %587

569:                                              ; preds = %530
  br label %570

570:                                              ; preds = %569, %520, %506
  br label %571

571:                                              ; preds = %570, %557
  %572 = load i32, i32* %6, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %6, align 4
  br label %503, !llvm.loop !11

574:                                              ; preds = %503
  br label %575

575:                                              ; preds = %574, %366
  br label %576

576:                                              ; preds = %575, %361, %335, %320, %279, %216, %184, %177
  %577 = load i32, i32* %7, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %7, align 4
  br label %167, !llvm.loop !12

579:                                              ; preds = %167
  %580 = load i32, i32* @debug, align 4
  %581 = and i32 %580, 16384
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %584, label %583

583:                                              ; preds = %579
  br label %586

584:                                              ; preds = %579
  %585 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  br label %586

586:                                              ; preds = %584, %583
  store i32 0, i32* %3, align 4
  br label %587

587:                                              ; preds = %586, %568, %490, %420, %362, %336, %263, %249
  %588 = load i32, i32* %3, align 4
  ret i32 %588
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_neighbor(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %119 [
    i32 0, label %12
    i32 2, label %41
    i32 1, label %80
  ]

12:                                               ; preds = %3
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @living_neighbor(i32 %17, i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @safe_move(i32 %21, i32 1)
  %23 = icmp ne i32 %22, 5
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %20, %16, %12
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @living_neighbor(i32 %31, i32 1)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @safe_move(i32 %35, i32 2)
  %37 = icmp ne i32 %36, 5
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %34, %30, %26
  br label %119

41:                                               ; preds = %3
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %41
  %49 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %49, i64 %55
  %57 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 5
  br i1 %59, label %60, label %79

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %63, i32 0, i32 16
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %74, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %70, i32 0, i32 16
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %76

74:                                               ; preds = %67, %60
  %75 = load i32*, i32** %5, align 8
  store i32 1, i32* %75, align 4
  br label %78

76:                                               ; preds = %67
  %77 = load i32*, i32** %6, align 8
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %79

79:                                               ; preds = %78, %48, %41
  br label %119

80:                                               ; preds = %3
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %118, label %87

87:                                               ; preds = %80
  %88 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %88, i64 %94
  %96 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 5
  br i1 %98, label %99, label %118

99:                                               ; preds = %87
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %102, i32 0, i32 16
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %113, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %109, i32 0, i32 16
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %115

113:                                              ; preds = %106, %99
  %114 = load i32*, i32** %6, align 8
  store i32 1, i32* %114, align 4
  br label %117

115:                                              ; preds = %106
  %116 = load i32*, i32** %5, align 8
  store i32 1, i32* %116, align 4
  br label %117

117:                                              ; preds = %115, %113
  br label %118

118:                                              ; preds = %117, %87, %80
  br label %119

119:                                              ; preds = %3, %118, %79, %40
  ret void
}

declare dso_local i32 @gprintf(i8*, ...) #2

declare dso_local i32 @safe_move(i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filllib_confirm_safety(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @stackp, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %17

16:                                               ; preds = %3
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 504, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 -1, i32 -1)
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %22

21:                                               ; preds = %17
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 505, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0), i32 -1, i32 -1)
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32*, i32** %7, align 8
  store i32 0, i32* %23, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %48, %22
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %28, %32
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %41, %45
  store i32 %46, i32* %9, align 4
  br label %51

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %24, !llvm.loop !13

51:                                               ; preds = %40, %24
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %51
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %88, %54
  %56 = load i32, i32* %8, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %91

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 3, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %58
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %74, i32 0, i32 1, i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @chainlinks(i32 %80, i32* getelementptr inbounds ([160 x i32], [160 x i32]* @adjs, i64 0, i64 0))
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 0, i32* %4, align 4
  br label %181

85:                                               ; preds = %79
  %86 = load i32, i32* getelementptr inbounds ([160 x i32], [160 x i32]* @adjs, i64 0, i64 0), align 16
  store i32 %86, i32* %9, align 4
  br label %91

87:                                               ; preds = %73, %58
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %55, !llvm.loop !14

91:                                               ; preds = %85, %55
  br label %92

92:                                               ; preds = %91, %51
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %124

95:                                               ; preds = %92
  store i32 4, i32* %8, align 4
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %97, 8
  br i1 %98, label %99, label %123

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %100, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %99
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %113, %117
  store i32 %118, i32* %9, align 4
  br label %123

119:                                              ; preds = %99
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %96, !llvm.loop !15

123:                                              ; preds = %112, %96
  br label %124

124:                                              ; preds = %123, %92
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %158

127:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %154, %127
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %157

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = mul nsw i32 2, %136
  %138 = add nsw i32 %132, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %153

145:                                              ; preds = %131
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = mul nsw i32 2, %150
  %152 = add nsw i32 %146, %151
  store i32 %152, i32* %9, align 4
  br label %157

153:                                              ; preds = %131
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %128, !llvm.loop !16

157:                                              ; preds = %145, %128
  br label %158

158:                                              ; preds = %157, %124
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 0, i32* %4, align 4
  br label %181

162:                                              ; preds = %158
  %163 = load i32, i32* @verbose, align 4
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* @verbose, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i32, i32* @verbose, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* @verbose, align 4
  br label %169

169:                                              ; preds = %166, %162
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @owl_does_defend(i32 %170, i32 %171, i32* null)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %169
  store i32 0, i32* %4, align 4
  br label %181

175:                                              ; preds = %169
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* @verbose, align 4
  %177 = load i32, i32* %5, align 4
  %178 = load i32, i32* %6, align 4
  %179 = load i32*, i32** %7, align 8
  %180 = call i32 @confirm_safety(i32 %177, i32 %178, i32* %179, i8* null)
  store i32 %180, i32* %4, align 4
  br label %181

181:                                              ; preds = %175, %174, %161, %84
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #2

declare dso_local void @popgo() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_backfilling_move(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @trymove(i32 %19, i32 %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %21, i32 0, i32 0)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %231

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @attack(i32 %26, i32* %12)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %12, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %35

34:                                               ; preds = %30, %25
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 -1, i32 -1)
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @findlib(i32 %36, i32 241, i32* getelementptr inbounds ([241 x i32], [241 x i32]* @libs, i64 0, i64 0))
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @chainlinks(i32 %38, i32* getelementptr inbounds ([160 x i32], [160 x i32]* @adjs, i64 0, i64 0))
  store i32 %39, i32* %10, align 4
  call void @popgo()
  store i32 1, i32* %18, align 4
  br label %40

40:                                               ; preds = %86, %35
  %41 = load i32, i32* %18, align 4
  %42 = icmp sle i32 %41, 5
  br i1 %42, label %43, label %89

43:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %82, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load i32, i32* %18, align 4
  %50 = icmp slt i32 %49, 5
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @countlib(i32 %55)
  %57 = load i32, i32* %18, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %82

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @attack(i32 %64, i32* %13)
  %66 = icmp eq i32 %65, 5
  br i1 %66, label %67, label %81

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @liberty_of_string(i32 %68, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* %13, align 4
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  store i32 1, i32* %4, align 4
  br label %231

78:                                               ; preds = %67
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %60
  br label %82

82:                                               ; preds = %81, %59
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %44, !llvm.loop !17

85:                                               ; preds = %44
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %18, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %18, align 4
  br label %40, !llvm.loop !18

89:                                               ; preds = %40
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %116, label %92

92:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %112, %92
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [241 x i32], [241 x i32]* @libs, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call i32 @safe_move(i32 %101, i32 %102)
  %104 = icmp eq i32 %103, 5
  br i1 %104, label %105, label %111

105:                                              ; preds = %97
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [241 x i32], [241 x i32]* @libs, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %7, align 8
  store i32 %109, i32* %110, align 4
  store i32 1, i32* %11, align 4
  br label %115

111:                                              ; preds = %97
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %93, !llvm.loop !19

115:                                              ; preds = %105, %93
  br label %116

116:                                              ; preds = %115, %89
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %148, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @trymove(i32 %120, i32 %121, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %122, i32 0, i32 0)
  %124 = load i32, i32* %5, align 4
  call void @find_proper_superstring_liberties(i32 %124, i32* %9, i32* getelementptr inbounds ([241 x i32], [241 x i32]* @libs, i64 0, i64 0), i32 0)
  call void @popgo()
  store i32 0, i32* %8, align 4
  br label %125

125:                                              ; preds = %144, %119
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %125
  %130 = load i32, i32* %8, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [241 x i32], [241 x i32]* @libs, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @safe_move(i32 %133, i32 %134)
  %136 = icmp eq i32 %135, 5
  br i1 %136, label %137, label %143

137:                                              ; preds = %129
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [241 x i32], [241 x i32]* @libs, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32*, i32** %7, align 8
  store i32 %141, i32* %142, align 4
  store i32 1, i32* %11, align 4
  br label %147

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %8, align 4
  br label %125, !llvm.loop !20

147:                                              ; preds = %137, %125
  br label %148

148:                                              ; preds = %147, %116
  %149 = load i32, i32* %11, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %185, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @trymove(i32 %152, i32 %153, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %154, i32 0, i32 0)
  %156 = load i32, i32* %5, align 4
  call void @superstring_chainlinks(i32 %156, i32* %10, i32* getelementptr inbounds ([160 x i32], [160 x i32]* @adjs, i64 0, i64 0), i32 4)
  call void @popgo()
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %181, %151
  %158 = load i32, i32* %8, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %184

161:                                              ; preds = %157
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @attack(i32 %165, i32* %13)
  %167 = icmp eq i32 %166, 5
  br i1 %167, label %168, label %180

168:                                              ; preds = %161
  %169 = load i32, i32* %13, align 4
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [160 x i32], [160 x i32]* @adjs, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @liberty_of_string(i32 %169, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = load i32, i32* %13, align 4
  %178 = load i32*, i32** %7, align 8
  store i32 %177, i32* %178, align 4
  store i32 1, i32* %4, align 4
  br label %231

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179, %161
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %157, !llvm.loop !21

184:                                              ; preds = %157
  br label %185

185:                                              ; preds = %184, %148
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %220

188:                                              ; preds = %185
  %189 = load i32*, i32** %7, align 8
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @trymove(i32 %190, i32 %191, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %192, i32 0, i32 0)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %196, label %195

195:                                              ; preds = %188
  store i32 0, i32* %4, align 4
  br label %231

196:                                              ; preds = %188
  %197 = load i32, i32* %12, align 4
  %198 = load i32, i32* %6, align 4
  %199 = sub nsw i32 3, %198
  %200 = load i32, i32* %5, align 4
  %201 = call i32 @trymove(i32 %197, i32 %199, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %200, i32 0, i32 0)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %196
  store i32 1, i32* %14, align 4
  br label %204

204:                                              ; preds = %203, %196
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @safe_move(i32 %205, i32 %206)
  %208 = icmp eq i32 %207, 5
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  store i32 1, i32* %15, align 4
  br label %215

210:                                              ; preds = %204
  %211 = load i32, i32* %5, align 4
  %212 = load i32, i32* %6, align 4
  %213 = load i32*, i32** %7, align 8
  %214 = call i32 @find_backfilling_move(i32 %211, i32 %212, i32* %213)
  store i32 %214, i32* %15, align 4
  br label %215

215:                                              ; preds = %210, %209
  %216 = load i32, i32* %14, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  call void @popgo()
  br label %219

219:                                              ; preds = %218, %215
  call void @popgo()
  br label %220

220:                                              ; preds = %219, %185
  %221 = load i32, i32* %15, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %17, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32, i32* %17, align 4
  %228 = load i32*, i32** %7, align 8
  store i32 %227, i32* %228, align 4
  store i32 1, i32* %15, align 4
  br label %229

229:                                              ; preds = %226, %223, %220
  %230 = load i32, i32* %15, align 4
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %229, %195, %176, %75, %24
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @is_legal(i32, i32) #2

declare dso_local i32 @does_capture_something(i32, i32) #2

declare dso_local i32 @findlib(i32, i32, i32*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @living_neighbor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %37, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %40

10:                                               ; preds = %7
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %11, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %10
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 16
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %41

36:                                               ; preds = %23, %10
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %7, !llvm.loop !22

40:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %35
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @attack(i32, i32*) #2

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #2

declare dso_local i32 @chainlinks(i32, i32*) #2

declare dso_local i32 @countlib(i32) #2

declare dso_local i32 @liberty_of_string(i32, i32) #2

declare dso_local void @find_proper_superstring_liberties(i32, i32*, i32*, i32) #2

declare dso_local void @superstring_chainlinks(i32, i32*, i32*, i32) #2

declare dso_local i32 @play_attack_defend_n(i32, i32, i32, ...) #2

declare dso_local i32 @owl_does_defend(i32, i32, i32*) #2

declare dso_local i32 @confirm_safety(i32, i32, i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
