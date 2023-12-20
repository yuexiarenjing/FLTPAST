; ModuleID = 'semeai.c'
source_filename = "semeai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }

@verbose = external dso_local global i32, align 4
@.str = private unnamed_addr constant [35 x i8] c"Semeai Player is THINKING for %s!\0A\00", align 1
@number_of_dragons = external dso_local global i32, align 4
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str.1 = private unnamed_addr constant [48 x i8] c"Experimental Semeai Module is THINKING for %s!\0A\00", align 1
@debug = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Considering semeai between %1m and %1m\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Result1: %s %s %1m, \00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Result2 %s %s.\0A\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Changing status of %1m from %s to %s.\0A\00", align 1
@board = external dso_local global [421 x i8], align 16
@.str.6 = private unnamed_addr constant [39 x i8] c"Changing safety of %1m from %s to %s.\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"semeai_analyzer: %1m (me) vs %1m (them)\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"added owl attack of %1m at %1m with code %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"added owl defense of %1m at %1m with code %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"changed owl_status and status of %1m to CRITICAL\0A\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"...owl code sufficient to resolve semeai, exiting\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"...tactical situation detected, exiting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @semeai(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 3, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @verbose, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %18

14:                                               ; preds = %1
  %15 = load i32, i32* %2, align 4
  %16 = call i8* @color_to_string(i32 %15)
  %17 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %14, %13
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %184, %18
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @number_of_dragons, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %187

23:                                               ; preds = %19
  %24 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %24, i64 %26
  %28 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %60, label %36

36:                                               ; preds = %23
  %37 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %37, i64 %39
  %41 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %36
  %49 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %49, i64 %51
  %53 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %56, i32 0, i32 16
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 2
  br i1 %59, label %60, label %61

60:                                               ; preds = %48, %23
  br label %184

61:                                               ; preds = %48, %36
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %180, %61
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %64, i64 %66
  %68 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %63, %69
  br i1 %70, label %71, label %183

71:                                               ; preds = %62
  %72 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %72, i64 %74
  %76 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %75, i32 0, i32 1
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %76, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %4, align 4
  %81 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %81, i64 %83
  %85 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %117, label %93

93:                                               ; preds = %71
  %94 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %95 = load i32, i32* %4, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %94, i64 %96
  %98 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %101, i32 0, i32 16
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %118

105:                                              ; preds = %93
  %106 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %106, i64 %108
  %110 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %113, i32 0, i32 16
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 2
  br i1 %116, label %117, label %118

117:                                              ; preds = %105, %71
  br label %180

118:                                              ; preds = %105, %93
  %119 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %119, i64 %121
  %123 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %125
  %127 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %6, align 4
  %129 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %129, i64 %131
  %133 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %140
  %142 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %176, label %145

145:                                              ; preds = %118
  %146 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %146, i64 %152
  %154 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 5
  br i1 %156, label %176, label %157

157:                                              ; preds = %145
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %159
  %161 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %176, label %164

164:                                              ; preds = %157
  %165 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %165, i64 %171
  %173 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 5
  br i1 %175, label %176, label %177

176:                                              ; preds = %164, %157, %145, %118
  br label %180

177:                                              ; preds = %164
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  call void @analyze_semeai(i32 %178, i32 %179)
  br label %180

180:                                              ; preds = %177, %176, %117
  %181 = load i32, i32* %5, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %5, align 4
  br label %62, !llvm.loop !4

183:                                              ; preds = %62
  br label %184

184:                                              ; preds = %183, %60
  %185 = load i32, i32* %3, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %3, align 4
  br label %19, !llvm.loop !6

187:                                              ; preds = %19
  ret void
}

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local i8* @color_to_string(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_semeai(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %19 = alloca i32, align 4
  %20 = alloca [160 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %10, align 4
  store i32 3, i32* %11, align 4
  store i32 3, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %29 = load i32, i32* @debug, align 4
  %30 = and i32 %29, 64
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  br label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %32
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %105

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %105

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %56, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %1085

64:                                               ; preds = %51
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %64
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @owl_does_attack(i32 %76, i32 %77, i32* null)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %103

81:                                               ; preds = %71
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %16, align 4
  call void @add_owl_attack_move(i32 %86, i32 %87, i32 %88)
  %89 = load i32, i32* @debug, align 4
  %90 = and i32 %89, 64
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %81
  br label %102

93:                                               ; preds = %81
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %16, align 4
  %101 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %94, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %93, %92
  store i32 1, i32* %14, align 4
  br label %103

103:                                              ; preds = %102, %71
  br label %104

104:                                              ; preds = %103, %64
  br label %105

105:                                              ; preds = %104, %44, %37
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %107
  %109 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %119, label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %115, i32 0, i32 7
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %238

119:                                              ; preds = %112, %105
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %238

126:                                              ; preds = %119
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %131, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %1085

139:                                              ; preds = %126
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %237

146:                                              ; preds = %139
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %149, i32 0, i32 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %3, align 4
  %153 = call i32 @owl_does_defend(i32 %151, i32 %152, i32* null)
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %236

156:                                              ; preds = %146
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* %17, align 4
  call void @add_owl_defense_move(i32 %161, i32 %162, i32 %163)
  %164 = load i32, i32* @debug, align 4
  %165 = and i32 %164, 64
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %156
  br label %177

168:                                              ; preds = %156
  %169 = load i32, i32* %3, align 4
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %17, align 4
  %176 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i32 %169, i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %167
  %178 = load i32, i32* %3, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %235

184:                                              ; preds = %177
  store i32 21, i32* %18, align 4
  br label %185

185:                                              ; preds = %223, %184
  %186 = load i32, i32* %18, align 4
  %187 = icmp slt i32 %186, 400
  br i1 %187, label %188, label %226

188:                                              ; preds = %185
  %189 = load i32, i32* %18, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp ne i32 %193, 3
  br i1 %194, label %196, label %195

195:                                              ; preds = %188
  br label %223

196:                                              ; preds = %188
  %197 = load i32, i32* %18, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %201, %206
  br i1 %207, label %208, label %222

208:                                              ; preds = %196
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %3, align 4
  %211 = call i32 @is_same_dragon(i32 %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %208
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %216, i32 0, i32 7
  store i32 2, i32* %217, align 4
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %219
  %221 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %220, i32 0, i32 16
  store i32 2, i32* %221, align 4
  br label %222

222:                                              ; preds = %213, %208, %196
  br label %223

223:                                              ; preds = %222, %195
  %224 = load i32, i32* %18, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %18, align 4
  br label %185, !llvm.loop !7

226:                                              ; preds = %185
  %227 = load i32, i32* @debug, align 4
  %228 = and i32 %227, 64
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %226
  br label %234

231:                                              ; preds = %226
  %232 = load i32, i32* %3, align 4
  %233 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %231, %230
  br label %235

235:                                              ; preds = %234, %177
  store i32 1, i32* %14, align 4
  br label %236

236:                                              ; preds = %235, %146
  br label %237

237:                                              ; preds = %236, %139
  br label %238

238:                                              ; preds = %237, %119, %112
  %239 = load i32, i32* %14, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %249

241:                                              ; preds = %238
  %242 = load i32, i32* @debug, align 4
  %243 = and i32 %242, 64
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  br label %248

246:                                              ; preds = %241
  %247 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.11, i64 0, i64 0))
  br label %248

248:                                              ; preds = %246, %245
  br label %1085

249:                                              ; preds = %238
  store i32 21, i32* %15, align 4
  br label %250

250:                                              ; preds = %341, %249
  %251 = load i32, i32* %15, align 4
  %252 = icmp slt i32 %251, 400
  br i1 %252, label %253, label %344

253:                                              ; preds = %250
  %254 = load i32, i32* %15, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = icmp ne i32 %258, 3
  br i1 %259, label %261, label %260

260:                                              ; preds = %253
  br label %341

261:                                              ; preds = %253
  %262 = load i32, i32* %15, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %263
  %265 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %15, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %340

269:                                              ; preds = %261
  %270 = load i32, i32* %15, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %271
  %273 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %272, i32 0, i32 16
  %274 = getelementptr inbounds [10 x i32], [10 x i32]* %273, i64 0, i64 0
  %275 = load i32, i32* %274, align 4
  %276 = icmp eq i32 %275, 5
  br i1 %276, label %277, label %340

277:                                              ; preds = %269
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %3, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %293, label %285

285:                                              ; preds = %277
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %287
  %289 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = load i32, i32* %4, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %339

293:                                              ; preds = %285, %277
  %294 = load i32, i32* %15, align 4
  %295 = getelementptr inbounds [160 x i32], [160 x i32]* %20, i64 0, i64 0
  %296 = call i32 @chainlinks(i32 %294, i32* %295)
  store i32 %296, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %297

297:                                              ; preds = %335, %293
  %298 = load i32, i32* %21, align 4
  %299 = load i32, i32* %19, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %338

301:                                              ; preds = %297
  %302 = load i32, i32* %21, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [160 x i32], [160 x i32]* %20, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  store i32 %305, i32* %22, align 4
  %306 = load i32, i32* %22, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %307
  %309 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %3, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %321, label %313

313:                                              ; preds = %301
  %314 = load i32, i32* %22, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %315
  %317 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %4, align 4
  %320 = icmp eq i32 %318, %319
  br i1 %320, label %321, label %334

321:                                              ; preds = %313, %301
  %322 = load i32, i32* %15, align 4
  %323 = call i32 @owl_substantial(i32 %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %321
  %326 = load i32, i32* @debug, align 4
  %327 = and i32 %326, 64
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %330, label %329

329:                                              ; preds = %325
  br label %332

330:                                              ; preds = %325
  %331 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  br label %332

332:                                              ; preds = %330, %329
  br label %1085

333:                                              ; preds = %321
  br label %334

334:                                              ; preds = %333, %313
  br label %335

335:                                              ; preds = %334
  %336 = load i32, i32* %21, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %21, align 4
  br label %297, !llvm.loop !8

338:                                              ; preds = %297
  br label %339

339:                                              ; preds = %338, %285
  br label %340

340:                                              ; preds = %339, %269, %261
  br label %341

341:                                              ; preds = %340, %260
  %342 = load i32, i32* %15, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %15, align 4
  br label %250, !llvm.loop !9

344:                                              ; preds = %250
  store i32 21, i32* %15, align 4
  br label %345

345:                                              ; preds = %376, %344
  %346 = load i32, i32* %15, align 4
  %347 = icmp slt i32 %346, 400
  br i1 %347, label %348, label %379

348:                                              ; preds = %345
  %349 = load i32, i32* %15, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = icmp ne i32 %353, 3
  br i1 %354, label %355, label %375

355:                                              ; preds = %348
  %356 = load i32, i32* %15, align 4
  %357 = load i32, i32* %3, align 4
  %358 = call i32 @is_same_dragon(i32 %356, i32 %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %365, label %360

360:                                              ; preds = %355
  %361 = load i32, i32* %15, align 4
  %362 = load i32, i32* %4, align 4
  %363 = call i32 @is_same_dragon(i32 %361, i32 %362)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %375

365:                                              ; preds = %360, %355
  %366 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %367 = load i32, i32* %15, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %368
  %370 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %366, i64 %372
  %374 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %373, i32 0, i32 13
  store i32 1, i32* %374, align 4
  br label %375

375:                                              ; preds = %365, %360, %348
  br label %376

376:                                              ; preds = %375
  %377 = load i32, i32* %15, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %15, align 4
  br label %345, !llvm.loop !10

379:                                              ; preds = %345
  store i32 21, i32* %15, align 4
  br label %380

380:                                              ; preds = %470, %379
  %381 = load i32, i32* %15, align 4
  %382 = icmp slt i32 %381, 400
  br i1 %382, label %383, label %473

383:                                              ; preds = %380
  %384 = load i32, i32* %15, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %385
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i32
  %389 = icmp ne i32 %388, 3
  br i1 %389, label %391, label %390

390:                                              ; preds = %383
  br label %470

391:                                              ; preds = %383
  %392 = load i32, i32* %15, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %393
  %395 = load i8, i8* %394, align 1
  %396 = zext i8 %395 to i32
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %405, label %398

398:                                              ; preds = %391
  %399 = load i32, i32* %15, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %400
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %403, 2
  br i1 %404, label %405, label %430

405:                                              ; preds = %398, %391
  %406 = load i32, i32* %15, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %407
  %409 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %15, align 4
  %412 = icmp eq i32 %410, %411
  br i1 %412, label %413, label %430

413:                                              ; preds = %405
  %414 = load i32, i32* %15, align 4
  %415 = load i32, i32* %3, align 4
  %416 = call i32 @is_same_dragon(i32 %414, i32 %415)
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %421

418:                                              ; preds = %413
  %419 = load i32, i32* %5, align 4
  %420 = add nsw i32 %419, -1
  store i32 %420, i32* %5, align 4
  br label %421

421:                                              ; preds = %418, %413
  %422 = load i32, i32* %15, align 4
  %423 = load i32, i32* %4, align 4
  %424 = call i32 @is_same_dragon(i32 %422, i32 %423)
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %421
  %427 = load i32, i32* %6, align 4
  %428 = add nsw i32 %427, -1
  store i32 %428, i32* %6, align 4
  br label %429

429:                                              ; preds = %426, %421
  br label %469

430:                                              ; preds = %405, %398
  %431 = load i32, i32* %15, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %432
  %434 = load i8, i8* %433, align 1
  %435 = zext i8 %434 to i32
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %468

437:                                              ; preds = %430
  %438 = load i32, i32* %15, align 4
  %439 = load i32, i32* %4, align 4
  %440 = call i32 @liberty_of_dragon(i32 %438, i32 %439)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %458

442:                                              ; preds = %437
  %443 = load i32, i32* %6, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %6, align 4
  %445 = load i32, i32* %15, align 4
  %446 = load i32, i32* %3, align 4
  %447 = call i32 @liberty_of_dragon(i32 %445, i32 %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %455

449:                                              ; preds = %442
  %450 = load i32, i32* %7, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %7, align 4
  %452 = load i32, i32* %5, align 4
  %453 = add nsw i32 %452, 1
  store i32 %453, i32* %5, align 4
  %454 = load i32, i32* %15, align 4
  store i32 %454, i32* %9, align 4
  br label %457

455:                                              ; preds = %442
  %456 = load i32, i32* %15, align 4
  store i32 %456, i32* %8, align 4
  br label %457

457:                                              ; preds = %455, %449
  br label %467

458:                                              ; preds = %437
  %459 = load i32, i32* %15, align 4
  %460 = load i32, i32* %3, align 4
  %461 = call i32 @liberty_of_dragon(i32 %459, i32 %460)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %466

463:                                              ; preds = %458
  %464 = load i32, i32* %5, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %5, align 4
  br label %466

466:                                              ; preds = %463, %458
  br label %467

467:                                              ; preds = %466, %457
  br label %468

468:                                              ; preds = %467, %430
  br label %469

469:                                              ; preds = %468, %429
  br label %470

470:                                              ; preds = %469, %390
  %471 = load i32, i32* %15, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %15, align 4
  br label %380, !llvm.loop !11

473:                                              ; preds = %380
  %474 = load i32, i32* %3, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %475
  %477 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %476, i32 0, i32 7
  %478 = load i32, i32* %477, align 4
  %479 = icmp eq i32 %478, 2
  br i1 %479, label %480, label %499

480:                                              ; preds = %473
  %481 = load i32, i32* %3, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %482
  %484 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %483, i32 0, i32 8
  %485 = load i32, i32* %484, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %499

487:                                              ; preds = %480
  %488 = load i32, i32* %3, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %489
  %491 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %490, i32 0, i32 8
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* %3, align 4
  %494 = call i32 @liberty_of_string(i32 %492, i32 %493)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %487
  %497 = load i32, i32* %5, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %5, align 4
  br label %499

499:                                              ; preds = %496, %487, %480, %473
  %500 = load i32, i32* %4, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %501
  %503 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %502, i32 0, i32 7
  %504 = load i32, i32* %503, align 4
  %505 = icmp eq i32 %504, 2
  br i1 %505, label %506, label %525

506:                                              ; preds = %499
  %507 = load i32, i32* %4, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %508
  %510 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %509, i32 0, i32 8
  %511 = load i32, i32* %510, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %513, label %525

513:                                              ; preds = %506
  %514 = load i32, i32* %4, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %515
  %517 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %516, i32 0, i32 8
  %518 = load i32, i32* %517, align 4
  %519 = load i32, i32* %4, align 4
  %520 = call i32 @liberty_of_string(i32 %518, i32 %519)
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %525, label %522

522:                                              ; preds = %513
  %523 = load i32, i32* %6, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %6, align 4
  br label %525

525:                                              ; preds = %522, %513, %506, %499
  %526 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %527 = load i32, i32* %3, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %528
  %530 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %529, i32 0, i32 1
  %531 = load i32, i32* %530, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %526, i64 %532
  %534 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %533, i32 0, i32 10
  %535 = call i32 @min_eyes(%struct.eyevalue* %534)
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %635

537:                                              ; preds = %525
  %538 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %539 = load i32, i32* %4, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %540
  %542 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %541, i32 0, i32 1
  %543 = load i32, i32* %542, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %538, i64 %544
  %546 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %545, i32 0, i32 10
  %547 = call i32 @min_eyes(%struct.eyevalue* %546)
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %635

549:                                              ; preds = %537
  %550 = load i32, i32* %7, align 4
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %571

552:                                              ; preds = %549
  %553 = load i32, i32* %5, align 4
  %554 = load i32, i32* %6, align 4
  %555 = icmp sgt i32 %553, %554
  br i1 %555, label %556, label %560

556:                                              ; preds = %552
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %557 = load i32, i32* %5, align 4
  %558 = load i32, i32* %6, align 4
  %559 = sub nsw i32 %557, %558
  store i32 %559, i32* %13, align 4
  br label %570

560:                                              ; preds = %552
  %561 = load i32, i32* %5, align 4
  %562 = load i32, i32* %6, align 4
  %563 = icmp slt i32 %561, %562
  br i1 %563, label %564, label %568

564:                                              ; preds = %560
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %565 = load i32, i32* %6, align 4
  %566 = load i32, i32* %5, align 4
  %567 = sub nsw i32 %565, %566
  store i32 %567, i32* %13, align 4
  br label %569

568:                                              ; preds = %560
  store i32 2, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %569

569:                                              ; preds = %568, %564
  br label %570

570:                                              ; preds = %569, %556
  br label %634

571:                                              ; preds = %549
  %572 = load i32, i32* %5, align 4
  %573 = load i32, i32* %6, align 4
  %574 = load i32, i32* %7, align 4
  %575 = add nsw i32 %573, %574
  %576 = sub nsw i32 %575, 1
  %577 = icmp eq i32 %572, %576
  br i1 %577, label %578, label %584

578:                                              ; preds = %571
  %579 = load i32, i32* %5, align 4
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %582

581:                                              ; preds = %578
  store i32 2, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %583

582:                                              ; preds = %578
  store i32 1, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %583

583:                                              ; preds = %582, %581
  br label %633

584:                                              ; preds = %571
  %585 = load i32, i32* %5, align 4
  %586 = load i32, i32* %6, align 4
  %587 = load i32, i32* %7, align 4
  %588 = add nsw i32 %586, %587
  %589 = sub nsw i32 %588, 1
  %590 = icmp slt i32 %585, %589
  br i1 %590, label %591, label %599

591:                                              ; preds = %584
  %592 = load i32, i32* %6, align 4
  %593 = load i32, i32* %5, align 4
  %594 = load i32, i32* %7, align 4
  %595 = add nsw i32 %593, %594
  %596 = sub nsw i32 %595, 1
  %597 = icmp slt i32 %592, %596
  br i1 %597, label %598, label %599

598:                                              ; preds = %591
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1000, i32* %13, align 4
  br label %632

599:                                              ; preds = %591, %584
  %600 = load i32, i32* %7, align 4
  %601 = icmp sgt i32 %600, 0
  br i1 %601, label %602, label %615

602:                                              ; preds = %599
  %603 = load i32, i32* %6, align 4
  %604 = load i32, i32* %5, align 4
  %605 = load i32, i32* %7, align 4
  %606 = add nsw i32 %604, %605
  %607 = sub nsw i32 %606, 1
  %608 = icmp eq i32 %603, %607
  br i1 %608, label %609, label %615

609:                                              ; preds = %602
  %610 = load i32, i32* %6, align 4
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %609
  store i32 2, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %614

613:                                              ; preds = %609
  store i32 2, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %614

614:                                              ; preds = %613, %612
  br label %631

615:                                              ; preds = %602, %599
  %616 = load i32, i32* %7, align 4
  %617 = icmp sgt i32 %616, 0
  br i1 %617, label %618, label %630

618:                                              ; preds = %615
  %619 = load i32, i32* %6, align 4
  %620 = load i32, i32* %5, align 4
  %621 = load i32, i32* %7, align 4
  %622 = add nsw i32 %620, %621
  %623 = icmp sgt i32 %619, %622
  br i1 %623, label %624, label %630

624:                                              ; preds = %618
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %625 = load i32, i32* %6, align 4
  %626 = load i32, i32* %5, align 4
  %627 = sub nsw i32 %625, %626
  %628 = load i32, i32* %7, align 4
  %629 = sub nsw i32 %627, %628
  store i32 %629, i32* %13, align 4
  br label %630

630:                                              ; preds = %624, %618, %615
  br label %631

631:                                              ; preds = %630, %614
  br label %632

632:                                              ; preds = %631, %598
  br label %633

633:                                              ; preds = %632, %583
  br label %634

634:                                              ; preds = %633, %570
  br label %635

635:                                              ; preds = %634, %537, %525
  %636 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %637 = load i32, i32* %3, align 4
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %638
  %640 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %639, i32 0, i32 1
  %641 = load i32, i32* %640, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %636, i64 %642
  %644 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %643, i32 0, i32 10
  %645 = call i32 @min_eyes(%struct.eyevalue* %644)
  %646 = icmp sgt i32 %645, 0
  br i1 %646, label %647, label %733

647:                                              ; preds = %635
  %648 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %649 = load i32, i32* %4, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %650
  %652 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %651, i32 0, i32 1
  %653 = load i32, i32* %652, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %648, i64 %654
  %656 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %655, i32 0, i32 10
  %657 = call i32 @min_eyes(%struct.eyevalue* %656)
  %658 = icmp sgt i32 %657, 0
  br i1 %658, label %659, label %733

659:                                              ; preds = %647
  %660 = load i32, i32* %5, align 4
  %661 = load i32, i32* %6, align 4
  %662 = load i32, i32* %7, align 4
  %663 = add nsw i32 %661, %662
  %664 = icmp sgt i32 %660, %663
  br i1 %664, label %665, label %671

665:                                              ; preds = %659
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %666 = load i32, i32* %5, align 4
  %667 = load i32, i32* %6, align 4
  %668 = sub nsw i32 %666, %667
  %669 = load i32, i32* %7, align 4
  %670 = sub nsw i32 %668, %669
  store i32 %670, i32* %13, align 4
  br label %732

671:                                              ; preds = %659
  %672 = load i32, i32* %6, align 4
  %673 = load i32, i32* %5, align 4
  %674 = load i32, i32* %7, align 4
  %675 = add nsw i32 %673, %674
  %676 = icmp sgt i32 %672, %675
  br i1 %676, label %677, label %683

677:                                              ; preds = %671
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %678 = load i32, i32* %6, align 4
  %679 = load i32, i32* %5, align 4
  %680 = sub nsw i32 %678, %679
  %681 = load i32, i32* %7, align 4
  %682 = sub nsw i32 %680, %681
  store i32 %682, i32* %13, align 4
  br label %731

683:                                              ; preds = %671
  %684 = load i32, i32* %7, align 4
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %686, label %691

686:                                              ; preds = %683
  %687 = load i32, i32* %5, align 4
  %688 = load i32, i32* %6, align 4
  %689 = icmp eq i32 %687, %688
  br i1 %689, label %690, label %691

690:                                              ; preds = %686
  store i32 2, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %730

691:                                              ; preds = %686, %683
  %692 = load i32, i32* %7, align 4
  %693 = icmp sgt i32 %692, 0
  br i1 %693, label %694, label %701

694:                                              ; preds = %691
  %695 = load i32, i32* %5, align 4
  %696 = load i32, i32* %7, align 4
  %697 = load i32, i32* %6, align 4
  %698 = add nsw i32 %696, %697
  %699 = icmp eq i32 %695, %698
  br i1 %699, label %700, label %701

700:                                              ; preds = %694
  store i32 1, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %729

701:                                              ; preds = %694, %691
  %702 = load i32, i32* %7, align 4
  %703 = icmp sgt i32 %702, 0
  br i1 %703, label %704, label %717

704:                                              ; preds = %701
  %705 = load i32, i32* %5, align 4
  %706 = load i32, i32* %7, align 4
  %707 = load i32, i32* %6, align 4
  %708 = add nsw i32 %706, %707
  %709 = icmp slt i32 %705, %708
  br i1 %709, label %710, label %717

710:                                              ; preds = %704
  %711 = load i32, i32* %6, align 4
  %712 = load i32, i32* %7, align 4
  %713 = load i32, i32* %5, align 4
  %714 = add nsw i32 %712, %713
  %715 = icmp slt i32 %711, %714
  br i1 %715, label %716, label %717

716:                                              ; preds = %710
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1000, i32* %13, align 4
  br label %728

717:                                              ; preds = %710, %704, %701
  %718 = load i32, i32* %7, align 4
  %719 = icmp sgt i32 %718, 0
  br i1 %719, label %720, label %727

720:                                              ; preds = %717
  %721 = load i32, i32* %6, align 4
  %722 = load i32, i32* %7, align 4
  %723 = load i32, i32* %5, align 4
  %724 = add nsw i32 %722, %723
  %725 = icmp eq i32 %721, %724
  br i1 %725, label %726, label %727

726:                                              ; preds = %720
  store i32 2, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %727

727:                                              ; preds = %726, %720, %717
  br label %728

728:                                              ; preds = %727, %716
  br label %729

729:                                              ; preds = %728, %700
  br label %730

730:                                              ; preds = %729, %690
  br label %731

731:                                              ; preds = %730, %677
  br label %732

732:                                              ; preds = %731, %665
  br label %733

733:                                              ; preds = %732, %647, %635
  %734 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %735 = load i32, i32* %3, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %736
  %738 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %737, i32 0, i32 1
  %739 = load i32, i32* %738, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %734, i64 %740
  %742 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %741, i32 0, i32 10
  %743 = call i32 @min_eyes(%struct.eyevalue* %742)
  %744 = icmp sgt i32 %743, 0
  br i1 %744, label %745, label %791

745:                                              ; preds = %733
  %746 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %747 = load i32, i32* %4, align 4
  %748 = sext i32 %747 to i64
  %749 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %748
  %750 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %749, i32 0, i32 1
  %751 = load i32, i32* %750, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %746, i64 %752
  %754 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %753, i32 0, i32 10
  %755 = call i32 @min_eyes(%struct.eyevalue* %754)
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %757, label %791

757:                                              ; preds = %745
  %758 = load i32, i32* %5, align 4
  %759 = load i32, i32* %7, align 4
  %760 = load i32, i32* %6, align 4
  %761 = add nsw i32 %759, %760
  %762 = icmp sgt i32 %758, %761
  br i1 %762, label %763, label %769

763:                                              ; preds = %757
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %764 = load i32, i32* %5, align 4
  %765 = load i32, i32* %7, align 4
  %766 = sub nsw i32 %764, %765
  %767 = load i32, i32* %6, align 4
  %768 = sub nsw i32 %766, %767
  store i32 %768, i32* %13, align 4
  br label %790

769:                                              ; preds = %757
  %770 = load i32, i32* %5, align 4
  %771 = load i32, i32* %7, align 4
  %772 = add nsw i32 %770, %771
  %773 = load i32, i32* %6, align 4
  %774 = icmp eq i32 %772, %773
  br i1 %774, label %775, label %776

775:                                              ; preds = %769
  store i32 2, i32* %11, align 4
  store i32 2, i32* %12, align 4
  br label %789

776:                                              ; preds = %769
  %777 = load i32, i32* %5, align 4
  %778 = load i32, i32* %7, align 4
  %779 = add nsw i32 %777, %778
  %780 = load i32, i32* %6, align 4
  %781 = icmp slt i32 %779, %780
  br i1 %781, label %782, label %788

782:                                              ; preds = %776
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %783 = load i32, i32* %5, align 4
  %784 = load i32, i32* %7, align 4
  %785 = add nsw i32 %783, %784
  %786 = load i32, i32* %6, align 4
  %787 = sub nsw i32 %785, %786
  store i32 %787, i32* %13, align 4
  br label %788

788:                                              ; preds = %782, %776
  br label %789

789:                                              ; preds = %788, %775
  br label %790

790:                                              ; preds = %789, %763
  br label %791

791:                                              ; preds = %790, %745, %733
  %792 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %793 = load i32, i32* %3, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %794
  %796 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %795, i32 0, i32 1
  %797 = load i32, i32* %796, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %792, i64 %798
  %800 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %799, i32 0, i32 10
  %801 = call i32 @min_eyes(%struct.eyevalue* %800)
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %803, label %849

803:                                              ; preds = %791
  %804 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %805 = load i32, i32* %4, align 4
  %806 = sext i32 %805 to i64
  %807 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %806
  %808 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %807, i32 0, i32 1
  %809 = load i32, i32* %808, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %804, i64 %810
  %812 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %811, i32 0, i32 10
  %813 = call i32 @min_eyes(%struct.eyevalue* %812)
  %814 = icmp sgt i32 %813, 0
  br i1 %814, label %815, label %849

815:                                              ; preds = %803
  %816 = load i32, i32* %6, align 4
  %817 = load i32, i32* %7, align 4
  %818 = add nsw i32 %816, %817
  %819 = load i32, i32* %5, align 4
  %820 = icmp sgt i32 %818, %819
  br i1 %820, label %821, label %827

821:                                              ; preds = %815
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %822 = load i32, i32* %6, align 4
  %823 = load i32, i32* %7, align 4
  %824 = add nsw i32 %822, %823
  %825 = load i32, i32* %5, align 4
  %826 = sub nsw i32 %824, %825
  store i32 %826, i32* %13, align 4
  br label %848

827:                                              ; preds = %815
  %828 = load i32, i32* %6, align 4
  %829 = load i32, i32* %7, align 4
  %830 = add nsw i32 %828, %829
  %831 = load i32, i32* %5, align 4
  %832 = icmp eq i32 %830, %831
  br i1 %832, label %833, label %834

833:                                              ; preds = %827
  store i32 2, i32* %11, align 4
  store i32 2, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %847

834:                                              ; preds = %827
  %835 = load i32, i32* %6, align 4
  %836 = load i32, i32* %7, align 4
  %837 = add nsw i32 %835, %836
  %838 = load i32, i32* %5, align 4
  %839 = icmp sgt i32 %837, %838
  br i1 %839, label %840, label %846

840:                                              ; preds = %834
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %841 = load i32, i32* %6, align 4
  %842 = load i32, i32* %5, align 4
  %843 = sub nsw i32 %841, %842
  %844 = load i32, i32* %7, align 4
  %845 = sub nsw i32 %843, %844
  store i32 %845, i32* %13, align 4
  br label %846

846:                                              ; preds = %840, %834
  br label %847

847:                                              ; preds = %846, %833
  br label %848

848:                                              ; preds = %847, %821
  br label %849

849:                                              ; preds = %848, %803, %791
  %850 = load i32, i32* %3, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %851
  %853 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %852, i32 0, i32 7
  %854 = load i32, i32* %853, align 4
  %855 = icmp ne i32 %854, 2
  br i1 %855, label %856, label %874

856:                                              ; preds = %849
  %857 = load i32, i32* %11, align 4
  %858 = icmp eq i32 %857, 1
  br i1 %858, label %859, label %861

859:                                              ; preds = %856
  %860 = load i32, i32* %3, align 4
  call void @update_status(i32 %860, i32 1, i32 7)
  br label %873

861:                                              ; preds = %856
  %862 = load i32, i32* %11, align 4
  %863 = icmp eq i32 %862, 2
  br i1 %863, label %864, label %866

864:                                              ; preds = %861
  %865 = load i32, i32* %3, align 4
  call void @update_status(i32 %865, i32 2, i32 2)
  br label %872

866:                                              ; preds = %861
  %867 = load i32, i32* %11, align 4
  %868 = icmp eq i32 %867, 0
  br i1 %868, label %869, label %871

869:                                              ; preds = %866
  %870 = load i32, i32* %3, align 4
  call void @update_status(i32 %870, i32 0, i32 0)
  br label %871

871:                                              ; preds = %869, %866
  br label %872

872:                                              ; preds = %871, %864
  br label %873

873:                                              ; preds = %872, %859
  br label %874

874:                                              ; preds = %873, %849
  %875 = load i32, i32* %12, align 4
  %876 = icmp eq i32 %875, 1
  br i1 %876, label %877, label %879

877:                                              ; preds = %874
  %878 = load i32, i32* %4, align 4
  call void @update_status(i32 %878, i32 1, i32 7)
  br label %891

879:                                              ; preds = %874
  %880 = load i32, i32* %12, align 4
  %881 = icmp eq i32 %880, 2
  br i1 %881, label %882, label %884

882:                                              ; preds = %879
  %883 = load i32, i32* %4, align 4
  call void @update_status(i32 %883, i32 2, i32 2)
  br label %890

884:                                              ; preds = %879
  %885 = load i32, i32* %12, align 4
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %887, label %889

887:                                              ; preds = %884
  %888 = load i32, i32* %4, align 4
  call void @update_status(i32 %888, i32 0, i32 0)
  br label %889

889:                                              ; preds = %887, %884
  br label %890

890:                                              ; preds = %889, %882
  br label %891

891:                                              ; preds = %890, %877
  %892 = load i32, i32* %11, align 4
  %893 = icmp eq i32 %892, 2
  br i1 %893, label %897, label %894

894:                                              ; preds = %891
  %895 = load i32, i32* %12, align 4
  %896 = icmp eq i32 %895, 2
  br i1 %896, label %897, label %1085

897:                                              ; preds = %894, %891
  store i32 0, i32* %23, align 4
  %898 = load i32, i32* %3, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %899
  %901 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %900, i32 0, i32 7
  %902 = load i32, i32* %901, align 4
  %903 = icmp eq i32 %902, 2
  br i1 %903, label %904, label %922

904:                                              ; preds = %897
  %905 = load i32, i32* %3, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %906
  %908 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %907, i32 0, i32 12
  %909 = load i32, i32* %908, align 4
  %910 = icmp ne i32 %909, 0
  br i1 %910, label %911, label %922

911:                                              ; preds = %904
  %912 = load i32, i32* %3, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %913
  %915 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %914, i32 0, i32 12
  %916 = load i32, i32* %915, align 4
  %917 = load i32, i32* %3, align 4
  %918 = load i32, i32* %4, align 4
  %919 = load i32, i32* %11, align 4
  %920 = load i32, i32* %12, align 4
  %921 = load i32, i32* %13, align 4
  call void @add_appropriate_semeai_moves(i32 %916, i32 %917, i32 %918, i32 %919, i32 %920, i32 %921)
  br label %1084

922:                                              ; preds = %904, %897
  %923 = load i32, i32* %4, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %924
  %926 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %925, i32 0, i32 7
  %927 = load i32, i32* %926, align 4
  %928 = icmp eq i32 %927, 2
  br i1 %928, label %929, label %947

929:                                              ; preds = %922
  %930 = load i32, i32* %4, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %931
  %933 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %932, i32 0, i32 8
  %934 = load i32, i32* %933, align 4
  %935 = icmp ne i32 %934, 0
  br i1 %935, label %936, label %947

936:                                              ; preds = %929
  %937 = load i32, i32* %4, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %938
  %940 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %939, i32 0, i32 8
  %941 = load i32, i32* %940, align 4
  %942 = load i32, i32* %3, align 4
  %943 = load i32, i32* %4, align 4
  %944 = load i32, i32* %11, align 4
  %945 = load i32, i32* %12, align 4
  %946 = load i32, i32* %13, align 4
  call void @add_appropriate_semeai_moves(i32 %941, i32 %942, i32 %943, i32 %944, i32 %945, i32 %946)
  br label %1083

947:                                              ; preds = %929, %922
  %948 = load i32, i32* %7, align 4
  %949 = icmp sgt i32 %948, 1
  br i1 %949, label %950, label %1007

950:                                              ; preds = %947
  %951 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %952 = load i32, i32* %3, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %953
  %955 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %954, i32 0, i32 1
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %951, i64 %957
  %959 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %958, i32 0, i32 10
  %960 = call i32 @eye_move_urgency(%struct.eyevalue* %959)
  %961 = icmp sgt i32 %960, 0
  br i1 %961, label %962, label %978

962:                                              ; preds = %950
  %963 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %964 = load i32, i32* %3, align 4
  %965 = sext i32 %964 to i64
  %966 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %965
  %967 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %966, i32 0, i32 1
  %968 = load i32, i32* %967, align 4
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %963, i64 %969
  %971 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %970, i32 0, i32 11
  %972 = load i32, i32* %971, align 4
  %973 = load i32, i32* %3, align 4
  %974 = load i32, i32* %4, align 4
  %975 = load i32, i32* %11, align 4
  %976 = load i32, i32* %12, align 4
  %977 = load i32, i32* %13, align 4
  call void @add_appropriate_semeai_moves(i32 %972, i32 %973, i32 %974, i32 %975, i32 %976, i32 %977)
  br label %978

978:                                              ; preds = %962, %950
  %979 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %980 = load i32, i32* %4, align 4
  %981 = sext i32 %980 to i64
  %982 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %981
  %983 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %982, i32 0, i32 1
  %984 = load i32, i32* %983, align 4
  %985 = sext i32 %984 to i64
  %986 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %979, i64 %985
  %987 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %986, i32 0, i32 10
  %988 = call i32 @eye_move_urgency(%struct.eyevalue* %987)
  %989 = icmp ne i32 %988, 0
  br i1 %989, label %990, label %1006

990:                                              ; preds = %978
  %991 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %992 = load i32, i32* %4, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %993
  %995 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %994, i32 0, i32 1
  %996 = load i32, i32* %995, align 4
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %991, i64 %997
  %999 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %998, i32 0, i32 11
  %1000 = load i32, i32* %999, align 4
  %1001 = load i32, i32* %3, align 4
  %1002 = load i32, i32* %4, align 4
  %1003 = load i32, i32* %11, align 4
  %1004 = load i32, i32* %12, align 4
  %1005 = load i32, i32* %13, align 4
  call void @add_appropriate_semeai_moves(i32 %1000, i32 %1001, i32 %1002, i32 %1003, i32 %1004, i32 %1005)
  br label %1006

1006:                                             ; preds = %990, %978
  br label %1082

1007:                                             ; preds = %947
  store i32 21, i32* %15, align 4
  br label %1008

1008:                                             ; preds = %1042, %1007
  %1009 = load i32, i32* %15, align 4
  %1010 = icmp slt i32 %1009, 400
  br i1 %1010, label %1011, label %1045

1011:                                             ; preds = %1008
  %1012 = load i32, i32* %15, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1013
  %1015 = load i8, i8* %1014, align 1
  %1016 = zext i8 %1015 to i32
  %1017 = icmp ne i32 %1016, 3
  br i1 %1017, label %1019, label %1018

1018:                                             ; preds = %1011
  br label %1042

1019:                                             ; preds = %1011
  %1020 = load i32, i32* %15, align 4
  %1021 = load i32, i32* %4, align 4
  %1022 = call i32 @liberty_of_dragon(i32 %1020, i32 %1021)
  %1023 = icmp ne i32 %1022, 0
  br i1 %1023, label %1024, label %1041

1024:                                             ; preds = %1019
  %1025 = load i32, i32* %15, align 4
  %1026 = load i32, i32* %3, align 4
  %1027 = call i32 @liberty_of_dragon(i32 %1025, i32 %1026)
  %1028 = icmp ne i32 %1027, 0
  br i1 %1028, label %1041, label %1029

1029:                                             ; preds = %1024
  %1030 = load i32, i32* %15, align 4
  %1031 = load i32, i32* %10, align 4
  %1032 = call i32 @safe_move(i32 %1030, i32 %1031)
  %1033 = icmp ne i32 %1032, 0
  br i1 %1033, label %1034, label %1041

1034:                                             ; preds = %1029
  %1035 = load i32, i32* %15, align 4
  %1036 = load i32, i32* %3, align 4
  %1037 = load i32, i32* %4, align 4
  %1038 = load i32, i32* %11, align 4
  %1039 = load i32, i32* %12, align 4
  %1040 = load i32, i32* %13, align 4
  call void @add_appropriate_semeai_moves(i32 %1035, i32 %1036, i32 %1037, i32 %1038, i32 %1039, i32 %1040)
  store i32 1, i32* %23, align 4
  br label %1041

1041:                                             ; preds = %1034, %1029, %1024, %1019
  br label %1042

1042:                                             ; preds = %1041, %1018
  %1043 = load i32, i32* %15, align 4
  %1044 = add nsw i32 %1043, 1
  store i32 %1044, i32* %15, align 4
  br label %1008, !llvm.loop !12

1045:                                             ; preds = %1008
  %1046 = load i32, i32* %23, align 4
  %1047 = icmp ne i32 %1046, 0
  br i1 %1047, label %1081, label %1048

1048:                                             ; preds = %1045
  store i32 21, i32* %15, align 4
  br label %1049

1049:                                             ; preds = %1077, %1048
  %1050 = load i32, i32* %15, align 4
  %1051 = icmp slt i32 %1050, 400
  br i1 %1051, label %1052, label %1080

1052:                                             ; preds = %1049
  %1053 = load i32, i32* %15, align 4
  %1054 = sext i32 %1053 to i64
  %1055 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1054
  %1056 = load i8, i8* %1055, align 1
  %1057 = zext i8 %1056 to i32
  %1058 = icmp ne i32 %1057, 3
  br i1 %1058, label %1059, label %1076

1059:                                             ; preds = %1052
  %1060 = load i32, i32* %15, align 4
  %1061 = load i32, i32* %4, align 4
  %1062 = call i32 @liberty_of_dragon(i32 %1060, i32 %1061)
  %1063 = icmp ne i32 %1062, 0
  br i1 %1063, label %1064, label %1076

1064:                                             ; preds = %1059
  %1065 = load i32, i32* %15, align 4
  %1066 = load i32, i32* %10, align 4
  %1067 = call i32 @safe_move(i32 %1065, i32 %1066)
  %1068 = icmp ne i32 %1067, 0
  br i1 %1068, label %1069, label %1076

1069:                                             ; preds = %1064
  %1070 = load i32, i32* %15, align 4
  %1071 = load i32, i32* %3, align 4
  %1072 = load i32, i32* %4, align 4
  %1073 = load i32, i32* %11, align 4
  %1074 = load i32, i32* %12, align 4
  %1075 = load i32, i32* %13, align 4
  call void @add_appropriate_semeai_moves(i32 %1070, i32 %1071, i32 %1072, i32 %1073, i32 %1074, i32 %1075)
  br label %1076

1076:                                             ; preds = %1069, %1064, %1059, %1052
  br label %1077

1077:                                             ; preds = %1076
  %1078 = load i32, i32* %15, align 4
  %1079 = add nsw i32 %1078, 1
  store i32 %1079, i32* %15, align 4
  br label %1049, !llvm.loop !13

1080:                                             ; preds = %1049
  br label %1081

1081:                                             ; preds = %1080, %1045
  br label %1082

1082:                                             ; preds = %1081, %1006
  br label %1083

1083:                                             ; preds = %1082, %936
  br label %1084

1084:                                             ; preds = %1083, %911
  br label %1085

1085:                                             ; preds = %63, %138, %248, %332, %1084, %894
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_semeai(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i32], align 16
  %10 = alloca [10 x i32], align 16
  %11 = alloca [10 x i32], align 16
  %12 = alloca [10 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [10 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %24 = load i32, i32* %2, align 4
  %25 = sub nsw i32 3, %24
  store i32 %25, i32* %8, align 4
  store i32 3, i32* %13, align 4
  store i32 3, i32* %14, align 4
  store i32 3, i32* %15, align 4
  store i32 3, i32* %16, align 4
  store i32 3, i32* %18, align 4
  store i32 3, i32* %19, align 4
  %26 = load i32, i32* @verbose, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %33

29:                                               ; preds = %1
  %30 = load i32, i32* %2, align 4
  %31 = call i8* @color_to_string(i32 %30)
  %32 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  br label %33

33:                                               ; preds = %29, %28
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %504, %33
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @number_of_dragons, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %507

38:                                               ; preds = %34
  store i32 0, i32* %21, align 4
  %39 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %39, i64 %41
  %43 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %75, label %51

51:                                               ; preds = %38
  %52 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %52, i64 %54
  %56 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %59, i32 0, i32 16
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %51
  %64 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %64, i64 %66
  %68 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %71, i32 0, i32 16
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %63, %38
  br label %504

76:                                               ; preds = %63, %51
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %96, %76
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %79, i64 %81
  %83 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %78, %84
  br i1 %85, label %86, label %99

86:                                               ; preds = %77
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %88
  store i32 0, i32* %89, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %91
  store i32 1, i32* %92, align 4
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %94
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %86
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %5, align 4
  br label %77, !llvm.loop !14

99:                                               ; preds = %77
  store i32 0, i32* %20, align 4
  br label %100

100:                                              ; preds = %500, %99
  %101 = load i32, i32* %20, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %503

103:                                              ; preds = %100
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %455, %103
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %106, i64 %108
  %110 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %105, %111
  br i1 %112, label %113, label %458

113:                                              ; preds = %104
  %114 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %114, i64 %116
  %118 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %117, i32 0, i32 1
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [10 x i32], [10 x i32]* %118, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %4, align 4
  %123 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %123, i64 %125
  %127 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %159, label %135

135:                                              ; preds = %113
  %136 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %136, i64 %138
  %140 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %143, i32 0, i32 16
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %160

147:                                              ; preds = %135
  %148 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %148, i64 %150
  %152 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %155, i32 0, i32 16
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 2
  br i1 %158, label %159, label %160

159:                                              ; preds = %147, %113
  br label %455

160:                                              ; preds = %147, %135
  %161 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %161, i64 %163
  %165 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  store i32 %170, i32* %6, align 4
  %171 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %171, i64 %173
  %175 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %183, i32 0, i32 12
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %218, label %187

187:                                              ; preds = %160
  %188 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %189 = load i32, i32* %6, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %190
  %192 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %188, i64 %194
  %196 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 5
  br i1 %198, label %218, label %199

199:                                              ; preds = %187
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %201
  %203 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %202, i32 0, i32 12
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %218, label %206

206:                                              ; preds = %199
  %207 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %209
  %211 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %207, i64 %213
  %215 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 5
  br i1 %217, label %218, label %219

218:                                              ; preds = %206, %199, %187, %160
  br label %455

219:                                              ; preds = %206
  %220 = load i32, i32* %6, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %221
  %223 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %6, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %226
  %228 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %224, %229
  br i1 %230, label %231, label %252

231:                                              ; preds = %219
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %234, i32 0, i32 16
  %236 = getelementptr inbounds [10 x i32], [10 x i32]* %235, i64 0, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 5
  br i1 %238, label %239, label %252

239:                                              ; preds = %231
  %240 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %242
  %244 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %240, i64 %246
  %248 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %247, i32 0, i32 3
  %249 = load i32, i32* %248, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %252

251:                                              ; preds = %239
  br label %455

252:                                              ; preds = %239, %231, %219
  %253 = load i32, i32* %7, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %254
  %256 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %7, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %259
  %261 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %257, %262
  br i1 %263, label %264, label %285

264:                                              ; preds = %252
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %266
  %268 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %267, i32 0, i32 16
  %269 = getelementptr inbounds [10 x i32], [10 x i32]* %268, i64 0, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 5
  br i1 %271, label %272, label %285

272:                                              ; preds = %264
  %273 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %273, i64 %279
  %281 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %285

284:                                              ; preds = %272
  br label %455

285:                                              ; preds = %272, %264, %252
  %286 = load i32, i32* %6, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %287
  %289 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %299, label %292

292:                                              ; preds = %285
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %294
  %296 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 1
  br i1 %298, label %299, label %300

299:                                              ; preds = %292, %285
  br label %455

300:                                              ; preds = %292
  store i32 1, i32* %21, align 4
  store i32 3, i32* %13, align 4
  store i32 3, i32* %16, align 4
  store i32 3, i32* %15, align 4
  store i32 3, i32* %14, align 4
  %301 = load i32, i32* %20, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %423

303:                                              ; preds = %300
  %304 = load i32, i32* @debug, align 4
  %305 = and i32 %304, 64
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %303
  br label %312

308:                                              ; preds = %303
  %309 = load i32, i32* %6, align 4
  %310 = load i32, i32* %7, align 4
  %311 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %309, i32 %310)
  br label %312

312:                                              ; preds = %308, %307
  %313 = load i32, i32* %6, align 4
  %314 = load i32, i32* %7, align 4
  %315 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %316 = load i32, i32* %5, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 0
  %320 = load i32, i32* %5, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 0
  %324 = load i32, i32* %5, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i32, i32* %323, i64 %325
  call void @owl_analyze_semeai(i32 %313, i32 %314, i32* %318, i32* %322, i32* %326, i32 1)
  %327 = load i32, i32* @debug, align 4
  %328 = and i32 %327, 64
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %331, label %330

330:                                              ; preds = %312
  br label %347

331:                                              ; preds = %312
  %332 = load i32, i32* %5, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %333
  %335 = load i32, i32* %334, align 4
  %336 = call i8* @safety_to_string(i32 %335)
  %337 = load i32, i32* %5, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = call i8* @safety_to_string(i32 %340)
  %342 = load i32, i32* %5, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %336, i8* %341, i32 %345)
  br label %347

347:                                              ; preds = %331, %330
  %348 = load i32, i32* %13, align 4
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %362, label %350

350:                                              ; preds = %347
  %351 = load i32, i32* %13, align 4
  %352 = icmp eq i32 %351, 3
  br i1 %352, label %362, label %353

353:                                              ; preds = %350
  %354 = load i32, i32* %13, align 4
  %355 = icmp eq i32 %354, 7
  br i1 %355, label %356, label %371

356:                                              ; preds = %353
  %357 = load i32, i32* %5, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %371

362:                                              ; preds = %356, %350, %347
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %364
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %13, align 4
  %367 = load i32, i32* %5, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  store i32 %370, i32* %14, align 4
  br label %371

371:                                              ; preds = %362, %356, %353
  %372 = load i32, i32* %7, align 4
  %373 = load i32, i32* %6, align 4
  %374 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 0
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 0
  %379 = load i32, i32* %5, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  call void @owl_analyze_semeai(i32 %372, i32 %373, i32* %377, i32* %381, i32* null, i32 1)
  %382 = load i32, i32* @debug, align 4
  %383 = and i32 %382, 64
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %371
  br label %398

386:                                              ; preds = %371
  %387 = load i32, i32* %5, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = call i8* @safety_to_string(i32 %390)
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = call i8* @safety_to_string(i32 %395)
  %397 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %391, i8* %396)
  br label %398

398:                                              ; preds = %386, %385
  %399 = load i32, i32* %16, align 4
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %413, label %401

401:                                              ; preds = %398
  %402 = load i32, i32* %16, align 4
  %403 = icmp eq i32 %402, 3
  br i1 %403, label %413, label %404

404:                                              ; preds = %401
  %405 = load i32, i32* %16, align 4
  %406 = icmp eq i32 %405, 7
  br i1 %406, label %407, label %422

407:                                              ; preds = %404
  %408 = load i32, i32* %5, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = icmp eq i32 %411, 1
  br i1 %412, label %413, label %422

413:                                              ; preds = %407, %401, %398
  %414 = load i32, i32* %5, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [10 x i32], [10 x i32]* %10, i64 0, i64 %415
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %16, align 4
  %418 = load i32, i32* %5, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [10 x i32], [10 x i32]* %11, i64 0, i64 %419
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* %15, align 4
  br label %422

422:                                              ; preds = %413, %407, %404
  br label %454

423:                                              ; preds = %300
  %424 = load i32, i32* %18, align 4
  %425 = icmp eq i32 %424, 2
  br i1 %425, label %426, label %438

426:                                              ; preds = %423
  %427 = load i32, i32* %5, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %438

432:                                              ; preds = %426
  %433 = load i32, i32* %5, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = load i32, i32* %6, align 4
  call void @add_owl_defense_move(i32 %436, i32 %437, i32 5)
  br label %438

438:                                              ; preds = %432, %426, %423
  %439 = load i32, i32* %19, align 4
  %440 = icmp eq i32 %439, 2
  br i1 %440, label %441, label %453

441:                                              ; preds = %438
  %442 = load i32, i32* %5, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [10 x i32], [10 x i32]* %12, i64 0, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %453

447:                                              ; preds = %441
  %448 = load i32, i32* %5, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [10 x i32], [10 x i32]* %17, i64 0, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* %7, align 4
  call void @add_owl_attack_move(i32 %451, i32 %452, i32 5)
  br label %453

453:                                              ; preds = %447, %441, %438
  br label %454

454:                                              ; preds = %453, %422
  br label %455

455:                                              ; preds = %454, %299, %284, %251, %218, %159
  %456 = load i32, i32* %5, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %5, align 4
  br label %104, !llvm.loop !15

458:                                              ; preds = %104
  %459 = load i32, i32* %20, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %499

461:                                              ; preds = %458
  %462 = load i32, i32* %21, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %499

464:                                              ; preds = %461
  %465 = load i32, i32* %13, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %471

467:                                              ; preds = %464
  %468 = load i32, i32* %15, align 4
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %467
  store i32 2, i32* %22, align 4
  br label %473

471:                                              ; preds = %467, %464
  %472 = load i32, i32* %15, align 4
  store i32 %472, i32* %22, align 4
  br label %473

473:                                              ; preds = %471, %470
  %474 = load i32, i32* %16, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %480

476:                                              ; preds = %473
  %477 = load i32, i32* %14, align 4
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %476
  store i32 2, i32* %23, align 4
  br label %482

480:                                              ; preds = %476, %473
  %481 = load i32, i32* %14, align 4
  store i32 %481, i32* %23, align 4
  br label %482

482:                                              ; preds = %480, %479
  %483 = load i32, i32* %22, align 4
  store i32 %483, i32* %22, align 4
  %484 = load i32, i32* %23, align 4
  store i32 %484, i32* %23, align 4
  %485 = load i32, i32* %22, align 4
  %486 = icmp eq i32 %485, 7
  br i1 %486, label %487, label %488

487:                                              ; preds = %482
  store i32 1, i32* %22, align 4
  br label %488

488:                                              ; preds = %487, %482
  %489 = load i32, i32* %23, align 4
  %490 = icmp eq i32 %489, 7
  br i1 %490, label %491, label %492

491:                                              ; preds = %488
  store i32 1, i32* %23, align 4
  br label %492

492:                                              ; preds = %491, %488
  %493 = load i32, i32* %6, align 4
  %494 = load i32, i32* %22, align 4
  %495 = load i32, i32* %22, align 4
  call void @update_status(i32 %493, i32 %494, i32 %495)
  %496 = load i32, i32* %7, align 4
  %497 = load i32, i32* %23, align 4
  %498 = load i32, i32* %23, align 4
  call void @update_status(i32 %496, i32 %497, i32 %498)
  br label %499

499:                                              ; preds = %492, %461, %458
  br label %500

500:                                              ; preds = %499
  %501 = load i32, i32* %20, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, i32* %20, align 4
  br label %100, !llvm.loop !16

503:                                              ; preds = %100
  br label %504

504:                                              ; preds = %503, %75
  %505 = load i32, i32* %3, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %3, align 4
  br label %34, !llvm.loop !17

507:                                              ; preds = %34
  ret void
}

declare dso_local void @owl_analyze_semeai(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i8* @safety_to_string(i32) #1

declare dso_local void @add_owl_defense_move(i32, i32, i32) #1

declare dso_local void @add_owl_attack_move(i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_status(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %10, i32 0, i32 16
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %18, i32 0, i32 16
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %75

25:                                               ; preds = %22, %15
  %26 = load i32, i32* @debug, align 4
  %27 = and i32 %26, 64
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %41

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 4
  %37 = call i8* @status_to_string(i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i8* @status_to_string(i32 %38)
  %40 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %31, i8* %37, i8* %39)
  br label %41

41:                                               ; preds = %30, %29
  store i32 21, i32* %7, align 4
  br label %42

42:                                               ; preds = %71, %41
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 400
  br i1 %44, label %45, label %74

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %70

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @is_same_dragon(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %68, i32 0, i32 16
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %59, %52
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %42, !llvm.loop !18

74:                                               ; preds = %42
  br label %75

75:                                               ; preds = %74, %22, %3
  %76 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %76, i64 %82
  %84 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %88, label %135

88:                                               ; preds = %75
  %89 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %89, i64 %95
  %97 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 2
  br i1 %99, label %103, label %100

100:                                              ; preds = %88
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %100, %88
  %104 = load i32, i32* @debug, align 4
  %105 = and i32 %104, 64
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %103
  br label %124

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  %110 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %110, i64 %116
  %118 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @safety_to_string(i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = call i8* @safety_to_string(i32 %121)
  %123 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %109, i8* %120, i8* %122)
  br label %124

124:                                              ; preds = %108, %107
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %128
  %130 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %126, i64 %132
  %134 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %133, i32 0, i32 6
  store i32 %125, i32* %134, align 4
  br label %135

135:                                              ; preds = %124, %100, %75
  ret void
}

declare dso_local i8* @status_to_string(i32) #1

declare dso_local i32 @is_same_dragon(i32, i32) #1

declare dso_local i32 @owl_does_attack(i32, i32, i32*) #1

declare dso_local i32 @owl_does_defend(i32, i32, i32*) #1

declare dso_local i32 @chainlinks(i32, i32*) #1

declare dso_local i32 @owl_substantial(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liberty_of_dragon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %87

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 20
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 20
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %85, label %34

34:                                               ; preds = %25, %17
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %42, label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %85, label %51

51:                                               ; preds = %42, %34
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 20
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 3
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = load i32, i32* %4, align 4
  %61 = sub nsw i32 %60, 20
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %85, label %68

68:                                               ; preds = %59, %51
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 3
  br i1 %75, label %76, label %86

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %76, %59, %42, %25
  store i32 1, i32* %3, align 4
  br label %87

86:                                               ; preds = %76, %68
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %85, %16, %8
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @liberty_of_string(i32, i32) #1

declare dso_local i32 @min_eyes(%struct.eyevalue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_appropriate_semeai_moves(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  call void @add_semeai_move(i32 %16, i32 %17)
  br label %25

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  call void @add_semeai_threat(i32 %22, i32 %23)
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %15
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  call void @add_semeai_move(i32 %29, i32 %30)
  br label %38

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  call void @add_semeai_threat(i32 %35, i32 %36)
  br label %37

37:                                               ; preds = %34, %31
  br label %38

38:                                               ; preds = %37, %28
  ret void
}

declare dso_local i32 @eye_move_urgency(%struct.eyevalue*) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local void @add_semeai_move(i32, i32) #1

declare dso_local void @add_semeai_threat(i32, i32) #1

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
