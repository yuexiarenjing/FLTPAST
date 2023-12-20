; ModuleID = 'play_solo.c'
source_filename = "play_solo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@random_seed = external dso_local global i32, align 4
@level = external dso_local global i32, align 4
@chinese_rules = external dso_local global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"random move\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s(%d): Pass\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@movenum = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"%s(%d): %m\0A\00", align 1
@stats = external dso_local global %struct.stats_data, align 4
@stdout = external dso_local global %struct._IO_FILE*, align 8
@lower_bound = external dso_local global float, align 4
@upper_bound = external dso_local global float, align 4
@score = external dso_local global float, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"%10d moves played in %0.3f seconds\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%10.3f seconds/move\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"%10d nodes\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"%10d positions entered\0A\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%10d position hits\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%10d read results entered\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%10d hash collisions\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"%10d owl nodes\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"%s move: PASS!\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"white (O)\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"black (X)\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s move %m\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"load and analyze mode\00", align 1
@board_size = external dso_local global i32, align 4
@komi = external dso_local global float, align 4
@doing_scoring = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"finish\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"aftermath\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"%d %s move %m\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"%d %s move : PASS!\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Black wins by %1.1f points\0A\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"White wins by %1.1f points\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"Jigo\0A\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"%1c%f\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Result from file: %1.1f\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"GNU Go result and result from file are \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"identical\0A\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"different\0A\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"Result from file: Resign\0A\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"\0A%s seems to win by %1.1f points\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"W\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_solo(%struct.Gameinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.Gameinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFTree_t, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stats_data, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %10, align 4
  %18 = call i32 @gnugo_get_boardsize()
  store i32 %18, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = call i32 @gg_rand()
  %20 = mul nsw i32 2, %19
  %21 = srem i32 %20, 5
  %22 = add nsw i32 6, %21
  store i32 %22, i32* %14, align 4
  call void @gnugo_set_komi(float 5.500000e+00)
  call void @sgftree_clear(%struct.SGFTree_t* %5)
  %23 = call i32 @gnugo_get_boardsize()
  %24 = call float @gnugo_get_komi()
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %5, i32 %23, float %24)
  %25 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 0
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %25, align 8
  %27 = load i32, i32* @random_seed, align 4
  %28 = load i32, i32* @level, align 4
  %29 = load i32, i32* @chinese_rules, align 4
  call void @sgf_write_header(%struct.SGFNode_t* %26, i32 1, i32 %27, float 5.500000e+00, i32 %28, i32 %29)
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 6
  br i1 %31, label %32, label %80

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %75, %32
  br label %34

34:                                               ; preds = %49, %33
  %35 = call i32 @gg_rand()
  %36 = srem i32 %35, 4
  %37 = call i32 @gg_rand()
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %38, 4
  %40 = srem i32 %37, %39
  %41 = add nsw i32 %36, %40
  store i32 %41, i32* %15, align 4
  %42 = call i32 @gg_rand()
  %43 = srem i32 %42, 4
  %44 = call i32 @gg_rand()
  %45 = load i32, i32* %11, align 4
  %46 = sub nsw i32 %45, 4
  %47 = srem i32 %44, %46
  %48 = add nsw i32 %43, %47
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %34
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %16, align 4
  %52 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %53 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @gnugo_is_legal(i32 %50, i32 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %34, label %58, !llvm.loop !4

58:                                               ; preds = %49
  %59 = load i32, i32* %15, align 4
  %60 = load i32, i32* %16, align 4
  %61 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %62 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  call void @gnugo_play_move(i32 %59, i32 %60, i32 %63)
  %64 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %65 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %16, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %5, i32 %66, i32 %67, i32 %68)
  call void @sgftreeAddComment(%struct.SGFTree_t* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %70 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 3, %71
  %73 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %74 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %58
  %76 = load i32, i32* %14, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %14, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %33, label %79, !llvm.loop !6

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %2
  %81 = call double @gg_cputime()
  store double %81, double* %8, align 8
  %82 = bitcast %struct.stats_data* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %82, i8 0, i64 24, i1 false)
  br label %83

83:                                               ; preds = %140, %80
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %4, align 4
  %89 = icmp sge i32 %88, 0
  br label %90

90:                                               ; preds = %86, %83
  %91 = phi i1 [ false, %83 ], [ %89, %86 ]
  br i1 %91, label %92, label %164

92:                                               ; preds = %90
  call void @reset_owl_node_counter()
  %93 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %94 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @gnugo_genmove(i32* %15, i32* %16, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %100 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  call void @gnugo_play_move(i32 %97, i32 %98, i32 %101)
  %102 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 1
  %103 = load %struct.SGFNode_t*, %struct.SGFNode_t** %102, align 8
  %104 = load i32, i32* %7, align 4
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %103, i32 %104)
  %105 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %106 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = load i32, i32* %16, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %5, i32 %107, i32 %108, i32 %109)
  call void @sgffile_output(%struct.SGFTree_t* %5)
  %110 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %111 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 3, %112
  %114 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %115 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %92
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  %121 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %122 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 2
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %127 = load i32, i32* @movenum, align 4
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %126, i32 %127)
  br label %140

129:                                              ; preds = %92
  store i32 0, i32* %6, align 4
  %130 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %131 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %132, 2
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %136 = load i32, i32* @movenum, align 4
  %137 = load i32, i32* %15, align 4
  %138 = load i32, i32* %16, align 4
  %139 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %135, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %129, %118
  %141 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  %142 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %141
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  %146 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %145
  store i32 %148, i32* %146, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  %150 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %149
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  %154 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %153
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %158 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %157
  store i32 %160, i32* %158, align 4
  %161 = call i32 @get_owl_node_counter()
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %13, align 4
  br label %83, !llvm.loop !7

164:                                              ; preds = %90
  %165 = call double @gg_cputime()
  store double %165, double* %9, align 8
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @gnugo_who_wins(i32 0, %struct._IO_FILE* %166)
  %167 = call float @gnugo_estimate_score(float* @lower_bound, float* @upper_bound)
  store float %167, float* @score, align 4
  %168 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 0
  %169 = load %struct.SGFNode_t*, %struct.SGFNode_t** %168, align 8
  %170 = load float, float* @score, align 4
  call void @sgfWriteResult(%struct.SGFNode_t* %169, float %170, i32 1)
  call void @sgffile_output(%struct.SGFTree_t* %5)
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %4, align 4
  %173 = sub nsw i32 %171, %172
  %174 = load double, double* %9, align 8
  %175 = load double, double* %8, align 8
  %176 = fsub double %174, %175
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %173, double %176)
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %191

181:                                              ; preds = %164
  %182 = load double, double* %9, align 8
  %183 = load double, double* %8, align 8
  %184 = fsub double %182, %183
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %4, align 4
  %187 = sub nsw i32 %185, %186
  %188 = sitofp i32 %187 to double
  %189 = fdiv double %184, %188
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), double %189)
  br label %191

191:                                              ; preds = %181, %164
  %192 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %193)
  %195 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %196)
  %198 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i32 %199)
  %201 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 %202)
  %204 = getelementptr inbounds %struct.stats_data, %struct.stats_data* %12, i32 0, i32 5
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* %13, align 4
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %207)
  ret void
}

declare dso_local i32 @gnugo_get_boardsize() #1

declare dso_local i32 @gg_rand() #1

declare dso_local void @gnugo_set_komi(float) #1

declare dso_local void @sgftree_clear(%struct.SGFTree_t*) #1

declare dso_local void @sgftreeCreateHeaderNode(%struct.SGFTree_t*, i32, float) #1

declare dso_local float @gnugo_get_komi() #1

declare dso_local void @sgf_write_header(%struct.SGFNode_t*, i32, i32, float, i32, i32) #1

declare dso_local i32 @gnugo_is_legal(i32, i32, i32) #1

declare dso_local void @gnugo_play_move(i32, i32, i32) #1

declare dso_local void @sgftreeAddPlay(%struct.SGFTree_t*, i32, i32, i32) #1

declare dso_local void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

declare dso_local double @gg_cputime() #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @reset_owl_node_counter() #1

declare dso_local i32 @gnugo_genmove(i32*, i32*, i32) #1

declare dso_local void @sgffile_add_debuginfo(%struct.SGFNode_t*, i32) #1

declare dso_local void @sgffile_output(%struct.SGFTree_t*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local i32 @get_owl_node_counter() #1

declare dso_local void @gnugo_who_wins(i32, %struct._IO_FILE*) #1

declare dso_local float @gnugo_estimate_score(float*, float*) #1

declare dso_local void @sgfWriteResult(%struct.SGFNode_t*, float, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_and_analyze_sgf_file(%struct.Gameinfo* %0) #0 {
  %2 = alloca %struct.Gameinfo*, align 8
  %3 = alloca %struct.SGFTree_t, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %2, align 8
  %8 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %9 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %12 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %11, i32 0, i32 2
  %13 = bitcast %struct.SGFTree_t* %3 to i8*
  %14 = bitcast %struct.SGFTree_t* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @gnugo_genmove(i32* %4, i32* %5, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 20
  %19 = add nsw i32 21, %18
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @is_pass(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)
  %29 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* %28)
  br label %38

30:                                               ; preds = %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i8* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  call void @gnugo_play_move(i32 %39, i32 %40, i32 %41)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %3, i32 %42, i32 %43, i32 %44)
  call void @sgftreeAddComment(%struct.SGFTree_t* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %45 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %3, i32 0, i32 1
  %46 = load %struct.SGFNode_t*, %struct.SGFNode_t** %45, align 8
  %47 = load i32, i32* %7, align 4
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %46, i32 %47)
  call void @sgffile_output(%struct.SGFTree_t* %3)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @is_pass(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_and_score_sgf_file(%struct.SGFTree_t* %0, %struct.Gameinfo* %1, i8* %2) #0 {
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca %struct.Gameinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca [250 x i8], align 16
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.SGFTree_t, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %4, align 8
  store %struct.Gameinfo* %1, %struct.Gameinfo** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %16, align 4
  call void @sgftree_clear(%struct.SGFTree_t* %17)
  %18 = load i32, i32* @board_size, align 4
  %19 = load float, float* @komi, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %17, i32 %18, float %19)
  call void @sgffile_printboard(%struct.SGFTree_t* %17)
  %20 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %21 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  store i32 1, i32* @doing_scoring, align 4
  call void @reset_engine()
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0)) #7
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #7
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %185, label %30

30:                                               ; preds = %26, %3
  br label %31

31:                                               ; preds = %75, %30
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @genmove_conservative(i32* %7, i32* %8, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  store i32 0, i32* %16, align 4
  %37 = load i32, i32* @movenum, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp eq i32 %38, 1
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i32 %37, i8* %41, i32 %42, i32 %43)
  br label %54

45:                                               ; preds = %31
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* @movenum, align 4
  %49 = load i32, i32* %15, align 4
  %50 = icmp eq i32 %49, 1
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0)
  %53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %48, i8* %52)
  br label %54

54:                                               ; preds = %45, %36
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 20
  %57 = add nsw i32 21, %56
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %15, align 4
  call void @play_move(i32 %59, i32 %60)
  %61 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %17, i32 0, i32 1
  %62 = load %struct.SGFNode_t*, %struct.SGFNode_t** %61, align 8
  %63 = load i32, i32* %9, align 4
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %62, i32 %63)
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %17, i32 %64, i32 %65, i32 %66)
  call void @sgffile_output(%struct.SGFTree_t* %17)
  %67 = load i32, i32* %15, align 4
  %68 = sub nsw i32 3, %67
  store i32 %68, i32* %15, align 4
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* @movenum, align 4
  %71 = icmp sle i32 %70, 10000
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %16, align 4
  %74 = icmp slt i32 %73, 2
  br label %75

75:                                               ; preds = %72, %69
  %76 = phi i1 [ false, %69 ], [ %74, %72 ]
  br i1 %76, label %31, label %77, !llvm.loop !8

77:                                               ; preds = %75
  %78 = load i32, i32* %16, align 4
  %79 = icmp sge i32 %78, 2
  br i1 %79, label %80, label %184

80:                                               ; preds = %77
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @strcmp(i8* %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #7
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %15, align 4
  %86 = load float, float* @komi, align 4
  %87 = call float @aftermath_compute_score(i32 %85, float %86, %struct.SGFTree_t* %17)
  store float %87, float* @score, align 4
  br label %90

88:                                               ; preds = %80
  %89 = call float @gnugo_estimate_score(float* @lower_bound, float* @upper_bound)
  store float %89, float* @score, align 4
  br label %90

90:                                               ; preds = %88, %84
  %91 = load float, float* @score, align 4
  %92 = fpext float %91 to double
  %93 = fcmp olt double %92, 0.000000e+00
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds [250 x i8], [250 x i8]* %13, i64 0, i64 0
  %96 = load float, float* @score, align 4
  %97 = fneg float %96
  %98 = fpext float %97 to double
  %99 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), double %98) #8
  store i8 66, i8* %14, align 1
  br label %113

100:                                              ; preds = %90
  %101 = load float, float* @score, align 4
  %102 = fpext float %101 to double
  %103 = fcmp ogt double %102, 0.000000e+00
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = getelementptr inbounds [250 x i8], [250 x i8]* %13, i64 0, i64 0
  %106 = load float, float* @score, align 4
  %107 = fpext float %106 to double
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), double %107) #8
  store i8 87, i8* %14, align 1
  br label %112

109:                                              ; preds = %100
  %110 = getelementptr inbounds [250 x i8], [250 x i8]* %13, i64 0, i64 0
  %111 = call i32 (i8*, i8*, ...) @sprintf(i8* %110, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0)) #8
  store i8 48, i8* %14, align 1
  br label %112

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112, %94
  %114 = getelementptr inbounds [250 x i8], [250 x i8]* %13, i64 0, i64 0
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %116 = call i32 @fputs(i8* %114, %struct._IO_FILE* %115)
  %117 = getelementptr inbounds [250 x i8], [250 x i8]* %13, i64 0, i64 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %17, i8* %117)
  %118 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %119 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %118, i32 0, i32 0
  %120 = load %struct.SGFNode_t*, %struct.SGFNode_t** %119, align 8
  %121 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8** %11)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %180

123:                                              ; preds = %113
  %124 = load i8*, i8** %11, align 8
  %125 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i8* %12, float* %10) #8
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %153

127:                                              ; preds = %123
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %129 = load float, float* %10, align 4
  %130 = fpext float %129 to double
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), double %130)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %133 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), %struct._IO_FILE* %132)
  %134 = load float, float* %10, align 4
  %135 = fpext float %134 to double
  %136 = load float, float* @score, align 4
  %137 = fpext float %136 to double
  %138 = call double @llvm.fabs.f64(double %137)
  %139 = fcmp oeq double %135, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %127
  %141 = load i8, i8* %14, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* %12, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %148 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %147)
  br label %152

149:                                              ; preds = %140, %127
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %151 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %150)
  br label %152

152:                                              ; preds = %149, %146
  br label %179

153:                                              ; preds = %123
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 82
  br i1 %158, label %159, label %178

159:                                              ; preds = %153
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0))
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %163 = call i32 @fputs(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), %struct._IO_FILE* %162)
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 0
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = load i8, i8* %14, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %167, %169
  br i1 %170, label %171, label %174

171:                                              ; preds = %159
  %172 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %173 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), %struct._IO_FILE* %172)
  br label %177

174:                                              ; preds = %159
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %176 = call i32 @fputs(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), %struct._IO_FILE* %175)
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %153
  br label %179

179:                                              ; preds = %178, %152
  br label %180

180:                                              ; preds = %179, %113
  %181 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %17, i32 0, i32 0
  %182 = load %struct.SGFNode_t*, %struct.SGFNode_t** %181, align 8
  %183 = load float, float* @score, align 4
  call void @sgfWriteResult(%struct.SGFNode_t* %182, float %183, i32 1)
  call void @sgffile_output(%struct.SGFTree_t* %17)
  br label %184

184:                                              ; preds = %180, %77
  br label %185

185:                                              ; preds = %184, %26
  store i32 0, i32* @doing_scoring, align 4
  %186 = load i8*, i8** %6, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0)) #7
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %208

189:                                              ; preds = %185
  %190 = load i32, i32* %15, align 4
  call void @examine_position(i32 %190, i32 99)
  %191 = call float @estimate_score(float* null, float* null)
  store float %191, float* @score, align 4
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %193 = load float, float* @score, align 4
  %194 = fcmp olt float %193, 0.000000e+00
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0)
  %197 = load float, float* @score, align 4
  %198 = fcmp olt float %197, 0.000000e+00
  br i1 %198, label %199, label %202

199:                                              ; preds = %189
  %200 = load float, float* @score, align 4
  %201 = fneg float %200
  br label %204

202:                                              ; preds = %189
  %203 = load float, float* @score, align 4
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi float [ %201, %199 ], [ %203, %202 ]
  %206 = fpext float %205 to double
  %207 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %192, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i8* %196, double %206)
  br label %208

208:                                              ; preds = %204, %185
  ret void
}

declare dso_local void @sgffile_printboard(%struct.SGFTree_t*) #1

declare dso_local void @reset_engine() #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #4

declare dso_local i32 @genmove_conservative(i32*, i32*, i32) #1

declare dso_local void @play_move(i32, i32) #1

declare dso_local float @aftermath_compute_score(i32, float, %struct.SGFTree_t*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #5

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

declare dso_local i32 @sgfGetCharProperty(%struct.SGFNode_t*, i8*, i8**) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #5

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #6

declare dso_local void @examine_position(i32, i32) #1

declare dso_local float @estimate_score(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

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
