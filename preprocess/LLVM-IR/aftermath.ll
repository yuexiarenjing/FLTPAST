; ModuleID = 'aftermath.c'
source_filename = "aftermath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aftermath_data = type { i32, i32, i32, i32, i32, i32, i32, i32, [400 x i32], [400 x i32], [400 x i32] }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.board_state = type { i32, [421 x i8], i32, i32, i32, [421 x i8], i32, i32, i32, [500 x i32], [500 x i32], i32, float, i32 }

@board = external dso_local global [421 x i8], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@delta = external dso_local global [8 x i32], align 16
@debug = external dso_local global i32, align 4
@board_size = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c" o\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" x\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c" ?\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c" O\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" X\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c" .\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Closest opponent %1m\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c", distance %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Closest own %1m\00", align 1
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@.str.11 = private unnamed_addr constant [21 x i8] c"Closing edge at %1m\0A\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Score %1M = %d (hotspot bonus %d + %d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"aftermath-B\00", align 1
@.str.14 = private unnamed_addr constant [49 x i8] c"Blunder: %1m becomes tactically safer after %1m\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Blunder: %1m becomes more alive after %1m\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Splitting eyespace at %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"aftermath-A\00", align 1
@stackp = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [33 x i8] c"Filling opponent liberty at %1m\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Tactically attack %1m at %1m\0A\00", align 1
@aftermath = internal global %struct.aftermath_data zeroinitializer, align 4
@aftermath_sgftree = internal global %struct.SGFTree_t* null, align 8
@chinese_rules = external dso_local global i32, align 4
@.str.20 = private unnamed_addr constant [12 x i8] c"aftermath.c\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@play_aftermath.current_board = internal global [400 x i32] zeroinitializer, align 16
@play_aftermath.current_color = internal global i32 0, align 4
@.str.22 = private unnamed_addr constant [25 x i8] c"color == 2 || color == 1\00", align 1
@white_captured = external dso_local global i32, align 4
@black_captured = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [20 x i8] c"White captured: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Black captured: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"White prisoners: %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"Black prisoners: %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"White territory: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Black territory: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"White area: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"Black area: %d\0A\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"The aftermath starts.\0A\00", align 1
@disable_threat_computation = external dso_local global i32, align 4
@disable_endgame_patterns = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@.str.32 = private unnamed_addr constant [45 x i8] c"%d %C move %1m (nodes %d, %d  total %d, %d)\0A\00", align 1
@movenum = external dso_local global i32, align 4
@level = external dso_local global i32, align 4
@lower_bound = external dso_local global float, align 4
@upper_bound = external dso_local global float, align 4
@showscore = external dso_local global i32, align 4
@.str.33 = private unnamed_addr constant [24 x i8] c"\0AScore estimate: %s %f\0A\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"W \00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.36 = private unnamed_addr constant [33 x i8] c"\0AScore estimate: %s %f to %s %f\0A\00", align 1
@score = external dso_local global float, align 4
@.str.37 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Move generation likes %1m with value %f\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"I pass.\0A\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"reduced_genmove() recommends %1m with value %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aftermath_genmove(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [400 x i32], align 16
  %13 = alloca [400 x i32], align 16
  %14 = alloca [400 x float], align 16
  %15 = alloca [400 x float], align 16
  %16 = alloca [400 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca [400 x i8], align 16
  %34 = alloca i8, align 1
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca [400 x i32], align 16
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca [160 x i32], align 16
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 3, %68
  store i32 %69, i32* %11, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %70 = getelementptr inbounds [400 x float], [400 x float]* %14, i64 0, i64 0
  call void @owl_hotspots(float* %70)
  %71 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 0
  call void @reading_hotspots(float* %71)
  store i32 21, i32* %22, align 4
  br label %72

72:                                               ; preds = %146, %4
  %73 = load i32, i32* %22, align 4
  %74 = icmp slt i32 %73, 400
  br i1 %74, label %75, label %149

75:                                               ; preds = %72
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 3
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %146

83:                                               ; preds = %75
  %84 = load i32, i32* %22, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %102

91:                                               ; preds = %83
  %92 = load i32, i32* %22, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* %22, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %100
  store i32 0, i32* %101, align 4
  br label %144

102:                                              ; preds = %91, %83
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %139, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %22, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load i32, i32* %22, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %116, i32 0, i32 14
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %135, label %120

120:                                              ; preds = %113, %105
  %121 = load i32, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %120
  %129 = load i32, i32* %22, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %135, label %139

135:                                              ; preds = %128, %113
  %136 = load i32, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %137
  store i32 0, i32* %138, align 4
  br label %143

139:                                              ; preds = %128, %120, %102
  %140 = load i32, i32* %22, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %141
  store i32 -1, i32* %142, align 4
  br label %143

143:                                              ; preds = %139, %135
  br label %144

144:                                              ; preds = %143, %98
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %82
  %147 = load i32, i32* %22, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %22, align 4
  br label %72, !llvm.loop !4

149:                                              ; preds = %72
  store i32 0, i32* %20, align 4
  br label %150

150:                                              ; preds = %274, %149
  store i32 0, i32* %17, align 4
  store i32 21, i32* %22, align 4
  br label %151

151:                                              ; preds = %268, %150
  %152 = load i32, i32* %22, align 4
  %153 = icmp slt i32 %152, 400
  br i1 %153, label %154, label %271

154:                                              ; preds = %151
  %155 = load i32, i32* %22, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp ne i32 %159, 3
  br i1 %160, label %161, label %267

161:                                              ; preds = %154
  %162 = load i32, i32* %22, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, -1
  br i1 %166, label %167, label %267

167:                                              ; preds = %161
  store i32 0, i32* %10, align 4
  br label %168

168:                                              ; preds = %263, %167
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 4
  br i1 %170, label %171, label %266

171:                                              ; preds = %168
  %172 = load i32, i32* %22, align 4
  %173 = load i32, i32* %10, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %172, %176
  store i32 %177, i32* %25, align 4
  %178 = load i32, i32* %25, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %179
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp ne i32 %182, 3
  br i1 %183, label %185, label %184

184:                                              ; preds = %171
  br label %263

185:                                              ; preds = %171
  %186 = load i32, i32* %20, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %195, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %25, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %262

195:                                              ; preds = %188, %185
  %196 = load i32, i32* %25, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %20, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %262

202:                                              ; preds = %195
  %203 = load i32, i32* %20, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %224

205:                                              ; preds = %202
  %206 = load i32, i32* %22, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = load i32, i32* %11, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %224

213:                                              ; preds = %205
  %214 = load i32, i32* %20, align 4
  %215 = add nsw i32 %214, 1
  %216 = load i32, i32* %22, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %217
  store i32 %215, i32* %218, align 4
  %219 = load i32, i32* %18, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %213
  %222 = load i32, i32* %22, align 4
  store i32 %222, i32* %18, align 4
  br label %223

223:                                              ; preds = %221, %213
  br label %261

224:                                              ; preds = %205, %202
  %225 = load i32, i32* %20, align 4
  %226 = icmp sgt i32 %225, 0
  br i1 %226, label %227, label %246

227:                                              ; preds = %224
  %228 = load i32, i32* %22, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = load i32, i32* %7, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %246

235:                                              ; preds = %227
  %236 = load i32, i32* %20, align 4
  %237 = add nsw i32 %236, 1
  %238 = load i32, i32* %22, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %239
  store i32 %237, i32* %240, align 4
  %241 = load i32, i32* %19, align 4
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %235
  %244 = load i32, i32* %22, align 4
  store i32 %244, i32* %19, align 4
  br label %245

245:                                              ; preds = %243, %235
  br label %260

246:                                              ; preds = %227, %224
  %247 = load i32, i32* %22, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = zext i8 %250 to i32
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %246
  %254 = load i32, i32* %20, align 4
  %255 = add nsw i32 %254, 1
  %256 = load i32, i32* %22, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %257
  store i32 %255, i32* %258, align 4
  store i32 1, i32* %17, align 4
  br label %259

259:                                              ; preds = %253, %246
  br label %260

260:                                              ; preds = %259, %245
  br label %261

261:                                              ; preds = %260, %223
  br label %266

262:                                              ; preds = %195, %188
  br label %263

263:                                              ; preds = %262, %184
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  br label %168, !llvm.loop !6

266:                                              ; preds = %261, %168
  br label %267

267:                                              ; preds = %266, %161, %154
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %22, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %22, align 4
  br label %151, !llvm.loop !7

271:                                              ; preds = %151
  %272 = load i32, i32* %20, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %20, align 4
  br label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %17, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %150, label %277, !llvm.loop !8

277:                                              ; preds = %274
  %278 = load i32*, i32** %8, align 8
  %279 = icmp ne i32* %278, null
  br i1 %279, label %280, label %314

280:                                              ; preds = %277
  store i32 21, i32* %22, align 4
  br label %281

281:                                              ; preds = %310, %280
  %282 = load i32, i32* %22, align 4
  %283 = icmp slt i32 %282, 400
  br i1 %283, label %284, label %313

284:                                              ; preds = %281
  %285 = load i32, i32* %22, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = icmp ne i32 %289, 3
  br i1 %290, label %292, label %291

291:                                              ; preds = %284
  br label %310

292:                                              ; preds = %284
  %293 = load i32, i32* %22, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = icmp eq i32 %296, -1
  br i1 %297, label %298, label %303

298:                                              ; preds = %292
  %299 = load i32*, i32** %8, align 8
  %300 = load i32, i32* %22, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  store i32 0, i32* %302, align 4
  br label %308

303:                                              ; preds = %292
  %304 = load i32*, i32** %8, align 8
  %305 = load i32, i32* %22, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  store i32 1, i32* %307, align 4
  br label %308

308:                                              ; preds = %303, %298
  br label %309

309:                                              ; preds = %308
  br label %310

310:                                              ; preds = %309, %291
  %311 = load i32, i32* %22, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %22, align 4
  br label %281, !llvm.loop !9

313:                                              ; preds = %281
  br label %314

314:                                              ; preds = %313, %277
  %315 = load i32, i32* @debug, align 4
  %316 = and i32 %315, 131072
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %433

318:                                              ; preds = %314
  store i32 0, i32* %26, align 4
  br label %319

319:                                              ; preds = %403, %318
  %320 = load i32, i32* %26, align 4
  %321 = load i32, i32* @board_size, align 4
  %322 = icmp slt i32 %320, %321
  br i1 %322, label %323, label %406

323:                                              ; preds = %319
  store i32 0, i32* %27, align 4
  br label %324

324:                                              ; preds = %398, %323
  %325 = load i32, i32* %27, align 4
  %326 = load i32, i32* @board_size, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %401

328:                                              ; preds = %324
  %329 = load i32, i32* %26, align 4
  %330 = mul nsw i32 %329, 20
  %331 = add nsw i32 21, %330
  %332 = load i32, i32* %27, align 4
  %333 = add nsw i32 %331, %332
  store i32 %333, i32* %22, align 4
  %334 = load i32, i32* %22, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = icmp sgt i32 %337, 0
  br i1 %338, label %339, label %346

339:                                              ; preds = %328
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %341 = load i32, i32* %22, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %344)
  br label %397

346:                                              ; preds = %328
  %347 = load i32, i32* %22, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %374

352:                                              ; preds = %346
  %353 = load i32, i32* %22, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = icmp eq i32 %357, 1
  br i1 %358, label %359, label %361

359:                                              ; preds = %352
  %360 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %373

361:                                              ; preds = %352
  %362 = load i32, i32* %22, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %363
  %365 = load i8, i8* %364, align 1
  %366 = zext i8 %365 to i32
  %367 = icmp eq i32 %366, 2
  br i1 %367, label %368, label %370

368:                                              ; preds = %361
  %369 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %372

370:                                              ; preds = %361
  %371 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %372

372:                                              ; preds = %370, %368
  br label %373

373:                                              ; preds = %372, %359
  br label %396

374:                                              ; preds = %346
  %375 = load i32, i32* %22, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = icmp eq i32 %379, 1
  br i1 %380, label %381, label %383

381:                                              ; preds = %374
  %382 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  br label %395

383:                                              ; preds = %374
  %384 = load i32, i32* %22, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = icmp eq i32 %388, 2
  br i1 %389, label %390, label %392

390:                                              ; preds = %383
  %391 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %394

392:                                              ; preds = %383
  %393 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %394

394:                                              ; preds = %392, %390
  br label %395

395:                                              ; preds = %394, %381
  br label %396

396:                                              ; preds = %395, %373
  br label %397

397:                                              ; preds = %396, %339
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %27, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %27, align 4
  br label %324, !llvm.loop !10

401:                                              ; preds = %324
  %402 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %403

403:                                              ; preds = %401
  %404 = load i32, i32* %26, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %26, align 4
  br label %319, !llvm.loop !11

406:                                              ; preds = %319
  %407 = load i32, i32* %18, align 4
  %408 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %407)
  %409 = load i32, i32* %18, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %406
  %412 = load i32, i32* %18, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %413
  %415 = load i32, i32* %414, align 4
  %416 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %415)
  br label %419

417:                                              ; preds = %406
  %418 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %419

419:                                              ; preds = %417, %411
  %420 = load i32, i32* %19, align 4
  %421 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %420)
  %422 = load i32, i32* %19, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %430

424:                                              ; preds = %419
  %425 = load i32, i32* %19, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %428)
  br label %432

430:                                              ; preds = %419
  %431 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %432

432:                                              ; preds = %430, %424
  br label %433

433:                                              ; preds = %432, %314
  store i32 0, i32* %24, align 4
  store i32 5, i32* %23, align 4
  store i32 21, i32* %22, align 4
  br label %434

434:                                              ; preds = %590, %433
  %435 = load i32, i32* %22, align 4
  %436 = icmp slt i32 %435, 400
  br i1 %436, label %437, label %593

437:                                              ; preds = %434
  %438 = load i32, i32* %22, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %439
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %450, label %444

444:                                              ; preds = %437
  %445 = load i32, i32* %22, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %444, %437
  br label %590

451:                                              ; preds = %444
  %452 = load i32, i32* %22, align 4
  %453 = load i32, i32* %7, align 4
  %454 = call i32 @approxlib(i32 %452, i32 %453, i32 3, i32* null)
  store i32 %454, i32* %28, align 4
  %455 = load i32, i32* %28, align 4
  %456 = icmp slt i32 %455, 3
  br i1 %456, label %457, label %458

457:                                              ; preds = %451
  br label %590

458:                                              ; preds = %451
  %459 = load i32, i32* %22, align 4
  %460 = load i32, i32* %11, align 4
  %461 = call i32 @is_self_atari(i32 %459, i32 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %458
  br label %590

464:                                              ; preds = %458
  store i32 0, i32* %10, align 4
  br label %465

465:                                              ; preds = %586, %464
  %466 = load i32, i32* %10, align 4
  %467 = icmp slt i32 %466, 4
  br i1 %467, label %468, label %589

468:                                              ; preds = %465
  %469 = load i32, i32* %10, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %470
  %472 = load i32, i32* %471, align 4
  store i32 %472, i32* %29, align 4
  %473 = load i32, i32* %10, align 4
  %474 = add nsw i32 %473, 1
  %475 = srem i32 %474, 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %476
  %478 = load i32, i32* %477, align 4
  store i32 %478, i32* %30, align 4
  %479 = load i32, i32* %22, align 4
  %480 = load i32, i32* %29, align 4
  %481 = sub nsw i32 %479, %480
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %482
  %484 = load i8, i8* %483, align 1
  %485 = zext i8 %484 to i32
  %486 = icmp ne i32 %485, 3
  br i1 %486, label %585, label %487

487:                                              ; preds = %468
  %488 = load i32, i32* %22, align 4
  %489 = load i32, i32* %29, align 4
  %490 = add nsw i32 %488, %489
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %491
  %493 = load i8, i8* %492, align 1
  %494 = zext i8 %493 to i32
  %495 = load i32, i32* %7, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %585

497:                                              ; preds = %487
  %498 = load i32, i32* %22, align 4
  %499 = load i32, i32* %29, align 4
  %500 = add nsw i32 %498, %499
  %501 = load i32, i32* %30, align 4
  %502 = add nsw i32 %500, %501
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %503
  %505 = load i8, i8* %504, align 1
  %506 = zext i8 %505 to i32
  %507 = load i32, i32* %11, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %585

509:                                              ; preds = %497
  %510 = load i32, i32* %22, align 4
  %511 = load i32, i32* %29, align 4
  %512 = add nsw i32 %510, %511
  %513 = load i32, i32* %30, align 4
  %514 = sub nsw i32 %512, %513
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %515
  %517 = load i8, i8* %516, align 1
  %518 = zext i8 %517 to i32
  %519 = load i32, i32* %11, align 4
  %520 = icmp eq i32 %518, %519
  br i1 %520, label %521, label %585

521:                                              ; preds = %509
  %522 = load i32, i32* %28, align 4
  %523 = load i32, i32* %22, align 4
  %524 = load i32, i32* %29, align 4
  %525 = add nsw i32 %523, %524
  %526 = call i32 @countlib(i32 %525)
  %527 = icmp sgt i32 %522, %526
  br i1 %527, label %538, label %528

528:                                              ; preds = %521
  %529 = load i32, i32* %28, align 4
  %530 = icmp sgt i32 %529, 4
  br i1 %530, label %531, label %585

531:                                              ; preds = %528
  %532 = load i32, i32* %28, align 4
  %533 = load i32, i32* %22, align 4
  %534 = load i32, i32* %29, align 4
  %535 = add nsw i32 %533, %534
  %536 = call i32 @countlib(i32 %535)
  %537 = icmp eq i32 %532, %536
  br i1 %537, label %538, label %585

538:                                              ; preds = %531, %521
  %539 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %540 = load i32, i32* %22, align 4
  %541 = load i32, i32* %29, align 4
  %542 = add nsw i32 %540, %541
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %543
  %545 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %539, i64 %547
  %549 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %548, i32 0, i32 6
  %550 = load i32, i32* %549, align 4
  %551 = icmp eq i32 %550, 9
  br i1 %551, label %566, label %552

552:                                              ; preds = %538
  %553 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %554 = load i32, i32* %22, align 4
  %555 = load i32, i32* %29, align 4
  %556 = add nsw i32 %554, %555
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %557
  %559 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %558, i32 0, i32 1
  %560 = load i32, i32* %559, align 4
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %553, i64 %561
  %563 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %562, i32 0, i32 6
  %564 = load i32, i32* %563, align 4
  %565 = icmp eq i32 %564, 8
  br i1 %565, label %566, label %585

566:                                              ; preds = %552, %538
  %567 = load i32, i32* %22, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [400 x float], [400 x float]* %14, i64 0, i64 %568
  %570 = load float, float* %569, align 4
  %571 = load i32, i32* %22, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %572
  %574 = load float, float* %573, align 4
  %575 = fadd float %570, %574
  %576 = fmul float 2.000000e+01, %575
  %577 = fptosi float %576 to i32
  store i32 %577, i32* %31, align 4
  %578 = load i32, i32* %31, align 4
  %579 = load i32, i32* %23, align 4
  %580 = icmp sgt i32 %578, %579
  br i1 %580, label %581, label %584

581:                                              ; preds = %566
  %582 = load i32, i32* %31, align 4
  store i32 %582, i32* %23, align 4
  %583 = load i32, i32* %22, align 4
  store i32 %583, i32* %24, align 4
  br label %584

584:                                              ; preds = %581, %566
  br label %585

585:                                              ; preds = %584, %552, %531, %528, %509, %497, %487, %468
  br label %586

586:                                              ; preds = %585
  %587 = load i32, i32* %10, align 4
  %588 = add nsw i32 %587, 1
  store i32 %588, i32* %10, align 4
  br label %465, !llvm.loop !12

589:                                              ; preds = %465
  br label %590

590:                                              ; preds = %589, %463, %457, %450
  %591 = load i32, i32* %22, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %22, align 4
  br label %434, !llvm.loop !13

593:                                              ; preds = %434
  %594 = load i32, i32* %24, align 4
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %612

596:                                              ; preds = %593
  %597 = load i32, i32* %24, align 4
  %598 = load i32, i32* %7, align 4
  %599 = call i32 @safe_move(i32 %597, i32 %598)
  %600 = icmp eq i32 %599, 5
  br i1 %600, label %601, label %612

601:                                              ; preds = %596
  %602 = load i32, i32* %24, align 4
  %603 = load i32*, i32** %6, align 8
  store i32 %602, i32* %603, align 4
  %604 = load i32, i32* @debug, align 4
  %605 = and i32 %604, 131072
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %608, label %607

607:                                              ; preds = %601
  br label %611

608:                                              ; preds = %601
  %609 = load i32, i32* %24, align 4
  %610 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %609)
  br label %611

611:                                              ; preds = %608, %607
  store i32 1, i32* %5, align 4
  br label %1981

612:                                              ; preds = %596, %593
  store i32 21, i32* %22, align 4
  br label %613

613:                                              ; preds = %711, %612
  %614 = load i32, i32* %22, align 4
  %615 = icmp slt i32 %614, 400
  br i1 %615, label %616, label %714

616:                                              ; preds = %613
  %617 = load i32, i32* %22, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %618
  %620 = load i8, i8* %619, align 1
  %621 = zext i8 %620 to i32
  %622 = load i32, i32* %11, align 4
  %623 = icmp eq i32 %621, %622
  br i1 %623, label %624, label %710

624:                                              ; preds = %616
  %625 = load i32, i32* %22, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %626
  %628 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %627, i32 0, i32 14
  %629 = load i32, i32* %628, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %631, label %710

631:                                              ; preds = %624
  %632 = load i32, i32* %22, align 4
  %633 = call i32 @countlib(i32 %632)
  %634 = icmp eq i32 %633, 1
  br i1 %634, label %635, label %710

635:                                              ; preds = %631
  %636 = load i32, i32* %22, align 4
  %637 = add nsw i32 %636, 20
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %638
  %640 = load i8, i8* %639, align 1
  %641 = zext i8 %640 to i32
  %642 = icmp ne i32 %641, 3
  br i1 %642, label %643, label %650

643:                                              ; preds = %635
  %644 = load i32, i32* %22, align 4
  %645 = add nsw i32 %644, 20
  %646 = sext i32 %645 to i64
  %647 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %646
  %648 = load i32, i32* %647, align 4
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %695, label %650

650:                                              ; preds = %643, %635
  %651 = load i32, i32* %22, align 4
  %652 = sub nsw i32 %651, 1
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %653
  %655 = load i8, i8* %654, align 1
  %656 = zext i8 %655 to i32
  %657 = icmp ne i32 %656, 3
  br i1 %657, label %658, label %665

658:                                              ; preds = %650
  %659 = load i32, i32* %22, align 4
  %660 = sub nsw i32 %659, 1
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %661
  %663 = load i32, i32* %662, align 4
  %664 = icmp eq i32 %663, 0
  br i1 %664, label %695, label %665

665:                                              ; preds = %658, %650
  %666 = load i32, i32* %22, align 4
  %667 = sub nsw i32 %666, 20
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %668
  %670 = load i8, i8* %669, align 1
  %671 = zext i8 %670 to i32
  %672 = icmp ne i32 %671, 3
  br i1 %672, label %673, label %680

673:                                              ; preds = %665
  %674 = load i32, i32* %22, align 4
  %675 = sub nsw i32 %674, 20
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %676
  %678 = load i32, i32* %677, align 4
  %679 = icmp eq i32 %678, 0
  br i1 %679, label %695, label %680

680:                                              ; preds = %673, %665
  %681 = load i32, i32* %22, align 4
  %682 = add nsw i32 %681, 1
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %683
  %685 = load i8, i8* %684, align 1
  %686 = zext i8 %685 to i32
  %687 = icmp ne i32 %686, 3
  br i1 %687, label %688, label %710

688:                                              ; preds = %680
  %689 = load i32, i32* %22, align 4
  %690 = add nsw i32 %689, 1
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %710

695:                                              ; preds = %688, %673, %658, %643
  %696 = load i32, i32* %22, align 4
  %697 = call i32 @findlib(i32 %696, i32 1, i32* %32)
  %698 = load i32, i32* %22, align 4
  %699 = call i32 @countstones(i32 %698)
  %700 = icmp sgt i32 %699, 1
  br i1 %700, label %706, label %701

701:                                              ; preds = %695
  %702 = load i32, i32* %32, align 4
  %703 = load i32, i32* %7, align 4
  %704 = call i32 @is_self_atari(i32 %702, i32 %703)
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %709, label %706

706:                                              ; preds = %701, %695
  %707 = load i32, i32* %32, align 4
  %708 = load i32*, i32** %6, align 8
  store i32 %707, i32* %708, align 4
  store i32 1, i32* %5, align 4
  br label %1981

709:                                              ; preds = %701
  br label %710

710:                                              ; preds = %709, %688, %680, %631, %624, %616
  br label %711

711:                                              ; preds = %710
  %712 = load i32, i32* %22, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %22, align 4
  br label %613, !llvm.loop !14

714:                                              ; preds = %613
  %715 = load i32, i32* %18, align 4
  %716 = icmp ne i32 %715, 0
  br i1 %716, label %720, label %717

717:                                              ; preds = %714
  %718 = load i32, i32* %19, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %720, label %950

720:                                              ; preds = %717, %714
  %721 = load i32, i32* %19, align 4
  %722 = icmp eq i32 %721, 0
  br i1 %722, label %723, label %725

723:                                              ; preds = %720
  %724 = load i32, i32* %18, align 4
  store i32 %724, i32* %21, align 4
  br label %727

725:                                              ; preds = %720
  %726 = load i32, i32* %19, align 4
  store i32 %726, i32* %21, align 4
  br label %727

727:                                              ; preds = %725, %723
  %728 = load i32, i32* %21, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %729
  %731 = load i32, i32* %730, align 4
  %732 = icmp eq i32 %731, 2
  br i1 %732, label %733, label %898

733:                                              ; preds = %727
  store i8 0, i8* %34, align 1
  %734 = getelementptr inbounds [400 x i8], [400 x i8]* %33, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %734, i8 0, i64 400, i1 false)
  store i32 0, i32* %23, align 4
  %735 = load i32, i32* %21, align 4
  store i32 %735, i32* %24, align 4
  store i32 21, i32* %22, align 4
  br label %736

736:                                              ; preds = %893, %733
  %737 = load i32, i32* %22, align 4
  %738 = icmp slt i32 %737, 400
  br i1 %738, label %739, label %896

739:                                              ; preds = %736
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %740 = load i32, i32* %22, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %741
  %743 = load i8, i8* %742, align 1
  %744 = zext i8 %743 to i32
  %745 = icmp ne i32 %744, 3
  br i1 %745, label %746, label %752

746:                                              ; preds = %739
  %747 = load i32, i32* %22, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %748
  %750 = load i32, i32* %749, align 4
  %751 = icmp ne i32 %750, 1
  br i1 %751, label %752, label %753

752:                                              ; preds = %746, %739
  br label %893

753:                                              ; preds = %746
  %754 = load i8, i8* %34, align 1
  %755 = add i8 %754, 1
  store i8 %755, i8* %34, align 1
  store i32 0, i32* %10, align 4
  br label %756

756:                                              ; preds = %871, %753
  %757 = load i32, i32* %10, align 4
  %758 = icmp slt i32 %757, 4
  br i1 %758, label %759, label %874

759:                                              ; preds = %756
  %760 = load i32, i32* %22, align 4
  %761 = load i32, i32* %10, align 4
  %762 = sext i32 %761 to i64
  %763 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %762
  %764 = load i32, i32* %763, align 4
  %765 = add nsw i32 %760, %764
  store i32 %765, i32* %37, align 4
  %766 = load i32, i32* %37, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %767
  %769 = load i8, i8* %768, align 1
  %770 = zext i8 %769 to i32
  %771 = icmp ne i32 %770, 3
  br i1 %771, label %773, label %772

772:                                              ; preds = %759
  br label %871

773:                                              ; preds = %759
  %774 = load i32, i32* %37, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %775
  %777 = load i32, i32* %776, align 4
  %778 = icmp slt i32 %777, 1
  br i1 %778, label %779, label %782

779:                                              ; preds = %773
  %780 = load i32, i32* %35, align 4
  %781 = add nsw i32 %780, -1
  store i32 %781, i32* %35, align 4
  br label %870

782:                                              ; preds = %773
  %783 = load i32, i32* %37, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %784
  %786 = load i8, i8* %785, align 1
  %787 = zext i8 %786 to i32
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %792

789:                                              ; preds = %782
  %790 = load i32, i32* %35, align 4
  %791 = add nsw i32 %790, 1
  store i32 %791, i32* %35, align 4
  br label %869

792:                                              ; preds = %782
  %793 = load i32, i32* %37, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds [400 x i8], [400 x i8]* %33, i64 0, i64 %794
  %796 = load i8, i8* %795, align 1
  %797 = sext i8 %796 to i32
  %798 = load i8, i8* %34, align 1
  %799 = sext i8 %798 to i32
  %800 = icmp eq i32 %797, %799
  br i1 %800, label %801, label %804

801:                                              ; preds = %792
  %802 = load i32, i32* %35, align 4
  %803 = add nsw i32 %802, -1
  store i32 %803, i32* %35, align 4
  br label %868

804:                                              ; preds = %792
  %805 = load i32, i32* %37, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %806
  %808 = load i8, i8* %807, align 1
  %809 = zext i8 %808 to i32
  %810 = load i32, i32* %7, align 4
  %811 = icmp eq i32 %809, %810
  br i1 %811, label %812, label %843

812:                                              ; preds = %804
  store i32 1, i32* %36, align 4
  %813 = load i32, i32* %35, align 4
  %814 = add nsw i32 %813, 7
  store i32 %814, i32* %35, align 4
  %815 = load i32, i32* %37, align 4
  %816 = call i32 @countstones(i32 %815)
  %817 = icmp sgt i32 %816, 2
  br i1 %817, label %818, label %821

818:                                              ; preds = %812
  %819 = load i32, i32* %35, align 4
  %820 = add nsw i32 %819, 1
  store i32 %820, i32* %35, align 4
  br label %821

821:                                              ; preds = %818, %812
  %822 = load i32, i32* %37, align 4
  %823 = call i32 @countstones(i32 %822)
  %824 = icmp sgt i32 %823, 4
  br i1 %824, label %825, label %828

825:                                              ; preds = %821
  %826 = load i32, i32* %35, align 4
  %827 = add nsw i32 %826, 1
  store i32 %827, i32* %35, align 4
  br label %828

828:                                              ; preds = %825, %821
  %829 = load i32, i32* %37, align 4
  %830 = call i32 @countlib(i32 %829)
  %831 = icmp slt i32 %830, 4
  br i1 %831, label %832, label %835

832:                                              ; preds = %828
  %833 = load i32, i32* %35, align 4
  %834 = add nsw i32 %833, 1
  store i32 %834, i32* %35, align 4
  br label %835

835:                                              ; preds = %832, %828
  %836 = load i32, i32* %37, align 4
  %837 = call i32 @countlib(i32 %836)
  %838 = icmp slt i32 %837, 3
  br i1 %838, label %839, label %842

839:                                              ; preds = %835
  %840 = load i32, i32* %35, align 4
  %841 = add nsw i32 %840, 1
  store i32 %841, i32* %35, align 4
  br label %842

842:                                              ; preds = %839, %835
  br label %864

843:                                              ; preds = %804
  %844 = load i32, i32* %22, align 4
  %845 = load i32, i32* %11, align 4
  %846 = call i32 @approxlib(i32 %844, i32 %845, i32 241, i32* null)
  %847 = load i32, i32* %37, align 4
  %848 = call i32 @countlib(i32 %847)
  %849 = sub nsw i32 %846, %848
  store i32 %849, i32* %38, align 4
  store i32 1, i32* %36, align 4
  %850 = load i32, i32* %35, align 4
  %851 = add nsw i32 %850, 1
  store i32 %851, i32* %35, align 4
  %852 = load i32, i32* %38, align 4
  %853 = icmp sge i32 %852, 0
  br i1 %853, label %854, label %857

854:                                              ; preds = %843
  %855 = load i32, i32* %35, align 4
  %856 = add nsw i32 %855, 1
  store i32 %856, i32* %35, align 4
  br label %857

857:                                              ; preds = %854, %843
  %858 = load i32, i32* %38, align 4
  %859 = icmp sgt i32 %858, 0
  br i1 %859, label %860, label %863

860:                                              ; preds = %857
  %861 = load i32, i32* %35, align 4
  %862 = add nsw i32 %861, 1
  store i32 %862, i32* %35, align 4
  br label %863

863:                                              ; preds = %860, %857
  br label %864

864:                                              ; preds = %863, %842
  %865 = load i32, i32* %37, align 4
  %866 = getelementptr inbounds [400 x i8], [400 x i8]* %33, i64 0, i64 0
  %867 = load i8, i8* %34, align 1
  call void @mark_string(i32 %865, i8* %866, i8 signext %867)
  br label %868

868:                                              ; preds = %864, %801
  br label %869

869:                                              ; preds = %868, %789
  br label %870

870:                                              ; preds = %869, %779
  br label %871

871:                                              ; preds = %870, %772
  %872 = load i32, i32* %10, align 4
  %873 = add nsw i32 %872, 1
  store i32 %873, i32* %10, align 4
  br label %756, !llvm.loop !15

874:                                              ; preds = %756
  %875 = load i32, i32* %22, align 4
  %876 = load i32, i32* %11, align 4
  %877 = call i32 @is_suicide(i32 %875, i32 %876)
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %882

879:                                              ; preds = %874
  %880 = load i32, i32* %35, align 4
  %881 = sub nsw i32 %880, 3
  store i32 %881, i32* %35, align 4
  br label %882

882:                                              ; preds = %879, %874
  %883 = load i32, i32* %36, align 4
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %885, label %892

885:                                              ; preds = %882
  %886 = load i32, i32* %35, align 4
  %887 = load i32, i32* %23, align 4
  %888 = icmp sgt i32 %886, %887
  br i1 %888, label %889, label %892

889:                                              ; preds = %885
  %890 = load i32, i32* %35, align 4
  store i32 %890, i32* %23, align 4
  %891 = load i32, i32* %22, align 4
  store i32 %891, i32* %24, align 4
  br label %892

892:                                              ; preds = %889, %885, %882
  br label %893

893:                                              ; preds = %892, %752
  %894 = load i32, i32* %22, align 4
  %895 = add nsw i32 %894, 1
  store i32 %895, i32* %22, align 4
  br label %736, !llvm.loop !16

896:                                              ; preds = %736
  %897 = load i32, i32* %24, align 4
  store i32 %897, i32* %21, align 4
  br label %898

898:                                              ; preds = %896, %727
  br label %899

899:                                              ; preds = %946, %898
  %900 = load i32, i32* %21, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %901
  %903 = load i32, i32* %902, align 4
  %904 = icmp sgt i32 %903, 1
  br i1 %904, label %905, label %947

905:                                              ; preds = %899
  store i32 0, i32* %10, align 4
  br label %906

906:                                              ; preds = %943, %905
  %907 = load i32, i32* %10, align 4
  %908 = icmp slt i32 %907, 4
  br i1 %908, label %909, label %946

909:                                              ; preds = %906
  %910 = load i32, i32* %21, align 4
  %911 = load i32, i32* %10, align 4
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %912
  %914 = load i32, i32* %913, align 4
  %915 = add nsw i32 %910, %914
  store i32 %915, i32* %39, align 4
  %916 = load i32, i32* %39, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %917
  %919 = load i8, i8* %918, align 1
  %920 = zext i8 %919 to i32
  %921 = icmp ne i32 %920, 3
  br i1 %921, label %922, label %942

922:                                              ; preds = %909
  %923 = load i32, i32* %39, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %924
  %926 = load i8, i8* %925, align 1
  %927 = zext i8 %926 to i32
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %929, label %942

929:                                              ; preds = %922
  %930 = load i32, i32* %39, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %931
  %933 = load i32, i32* %932, align 4
  %934 = load i32, i32* %21, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %935
  %937 = load i32, i32* %936, align 4
  %938 = sub nsw i32 %937, 1
  %939 = icmp eq i32 %933, %938
  br i1 %939, label %940, label %942

940:                                              ; preds = %929
  %941 = load i32, i32* %39, align 4
  store i32 %941, i32* %21, align 4
  br label %946

942:                                              ; preds = %929, %922, %909
  br label %943

943:                                              ; preds = %942
  %944 = load i32, i32* %10, align 4
  %945 = add nsw i32 %944, 1
  store i32 %945, i32* %10, align 4
  br label %906, !llvm.loop !17

946:                                              ; preds = %940, %906
  br label %899, !llvm.loop !18

947:                                              ; preds = %899
  %948 = load i32, i32* %21, align 4
  %949 = load i32*, i32** %6, align 8
  store i32 %948, i32* %949, align 4
  store i32 1, i32* %5, align 4
  br label %1981

950:                                              ; preds = %717
  store i32 21, i32* %22, align 4
  br label %951

951:                                              ; preds = %1417, %950
  %952 = load i32, i32* %22, align 4
  %953 = icmp slt i32 %952, 400
  br i1 %953, label %954, label %1420

954:                                              ; preds = %951
  store i32 0, i32* %40, align 4
  store i32 0, i32* %41, align 4
  store i32 0, i32* %42, align 4
  store i32 0, i32* %43, align 4
  store i32 0, i32* %44, align 4
  store i32 3, i32* %45, align 4
  store i32 0, i32* %46, align 4
  %955 = load i32, i32* %22, align 4
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %956
  store i32 0, i32* %957, align 4
  %958 = load i32, i32* %22, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %959
  %961 = load i8, i8* %960, align 1
  %962 = zext i8 %961 to i32
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %970, label %964

964:                                              ; preds = %954
  %965 = load i32, i32* %22, align 4
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %966
  %968 = load i32, i32* %967, align 4
  %969 = icmp ne i32 %968, -1
  br i1 %969, label %970, label %971

970:                                              ; preds = %964, %954
  br label %1417

971:                                              ; preds = %964
  %972 = getelementptr inbounds [400 x i32], [400 x i32]* %47, i64 0, i64 0
  %973 = bitcast i32* %972 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %973, i8 0, i64 1600, i1 false)
  store i32 0, i32* %10, align 4
  br label %974

974:                                              ; preds = %1257, %971
  %975 = load i32, i32* %10, align 4
  %976 = icmp slt i32 %975, 8
  br i1 %976, label %977, label %1260

977:                                              ; preds = %974
  %978 = load i32, i32* %22, align 4
  %979 = load i32, i32* %10, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %980
  %982 = load i32, i32* %981, align 4
  %983 = add nsw i32 %978, %982
  store i32 %983, i32* %48, align 4
  %984 = load i32, i32* %48, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %985
  %987 = load i8, i8* %986, align 1
  %988 = zext i8 %987 to i32
  %989 = icmp ne i32 %988, 3
  br i1 %989, label %991, label %990

990:                                              ; preds = %977
  br label %1257

991:                                              ; preds = %977
  %992 = load i32, i32* %48, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %993
  %995 = load i8, i8* %994, align 1
  %996 = zext i8 %995 to i32
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1005

998:                                              ; preds = %991
  %999 = load i32, i32* %10, align 4
  %1000 = icmp slt i32 %999, 4
  br i1 %1000, label %1001, label %1004

1001:                                             ; preds = %998
  %1002 = load i32, i32* %40, align 4
  %1003 = add nsw i32 %1002, 1
  store i32 %1003, i32* %40, align 4
  br label %1004

1004:                                             ; preds = %1001, %998
  br label %1257

1005:                                             ; preds = %991
  %1006 = load i32, i32* %48, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1007
  %1009 = load i8, i8* %1008, align 1
  %1010 = zext i8 %1009 to i32
  %1011 = load i32, i32* %11, align 4
  %1012 = icmp eq i32 %1010, %1011
  br i1 %1012, label %1013, label %1086

1013:                                             ; preds = %1005
  %1014 = load i32, i32* %48, align 4
  %1015 = sext i32 %1014 to i64
  %1016 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1015
  %1017 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1016, i32 0, i32 2
  %1018 = load i32, i32* %1017, align 4
  store i32 %1018, i32* %49, align 4
  %1019 = load i32, i32* %10, align 4
  %1020 = icmp slt i32 %1019, 4
  br i1 %1020, label %1021, label %1042

1021:                                             ; preds = %1013
  %1022 = load i32, i32* %48, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1023
  %1025 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1024, i32 0, i32 16
  %1026 = load i32, i32* %1025, align 4
  %1027 = icmp eq i32 %1026, 1
  br i1 %1027, label %1028, label %1029

1028:                                             ; preds = %1021
  store i32 0, i32* %45, align 4
  br label %1260

1029:                                             ; preds = %1021
  %1030 = load i32, i32* %49, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = getelementptr inbounds [400 x i32], [400 x i32]* %47, i64 0, i64 %1031
  %1033 = load i32, i32* %1032, align 4
  %1034 = icmp ne i32 %1033, 0
  br i1 %1034, label %1040, label %1035

1035:                                             ; preds = %1029
  %1036 = load i32, i32* %40, align 4
  %1037 = add nsw i32 %1036, 1
  store i32 %1037, i32* %40, align 4
  %1038 = load i32, i32* %43, align 4
  %1039 = add nsw i32 %1038, 1
  store i32 %1039, i32* %43, align 4
  br label %1040

1040:                                             ; preds = %1035, %1029
  br label %1041

1041:                                             ; preds = %1040
  br label %1042

1042:                                             ; preds = %1041, %1013
  %1043 = load i32, i32* %49, align 4
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds [400 x i32], [400 x i32]* %47, i64 0, i64 %1044
  %1046 = load i32, i32* %1045, align 4
  %1047 = icmp ne i32 %1046, 0
  br i1 %1047, label %1082, label %1048

1048:                                             ; preds = %1042
  %1049 = load i32, i32* %48, align 4
  %1050 = sext i32 %1049 to i64
  %1051 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1050
  %1052 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1051, i32 0, i32 16
  %1053 = load i32, i32* %1052, align 4
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1055, label %1082

1055:                                             ; preds = %1048
  %1056 = load i32, i32* %46, align 4
  %1057 = add nsw i32 %1056, 1
  store i32 %1057, i32* %46, align 4
  %1058 = load i32, i32* %10, align 4
  %1059 = icmp slt i32 %1058, 4
  br i1 %1059, label %1060, label %1071

1060:                                             ; preds = %1055
  %1061 = load i32, i32* %48, align 4
  %1062 = call i32 @countlib(i32 %1061)
  %1063 = icmp sle i32 %1062, 2
  br i1 %1063, label %1064, label %1071

1064:                                             ; preds = %1060
  %1065 = load i32, i32* %48, align 4
  %1066 = call i32 @countstones(i32 %1065)
  %1067 = icmp sge i32 %1066, 3
  br i1 %1067, label %1068, label %1071

1068:                                             ; preds = %1064
  %1069 = load i32, i32* %46, align 4
  %1070 = add nsw i32 %1069, 1
  store i32 %1070, i32* %46, align 4
  br label %1071

1071:                                             ; preds = %1068, %1064, %1060, %1055
  %1072 = load i32, i32* %10, align 4
  %1073 = icmp slt i32 %1072, 4
  br i1 %1073, label %1074, label %1081

1074:                                             ; preds = %1071
  %1075 = load i32, i32* %48, align 4
  %1076 = call i32 @countlib(i32 %1075)
  %1077 = icmp eq i32 %1076, 1
  br i1 %1077, label %1078, label %1081

1078:                                             ; preds = %1074
  %1079 = load i32, i32* %46, align 4
  %1080 = add nsw i32 %1079, 3
  store i32 %1080, i32* %46, align 4
  br label %1081

1081:                                             ; preds = %1078, %1074, %1071
  br label %1082

1082:                                             ; preds = %1081, %1048, %1042
  %1083 = load i32, i32* %49, align 4
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds [400 x i32], [400 x i32]* %47, i64 0, i64 %1084
  store i32 1, i32* %1085, align 4
  br label %1256

1086:                                             ; preds = %1005
  %1087 = load i32, i32* %48, align 4
  %1088 = sext i32 %1087 to i64
  %1089 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1088
  %1090 = load i8, i8* %1089, align 1
  %1091 = zext i8 %1090 to i32
  %1092 = load i32, i32* %7, align 4
  %1093 = icmp eq i32 %1091, %1092
  br i1 %1093, label %1094, label %1255

1094:                                             ; preds = %1086
  %1095 = load i32, i32* %48, align 4
  %1096 = load i32, i32* %22, align 4
  %1097 = sext i32 %1096 to i64
  %1098 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %1097
  store i32 %1095, i32* %1098, align 4
  %1099 = load i32, i32* %45, align 4
  %1100 = icmp eq i32 %1099, 3
  br i1 %1100, label %1101, label %1109

1101:                                             ; preds = %1094
  %1102 = load i32, i32* %48, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1103
  %1105 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1104, i32 0, i32 16
  %1106 = load i32, i32* %1105, align 4
  %1107 = icmp eq i32 %1106, 1
  br i1 %1107, label %1108, label %1109

1108:                                             ; preds = %1101
  store i32 1, i32* %45, align 4
  br label %1109

1109:                                             ; preds = %1108, %1101, %1094
  %1110 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1111 = load i32, i32* %48, align 4
  %1112 = sext i32 %1111 to i64
  %1113 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1112
  %1114 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1113, i32 0, i32 1
  %1115 = load i32, i32* %1114, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1110, i64 %1116
  %1118 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1117, i32 0, i32 6
  %1119 = load i32, i32* %1118, align 4
  %1120 = icmp eq i32 %1119, 9
  br i1 %1120, label %1121, label %1122

1121:                                             ; preds = %1109
  store i32 9, i32* %45, align 4
  br label %1122

1122:                                             ; preds = %1121, %1109
  %1123 = load i32, i32* %10, align 4
  %1124 = icmp slt i32 %1123, 4
  br i1 %1124, label %1125, label %1251

1125:                                             ; preds = %1122
  %1126 = load i32, i32* %48, align 4
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1127
  %1129 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1128, i32 0, i32 3
  %1130 = load i32, i32* %1129, align 4
  store i32 %1130, i32* %50, align 4
  %1131 = load i32, i32* %50, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = getelementptr inbounds [400 x i32], [400 x i32]* %47, i64 0, i64 %1132
  %1134 = load i32, i32* %1133, align 4
  %1135 = icmp ne i32 %1134, 0
  br i1 %1135, label %1163, label %1136

1136:                                             ; preds = %1125
  %1137 = load i32, i32* %44, align 4
  %1138 = add nsw i32 %1137, 1
  store i32 %1138, i32* %44, align 4
  %1139 = load i32, i32* %50, align 4
  %1140 = call i32 @countstones(i32 %1139)
  %1141 = icmp eq i32 %1140, 1
  br i1 %1141, label %1142, label %1145

1142:                                             ; preds = %1136
  %1143 = load i32, i32* %46, align 4
  %1144 = add nsw i32 %1143, 2
  store i32 %1144, i32* %46, align 4
  br label %1145

1145:                                             ; preds = %1142, %1136
  %1146 = load i32, i32* %50, align 4
  %1147 = call i32 @countlib(i32 %1146)
  %1148 = icmp slt i32 %1147, 6
  br i1 %1148, label %1149, label %1159

1149:                                             ; preds = %1145
  %1150 = load i32, i32* %22, align 4
  %1151 = load i32, i32* %7, align 4
  %1152 = call i32 @approxlib(i32 %1150, i32 %1151, i32 5, i32* null)
  %1153 = load i32, i32* %50, align 4
  %1154 = call i32 @countlib(i32 %1153)
  %1155 = icmp slt i32 %1152, %1154
  br i1 %1155, label %1156, label %1159

1156:                                             ; preds = %1149
  %1157 = load i32, i32* %46, align 4
  %1158 = sub nsw i32 %1157, 5
  store i32 %1158, i32* %46, align 4
  br label %1159

1159:                                             ; preds = %1156, %1149, %1145
  %1160 = load i32, i32* %50, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds [400 x i32], [400 x i32]* %47, i64 0, i64 %1161
  store i32 1, i32* %1162, align 4
  br label %1163

1163:                                             ; preds = %1159, %1125
  %1164 = load i32, i32* %50, align 4
  %1165 = call i32 @countlib(i32 %1164)
  %1166 = icmp sle i32 %1165, 2
  br i1 %1166, label %1167, label %1248

1167:                                             ; preds = %1163
  store i32 0, i32* %52, align 4
  store i32 0, i32* %53, align 4
  store i32 0, i32* %51, align 4
  br label %1168

1168:                                             ; preds = %1224, %1167
  %1169 = load i32, i32* %51, align 4
  %1170 = icmp slt i32 %1169, 4
  br i1 %1170, label %1171, label %1227

1171:                                             ; preds = %1168
  %1172 = load i32, i32* %51, align 4
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %1173
  %1175 = load i32, i32* %1174, align 4
  store i32 %1175, i32* %20, align 4
  %1176 = load i32, i32* %50, align 4
  %1177 = load i32, i32* %20, align 4
  %1178 = add nsw i32 %1176, %1177
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1179
  %1181 = load i8, i8* %1180, align 1
  %1182 = zext i8 %1181 to i32
  %1183 = icmp ne i32 %1182, 3
  br i1 %1183, label %1185, label %1184

1184:                                             ; preds = %1171
  br label %1224

1185:                                             ; preds = %1171
  %1186 = load i32, i32* %50, align 4
  %1187 = load i32, i32* %20, align 4
  %1188 = add nsw i32 %1186, %1187
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1189
  %1191 = load i8, i8* %1190, align 1
  %1192 = zext i8 %1191 to i32
  %1193 = load i32, i32* %11, align 4
  %1194 = icmp eq i32 %1192, %1193
  br i1 %1194, label %1195, label %1205

1195:                                             ; preds = %1185
  %1196 = load i32, i32* %50, align 4
  %1197 = load i32, i32* %20, align 4
  %1198 = add nsw i32 %1196, %1197
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1199
  %1201 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1200, i32 0, i32 16
  %1202 = load i32, i32* %1201, align 4
  %1203 = icmp eq i32 %1202, 0
  br i1 %1203, label %1204, label %1205

1204:                                             ; preds = %1195
  store i32 1, i32* %52, align 4
  br label %1223

1205:                                             ; preds = %1195, %1185
  %1206 = load i32, i32* %50, align 4
  %1207 = load i32, i32* %20, align 4
  %1208 = add nsw i32 %1206, %1207
  %1209 = sext i32 %1208 to i64
  %1210 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1209
  %1211 = load i8, i8* %1210, align 1
  %1212 = zext i8 %1211 to i32
  %1213 = icmp eq i32 %1212, 0
  br i1 %1213, label %1214, label %1222

1214:                                             ; preds = %1205
  %1215 = load i32, i32* %50, align 4
  %1216 = load i32, i32* %20, align 4
  %1217 = add nsw i32 %1215, %1216
  %1218 = load i32, i32* %11, align 4
  %1219 = call i32 @is_self_atari(i32 %1217, i32 %1218)
  %1220 = icmp ne i32 %1219, 0
  br i1 %1220, label %1222, label %1221

1221:                                             ; preds = %1214
  store i32 1, i32* %53, align 4
  br label %1222

1222:                                             ; preds = %1221, %1214, %1205
  br label %1223

1223:                                             ; preds = %1222, %1204
  br label %1224

1224:                                             ; preds = %1223, %1184
  %1225 = load i32, i32* %51, align 4
  %1226 = add nsw i32 %1225, 1
  store i32 %1226, i32* %51, align 4
  br label %1168, !llvm.loop !19

1227:                                             ; preds = %1168
  %1228 = load i32, i32* %22, align 4
  %1229 = load i32, i32* %7, align 4
  %1230 = call i32 @approxlib(i32 %1228, i32 %1229, i32 3, i32* null)
  %1231 = icmp sgt i32 %1230, 2
  br i1 %1231, label %1232, label %1247

1232:                                             ; preds = %1227
  %1233 = load i32, i32* %46, align 4
  %1234 = add nsw i32 %1233, 1
  store i32 %1234, i32* %46, align 4
  %1235 = load i32, i32* %52, align 4
  %1236 = icmp ne i32 %1235, 0
  br i1 %1236, label %1237, label %1246

1237:                                             ; preds = %1232
  %1238 = load i32, i32* %46, align 4
  %1239 = add nsw i32 %1238, 2
  store i32 %1239, i32* %46, align 4
  %1240 = load i32, i32* %53, align 4
  %1241 = icmp ne i32 %1240, 0
  br i1 %1241, label %1242, label %1245

1242:                                             ; preds = %1237
  %1243 = load i32, i32* %46, align 4
  %1244 = add nsw i32 %1243, 2
  store i32 %1244, i32* %46, align 4
  br label %1245

1245:                                             ; preds = %1242, %1237
  br label %1246

1246:                                             ; preds = %1245, %1232
  br label %1247

1247:                                             ; preds = %1246, %1227
  br label %1248

1248:                                             ; preds = %1247, %1163
  %1249 = load i32, i32* %41, align 4
  %1250 = add nsw i32 %1249, 1
  store i32 %1250, i32* %41, align 4
  br label %1254

1251:                                             ; preds = %1122
  %1252 = load i32, i32* %42, align 4
  %1253 = add nsw i32 %1252, 1
  store i32 %1253, i32* %42, align 4
  br label %1254

1254:                                             ; preds = %1251, %1248
  br label %1255

1255:                                             ; preds = %1254, %1086
  br label %1256

1256:                                             ; preds = %1255, %1082
  br label %1257

1257:                                             ; preds = %1256, %1004, %990
  %1258 = load i32, i32* %10, align 4
  %1259 = add nsw i32 %1258, 1
  store i32 %1259, i32* %10, align 4
  br label %974, !llvm.loop !20

1260:                                             ; preds = %1028, %974
  %1261 = load i32, i32* %45, align 4
  %1262 = icmp eq i32 %1261, 0
  br i1 %1262, label %1274, label %1263

1263:                                             ; preds = %1260
  %1264 = load i32, i32* %45, align 4
  %1265 = icmp eq i32 %1264, 3
  br i1 %1265, label %1274, label %1266

1266:                                             ; preds = %1263
  %1267 = load i32, i32* %40, align 4
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1274, label %1269

1269:                                             ; preds = %1266
  %1270 = load i32, i32* %41, align 4
  %1271 = load i32, i32* %42, align 4
  %1272 = add nsw i32 %1270, %1271
  %1273 = icmp eq i32 %1272, 0
  br i1 %1273, label %1274, label %1275

1274:                                             ; preds = %1269, %1266, %1263, %1260
  br label %1417

1275:                                             ; preds = %1269
  %1276 = load i32, i32* %46, align 4
  %1277 = icmp slt i32 %1276, 0
  br i1 %1277, label %1278, label %1279

1278:                                             ; preds = %1275
  store i32 0, i32* %46, align 4
  br label %1279

1279:                                             ; preds = %1278, %1275
  %1280 = load i32, i32* %40, align 4
  %1281 = mul nsw i32 4, %1280
  %1282 = load i32, i32* %46, align 4
  %1283 = add nsw i32 %1281, %1282
  %1284 = load i32, i32* %22, align 4
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1285
  store i32 %1283, i32* %1286, align 4
  %1287 = load i32, i32* %45, align 4
  %1288 = icmp eq i32 %1287, 9
  br i1 %1288, label %1289, label %1322

1289:                                             ; preds = %1279
  %1290 = load i32, i32* %41, align 4
  %1291 = load i32, i32* %22, align 4
  %1292 = sext i32 %1291 to i64
  %1293 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1292
  %1294 = load i32, i32* %1293, align 4
  %1295 = add nsw i32 %1294, %1290
  store i32 %1295, i32* %1293, align 4
  %1296 = load i32, i32* %41, align 4
  %1297 = icmp slt i32 %1296, 2
  br i1 %1297, label %1298, label %1305

1298:                                             ; preds = %1289
  %1299 = load i32, i32* %42, align 4
  %1300 = load i32, i32* %22, align 4
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1301
  %1303 = load i32, i32* %1302, align 4
  %1304 = add nsw i32 %1303, %1299
  store i32 %1304, i32* %1302, align 4
  br label %1305

1305:                                             ; preds = %1298, %1289
  %1306 = load i32, i32* %44, align 4
  %1307 = icmp sgt i32 %1306, 1
  br i1 %1307, label %1308, label %1321

1308:                                             ; preds = %1305
  %1309 = load i32, i32* %40, align 4
  %1310 = icmp sge i32 %1309, 1
  br i1 %1310, label %1311, label %1321

1311:                                             ; preds = %1308
  %1312 = load i32, i32* %44, align 4
  %1313 = sub nsw i32 %1312, 2
  %1314 = mul nsw i32 5, %1313
  %1315 = add nsw i32 10, %1314
  %1316 = load i32, i32* %22, align 4
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1317
  %1319 = load i32, i32* %1318, align 4
  %1320 = add nsw i32 %1319, %1315
  store i32 %1320, i32* %1318, align 4
  br label %1321

1321:                                             ; preds = %1311, %1308, %1305
  br label %1333

1322:                                             ; preds = %1279
  %1323 = load i32, i32* %40, align 4
  %1324 = icmp sgt i32 %1323, 2
  br i1 %1324, label %1325, label %1332

1325:                                             ; preds = %1322
  %1326 = load i32, i32* %42, align 4
  %1327 = load i32, i32* %22, align 4
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1328
  %1330 = load i32, i32* %1329, align 4
  %1331 = add nsw i32 %1330, %1326
  store i32 %1331, i32* %1329, align 4
  br label %1332

1332:                                             ; preds = %1325, %1322
  br label %1333

1333:                                             ; preds = %1332, %1321
  %1334 = load i32, i32* %43, align 4
  %1335 = icmp sgt i32 %1334, 1
  br i1 %1335, label %1336, label %1345

1336:                                             ; preds = %1333
  %1337 = load i32, i32* %43, align 4
  %1338 = sub nsw i32 %1337, 1
  %1339 = mul nsw i32 10, %1338
  %1340 = load i32, i32* %22, align 4
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1341
  %1343 = load i32, i32* %1342, align 4
  %1344 = add nsw i32 %1343, %1339
  store i32 %1344, i32* %1342, align 4
  br label %1345

1345:                                             ; preds = %1336, %1333
  %1346 = load i32, i32* %22, align 4
  %1347 = sext i32 %1346 to i64
  %1348 = getelementptr inbounds [400 x float], [400 x float]* %14, i64 0, i64 %1347
  %1349 = load float, float* %1348, align 4
  %1350 = fpext float %1349 to double
  %1351 = fmul double 2.000000e+01, %1350
  %1352 = fptosi double %1351 to i32
  store i32 %1352, i32* %54, align 4
  %1353 = load i32, i32* %22, align 4
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1354
  %1356 = load float, float* %1355, align 4
  %1357 = fpext float %1356 to double
  %1358 = fmul double 2.000000e+01, %1357
  %1359 = fptosi double %1358 to i32
  store i32 %1359, i32* %55, align 4
  %1360 = load i32, i32* %54, align 4
  %1361 = load i32, i32* %55, align 4
  %1362 = add nsw i32 %1360, %1361
  store i32 %1362, i32* %56, align 4
  %1363 = load i32, i32* %22, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1364
  %1366 = load i32, i32* %1365, align 4
  %1367 = icmp sgt i32 %1366, 0
  br i1 %1367, label %1368, label %1382

1368:                                             ; preds = %1345
  %1369 = load i32, i32* %22, align 4
  %1370 = sext i32 %1369 to i64
  %1371 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1370
  %1372 = load i32, i32* %1371, align 4
  %1373 = load i32, i32* %56, align 4
  %1374 = add nsw i32 %1372, %1373
  %1375 = icmp sle i32 %1374, 0
  br i1 %1375, label %1376, label %1382

1376:                                             ; preds = %1368
  %1377 = load i32, i32* %22, align 4
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1378
  %1380 = load i32, i32* %1379, align 4
  %1381 = sub nsw i32 1, %1380
  store i32 %1381, i32* %56, align 4
  br label %1382

1382:                                             ; preds = %1376, %1368, %1345
  %1383 = load i32, i32* %56, align 4
  %1384 = load i32, i32* %22, align 4
  %1385 = sext i32 %1384 to i64
  %1386 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1385
  %1387 = load i32, i32* %1386, align 4
  %1388 = add nsw i32 %1387, %1383
  store i32 %1388, i32* %1386, align 4
  %1389 = load i32, i32* @debug, align 4
  %1390 = and i32 %1389, 131072
  %1391 = icmp ne i32 %1390, 0
  br i1 %1391, label %1392, label %1401

1392:                                             ; preds = %1382
  %1393 = load i32, i32* %22, align 4
  %1394 = load i32, i32* %22, align 4
  %1395 = sext i32 %1394 to i64
  %1396 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1395
  %1397 = load i32, i32* %1396, align 4
  %1398 = load i32, i32* %54, align 4
  %1399 = load i32, i32* %55, align 4
  %1400 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i32 %1393, i32 %1397, i32 %1398, i32 %1399)
  br label %1401

1401:                                             ; preds = %1392, %1382
  %1402 = load i32, i32* %22, align 4
  %1403 = load i32, i32* %7, align 4
  %1404 = call i32 @is_ko(i32 %1402, i32 %1403, i32* null)
  %1405 = icmp ne i32 %1404, 0
  br i1 %1405, label %1406, label %1416

1406:                                             ; preds = %1401
  %1407 = load i32, i32* %22, align 4
  %1408 = sext i32 %1407 to i64
  %1409 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1408
  %1410 = load i32, i32* %1409, align 4
  %1411 = add nsw i32 %1410, 1
  %1412 = sdiv i32 %1411, 2
  %1413 = load i32, i32* %22, align 4
  %1414 = sext i32 %1413 to i64
  %1415 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1414
  store i32 %1412, i32* %1415, align 4
  br label %1416

1416:                                             ; preds = %1406, %1401
  br label %1417

1417:                                             ; preds = %1416, %1274, %970
  %1418 = load i32, i32* %22, align 4
  %1419 = add nsw i32 %1418, 1
  store i32 %1419, i32* %22, align 4
  br label %951, !llvm.loop !21

1420:                                             ; preds = %951
  br label %1421

1421:                                             ; preds = %1420, %1676
  store i32 0, i32* %23, align 4
  store i32 0, i32* %21, align 4
  store i32 21, i32* %22, align 4
  br label %1422

1422:                                             ; preds = %1446, %1421
  %1423 = load i32, i32* %22, align 4
  %1424 = icmp slt i32 %1423, 400
  br i1 %1424, label %1425, label %1449

1425:                                             ; preds = %1422
  %1426 = load i32, i32* %22, align 4
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1427
  %1429 = load i8, i8* %1428, align 1
  %1430 = zext i8 %1429 to i32
  %1431 = icmp ne i32 %1430, 3
  br i1 %1431, label %1432, label %1445

1432:                                             ; preds = %1425
  %1433 = load i32, i32* %22, align 4
  %1434 = sext i32 %1433 to i64
  %1435 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1434
  %1436 = load i32, i32* %1435, align 4
  %1437 = load i32, i32* %23, align 4
  %1438 = icmp sgt i32 %1436, %1437
  br i1 %1438, label %1439, label %1445

1439:                                             ; preds = %1432
  %1440 = load i32, i32* %22, align 4
  %1441 = sext i32 %1440 to i64
  %1442 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1441
  %1443 = load i32, i32* %1442, align 4
  store i32 %1443, i32* %23, align 4
  %1444 = load i32, i32* %22, align 4
  store i32 %1444, i32* %21, align 4
  br label %1445

1445:                                             ; preds = %1439, %1432, %1425
  br label %1446

1446:                                             ; preds = %1445
  %1447 = load i32, i32* %22, align 4
  %1448 = add nsw i32 %1447, 1
  store i32 %1448, i32* %22, align 4
  br label %1422, !llvm.loop !22

1449:                                             ; preds = %1422
  %1450 = load i32, i32* %21, align 4
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1452, label %1453

1452:                                             ; preds = %1449
  br label %1677

1453:                                             ; preds = %1449
  %1454 = load i32, i32* %21, align 4
  %1455 = sext i32 %1454 to i64
  %1456 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %1455
  %1457 = load i32, i32* %1456, align 4
  store i32 %1457, i32* %57, align 4
  %1458 = load i32, i32* %21, align 4
  %1459 = load i32, i32* %7, align 4
  %1460 = call i32 @is_illegal_ko_capture(i32 %1458, i32 %1459)
  %1461 = icmp ne i32 %1460, 0
  br i1 %1461, label %1501, label %1462

1462:                                             ; preds = %1453
  %1463 = load i32, i32* %21, align 4
  %1464 = load i32, i32* %7, align 4
  %1465 = call i32 @safe_move(i32 %1463, i32 %1464)
  %1466 = icmp ne i32 %1465, 0
  br i1 %1466, label %1467, label %1501

1467:                                             ; preds = %1462
  %1468 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1469 = load i32, i32* %57, align 4
  %1470 = sext i32 %1469 to i64
  %1471 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1470
  %1472 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1471, i32 0, i32 1
  %1473 = load i32, i32* %1472, align 4
  %1474 = sext i32 %1473 to i64
  %1475 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1468, i64 %1474
  %1476 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1475, i32 0, i32 6
  %1477 = load i32, i32* %1476, align 4
  %1478 = icmp ne i32 %1477, 9
  br i1 %1478, label %1479, label %1496

1479:                                             ; preds = %1467
  %1480 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1481 = load i32, i32* %57, align 4
  %1482 = sext i32 %1481 to i64
  %1483 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1482
  %1484 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1483, i32 0, i32 1
  %1485 = load i32, i32* %1484, align 4
  %1486 = sext i32 %1485 to i64
  %1487 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1480, i64 %1486
  %1488 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1487, i32 0, i32 6
  %1489 = load i32, i32* %1488, align 4
  %1490 = icmp ne i32 %1489, 8
  br i1 %1490, label %1491, label %1496

1491:                                             ; preds = %1479
  %1492 = load i32, i32* %21, align 4
  %1493 = load i32, i32* %57, align 4
  %1494 = call i32 @owl_does_defend(i32 %1492, i32 %1493, i32* null)
  %1495 = icmp ne i32 %1494, 5
  br i1 %1495, label %1501, label %1496

1496:                                             ; preds = %1491, %1479, %1467
  %1497 = load i32, i32* %21, align 4
  %1498 = load i32, i32* %7, align 4
  %1499 = call i32 @confirm_safety(i32 %1497, i32 %1498, i32* null, i8* null)
  %1500 = icmp ne i32 %1499, 0
  br i1 %1500, label %1505, label %1501

1501:                                             ; preds = %1496, %1491, %1462, %1453
  %1502 = load i32, i32* %21, align 4
  %1503 = sext i32 %1502 to i64
  %1504 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1503
  store i32 0, i32* %1504, align 4
  br label %1676

1505:                                             ; preds = %1496
  %1506 = load i32, i32* %21, align 4
  %1507 = load i32, i32* %7, align 4
  %1508 = call i32 @approxlib(i32 %1506, i32 %1507, i32 5, i32* null)
  store i32 %1508, i32* %58, align 4
  store i32 1, i32* %59, align 4
  %1509 = load i32, i32* %58, align 4
  %1510 = icmp slt i32 %1509, 5
  br i1 %1510, label %1511, label %1657

1511:                                             ; preds = %1505
  store i32 0, i32* %10, align 4
  br label %1512

1512:                                             ; preds = %1540, %1511
  %1513 = load i32, i32* %10, align 4
  %1514 = icmp slt i32 %1513, 4
  br i1 %1514, label %1515, label %1543

1515:                                             ; preds = %1512
  %1516 = load i32, i32* %21, align 4
  %1517 = load i32, i32* %10, align 4
  %1518 = sext i32 %1517 to i64
  %1519 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %1518
  %1520 = load i32, i32* %1519, align 4
  %1521 = add nsw i32 %1516, %1520
  %1522 = sext i32 %1521 to i64
  %1523 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1522
  %1524 = load i8, i8* %1523, align 1
  %1525 = zext i8 %1524 to i32
  %1526 = load i32, i32* %7, align 4
  %1527 = icmp eq i32 %1525, %1526
  br i1 %1527, label %1528, label %1539

1528:                                             ; preds = %1515
  %1529 = load i32, i32* %21, align 4
  %1530 = load i32, i32* %10, align 4
  %1531 = sext i32 %1530 to i64
  %1532 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %1531
  %1533 = load i32, i32* %1532, align 4
  %1534 = add nsw i32 %1529, %1533
  %1535 = call i32 @countlib(i32 %1534)
  %1536 = load i32, i32* %58, align 4
  %1537 = icmp sgt i32 %1535, %1536
  br i1 %1537, label %1538, label %1539

1538:                                             ; preds = %1528
  br label %1543

1539:                                             ; preds = %1528, %1515
  br label %1540

1540:                                             ; preds = %1539
  %1541 = load i32, i32* %10, align 4
  %1542 = add nsw i32 %1541, 1
  store i32 %1542, i32* %10, align 4
  br label %1512, !llvm.loop !23

1543:                                             ; preds = %1538, %1512
  %1544 = load i32, i32* %10, align 4
  %1545 = icmp slt i32 %1544, 4
  br i1 %1545, label %1546, label %1656

1546:                                             ; preds = %1543
  %1547 = load i32, i32* %21, align 4
  %1548 = load i32, i32* %7, align 4
  %1549 = load i32, i32* %21, align 4
  %1550 = load i32, i32* %10, align 4
  %1551 = sext i32 %1550 to i64
  %1552 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %1551
  %1553 = load i32, i32* %1552, align 4
  %1554 = add nsw i32 %1549, %1553
  %1555 = call i32 @trymove(i32 %1547, i32 %1548, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %1554, i32 0, i32 0)
  %1556 = icmp ne i32 %1555, 0
  br i1 %1556, label %1557, label %1655

1557:                                             ; preds = %1546
  %1558 = load i32, i32* %21, align 4
  %1559 = getelementptr inbounds [160 x i32], [160 x i32]* %60, i64 0, i64 0
  %1560 = call i32 @chainlinks(i32 %1558, i32* %1559)
  store i32 %1560, i32* %61, align 4
  store i32 0, i32* %62, align 4
  br label %1561

1561:                                             ; preds = %1606, %1557
  %1562 = load i32, i32* %62, align 4
  %1563 = load i32, i32* %61, align 4
  %1564 = icmp slt i32 %1562, %1563
  br i1 %1564, label %1565, label %1609

1565:                                             ; preds = %1561
  %1566 = load i32, i32* %62, align 4
  %1567 = sext i32 %1566 to i64
  %1568 = getelementptr inbounds [160 x i32], [160 x i32]* %60, i64 0, i64 %1567
  %1569 = load i32, i32* %1568, align 4
  %1570 = sext i32 %1569 to i64
  %1571 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1570
  %1572 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1571, i32 0, i32 16
  %1573 = getelementptr inbounds [10 x i32], [10 x i32]* %1572, i64 0, i64 0
  %1574 = load i32, i32* %1573, align 4
  %1575 = icmp ne i32 %1574, 0
  br i1 %1575, label %1576, label %1605

1576:                                             ; preds = %1565
  %1577 = load i32, i32* %62, align 4
  %1578 = sext i32 %1577 to i64
  %1579 = getelementptr inbounds [160 x i32], [160 x i32]* %60, i64 0, i64 %1578
  %1580 = load i32, i32* %1579, align 4
  %1581 = call i32 @find_defense(i32 %1580, i32* null)
  %1582 = load i32, i32* %62, align 4
  %1583 = sext i32 %1582 to i64
  %1584 = getelementptr inbounds [160 x i32], [160 x i32]* %60, i64 0, i64 %1583
  %1585 = load i32, i32* %1584, align 4
  %1586 = sext i32 %1585 to i64
  %1587 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1586
  %1588 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1587, i32 0, i32 18
  %1589 = getelementptr inbounds [10 x i32], [10 x i32]* %1588, i64 0, i64 0
  %1590 = load i32, i32* %1589, align 4
  %1591 = icmp sgt i32 %1581, %1590
  br i1 %1591, label %1592, label %1605

1592:                                             ; preds = %1576
  %1593 = load i32, i32* @debug, align 4
  %1594 = and i32 %1593, 131072
  %1595 = icmp ne i32 %1594, 0
  br i1 %1595, label %1597, label %1596

1596:                                             ; preds = %1592
  br label %1604

1597:                                             ; preds = %1592
  %1598 = load i32, i32* %62, align 4
  %1599 = sext i32 %1598 to i64
  %1600 = getelementptr inbounds [160 x i32], [160 x i32]* %60, i64 0, i64 %1599
  %1601 = load i32, i32* %1600, align 4
  %1602 = load i32, i32* %21, align 4
  %1603 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %1601, i32 %1602)
  br label %1604

1604:                                             ; preds = %1597, %1596
  store i32 0, i32* %59, align 4
  br label %1605

1605:                                             ; preds = %1604, %1576, %1565
  br label %1606

1606:                                             ; preds = %1605
  %1607 = load i32, i32* %62, align 4
  %1608 = add nsw i32 %1607, 1
  store i32 %1608, i32* %62, align 4
  br label %1561, !llvm.loop !24

1609:                                             ; preds = %1561
  call void @popgo()
  store i32 0, i32* %62, align 4
  br label %1610

1610:                                             ; preds = %1651, %1609
  %1611 = load i32, i32* %62, align 4
  %1612 = load i32, i32* %61, align 4
  %1613 = icmp slt i32 %1611, %1612
  br i1 %1613, label %1614, label %1617

1614:                                             ; preds = %1610
  %1615 = load i32, i32* %59, align 4
  %1616 = icmp ne i32 %1615, 0
  br label %1617

1617:                                             ; preds = %1614, %1610
  %1618 = phi i1 [ false, %1610 ], [ %1616, %1614 ]
  br i1 %1618, label %1619, label %1654

1619:                                             ; preds = %1617
  %1620 = load i32, i32* %62, align 4
  %1621 = sext i32 %1620 to i64
  %1622 = getelementptr inbounds [160 x i32], [160 x i32]* %60, i64 0, i64 %1621
  %1623 = load i32, i32* %1622, align 4
  %1624 = sext i32 %1623 to i64
  %1625 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1624
  %1626 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1625, i32 0, i32 16
  %1627 = load i32, i32* %1626, align 4
  %1628 = icmp eq i32 %1627, 0
  br i1 %1628, label %1629, label %1650

1629:                                             ; preds = %1619
  %1630 = load i32, i32* %21, align 4
  %1631 = load i32, i32* %62, align 4
  %1632 = sext i32 %1631 to i64
  %1633 = getelementptr inbounds [160 x i32], [160 x i32]* %60, i64 0, i64 %1632
  %1634 = load i32, i32* %1633, align 4
  %1635 = call i32 @owl_does_attack(i32 %1630, i32 %1634, i32* null)
  %1636 = icmp ne i32 %1635, 0
  br i1 %1636, label %1650, label %1637

1637:                                             ; preds = %1629
  %1638 = load i32, i32* @debug, align 4
  %1639 = and i32 %1638, 131072
  %1640 = icmp ne i32 %1639, 0
  br i1 %1640, label %1642, label %1641

1641:                                             ; preds = %1637
  br label %1649

1642:                                             ; preds = %1637
  %1643 = load i32, i32* %62, align 4
  %1644 = sext i32 %1643 to i64
  %1645 = getelementptr inbounds [160 x i32], [160 x i32]* %60, i64 0, i64 %1644
  %1646 = load i32, i32* %1645, align 4
  %1647 = load i32, i32* %21, align 4
  %1648 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 %1646, i32 %1647)
  br label %1649

1649:                                             ; preds = %1642, %1641
  store i32 0, i32* %59, align 4
  br label %1650

1650:                                             ; preds = %1649, %1629, %1619
  br label %1651

1651:                                             ; preds = %1650
  %1652 = load i32, i32* %62, align 4
  %1653 = add nsw i32 %1652, 1
  store i32 %1653, i32* %62, align 4
  br label %1610, !llvm.loop !25

1654:                                             ; preds = %1617
  br label %1655

1655:                                             ; preds = %1654, %1546
  br label %1656

1656:                                             ; preds = %1655, %1543
  br label %1657

1657:                                             ; preds = %1656, %1505
  %1658 = load i32, i32* %59, align 4
  %1659 = icmp ne i32 %1658, 0
  br i1 %1659, label %1664, label %1660

1660:                                             ; preds = %1657
  %1661 = load i32, i32* %21, align 4
  %1662 = sext i32 %1661 to i64
  %1663 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %1662
  store i32 0, i32* %1663, align 4
  br label %1675

1664:                                             ; preds = %1657
  %1665 = load i32, i32* %21, align 4
  %1666 = load i32*, i32** %6, align 8
  store i32 %1665, i32* %1666, align 4
  %1667 = load i32, i32* @debug, align 4
  %1668 = and i32 %1667, 131072
  %1669 = icmp ne i32 %1668, 0
  br i1 %1669, label %1671, label %1670

1670:                                             ; preds = %1664
  br label %1674

1671:                                             ; preds = %1664
  %1672 = load i32, i32* %21, align 4
  %1673 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32 %1672)
  br label %1674

1674:                                             ; preds = %1671, %1670
  store i32 1, i32* %5, align 4
  br label %1981

1675:                                             ; preds = %1660
  br label %1676

1676:                                             ; preds = %1675, %1501
  br label %1421

1677:                                             ; preds = %1452
  store i32 21, i32* %22, align 4
  br label %1678

1678:                                             ; preds = %1891, %1677
  %1679 = load i32, i32* %22, align 4
  %1680 = icmp slt i32 %1679, 400
  br i1 %1680, label %1681, label %1894

1681:                                             ; preds = %1678
  store i32 0, i32* %64, align 4
  store i32 0, i32* %65, align 4
  %1682 = load i32, i32* %22, align 4
  %1683 = sext i32 %1682 to i64
  %1684 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1683
  %1685 = load i8, i8* %1684, align 1
  %1686 = zext i8 %1685 to i32
  %1687 = icmp ne i32 %1686, 0
  br i1 %1687, label %1694, label %1688

1688:                                             ; preds = %1681
  %1689 = load i32, i32* %22, align 4
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %1690
  %1692 = load i32, i32* %1691, align 4
  %1693 = icmp ne i32 %1692, -1
  br i1 %1693, label %1694, label %1695

1694:                                             ; preds = %1688, %1681
  br label %1891

1695:                                             ; preds = %1688
  store i32 0, i32* %63, align 4
  store i32 0, i32* %10, align 4
  br label %1696

1696:                                             ; preds = %1753, %1695
  %1697 = load i32, i32* %10, align 4
  %1698 = icmp slt i32 %1697, 4
  br i1 %1698, label %1699, label %1756

1699:                                             ; preds = %1696
  %1700 = load i32, i32* %22, align 4
  %1701 = load i32, i32* %10, align 4
  %1702 = sext i32 %1701 to i64
  %1703 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %1702
  %1704 = load i32, i32* %1703, align 4
  %1705 = add nsw i32 %1700, %1704
  store i32 %1705, i32* %66, align 4
  %1706 = load i32, i32* %66, align 4
  %1707 = sext i32 %1706 to i64
  %1708 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1707
  %1709 = load i8, i8* %1708, align 1
  %1710 = zext i8 %1709 to i32
  %1711 = icmp ne i32 %1710, 3
  br i1 %1711, label %1713, label %1712

1712:                                             ; preds = %1699
  br label %1753

1713:                                             ; preds = %1699
  %1714 = load i32, i32* %66, align 4
  %1715 = sext i32 %1714 to i64
  %1716 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1715
  %1717 = load i8, i8* %1716, align 1
  %1718 = zext i8 %1717 to i32
  %1719 = load i32, i32* %11, align 4
  %1720 = icmp eq i32 %1718, %1719
  br i1 %1720, label %1721, label %1752

1721:                                             ; preds = %1713
  %1722 = load i32, i32* %66, align 4
  %1723 = sext i32 %1722 to i64
  %1724 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1723
  %1725 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1724, i32 0, i32 16
  %1726 = load i32, i32* %1725, align 4
  %1727 = icmp ne i32 %1726, 1
  br i1 %1727, label %1728, label %1752

1728:                                             ; preds = %1721
  %1729 = load i32, i32* %9, align 4
  %1730 = icmp ne i32 %1729, 0
  br i1 %1730, label %1738, label %1731

1731:                                             ; preds = %1728
  %1732 = load i32, i32* %66, align 4
  %1733 = sext i32 %1732 to i64
  %1734 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1733
  %1735 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1734, i32 0, i32 14
  %1736 = load i32, i32* %1735, align 4
  %1737 = icmp ne i32 %1736, 0
  br i1 %1737, label %1738, label %1752

1738:                                             ; preds = %1731, %1728
  %1739 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1740 = load i32, i32* %66, align 4
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1741
  %1743 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1742, i32 0, i32 1
  %1744 = load i32, i32* %1743, align 4
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1739, i64 %1745
  %1747 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1746, i32 0, i32 6
  %1748 = load i32, i32* %1747, align 4
  %1749 = icmp ne i32 %1748, 5
  br i1 %1749, label %1750, label %1752

1750:                                             ; preds = %1738
  %1751 = load i32, i32* %66, align 4
  store i32 %1751, i32* %63, align 4
  br label %1756

1752:                                             ; preds = %1738, %1731, %1721, %1713
  br label %1753

1753:                                             ; preds = %1752, %1712
  %1754 = load i32, i32* %10, align 4
  %1755 = add nsw i32 %1754, 1
  store i32 %1755, i32* %10, align 4
  br label %1696, !llvm.loop !26

1756:                                             ; preds = %1750, %1696
  %1757 = load i32, i32* %63, align 4
  %1758 = icmp eq i32 %1757, 0
  br i1 %1758, label %1759, label %1760

1759:                                             ; preds = %1756
  br label %1891

1760:                                             ; preds = %1756
  %1761 = load i32, i32* %22, align 4
  %1762 = load i32, i32* %7, align 4
  %1763 = load i32, i32* %63, align 4
  %1764 = call i32 @trymove(i32 %1761, i32 %1762, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0), i32 %1763, i32 0, i32 0)
  %1765 = icmp ne i32 %1764, 0
  br i1 %1765, label %1767, label %1766

1766:                                             ; preds = %1760
  br label %1891

1767:                                             ; preds = %1760
  store i32 1, i32* %65, align 4
  store i32 0, i32* %10, align 4
  br label %1768

1768:                                             ; preds = %1809, %1767
  %1769 = load i32, i32* %10, align 4
  %1770 = icmp slt i32 %1769, 4
  br i1 %1770, label %1771, label %1812

1771:                                             ; preds = %1768
  %1772 = load i32, i32* %22, align 4
  %1773 = load i32, i32* %10, align 4
  %1774 = sext i32 %1773 to i64
  %1775 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %1774
  %1776 = load i32, i32* %1775, align 4
  %1777 = add nsw i32 %1772, %1776
  %1778 = sext i32 %1777 to i64
  %1779 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1778
  %1780 = load i8, i8* %1779, align 1
  %1781 = zext i8 %1780 to i32
  %1782 = load i32, i32* %7, align 4
  %1783 = icmp eq i32 %1781, %1782
  br i1 %1783, label %1784, label %1808

1784:                                             ; preds = %1771
  %1785 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1786 = load i32, i32* %22, align 4
  %1787 = load i32, i32* %10, align 4
  %1788 = sext i32 %1787 to i64
  %1789 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %1788
  %1790 = load i32, i32* %1789, align 4
  %1791 = add nsw i32 %1786, %1790
  %1792 = sext i32 %1791 to i64
  %1793 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1792
  %1794 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1793, i32 0, i32 1
  %1795 = load i32, i32* %1794, align 4
  %1796 = sext i32 %1795 to i64
  %1797 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1785, i64 %1796
  %1798 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1797, i32 0, i32 6
  %1799 = load i32, i32* %1798, align 4
  %1800 = icmp ne i32 %1799, 5
  br i1 %1800, label %1801, label %1808

1801:                                             ; preds = %1784
  store i32 0, i32* %65, align 4
  %1802 = load i32, i32* %22, align 4
  %1803 = load i32, i32* %10, align 4
  %1804 = sext i32 %1803 to i64
  %1805 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %1804
  %1806 = load i32, i32* %1805, align 4
  %1807 = add nsw i32 %1802, %1806
  store i32 %1807, i32* %64, align 4
  br label %1812

1808:                                             ; preds = %1784, %1771
  br label %1809

1809:                                             ; preds = %1808
  %1810 = load i32, i32* %10, align 4
  %1811 = add nsw i32 %1810, 1
  store i32 %1811, i32* %10, align 4
  br label %1768, !llvm.loop !27

1812:                                             ; preds = %1801, %1768
  %1813 = load i32, i32* %22, align 4
  store i32 %1813, i32* %21, align 4
  %1814 = load i32, i32* %65, align 4
  %1815 = icmp ne i32 %1814, 0
  br i1 %1815, label %1838, label %1816

1816:                                             ; preds = %1812
  br label %1817

1817:                                             ; preds = %1831, %1816
  %1818 = load i32, i32* %22, align 4
  %1819 = call i32 @countlib(i32 %1818)
  %1820 = icmp eq i32 %1819, 1
  br i1 %1820, label %1821, label %1832

1821:                                             ; preds = %1817
  %1822 = load i32, i32* %22, align 4
  %1823 = call i32 @findlib(i32 %1822, i32 1, i32* %67)
  %1824 = load i32, i32* %67, align 4
  store i32 %1824, i32* %21, align 4
  %1825 = load i32, i32* %21, align 4
  %1826 = load i32, i32* %7, align 4
  %1827 = load i32, i32* %63, align 4
  %1828 = call i32 @trymove(i32 %1825, i32 %1826, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %1827, i32 0, i32 0)
  %1829 = icmp ne i32 %1828, 0
  br i1 %1829, label %1831, label %1830

1830:                                             ; preds = %1821
  br label %1832

1831:                                             ; preds = %1821
  br label %1817, !llvm.loop !28

1832:                                             ; preds = %1830, %1817
  %1833 = load i32, i32* %22, align 4
  %1834 = call i32 @countlib(i32 %1833)
  %1835 = icmp eq i32 %1834, 1
  br i1 %1835, label %1836, label %1837

1836:                                             ; preds = %1832
  store i32 0, i32* %21, align 4
  br label %1837

1837:                                             ; preds = %1836, %1832
  br label %1838

1838:                                             ; preds = %1837, %1812
  br label %1839

1839:                                             ; preds = %1842, %1838
  %1840 = load i32, i32* @stackp, align 4
  %1841 = icmp sgt i32 %1840, 0
  br i1 %1841, label %1842, label %1843

1842:                                             ; preds = %1839
  call void @popgo()
  br label %1839, !llvm.loop !29

1843:                                             ; preds = %1839
  %1844 = load i32, i32* %21, align 4
  %1845 = icmp eq i32 %1844, 0
  br i1 %1845, label %1846, label %1847

1846:                                             ; preds = %1843
  br label %1891

1847:                                             ; preds = %1843
  %1848 = load i32, i32* %65, align 4
  %1849 = icmp ne i32 %1848, 0
  br i1 %1849, label %1856, label %1850

1850:                                             ; preds = %1847
  %1851 = load i32, i32* %21, align 4
  %1852 = load i32, i32* %7, align 4
  %1853 = call i32 @is_self_atari(i32 %1851, i32 %1852)
  %1854 = icmp ne i32 %1853, 0
  br i1 %1854, label %1855, label %1856

1855:                                             ; preds = %1850
  br label %1891

1856:                                             ; preds = %1850, %1847
  %1857 = load i32, i32* %21, align 4
  %1858 = load i32, i32* %63, align 4
  %1859 = call i32 @owl_does_attack(i32 %1857, i32 %1858, i32* null)
  %1860 = icmp eq i32 %1859, 5
  br i1 %1860, label %1861, label %1890

1861:                                             ; preds = %1856
  %1862 = load i32, i32* %64, align 4
  %1863 = icmp ne i32 %1862, 0
  br i1 %1863, label %1864, label %1870

1864:                                             ; preds = %1861
  %1865 = load i32, i32* %21, align 4
  %1866 = load i32, i32* %64, align 4
  %1867 = call i32 @owl_does_defend(i32 %1865, i32 %1866, i32* null)
  %1868 = icmp ne i32 %1867, 0
  br i1 %1868, label %1870, label %1869

1869:                                             ; preds = %1864
  br label %1891

1870:                                             ; preds = %1864, %1861
  %1871 = load i32, i32* %65, align 4
  %1872 = icmp ne i32 %1871, 0
  br i1 %1872, label %1879, label %1873

1873:                                             ; preds = %1870
  %1874 = load i32, i32* %21, align 4
  %1875 = load i32, i32* %7, align 4
  %1876 = call i32 @confirm_safety(i32 %1874, i32 %1875, i32* null, i8* null)
  %1877 = icmp ne i32 %1876, 0
  br i1 %1877, label %1879, label %1878

1878:                                             ; preds = %1873
  br label %1891

1879:                                             ; preds = %1873, %1870
  %1880 = load i32, i32* %21, align 4
  %1881 = load i32*, i32** %6, align 8
  store i32 %1880, i32* %1881, align 4
  %1882 = load i32, i32* @debug, align 4
  %1883 = and i32 %1882, 131072
  %1884 = icmp ne i32 %1883, 0
  br i1 %1884, label %1886, label %1885

1885:                                             ; preds = %1879
  br label %1889

1886:                                             ; preds = %1879
  %1887 = load i32, i32* %21, align 4
  %1888 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0), i32 %1887)
  br label %1889

1889:                                             ; preds = %1886, %1885
  store i32 1, i32* %5, align 4
  br label %1981

1890:                                             ; preds = %1856
  br label %1891

1891:                                             ; preds = %1890, %1878, %1869, %1855, %1846, %1766, %1759, %1694
  %1892 = load i32, i32* %22, align 4
  %1893 = add nsw i32 %1892, 1
  store i32 %1893, i32* %22, align 4
  br label %1678, !llvm.loop !30

1894:                                             ; preds = %1678
  store i32 21, i32* %22, align 4
  br label %1895

1895:                                             ; preds = %1977, %1894
  %1896 = load i32, i32* %22, align 4
  %1897 = icmp slt i32 %1896, 400
  br i1 %1897, label %1898, label %1980

1898:                                             ; preds = %1895
  %1899 = load i32, i32* %22, align 4
  %1900 = sext i32 %1899 to i64
  %1901 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1900
  %1902 = load i8, i8* %1901, align 1
  %1903 = zext i8 %1902 to i32
  %1904 = load i32, i32* %11, align 4
  %1905 = icmp eq i32 %1903, %1904
  br i1 %1905, label %1906, label %1976

1906:                                             ; preds = %1898
  %1907 = load i32, i32* %22, align 4
  %1908 = sext i32 %1907 to i64
  %1909 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1908
  %1910 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1909, i32 0, i32 14
  %1911 = load i32, i32* %1910, align 4
  %1912 = icmp eq i32 %1911, 3
  br i1 %1912, label %1916, label %1913

1913:                                             ; preds = %1906
  %1914 = load i32, i32* %9, align 4
  %1915 = icmp ne i32 %1914, 0
  br i1 %1915, label %1916, label %1976

1916:                                             ; preds = %1913, %1906
  %1917 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1918 = load i32, i32* %22, align 4
  %1919 = sext i32 %1918 to i64
  %1920 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1919
  %1921 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1920, i32 0, i32 1
  %1922 = load i32, i32* %1921, align 4
  %1923 = sext i32 %1922 to i64
  %1924 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1917, i64 %1923
  %1925 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1924, i32 0, i32 6
  %1926 = load i32, i32* %1925, align 4
  %1927 = icmp eq i32 %1926, 0
  br i1 %1927, label %1940, label %1928

1928:                                             ; preds = %1916
  %1929 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1930 = load i32, i32* %22, align 4
  %1931 = sext i32 %1930 to i64
  %1932 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1931
  %1933 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1932, i32 0, i32 1
  %1934 = load i32, i32* %1933, align 4
  %1935 = sext i32 %1934 to i64
  %1936 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1929, i64 %1935
  %1937 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1936, i32 0, i32 6
  %1938 = load i32, i32* %1937, align 4
  %1939 = icmp eq i32 %1938, 6
  br i1 %1939, label %1940, label %1976

1940:                                             ; preds = %1928, %1916
  %1941 = load i32, i32* %22, align 4
  %1942 = sext i32 %1941 to i64
  %1943 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1942
  %1944 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1943, i32 0, i32 16
  %1945 = getelementptr inbounds [10 x i32], [10 x i32]* %1944, i64 0, i64 0
  %1946 = load i32, i32* %1945, align 4
  %1947 = icmp ne i32 %1946, 0
  br i1 %1947, label %1948, label %1976

1948:                                             ; preds = %1940
  %1949 = load i32, i32* %22, align 4
  %1950 = sext i32 %1949 to i64
  %1951 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1950
  %1952 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1951, i32 0, i32 15
  %1953 = getelementptr inbounds [10 x i32], [10 x i32]* %1952, i64 0, i64 0
  %1954 = load i32, i32* %1953, align 4
  %1955 = load i32, i32* %7, align 4
  %1956 = call i32 @is_illegal_ko_capture(i32 %1954, i32 %1955)
  %1957 = icmp ne i32 %1956, 0
  br i1 %1957, label %1976, label %1958

1958:                                             ; preds = %1948
  %1959 = load i32, i32* %22, align 4
  %1960 = sext i32 %1959 to i64
  %1961 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1960
  %1962 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1961, i32 0, i32 15
  %1963 = getelementptr inbounds [10 x i32], [10 x i32]* %1962, i64 0, i64 0
  %1964 = load i32, i32* %1963, align 4
  %1965 = load i32*, i32** %6, align 8
  store i32 %1964, i32* %1965, align 4
  %1966 = load i32, i32* @debug, align 4
  %1967 = and i32 %1966, 131072
  %1968 = icmp ne i32 %1967, 0
  br i1 %1968, label %1970, label %1969

1969:                                             ; preds = %1958
  br label %1975

1970:                                             ; preds = %1958
  %1971 = load i32, i32* %22, align 4
  %1972 = load i32*, i32** %6, align 8
  %1973 = load i32, i32* %1972, align 4
  %1974 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i64 0, i64 0), i32 %1971, i32 %1973)
  br label %1975

1975:                                             ; preds = %1970, %1969
  store i32 1, i32* %5, align 4
  br label %1981

1976:                                             ; preds = %1948, %1940, %1928, %1913, %1898
  br label %1977

1977:                                             ; preds = %1976
  %1978 = load i32, i32* %22, align 4
  %1979 = add nsw i32 %1978, 1
  store i32 %1979, i32* %22, align 4
  br label %1895, !llvm.loop !31

1980:                                             ; preds = %1895
  store i32 -1, i32* %5, align 4
  br label %1981

1981:                                             ; preds = %1980, %1975, %1889, %1674, %947, %706, %611
  %1982 = load i32, i32* %5, align 4
  ret i32 %1982
}

declare dso_local void @owl_hotspots(float*) #1

declare dso_local void @reading_hotspots(float*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local i32 @approxlib(i32, i32, i32, i32*) #1

declare dso_local i32 @is_self_atari(i32, i32) #1

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @findlib(i32, i32, i32*) #1

declare dso_local i32 @countstones(i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @mark_string(i32, i8*, i8 signext) #1

declare dso_local i32 @is_suicide(i32, i32) #1

declare dso_local i32 @is_ko(i32, i32, i32*) #1

declare dso_local i32 @is_illegal_ko_capture(i32, i32) #1

declare dso_local i32 @owl_does_defend(i32, i32, i32*) #1

declare dso_local i32 @confirm_safety(i32, i32, i32*, i8*) #1

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @chainlinks(i32, i32*) #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local void @popgo() #1

declare dso_local i32 @owl_does_attack(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @aftermath_compute_score(i32 %0, float %1, %struct.SGFTree_t* %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.SGFTree_t*, align 8
  %8 = alloca %struct.aftermath_data*, align 8
  store i32 %0, i32* %5, align 4
  store float %1, float* %6, align 4
  store %struct.SGFTree_t* %2, %struct.SGFTree_t** %7, align 8
  store %struct.aftermath_data* @aftermath, %struct.aftermath_data** %8, align 8
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  store %struct.SGFTree_t* %9, %struct.SGFTree_t** @aftermath_sgftree, align 8
  %10 = load i32, i32* %5, align 4
  call void @play_aftermath(i32 %10)
  %11 = load i32, i32* @chinese_rules, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load %struct.aftermath_data*, %struct.aftermath_data** %8, align 8
  %15 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.aftermath_data*, %struct.aftermath_data** %8, align 8
  %18 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = sitofp i32 %20 to float
  %22 = load float, float* %6, align 4
  %23 = fadd float %21, %22
  store float %23, float* %4, align 4
  br label %51

24:                                               ; preds = %3
  %25 = load %struct.aftermath_data*, %struct.aftermath_data** %8, align 8
  %26 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.aftermath_data*, %struct.aftermath_data** %8, align 8
  %29 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %27, %30
  %32 = load %struct.aftermath_data*, %struct.aftermath_data** %8, align 8
  %33 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load %struct.aftermath_data*, %struct.aftermath_data** %8, align 8
  %37 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.aftermath_data*, %struct.aftermath_data** %8, align 8
  %40 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = load %struct.aftermath_data*, %struct.aftermath_data** %8, align 8
  %44 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = sub nsw i32 %35, %46
  %48 = sitofp i32 %47 to float
  %49 = load float, float* %6, align 4
  %50 = fadd float %48, %49
  store float %50, float* %4, align 4
  br label %51

51:                                               ; preds = %24, %13
  %52 = load float, float* %4, align 4
  ret float %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @play_aftermath(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.board_state, align 4
  %5 = alloca %struct.aftermath_data*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store %struct.aftermath_data* @aftermath, %struct.aftermath_data** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %1
  br label %14

13:                                               ; preds = %9
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 927, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0), i32 -1, i32 -1)
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* @play_aftermath.current_color, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* @play_aftermath.current_color, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %14
  store i32 21, i32* %3, align 4
  br label %21

21:                                               ; preds = %52, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 400
  br i1 %23, label %24, label %55

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %51

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x i32], [400 x i32]* @play_aftermath.current_board, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [400 x i32], [400 x i32]* @play_aftermath.current_board, i64 0, i64 %49
  store i32 %47, i32* %50, align 4
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %42, %31, %24
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %21, !llvm.loop !32

55:                                               ; preds = %21
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %286

59:                                               ; preds = %55
  %60 = load i32, i32* @white_captured, align 4
  %61 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %62 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @black_captured, align 4
  %64 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %65 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %67 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %66, i32 0, i32 2
  store i32 0, i32* %67, align 4
  %68 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %69 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %68, i32 0, i32 3
  store i32 0, i32* %69, align 4
  %70 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %71 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %70, i32 0, i32 4
  store i32 0, i32* %71, align 4
  %72 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %73 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %72, i32 0, i32 5
  store i32 0, i32* %73, align 4
  %74 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %75 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %74, i32 0, i32 6
  store i32 0, i32* %75, align 4
  %76 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %77 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %76, i32 0, i32 7
  store i32 0, i32* %77, align 4
  call void @store_board(%struct.board_state* %4)
  %78 = load i32, i32* %2, align 4
  %79 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  call void @do_play_aftermath(i32 %78, %struct.aftermath_data* %79)
  call void @restore_board(%struct.board_state* %4)
  store i32 21, i32* %3, align 4
  br label %80

80:                                               ; preds = %246, %59
  %81 = load i32, i32* %3, align 4
  %82 = icmp slt i32 %81, 400
  br i1 %82, label %83, label %249

83:                                               ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %88, 3
  br i1 %89, label %91, label %90

90:                                               ; preds = %83
  br label %246

91:                                               ; preds = %83
  %92 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %93 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %92, i32 0, i32 9
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [400 x i32], [400 x i32]* %93, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %149

99:                                               ; preds = %91
  %100 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %101 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %124

110:                                              ; preds = %99
  %111 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %112 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %116 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %120 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %119, i32 0, i32 10
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [400 x i32], [400 x i32]* %120, i64 0, i64 %122
  store i32 0, i32* %123, align 4
  br label %148

124:                                              ; preds = %99
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %124
  %132 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %133 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 4
  %136 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %137 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %136, i32 0, i32 10
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [400 x i32], [400 x i32]* %137, i64 0, i64 %139
  store i32 13, i32* %140, align 4
  br label %147

141:                                              ; preds = %124
  %142 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %143 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %142, i32 0, i32 10
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [400 x i32], [400 x i32]* %143, i64 0, i64 %145
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %131
  br label %148

148:                                              ; preds = %147, %110
  br label %245

149:                                              ; preds = %91
  %150 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %151 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %150, i32 0, i32 8
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [400 x i32], [400 x i32]* %151, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %207

157:                                              ; preds = %149
  %158 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %159 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %182

168:                                              ; preds = %157
  %169 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %170 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %174 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  %177 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %178 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %177, i32 0, i32 10
  %179 = load i32, i32* %3, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [400 x i32], [400 x i32]* %178, i64 0, i64 %180
  store i32 0, i32* %181, align 4
  br label %206

182:                                              ; preds = %157
  %183 = load i32, i32* %3, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %199

189:                                              ; preds = %182
  %190 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %191 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %191, align 4
  %194 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %195 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %194, i32 0, i32 10
  %196 = load i32, i32* %3, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [400 x i32], [400 x i32]* %195, i64 0, i64 %197
  store i32 14, i32* %198, align 4
  br label %205

199:                                              ; preds = %182
  %200 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %201 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %200, i32 0, i32 10
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [400 x i32], [400 x i32]* %201, i64 0, i64 %203
  store i32 1, i32* %204, align 4
  br label %205

205:                                              ; preds = %199, %189
  br label %206

206:                                              ; preds = %205, %168
  br label %244

207:                                              ; preds = %149
  %208 = load i32, i32* %3, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %207
  %215 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %216 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %215, i32 0, i32 10
  %217 = load i32, i32* %3, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [400 x i32], [400 x i32]* %216, i64 0, i64 %218
  store i32 15, i32* %219, align 4
  br label %243

220:                                              ; preds = %207
  %221 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %222 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %221, i32 0, i32 10
  %223 = load i32, i32* %3, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [400 x i32], [400 x i32]* %222, i64 0, i64 %224
  store i32 7, i32* %225, align 4
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %237

232:                                              ; preds = %220
  %233 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %234 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  br label %242

237:                                              ; preds = %220
  %238 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %239 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %238, i32 0, i32 7
  %240 = load i32, i32* %239, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %239, align 4
  br label %242

242:                                              ; preds = %237, %232
  br label %243

243:                                              ; preds = %242, %214
  br label %244

244:                                              ; preds = %243, %206
  br label %245

245:                                              ; preds = %244, %148
  br label %246

246:                                              ; preds = %245, %90
  %247 = load i32, i32* %3, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %3, align 4
  br label %80, !llvm.loop !33

249:                                              ; preds = %80
  %250 = load i32, i32* @debug, align 4
  %251 = and i32 %250, 131072
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %286

253:                                              ; preds = %249
  %254 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %255 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i32 %256)
  %258 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %259 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i64 0, i64 0), i32 %260)
  %262 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %263 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i64 0, i64 0), i32 %264)
  %266 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %267 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i32 %268)
  %270 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %271 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %270, i32 0, i32 4
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i32 %272)
  %274 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %275 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 4
  %277 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), i32 %276)
  %278 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %279 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i32 %280)
  %282 = load %struct.aftermath_data*, %struct.aftermath_data** %5, align 8
  %283 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i32 %284)
  br label %286

286:                                              ; preds = %58, %253, %249
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aftermath_final_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ult i32 %5, 421
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %4, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %4, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 1043, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @aftermath_sgftree, align 8
  %23 = load i32, i32* %3, align 4
  call void @play_aftermath(i32 %23)
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x i32], [400 x i32]* getelementptr inbounds (%struct.aftermath_data, %struct.aftermath_data* @aftermath, i32 0, i32 10), i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  ret i32 %27
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local void @store_board(%struct.board_state*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_play_aftermath(i32 %0, %struct.aftermath_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aftermath_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.aftermath_data* %1, %struct.aftermath_data** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @debug, align 4
  %15 = and i32 %14, 131072
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %20

18:                                               ; preds = %2
  %19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %17
  store i32 1, i32* @disable_threat_computation, align 4
  store i32 1, i32* @disable_endgame_patterns, align 4
  br label %21

21:                                               ; preds = %103, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @board_size, align 4
  %27 = load i32, i32* @board_size, align 4
  %28 = mul nsw i32 %26, %27
  %29 = icmp slt i32 %25, %28
  br label %30

30:                                               ; preds = %24, %21
  %31 = phi i1 [ false, %21 ], [ %29, %24 ]
  br i1 %31, label %32, label %106

32:                                               ; preds = %30
  %33 = call i32 @get_reading_node_counter()
  store i32 %33, i32* %9, align 4
  %34 = call i32 @get_owl_node_counter()
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @reduced_genmove(i32* %5, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %62

39:                                               ; preds = %32
  %40 = load i32, i32* @verbose, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @verbose, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @verbose, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* @verbose, align 4
  br label %46

46:                                               ; preds = %43, %39
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = load %struct.aftermath_data*, %struct.aftermath_data** %4, align 8
  %52 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %51, i32 0, i32 8
  %53 = getelementptr inbounds [400 x i32], [400 x i32]* %52, i64 0, i64 0
  br label %58

54:                                               ; preds = %46
  %55 = load %struct.aftermath_data*, %struct.aftermath_data** %4, align 8
  %56 = getelementptr inbounds %struct.aftermath_data, %struct.aftermath_data* %55, i32 0, i32 9
  %57 = getelementptr inbounds [400 x i32], [400 x i32]* %56, i64 0, i64 0
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i32* [ %53, %50 ], [ %57, %54 ]
  %60 = call i32 @aftermath_genmove(i32* %5, i32 %47, i32* %59, i32 0)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* @verbose, align 4
  br label %62

62:                                               ; preds = %58, %32
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %8, align 4
  call void @play_move(i32 %63, i32 %64)
  %65 = load %struct.SGFTree_t*, %struct.SGFTree_t** @aftermath_sgftree, align 8
  %66 = icmp ne %struct.SGFTree_t* %65, null
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.SGFTree_t*, %struct.SGFTree_t** @aftermath_sgftree, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sdiv i32 %70, 20
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %5, align 4
  %74 = srem i32 %73, 20
  %75 = sub nsw i32 %74, 1
  call void @sgftreeAddPlay(%struct.SGFTree_t* %68, i32 %69, i32 %72, i32 %75)
  br label %76

76:                                               ; preds = %67, %62
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @debug, align 4
  %80 = and i32 %79, 131072
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  br label %96

83:                                               ; preds = %76
  %84 = load i32, i32* @movenum, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @get_owl_node_counter()
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 %87, %88
  %90 = call i32 @get_reading_node_counter()
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %90, %91
  %93 = call i32 @get_owl_node_counter()
  %94 = call i32 @get_reading_node_counter()
  %95 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.32, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32 %89, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %83, %82
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 0, i32* %6, align 4
  br label %103

100:                                              ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %100, %99
  %104 = load i32, i32* %8, align 4
  %105 = sub nsw i32 3, %104
  store i32 %105, i32* %8, align 4
  br label %21, !llvm.loop !34

106:                                              ; preds = %30
  store i32 0, i32* @disable_threat_computation, align 4
  store i32 0, i32* @disable_endgame_patterns, align 4
  ret void
}

declare dso_local void @restore_board(%struct.board_state*) #1

declare dso_local i32 @get_reading_node_counter() #1

declare dso_local i32 @get_owl_node_counter() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reduced_genmove(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  store i32 0, i32* %7, align 4
  store float -1.000000e+00, float* %5, align 4
  call void @reset_engine()
  %8 = load i32, i32* %4, align 4
  call void @examine_position(i32 %8, i32 99)
  %9 = load i32, i32* @level, align 4
  %10 = icmp sge i32 %9, 8
  br i1 %10, label %11, label %79

11:                                               ; preds = %2
  %12 = call float @estimate_score(float* @lower_bound, float* @upper_bound)
  %13 = load i32, i32* @verbose, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @showscore, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %71

18:                                               ; preds = %15, %11
  %19 = load float, float* @lower_bound, align 4
  %20 = load float, float* @upper_bound, align 4
  %21 = fcmp oeq float %19, %20
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load float, float* @lower_bound, align 4
  %24 = fcmp ogt float %23, 0.000000e+00
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)
  %27 = load float, float* @lower_bound, align 4
  %28 = fcmp olt float %27, 0.000000e+00
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load float, float* @lower_bound, align 4
  %31 = fneg float %30
  br label %34

32:                                               ; preds = %22
  %33 = load float, float* @lower_bound, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi float [ %31, %29 ], [ %33, %32 ]
  %36 = fpext float %35 to double
  %37 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.33, i64 0, i64 0), i8* %26, double %36)
  br label %68

38:                                               ; preds = %18
  %39 = load float, float* @lower_bound, align 4
  %40 = fcmp ogt float %39, 0.000000e+00
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)
  %43 = load float, float* @lower_bound, align 4
  %44 = fcmp olt float %43, 0.000000e+00
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load float, float* @lower_bound, align 4
  %47 = fneg float %46
  br label %50

48:                                               ; preds = %38
  %49 = load float, float* @lower_bound, align 4
  br label %50

50:                                               ; preds = %48, %45
  %51 = phi float [ %47, %45 ], [ %49, %48 ]
  %52 = fpext float %51 to double
  %53 = load float, float* @upper_bound, align 4
  %54 = fcmp ogt float %53, 0.000000e+00
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.35, i64 0, i64 0)
  %57 = load float, float* @upper_bound, align 4
  %58 = fcmp olt float %57, 0.000000e+00
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = load float, float* @upper_bound, align 4
  %61 = fneg float %60
  br label %64

62:                                               ; preds = %50
  %63 = load float, float* @upper_bound, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi float [ %61, %59 ], [ %63, %62 ]
  %66 = fpext float %65 to double
  %67 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.36, i64 0, i64 0), i8* %42, double %52, i8* %56, double %66)
  br label %68

68:                                               ; preds = %64, %34
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = call i32 @fflush(%struct._IO_FILE* %69)
  br label %71

71:                                               ; preds = %68, %15
  %72 = load i32, i32* %4, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load float, float* @lower_bound, align 4
  store float %75, float* @score, align 4
  br label %78

76:                                               ; preds = %71
  %77 = load float, float* @upper_bound, align 4
  store float %77, float* @score, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %80

79:                                               ; preds = %2
  store float 0.000000e+00, float* @score, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* @stackp, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %85

84:                                               ; preds = %80
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 831, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 -1, i32 -1)
  br label %85

85:                                               ; preds = %84, %83
  %86 = load i32, i32* %4, align 4
  call void @worm_reasons(i32 %86)
  %87 = load i32, i32* @verbose, align 4
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* @verbose, align 4
  %89 = icmp sgt i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @verbose, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* @verbose, align 4
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32, i32* %4, align 4
  call void @owl_reasons(i32 %94)
  %95 = load i32, i32* %6, align 4
  store i32 %95, i32* @verbose, align 4
  %96 = load i32, i32* %4, align 4
  call void @combinations(i32 %96)
  %97 = load i32, i32* @stackp, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %101

100:                                              ; preds = %93
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 849, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 -1, i32 -1)
  br label %101

101:                                              ; preds = %100, %99
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = load float, float* @lower_bound, align 4
  %105 = call i32 @review_move_reasons(i32* %102, float* %5, i32 %103, float 0.000000e+00, float %104, i32* null)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load i32, i32* @verbose, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %117

111:                                              ; preds = %107
  %112 = load i32*, i32** %3, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load float, float* %5, align 4
  %115 = fpext float %114 to double
  %116 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.38, i64 0, i64 0), i32 %113, double %115)
  br label %117

117:                                              ; preds = %111, %110
  br label %118

118:                                              ; preds = %117, %101
  %119 = load i32, i32* @stackp, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %123

122:                                              ; preds = %118
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 854, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i64 0, i64 0), i32 -1, i32 -1)
  br label %123

123:                                              ; preds = %122, %121
  %124 = load float, float* %5, align 4
  %125 = fpext float %124 to double
  %126 = fcmp olt double %125, 0.000000e+00
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i32, i32* @verbose, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %127
  br label %133

131:                                              ; preds = %127
  %132 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %130
  %134 = load i32*, i32** %3, align 8
  store i32 0, i32* %134, align 4
  br label %146

135:                                              ; preds = %123
  %136 = load i32, i32* @verbose, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %135
  br label %145

139:                                              ; preds = %135
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* %140, align 4
  %142 = load float, float* %5, align 4
  %143 = fpext float %142 to double
  %144 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.40, i64 0, i64 0), i32 %141, double %143)
  br label %145

145:                                              ; preds = %139, %138
  br label %146

146:                                              ; preds = %145, %133
  %147 = load float, float* %5, align 4
  %148 = fptosi float %147 to i32
  ret i32 %148
}

declare dso_local void @play_move(i32, i32) #1

declare dso_local void @sgftreeAddPlay(%struct.SGFTree_t*, i32, i32, i32) #1

declare dso_local void @reset_engine() #1

declare dso_local void @examine_position(i32, i32) #1

declare dso_local float @estimate_score(float*, float*) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

declare dso_local void @worm_reasons(i32) #1

declare dso_local void @owl_reasons(i32) #1

declare dso_local void @combinations(i32) #1

declare dso_local i32 @review_move_reasons(i32*, float*, i32, float, float, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
