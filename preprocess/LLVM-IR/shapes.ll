; ModuleID = 'shapes.c'
source_filename = "shapes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@verbose = external dso_local global i32, align 4
@.str = private unnamed_addr constant [54 x i8] c"\0APattern matcher is looking for move reasons for %s!\0A\00", align 1
@pat_db = external dso_local global %struct.pattern_db, align 8
@josekidb = external dso_local global i32, align 4
@joseki_db = external dso_local global %struct.pattern_db, align 8
@disable_fuseki = external dso_local global i32, align 4
@doing_scoring = external dso_local global i32, align 4
@fusekipat_db = external dso_local global %struct.pattern_db, align 8
@.str.1 = private unnamed_addr constant [62 x i8] c"\0AEndgame pattern matcher is looking for move reasons for %s!\0A\00", align 1
@endpat_db = external dso_local global %struct.pattern_db, align 8
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@board = external dso_local global [421 x i8], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@experimental_connections = external dso_local global i32, align 4
@allpats = external dso_local global i32, align 4
@debug = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"  asking helper to consider '%s'+%d at %1m\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"helper likes pattern '%s' at %1m\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"  helper does not like pattern '%s' at %1m\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"pattern '%s'+%d matched at %1m\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"...cuts strings %1m, %1m\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"...connects dragons %1m, %1m\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"...connects strings %1m, %1m\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"...strategical defense (weak connection) of %1m\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"...shape value 1\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"shapes.c\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"!(class & 0x0800)\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"...expands territory\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"...expands moyo\0A\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"...is an invasion\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"...strategical attack on %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"...strategical defense of %1m\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"...joseki standard move\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"... minimum move value %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"...less urgent joseki move\0A\00", align 1
@board_size = external dso_local global i32, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"...move value %f (shape %f)\0A\00", align 1
@.str.22 = private unnamed_addr constant [37 x i8] c"...minimum move value %f (shape %f)\0A\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"...minor joseki move\0A\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"...joseki urgent move\0A\00", align 1
@urgent = external dso_local global i32, align 4
@.str.25 = private unnamed_addr constant [19 x i8] c"...shape value 15\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"...(min) move value %f\0A\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"...joseki trick move\0A\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"...antisuji\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"...worthwhile threat move\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"...max move value %f\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"...(min) territorial value %f\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"...max territorial value %f\0A\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"...shape value %f\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"...followup value %f\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"...reverse followup value %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shapes(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @verbose, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @color_to_string(i32 %7)
  %9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %8)
  br label %10

10:                                               ; preds = %6, %5
  %11 = load i32, i32* %2, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @shapes_callback, i32 %11, %struct.pattern_db* @pat_db, i8* null, i8* null)
  %12 = load i32, i32* @josekidb, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @shapes_callback, i32 %15, %struct.pattern_db* @joseki_db, i8* null, i8* null)
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* @disable_fuseki, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* @doing_scoring, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @shapes_callback, i32 %23, %struct.pattern_db* @fusekipat_db, i8* null, i8* null)
  br label %24

24:                                               ; preds = %22, %19, %16
  ret void
}

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local i8* @color_to_string(i32) #1

declare dso_local void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shapes_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [5 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca [5 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca [5 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca [5 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float, align 4
  %28 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 3, %29
  store i32 %30, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %31 = load %struct.pattern*, %struct.pattern** %8, align 8
  %32 = getelementptr inbounds %struct.pattern, %struct.pattern* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* @doing_scoring, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %5
  %37 = load i32, i32* %23, align 4
  %38 = and i32 %37, 8388608
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %1306

41:                                               ; preds = %36, %5
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.pattern*, %struct.pattern** %8, align 8
  %44 = getelementptr inbounds %struct.pattern, %struct.pattern* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %46
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %47, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %23, align 4
  %55 = and i32 %54, 4113281
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %338

57:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %334, %57
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.pattern*, %struct.pattern** %8, align 8
  %61 = getelementptr inbounds %struct.pattern, %struct.pattern* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %337

64:                                               ; preds = %58
  %65 = load %struct.pattern*, %struct.pattern** %8, align 8
  %66 = getelementptr inbounds %struct.pattern, %struct.pattern* %65, i32 0, i32 0
  %67 = load %struct.patval*, %struct.patval** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.patval, %struct.patval* %67, i64 %69
  %71 = getelementptr inbounds %struct.patval, %struct.patval* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %334

75:                                               ; preds = %64
  %76 = load %struct.pattern*, %struct.pattern** %8, align 8
  %77 = getelementptr inbounds %struct.pattern, %struct.pattern* %76, i32 0, i32 0
  %78 = load %struct.patval*, %struct.patval** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.patval, %struct.patval* %78, i64 %80
  %82 = getelementptr inbounds %struct.patval, %struct.patval* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %84
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [8 x i32], [8 x i32]* %85, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %24, align 4
  %92 = load i32, i32* %23, align 4
  %93 = and i32 %92, 1
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %75
  %96 = load i32, i32* %24, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %95
  %104 = load i32, i32* %24, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %106, i32 0, i32 15
  %108 = getelementptr inbounds [10 x i32], [10 x i32]* %107, i64 0, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %103
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %24, align 4
  %114 = call i32 @does_defend(i32 %112, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %111
  br label %1306

117:                                              ; preds = %111, %103, %95, %75
  %118 = load i32, i32* %24, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %25, align 4
  %123 = load i32, i32* %24, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %176

130:                                              ; preds = %117
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %131, 5
  br i1 %132, label %133, label %176

133:                                              ; preds = %130
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %147, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %25, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  br label %150

146:                                              ; preds = %138
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %13, align 4
  br label %134, !llvm.loop !4

150:                                              ; preds = %145, %134
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %175

154:                                              ; preds = %150
  %155 = load i32, i32* %24, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %157, i32 0, i32 16
  %159 = getelementptr inbounds [10 x i32], [10 x i32]* %158, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %24, align 4
  %165 = call i32 @does_defend(i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %162, %154
  %168 = load i32, i32* %25, align 4
  %169 = load i32, i32* %13, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %170
  store i32 %168, i32* %171, align 4
  %172 = load i32, i32* %16, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %167, %162
  br label %175

175:                                              ; preds = %174, %150
  br label %176

176:                                              ; preds = %175, %130, %117
  %177 = load i32, i32* %24, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i32
  %182 = load i32, i32* %11, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %216

184:                                              ; preds = %176
  %185 = load i32, i32* %18, align 4
  %186 = icmp slt i32 %185, 5
  br i1 %186, label %187, label %216

187:                                              ; preds = %184
  store i32 0, i32* %13, align 4
  br label %188

188:                                              ; preds = %201, %187
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %18, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %204

192:                                              ; preds = %188
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %25, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  br label %204

200:                                              ; preds = %192
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %188, !llvm.loop !6

204:                                              ; preds = %199, %188
  %205 = load i32, i32* %13, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %204
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* %13, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 %211
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* %18, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %18, align 4
  br label %215

215:                                              ; preds = %208, %204
  br label %216

216:                                              ; preds = %215, %184, %176
  %217 = load %struct.pattern*, %struct.pattern** %8, align 8
  %218 = getelementptr inbounds %struct.pattern, %struct.pattern* %217, i32 0, i32 0
  %219 = load %struct.patval*, %struct.patval** %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.patval, %struct.patval* %219, i64 %221
  %223 = getelementptr inbounds %struct.patval, %struct.patval* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 2
  br i1 %225, label %236, label %226

226:                                              ; preds = %216
  %227 = load %struct.pattern*, %struct.pattern** %8, align 8
  %228 = getelementptr inbounds %struct.pattern, %struct.pattern* %227, i32 0, i32 0
  %229 = load %struct.patval*, %struct.patval** %228, align 8
  %230 = load i32, i32* %12, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.patval, %struct.patval* %229, i64 %231
  %233 = getelementptr inbounds %struct.patval, %struct.patval* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %333

236:                                              ; preds = %226, %216
  %237 = load i32, i32* %24, align 4
  %238 = call i32 @find_origin(i32 %237)
  store i32 %238, i32* %25, align 4
  %239 = load i32, i32* %24, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %240
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = load i32, i32* %7, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %292

246:                                              ; preds = %236
  %247 = load i32, i32* %20, align 4
  %248 = icmp slt i32 %247, 5
  br i1 %248, label %249, label %292

249:                                              ; preds = %246
  store i32 0, i32* %13, align 4
  br label %250

250:                                              ; preds = %263, %249
  %251 = load i32, i32* %13, align 4
  %252 = load i32, i32* %20, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %266

254:                                              ; preds = %250
  %255 = load i32, i32* %13, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %25, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %254
  br label %266

262:                                              ; preds = %254
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %13, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %13, align 4
  br label %250, !llvm.loop !7

266:                                              ; preds = %261, %250
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* %20, align 4
  %269 = icmp eq i32 %267, %268
  br i1 %269, label %270, label %291

270:                                              ; preds = %266
  %271 = load i32, i32* %24, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %272
  %274 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %273, i32 0, i32 16
  %275 = getelementptr inbounds [10 x i32], [10 x i32]* %274, i64 0, i64 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %283, label %278

278:                                              ; preds = %270
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* %24, align 4
  %281 = call i32 @does_defend(i32 %279, i32 %280)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %278, %270
  %284 = load i32, i32* %25, align 4
  %285 = load i32, i32* %13, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %286
  store i32 %284, i32* %287, align 4
  %288 = load i32, i32* %20, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %20, align 4
  br label %290

290:                                              ; preds = %283, %278
  br label %291

291:                                              ; preds = %290, %266
  br label %292

292:                                              ; preds = %291, %246, %236
  %293 = load i32, i32* %24, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = zext i8 %296 to i32
  %298 = load i32, i32* %11, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %332

300:                                              ; preds = %292
  %301 = load i32, i32* %22, align 4
  %302 = icmp slt i32 %301, 5
  br i1 %302, label %303, label %332

303:                                              ; preds = %300
  store i32 0, i32* %13, align 4
  br label %304

304:                                              ; preds = %317, %303
  %305 = load i32, i32* %13, align 4
  %306 = load i32, i32* %22, align 4
  %307 = icmp slt i32 %305, %306
  br i1 %307, label %308, label %320

308:                                              ; preds = %304
  %309 = load i32, i32* %13, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %25, align 4
  %314 = icmp eq i32 %312, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %308
  br label %320

316:                                              ; preds = %308
  br label %317

317:                                              ; preds = %316
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %13, align 4
  br label %304, !llvm.loop !8

320:                                              ; preds = %315, %304
  %321 = load i32, i32* %13, align 4
  %322 = load i32, i32* %22, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %324, label %331

324:                                              ; preds = %320
  %325 = load i32, i32* %25, align 4
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %327
  store i32 %325, i32* %328, align 4
  %329 = load i32, i32* %22, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %22, align 4
  br label %331

331:                                              ; preds = %324, %320
  br label %332

332:                                              ; preds = %331, %300, %292
  br label %333

333:                                              ; preds = %332, %226
  br label %334

334:                                              ; preds = %333, %74
  %335 = load i32, i32* %12, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %12, align 4
  br label %58, !llvm.loop !9

337:                                              ; preds = %58
  br label %338

338:                                              ; preds = %337, %41
  %339 = load i32, i32* %16, align 4
  %340 = icmp slt i32 %339, 2
  br i1 %340, label %341, label %347

341:                                              ; preds = %338
  %342 = load i32, i32* @experimental_connections, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %341
  %345 = load i32, i32* %23, align 4
  %346 = and i32 %345, -129
  store i32 %346, i32* %23, align 4
  br label %347

347:                                              ; preds = %344, %341, %338
  %348 = load i32, i32* %20, align 4
  %349 = icmp slt i32 %348, 2
  br i1 %349, label %350, label %356

350:                                              ; preds = %347
  %351 = load i32, i32* @experimental_connections, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %350
  %354 = load i32, i32* %23, align 4
  %355 = and i32 %354, -129
  store i32 %355, i32* %23, align 4
  br label %356

356:                                              ; preds = %353, %350, %347
  %357 = load i32, i32* %18, align 4
  %358 = icmp slt i32 %357, 2
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  %360 = load i32, i32* @experimental_connections, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %359
  %363 = load i32, i32* %23, align 4
  %364 = and i32 %363, -513
  store i32 %364, i32* %23, align 4
  br label %365

365:                                              ; preds = %362, %359, %356
  %366 = load i32, i32* %22, align 4
  %367 = icmp slt i32 %366, 2
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = load i32, i32* @experimental_connections, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %368
  %372 = load i32, i32* %23, align 4
  %373 = and i32 %372, -513
  store i32 %373, i32* %23, align 4
  br label %374

374:                                              ; preds = %371, %368, %365
  %375 = load %struct.pattern*, %struct.pattern** %8, align 8
  %376 = getelementptr inbounds %struct.pattern, %struct.pattern* %375, i32 0, i32 21
  %377 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %376, align 8
  %378 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %377, null
  br i1 %378, label %393, label %379

379:                                              ; preds = %374
  %380 = load i32, i32* @allpats, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %393, label %382

382:                                              ; preds = %379
  %383 = load %struct.pattern*, %struct.pattern** %8, align 8
  %384 = getelementptr inbounds %struct.pattern, %struct.pattern* %383, i32 0, i32 20
  %385 = load i32, i32* %384, align 8
  %386 = and i32 %385, 2
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %393, label %388

388:                                              ; preds = %382
  %389 = load i32, i32* %23, align 4
  %390 = and i32 %389, 2147482496
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %393, label %392

392:                                              ; preds = %388
  br label %1306

393:                                              ; preds = %388, %382, %379, %374
  %394 = load i32, i32* %23, align 4
  %395 = and i32 %394, 16
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %404, label %397

397:                                              ; preds = %393
  %398 = load i32, i32* %14, align 4
  %399 = load i32, i32* %7, align 4
  %400 = call i32 @safe_move(i32 %398, i32 %399)
  %401 = icmp ne i32 %400, 5
  br i1 %401, label %402, label %403

402:                                              ; preds = %397
  br label %1306

403:                                              ; preds = %397
  br label %416

404:                                              ; preds = %393
  %405 = load i32, i32* %14, align 4
  %406 = load i32, i32* %7, align 4
  %407 = call i32 @is_ko(i32 %405, i32 %406, i32* null)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %415, label %409

409:                                              ; preds = %404
  %410 = load i32, i32* %14, align 4
  %411 = load i32, i32* %7, align 4
  %412 = call i32 @is_legal(i32 %410, i32 %411)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %415, label %414

414:                                              ; preds = %409
  br label %1306

415:                                              ; preds = %409, %404
  br label %416

416:                                              ; preds = %415, %403
  %417 = load i32, i32* %23, align 4
  %418 = and i32 %417, 32
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %416
  %421 = load i32, i32* %14, align 4
  %422 = load i32, i32* %11, align 4
  %423 = call i32 @safe_move(i32 %421, i32 %422)
  %424 = icmp eq i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %420
  br label %1306

426:                                              ; preds = %420
  br label %427

427:                                              ; preds = %426, %416
  %428 = load %struct.pattern*, %struct.pattern** %8, align 8
  %429 = getelementptr inbounds %struct.pattern, %struct.pattern* %428, i32 0, i32 20
  %430 = load i32, i32* %429, align 8
  %431 = and i32 %430, 1
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %433, label %444

433:                                              ; preds = %427
  %434 = load %struct.pattern*, %struct.pattern** %8, align 8
  %435 = getelementptr inbounds %struct.pattern, %struct.pattern* %434, i32 0, i32 22
  %436 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %435, align 8
  %437 = load i32, i32* %9, align 4
  %438 = load i32, i32* %14, align 4
  %439 = load i32, i32* %7, align 4
  %440 = call i32 %436(i32 %437, i32 %438, i32 %439, i32 0)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %443, label %442

442:                                              ; preds = %433
  br label %1306

443:                                              ; preds = %433
  br label %444

444:                                              ; preds = %443, %427
  %445 = load %struct.pattern*, %struct.pattern** %8, align 8
  %446 = getelementptr inbounds %struct.pattern, %struct.pattern* %445, i32 0, i32 21
  %447 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %446, align 8
  %448 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %447, null
  br i1 %448, label %449, label %497

449:                                              ; preds = %444
  %450 = load i32, i32* @debug, align 4
  %451 = and i32 %450, 256
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %454, label %453

453:                                              ; preds = %449
  br label %461

454:                                              ; preds = %449
  %455 = load %struct.pattern*, %struct.pattern** %8, align 8
  %456 = getelementptr inbounds %struct.pattern, %struct.pattern* %455, i32 0, i32 3
  %457 = load i8*, i8** %456, align 8
  %458 = load i32, i32* %9, align 4
  %459 = load i32, i32* %14, align 4
  %460 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %457, i32 %458, i32 %459)
  br label %461

461:                                              ; preds = %454, %453
  %462 = load %struct.pattern*, %struct.pattern** %8, align 8
  %463 = getelementptr inbounds %struct.pattern, %struct.pattern* %462, i32 0, i32 21
  %464 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %463, align 8
  %465 = load %struct.pattern*, %struct.pattern** %8, align 8
  %466 = load i32, i32* %9, align 4
  %467 = load i32, i32* %14, align 4
  %468 = load i32, i32* %7, align 4
  %469 = call i32 %464(%struct.pattern* %465, i32 %466, i32 %467, i32 %468)
  store i32 %469, i32* %26, align 4
  %470 = load i32, i32* %26, align 4
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %484

472:                                              ; preds = %461
  %473 = load i32, i32* @debug, align 4
  %474 = and i32 %473, 256
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %477, label %476

476:                                              ; preds = %472
  br label %483

477:                                              ; preds = %472
  %478 = load %struct.pattern*, %struct.pattern** %8, align 8
  %479 = getelementptr inbounds %struct.pattern, %struct.pattern* %478, i32 0, i32 3
  %480 = load i8*, i8** %479, align 8
  %481 = load i32, i32* %14, align 4
  %482 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %480, i32 %481)
  br label %483

483:                                              ; preds = %477, %476
  br label %496

484:                                              ; preds = %461
  %485 = load i32, i32* @debug, align 4
  %486 = and i32 %485, 256
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %489, label %488

488:                                              ; preds = %484
  br label %495

489:                                              ; preds = %484
  %490 = load %struct.pattern*, %struct.pattern** %8, align 8
  %491 = getelementptr inbounds %struct.pattern, %struct.pattern* %490, i32 0, i32 3
  %492 = load i8*, i8** %491, align 8
  %493 = load i32, i32* %14, align 4
  %494 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %492, i32 %493)
  br label %495

495:                                              ; preds = %489, %488
  br label %1306

496:                                              ; preds = %483
  br label %497

497:                                              ; preds = %496, %444
  %498 = load i32, i32* @allpats, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %503, label %500

500:                                              ; preds = %497
  %501 = load i32, i32* @verbose, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %503, label %515

503:                                              ; preds = %500, %497
  %504 = load i32, i32* @verbose, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %507, label %506

506:                                              ; preds = %503
  br label %514

507:                                              ; preds = %503
  %508 = load %struct.pattern*, %struct.pattern** %8, align 8
  %509 = getelementptr inbounds %struct.pattern, %struct.pattern* %508, i32 0, i32 3
  %510 = load i8*, i8** %509, align 8
  %511 = load i32, i32* %9, align 4
  %512 = load i32, i32* %14, align 4
  %513 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %510, i32 %511, i32 %512)
  br label %514

514:                                              ; preds = %507, %506
  br label %515

515:                                              ; preds = %514, %500
  %516 = load %struct.pattern*, %struct.pattern** %8, align 8
  %517 = getelementptr inbounds %struct.pattern, %struct.pattern* %516, i32 0, i32 20
  %518 = load i32, i32* %517, align 8
  %519 = and i32 %518, 2
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %529

521:                                              ; preds = %515
  %522 = load %struct.pattern*, %struct.pattern** %8, align 8
  %523 = getelementptr inbounds %struct.pattern, %struct.pattern* %522, i32 0, i32 22
  %524 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %523, align 8
  %525 = load i32, i32* %9, align 4
  %526 = load i32, i32* %14, align 4
  %527 = load i32, i32* %7, align 4
  %528 = call i32 %524(i32 %525, i32 %526, i32 %527, i32 1)
  br label %529

529:                                              ; preds = %521, %515
  %530 = load i32, i32* %23, align 4
  %531 = and i32 %530, 512
  %532 = icmp ne i32 %531, 0
  br i1 %532, label %533, label %602

533:                                              ; preds = %529
  store i32 0, i32* %12, align 4
  br label %534

534:                                              ; preds = %598, %533
  %535 = load i32, i32* %12, align 4
  %536 = load i32, i32* %22, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %538, label %601

538:                                              ; preds = %534
  %539 = load i32, i32* %12, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %13, align 4
  br label %541

541:                                              ; preds = %594, %538
  %542 = load i32, i32* %13, align 4
  %543 = load i32, i32* %22, align 4
  %544 = icmp slt i32 %542, %543
  br i1 %544, label %545, label %597

545:                                              ; preds = %541
  %546 = load i32, i32* %12, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = load i32, i32* %13, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = call i32 @string_connect(i32 %549, i32 %553, i32* null)
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %593

556:                                              ; preds = %545
  %557 = load i32, i32* %7, align 4
  %558 = load i32, i32* %14, align 4
  %559 = load i32, i32* %12, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = load i32, i32* %13, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %557, i32 1, i32 1, i32 %558, i32 %562, i32 %566)
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %593, label %569

569:                                              ; preds = %556
  %570 = load i32, i32* %14, align 4
  %571 = load i32, i32* %12, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %572
  %574 = load i32, i32* %573, align 4
  %575 = load i32, i32* %13, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %576
  %578 = load i32, i32* %577, align 4
  call void @add_cut_move(i32 %570, i32 %574, i32 %578)
  %579 = load i32, i32* @verbose, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %582, label %581

581:                                              ; preds = %569
  br label %592

582:                                              ; preds = %569
  %583 = load i32, i32* %12, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %584
  %586 = load i32, i32* %585, align 4
  %587 = load i32, i32* %13, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 %588
  %590 = load i32, i32* %589, align 4
  %591 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %586, i32 %590)
  br label %592

592:                                              ; preds = %582, %581
  br label %593

593:                                              ; preds = %592, %556, %545
  br label %594

594:                                              ; preds = %593
  %595 = load i32, i32* %13, align 4
  %596 = add nsw i32 %595, 1
  store i32 %596, i32* %13, align 4
  br label %541, !llvm.loop !10

597:                                              ; preds = %541
  br label %598

598:                                              ; preds = %597
  %599 = load i32, i32* %12, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %12, align 4
  br label %534, !llvm.loop !11

601:                                              ; preds = %534
  br label %602

602:                                              ; preds = %601, %529
  %603 = load i32, i32* %23, align 4
  %604 = and i32 %603, 128
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %653

606:                                              ; preds = %602
  %607 = load i32, i32* @experimental_connections, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %653, label %609

609:                                              ; preds = %606
  store i32 0, i32* %12, align 4
  br label %610

610:                                              ; preds = %649, %609
  %611 = load i32, i32* %12, align 4
  %612 = load i32, i32* %16, align 4
  %613 = icmp slt i32 %611, %612
  br i1 %613, label %614, label %652

614:                                              ; preds = %610
  %615 = load i32, i32* %12, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %13, align 4
  br label %617

617:                                              ; preds = %645, %614
  %618 = load i32, i32* %13, align 4
  %619 = load i32, i32* %16, align 4
  %620 = icmp slt i32 %618, %619
  br i1 %620, label %621, label %648

621:                                              ; preds = %617
  %622 = load i32, i32* %14, align 4
  %623 = load i32, i32* %12, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* %13, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %628
  %630 = load i32, i32* %629, align 4
  call void @add_connection_move(i32 %622, i32 %626, i32 %630)
  %631 = load i32, i32* @verbose, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %634, label %633

633:                                              ; preds = %621
  br label %644

634:                                              ; preds = %621
  %635 = load i32, i32* %12, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %636
  %638 = load i32, i32* %637, align 4
  %639 = load i32, i32* %13, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %640
  %642 = load i32, i32* %641, align 4
  %643 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %638, i32 %642)
  br label %644

644:                                              ; preds = %634, %633
  br label %645

645:                                              ; preds = %644
  %646 = load i32, i32* %13, align 4
  %647 = add nsw i32 %646, 1
  store i32 %647, i32* %13, align 4
  br label %617, !llvm.loop !12

648:                                              ; preds = %617
  br label %649

649:                                              ; preds = %648
  %650 = load i32, i32* %12, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %12, align 4
  br label %610, !llvm.loop !13

652:                                              ; preds = %610
  br label %653

653:                                              ; preds = %652, %606, %602
  %654 = load i32, i32* %23, align 4
  %655 = and i32 %654, 128
  %656 = icmp ne i32 %655, 0
  br i1 %656, label %657, label %729

657:                                              ; preds = %653
  %658 = load i32, i32* @experimental_connections, align 4
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %729

660:                                              ; preds = %657
  store i32 0, i32* %12, align 4
  br label %661

661:                                              ; preds = %725, %660
  %662 = load i32, i32* %12, align 4
  %663 = load i32, i32* %20, align 4
  %664 = icmp slt i32 %662, %663
  br i1 %664, label %665, label %728

665:                                              ; preds = %661
  %666 = load i32, i32* %12, align 4
  %667 = add nsw i32 %666, 1
  store i32 %667, i32* %13, align 4
  br label %668

668:                                              ; preds = %721, %665
  %669 = load i32, i32* %13, align 4
  %670 = load i32, i32* %20, align 4
  %671 = icmp slt i32 %669, %670
  br i1 %671, label %672, label %724

672:                                              ; preds = %668
  %673 = load i32, i32* %12, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = load i32, i32* %13, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %678
  %680 = load i32, i32* %679, align 4
  %681 = call i32 @disconnect(i32 %676, i32 %680, i32* null)
  %682 = icmp ne i32 %681, 0
  br i1 %682, label %683, label %720

683:                                              ; preds = %672
  %684 = load i32, i32* %7, align 4
  %685 = load i32, i32* %14, align 4
  %686 = load i32, i32* %12, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %687
  %689 = load i32, i32* %688, align 4
  %690 = load i32, i32* %13, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %684, i32 0, i32 1, i32 %685, i32 %689, i32 %693)
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %720, label %696

696:                                              ; preds = %683
  %697 = load i32, i32* %14, align 4
  %698 = load i32, i32* %12, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %699
  %701 = load i32, i32* %700, align 4
  %702 = load i32, i32* %13, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %703
  %705 = load i32, i32* %704, align 4
  call void @add_connection_move(i32 %697, i32 %701, i32 %705)
  %706 = load i32, i32* @verbose, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %709, label %708

708:                                              ; preds = %696
  br label %719

709:                                              ; preds = %696
  %710 = load i32, i32* %12, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %711
  %713 = load i32, i32* %712, align 4
  %714 = load i32, i32* %13, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds [5 x i32], [5 x i32]* %19, i64 0, i64 %715
  %717 = load i32, i32* %716, align 4
  %718 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %713, i32 %717)
  br label %719

719:                                              ; preds = %709, %708
  br label %720

720:                                              ; preds = %719, %683, %672
  br label %721

721:                                              ; preds = %720
  %722 = load i32, i32* %13, align 4
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %13, align 4
  br label %668, !llvm.loop !14

724:                                              ; preds = %668
  br label %725

725:                                              ; preds = %724
  %726 = load i32, i32* %12, align 4
  %727 = add nsw i32 %726, 1
  store i32 %727, i32* %12, align 4
  br label %661, !llvm.loop !15

728:                                              ; preds = %661
  br label %729

729:                                              ; preds = %728, %657, %653
  %730 = load i32, i32* %23, align 4
  %731 = and i32 %730, 256
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %765

733:                                              ; preds = %729
  store i32 0, i32* %12, align 4
  br label %734

734:                                              ; preds = %754, %733
  %735 = load i32, i32* %12, align 4
  %736 = load i32, i32* %16, align 4
  %737 = icmp slt i32 %735, %736
  br i1 %737, label %738, label %757

738:                                              ; preds = %734
  %739 = load i32, i32* %14, align 4
  %740 = load i32, i32* %12, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %741
  %743 = load i32, i32* %742, align 4
  call void @add_strategical_defense_move(i32 %739, i32 %743)
  %744 = load i32, i32* @verbose, align 4
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %747, label %746

746:                                              ; preds = %738
  br label %753

747:                                              ; preds = %738
  %748 = load i32, i32* %12, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %749
  %751 = load i32, i32* %750, align 4
  %752 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i32 %751)
  br label %753

753:                                              ; preds = %747, %746
  br label %754

754:                                              ; preds = %753
  %755 = load i32, i32* %12, align 4
  %756 = add nsw i32 %755, 1
  store i32 %756, i32* %12, align 4
  br label %734, !llvm.loop !16

757:                                              ; preds = %734
  %758 = load i32, i32* %14, align 4
  call void @add_shape_value(i32 %758, float 1.000000e+00)
  %759 = load i32, i32* @verbose, align 4
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %762, label %761

761:                                              ; preds = %757
  br label %764

762:                                              ; preds = %757
  %763 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %764

764:                                              ; preds = %762, %761
  br label %765

765:                                              ; preds = %764, %729
  %766 = load i32, i32* %23, align 4
  %767 = and i32 %766, 2048
  %768 = icmp ne i32 %767, 0
  br i1 %768, label %770, label %769

769:                                              ; preds = %765
  br label %771

770:                                              ; preds = %765
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 331, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 -1, i32 -1)
  br label %771

771:                                              ; preds = %770, %769
  %772 = load i32, i32* %23, align 4
  %773 = and i32 %772, 4096
  %774 = icmp ne i32 %773, 0
  br i1 %774, label %775, label %783

775:                                              ; preds = %771
  %776 = load i32, i32* %14, align 4
  call void @add_expand_territory_move(i32 %776)
  %777 = load i32, i32* @verbose, align 4
  %778 = icmp ne i32 %777, 0
  br i1 %778, label %780, label %779

779:                                              ; preds = %775
  br label %782

780:                                              ; preds = %775
  %781 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %782

782:                                              ; preds = %780, %779
  br label %783

783:                                              ; preds = %782, %771
  %784 = load i32, i32* %23, align 4
  %785 = and i32 %784, 8192
  %786 = icmp ne i32 %785, 0
  br i1 %786, label %787, label %795

787:                                              ; preds = %783
  %788 = load i32, i32* %14, align 4
  call void @add_expand_moyo_move(i32 %788)
  %789 = load i32, i32* @verbose, align 4
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %792, label %791

791:                                              ; preds = %787
  br label %794

792:                                              ; preds = %787
  %793 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %794

794:                                              ; preds = %792, %791
  br label %795

795:                                              ; preds = %794, %783
  %796 = load i32, i32* %23, align 4
  %797 = and i32 %796, 65536
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %799, label %807

799:                                              ; preds = %795
  %800 = load i32, i32* %14, align 4
  call void @add_invasion_move(i32 %800)
  %801 = load i32, i32* @verbose, align 4
  %802 = icmp ne i32 %801, 0
  br i1 %802, label %804, label %803

803:                                              ; preds = %799
  br label %806

804:                                              ; preds = %799
  %805 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0))
  br label %806

806:                                              ; preds = %804, %803
  br label %807

807:                                              ; preds = %806, %795
  %808 = load i32, i32* %23, align 4
  %809 = and i32 %808, 16384
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %836

811:                                              ; preds = %807
  store i32 0, i32* %12, align 4
  br label %812

812:                                              ; preds = %832, %811
  %813 = load i32, i32* %12, align 4
  %814 = load i32, i32* %18, align 4
  %815 = icmp slt i32 %813, %814
  br i1 %815, label %816, label %835

816:                                              ; preds = %812
  %817 = load i32, i32* %14, align 4
  %818 = load i32, i32* %12, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 %819
  %821 = load i32, i32* %820, align 4
  call void @add_strategical_attack_move(i32 %817, i32 %821)
  %822 = load i32, i32* @verbose, align 4
  %823 = icmp ne i32 %822, 0
  br i1 %823, label %825, label %824

824:                                              ; preds = %816
  br label %831

825:                                              ; preds = %816
  %826 = load i32, i32* %12, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 %827
  %829 = load i32, i32* %828, align 4
  %830 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %829)
  br label %831

831:                                              ; preds = %825, %824
  br label %832

832:                                              ; preds = %831
  %833 = load i32, i32* %12, align 4
  %834 = add nsw i32 %833, 1
  store i32 %834, i32* %12, align 4
  br label %812, !llvm.loop !17

835:                                              ; preds = %812
  br label %836

836:                                              ; preds = %835, %807
  %837 = load i32, i32* %23, align 4
  %838 = and i32 %837, 32768
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %840, label %865

840:                                              ; preds = %836
  store i32 0, i32* %12, align 4
  br label %841

841:                                              ; preds = %861, %840
  %842 = load i32, i32* %12, align 4
  %843 = load i32, i32* %16, align 4
  %844 = icmp slt i32 %842, %843
  br i1 %844, label %845, label %864

845:                                              ; preds = %841
  %846 = load i32, i32* %14, align 4
  %847 = load i32, i32* %12, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %848
  %850 = load i32, i32* %849, align 4
  call void @add_strategical_defense_move(i32 %846, i32 %850)
  %851 = load i32, i32* @verbose, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %854, label %853

853:                                              ; preds = %845
  br label %860

854:                                              ; preds = %845
  %855 = load i32, i32* %12, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %856
  %858 = load i32, i32* %857, align 4
  %859 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %858)
  br label %860

860:                                              ; preds = %854, %853
  br label %861

861:                                              ; preds = %860
  %862 = load i32, i32* %12, align 4
  %863 = add nsw i32 %862, 1
  store i32 %863, i32* %12, align 4
  br label %841, !llvm.loop !18

864:                                              ; preds = %841
  br label %865

865:                                              ; preds = %864, %836
  %866 = load i32, i32* %23, align 4
  %867 = and i32 %866, 131072
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %869, label %898

869:                                              ; preds = %865
  %870 = load i32, i32* @verbose, align 4
  %871 = icmp ne i32 %870, 0
  br i1 %871, label %873, label %872

872:                                              ; preds = %869
  br label %875

873:                                              ; preds = %869
  %874 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  br label %875

875:                                              ; preds = %873, %872
  %876 = load i32, i32* %14, align 4
  call void @add_expand_territory_move(i32 %876)
  %877 = load i32, i32* @verbose, align 4
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %880, label %879

879:                                              ; preds = %875
  br label %882

880:                                              ; preds = %875
  %881 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %882

882:                                              ; preds = %880, %879
  %883 = load i32, i32* %14, align 4
  call void @add_expand_moyo_move(i32 %883)
  %884 = load i32, i32* @verbose, align 4
  %885 = icmp ne i32 %884, 0
  br i1 %885, label %887, label %886

886:                                              ; preds = %882
  br label %889

887:                                              ; preds = %882
  %888 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %889

889:                                              ; preds = %887, %886
  %890 = load i32, i32* %14, align 4
  %891 = call i32 @set_minimum_move_value(i32 %890, float 3.500000e+01)
  %892 = load i32, i32* @verbose, align 4
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %895, label %894

894:                                              ; preds = %889
  br label %897

895:                                              ; preds = %889
  %896 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), double 3.500000e+01)
  br label %897

897:                                              ; preds = %895, %894
  br label %898

898:                                              ; preds = %897, %865
  %899 = load i32, i32* %23, align 4
  %900 = and i32 %899, 262144
  %901 = icmp ne i32 %900, 0
  br i1 %901, label %902, label %990

902:                                              ; preds = %898
  store float 2.400000e+01, float* %27, align 4
  %903 = load i32, i32* @verbose, align 4
  %904 = icmp ne i32 %903, 0
  br i1 %904, label %906, label %905

905:                                              ; preds = %902
  br label %908

906:                                              ; preds = %902
  %907 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.20, i64 0, i64 0))
  br label %908

908:                                              ; preds = %906, %905
  %909 = load i32, i32* %14, align 4
  call void @add_expand_territory_move(i32 %909)
  %910 = load i32, i32* @verbose, align 4
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %913, label %912

912:                                              ; preds = %908
  br label %915

913:                                              ; preds = %908
  %914 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  br label %915

915:                                              ; preds = %913, %912
  %916 = load i32, i32* %14, align 4
  call void @add_expand_moyo_move(i32 %916)
  %917 = load i32, i32* @verbose, align 4
  %918 = icmp ne i32 %917, 0
  br i1 %918, label %920, label %919

919:                                              ; preds = %915
  br label %922

920:                                              ; preds = %915
  %921 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %922

922:                                              ; preds = %920, %919
  %923 = load i32, i32* @board_size, align 4
  %924 = sitofp i32 %923 to double
  %925 = fdiv double %924, 1.900000e+01
  %926 = load float, float* %27, align 4
  %927 = fpext float %926 to double
  %928 = fmul double %927, %925
  %929 = fptrunc double %928 to float
  store float %929, float* %27, align 4
  %930 = load i32, i32* %23, align 4
  %931 = and i32 %930, 268435456
  %932 = icmp ne i32 %931, 0
  br i1 %932, label %933, label %946

933:                                              ; preds = %922
  %934 = load %struct.pattern*, %struct.pattern** %8, align 8
  %935 = getelementptr inbounds %struct.pattern, %struct.pattern* %934, i32 0, i32 17
  %936 = load float, float* %935, align 4
  %937 = fpext float %936 to double
  %938 = fmul double 1.000000e-02, %937
  %939 = fadd double 1.000000e+00, %938
  %940 = load float, float* %27, align 4
  %941 = fpext float %940 to double
  %942 = fmul double %941, %939
  %943 = fptrunc double %942 to float
  store float %943, float* %27, align 4
  %944 = load i32, i32* %23, align 4
  %945 = and i32 %944, -268435457
  store i32 %945, i32* %23, align 4
  br label %946

946:                                              ; preds = %933, %922
  %947 = load i32, i32* @board_size, align 4
  %948 = icmp sge i32 %947, 17
  br i1 %948, label %949, label %973

949:                                              ; preds = %946
  %950 = load i32, i32* %23, align 4
  %951 = and i32 %950, 8388608
  %952 = icmp ne i32 %951, 0
  br i1 %952, label %953, label %973

953:                                              ; preds = %949
  %954 = load float, float* %27, align 4
  %955 = fpext float %954 to double
  %956 = fmul double %955, 1.005000e+00
  %957 = fptrunc double %956 to float
  store float %957, float* %27, align 4
  %958 = load i32, i32* %14, align 4
  %959 = load float, float* %27, align 4
  call void @set_maximum_move_value(i32 %958, float %959)
  %960 = load i32, i32* %14, align 4
  call void @scale_randomness(i32 %960, float 5.000000e+00)
  %961 = load i32, i32* @verbose, align 4
  %962 = icmp ne i32 %961, 0
  br i1 %962, label %964, label %963

963:                                              ; preds = %953
  br label %972

964:                                              ; preds = %953
  %965 = load float, float* %27, align 4
  %966 = fpext float %965 to double
  %967 = load %struct.pattern*, %struct.pattern** %8, align 8
  %968 = getelementptr inbounds %struct.pattern, %struct.pattern* %967, i32 0, i32 17
  %969 = load float, float* %968, align 4
  %970 = fpext float %969 to double
  %971 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), double %966, double %970)
  br label %972

972:                                              ; preds = %964, %963
  br label %986

973:                                              ; preds = %949, %946
  %974 = load i32, i32* @verbose, align 4
  %975 = icmp ne i32 %974, 0
  br i1 %975, label %977, label %976

976:                                              ; preds = %973
  br label %985

977:                                              ; preds = %973
  %978 = load float, float* %27, align 4
  %979 = fpext float %978 to double
  %980 = load %struct.pattern*, %struct.pattern** %8, align 8
  %981 = getelementptr inbounds %struct.pattern, %struct.pattern* %980, i32 0, i32 17
  %982 = load float, float* %981, align 4
  %983 = fpext float %982 to double
  %984 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), double %979, double %983)
  br label %985

985:                                              ; preds = %977, %976
  br label %986

986:                                              ; preds = %985, %972
  %987 = load i32, i32* %14, align 4
  %988 = load float, float* %27, align 4
  %989 = call i32 @set_minimum_move_value(i32 %987, float %988)
  br label %990

990:                                              ; preds = %986, %898
  %991 = load i32, i32* %23, align 4
  %992 = and i32 %991, 524288
  %993 = icmp ne i32 %992, 0
  br i1 %993, label %994, label %1068

994:                                              ; preds = %990
  store float 1.700000e+01, float* %28, align 4
  %995 = load i32, i32* @verbose, align 4
  %996 = icmp ne i32 %995, 0
  br i1 %996, label %998, label %997

997:                                              ; preds = %994
  br label %1000

998:                                              ; preds = %994
  %999 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  br label %1000

1000:                                             ; preds = %998, %997
  %1001 = load i32, i32* @board_size, align 4
  %1002 = sitofp i32 %1001 to double
  %1003 = fdiv double %1002, 1.900000e+01
  %1004 = load float, float* %28, align 4
  %1005 = fpext float %1004 to double
  %1006 = fmul double %1005, %1003
  %1007 = fptrunc double %1006 to float
  store float %1007, float* %28, align 4
  %1008 = load i32, i32* %23, align 4
  %1009 = and i32 %1008, 268435456
  %1010 = icmp ne i32 %1009, 0
  br i1 %1010, label %1011, label %1024

1011:                                             ; preds = %1000
  %1012 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1013 = getelementptr inbounds %struct.pattern, %struct.pattern* %1012, i32 0, i32 17
  %1014 = load float, float* %1013, align 4
  %1015 = fpext float %1014 to double
  %1016 = fmul double 1.000000e-02, %1015
  %1017 = fadd double 1.000000e+00, %1016
  %1018 = load float, float* %28, align 4
  %1019 = fpext float %1018 to double
  %1020 = fmul double %1019, %1017
  %1021 = fptrunc double %1020 to float
  store float %1021, float* %28, align 4
  %1022 = load i32, i32* %23, align 4
  %1023 = and i32 %1022, -268435457
  store i32 %1023, i32* %23, align 4
  br label %1024

1024:                                             ; preds = %1011, %1000
  %1025 = load i32, i32* @board_size, align 4
  %1026 = icmp sge i32 %1025, 17
  br i1 %1026, label %1027, label %1051

1027:                                             ; preds = %1024
  %1028 = load i32, i32* %23, align 4
  %1029 = and i32 %1028, 8388608
  %1030 = icmp ne i32 %1029, 0
  br i1 %1030, label %1031, label %1051

1031:                                             ; preds = %1027
  %1032 = load float, float* %28, align 4
  %1033 = fpext float %1032 to double
  %1034 = fmul double %1033, 1.005000e+00
  %1035 = fptrunc double %1034 to float
  store float %1035, float* %28, align 4
  %1036 = load i32, i32* %14, align 4
  %1037 = load float, float* %28, align 4
  call void @set_maximum_move_value(i32 %1036, float %1037)
  %1038 = load i32, i32* %14, align 4
  call void @scale_randomness(i32 %1038, float 5.000000e+00)
  %1039 = load i32, i32* @verbose, align 4
  %1040 = icmp ne i32 %1039, 0
  br i1 %1040, label %1042, label %1041

1041:                                             ; preds = %1031
  br label %1050

1042:                                             ; preds = %1031
  %1043 = load float, float* %28, align 4
  %1044 = fpext float %1043 to double
  %1045 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1046 = getelementptr inbounds %struct.pattern, %struct.pattern* %1045, i32 0, i32 17
  %1047 = load float, float* %1046, align 4
  %1048 = fpext float %1047 to double
  %1049 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0), double %1044, double %1048)
  br label %1050

1050:                                             ; preds = %1042, %1041
  br label %1064

1051:                                             ; preds = %1027, %1024
  %1052 = load i32, i32* @verbose, align 4
  %1053 = icmp ne i32 %1052, 0
  br i1 %1053, label %1055, label %1054

1054:                                             ; preds = %1051
  br label %1063

1055:                                             ; preds = %1051
  %1056 = load float, float* %28, align 4
  %1057 = fpext float %1056 to double
  %1058 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1059 = getelementptr inbounds %struct.pattern, %struct.pattern* %1058, i32 0, i32 17
  %1060 = load float, float* %1059, align 4
  %1061 = fpext float %1060 to double
  %1062 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.22, i64 0, i64 0), double %1057, double %1061)
  br label %1063

1063:                                             ; preds = %1055, %1054
  br label %1064

1064:                                             ; preds = %1063, %1050
  %1065 = load i32, i32* %14, align 4
  %1066 = load float, float* %28, align 4
  %1067 = call i32 @set_minimum_move_value(i32 %1065, float %1066)
  br label %1068

1068:                                             ; preds = %1064, %990
  %1069 = load i32, i32* %23, align 4
  %1070 = and i32 %1069, 1048576
  %1071 = icmp ne i32 %1070, 0
  br i1 %1071, label %1072, label %1142

1072:                                             ; preds = %1068
  %1073 = load i32, i32* @verbose, align 4
  %1074 = icmp ne i32 %1073, 0
  br i1 %1074, label %1076, label %1075

1075:                                             ; preds = %1072
  br label %1078

1076:                                             ; preds = %1072
  %1077 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  br label %1078

1078:                                             ; preds = %1076, %1075
  store i32 0, i32* %12, align 4
  br label %1079

1079:                                             ; preds = %1099, %1078
  %1080 = load i32, i32* %12, align 4
  %1081 = load i32, i32* %16, align 4
  %1082 = icmp slt i32 %1080, %1081
  br i1 %1082, label %1083, label %1102

1083:                                             ; preds = %1079
  %1084 = load i32, i32* %14, align 4
  %1085 = load i32, i32* %12, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %1086
  %1088 = load i32, i32* %1087, align 4
  call void @add_strategical_defense_move(i32 %1084, i32 %1088)
  %1089 = load i32, i32* @verbose, align 4
  %1090 = icmp ne i32 %1089, 0
  br i1 %1090, label %1092, label %1091

1091:                                             ; preds = %1083
  br label %1098

1092:                                             ; preds = %1083
  %1093 = load i32, i32* %12, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds [5 x i32], [5 x i32]* %15, i64 0, i64 %1094
  %1096 = load i32, i32* %1095, align 4
  %1097 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %1096)
  br label %1098

1098:                                             ; preds = %1092, %1091
  br label %1099

1099:                                             ; preds = %1098
  %1100 = load i32, i32* %12, align 4
  %1101 = add nsw i32 %1100, 1
  store i32 %1101, i32* %12, align 4
  br label %1079, !llvm.loop !19

1102:                                             ; preds = %1079
  store i32 1, i32* @urgent, align 4
  store i32 0, i32* %12, align 4
  br label %1103

1103:                                             ; preds = %1123, %1102
  %1104 = load i32, i32* %12, align 4
  %1105 = load i32, i32* %18, align 4
  %1106 = icmp slt i32 %1104, %1105
  br i1 %1106, label %1107, label %1126

1107:                                             ; preds = %1103
  %1108 = load i32, i32* %14, align 4
  %1109 = load i32, i32* %12, align 4
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 %1110
  %1112 = load i32, i32* %1111, align 4
  call void @add_strategical_attack_move(i32 %1108, i32 %1112)
  %1113 = load i32, i32* @verbose, align 4
  %1114 = icmp ne i32 %1113, 0
  br i1 %1114, label %1116, label %1115

1115:                                             ; preds = %1107
  br label %1122

1116:                                             ; preds = %1107
  %1117 = load i32, i32* %12, align 4
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds [5 x i32], [5 x i32]* %17, i64 0, i64 %1118
  %1120 = load i32, i32* %1119, align 4
  %1121 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 %1120)
  br label %1122

1122:                                             ; preds = %1116, %1115
  br label %1123

1123:                                             ; preds = %1122
  %1124 = load i32, i32* %12, align 4
  %1125 = add nsw i32 %1124, 1
  store i32 %1125, i32* %12, align 4
  br label %1103, !llvm.loop !20

1126:                                             ; preds = %1103
  %1127 = load i32, i32* %14, align 4
  call void @add_shape_value(i32 %1127, float 1.500000e+01)
  %1128 = load i32, i32* @verbose, align 4
  %1129 = icmp ne i32 %1128, 0
  br i1 %1129, label %1131, label %1130

1130:                                             ; preds = %1126
  br label %1133

1131:                                             ; preds = %1126
  %1132 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  br label %1133

1133:                                             ; preds = %1131, %1130
  %1134 = load i32, i32* %14, align 4
  %1135 = call i32 @set_minimum_move_value(i32 %1134, float 4.000000e+01)
  %1136 = load i32, i32* @verbose, align 4
  %1137 = icmp ne i32 %1136, 0
  br i1 %1137, label %1139, label %1138

1138:                                             ; preds = %1133
  br label %1141

1139:                                             ; preds = %1133
  %1140 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), double 4.000000e+01)
  br label %1141

1141:                                             ; preds = %1139, %1138
  br label %1142

1142:                                             ; preds = %1141, %1068
  %1143 = load i32, i32* %23, align 4
  %1144 = and i32 %1143, 2097152
  %1145 = icmp ne i32 %1144, 0
  br i1 %1145, label %1146, label %1160

1146:                                             ; preds = %1142
  %1147 = load i32, i32* @verbose, align 4
  %1148 = icmp ne i32 %1147, 0
  br i1 %1148, label %1150, label %1149

1149:                                             ; preds = %1146
  br label %1152

1150:                                             ; preds = %1146
  %1151 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  br label %1152

1152:                                             ; preds = %1150, %1149
  %1153 = load i32, i32* %14, align 4
  call void @add_antisuji_move(i32 %1153)
  %1154 = load i32, i32* @verbose, align 4
  %1155 = icmp ne i32 %1154, 0
  br i1 %1155, label %1157, label %1156

1156:                                             ; preds = %1152
  br label %1159

1157:                                             ; preds = %1152
  %1158 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  br label %1159

1159:                                             ; preds = %1157, %1156
  br label %1160

1160:                                             ; preds = %1159, %1142
  %1161 = load i32, i32* %23, align 4
  %1162 = and i32 %1161, 4194304
  %1163 = icmp ne i32 %1162, 0
  br i1 %1163, label %1164, label %1172

1164:                                             ; preds = %1160
  %1165 = load i32, i32* @verbose, align 4
  %1166 = icmp ne i32 %1165, 0
  br i1 %1166, label %1168, label %1167

1167:                                             ; preds = %1164
  br label %1170

1168:                                             ; preds = %1164
  %1169 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  br label %1170

1170:                                             ; preds = %1168, %1167
  %1171 = load i32, i32* %14, align 4
  call void @add_worthwhile_threat_move(i32 %1171)
  br label %1172

1172:                                             ; preds = %1170, %1160
  %1173 = load i32, i32* %23, align 4
  %1174 = and i32 %1173, 16777216
  %1175 = icmp ne i32 %1174, 0
  br i1 %1175, label %1176, label %1192

1176:                                             ; preds = %1172
  %1177 = load i32, i32* %14, align 4
  %1178 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1179 = getelementptr inbounds %struct.pattern, %struct.pattern* %1178, i32 0, i32 13
  %1180 = load float, float* %1179, align 4
  %1181 = call i32 @set_minimum_move_value(i32 %1177, float %1180)
  %1182 = load i32, i32* @verbose, align 4
  %1183 = icmp ne i32 %1182, 0
  br i1 %1183, label %1185, label %1184

1184:                                             ; preds = %1176
  br label %1191

1185:                                             ; preds = %1176
  %1186 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1187 = getelementptr inbounds %struct.pattern, %struct.pattern* %1186, i32 0, i32 13
  %1188 = load float, float* %1187, align 4
  %1189 = fpext float %1188 to double
  %1190 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), double %1189)
  br label %1191

1191:                                             ; preds = %1185, %1184
  br label %1192

1192:                                             ; preds = %1191, %1172
  %1193 = load i32, i32* %23, align 4
  %1194 = and i32 %1193, 33554432
  %1195 = icmp ne i32 %1194, 0
  br i1 %1195, label %1196, label %1211

1196:                                             ; preds = %1192
  %1197 = load i32, i32* %14, align 4
  %1198 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1199 = getelementptr inbounds %struct.pattern, %struct.pattern* %1198, i32 0, i32 14
  %1200 = load float, float* %1199, align 8
  call void @set_maximum_move_value(i32 %1197, float %1200)
  %1201 = load i32, i32* @verbose, align 4
  %1202 = icmp ne i32 %1201, 0
  br i1 %1202, label %1204, label %1203

1203:                                             ; preds = %1196
  br label %1210

1204:                                             ; preds = %1196
  %1205 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1206 = getelementptr inbounds %struct.pattern, %struct.pattern* %1205, i32 0, i32 14
  %1207 = load float, float* %1206, align 8
  %1208 = fpext float %1207 to double
  %1209 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), double %1208)
  br label %1210

1210:                                             ; preds = %1204, %1203
  br label %1211

1211:                                             ; preds = %1210, %1192
  %1212 = load i32, i32* %23, align 4
  %1213 = and i32 %1212, 67108864
  %1214 = icmp ne i32 %1213, 0
  br i1 %1214, label %1215, label %1230

1215:                                             ; preds = %1211
  %1216 = load i32, i32* %14, align 4
  %1217 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1218 = getelementptr inbounds %struct.pattern, %struct.pattern* %1217, i32 0, i32 15
  %1219 = load float, float* %1218, align 4
  call void @set_minimum_territorial_value(i32 %1216, float %1219)
  %1220 = load i32, i32* @verbose, align 4
  %1221 = icmp ne i32 %1220, 0
  br i1 %1221, label %1223, label %1222

1222:                                             ; preds = %1215
  br label %1229

1223:                                             ; preds = %1215
  %1224 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1225 = getelementptr inbounds %struct.pattern, %struct.pattern* %1224, i32 0, i32 15
  %1226 = load float, float* %1225, align 4
  %1227 = fpext float %1226 to double
  %1228 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.31, i64 0, i64 0), double %1227)
  br label %1229

1229:                                             ; preds = %1223, %1222
  br label %1230

1230:                                             ; preds = %1229, %1211
  %1231 = load i32, i32* %23, align 4
  %1232 = and i32 %1231, 134217728
  %1233 = icmp ne i32 %1232, 0
  br i1 %1233, label %1234, label %1249

1234:                                             ; preds = %1230
  %1235 = load i32, i32* %14, align 4
  %1236 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1237 = getelementptr inbounds %struct.pattern, %struct.pattern* %1236, i32 0, i32 16
  %1238 = load float, float* %1237, align 8
  call void @set_maximum_territorial_value(i32 %1235, float %1238)
  %1239 = load i32, i32* @verbose, align 4
  %1240 = icmp ne i32 %1239, 0
  br i1 %1240, label %1242, label %1241

1241:                                             ; preds = %1234
  br label %1248

1242:                                             ; preds = %1234
  %1243 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1244 = getelementptr inbounds %struct.pattern, %struct.pattern* %1243, i32 0, i32 16
  %1245 = load float, float* %1244, align 8
  %1246 = fpext float %1245 to double
  %1247 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i64 0, i64 0), double %1246)
  br label %1248

1248:                                             ; preds = %1242, %1241
  br label %1249

1249:                                             ; preds = %1248, %1230
  %1250 = load i32, i32* %23, align 4
  %1251 = and i32 %1250, 268435456
  %1252 = icmp ne i32 %1251, 0
  br i1 %1252, label %1253, label %1268

1253:                                             ; preds = %1249
  %1254 = load i32, i32* %14, align 4
  %1255 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1256 = getelementptr inbounds %struct.pattern, %struct.pattern* %1255, i32 0, i32 17
  %1257 = load float, float* %1256, align 4
  call void @add_shape_value(i32 %1254, float %1257)
  %1258 = load i32, i32* @verbose, align 4
  %1259 = icmp ne i32 %1258, 0
  br i1 %1259, label %1261, label %1260

1260:                                             ; preds = %1253
  br label %1267

1261:                                             ; preds = %1253
  %1262 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1263 = getelementptr inbounds %struct.pattern, %struct.pattern* %1262, i32 0, i32 17
  %1264 = load float, float* %1263, align 4
  %1265 = fpext float %1264 to double
  %1266 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0), double %1265)
  br label %1267

1267:                                             ; preds = %1261, %1260
  br label %1268

1268:                                             ; preds = %1267, %1249
  %1269 = load i32, i32* %23, align 4
  %1270 = and i32 %1269, 536870912
  %1271 = icmp ne i32 %1270, 0
  br i1 %1271, label %1272, label %1287

1272:                                             ; preds = %1268
  %1273 = load i32, i32* %14, align 4
  %1274 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1275 = getelementptr inbounds %struct.pattern, %struct.pattern* %1274, i32 0, i32 18
  %1276 = load float, float* %1275, align 8
  call void @add_followup_value(i32 %1273, float %1276)
  %1277 = load i32, i32* @verbose, align 4
  %1278 = icmp ne i32 %1277, 0
  br i1 %1278, label %1280, label %1279

1279:                                             ; preds = %1272
  br label %1286

1280:                                             ; preds = %1272
  %1281 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1282 = getelementptr inbounds %struct.pattern, %struct.pattern* %1281, i32 0, i32 18
  %1283 = load float, float* %1282, align 8
  %1284 = fpext float %1283 to double
  %1285 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0), double %1284)
  br label %1286

1286:                                             ; preds = %1280, %1279
  br label %1287

1287:                                             ; preds = %1286, %1268
  %1288 = load i32, i32* %23, align 4
  %1289 = and i32 %1288, 1073741824
  %1290 = icmp ne i32 %1289, 0
  br i1 %1290, label %1291, label %1306

1291:                                             ; preds = %1287
  %1292 = load i32, i32* %14, align 4
  %1293 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1294 = getelementptr inbounds %struct.pattern, %struct.pattern* %1293, i32 0, i32 19
  %1295 = load float, float* %1294, align 4
  call void @add_reverse_followup_value(i32 %1292, float %1295)
  %1296 = load i32, i32* @verbose, align 4
  %1297 = icmp ne i32 %1296, 0
  br i1 %1297, label %1299, label %1298

1298:                                             ; preds = %1291
  br label %1305

1299:                                             ; preds = %1291
  %1300 = load %struct.pattern*, %struct.pattern** %8, align 8
  %1301 = getelementptr inbounds %struct.pattern, %struct.pattern* %1300, i32 0, i32 19
  %1302 = load float, float* %1301, align 4
  %1303 = fpext float %1302 to double
  %1304 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0), double %1303)
  br label %1305

1305:                                             ; preds = %1299, %1298
  br label %1306

1306:                                             ; preds = %40, %116, %392, %402, %414, %425, %442, %495, %1305, %1287
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @endgame_shapes(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @verbose, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %10

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @color_to_string(i32 %7)
  %9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i8* %8)
  br label %10

10:                                               ; preds = %6, %5
  %11 = load i32, i32* %2, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @shapes_callback, i32 %11, %struct.pattern_db* @endpat_db, i8* null, i8* null)
  ret void
}

declare dso_local i32 @does_defend(i32, i32) #1

declare dso_local i32 @find_origin(i32) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @is_ko(i32, i32, i32*) #1

declare dso_local i32 @is_legal(i32, i32) #1

declare dso_local i32 @string_connect(i32, i32, i32*) #1

declare dso_local i32 @play_connect_n(i32, i32, i32, ...) #1

declare dso_local void @add_cut_move(i32, i32, i32) #1

declare dso_local void @add_connection_move(i32, i32, i32) #1

declare dso_local i32 @disconnect(i32, i32, i32*) #1

declare dso_local void @add_strategical_defense_move(i32, i32) #1

declare dso_local void @add_shape_value(i32, float) #1

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local void @add_expand_territory_move(i32) #1

declare dso_local void @add_expand_moyo_move(i32) #1

declare dso_local void @add_invasion_move(i32) #1

declare dso_local void @add_strategical_attack_move(i32, i32) #1

declare dso_local i32 @set_minimum_move_value(i32, float) #1

declare dso_local void @set_maximum_move_value(i32, float) #1

declare dso_local void @scale_randomness(i32, float) #1

declare dso_local void @add_antisuji_move(i32) #1

declare dso_local void @add_worthwhile_threat_move(i32) #1

declare dso_local void @set_minimum_territorial_value(i32, float) #1

declare dso_local void @set_maximum_territorial_value(i32, float) #1

declare dso_local void @add_followup_value(i32, float) #1

declare dso_local void @add_reverse_followup_value(i32, float) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
