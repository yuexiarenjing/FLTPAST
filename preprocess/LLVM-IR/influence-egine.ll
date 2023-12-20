; ModuleID = 'influence.c'
source_filename = "influence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.influence_data = type { [400 x i8], [400 x float], [400 x float], [400 x float], [400 x float], [400 x float], [400 x float], [400 x float], [400 x float], [400 x i32], [400 x i32], [400 x i32], [1084 x i32], [1084 x i32], [1084 x float], i32, i32, [400 x float], [400 x i32], i32, i32, [361 x i32], i32, [722 x %struct.intrusion_data] }
%struct.intrusion_data = type { i32, i32, float, float }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.moyo_data = type { i32, [400 x i32], [361 x i32], [361 x i32], [361 x float] }
%struct.interpolation_data = type { i32, float, float, [21 x float] }

@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [31 x i8] c"  non-territory for %C at %1m\0A\00", align 1
@current_influence = internal global %struct.influence_data* null, align 8
@board = external dso_local global [421 x i8], align 16
@.str.1 = private unnamed_addr constant [12 x i8] c"influence.c\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@initial_black_influence = dso_local global %struct.influence_data zeroinitializer, align 4
@initial_white_influence = dso_local global %struct.influence_data zeroinitializer, align 4
@barrierspat_db = external dso_local global %struct.pattern_db, align 8
@debug_influence = internal global i32 0, align 4
@compute_escape_influence.cached_board = internal global [400 x i32] zeroinitializer, align 16
@compute_escape_influence.escape_values = internal global [400 x [2 x i8]] zeroinitializer, align 16
@compute_escape_influence.active_caches = internal global [2 x i32] zeroinitializer, align 4
@escape_influence = internal global %struct.influence_data zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"IS_STONE(color)\00", align 1
@territory_cache_position_number = internal global i32 -1, align 4
@position_number = external dso_local global i32, align 4
@territory_cache_color = internal global i32 -1, align 4
@delta_territory_cache = internal global [400 x float] zeroinitializer, align 16
@followup_territory_cache = internal global [400 x float] zeroinitializer, align 16
@.str.4 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(move)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"  %1m:   - %1m territory change %f (%f -> %f)\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"  %1m:   - captured stones %f\0A\00", align 1
@printmoyo = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.7 = private unnamed_addr constant [25 x i8] c"white attenuation (%s):\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%3.2f\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"black attenuation (%s):\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"white permeability:\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%3.1f\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"black permeability:\0A\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"white strength:\0A\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"%5.1f\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%3.0f\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"black strength:\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"white influence (%s):\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"black influence (%s):\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"influence regions (%s):\0A\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"territory (%s)\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%5.2f\00", align 1
@move_influence = dso_local global %struct.influence_data zeroinitializer, align 4
@followup_influence = dso_local global %struct.influence_data zeroinitializer, align 4
@stackp = external dso_local global i32, align 4
@black_captured = external dso_local global i32, align 4
@white_captured = external dso_local global i32, align 4
@influencepat_db = external dso_local global %struct.pattern_db, align 8
@delta = external dso_local global [8 x i32], align 16
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@doing_scoring = external dso_local global i32, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str.22 = private unnamed_addr constant [26 x i8] c"pattern->patn[k].att == 2\00", align 1
@.str.23 = private unnamed_addr constant [51 x i8] c"Influence pattern %s+%d rejected by helper at %1m\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"influence pattern '%s'+%d matched at %1m\0A\00", align 1
@.str.25 = private unnamed_addr constant [64 x i8] c"  low intensity influence source at %1m, strength %f, color %C\0A\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"  extra %C source at %1m, strength %f\0A\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"  barrier for %s influence at %1m\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"  intrusion at %1m\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"intrusion list exhausted\0A\00", align 1
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@segment_region.marked = internal global [400 x i8] zeroinitializer, align 16
@.str.30 = private unnamed_addr constant [38 x i8] c"  followup for %1m: intrusion at %1m\0A\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"Adding %s intrusion at %1m, value %f\0A\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"Adding %s intrusion for %1m at %1m, value %f (correction %f)\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"  black block removed from %1m\0A\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"  white block removed from %1m\0A\00", align 1
@accumulate_influence.queue = internal global [400 x i32] zeroinitializer, align 16
@accumulate_influence.working = internal global [400 x i32] zeroinitializer, align 16
@accumulate_influence.working_area_initialized = internal global i32 0, align 4
@deltai = external dso_local global [8 x i32], align 16
@deltaj = external dso_local global [8 x i32], align 16
@board_size = external dso_local global i32, align 4
@min_infl_for_territory = internal global { i32, float, float, <{ float, float, float, float, float, float, float, [14 x float] }> } { i32 6, float 0.000000e+00, float 2.400000e+01, <{ float, float, float, float, float, float, float, [14 x float] }> <{ float 6.000000e+00, float 1.500000e+01, float 2.600000e+01, float 3.600000e+01, float 4.500000e+01, float 5.000000e+01, float 5.500000e+01, [14 x float] zeroinitializer }> }, align 4
@territory_correction = internal global { i32, float, float, <{ float, float, float, float, float, float, [15 x float] }> } { i32 5, float 0.000000e+00, float 1.000000e+00, <{ float, float, float, float, float, float, [15 x float] }> <{ float 0.000000e+00, float 2.500000e-01, float 0x3FDCCCCCC0000000, float 0x3FE4CCCCC0000000, float 0x3FEB333340000000, float 1.000000e+00, [15 x float] zeroinitializer }> }, align 4
@.str.39 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @influence_mark_non_territory(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @debug, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %13

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %8
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.influence_data*, %struct.influence_data** @current_influence, align 8
  %16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 18
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %14
  store i32 %21, i32* %19, align 4
  ret void
}

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_influence(i32 %0, i8* %1, float* %2, %struct.influence_data* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca float*, align 8
  %10 = alloca %struct.influence_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store float* %2, float** %9, align 8
  store %struct.influence_data* %3, %struct.influence_data** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %13 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %14 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %13, i32 0, i32 16
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %17 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 20
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = load float*, float** %9, align 8
  %21 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i8*, i8** %12, align 8
  call void @do_compute_influence(i32 %18, i8* %19, float* %20, %struct.influence_data* %21, i32 %22, i8* %23)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_compute_influence(i32 %0, i8* %1, float* %2, %struct.influence_data* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca float*, align 8
  %10 = alloca %struct.influence_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [400 x i32], align 16
  %15 = alloca [400 x i32], align 16
  %16 = alloca [400 x i32], align 16
  %17 = alloca [400 x i32], align 16
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store float* %2, float** %9, align 8
  store %struct.influence_data* %3, %struct.influence_data** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %19 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load float*, float** %9, align 8
  call void @init_influence(%struct.influence_data* %19, i32 %20, i8* %21, float* %22)
  %23 = load i32, i32* @stackp, align 4
  %24 = sub nsw i32 %23, 1
  call void @modify_depth_values(i32 %24)
  %25 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %26 = icmp ne %struct.influence_data* %25, @escape_influence
  br i1 %26, label %27, label %30

27:                                               ; preds = %6
  %28 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %29 = load i32, i32* %7, align 4
  call void @find_influence_patterns(%struct.influence_data* %28, i32 %29)
  br label %32

30:                                               ; preds = %6
  %31 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  call void @find_influence_patterns(%struct.influence_data* %31, i32 0)
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32, i32* @stackp, align 4
  %34 = sub nsw i32 1, %33
  call void @modify_depth_values(i32 %34)
  %35 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %36 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %35, i32 0, i32 16
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 2409, i32* %18, align 4
  br label %41

40:                                               ; preds = %32
  store i32 2048, i32* %18, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 0
  %43 = bitcast i32* %42 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 1600, i1 false)
  %44 = getelementptr inbounds [400 x i32], [400 x i32]* %17, i64 0, i64 0
  %45 = bitcast i32* %44 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %45, i8 0, i64 1600, i1 false)
  store i32 21, i32* %13, align 4
  br label %46

46:                                               ; preds = %78, %41
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 400
  br i1 %48, label %49, label %81

49:                                               ; preds = %46
  %50 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %51 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %50, i32 0, i32 7
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [400 x float], [400 x float]* %51, i64 0, i64 %53
  %55 = load float, float* %54, align 4
  %56 = fmul float %55, 4.096000e+03
  %57 = fptosi float %56 to i32
  %58 = sitofp i32 %57 to double
  %59 = fadd double %58, 5.000000e-01
  %60 = fptosi double %59 to i32
  %61 = load i32, i32* %13, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %65 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %64, i32 0, i32 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [400 x float], [400 x float]* %65, i64 0, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fmul float %69, 4.096000e+03
  %71 = fptosi float %70 to i32
  %72 = sitofp i32 %71 to double
  %73 = fadd double %72, 5.000000e-01
  %74 = fptosi double %73 to i32
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 %76
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %49
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %13, align 4
  br label %46, !llvm.loop !4

81:                                               ; preds = %46
  store i32 21, i32* %13, align 4
  br label %82

82:                                               ; preds = %166, %81
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 400
  br i1 %84, label %85, label %169

85:                                               ; preds = %82
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp ne i32 %90, 3
  br i1 %91, label %92, label %165

92:                                               ; preds = %85
  %93 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %94 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %93, i32 0, i32 3
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [400 x float], [400 x float]* %94, i64 0, i64 %96
  %98 = load float, float* %97, align 4
  %99 = fpext float %98 to double
  %100 = fcmp ogt double %99, 0.000000e+00
  br i1 %100, label %101, label %128

101:                                              ; preds = %92
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %104 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %103, i32 0, i32 3
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [400 x float], [400 x float]* %104, i64 0, i64 %106
  %108 = load float, float* %107, align 4
  %109 = fmul float %108, 4.096000e+03
  %110 = fptosi float %109 to i32
  %111 = sitofp i32 %110 to double
  %112 = fadd double %111, 5.000000e-01
  %113 = fptosi double %112 to i32
  %114 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %115 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %114, i32 0, i32 5
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [400 x float], [400 x float]* %115, i64 0, i64 %117
  %119 = load float, float* %118, align 4
  %120 = fdiv float 4.096000e+03, %119
  %121 = fptosi float %120 to i32
  %122 = load i32, i32* %18, align 4
  %123 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  %124 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %125 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %124, i32 0, i32 0
  %126 = getelementptr inbounds [400 x i8], [400 x i8]* %125, i64 0, i64 0
  %127 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 0
  call void @accumulate_influence(i32 %102, i32 %113, i32 %121, i32 %122, i32* %123, i8* %126, i32* %127)
  br label %128

128:                                              ; preds = %101, %92
  %129 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %130 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %129, i32 0, i32 4
  %131 = load i32, i32* %13, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [400 x float], [400 x float]* %130, i64 0, i64 %132
  %134 = load float, float* %133, align 4
  %135 = fpext float %134 to double
  %136 = fcmp ogt double %135, 0.000000e+00
  br i1 %136, label %137, label %164

137:                                              ; preds = %128
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %140 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %139, i32 0, i32 4
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [400 x float], [400 x float]* %140, i64 0, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fmul float %144, 4.096000e+03
  %146 = fptosi float %145 to i32
  %147 = sitofp i32 %146 to double
  %148 = fadd double %147, 5.000000e-01
  %149 = fptosi double %148 to i32
  %150 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %151 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %150, i32 0, i32 6
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [400 x float], [400 x float]* %151, i64 0, i64 %153
  %155 = load float, float* %154, align 4
  %156 = fdiv float 4.096000e+03, %155
  %157 = fptosi float %156 to i32
  %158 = load i32, i32* %18, align 4
  %159 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 0
  %160 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %161 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %160, i32 0, i32 0
  %162 = getelementptr inbounds [400 x i8], [400 x i8]* %161, i64 0, i64 0
  %163 = getelementptr inbounds [400 x i32], [400 x i32]* %17, i64 0, i64 0
  call void @accumulate_influence(i32 %138, i32 %149, i32 %157, i32 %158, i32* %159, i8* %162, i32* %163)
  br label %164

164:                                              ; preds = %137, %128
  br label %165

165:                                              ; preds = %164, %85
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %82, !llvm.loop !6

169:                                              ; preds = %82
  store i32 21, i32* %13, align 4
  br label %170

170:                                              ; preds = %196, %169
  %171 = load i32, i32* %13, align 4
  %172 = icmp slt i32 %171, 400
  br i1 %172, label %173, label %199

173:                                              ; preds = %170
  %174 = load i32, i32* %13, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sitofp i32 %177 to float
  %179 = fdiv float %178, 4.096000e+03
  %180 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %181 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %180, i32 0, i32 1
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [400 x float], [400 x float]* %181, i64 0, i64 %183
  store float %179, float* %184, align 4
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [400 x i32], [400 x i32]* %17, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = sitofp i32 %188 to float
  %190 = fdiv float %189, 4.096000e+03
  %191 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %192 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %191, i32 0, i32 2
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [400 x float], [400 x float]* %192, i64 0, i64 %194
  store float %190, float* %195, align 4
  br label %196

196:                                              ; preds = %173
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %170, !llvm.loop !7

199:                                              ; preds = %170
  %200 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  call void @value_territory(%struct.influence_data* %200)
  %201 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  call void @segment_influence(%struct.influence_data* %201)
  %202 = load i32, i32* %11, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load i32, i32* @printmoyo, align 4
  %206 = and i32 %205, 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %215, label %208

208:                                              ; preds = %204, %199
  %209 = load i32, i32* @debug_influence, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %218

211:                                              ; preds = %208
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* @debug_influence, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %211, %204
  %216 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %217 = load i8*, i8** %12, align 8
  call void @print_influence(%struct.influence_data* %216, i8* %217)
  br label %218

218:                                              ; preds = %215, %211, %208
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whose_territory(%struct.influence_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.influence_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.influence_data* %0, %struct.influence_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %10 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %9, i32 0, i32 2
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x float], [400 x float]* %10, i64 0, i64 %12
  %14 = load float, float* %13, align 4
  store float %14, float* %6, align 4
  %15 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 %18
  %20 = load float, float* %19, align 4
  store float %20, float* %7, align 4
  %21 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %22 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %21, i32 0, i32 17
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [400 x float], [400 x float]* %22, i64 0, i64 %24
  %26 = load float, float* %25, align 4
  store float %26, float* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ult i32 %27, 421
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %44

37:                                               ; preds = %29, %2
  %38 = load i32, i32* %5, align 4
  %39 = sdiv i32 %38, 20
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %5, align 4
  %42 = srem i32 %41, 20
  %43 = sub nsw i32 %42, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1017, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %40, i32 %43)
  br label %44

44:                                               ; preds = %37, %36
  %45 = load float, float* %6, align 4
  %46 = fpext float %45 to double
  %47 = fcmp ogt double %46, 0.000000e+00
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load float, float* %7, align 4
  %50 = fpext float %49 to double
  %51 = fcmp oeq double %50, 0.000000e+00
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load float, float* %8, align 4
  %54 = fpext float %53 to double
  %55 = fcmp olt double %54, 0xBFEE666666666666
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 2, i32* %3, align 4
  br label %71

57:                                               ; preds = %52, %48, %44
  %58 = load float, float* %7, align 4
  %59 = fpext float %58 to double
  %60 = fcmp ogt double %59, 0.000000e+00
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load float, float* %6, align 4
  %63 = fpext float %62 to double
  %64 = fcmp oeq double %63, 0.000000e+00
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load float, float* %8, align 4
  %67 = fpext float %66 to double
  %68 = fcmp ogt double %67, 0x3FEE666666666666
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store i32 1, i32* %3, align 4
  br label %71

70:                                               ; preds = %65, %61, %57
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %69, %56
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whose_moyo(%struct.influence_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.influence_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %10 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %9, i32 0, i32 2
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x float], [400 x float]* %10, i64 0, i64 %12
  %14 = load float, float* %13, align 4
  store float %14, float* %6, align 4
  %15 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 %18
  %20 = load float, float* %19, align 4
  store float %20, float* %7, align 4
  %21 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @whose_territory(%struct.influence_data* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %2
  %29 = load float, float* %6, align 4
  %30 = fpext float %29 to double
  %31 = load float, float* %7, align 4
  %32 = fpext float %31 to double
  %33 = fmul double 7.000000e+00, %32
  %34 = fcmp ogt double %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load float, float* %6, align 4
  %37 = fpext float %36 to double
  %38 = fcmp ogt double %37, 5.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load float, float* %7, align 4
  %41 = fpext float %40 to double
  %42 = fcmp olt double %41, 1.000000e+01
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 2, i32* %3, align 4
  br label %61

44:                                               ; preds = %39, %35, %28
  %45 = load float, float* %7, align 4
  %46 = fpext float %45 to double
  %47 = load float, float* %6, align 4
  %48 = fpext float %47 to double
  %49 = fmul double 7.000000e+00, %48
  %50 = fcmp ogt double %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load float, float* %7, align 4
  %53 = fpext float %52 to double
  %54 = fcmp ogt double %53, 5.000000e+00
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load float, float* %6, align 4
  %57 = fpext float %56 to double
  %58 = fcmp olt double %57, 1.000000e+01
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %61

60:                                               ; preds = %55, %51, %44
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %43, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @whose_area(%struct.influence_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.influence_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %10 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %9, i32 0, i32 2
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x float], [400 x float]* %10, i64 0, i64 %12
  %14 = load float, float* %13, align 4
  store float %14, float* %6, align 4
  %15 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 %18
  %20 = load float, float* %19, align 4
  store float %20, float* %7, align 4
  %21 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @whose_moyo(%struct.influence_data* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %2
  %29 = load float, float* %6, align 4
  %30 = fpext float %29 to double
  %31 = load float, float* %7, align 4
  %32 = fpext float %31 to double
  %33 = fmul double 3.000000e+00, %32
  %34 = fcmp ogt double %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load float, float* %6, align 4
  %37 = fpext float %36 to double
  %38 = fcmp ogt double %37, 1.000000e+00
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load float, float* %7, align 4
  %41 = fpext float %40 to double
  %42 = fcmp olt double %41, 4.000000e+01
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 2, i32* %3, align 4
  br label %61

44:                                               ; preds = %39, %35, %28
  %45 = load float, float* %7, align 4
  %46 = fpext float %45 to double
  %47 = load float, float* %6, align 4
  %48 = fpext float %47 to double
  %49 = fmul double 3.000000e+00, %48
  %50 = fcmp ogt double %46, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load float, float* %7, align 4
  %53 = fpext float %52 to double
  %54 = fcmp ogt double %53, 1.000000e+00
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load float, float* %6, align 4
  %57 = fpext float %56 to double
  %58 = fcmp olt double %57, 4.000000e+01
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %61

60:                                               ; preds = %55, %51, %44
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %59, %43, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @influence_get_moyo_segmentation(%struct.influence_data* %0, %struct.moyo_data* %1) #0 {
  %3 = alloca %struct.influence_data*, align 8
  %4 = alloca %struct.moyo_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %3, align 8
  store %struct.moyo_data* %1, %struct.moyo_data** %4, align 8
  store i32 1084, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 21, i32* %5, align 4
  br label %9

9:                                                ; preds = %68, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 400
  br i1 %11, label %12, label %71

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %67

19:                                               ; preds = %12
  %20 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %21 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %20, i32 0, i32 10
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %30 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %29, i32 0, i32 10
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [400 x i32], [400 x i32]* %30, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %28, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %40 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %39, i32 0, i32 10
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x i32], [400 x i32]* %40, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  br label %45

45:                                               ; preds = %38, %36
  %46 = phi i32 [ %37, %36 ], [ %44, %38 ]
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %49 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %48, i32 0, i32 10
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x i32], [400 x i32]* %49, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %47, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %45
  %56 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %57 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %56, i32 0, i32 10
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x i32], [400 x i32]* %57, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  br label %64

62:                                               ; preds = %45
  %63 = load i32, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %55
  %65 = phi i32 [ %61, %55 ], [ %63, %62 ]
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %64, %19
  br label %67

67:                                               ; preds = %66, %12
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %9, !llvm.loop !8

71:                                               ; preds = %9
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  %76 = load %struct.moyo_data*, %struct.moyo_data** %4, align 8
  %77 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  store i32 21, i32* %5, align 4
  br label %78

78:                                               ; preds = %119, %71
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 400
  br i1 %80, label %81, label %122

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %88, label %118

88:                                               ; preds = %81
  %89 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %90 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %89, i32 0, i32 10
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [400 x i32], [400 x i32]* %90, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %88
  %97 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %98 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %97, i32 0, i32 10
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [400 x i32], [400 x i32]* %98, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %102, %103
  %105 = add nsw i32 %104, 1
  %106 = load %struct.moyo_data*, %struct.moyo_data** %4, align 8
  %107 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %106, i32 0, i32 1
  %108 = load i32, i32* %5, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x i32], [400 x i32]* %107, i64 0, i64 %109
  store i32 %105, i32* %110, align 4
  br label %117

111:                                              ; preds = %88
  %112 = load %struct.moyo_data*, %struct.moyo_data** %4, align 8
  %113 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %112, i32 0, i32 1
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [400 x i32], [400 x i32]* %113, i64 0, i64 %115
  store i32 0, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %96
  br label %118

118:                                              ; preds = %117, %81
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %78, !llvm.loop !9

122:                                              ; preds = %78
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %184, %122
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp sle i32 %125, %126
  br i1 %127, label %128, label %187

128:                                              ; preds = %124
  %129 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %130 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %129, i32 0, i32 13
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [1084 x i32], [1084 x i32]* %130, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.moyo_data*, %struct.moyo_data** %4, align 8
  %136 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %135, i32 0, i32 2
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %6, align 4
  %139 = sub nsw i32 %137, %138
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [361 x i32], [361 x i32]* %136, i64 0, i64 %141
  store i32 %134, i32* %142, align 4
  %143 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %144 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %143, i32 0, i32 14
  %145 = load i32, i32* %8, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [1084 x float], [1084 x float]* %144, i64 0, i64 %146
  %148 = load float, float* %147, align 4
  %149 = load %struct.moyo_data*, %struct.moyo_data** %4, align 8
  %150 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %149, i32 0, i32 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %6, align 4
  %153 = sub nsw i32 %151, %152
  %154 = add nsw i32 %153, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [361 x float], [361 x float]* %150, i64 0, i64 %155
  store float %148, float* %156, align 4
  %157 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %158 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %157, i32 0, i32 12
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [1084 x i32], [1084 x i32]* %158, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 1
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %128
  %166 = load %struct.moyo_data*, %struct.moyo_data** %4, align 8
  %167 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %166, i32 0, i32 3
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %6, align 4
  %170 = sub nsw i32 %168, %169
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [361 x i32], [361 x i32]* %167, i64 0, i64 %172
  store i32 2, i32* %173, align 4
  br label %183

174:                                              ; preds = %128
  %175 = load %struct.moyo_data*, %struct.moyo_data** %4, align 8
  %176 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %175, i32 0, i32 3
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* %6, align 4
  %179 = sub nsw i32 %177, %178
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [361 x i32], [361 x i32]* %176, i64 0, i64 %181
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %174, %165
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %124, !llvm.loop !10

187:                                              ; preds = %124
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @influence_get_moyo_data(%struct.influence_data* %0, i32* %1, float* %2) #0 {
  %4 = alloca %struct.influence_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store float* %2, float** %6, align 8
  store i32 21, i32* %7, align 4
  br label %8

8:                                                ; preds = %55, %3
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 400
  br i1 %10, label %11, label %58

11:                                               ; preds = %8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %54

18:                                               ; preds = %11
  %19 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @whose_moyo_restricted(%struct.influence_data* %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %21, i32* %25, align 4
  %26 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %27 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %26, i32 0, i32 17
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x float], [400 x float]* %27, i64 0, i64 %29
  %31 = load float, float* %30, align 4
  %32 = fcmp olt float %31, 0.000000e+00
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %35 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %34, i32 0, i32 17
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x float], [400 x float]* %35, i64 0, i64 %37
  %39 = load float, float* %38, align 4
  %40 = fneg float %39
  br label %48

41:                                               ; preds = %18
  %42 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %43 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %42, i32 0, i32 17
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x float], [400 x float]* %43, i64 0, i64 %45
  %47 = load float, float* %46, align 4
  br label %48

48:                                               ; preds = %41, %33
  %49 = phi float [ %40, %33 ], [ %47, %41 ]
  %50 = load float*, float** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  store float %49, float* %53, align 4
  br label %54

54:                                               ; preds = %48, %11
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %8, !llvm.loop !11

58:                                               ; preds = %8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @whose_moyo_restricted(%struct.influence_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.influence_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %11 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %10, i32 0, i32 2
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [400 x float], [400 x float]* %11, i64 0, i64 %13
  %15 = load float, float* %14, align 4
  store float %15, float* %6, align 4
  %16 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %17 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 1
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x float], [400 x float]* %17, i64 0, i64 %19
  %21 = load float, float* %20, align 4
  store float %21, float* %7, align 4
  %22 = load %struct.influence_data*, %struct.influence_data** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @whose_territory(%struct.influence_data* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %27, i32 0, i32 16
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %35, i32 0, i32 18
  %37 = getelementptr inbounds [10 x i32], [10 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %109

41:                                               ; preds = %32, %2
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %8, align 4
  br label %81

46:                                               ; preds = %41
  %47 = load float, float* %6, align 4
  %48 = fpext float %47 to double
  %49 = load float, float* %7, align 4
  %50 = fpext float %49 to double
  %51 = fmul double 1.000000e+01, %50
  %52 = fcmp ogt double %48, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load float, float* %6, align 4
  %55 = fpext float %54 to double
  %56 = fcmp ogt double %55, 1.000000e+01
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load float, float* %7, align 4
  %59 = fpext float %58 to double
  %60 = fcmp olt double %59, 1.000000e+01
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 2, i32* %8, align 4
  br label %80

62:                                               ; preds = %57, %53, %46
  %63 = load float, float* %7, align 4
  %64 = fpext float %63 to double
  %65 = load float, float* %6, align 4
  %66 = fpext float %65 to double
  %67 = fmul double 1.000000e+01, %66
  %68 = fcmp ogt double %64, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load float, float* %7, align 4
  %71 = fpext float %70 to double
  %72 = fcmp ogt double %71, 1.000000e+01
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load float, float* %6, align 4
  %75 = fpext float %74 to double
  %76 = fcmp olt double %75, 1.000000e+01
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  br label %79

78:                                               ; preds = %73, %69, %62
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %78, %77
  br label %80

80:                                               ; preds = %79, %61
  br label %81

81:                                               ; preds = %80, %44
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %87, i32 0, i32 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = and i32 %90, 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %109

94:                                               ; preds = %84, %81
  %95 = load i32, i32* %8, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %100, i32 0, i32 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = and i32 %103, 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %109

107:                                              ; preds = %97, %94
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %107, %106, %93, %40
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @influence_territory(%struct.influence_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca float, align 4
  %5 = alloca %struct.influence_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %12 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %11, i32 0, i32 17
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x float], [400 x float]* %12, i64 0, i64 %14
  %16 = load float, float* %15, align 4
  store float %16, float* %4, align 4
  br label %25

17:                                               ; preds = %3
  %18 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %19 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %18, i32 0, i32 17
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x float], [400 x float]* %19, i64 0, i64 %21
  %23 = load float, float* %22, align 4
  %24 = fneg float %23
  store float %24, float* %4, align 4
  br label %25

25:                                               ; preds = %17, %10
  %26 = load float, float* %4, align 4
  ret float %26
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resegment_initial_influence() #0 {
  call void @segment_influence(%struct.influence_data* @initial_black_influence)
  call void @segment_influence(%struct.influence_data* @initial_white_influence)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @segment_influence(%struct.influence_data* %0) #0 {
  %2 = alloca %struct.influence_data*, align 8
  %3 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %2, align 8
  %4 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %5 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %4, i32 0, i32 15
  store i32 0, i32* %5, align 4
  %6 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %7 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %6, i32 0, i32 12
  %8 = getelementptr inbounds [1084 x i32], [1084 x i32]* %7, i64 0, i64 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %10 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %9, i32 0, i32 13
  %11 = getelementptr inbounds [1084 x i32], [1084 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %11, align 4
  store i32 21, i32* %3, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 400
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %38

22:                                               ; preds = %15
  %23 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %24 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %23, i32 0, i32 9
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x i32], [400 x i32]* %24, i64 0, i64 %26
  store i32 0, i32* %27, align 4
  %28 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %29 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %28, i32 0, i32 10
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [400 x i32], [400 x i32]* %29, i64 0, i64 %31
  store i32 0, i32* %32, align 4
  %33 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %34 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %33, i32 0, i32 11
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x i32], [400 x i32]* %34, i64 0, i64 %36
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %22, %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %12, !llvm.loop !12

42:                                               ; preds = %12
  %43 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %44 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %45 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %44, i32 0, i32 9
  %46 = getelementptr inbounds [400 x i32], [400 x i32]* %45, i64 0, i64 0
  call void @segment_region(%struct.influence_data* %43, i32 (%struct.influence_data*, i32)* @whose_territory, i32 2, i32* %46)
  %47 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %48 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %49 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %48, i32 0, i32 10
  %50 = getelementptr inbounds [400 x i32], [400 x i32]* %49, i64 0, i64 0
  call void @segment_region(%struct.influence_data* %47, i32 (%struct.influence_data*, i32)* @whose_moyo_restricted, i32 4, i32* %50)
  %51 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %52 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %53 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %52, i32 0, i32 11
  %54 = getelementptr inbounds [400 x i32], [400 x i32]* %53, i64 0, i64 0
  call void @segment_region(%struct.influence_data* %51, i32 (%struct.influence_data*, i32)* @whose_area, i32 8, i32* %54)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_followup_influence(%struct.influence_data* %0, %struct.influence_data* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.influence_data*, align 8
  %6 = alloca %struct.influence_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [400 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [400 x i32], align 16
  %14 = alloca [400 x i32], align 16
  store %struct.influence_data* %0, %struct.influence_data** %5, align 8
  store %struct.influence_data* %1, %struct.influence_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %15 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 20
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 3, %17
  store i32 %18, i32* %11, align 4
  %19 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %20 = bitcast %struct.influence_data* %19 to i8*
  %21 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %22 = bitcast %struct.influence_data* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %22, i64 47224, i1 false)
  store i32 21, i32* %9, align 4
  br label %23

23:                                               ; preds = %52, %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 400
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %51

33:                                               ; preds = %26
  %34 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %35 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %34, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x i8], [400 x i8]* %35, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 %44
  store i8 1, i8* %45, align 1
  br label %50

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 %48
  store i8 0, i8* %49, align 1
  br label %50

50:                                               ; preds = %46, %42
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %23, !llvm.loop !13

55:                                               ; preds = %23
  %56 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %57 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %56, i32 0, i32 22
  store i32 0, i32* %57, align 4
  %58 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  store %struct.influence_data* %58, %struct.influence_data** @current_influence, align 8
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %61 = bitcast %struct.influence_data* %60 to i8*
  %62 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  call void @matchpat_goal_anchor(void (i32, i32, %struct.pattern*, i32, i8*)* @followup_influence_callback, i32 %59, %struct.pattern_db* @barrierspat_db, i8* %61, i8* %62, i32 1)
  %63 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %64 = load i32, i32* %11, align 4
  call void @add_marked_intrusions(%struct.influence_data* %63, i32 %64)
  %65 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  call void @reset_unblocked_blocks(%struct.influence_data* %65)
  store i32 2409, i32* %12, align 4
  %66 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  %67 = bitcast i32* %66 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %67, i8 0, i64 1600, i1 false)
  store i32 21, i32* %9, align 4
  br label %68

68:                                               ; preds = %113, %55
  %69 = load i32, i32* %9, align 4
  %70 = icmp slt i32 %69, 400
  br i1 %70, label %71, label %116

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %76, 3
  br i1 %77, label %78, label %112

78:                                               ; preds = %71
  %79 = load i32, i32* %11, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %96

81:                                               ; preds = %78
  %82 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %83 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %82, i32 0, i32 7
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [400 x float], [400 x float]* %83, i64 0, i64 %85
  %87 = load float, float* %86, align 4
  %88 = fmul float %87, 4.096000e+03
  %89 = fptosi float %88 to i32
  %90 = sitofp i32 %89 to double
  %91 = fadd double %90, 5.000000e-01
  %92 = fptosi double %91 to i32
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %94
  store i32 %92, i32* %95, align 4
  br label %111

96:                                               ; preds = %78
  %97 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %98 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %97, i32 0, i32 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [400 x float], [400 x float]* %98, i64 0, i64 %100
  %102 = load float, float* %101, align 4
  %103 = fmul float %102, 4.096000e+03
  %104 = fptosi float %103 to i32
  %105 = sitofp i32 %104 to double
  %106 = fadd double %105, 5.000000e-01
  %107 = fptosi double %106 to i32
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %109
  store i32 %107, i32* %110, align 4
  br label %111

111:                                              ; preds = %96, %81
  br label %112

112:                                              ; preds = %111, %71
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %68, !llvm.loop !14

116:                                              ; preds = %68
  store i32 21, i32* %9, align 4
  br label %117

117:                                              ; preds = %218, %116
  %118 = load i32, i32* %9, align 4
  %119 = icmp slt i32 %118, 400
  br i1 %119, label %120, label %221

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp ne i32 %125, 3
  br i1 %126, label %127, label %217

127:                                              ; preds = %120
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %128, 2
  br i1 %129, label %130, label %171

130:                                              ; preds = %127
  %131 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %132 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %131, i32 0, i32 4
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [400 x float], [400 x float]* %132, i64 0, i64 %134
  %136 = load float, float* %135, align 4
  %137 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %138 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %137, i32 0, i32 4
  %139 = load i32, i32* %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [400 x float], [400 x float]* %138, i64 0, i64 %140
  %142 = load float, float* %141, align 4
  %143 = fcmp ogt float %136, %142
  br i1 %143, label %144, label %171

144:                                              ; preds = %130
  %145 = load i32, i32* %9, align 4
  %146 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %147 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %146, i32 0, i32 4
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [400 x float], [400 x float]* %147, i64 0, i64 %149
  %151 = load float, float* %150, align 4
  %152 = fmul float %151, 4.096000e+03
  %153 = fptosi float %152 to i32
  %154 = sitofp i32 %153 to double
  %155 = fadd double %154, 5.000000e-01
  %156 = fptosi double %155 to i32
  %157 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %158 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %157, i32 0, i32 6
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [400 x float], [400 x float]* %158, i64 0, i64 %160
  %162 = load float, float* %161, align 4
  %163 = fdiv float 4.096000e+03, %162
  %164 = fptosi float %163 to i32
  %165 = load i32, i32* %12, align 4
  %166 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 0
  %167 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %168 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %167, i32 0, i32 0
  %169 = getelementptr inbounds [400 x i8], [400 x i8]* %168, i64 0, i64 0
  %170 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  call void @accumulate_influence(i32 %145, i32 %156, i32 %164, i32 %165, i32* %166, i8* %169, i32* %170)
  br label %216

171:                                              ; preds = %130, %127
  %172 = load i32, i32* %11, align 4
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %215

174:                                              ; preds = %171
  %175 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %176 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %175, i32 0, i32 3
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [400 x float], [400 x float]* %176, i64 0, i64 %178
  %180 = load float, float* %179, align 4
  %181 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %182 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %181, i32 0, i32 3
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [400 x float], [400 x float]* %182, i64 0, i64 %184
  %186 = load float, float* %185, align 4
  %187 = fcmp ogt float %180, %186
  br i1 %187, label %188, label %215

188:                                              ; preds = %174
  %189 = load i32, i32* %9, align 4
  %190 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %191 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %190, i32 0, i32 3
  %192 = load i32, i32* %9, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [400 x float], [400 x float]* %191, i64 0, i64 %193
  %195 = load float, float* %194, align 4
  %196 = fmul float %195, 4.096000e+03
  %197 = fptosi float %196 to i32
  %198 = sitofp i32 %197 to double
  %199 = fadd double %198, 5.000000e-01
  %200 = fptosi double %199 to i32
  %201 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %202 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %201, i32 0, i32 5
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [400 x float], [400 x float]* %202, i64 0, i64 %204
  %206 = load float, float* %205, align 4
  %207 = fdiv float 4.096000e+03, %206
  %208 = fptosi float %207 to i32
  %209 = load i32, i32* %12, align 4
  %210 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 0
  %211 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %212 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %211, i32 0, i32 0
  %213 = getelementptr inbounds [400 x i8], [400 x i8]* %212, i64 0, i64 0
  %214 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  call void @accumulate_influence(i32 %189, i32 %200, i32 %208, i32 %209, i32* %210, i8* %213, i32* %214)
  br label %215

215:                                              ; preds = %188, %174, %171
  br label %216

216:                                              ; preds = %215, %144
  br label %217

217:                                              ; preds = %216, %120
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %117, !llvm.loop !15

221:                                              ; preds = %117
  store i32 21, i32* %9, align 4
  br label %222

222:                                              ; preds = %265, %221
  %223 = load i32, i32* %9, align 4
  %224 = icmp slt i32 %223, 400
  br i1 %224, label %225, label %268

225:                                              ; preds = %222
  %226 = load i32, i32* %9, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 3
  br i1 %231, label %232, label %264

232:                                              ; preds = %225
  %233 = load i32, i32* %11, align 4
  %234 = icmp eq i32 %233, 1
  br i1 %234, label %235, label %249

235:                                              ; preds = %232
  %236 = load i32, i32* %9, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = sitofp i32 %239 to float
  %241 = fdiv float %240, 4.096000e+03
  %242 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %243 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %242, i32 0, i32 1
  %244 = load i32, i32* %9, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [400 x float], [400 x float]* %243, i64 0, i64 %245
  %247 = load float, float* %246, align 4
  %248 = fadd float %247, %241
  store float %248, float* %246, align 4
  br label %263

249:                                              ; preds = %232
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = sitofp i32 %253 to float
  %255 = fdiv float %254, 4.096000e+03
  %256 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %257 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %256, i32 0, i32 2
  %258 = load i32, i32* %9, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [400 x float], [400 x float]* %257, i64 0, i64 %259
  %261 = load float, float* %260, align 4
  %262 = fadd float %261, %255
  store float %262, float* %260, align 4
  br label %263

263:                                              ; preds = %249, %235
  br label %264

264:                                              ; preds = %263, %225
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %9, align 4
  br label %222, !llvm.loop !16

268:                                              ; preds = %222
  %269 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  call void @value_territory(%struct.influence_data* %269)
  %270 = load i32, i32* @debug_influence, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %268
  %273 = load i32, i32* @debug_influence, align 4
  %274 = load i32, i32* %7, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %278 = load i8*, i8** %8, align 8
  call void @print_influence(%struct.influence_data* %277, i8* %278)
  br label %279

279:                                              ; preds = %276, %272, %268
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @matchpat_goal_anchor(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @followup_influence_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.influence_data*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = bitcast i8* %15 to %struct.influence_data*
  store %struct.influence_data* %16, %struct.influence_data** %13, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.pattern*, %struct.pattern** %8, align 8
  %19 = getelementptr inbounds %struct.pattern, %struct.pattern* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 512
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %5
  br label %162

24:                                               ; preds = %5
  %25 = load %struct.pattern*, %struct.pattern** %8, align 8
  %26 = getelementptr inbounds %struct.pattern, %struct.pattern* %25, i32 0, i32 11
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %28
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %29, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load %struct.pattern*, %struct.pattern** %8, align 8
  %37 = getelementptr inbounds %struct.pattern, %struct.pattern* %36, i32 0, i32 20
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %24
  %42 = load %struct.pattern*, %struct.pattern** %8, align 8
  %43 = getelementptr inbounds %struct.pattern, %struct.pattern* %42, i32 0, i32 22
  %44 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 %44(i32 %45, i32 %46, i32 %47, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  br label %162

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51, %24
  %53 = load %struct.pattern*, %struct.pattern** %8, align 8
  %54 = getelementptr inbounds %struct.pattern, %struct.pattern* %53, i32 0, i32 21
  %55 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %54, align 8
  %56 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %55, null
  br i1 %56, label %57, label %81

57:                                               ; preds = %52
  %58 = load %struct.pattern*, %struct.pattern** %8, align 8
  %59 = getelementptr inbounds %struct.pattern, %struct.pattern* %58, i32 0, i32 21
  %60 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %59, align 8
  %61 = load %struct.pattern*, %struct.pattern** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 %60(%struct.pattern* %61, i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %80, label %67

67:                                               ; preds = %57
  %68 = load i32, i32* @debug, align 4
  %69 = and i32 %68, 1
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %79

72:                                               ; preds = %67
  %73 = load %struct.pattern*, %struct.pattern** %8, align 8
  %74 = getelementptr inbounds %struct.pattern, %struct.pattern* %73, i32 0, i32 3
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0), i8* %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %71
  br label %162

80:                                               ; preds = %57
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.pattern*, %struct.pattern** %8, align 8
  %83 = getelementptr inbounds %struct.pattern, %struct.pattern* %82, i32 0, i32 20
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 2
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load %struct.pattern*, %struct.pattern** %8, align 8
  %89 = getelementptr inbounds %struct.pattern, %struct.pattern* %88, i32 0, i32 22
  %90 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 %90(i32 %91, i32 %92, i32 %93, i32 2)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %87
  br label %162

97:                                               ; preds = %87, %81
  %98 = load i32, i32* @debug, align 4
  %99 = and i32 %98, 1
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  br label %109

102:                                              ; preds = %97
  %103 = load %struct.pattern*, %struct.pattern** %8, align 8
  %104 = getelementptr inbounds %struct.pattern, %struct.pattern* %103, i32 0, i32 3
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i8* %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %101
  store i32 0, i32* %11, align 4
  br label %110

110:                                              ; preds = %159, %109
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.pattern*, %struct.pattern** %8, align 8
  %113 = getelementptr inbounds %struct.pattern, %struct.pattern* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %162

116:                                              ; preds = %110
  %117 = load %struct.pattern*, %struct.pattern** %8, align 8
  %118 = getelementptr inbounds %struct.pattern, %struct.pattern* %117, i32 0, i32 0
  %119 = load %struct.patval*, %struct.patval** %118, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.patval, %struct.patval* %119, i64 %121
  %123 = getelementptr inbounds %struct.patval, %struct.patval* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 7
  br i1 %125, label %126, label %158

126:                                              ; preds = %116
  %127 = load %struct.pattern*, %struct.pattern** %8, align 8
  %128 = getelementptr inbounds %struct.pattern, %struct.pattern* %127, i32 0, i32 0
  %129 = load %struct.patval*, %struct.patval** %128, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.patval, %struct.patval* %129, i64 %131
  %133 = getelementptr inbounds %struct.patval, %struct.patval* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %135
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [8 x i32], [8 x i32]* %136, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %14, align 4
  %145 = load %struct.pattern*, %struct.pattern** %8, align 8
  %146 = getelementptr inbounds %struct.pattern, %struct.pattern* %145, i32 0, i32 13
  %147 = load float, float* %146, align 4
  %148 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  call void @enter_intrusion_source(i32 %143, i32 %144, float %147, float 0x4003333340000000, %struct.influence_data* %148)
  %149 = load i32, i32* @debug, align 4
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %126
  br label %157

153:                                              ; preds = %126
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %14, align 4
  %156 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %152
  br label %158

158:                                              ; preds = %157, %116
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %11, align 4
  br label %110, !llvm.loop !17

162:                                              ; preds = %23, %50, %79, %96, %110
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_marked_intrusions(%struct.influence_data* %0, i32 %1) #0 {
  %3 = alloca %struct.influence_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  store %struct.influence_data* %0, %struct.influence_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %12 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %13 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %12, i32 0, i32 23
  %14 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %13, i64 0, i64 0
  %15 = bitcast %struct.intrusion_data* %14 to i8*
  %16 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %17 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %16, i32 0, i32 22
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  call void @gg_sort(i8* %15, i64 %19, i64 16, i32 (i8*, i8*)* @compare_intrusions)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %282, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %23 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %22, i32 0, i32 22
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %284

26:                                               ; preds = %20
  store float 0.000000e+00, float* %8, align 4
  %27 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %28 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %27, i32 0, i32 23
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %28, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %88

36:                                               ; preds = %26
  %37 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %38 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %37, i32 0, i32 23
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %38, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %46 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %45, i32 0, i32 23
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %46, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %49, i32 0, i32 2
  %51 = load float, float* %50, align 4
  %52 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %53 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %52, i32 0, i32 23
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %53, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %56, i32 0, i32 3
  %58 = load float, float* %57, align 4
  %59 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  call void @add_influence_source(i32 %43, i32 %44, float %51, float %58, %struct.influence_data* %59)
  %60 = load i32, i32* @debug, align 4
  %61 = and i32 %60, 1
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %36
  br label %85

64:                                               ; preds = %36
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 2
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)
  %69 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %70 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %69, i32 0, i32 23
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %70, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %77 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %76, i32 0, i32 23
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %77, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %80, i32 0, i32 2
  %82 = load float, float* %81, align 4
  %83 = fpext float %82 to double
  %84 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0), i8* %68, i32 %75, double %83)
  br label %85

85:                                               ; preds = %64, %63
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %282

88:                                               ; preds = %26
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %93 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %92, i32 0, i32 4
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [400 x float], [400 x float]* %93, i64 0, i64 %95
  %97 = load float, float* %96, align 4
  store float %97, float* %10, align 4
  br label %105

98:                                               ; preds = %88
  %99 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %100 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %99, i32 0, i32 3
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x float], [400 x float]* %100, i64 0, i64 %102
  %104 = load float, float* %103, align 4
  store float %104, float* %10, align 4
  br label %105

105:                                              ; preds = %98, %91
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %157, %105
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %110 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %109, i32 0, i32 22
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %115 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %114, i32 0, i32 23
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %115, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp eq i32 %120, %121
  br label %123

123:                                              ; preds = %113, %107
  %124 = phi i1 [ false, %107 ], [ %122, %113 ]
  br i1 %124, label %125, label %160

125:                                              ; preds = %123
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %5, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %146, label %129

129:                                              ; preds = %125
  %130 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %131 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %130, i32 0, i32 23
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %131, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %138 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %137, i32 0, i32 23
  %139 = load i32, i32* %6, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %138, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %136, %144
  br i1 %145, label %146, label %156

146:                                              ; preds = %129, %125
  %147 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %148 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %147, i32 0, i32 23
  %149 = load i32, i32* %6, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %148, i64 0, i64 %150
  %152 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %151, i32 0, i32 2
  %153 = load float, float* %152, align 4
  %154 = load float, float* %8, align 4
  %155 = fadd float %154, %153
  store float %155, float* %8, align 4
  br label %156

156:                                              ; preds = %146, %129
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %107, !llvm.loop !18

160:                                              ; preds = %123
  %161 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %162 = icmp eq %struct.influence_data* %161, @followup_influence
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load float, float* %10, align 4
  store float %164, float* %11, align 4
  br label %170

165:                                              ; preds = %160
  %166 = load float, float* %10, align 4
  %167 = fpext float %166 to double
  %168 = fmul double 6.000000e-01, %167
  %169 = fptrunc double %168 to float
  store float %169, float* %11, align 4
  br label %170

170:                                              ; preds = %165, %163
  %171 = load float, float* %8, align 4
  %172 = load float, float* %11, align 4
  %173 = fcmp ogt float %171, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load float, float* %11, align 4
  %176 = load float, float* %8, align 4
  %177 = fdiv float %175, %176
  store float %177, float* %9, align 4
  br label %179

178:                                              ; preds = %170
  store float 1.000000e+00, float* %9, align 4
  br label %179

179:                                              ; preds = %178, %174
  %180 = load i32, i32* %5, align 4
  store i32 %180, i32* %6, align 4
  br label %181

181:                                              ; preds = %278, %179
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %184 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %183, i32 0, i32 22
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %182, %185
  br i1 %186, label %187, label %197

187:                                              ; preds = %181
  %188 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %189 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %188, i32 0, i32 23
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %189, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %7, align 4
  %196 = icmp eq i32 %194, %195
  br label %197

197:                                              ; preds = %187, %181
  %198 = phi i1 [ false, %181 ], [ %196, %187 ]
  br i1 %198, label %199, label %281

199:                                              ; preds = %197
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %5, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %220, label %203

203:                                              ; preds = %199
  %204 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %205 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %204, i32 0, i32 23
  %206 = load i32, i32* %6, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %205, i64 0, i64 %207
  %209 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %212 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %211, i32 0, i32 23
  %213 = load i32, i32* %6, align 4
  %214 = sub nsw i32 %213, 1
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %212, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %210, %218
  br i1 %219, label %220, label %277

220:                                              ; preds = %203, %199
  %221 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %222 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %221, i32 0, i32 23
  %223 = load i32, i32* %6, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %222, i64 0, i64 %224
  %226 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %4, align 4
  %229 = load float, float* %9, align 4
  %230 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %231 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %230, i32 0, i32 23
  %232 = load i32, i32* %6, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %231, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %234, i32 0, i32 2
  %236 = load float, float* %235, align 4
  %237 = fmul float %229, %236
  %238 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %239 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %238, i32 0, i32 23
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %239, i64 0, i64 %241
  %243 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %242, i32 0, i32 3
  %244 = load float, float* %243, align 4
  %245 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  call void @add_influence_source(i32 %227, i32 %228, float %237, float %244, %struct.influence_data* %245)
  %246 = load i32, i32* @debug, align 4
  %247 = and i32 %246, 1
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %220
  br label %276

250:                                              ; preds = %220
  %251 = load i32, i32* %4, align 4
  %252 = icmp eq i32 %251, 2
  %253 = zext i1 %252 to i64
  %254 = select i1 %252, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0)
  %255 = load i32, i32* %7, align 4
  %256 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %257 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %256, i32 0, i32 23
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %257, i64 0, i64 %259
  %261 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load float, float* %9, align 4
  %264 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %265 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %264, i32 0, i32 23
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %265, i64 0, i64 %267
  %269 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %268, i32 0, i32 2
  %270 = load float, float* %269, align 4
  %271 = fmul float %263, %270
  %272 = fpext float %271 to double
  %273 = load float, float* %9, align 4
  %274 = fpext float %273 to double
  %275 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.34, i64 0, i64 0), i8* %254, i32 %255, i32 %262, double %272, double %274)
  br label %276

276:                                              ; preds = %250, %249
  br label %277

277:                                              ; preds = %276, %203
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %6, align 4
  br label %181, !llvm.loop !19

281:                                              ; preds = %197
  br label %282

282:                                              ; preds = %281, %85
  %283 = load i32, i32* %6, align 4
  store i32 %283, i32* %5, align 4
  br label %20, !llvm.loop !20

284:                                              ; preds = %20
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_unblocked_blocks(%struct.influence_data* %0) #0 {
  %2 = alloca %struct.influence_data*, align 8
  %3 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %2, align 8
  store i32 21, i32* %3, align 4
  br label %4

4:                                                ; preds = %96, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 400
  br i1 %6, label %7, label %99

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %95

14:                                               ; preds = %7
  %15 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 0
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x i8], [400 x i8]* %16, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %14
  %23 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %24 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %23, i32 0, i32 3
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x float], [400 x float]* %24, i64 0, i64 %26
  %28 = load float, float* %27, align 4
  %29 = fpext float %28 to double
  %30 = fcmp ogt double %29, 0.000000e+00
  br i1 %30, label %31, label %54

31:                                               ; preds = %22
  %32 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %33 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %32, i32 0, i32 7
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [400 x float], [400 x float]* %33, i64 0, i64 %35
  %37 = load float, float* %36, align 4
  %38 = fpext float %37 to double
  %39 = fcmp une double %38, 1.000000e+00
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load i32, i32* @debug, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %3, align 4
  %47 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %44
  %49 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %50 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %49, i32 0, i32 7
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x float], [400 x float]* %50, i64 0, i64 %52
  store float 1.000000e+00, float* %53, align 4
  br label %54

54:                                               ; preds = %48, %31, %22, %14
  %55 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %56 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %55, i32 0, i32 0
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x i8], [400 x i8]* %56, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = icmp ne i8 %60, 0
  br i1 %61, label %94, label %62

62:                                               ; preds = %54
  %63 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %64 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %63, i32 0, i32 4
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x float], [400 x float]* %64, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  %69 = fpext float %68 to double
  %70 = fcmp ogt double %69, 0.000000e+00
  br i1 %70, label %71, label %94

71:                                               ; preds = %62
  %72 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %73 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %72, i32 0, i32 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [400 x float], [400 x float]* %73, i64 0, i64 %75
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = fcmp une double %78, 1.000000e+00
  br i1 %79, label %80, label %94

80:                                               ; preds = %71
  %81 = load i32, i32* @debug, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %88

85:                                               ; preds = %80
  %86 = load i32, i32* %3, align 4
  %87 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.36, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %85, %84
  %89 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %90 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %89, i32 0, i32 8
  %91 = load i32, i32* %3, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [400 x float], [400 x float]* %90, i64 0, i64 %92
  store float 1.000000e+00, float* %93, align 4
  br label %94

94:                                               ; preds = %88, %71, %62, %54
  br label %95

95:                                               ; preds = %94, %7
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %4, !llvm.loop !21

99:                                               ; preds = %4
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @accumulate_influence(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
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
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sdiv i32 %32, 20
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %8, align 4
  %36 = srem i32 %35, 20
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %17, align 4
  store i32 0, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %38 = load i32, i32* @accumulate_influence.working_area_initialized, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %48, %40
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %42, 400
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32, i32* %15, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %46
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %41, !llvm.loop !22

51:                                               ; preds = %41
  store i32 1, i32* @accumulate_influence.working_area_initialized, align 4
  br label %52

52:                                               ; preds = %51, %7
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* getelementptr inbounds ([400 x i32], [400 x i32]* @accumulate_influence.queue, i64 0, i64 0), align 16
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %56
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %426, %85, %52
  %59 = load i32, i32* %21, align 4
  %60 = load i32, i32* %22, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %427

62:                                               ; preds = %58
  %63 = load i32, i32* %21, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.queue, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = sdiv i32 %67, 20
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %24, align 4
  %72 = load i32, i32* %15, align 4
  %73 = srem i32 %72, 20
  %74 = sub nsw i32 %73, 1
  %75 = load i32, i32* %17, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %25, align 4
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %21, align 4
  %79 = load i32*, i32** %12, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %62
  br label %58, !llvm.loop !23

86:                                               ; preds = %62
  %87 = load i32, i32* %21, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 4096, i32* %20, align 4
  br label %99

90:                                               ; preds = %86
  %91 = load i32, i32* %24, align 4
  %92 = load i32, i32* %24, align 4
  %93 = mul nsw i32 %91, %92
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* %25, align 4
  %96 = mul nsw i32 %94, %95
  %97 = add nsw i32 %93, %96
  %98 = sdiv i32 4096, %97
  store i32 %98, i32* %20, align 4
  br label %99

99:                                               ; preds = %90, %89
  %100 = load i32, i32* %15, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = mul nsw i32 %103, %104
  %106 = sdiv i32 %105, 4096
  store i32 %106, i32* %23, align 4
  store i32 0, i32* %19, align 4
  br label %107

107:                                              ; preds = %231, %99
  %108 = load i32, i32* %19, align 4
  %109 = icmp slt i32 %108, 4
  br i1 %109, label %110, label %234

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %111, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 3
  br i1 %121, label %122, label %230

122:                                              ; preds = %110
  br label %123

123:                                              ; preds = %122
  %124 = load i8*, i8** %13, align 8
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %125, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %124, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = icmp ne i8 %133, 0
  br i1 %134, label %228, label %135

135:                                              ; preds = %123
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %24, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %19, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %25, align 4
  %147 = mul nsw i32 %145, %146
  %148 = add nsw i32 %141, %147
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %153, label %150

150:                                              ; preds = %135
  %151 = load i32, i32* %21, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %228

153:                                              ; preds = %150, %135
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %27, align 4
  %159 = load i32, i32* %23, align 4
  %160 = load i32, i32* %27, align 4
  %161 = mul nsw i32 %159, %160
  %162 = sdiv i32 %161, 4096
  store i32 %162, i32* %26, align 4
  %163 = load i32, i32* %21, align 4
  %164 = icmp ne i32 %163, 1
  br i1 %164, label %165, label %188

165:                                              ; preds = %153
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %24, align 4
  %171 = mul nsw i32 %169, %170
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %25, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %171, %177
  store i32 %178, i32* %28, align 4
  %179 = load i32, i32* %28, align 4
  %180 = load i32, i32* %28, align 4
  %181 = mul nsw i32 %179, %180
  %182 = load i32, i32* %26, align 4
  %183 = mul nsw i32 %182, %181
  store i32 %183, i32* %26, align 4
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* %26, align 4
  %186 = mul nsw i32 %184, %185
  %187 = sdiv i32 %186, 4096
  store i32 %187, i32* %26, align 4
  br label %188

188:                                              ; preds = %165, %153
  %189 = load i32, i32* %26, align 4
  %190 = sitofp i32 %189 to double
  %191 = fcmp ole double %190, 8.150000e+01
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  br label %229

193:                                              ; preds = %188
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %19, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %194, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %216

204:                                              ; preds = %193
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %205, %209
  %211 = load i32, i32* %22, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.queue, i64 0, i64 %212
  store i32 %210, i32* %213, align 4
  %214 = load i32, i32* %22, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %22, align 4
  br label %216

216:                                              ; preds = %204, %193
  %217 = load i32, i32* %26, align 4
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %19, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %218, %222
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, %217
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %216, %150, %123
  br label %229

229:                                              ; preds = %192, %228
  br label %230

230:                                              ; preds = %229, %110
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %19, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %19, align 4
  br label %107, !llvm.loop !24

234:                                              ; preds = %107
  %235 = load i32, i32* %20, align 4
  %236 = sdiv i32 %235, 2
  store i32 %236, i32* %20, align 4
  %237 = load i32, i32* %23, align 4
  %238 = load i32, i32* %11, align 4
  %239 = mul nsw i32 %237, %238
  %240 = sdiv i32 %239, 4096
  store i32 %240, i32* %23, align 4
  br label %241

241:                                              ; preds = %423, %234
  %242 = load i32, i32* %19, align 4
  %243 = icmp slt i32 %242, 8
  br i1 %243, label %244, label %426

244:                                              ; preds = %241
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* %19, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %245, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp ne i32 %254, 3
  br i1 %255, label %256, label %422

256:                                              ; preds = %244
  br label %257

257:                                              ; preds = %256
  %258 = load i8*, i8** %13, align 8
  %259 = load i32, i32* %15, align 4
  %260 = load i32, i32* %19, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %259, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %258, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = icmp ne i8 %267, 0
  br i1 %268, label %420, label %269

269:                                              ; preds = %257
  %270 = load i32, i32* %19, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %24, align 4
  %275 = mul nsw i32 %273, %274
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %25, align 4
  %281 = mul nsw i32 %279, %280
  %282 = add nsw i32 %275, %281
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %269
  %285 = load i32, i32* %21, align 4
  %286 = icmp eq i32 %285, 1
  br i1 %286, label %287, label %420

287:                                              ; preds = %284, %269
  %288 = load i32*, i32** %12, align 8
  %289 = load i32, i32* %15, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  store i32 %292, i32* %30, align 4
  %293 = load i32, i32* %30, align 4
  %294 = load i32*, i32** %12, align 8
  %295 = load i32, i32* %15, align 4
  %296 = load i32, i32* %19, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = mul nsw i32 %299, 20
  %301 = add nsw i32 %300, 0
  %302 = add nsw i32 %295, %301
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %294, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %12, align 8
  %307 = load i32, i32* %15, align 4
  %308 = load i32, i32* %19, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 0, %311
  %313 = add nsw i32 %307, %312
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %306, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = icmp slt i32 %305, %316
  br i1 %317, label %318, label %330

318:                                              ; preds = %287
  %319 = load i32*, i32** %12, align 8
  %320 = load i32, i32* %15, align 4
  %321 = load i32, i32* %19, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 0, %324
  %326 = add nsw i32 %320, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32, i32* %319, i64 %327
  %329 = load i32, i32* %328, align 4
  br label %343

330:                                              ; preds = %287
  %331 = load i32*, i32** %12, align 8
  %332 = load i32, i32* %15, align 4
  %333 = load i32, i32* %19, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %336, 20
  %338 = add nsw i32 %337, 0
  %339 = add nsw i32 %332, %338
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %331, i64 %340
  %342 = load i32, i32* %341, align 4
  br label %343

343:                                              ; preds = %330, %318
  %344 = phi i32 [ %329, %318 ], [ %342, %330 ]
  %345 = mul nsw i32 %293, %344
  %346 = sdiv i32 %345, 4096
  store i32 %346, i32* %30, align 4
  %347 = load i32, i32* %30, align 4
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %343
  br label %421

350:                                              ; preds = %343
  %351 = load i32, i32* %23, align 4
  %352 = load i32, i32* %30, align 4
  %353 = mul nsw i32 %351, %352
  %354 = sdiv i32 %353, 4096
  store i32 %354, i32* %29, align 4
  %355 = load i32, i32* %21, align 4
  %356 = icmp ne i32 %355, 1
  br i1 %356, label %357, label %380

357:                                              ; preds = %350
  %358 = load i32, i32* %19, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %24, align 4
  %363 = mul nsw i32 %361, %362
  %364 = load i32, i32* %19, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %25, align 4
  %369 = mul nsw i32 %367, %368
  %370 = add nsw i32 %363, %369
  store i32 %370, i32* %31, align 4
  %371 = load i32, i32* %31, align 4
  %372 = load i32, i32* %31, align 4
  %373 = mul nsw i32 %371, %372
  %374 = load i32, i32* %29, align 4
  %375 = mul nsw i32 %374, %373
  store i32 %375, i32* %29, align 4
  %376 = load i32, i32* %20, align 4
  %377 = load i32, i32* %29, align 4
  %378 = mul nsw i32 %376, %377
  %379 = sdiv i32 %378, 4096
  store i32 %379, i32* %29, align 4
  br label %380

380:                                              ; preds = %357, %350
  %381 = load i32, i32* %29, align 4
  %382 = sitofp i32 %381 to double
  %383 = fcmp ole double %382, 8.150000e+01
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  br label %421

385:                                              ; preds = %380
  %386 = load i32, i32* %15, align 4
  %387 = load i32, i32* %19, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = add nsw i32 %386, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %392
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %408

396:                                              ; preds = %385
  %397 = load i32, i32* %15, align 4
  %398 = load i32, i32* %19, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = add nsw i32 %397, %401
  %403 = load i32, i32* %22, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.queue, i64 0, i64 %404
  store i32 %402, i32* %405, align 4
  %406 = load i32, i32* %22, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %22, align 4
  br label %408

408:                                              ; preds = %396, %385
  %409 = load i32, i32* %29, align 4
  %410 = load i32, i32* %15, align 4
  %411 = load i32, i32* %19, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %410, %414
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %418, %409
  store i32 %419, i32* %417, align 4
  br label %420

420:                                              ; preds = %408, %284, %257
  br label %421

421:                                              ; preds = %349, %384, %420
  br label %422

422:                                              ; preds = %421, %244
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %19, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %19, align 4
  br label %241, !llvm.loop !25

426:                                              ; preds = %241
  br label %58, !llvm.loop !23

427:                                              ; preds = %58
  store i32 0, i32* %18, align 4
  br label %428

428:                                              ; preds = %465, %427
  %429 = load i32, i32* %18, align 4
  %430 = load i32, i32* %22, align 4
  %431 = icmp slt i32 %429, %430
  br i1 %431, label %432, label %468

432:                                              ; preds = %428
  %433 = load i32, i32* %18, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.queue, i64 0, i64 %434
  %436 = load i32, i32* %435, align 4
  store i32 %436, i32* %15, align 4
  %437 = load i32, i32* %15, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = sitofp i32 %440 to double
  %442 = fcmp ogt double %441, 8.150000e+01
  br i1 %442, label %450, label %443

443:                                              ; preds = %432
  %444 = load i32*, i32** %14, align 8
  %445 = load i32, i32* %15, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i32, i32* %444, i64 %446
  %448 = load i32, i32* %447, align 4
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %461

450:                                              ; preds = %443, %432
  %451 = load i32, i32* %15, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = load i32*, i32** %14, align 8
  %456 = load i32, i32* %15, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %455, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = add nsw i32 %459, %454
  store i32 %460, i32* %458, align 4
  br label %461

461:                                              ; preds = %450, %443
  %462 = load i32, i32* %15, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [400 x i32], [400 x i32]* @accumulate_influence.working, i64 0, i64 %463
  store i32 0, i32* %464, align 4
  br label %465

465:                                              ; preds = %461
  %466 = load i32, i32* %18, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %18, align 4
  br label %428, !llvm.loop !26

468:                                              ; preds = %428
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @value_territory(%struct.influence_data* %0) #0 {
  %2 = alloca %struct.influence_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca [400 x float], align 16
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store %struct.influence_data* %0, %struct.influence_data** %2, align 8
  store i32 21, i32* %3, align 4
  br label %13

13:                                               ; preds = %242, %1
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 400
  br i1 %15, label %16, label %245

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %241

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %25
  store float 0.000000e+00, float* %26, align 4
  %27 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %28 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %27, i32 0, i32 0
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x i8], [400 x i8]* %28, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %231, label %34

34:                                               ; preds = %23
  store float 0.000000e+00, float* %10, align 4
  %35 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %36 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %35, i32 0, i32 1
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x float], [400 x float]* %36, i64 0, i64 %38
  %40 = load float, float* %39, align 4
  %41 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %42 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %41, i32 0, i32 2
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x float], [400 x float]* %42, i64 0, i64 %44
  %46 = load float, float* %45, align 4
  %47 = fadd float %40, %46
  %48 = fcmp ogt float %47, 0.000000e+00
  br i1 %48, label %49, label %77

49:                                               ; preds = %34
  %50 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %51 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %50, i32 0, i32 1
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [400 x float], [400 x float]* %51, i64 0, i64 %53
  %55 = load float, float* %54, align 4
  %56 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %57 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %56, i32 0, i32 2
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x float], [400 x float]* %57, i64 0, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fsub float %55, %61
  %63 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %64 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %63, i32 0, i32 1
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x float], [400 x float]* %64, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  %69 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %70 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %69, i32 0, i32 2
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x float], [400 x float]* %70, i64 0, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fadd float %68, %74
  %76 = fdiv float %62, %75
  store float %76, float* %10, align 4
  br label %77

77:                                               ; preds = %49, %34
  %78 = load float, float* %10, align 4
  %79 = load float, float* %10, align 4
  %80 = fmul float %78, %79
  %81 = load float, float* %10, align 4
  %82 = fmul float %80, %81
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %84
  store float %82, float* %85, align 4
  %86 = load i32, i32* %3, align 4
  %87 = sdiv i32 %86, 20
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* @board_size, align 4
  %90 = load i32, i32* %3, align 4
  %91 = sdiv i32 %90, 20
  %92 = sub nsw i32 %91, 1
  %93 = sub nsw i32 %89, %92
  %94 = sub nsw i32 %93, 1
  %95 = icmp slt i32 %88, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %77
  %97 = load i32, i32* %3, align 4
  %98 = sdiv i32 %97, 20
  %99 = sub nsw i32 %98, 1
  br label %107

100:                                              ; preds = %77
  %101 = load i32, i32* @board_size, align 4
  %102 = load i32, i32* %3, align 4
  %103 = sdiv i32 %102, 20
  %104 = sub nsw i32 %103, 1
  %105 = sub nsw i32 %101, %104
  %106 = sub nsw i32 %105, 1
  br label %107

107:                                              ; preds = %100, %96
  %108 = phi i32 [ %99, %96 ], [ %106, %100 ]
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %3, align 4
  %110 = srem i32 %109, 20
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* @board_size, align 4
  %113 = load i32, i32* %3, align 4
  %114 = srem i32 %113, 20
  %115 = sub nsw i32 %114, 1
  %116 = sub nsw i32 %112, %115
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %111, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %107
  %120 = load i32, i32* %3, align 4
  %121 = srem i32 %120, 20
  %122 = sub nsw i32 %121, 1
  br label %130

123:                                              ; preds = %107
  %124 = load i32, i32* @board_size, align 4
  %125 = load i32, i32* %3, align 4
  %126 = srem i32 %125, 20
  %127 = sub nsw i32 %126, 1
  %128 = sub nsw i32 %124, %127
  %129 = sub nsw i32 %128, 1
  br label %130

130:                                              ; preds = %123, %119
  %131 = phi i32 [ %122, %119 ], [ %129, %123 ]
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load i32, i32* %4, align 4
  %137 = icmp slt i32 4, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  br label %141

139:                                              ; preds = %135
  %140 = load i32, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %138
  %142 = phi i32 [ 4, %138 ], [ %140, %139 ]
  store i32 %142, i32* %4, align 4
  br label %151

143:                                              ; preds = %130
  %144 = load i32, i32* %5, align 4
  %145 = icmp slt i32 4, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %149

147:                                              ; preds = %143
  %148 = load i32, i32* %5, align 4
  br label %149

149:                                              ; preds = %147, %146
  %150 = phi i32 [ 4, %146 ], [ %148, %147 ]
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %149, %141
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %157

155:                                              ; preds = %151
  %156 = load i32, i32* %4, align 4
  br label %159

157:                                              ; preds = %151
  %158 = load i32, i32* %5, align 4
  br label %159

159:                                              ; preds = %157, %155
  %160 = phi i32 [ %156, %155 ], [ %158, %157 ]
  %161 = sitofp i32 %160 to float
  %162 = fmul float 2.000000e+00, %161
  %163 = load i32, i32* %4, align 4
  %164 = sitofp i32 %163 to float
  %165 = fadd float %162, %164
  %166 = load i32, i32* %5, align 4
  %167 = sitofp i32 %166 to float
  %168 = fadd float %165, %167
  store float %168, float* %6, align 4
  %169 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %170 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %169, i32 0, i32 2
  %171 = load i32, i32* %3, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [400 x float], [400 x float]* %170, i64 0, i64 %172
  %174 = load float, float* %173, align 4
  %175 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %176 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %175, i32 0, i32 1
  %177 = load i32, i32* %3, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [400 x float], [400 x float]* %176, i64 0, i64 %178
  %180 = load float, float* %179, align 4
  %181 = fcmp olt float %174, %180
  br i1 %181, label %182, label %189

182:                                              ; preds = %159
  %183 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %184 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %183, i32 0, i32 1
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [400 x float], [400 x float]* %184, i64 0, i64 %186
  %188 = load float, float* %187, align 4
  br label %196

189:                                              ; preds = %159
  %190 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %191 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %190, i32 0, i32 2
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [400 x float], [400 x float]* %191, i64 0, i64 %193
  %195 = load float, float* %194, align 4
  br label %196

196:                                              ; preds = %189, %182
  %197 = phi float [ %188, %182 ], [ %195, %189 ]
  %198 = load float, float* %6, align 4
  %199 = call float @gg_interpolate(%struct.interpolation_data* bitcast ({ i32, float, float, <{ float, float, float, float, float, float, float, [14 x float] }> }* @min_infl_for_territory to %struct.interpolation_data*), float %198)
  %200 = fdiv float %197, %199
  store float %200, float* %8, align 4
  %201 = load float, float* %8, align 4
  %202 = call float @gg_interpolate(%struct.interpolation_data* bitcast ({ i32, float, float, <{ float, float, float, float, float, float, [15 x float] }> }* @territory_correction to %struct.interpolation_data*), float %201)
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %204
  %206 = load float, float* %205, align 4
  %207 = fmul float %206, %202
  store float %207, float* %205, align 4
  %208 = load i32, i32* %3, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = zext i8 %211 to i32
  %213 = icmp eq i32 %212, 2
  br i1 %213, label %214, label %218

214:                                              ; preds = %196
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %216
  store float 1.000000e+00, float* %217, align 4
  br label %230

218:                                              ; preds = %196
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %223, 1
  br i1 %224, label %225, label %229

225:                                              ; preds = %218
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %227
  store float -1.000000e+00, float* %228, align 4
  br label %229

229:                                              ; preds = %225, %218
  br label %230

230:                                              ; preds = %229, %214
  br label %231

231:                                              ; preds = %230, %23
  %232 = load i32, i32* %3, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %233
  %235 = load float, float* %234, align 4
  %236 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %237 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %236, i32 0, i32 17
  %238 = load i32, i32* %3, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [400 x float], [400 x float]* %237, i64 0, i64 %239
  store float %235, float* %240, align 4
  br label %241

241:                                              ; preds = %231, %16
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %3, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %3, align 4
  br label %13, !llvm.loop !27

245:                                              ; preds = %13
  store i32 21, i32* %3, align 4
  br label %246

246:                                              ; preds = %505, %245
  %247 = load i32, i32* %3, align 4
  %248 = icmp slt i32 %247, 400
  br i1 %248, label %249, label %508

249:                                              ; preds = %246
  %250 = load i32, i32* %3, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp ne i32 %254, 3
  br i1 %255, label %256, label %504

256:                                              ; preds = %249
  %257 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %258 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %257, i32 0, i32 0
  %259 = load i32, i32* %3, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [400 x i8], [400 x i8]* %258, i64 0, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = icmp ne i8 %262, 0
  br i1 %263, label %503, label %264

264:                                              ; preds = %256
  store i32 0, i32* %9, align 4
  br label %265

265:                                              ; preds = %499, %264
  %266 = load i32, i32* %9, align 4
  %267 = icmp slt i32 %266, 4
  br i1 %267, label %268, label %502

268:                                              ; preds = %265
  %269 = load i32, i32* %3, align 4
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %269, %273
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp ne i32 %278, 3
  br i1 %279, label %281, label %280

280:                                              ; preds = %268
  br label %499

281:                                              ; preds = %268
  %282 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %283 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %282, i32 0, i32 17
  %284 = load i32, i32* %3, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [400 x float], [400 x float]* %283, i64 0, i64 %285
  %287 = load float, float* %286, align 4
  %288 = fpext float %287 to double
  %289 = fcmp ogt double %288, 0.000000e+00
  br i1 %289, label %290, label %396

290:                                              ; preds = %281
  %291 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %292 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %291, i32 0, i32 0
  %293 = load i32, i32* %3, align 4
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = add nsw i32 %293, %297
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [400 x i8], [400 x i8]* %292, i64 0, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = icmp ne i8 %301, 0
  br i1 %302, label %395, label %303

303:                                              ; preds = %290
  %304 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %305 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %304, i32 0, i32 8
  %306 = load i32, i32* %3, align 4
  %307 = load i32, i32* %9, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %306, %310
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [400 x float], [400 x float]* %305, i64 0, i64 %312
  %314 = load float, float* %313, align 4
  %315 = load i32, i32* %3, align 4
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = add nsw i32 %315, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %321
  %323 = load float, float* %322, align 4
  %324 = fmul float %314, %323
  %325 = fpext float %324 to double
  %326 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %327 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %326, i32 0, i32 8
  %328 = load i32, i32* %3, align 4
  %329 = load i32, i32* %9, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %328, %332
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [400 x float], [400 x float]* %327, i64 0, i64 %334
  %336 = load float, float* %335, align 4
  %337 = fpext float %336 to double
  %338 = fsub double 1.000000e+00, %337
  %339 = load i32, i32* %3, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %340
  %342 = load float, float* %341, align 4
  %343 = fpext float %342 to double
  %344 = fmul double %338, %343
  %345 = fadd double %325, %344
  %346 = fptrunc double %345 to float
  store float %346, float* %11, align 4
  %347 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %348 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %347, i32 0, i32 17
  %349 = load i32, i32* %3, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [400 x float], [400 x float]* %348, i64 0, i64 %350
  %352 = load float, float* %351, align 4
  %353 = load float, float* %11, align 4
  %354 = fcmp olt float %352, %353
  br i1 %354, label %355, label %362

355:                                              ; preds = %303
  %356 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %357 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %356, i32 0, i32 17
  %358 = load i32, i32* %3, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [400 x float], [400 x float]* %357, i64 0, i64 %359
  %361 = load float, float* %360, align 4
  br label %364

362:                                              ; preds = %303
  %363 = load float, float* %11, align 4
  br label %364

364:                                              ; preds = %362, %355
  %365 = phi float [ %361, %355 ], [ %363, %362 ]
  %366 = fcmp olt float 0.000000e+00, %365
  br i1 %366, label %367, label %387

367:                                              ; preds = %364
  %368 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %369 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %368, i32 0, i32 17
  %370 = load i32, i32* %3, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [400 x float], [400 x float]* %369, i64 0, i64 %371
  %373 = load float, float* %372, align 4
  %374 = load float, float* %11, align 4
  %375 = fcmp olt float %373, %374
  br i1 %375, label %376, label %383

376:                                              ; preds = %367
  %377 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %378 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %377, i32 0, i32 17
  %379 = load i32, i32* %3, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [400 x float], [400 x float]* %378, i64 0, i64 %380
  %382 = load float, float* %381, align 4
  br label %385

383:                                              ; preds = %367
  %384 = load float, float* %11, align 4
  br label %385

385:                                              ; preds = %383, %376
  %386 = phi float [ %382, %376 ], [ %384, %383 ]
  br label %388

387:                                              ; preds = %364
  br label %388

388:                                              ; preds = %387, %385
  %389 = phi float [ %386, %385 ], [ 0.000000e+00, %387 ]
  %390 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %391 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %390, i32 0, i32 17
  %392 = load i32, i32* %3, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [400 x float], [400 x float]* %391, i64 0, i64 %393
  store float %389, float* %394, align 4
  br label %395

395:                                              ; preds = %388, %290
  br label %498

396:                                              ; preds = %281
  %397 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %398 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %397, i32 0, i32 0
  %399 = load i32, i32* %3, align 4
  %400 = load i32, i32* %9, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %401
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %399, %403
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [400 x i8], [400 x i8]* %398, i64 0, i64 %405
  %407 = load i8, i8* %406, align 1
  %408 = icmp ne i8 %407, 0
  br i1 %408, label %497, label %409

409:                                              ; preds = %396
  %410 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %411 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %410, i32 0, i32 7
  %412 = load i32, i32* %3, align 4
  %413 = load i32, i32* %9, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %412, %416
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [400 x float], [400 x float]* %411, i64 0, i64 %418
  %420 = load float, float* %419, align 4
  %421 = load i32, i32* %3, align 4
  %422 = load i32, i32* %9, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %421, %425
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %427
  %429 = load float, float* %428, align 4
  %430 = fmul float %420, %429
  %431 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %432 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %431, i32 0, i32 7
  %433 = load i32, i32* %3, align 4
  %434 = load i32, i32* %9, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = add nsw i32 %433, %437
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [400 x float], [400 x float]* %432, i64 0, i64 %439
  %441 = load float, float* %440, align 4
  %442 = fsub float 1.000000e+00, %441
  %443 = load i32, i32* %3, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [400 x float], [400 x float]* %7, i64 0, i64 %444
  %446 = load float, float* %445, align 4
  %447 = fmul float %442, %446
  %448 = fadd float %430, %447
  store float %448, float* %12, align 4
  %449 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %450 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %449, i32 0, i32 17
  %451 = load i32, i32* %3, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [400 x float], [400 x float]* %450, i64 0, i64 %452
  %454 = load float, float* %453, align 4
  %455 = load float, float* %12, align 4
  %456 = fcmp olt float %454, %455
  br i1 %456, label %457, label %459

457:                                              ; preds = %409
  %458 = load float, float* %12, align 4
  br label %466

459:                                              ; preds = %409
  %460 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %461 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %460, i32 0, i32 17
  %462 = load i32, i32* %3, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds [400 x float], [400 x float]* %461, i64 0, i64 %463
  %465 = load float, float* %464, align 4
  br label %466

466:                                              ; preds = %459, %457
  %467 = phi float [ %458, %457 ], [ %465, %459 ]
  %468 = fcmp olt float 0.000000e+00, %467
  br i1 %468, label %469, label %470

469:                                              ; preds = %466
  br label %490

470:                                              ; preds = %466
  %471 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %472 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %471, i32 0, i32 17
  %473 = load i32, i32* %3, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [400 x float], [400 x float]* %472, i64 0, i64 %474
  %476 = load float, float* %475, align 4
  %477 = load float, float* %12, align 4
  %478 = fcmp olt float %476, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %470
  %480 = load float, float* %12, align 4
  br label %488

481:                                              ; preds = %470
  %482 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %483 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %482, i32 0, i32 17
  %484 = load i32, i32* %3, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [400 x float], [400 x float]* %483, i64 0, i64 %485
  %487 = load float, float* %486, align 4
  br label %488

488:                                              ; preds = %481, %479
  %489 = phi float [ %480, %479 ], [ %487, %481 ]
  br label %490

490:                                              ; preds = %488, %469
  %491 = phi float [ 0.000000e+00, %469 ], [ %489, %488 ]
  %492 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %493 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %492, i32 0, i32 17
  %494 = load i32, i32* %3, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [400 x float], [400 x float]* %493, i64 0, i64 %495
  store float %491, float* %496, align 4
  br label %497

497:                                              ; preds = %490, %396
  br label %498

498:                                              ; preds = %497, %395
  br label %499

499:                                              ; preds = %498, %280
  %500 = load i32, i32* %9, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %9, align 4
  br label %265, !llvm.loop !28

502:                                              ; preds = %265
  br label %503

503:                                              ; preds = %502, %256
  br label %504

504:                                              ; preds = %503, %249
  br label %505

505:                                              ; preds = %504
  %506 = load i32, i32* %3, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %3, align 4
  br label %246, !llvm.loop !29

508:                                              ; preds = %246
  store i32 21, i32* %3, align 4
  br label %509

509:                                              ; preds = %613, %508
  %510 = load i32, i32* %3, align 4
  %511 = icmp slt i32 %510, 400
  br i1 %511, label %512, label %616

512:                                              ; preds = %509
  %513 = load i32, i32* %3, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %514
  %516 = load i8, i8* %515, align 1
  %517 = zext i8 %516 to i32
  %518 = icmp ne i32 %517, 3
  br i1 %518, label %519, label %612

519:                                              ; preds = %512
  %520 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %521 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %520, i32 0, i32 0
  %522 = load i32, i32* %3, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [400 x i8], [400 x i8]* %521, i64 0, i64 %523
  %525 = load i8, i8* %524, align 1
  %526 = icmp ne i8 %525, 0
  br i1 %526, label %611, label %527

527:                                              ; preds = %519
  %528 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %529 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %528, i32 0, i32 17
  %530 = load i32, i32* %3, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [400 x float], [400 x float]* %529, i64 0, i64 %531
  %533 = load float, float* %532, align 4
  %534 = fpext float %533 to double
  %535 = fcmp ogt double %534, 0.000000e+00
  br i1 %535, label %536, label %551

536:                                              ; preds = %527
  %537 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %538 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %537, i32 0, i32 18
  %539 = load i32, i32* %3, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [400 x i32], [400 x i32]* %538, i64 0, i64 %540
  %542 = load i32, i32* %541, align 4
  %543 = and i32 %542, 1
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %551

545:                                              ; preds = %536
  %546 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %547 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %546, i32 0, i32 17
  %548 = load i32, i32* %3, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [400 x float], [400 x float]* %547, i64 0, i64 %549
  store float 0.000000e+00, float* %550, align 4
  br label %551

551:                                              ; preds = %545, %536, %527
  %552 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %553 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %552, i32 0, i32 17
  %554 = load i32, i32* %3, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [400 x float], [400 x float]* %553, i64 0, i64 %555
  %557 = load float, float* %556, align 4
  %558 = fpext float %557 to double
  %559 = fcmp olt double %558, 0.000000e+00
  br i1 %559, label %560, label %575

560:                                              ; preds = %551
  %561 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %562 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %561, i32 0, i32 18
  %563 = load i32, i32* %3, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [400 x i32], [400 x i32]* %562, i64 0, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = and i32 %566, 2
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %575

569:                                              ; preds = %560
  %570 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %571 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %570, i32 0, i32 17
  %572 = load i32, i32* %3, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [400 x float], [400 x float]* %571, i64 0, i64 %573
  store float 0.000000e+00, float* %574, align 4
  br label %575

575:                                              ; preds = %569, %560, %551
  %576 = load i32, i32* %3, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %577
  %579 = load i8, i8* %578, align 1
  %580 = zext i8 %579 to i32
  %581 = icmp eq i32 %580, 2
  br i1 %581, label %582, label %592

582:                                              ; preds = %575
  %583 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %584 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %583, i32 0, i32 17
  %585 = load i32, i32* %3, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [400 x float], [400 x float]* %584, i64 0, i64 %586
  %588 = load float, float* %587, align 4
  %589 = fpext float %588 to double
  %590 = fadd double %589, 1.000000e+00
  %591 = fptrunc double %590 to float
  store float %591, float* %587, align 4
  br label %610

592:                                              ; preds = %575
  %593 = load i32, i32* %3, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %594
  %596 = load i8, i8* %595, align 1
  %597 = zext i8 %596 to i32
  %598 = icmp eq i32 %597, 1
  br i1 %598, label %599, label %609

599:                                              ; preds = %592
  %600 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %601 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %600, i32 0, i32 17
  %602 = load i32, i32* %3, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [400 x float], [400 x float]* %601, i64 0, i64 %603
  %605 = load float, float* %604, align 4
  %606 = fpext float %605 to double
  %607 = fsub double %606, 1.000000e+00
  %608 = fptrunc double %607 to float
  store float %608, float* %604, align 4
  br label %609

609:                                              ; preds = %599, %592
  br label %610

610:                                              ; preds = %609, %582
  br label %611

611:                                              ; preds = %610, %519
  br label %612

612:                                              ; preds = %611, %512
  br label %613

613:                                              ; preds = %612
  %614 = load i32, i32* %3, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %3, align 4
  br label %509, !llvm.loop !30

616:                                              ; preds = %509
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_influence(%struct.influence_data* %0, i8* %1) #0 {
  %3 = alloca %struct.influence_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.influence_data* %0, %struct.influence_data** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* @printmoyo, align 4
  %6 = and i32 %5, 256
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %10)
  %12 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %13 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %14 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %13, i32 0, i32 5
  %15 = getelementptr inbounds [400 x float], [400 x float]* %14, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %12, float* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 3, i32 0, i32 0)
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %17)
  %19 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %20 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %21 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %20, i32 0, i32 6
  %22 = getelementptr inbounds [400 x float], [400 x float]* %21, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %19, float* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 3, i32 0, i32 0)
  br label %23

23:                                               ; preds = %8, %2
  %24 = load i32, i32* @printmoyo, align 4
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %30 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %31 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %32 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %31, i32 0, i32 7
  %33 = getelementptr inbounds [400 x float], [400 x float]* %32, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %30, float* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 3, i32 0, i32 0)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %36 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %37 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %38 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %37, i32 0, i32 8
  %39 = getelementptr inbounds [400 x float], [400 x float]* %38, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %36, float* %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 3, i32 0, i32 0)
  br label %40

40:                                               ; preds = %27, %23
  %41 = load i32, i32* @printmoyo, align 4
  %42 = and i32 %41, 128
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %47 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %48 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %47, i32 0, i32 16
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %53 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %54 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %53, i32 0, i32 3
  %55 = getelementptr inbounds [400 x float], [400 x float]* %54, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %52, float* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5, i32 0, i32 0)
  br label %61

56:                                               ; preds = %44
  %57 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %58 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %59 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %58, i32 0, i32 3
  %60 = getelementptr inbounds [400 x float], [400 x float]* %59, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %57, float* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 3, i32 0, i32 1)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %64 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %65 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %70 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %71 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %70, i32 0, i32 4
  %72 = getelementptr inbounds [400 x float], [400 x float]* %71, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %69, float* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5, i32 0, i32 0)
  br label %78

73:                                               ; preds = %61
  %74 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %75 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %76 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %75, i32 0, i32 4
  %77 = getelementptr inbounds [400 x float], [400 x float]* %76, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %74, float* %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 3, i32 0, i32 1)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %40
  %80 = load i32, i32* @printmoyo, align 4
  %81 = and i32 %80, 32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %79
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %85)
  %87 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %88 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %87, i32 0, i32 16
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %93 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %94 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %93, i32 0, i32 1
  %95 = getelementptr inbounds [400 x float], [400 x float]* %94, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %92, float* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5, i32 1, i32 0)
  br label %101

96:                                               ; preds = %83
  %97 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %98 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %99 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %98, i32 0, i32 1
  %100 = getelementptr inbounds [400 x float], [400 x float]* %99, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %97, float* %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 3, i32 1, i32 1)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %103 = load i8*, i8** %4, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %103)
  %105 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %106 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %101
  %110 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %111 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %112 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %111, i32 0, i32 2
  %113 = getelementptr inbounds [400 x float], [400 x float]* %112, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %110, float* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 5, i32 1, i32 0)
  br label %119

114:                                              ; preds = %101
  %115 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %116 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %117 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %116, i32 0, i32 2
  %118 = getelementptr inbounds [400 x float], [400 x float]* %117, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %115, float* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 3, i32 1, i32 1)
  br label %119

119:                                              ; preds = %114, %109
  br label %120

120:                                              ; preds = %119, %79
  %121 = load i32, i32* @printmoyo, align 4
  %122 = and i32 %121, 16
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i8* %126)
  %128 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  call void @print_influence_areas(%struct.influence_data* %128)
  br label %129

129:                                              ; preds = %124, %120
  %130 = load i32, i32* @printmoyo, align 4
  %131 = and i32 %130, 512
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %129
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = load i8*, i8** %4, align 8
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0), i8* %135)
  %137 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %138 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %139 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %138, i32 0, i32 17
  %140 = getelementptr inbounds [400 x float], [400 x float]* %139, i64 0, i64 0
  call void @print_numeric_influence(%struct.influence_data* %137, float* %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 5, i32 1, i32 0)
  br label %141

141:                                              ; preds = %133, %129
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_escape_influence(i32 %0, i8* %1, float* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store float* %2, float** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 21, i32* %10, align 4
  br label %16

16:                                               ; preds = %40, %4
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 400
  br i1 %18, label %19, label %43

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x i32], [400 x i32]* @compute_escape_influence.cached_board, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %23, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x i32], [400 x i32]* @compute_escape_influence.cached_board, i64 0, i64 %37
  store i32 %35, i32* %38, align 4
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %30, %19
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  br label %16, !llvm.loop !31

43:                                               ; preds = %16
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %54, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 2
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* @compute_escape_influence.active_caches, i64 0, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %47, !llvm.loop !32

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* @compute_escape_influence.active_caches, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %92

64:                                               ; preds = %58
  store i32 21, i32* %10, align 4
  br label %65

65:                                               ; preds = %88, %64
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 400
  br i1 %67, label %68, label %91

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %73, 3
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x [2 x i8]], [400 x [2 x i8]]* @compute_escape_influence.escape_values, i64 0, i64 %77
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x i8], [2 x i8]* %78, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 %82, i8* %86, align 1
  br label %87

87:                                               ; preds = %75, %68
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %65, !llvm.loop !33

91:                                               ; preds = %65
  br label %179

92:                                               ; preds = %58
  store i32 0, i32* getelementptr inbounds (%struct.influence_data, %struct.influence_data* @escape_influence, i32 0, i32 16), align 4
  store i32 0, i32* getelementptr inbounds (%struct.influence_data, %struct.influence_data* @escape_influence, i32 0, i32 20), align 4
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 3, %93
  %95 = load i8*, i8** %6, align 8
  %96 = load float*, float** %7, align 8
  call void @do_compute_influence(i32 %94, i8* %95, float* %96, %struct.influence_data* @escape_influence, i32 -1, i8* null)
  store i32 21, i32* %10, align 4
  br label %97

97:                                               ; preds = %145, %92
  %98 = load i32, i32* %10, align 4
  %99 = icmp slt i32 %98, 400
  br i1 %99, label %100, label %148

100:                                              ; preds = %97
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %105, 3
  br i1 %106, label %107, label %144

107:                                              ; preds = %100
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @whose_moyo(%struct.influence_data* @escape_influence, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load i8*, i8** %8, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  store i8 4, i8* %116, align 1
  br label %143

117:                                              ; preds = %107
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @whose_area(%struct.influence_data* @escape_influence, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load i8*, i8** %8, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 2, i8* %126, align 1
  br label %142

127:                                              ; preds = %117
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @whose_area(%struct.influence_data* @escape_influence, i32 %128)
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  store i8 1, i8* %135, align 1
  br label %141

136:                                              ; preds = %127
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %136, %131
  br label %142

142:                                              ; preds = %141, %122
  br label %143

143:                                              ; preds = %142, %112
  br label %144

144:                                              ; preds = %143, %100
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %97, !llvm.loop !34

148:                                              ; preds = %97
  store i32 21, i32* %10, align 4
  br label %149

149:                                              ; preds = %172, %148
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %150, 400
  br i1 %151, label %152, label %175

152:                                              ; preds = %149
  %153 = load i32, i32* %10, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp ne i32 %157, 3
  br i1 %158, label %159, label %171

159:                                              ; preds = %152
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [400 x [2 x i8]], [400 x [2 x i8]]* @compute_escape_influence.escape_values, i64 0, i64 %166
  %168 = load i32, i32* %11, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [2 x i8], [2 x i8]* %167, i64 0, i64 %169
  store i8 %164, i8* %170, align 1
  br label %171

171:                                              ; preds = %159, %152
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  br label %149, !llvm.loop !35

175:                                              ; preds = %149
  %176 = load i32, i32* %11, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* @compute_escape_influence.active_caches, i64 0, i64 %177
  store i32 1, i32* %178, align 4
  br label %179

179:                                              ; preds = %175, %91
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @retrieve_delta_territory_cache(i32 %0, i32 %1, float* %2, float* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ult i32 %10, 421
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %12, %4
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1618, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  br label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, 20
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %6, align 4
  %39 = srem i32 %38, 20
  %40 = sub nsw i32 %39, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1619, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %40)
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i32, i32* @territory_cache_position_number, align 4
  %43 = load i32, i32* @position_number, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load i32, i32* @territory_cache_color, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x float], [400 x float]* @delta_territory_cache, i64 0, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fpext float %53 to double
  %55 = fcmp une double %54, -7.220000e+02
  br i1 %55, label %56, label %67

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x float], [400 x float]* @delta_territory_cache, i64 0, i64 %58
  %60 = load float, float* %59, align 4
  %61 = load float*, float** %8, align 8
  store float %60, float* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [400 x float], [400 x float]* @followup_territory_cache, i64 0, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load float*, float** %9, align 8
  store float %65, float* %66, align 4
  store i32 1, i32* %5, align 4
  br label %68

67:                                               ; preds = %49, %45, %41
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %56
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_delta_territory_cache(i32 %0, i32 %1, float %2, float %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 421
  br i1 %11, label %12, label %20

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %12, %4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1638, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %27
  br label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %35, 20
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %5, align 4
  %39 = srem i32 %38, 20
  %40 = sub nsw i32 %39, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1639, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %40)
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i32, i32* @territory_cache_position_number, align 4
  %43 = load i32, i32* @position_number, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @territory_cache_color, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45, %41
  store i32 21, i32* %9, align 4
  br label %50

50:                                               ; preds = %57, %49
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 400
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x float], [400 x float]* @delta_territory_cache, i64 0, i64 %55
  store float -7.220000e+02, float* %56, align 4
  br label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %50, !llvm.loop !36

60:                                               ; preds = %50
  %61 = load i32, i32* @position_number, align 4
  store i32 %61, i32* @territory_cache_position_number, align 4
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* @territory_cache_color, align 4
  br label %63

63:                                               ; preds = %60, %45
  %64 = load float, float* %7, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x float], [400 x float]* @delta_territory_cache, i64 0, i64 %66
  store float %64, float* %67, align 4
  %68 = load float, float* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [400 x float], [400 x float]* @followup_territory_cache, i64 0, i64 %70
  store float %68, float* %71, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @influence_delta_territory(%struct.influence_data* %0, %struct.influence_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.influence_data*, align 8
  %6 = alloca %struct.influence_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.influence_data* %0, %struct.influence_data** %5, align 8
  store %struct.influence_data* %1, %struct.influence_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store float 0.000000e+00, float* %10, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ult i32 %15, 421
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %32

25:                                               ; preds = %17, %4
  %26 = load i32, i32* %8, align 4
  %27 = sdiv i32 %26, 20
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %8, align 4
  %30 = srem i32 %29, 20
  %31 = sub nsw i32 %30, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1669, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %28, i32 %31)
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %32
  br label %46

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = sdiv i32 %40, 20
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %8, align 4
  %44 = srem i32 %43, 20
  %45 = sub nsw i32 %44, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1670, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %42, i32 %45)
  br label %46

46:                                               ; preds = %39, %38
  store i32 21, i32* %9, align 4
  br label %47

47:                                               ; preds = %115, %46
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 400
  br i1 %49, label %50, label %118

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %57, label %114

57:                                               ; preds = %50
  %58 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %59 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %58, i32 0, i32 17
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x float], [400 x float]* %59, i64 0, i64 %61
  %63 = load float, float* %62, align 4
  store float %63, float* %11, align 4
  %64 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %65 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %64, i32 0, i32 17
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [400 x float], [400 x float]* %65, i64 0, i64 %67
  %69 = load float, float* %68, align 4
  store float %69, float* %12, align 4
  %70 = load float, float* %11, align 4
  %71 = load float, float* %12, align 4
  %72 = fsub float %70, %71
  store float %72, float* %13, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %82

75:                                               ; preds = %57
  %76 = load float, float* %11, align 4
  %77 = fneg float %76
  store float %77, float* %11, align 4
  %78 = load float, float* %12, align 4
  %79 = fneg float %78
  store float %79, float* %12, align 4
  %80 = load float, float* %13, align 4
  %81 = fneg float %80
  store float %81, float* %13, align 4
  br label %82

82:                                               ; preds = %75, %57
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, -1
  br i1 %84, label %85, label %110

85:                                               ; preds = %82
  %86 = load float, float* %13, align 4
  %87 = fpext float %86 to double
  %88 = fcmp ogt double %87, 2.000000e-02
  br i1 %88, label %94, label %89

89:                                               ; preds = %85
  %90 = load float, float* %13, align 4
  %91 = fneg float %90
  %92 = fpext float %91 to double
  %93 = fcmp ogt double %92, 2.000000e-02
  br i1 %93, label %94, label %110

94:                                               ; preds = %89, %85
  %95 = load i32, i32* @debug, align 4
  %96 = and i32 %95, 1048576
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  br label %109

99:                                               ; preds = %94
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load float, float* %13, align 4
  %103 = fpext float %102 to double
  %104 = load float, float* %12, align 4
  %105 = fpext float %104 to double
  %106 = load float, float* %11, align 4
  %107 = fpext float %106 to double
  %108 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %100, i32 %101, double %103, double %105, double %107)
  br label %109

109:                                              ; preds = %99, %98
  br label %110

110:                                              ; preds = %109, %89, %82
  %111 = load float, float* %13, align 4
  %112 = load float, float* %10, align 4
  %113 = fadd float %112, %111
  store float %113, float* %10, align 4
  br label %114

114:                                              ; preds = %110, %50
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %47, !llvm.loop !37

118:                                              ; preds = %47
  %119 = load %struct.influence_data*, %struct.influence_data** %6, align 8
  %120 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %119, i32 0, i32 19
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %123 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %122, i32 0, i32 19
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %121, %124
  %126 = sitofp i32 %125 to float
  store float %126, float* %14, align 4
  %127 = load i32, i32* %7, align 4
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %132

129:                                              ; preds = %118
  %130 = load float, float* %14, align 4
  %131 = fneg float %130
  store float %131, float* %14, align 4
  br label %132

132:                                              ; preds = %129, %118
  %133 = load i32, i32* %8, align 4
  %134 = icmp ne i32 %133, -1
  br i1 %134, label %135, label %150

135:                                              ; preds = %132
  %136 = load float, float* %14, align 4
  %137 = fpext float %136 to double
  %138 = fcmp une double %137, 0.000000e+00
  br i1 %138, label %139, label %150

139:                                              ; preds = %135
  %140 = load i32, i32* @debug, align 4
  %141 = and i32 %140, 1048576
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %149

144:                                              ; preds = %139
  %145 = load i32, i32* %8, align 4
  %146 = load float, float* %14, align 4
  %147 = fpext float %146 to double
  %148 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32 %145, double %147)
  br label %149

149:                                              ; preds = %144, %143
  br label %150

150:                                              ; preds = %149, %135, %132
  %151 = load float, float* %14, align 4
  %152 = load float, float* %10, align 4
  %153 = fadd float %152, %151
  store float %153, float* %10, align 4
  %154 = load float, float* %10, align 4
  ret float %154
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debug_influence_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = mul nsw i32 %5, 20
  %7 = add nsw i32 21, %6
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* @debug_influence, align 4
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_numeric_influence(%struct.influence_data* %0, float* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.influence_data*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca [20 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %7, align 8
  store float* %1, float** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 32, i64 20, i1 false)
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 1
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 %23
  store i8 37, i8* %24, align 1
  %25 = load i32, i32* %10, align 4
  %26 = add nsw i32 %25, 3
  %27 = sdiv i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 %28
  store i8 99, i8* %29, align 1
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 2
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  store i8 65, i8* %15, align 1
  br label %36

36:                                               ; preds = %53, %6
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @board_size, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = load i8, i8* %15, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 73
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i8, i8* %15, align 1
  %46 = add i8 %45, 1
  store i8 %46, i8* %15, align 1
  br label %47

47:                                               ; preds = %44, %40
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %50 = load i8, i8* %15, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* %49, i32 %51)
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  %56 = load i8, i8* %15, align 1
  %57 = add i8 %56, 1
  store i8 %57, i8* %15, align 1
  br label %36, !llvm.loop !38

58:                                               ; preds = %36
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %152, %58
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @board_size, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %155

65:                                               ; preds = %61
  %66 = load i32, i32* @board_size, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %66, %67
  store i32 %68, i32* %17, align 4
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = load i32, i32* %17, align 4
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i32 %70)
  store i32 0, i32* %14, align 4
  br label %72

72:                                               ; preds = %145, %65
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @board_size, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %148

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %77, 20
  %79 = add nsw i32 21, %78
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %76
  %85 = load %struct.influence_data*, %struct.influence_data** %7, align 8
  %86 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %85, i32 0, i32 0
  %87 = load i32, i32* %18, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [400 x i8], [400 x i8]* %86, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %84
  %94 = load i32, i32* %18, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %104

100:                                              ; preds = %93
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %102 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %101, i8* %102, i32 79)
  br label %108

104:                                              ; preds = %93
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* %106, i32 88)
  br label %108

108:                                              ; preds = %104, %100
  br label %144

109:                                              ; preds = %84, %76
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load float*, float** %8, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds float, float* %113, i64 %115
  %117 = load float, float* %116, align 4
  %118 = fpext float %117 to double
  %119 = fcmp ogt double %118, 0.000000e+00
  br i1 %119, label %120, label %131

120:                                              ; preds = %112
  %121 = load float*, float** %8, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  %125 = load float, float* %124, align 4
  %126 = fpext float %125 to double
  %127 = fcmp olt double %126, 1.000000e+00
  br i1 %127, label %128, label %131

128:                                              ; preds = %120
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i64 0, i64 0))
  br label %141

131:                                              ; preds = %120, %112, %109
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load float*, float** %8, align 8
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  %138 = load float, float* %137, align 4
  %139 = fpext float %138 to double
  %140 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* %133, double %139)
  br label %141

141:                                              ; preds = %131, %128
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %143 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  br label %144

144:                                              ; preds = %141, %108
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %14, align 4
  br label %72, !llvm.loop !39

148:                                              ; preds = %72
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %150 = load i32, i32* %17, align 4
  %151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  br label %61, !llvm.loop !40

155:                                              ; preds = %61
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  store i8 65, i8* %15, align 1
  br label %158

158:                                              ; preds = %175, %155
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @board_size, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  %163 = load i8, i8* %15, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp eq i32 %164, 73
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load i8, i8* %15, align 1
  %168 = add i8 %167, 1
  store i8 %168, i8* %15, align 1
  br label %169

169:                                              ; preds = %166, %162
  %170 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %171 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i64 0, i64 0
  %172 = load i8, i8* %15, align 1
  %173 = sext i8 %172 to i32
  %174 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %170, i8* %171, i32 %173)
  br label %175

175:                                              ; preds = %169
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  %178 = load i8, i8* %15, align 1
  %179 = add i8 %178, 1
  store i8 %179, i8* %15, align 1
  br label %158, !llvm.loop !41

180:                                              ; preds = %158
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_influence_areas(%struct.influence_data* %0) #0 {
  %2 = alloca %struct.influence_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %2, align 8
  call void @start_draw_board()
  store i32 21, i32* %3, align 4
  br label %6

6:                                                ; preds = %86, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 400
  br i1 %8, label %9, label %89

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %85

16:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %17 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %18 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [400 x i8], [400 x i8]* %18, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 79, i32* %4, align 4
  br label %33

32:                                               ; preds = %24
  store i32 88, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %76

34:                                               ; preds = %16
  %35 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @whose_territory(%struct.influence_data* %35, i32 %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 111, i32* %4, align 4
  store i32 6, i32* %5, align 4
  br label %75

40:                                               ; preds = %34
  %41 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @whose_territory(%struct.influence_data* %41, i32 %42)
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 120, i32* %4, align 4
  store i32 6, i32* %5, align 4
  br label %74

46:                                               ; preds = %40
  %47 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @whose_moyo(%struct.influence_data* %47, i32 %48)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 111, i32* %4, align 4
  store i32 3, i32* %5, align 4
  br label %73

52:                                               ; preds = %46
  %53 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @whose_moyo(%struct.influence_data* %53, i32 %54)
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 120, i32* %4, align 4
  store i32 3, i32* %5, align 4
  br label %72

58:                                               ; preds = %52
  %59 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @whose_area(%struct.influence_data* %59, i32 %60)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 111, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %71

64:                                               ; preds = %58
  %65 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @whose_area(%struct.influence_data* %65, i32 %66)
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 120, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %69, %64
  br label %71

71:                                               ; preds = %70, %63
  br label %72

72:                                               ; preds = %71, %57
  br label %73

73:                                               ; preds = %72, %51
  br label %74

74:                                               ; preds = %73, %45
  br label %75

75:                                               ; preds = %74, %39
  br label %76

76:                                               ; preds = %75, %33
  %77 = load i32, i32* %3, align 4
  %78 = sdiv i32 %77, 20
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %3, align 4
  %81 = srem i32 %80, 20
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %5, align 4
  call void @draw_color_char(i32 %79, i32 %82, i32 %83, i32 %84)
  br label %85

85:                                               ; preds = %76, %9
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %6, !llvm.loop !42

89:                                               ; preds = %6
  call void @end_draw_board()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_influence(%struct.influence_data* %0, i32 %1, i8* %2, float* %3) #0 {
  %5 = alloca %struct.influence_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  store %struct.influence_data* %0, %struct.influence_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store float* %3, float** %8, align 8
  %11 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %12 = icmp ne %struct.influence_data* %11, @escape_influence
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 20
  store i32 %14, i32* %16, align 4
  %17 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %18 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %17, i32 0, i32 16
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store float 0x4003333340000000, float* %10, align 4
  br label %23

22:                                               ; preds = %13
  store float 3.000000e+00, float* %10, align 4
  br label %23

23:                                               ; preds = %22, %21
  br label %34

24:                                               ; preds = %4
  %25 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %26 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %25, i32 0, i32 20
  store i32 0, i32* %26, align 4
  %27 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %28 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %27, i32 0, i32 16
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store float 0x4013333340000000, float* %10, align 4
  br label %33

32:                                               ; preds = %24
  store float 6.000000e+00, float* %10, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %23
  %35 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %36 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %35, i32 0, i32 22
  store i32 0, i32* %36, align 4
  %37 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %38 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds [400 x i8], [400 x i8]* %38, i64 0, i64 0
  %40 = load i8*, i8** %7, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 1 %40, i64 400, i1 false)
  %41 = load i32, i32* @black_captured, align 4
  %42 = load i32, i32* @white_captured, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %45 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %44, i32 0, i32 19
  store i32 %43, i32* %45, align 4
  store i32 21, i32* %9, align 4
  br label %46

46:                                               ; preds = %213, %34
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 400
  br i1 %48, label %49, label %216

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 3
  br i1 %55, label %56, label %212

56:                                               ; preds = %49
  %57 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %58 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %57, i32 0, i32 1
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [400 x float], [400 x float]* %58, i64 0, i64 %60
  store float 0.000000e+00, float* %61, align 4
  %62 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %63 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %62, i32 0, i32 2
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x float], [400 x float]* %63, i64 0, i64 %65
  store float 0.000000e+00, float* %66, align 4
  %67 = load float, float* %10, align 4
  %68 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %69 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %68, i32 0, i32 5
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [400 x float], [400 x float]* %69, i64 0, i64 %71
  store float %67, float* %72, align 4
  %73 = load float, float* %10, align 4
  %74 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %75 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %74, i32 0, i32 6
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x float], [400 x float]* %75, i64 0, i64 %77
  store float %73, float* %78, align 4
  %79 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %80 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %79, i32 0, i32 7
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [400 x float], [400 x float]* %80, i64 0, i64 %82
  store float 1.000000e+00, float* %83, align 4
  %84 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %85 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %84, i32 0, i32 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x float], [400 x float]* %85, i64 0, i64 %87
  store float 1.000000e+00, float* %88, align 4
  %89 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %90 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %89, i32 0, i32 3
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [400 x float], [400 x float]* %90, i64 0, i64 %92
  store float 0.000000e+00, float* %93, align 4
  %94 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %95 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %94, i32 0, i32 4
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [400 x float], [400 x float]* %95, i64 0, i64 %97
  store float 0.000000e+00, float* %98, align 4
  %99 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %100 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %99, i32 0, i32 18
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x i32], [400 x i32]* %100, i64 0, i64 %102
  store i32 0, i32* %103, align 4
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %117, label %110

110:                                              ; preds = %56
  %111 = load i32, i32* %9, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %117, label %205

117:                                              ; preds = %110, %56
  %118 = load i8*, i8** %7, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %144, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %137

131:                                              ; preds = %124
  %132 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %133 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %132, i32 0, i32 7
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [400 x float], [400 x float]* %133, i64 0, i64 %135
  store float 0.000000e+00, float* %136, align 4
  br label %143

137:                                              ; preds = %124
  %138 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %139 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %138, i32 0, i32 8
  %140 = load i32, i32* %9, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [400 x float], [400 x float]* %139, i64 0, i64 %141
  store float 0.000000e+00, float* %142, align 4
  br label %143

143:                                              ; preds = %137, %131
  br label %204

144:                                              ; preds = %117
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %177

151:                                              ; preds = %144
  %152 = load float*, float** %8, align 8
  %153 = icmp ne float* %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %151
  %155 = load float*, float** %8, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float, float* %155, i64 %157
  %159 = load float, float* %158, align 4
  %160 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %161 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %160, i32 0, i32 3
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [400 x float], [400 x float]* %161, i64 0, i64 %163
  store float %159, float* %164, align 4
  br label %171

165:                                              ; preds = %151
  %166 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %167 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %166, i32 0, i32 3
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [400 x float], [400 x float]* %167, i64 0, i64 %169
  store float 1.000000e+02, float* %170, align 4
  br label %171

171:                                              ; preds = %165, %154
  %172 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %173 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %172, i32 0, i32 8
  %174 = load i32, i32* %9, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [400 x float], [400 x float]* %173, i64 0, i64 %175
  store float 0.000000e+00, float* %176, align 4
  br label %203

177:                                              ; preds = %144
  %178 = load float*, float** %8, align 8
  %179 = icmp ne float* %178, null
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load float*, float** %8, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float, float* %181, i64 %183
  %185 = load float, float* %184, align 4
  %186 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %187 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %186, i32 0, i32 4
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [400 x float], [400 x float]* %187, i64 0, i64 %189
  store float %185, float* %190, align 4
  br label %197

191:                                              ; preds = %177
  %192 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %193 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %192, i32 0, i32 4
  %194 = load i32, i32* %9, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [400 x float], [400 x float]* %193, i64 0, i64 %195
  store float 1.000000e+02, float* %196, align 4
  br label %197

197:                                              ; preds = %191, %180
  %198 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %199 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %198, i32 0, i32 7
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [400 x float], [400 x float]* %199, i64 0, i64 %201
  store float 0.000000e+00, float* %202, align 4
  br label %203

203:                                              ; preds = %197, %171
  br label %204

204:                                              ; preds = %203, %143
  br label %211

205:                                              ; preds = %110
  %206 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %207 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %206, i32 0, i32 0
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [400 x i8], [400 x i8]* %207, i64 0, i64 %209
  store i8 0, i8* %210, align 1
  br label %211

211:                                              ; preds = %205, %204
  br label %212

212:                                              ; preds = %211, %49
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %9, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %9, align 4
  br label %46, !llvm.loop !43

216:                                              ; preds = %46
  ret void
}

declare dso_local void @modify_depth_values(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_influence_patterns(%struct.influence_data* %0, i32 %1) #0 {
  %3 = alloca %struct.influence_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  store %struct.influence_data* %0, %struct.influence_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  store %struct.influence_data* %9, %struct.influence_data** @current_influence, align 8
  %10 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %11 = bitcast %struct.influence_data* %10 to i8*
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @influence_callback, i32 6, %struct.pattern_db* @influencepat_db, i8* %11, i8* null)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %17 = bitcast %struct.influence_data* %16 to i8*
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @influence_callback, i32 %15, %struct.pattern_db* @barrierspat_db, i8* %17, i8* null)
  br label %18

18:                                               ; preds = %14, %2
  %19 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %20 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %19, i32 0, i32 16
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %25 = load i32, i32* %4, align 4
  call void @add_marked_intrusions(%struct.influence_data* %24, i32 %25)
  br label %26

26:                                               ; preds = %23, %18
  store i32 21, i32* %5, align 4
  br label %27

27:                                               ; preds = %114, %26
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 400
  br i1 %29, label %30, label %117

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %113

37:                                               ; preds = %30
  %38 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %39 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x i8], [400 x i8]* %39, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %113

46:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %109, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 8
  br i1 %49, label %50, label %112

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 3
  br i1 %62, label %63, label %108

63:                                               ; preds = %50
  %64 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %65 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %64, i32 0, i32 0
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [400 x i8], [400 x i8]* %65, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %108, label %73

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 4
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, double 2.500000e-01, double 6.500000e-01
  %78 = fptrunc double %77 to float
  store float %78, float* %8, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %96

85:                                               ; preds = %73
  %86 = load float, float* %8, align 4
  %87 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %88 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %87, i32 0, i32 7
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [400 x float], [400 x float]* %88, i64 0, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fmul float %94, %86
  store float %95, float* %93, align 4
  br label %107

96:                                               ; preds = %73
  %97 = load float, float* %8, align 4
  %98 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  %99 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %98, i32 0, i32 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [400 x float], [400 x float]* %99, i64 0, i64 %103
  %105 = load float, float* %104, align 4
  %106 = fmul float %105, %97
  store float %106, float* %104, align 4
  br label %107

107:                                              ; preds = %96, %85
  br label %108

108:                                              ; preds = %107, %63, %50
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %47, !llvm.loop !44

112:                                              ; preds = %47
  br label %113

113:                                              ; preds = %112, %37, %30
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  br label %27, !llvm.loop !45

117:                                              ; preds = %27
  %118 = load %struct.influence_data*, %struct.influence_data** %3, align 8
  call void @reset_unblocked_blocks(%struct.influence_data* %118)
  ret void
}

declare dso_local void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @influence_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.influence_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %21 = load %struct.pattern*, %struct.pattern** %8, align 8
  %22 = getelementptr inbounds %struct.pattern, %struct.pattern* %21, i32 0, i32 11
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %24
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %25, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = bitcast i8* %32 to %struct.influence_data*
  store %struct.influence_data* %33, %struct.influence_data** %13, align 8
  %34 = load %struct.pattern*, %struct.pattern** %8, align 8
  %35 = getelementptr inbounds %struct.pattern, %struct.pattern* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, 2097152
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %5
  %40 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %41 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39, %5
  %45 = load %struct.pattern*, %struct.pattern** %8, align 8
  %46 = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 4194304
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %52 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %51, i32 0, i32 16
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50, %39
  br label %794

56:                                               ; preds = %50, %44
  %57 = load %struct.pattern*, %struct.pattern** %8, align 8
  %58 = getelementptr inbounds %struct.pattern, %struct.pattern* %57, i32 0, i32 12
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 8192
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %64 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %63, i32 0, i32 16
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %794

68:                                               ; preds = %62, %56
  %69 = load i32, i32* @doing_scoring, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.pattern*, %struct.pattern** %8, align 8
  %73 = getelementptr inbounds %struct.pattern, %struct.pattern* %72, i32 0, i32 12
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 65536
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %794

78:                                               ; preds = %71, %68
  %79 = load %struct.pattern*, %struct.pattern** %8, align 8
  %80 = getelementptr inbounds %struct.pattern, %struct.pattern* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 1088
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %178

84:                                               ; preds = %78
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %170, %84
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.pattern*, %struct.pattern** %8, align 8
  %88 = getelementptr inbounds %struct.pattern, %struct.pattern* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %173

91:                                               ; preds = %85
  %92 = load %struct.pattern*, %struct.pattern** %8, align 8
  %93 = getelementptr inbounds %struct.pattern, %struct.pattern* %92, i32 0, i32 0
  %94 = load %struct.patval*, %struct.patval** %93, align 8
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.patval, %struct.patval* %94, i64 %96
  %98 = getelementptr inbounds %struct.patval, %struct.patval* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 5
  br i1 %100, label %101, label %117

101:                                              ; preds = %91
  %102 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %103 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %102, i32 0, i32 16
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load %struct.pattern*, %struct.pattern** %8, align 8
  %108 = getelementptr inbounds %struct.pattern, %struct.pattern* %107, i32 0, i32 0
  %109 = load %struct.patval*, %struct.patval** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.patval, %struct.patval* %109, i64 %111
  %113 = getelementptr inbounds %struct.patval, %struct.patval* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 7
  br i1 %115, label %116, label %117

116:                                              ; preds = %106, %101
  br label %173

117:                                              ; preds = %106, %91
  %118 = load %struct.pattern*, %struct.pattern** %8, align 8
  %119 = getelementptr inbounds %struct.pattern, %struct.pattern* %118, i32 0, i32 0
  %120 = load %struct.patval*, %struct.patval** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.patval, %struct.patval* %120, i64 %122
  %124 = getelementptr inbounds %struct.patval, %struct.patval* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %126
  %128 = load i32, i32* %9, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [8 x i32], [8 x i32]* %127, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %16, align 4
  %134 = load %struct.pattern*, %struct.pattern** %8, align 8
  %135 = getelementptr inbounds %struct.pattern, %struct.pattern* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, 64
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %117
  %140 = load i32, i32* %7, align 4
  store i32 %140, i32* %15, align 4
  br label %144

141:                                              ; preds = %117
  %142 = load i32, i32* %7, align 4
  %143 = sub nsw i32 3, %142
  store i32 %143, i32* %15, align 4
  br label %144

144:                                              ; preds = %141, %139
  %145 = load i32, i32* %15, align 4
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %149 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %148, i32 0, i32 8
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x float], [400 x float]* %149, i64 0, i64 %151
  %153 = load float, float* %152, align 4
  %154 = fpext float %153 to double
  %155 = fcmp une double %154, 0.000000e+00
  br i1 %155, label %168, label %156

156:                                              ; preds = %147, %144
  %157 = load i32, i32* %15, align 4
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %169

159:                                              ; preds = %156
  %160 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %161 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %160, i32 0, i32 7
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [400 x float], [400 x float]* %161, i64 0, i64 %163
  %165 = load float, float* %164, align 4
  %166 = fpext float %165 to double
  %167 = fcmp une double %166, 0.000000e+00
  br i1 %167, label %168, label %169

168:                                              ; preds = %159, %147
  store i32 1, i32* %14, align 4
  br label %173

169:                                              ; preds = %159, %156
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %12, align 4
  br label %85, !llvm.loop !46

173:                                              ; preds = %168, %116, %85
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  br label %794

177:                                              ; preds = %173
  br label %178

178:                                              ; preds = %177, %78
  %179 = load %struct.pattern*, %struct.pattern** %8, align 8
  %180 = getelementptr inbounds %struct.pattern, %struct.pattern* %179, i32 0, i32 12
  %181 = load i32, i32* %180, align 8
  %182 = and i32 %181, 534080
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %435

184:                                              ; preds = %178
  %185 = load %struct.pattern*, %struct.pattern** %8, align 8
  %186 = getelementptr inbounds %struct.pattern, %struct.pattern* %185, i32 0, i32 12
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, 16
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %435, label %190

190:                                              ; preds = %184
  store i32 0, i32* %12, align 4
  br label %191

191:                                              ; preds = %431, %190
  %192 = load i32, i32* %12, align 4
  %193 = load %struct.pattern*, %struct.pattern** %8, align 8
  %194 = getelementptr inbounds %struct.pattern, %struct.pattern* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %192, %195
  br i1 %196, label %197, label %434

197:                                              ; preds = %191
  %198 = load %struct.pattern*, %struct.pattern** %8, align 8
  %199 = getelementptr inbounds %struct.pattern, %struct.pattern* %198, i32 0, i32 0
  %200 = load %struct.patval*, %struct.patval** %199, align 8
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.patval, %struct.patval* %200, i64 %202
  %204 = getelementptr inbounds %struct.patval, %struct.patval* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %213

207:                                              ; preds = %197
  %208 = load %struct.pattern*, %struct.pattern** %8, align 8
  %209 = getelementptr inbounds %struct.pattern, %struct.pattern* %208, i32 0, i32 12
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, 533056
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %229, label %213

213:                                              ; preds = %207, %197
  %214 = load %struct.pattern*, %struct.pattern** %8, align 8
  %215 = getelementptr inbounds %struct.pattern, %struct.pattern* %214, i32 0, i32 0
  %216 = load %struct.patval*, %struct.patval** %215, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.patval, %struct.patval* %216, i64 %218
  %220 = getelementptr inbounds %struct.patval, %struct.patval* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %430

223:                                              ; preds = %213
  %224 = load %struct.pattern*, %struct.pattern** %8, align 8
  %225 = getelementptr inbounds %struct.pattern, %struct.pattern* %224, i32 0, i32 12
  %226 = load i32, i32* %225, align 8
  %227 = and i32 %226, 525824
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %430

229:                                              ; preds = %223, %207
  %230 = load %struct.pattern*, %struct.pattern** %8, align 8
  %231 = getelementptr inbounds %struct.pattern, %struct.pattern* %230, i32 0, i32 0
  %232 = load %struct.patval*, %struct.patval** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.patval, %struct.patval* %232, i64 %234
  %236 = getelementptr inbounds %struct.patval, %struct.patval* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %238
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [8 x i32], [8 x i32]* %239, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %243, %244
  store i32 %245, i32* %17, align 4
  %246 = load %struct.pattern*, %struct.pattern** %8, align 8
  %247 = getelementptr inbounds %struct.pattern, %struct.pattern* %246, i32 0, i32 12
  %248 = load i32, i32* %247, align 8
  %249 = and i32 %248, 8192
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %277

251:                                              ; preds = %229
  %252 = load i32, i32* %7, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %263

254:                                              ; preds = %251
  %255 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %256 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %255, i32 0, i32 3
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [400 x float], [400 x float]* %256, i64 0, i64 %258
  %260 = load float, float* %259, align 4
  %261 = fpext float %260 to double
  %262 = fcmp oeq double %261, 0.000000e+00
  br i1 %262, label %275, label %263

263:                                              ; preds = %254, %251
  %264 = load i32, i32* %7, align 4
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %266, label %276

266:                                              ; preds = %263
  %267 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %268 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %267, i32 0, i32 4
  %269 = load i32, i32* %17, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [400 x float], [400 x float]* %268, i64 0, i64 %270
  %272 = load float, float* %271, align 4
  %273 = fpext float %272 to double
  %274 = fcmp oeq double %273, 0.000000e+00
  br i1 %274, label %275, label %276

275:                                              ; preds = %266, %254
  br label %794

276:                                              ; preds = %266, %263
  br label %301

277:                                              ; preds = %229
  %278 = load %struct.pattern*, %struct.pattern** %8, align 8
  %279 = getelementptr inbounds %struct.pattern, %struct.pattern* %278, i32 0, i32 12
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, 524864
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %300, label %283

283:                                              ; preds = %277
  %284 = load i32, i32* @stackp, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %283
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %288
  %290 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %289, i32 0, i32 16
  %291 = getelementptr inbounds [10 x i32], [10 x i32]* %290, i64 0, i64 0
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %298, label %294

294:                                              ; preds = %286, %283
  %295 = load i32, i32* %17, align 4
  %296 = call i32 @attack(i32 %295, i32* null)
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %294, %286
  br label %794

299:                                              ; preds = %294
  br label %300

300:                                              ; preds = %299, %277
  br label %301

301:                                              ; preds = %300, %276
  %302 = load %struct.pattern*, %struct.pattern** %8, align 8
  %303 = getelementptr inbounds %struct.pattern, %struct.pattern* %302, i32 0, i32 12
  %304 = load i32, i32* %303, align 8
  %305 = and i32 %304, 524800
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %343

307:                                              ; preds = %301
  %308 = load %struct.pattern*, %struct.pattern** %8, align 8
  %309 = getelementptr inbounds %struct.pattern, %struct.pattern* %308, i32 0, i32 0
  %310 = load %struct.patval*, %struct.patval** %309, align 8
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.patval, %struct.patval* %310, i64 %312
  %314 = getelementptr inbounds %struct.patval, %struct.patval* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 2
  br i1 %316, label %317, label %343

317:                                              ; preds = %307
  %318 = load i32, i32* %7, align 4
  %319 = icmp eq i32 %318, 1
  br i1 %319, label %320, label %329

320:                                              ; preds = %317
  %321 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %322 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %321, i32 0, i32 3
  %323 = load i32, i32* %17, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [400 x float], [400 x float]* %322, i64 0, i64 %324
  %326 = load float, float* %325, align 4
  %327 = fpext float %326 to double
  %328 = fcmp oeq double %327, 0.000000e+00
  br i1 %328, label %341, label %329

329:                                              ; preds = %320, %317
  %330 = load i32, i32* %7, align 4
  %331 = icmp eq i32 %330, 2
  br i1 %331, label %332, label %342

332:                                              ; preds = %329
  %333 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %334 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %333, i32 0, i32 4
  %335 = load i32, i32* %17, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [400 x float], [400 x float]* %334, i64 0, i64 %336
  %338 = load float, float* %337, align 4
  %339 = fpext float %338 to double
  %340 = fcmp oeq double %339, 0.000000e+00
  br i1 %340, label %341, label %342

341:                                              ; preds = %332, %320
  br label %794

342:                                              ; preds = %332, %329
  br label %343

343:                                              ; preds = %342, %307, %301
  %344 = load %struct.pattern*, %struct.pattern** %8, align 8
  %345 = getelementptr inbounds %struct.pattern, %struct.pattern* %344, i32 0, i32 12
  %346 = load i32, i32* %345, align 8
  %347 = and i32 %346, 525312
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %385

349:                                              ; preds = %343
  %350 = load %struct.pattern*, %struct.pattern** %8, align 8
  %351 = getelementptr inbounds %struct.pattern, %struct.pattern* %350, i32 0, i32 0
  %352 = load %struct.patval*, %struct.patval** %351, align 8
  %353 = load i32, i32* %12, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.patval, %struct.patval* %352, i64 %354
  %356 = getelementptr inbounds %struct.patval, %struct.patval* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = icmp eq i32 %357, 1
  br i1 %358, label %359, label %385

359:                                              ; preds = %349
  %360 = load i32, i32* %7, align 4
  %361 = icmp eq i32 %360, 2
  br i1 %361, label %362, label %371

362:                                              ; preds = %359
  %363 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %364 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %363, i32 0, i32 3
  %365 = load i32, i32* %17, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [400 x float], [400 x float]* %364, i64 0, i64 %366
  %368 = load float, float* %367, align 4
  %369 = fpext float %368 to double
  %370 = fcmp oeq double %369, 0.000000e+00
  br i1 %370, label %383, label %371

371:                                              ; preds = %362, %359
  %372 = load i32, i32* %7, align 4
  %373 = icmp eq i32 %372, 1
  br i1 %373, label %374, label %384

374:                                              ; preds = %371
  %375 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %376 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %375, i32 0, i32 4
  %377 = load i32, i32* %17, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [400 x float], [400 x float]* %376, i64 0, i64 %378
  %380 = load float, float* %379, align 4
  %381 = fpext float %380 to double
  %382 = fcmp oeq double %381, 0.000000e+00
  br i1 %382, label %383, label %384

383:                                              ; preds = %374, %362
  br label %794

384:                                              ; preds = %374, %371
  br label %385

385:                                              ; preds = %384, %349, %343
  %386 = load %struct.pattern*, %struct.pattern** %8, align 8
  %387 = getelementptr inbounds %struct.pattern, %struct.pattern* %386, i32 0, i32 12
  %388 = load i32, i32* %387, align 8
  %389 = and i32 %388, 64
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %429

391:                                              ; preds = %385
  %392 = load %struct.pattern*, %struct.pattern** %8, align 8
  %393 = getelementptr inbounds %struct.pattern, %struct.pattern* %392, i32 0, i32 0
  %394 = load %struct.patval*, %struct.patval** %393, align 8
  %395 = load i32, i32* %12, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.patval, %struct.patval* %394, i64 %396
  %398 = getelementptr inbounds %struct.patval, %struct.patval* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = icmp eq i32 %399, 2
  br i1 %400, label %401, label %402

401:                                              ; preds = %391
  br label %403

402:                                              ; preds = %391
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 661, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i32 -1, i32 -1)
  br label %403

403:                                              ; preds = %402, %401
  %404 = load i32, i32* %7, align 4
  %405 = icmp eq i32 %404, 1
  br i1 %405, label %406, label %415

406:                                              ; preds = %403
  %407 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %408 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %407, i32 0, i32 3
  %409 = load i32, i32* %17, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [400 x float], [400 x float]* %408, i64 0, i64 %410
  %412 = load float, float* %411, align 4
  %413 = fpext float %412 to double
  %414 = fcmp oeq double %413, 0.000000e+00
  br i1 %414, label %427, label %415

415:                                              ; preds = %406, %403
  %416 = load i32, i32* %7, align 4
  %417 = icmp eq i32 %416, 2
  br i1 %417, label %418, label %428

418:                                              ; preds = %415
  %419 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %420 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %419, i32 0, i32 4
  %421 = load i32, i32* %17, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [400 x float], [400 x float]* %420, i64 0, i64 %422
  %424 = load float, float* %423, align 4
  %425 = fpext float %424 to double
  %426 = fcmp oeq double %425, 0.000000e+00
  br i1 %426, label %427, label %428

427:                                              ; preds = %418, %406
  br label %794

428:                                              ; preds = %418, %415
  br label %429

429:                                              ; preds = %428, %385
  br label %430

430:                                              ; preds = %429, %223, %213
  br label %431

431:                                              ; preds = %430
  %432 = load i32, i32* %12, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %12, align 4
  br label %191, !llvm.loop !47

434:                                              ; preds = %191
  br label %435

435:                                              ; preds = %434, %184, %178
  %436 = load %struct.pattern*, %struct.pattern** %8, align 8
  %437 = getelementptr inbounds %struct.pattern, %struct.pattern* %436, i32 0, i32 20
  %438 = load i32, i32* %437, align 8
  %439 = and i32 %438, 1
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %452

441:                                              ; preds = %435
  %442 = load %struct.pattern*, %struct.pattern** %8, align 8
  %443 = getelementptr inbounds %struct.pattern, %struct.pattern* %442, i32 0, i32 22
  %444 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %443, align 8
  %445 = load i32, i32* %9, align 4
  %446 = load i32, i32* %11, align 4
  %447 = load i32, i32* %7, align 4
  %448 = call i32 %444(i32 %445, i32 %446, i32 %447, i32 0)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %451, label %450

450:                                              ; preds = %441
  br label %794

451:                                              ; preds = %441
  br label %452

452:                                              ; preds = %451, %435
  %453 = load %struct.pattern*, %struct.pattern** %8, align 8
  %454 = getelementptr inbounds %struct.pattern, %struct.pattern* %453, i32 0, i32 21
  %455 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %454, align 8
  %456 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %455, null
  br i1 %456, label %457, label %481

457:                                              ; preds = %452
  %458 = load %struct.pattern*, %struct.pattern** %8, align 8
  %459 = getelementptr inbounds %struct.pattern, %struct.pattern* %458, i32 0, i32 21
  %460 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %459, align 8
  %461 = load %struct.pattern*, %struct.pattern** %8, align 8
  %462 = load i32, i32* %9, align 4
  %463 = load i32, i32* %11, align 4
  %464 = load i32, i32* %7, align 4
  %465 = call i32 %460(%struct.pattern* %461, i32 %462, i32 %463, i32 %464)
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %480, label %467

467:                                              ; preds = %457
  %468 = load i32, i32* @debug, align 4
  %469 = and i32 %468, 1
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %467
  br label %479

472:                                              ; preds = %467
  %473 = load %struct.pattern*, %struct.pattern** %8, align 8
  %474 = getelementptr inbounds %struct.pattern, %struct.pattern* %473, i32 0, i32 3
  %475 = load i8*, i8** %474, align 8
  %476 = load i32, i32* %9, align 4
  %477 = load i32, i32* %11, align 4
  %478 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.23, i64 0, i64 0), i8* %475, i32 %476, i32 %477)
  br label %479

479:                                              ; preds = %472, %471
  br label %794

480:                                              ; preds = %457
  br label %481

481:                                              ; preds = %480, %452
  %482 = load i32, i32* @debug, align 4
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %486, label %485

485:                                              ; preds = %481
  br label %493

486:                                              ; preds = %481
  %487 = load %struct.pattern*, %struct.pattern** %8, align 8
  %488 = getelementptr inbounds %struct.pattern, %struct.pattern* %487, i32 0, i32 3
  %489 = load i8*, i8** %488, align 8
  %490 = load i32, i32* %9, align 4
  %491 = load i32, i32* %6, align 4
  %492 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.24, i64 0, i64 0), i8* %489, i32 %490, i32 %491)
  br label %493

493:                                              ; preds = %486, %485
  %494 = load %struct.pattern*, %struct.pattern** %8, align 8
  %495 = getelementptr inbounds %struct.pattern, %struct.pattern* %494, i32 0, i32 12
  %496 = load i32, i32* %495, align 8
  %497 = and i32 %496, 524288
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %499, label %513

499:                                              ; preds = %493
  %500 = load %struct.pattern*, %struct.pattern** %8, align 8
  %501 = getelementptr inbounds %struct.pattern, %struct.pattern* %500, i32 0, i32 20
  %502 = load i32, i32* %501, align 8
  %503 = and i32 %502, 2
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %513

505:                                              ; preds = %499
  %506 = load %struct.pattern*, %struct.pattern** %8, align 8
  %507 = getelementptr inbounds %struct.pattern, %struct.pattern* %506, i32 0, i32 22
  %508 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %507, align 8
  %509 = load i32, i32* %9, align 4
  %510 = load i32, i32* %11, align 4
  %511 = load i32, i32* %7, align 4
  %512 = call i32 %508(i32 %509, i32 %510, i32 %511, i32 1)
  br label %513

513:                                              ; preds = %505, %499, %493
  %514 = load %struct.pattern*, %struct.pattern** %8, align 8
  %515 = getelementptr inbounds %struct.pattern, %struct.pattern* %514, i32 0, i32 12
  %516 = load i32, i32* %515, align 8
  %517 = and i32 %516, 65536
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %580

519:                                              ; preds = %513
  store i32 0, i32* %18, align 4
  %520 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %521 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %520, i32 0, i32 20
  %522 = load i32, i32* %521, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %530, label %524

524:                                              ; preds = %519
  %525 = load %struct.pattern*, %struct.pattern** %8, align 8
  %526 = getelementptr inbounds %struct.pattern, %struct.pattern* %525, i32 0, i32 12
  %527 = load i32, i32* %526, align 8
  %528 = and i32 %527, 16
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %524, %519
  store i32 3, i32* %18, align 4
  br label %542

531:                                              ; preds = %524
  %532 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %533 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %532, i32 0, i32 20
  %534 = load i32, i32* %533, align 4
  %535 = load i32, i32* %7, align 4
  %536 = icmp ne i32 %534, %535
  br i1 %536, label %537, label %541

537:                                              ; preds = %531
  %538 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %539 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %538, i32 0, i32 20
  %540 = load i32, i32* %539, align 4
  store i32 %540, i32* %18, align 4
  br label %541

541:                                              ; preds = %537, %531
  br label %542

542:                                              ; preds = %541, %530
  %543 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %544 = icmp eq %struct.influence_data* %543, @escape_influence
  br i1 %544, label %545, label %559

545:                                              ; preds = %542
  %546 = load %struct.pattern*, %struct.pattern** %8, align 8
  %547 = getelementptr inbounds %struct.pattern, %struct.pattern* %546, i32 0, i32 12
  %548 = load i32, i32* %547, align 8
  %549 = and i32 %548, 4096
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %559

551:                                              ; preds = %545
  %552 = load i32, i32* %11, align 4
  %553 = load i32, i32* %18, align 4
  %554 = load %struct.pattern*, %struct.pattern** %8, align 8
  %555 = getelementptr inbounds %struct.pattern, %struct.pattern* %554, i32 0, i32 13
  %556 = load float, float* %555, align 4
  %557 = fmul float 2.000000e+01, %556
  %558 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  call void @add_influence_source(i32 %552, i32 %553, float %557, float 1.500000e+00, %struct.influence_data* %558)
  br label %566

559:                                              ; preds = %545, %542
  %560 = load i32, i32* %11, align 4
  %561 = load i32, i32* %18, align 4
  %562 = load %struct.pattern*, %struct.pattern** %8, align 8
  %563 = getelementptr inbounds %struct.pattern, %struct.pattern* %562, i32 0, i32 13
  %564 = load float, float* %563, align 4
  %565 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  call void @add_influence_source(i32 %560, i32 %561, float %564, float 1.500000e+00, %struct.influence_data* %565)
  br label %566

566:                                              ; preds = %559, %551
  %567 = load i32, i32* @debug, align 4
  %568 = and i32 %567, 1
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %571, label %570

570:                                              ; preds = %566
  br label %579

571:                                              ; preds = %566
  %572 = load i32, i32* %11, align 4
  %573 = load %struct.pattern*, %struct.pattern** %8, align 8
  %574 = getelementptr inbounds %struct.pattern, %struct.pattern* %573, i32 0, i32 13
  %575 = load float, float* %574, align 4
  %576 = fpext float %575 to double
  %577 = load i32, i32* %18, align 4
  %578 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.25, i64 0, i64 0), i32 %572, double %576, i32 %577)
  br label %579

579:                                              ; preds = %571, %570
  br label %794

580:                                              ; preds = %513
  %581 = load %struct.pattern*, %struct.pattern** %8, align 8
  %582 = getelementptr inbounds %struct.pattern, %struct.pattern* %581, i32 0, i32 12
  %583 = load i32, i32* %582, align 8
  %584 = and i32 %583, 8192
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %606

586:                                              ; preds = %580
  %587 = load i32, i32* %11, align 4
  %588 = load i32, i32* %7, align 4
  %589 = load %struct.pattern*, %struct.pattern** %8, align 8
  %590 = getelementptr inbounds %struct.pattern, %struct.pattern* %589, i32 0, i32 13
  %591 = load float, float* %590, align 4
  %592 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  call void @add_influence_source(i32 %587, i32 %588, float %591, float 3.000000e+00, %struct.influence_data* %592)
  %593 = load i32, i32* @debug, align 4
  %594 = and i32 %593, 1
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %597, label %596

596:                                              ; preds = %586
  br label %605

597:                                              ; preds = %586
  %598 = load i32, i32* %7, align 4
  %599 = load i32, i32* %11, align 4
  %600 = load %struct.pattern*, %struct.pattern** %8, align 8
  %601 = getelementptr inbounds %struct.pattern, %struct.pattern* %600, i32 0, i32 13
  %602 = load float, float* %601, align 4
  %603 = fpext float %602 to double
  %604 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i64 0, i64 0), i32 %598, i32 %599, double %603)
  br label %605

605:                                              ; preds = %597, %596
  br label %794

606:                                              ; preds = %580
  store i32 0, i32* %12, align 4
  br label %607

607:                                              ; preds = %791, %606
  %608 = load i32, i32* %12, align 4
  %609 = load %struct.pattern*, %struct.pattern** %8, align 8
  %610 = getelementptr inbounds %struct.pattern, %struct.pattern* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 8
  %612 = icmp slt i32 %608, %611
  br i1 %612, label %613, label %794

613:                                              ; preds = %607
  %614 = load %struct.pattern*, %struct.pattern** %8, align 8
  %615 = getelementptr inbounds %struct.pattern, %struct.pattern* %614, i32 0, i32 12
  %616 = load i32, i32* %615, align 8
  %617 = and i32 %616, 1088
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %644

619:                                              ; preds = %613
  %620 = load %struct.pattern*, %struct.pattern** %8, align 8
  %621 = getelementptr inbounds %struct.pattern, %struct.pattern* %620, i32 0, i32 0
  %622 = load %struct.patval*, %struct.patval** %621, align 8
  %623 = load i32, i32* %12, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds %struct.patval, %struct.patval* %622, i64 %624
  %626 = getelementptr inbounds %struct.patval, %struct.patval* %625, i32 0, i32 1
  %627 = load i32, i32* %626, align 4
  %628 = icmp eq i32 %627, 5
  br i1 %628, label %660, label %629

629:                                              ; preds = %619
  %630 = load %struct.pattern*, %struct.pattern** %8, align 8
  %631 = getelementptr inbounds %struct.pattern, %struct.pattern* %630, i32 0, i32 0
  %632 = load %struct.patval*, %struct.patval** %631, align 8
  %633 = load i32, i32* %12, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds %struct.patval, %struct.patval* %632, i64 %634
  %636 = getelementptr inbounds %struct.patval, %struct.patval* %635, i32 0, i32 1
  %637 = load i32, i32* %636, align 4
  %638 = icmp eq i32 %637, 7
  br i1 %638, label %639, label %644

639:                                              ; preds = %629
  %640 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %641 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %640, i32 0, i32 16
  %642 = load i32, i32* %641, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %660, label %644

644:                                              ; preds = %639, %629, %613
  %645 = load %struct.pattern*, %struct.pattern** %8, align 8
  %646 = getelementptr inbounds %struct.pattern, %struct.pattern* %645, i32 0, i32 12
  %647 = load i32, i32* %646, align 8
  %648 = and i32 %647, 512
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %790

650:                                              ; preds = %644
  %651 = load %struct.pattern*, %struct.pattern** %8, align 8
  %652 = getelementptr inbounds %struct.pattern, %struct.pattern* %651, i32 0, i32 0
  %653 = load %struct.patval*, %struct.patval** %652, align 8
  %654 = load i32, i32* %12, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds %struct.patval, %struct.patval* %653, i64 %655
  %657 = getelementptr inbounds %struct.patval, %struct.patval* %656, i32 0, i32 1
  %658 = load i32, i32* %657, align 4
  %659 = icmp eq i32 %658, 7
  br i1 %659, label %660, label %790

660:                                              ; preds = %650, %639, %619
  %661 = load %struct.pattern*, %struct.pattern** %8, align 8
  %662 = getelementptr inbounds %struct.pattern, %struct.pattern* %661, i32 0, i32 0
  %663 = load %struct.patval*, %struct.patval** %662, align 8
  %664 = load i32, i32* %12, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds %struct.patval, %struct.patval* %663, i64 %665
  %667 = getelementptr inbounds %struct.patval, %struct.patval* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 4
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %669
  %671 = load i32, i32* %9, align 4
  %672 = sext i32 %671 to i64
  %673 = getelementptr inbounds [8 x i32], [8 x i32]* %670, i64 0, i64 %672
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* %6, align 4
  %676 = add nsw i32 %674, %675
  store i32 %676, i32* %19, align 4
  %677 = load %struct.pattern*, %struct.pattern** %8, align 8
  %678 = getelementptr inbounds %struct.pattern, %struct.pattern* %677, i32 0, i32 12
  %679 = load i32, i32* %678, align 8
  %680 = and i32 %679, 1088
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %755

682:                                              ; preds = %660
  %683 = load %struct.pattern*, %struct.pattern** %8, align 8
  %684 = getelementptr inbounds %struct.pattern, %struct.pattern* %683, i32 0, i32 12
  %685 = load i32, i32* %684, align 8
  %686 = and i32 %685, 64
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %690

688:                                              ; preds = %682
  %689 = load i32, i32* %7, align 4
  store i32 %689, i32* %20, align 4
  br label %693

690:                                              ; preds = %682
  %691 = load i32, i32* %7, align 4
  %692 = sub nsw i32 3, %691
  store i32 %692, i32* %20, align 4
  br label %693

693:                                              ; preds = %690, %688
  %694 = load i32, i32* @debug, align 4
  %695 = and i32 %694, 1
  %696 = icmp ne i32 %695, 0
  br i1 %696, label %698, label %697

697:                                              ; preds = %693
  br label %704

698:                                              ; preds = %693
  %699 = load i32, i32* %20, align 4
  %700 = sub nsw i32 3, %699
  %701 = call i8* @color_to_string(i32 %700)
  %702 = load i32, i32* %19, align 4
  %703 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0), i8* %701, i32 %702)
  br label %704

704:                                              ; preds = %698, %697
  %705 = load %struct.pattern*, %struct.pattern** %8, align 8
  %706 = getelementptr inbounds %struct.pattern, %struct.pattern* %705, i32 0, i32 0
  %707 = load %struct.patval*, %struct.patval** %706, align 8
  %708 = load i32, i32* %12, align 4
  %709 = sext i32 %708 to i64
  %710 = getelementptr inbounds %struct.patval, %struct.patval* %707, i64 %709
  %711 = getelementptr inbounds %struct.patval, %struct.patval* %710, i32 0, i32 1
  %712 = load i32, i32* %711, align 4
  %713 = icmp eq i32 %712, 5
  br i1 %713, label %714, label %730

714:                                              ; preds = %704
  %715 = load i32, i32* %20, align 4
  %716 = icmp eq i32 %715, 1
  br i1 %716, label %717, label %723

717:                                              ; preds = %714
  %718 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %719 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %718, i32 0, i32 8
  %720 = load i32, i32* %19, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [400 x float], [400 x float]* %719, i64 0, i64 %721
  store float 0.000000e+00, float* %722, align 4
  br label %729

723:                                              ; preds = %714
  %724 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %725 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %724, i32 0, i32 7
  %726 = load i32, i32* %19, align 4
  %727 = sext i32 %726 to i64
  %728 = getelementptr inbounds [400 x float], [400 x float]* %725, i64 0, i64 %727
  store float 0.000000e+00, float* %728, align 4
  br label %729

729:                                              ; preds = %723, %717
  br label %754

730:                                              ; preds = %704
  %731 = load i32, i32* %20, align 4
  %732 = icmp eq i32 %731, 1
  br i1 %732, label %733, label %743

733:                                              ; preds = %730
  %734 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %735 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %734, i32 0, i32 8
  %736 = load i32, i32* %19, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [400 x float], [400 x float]* %735, i64 0, i64 %737
  %739 = load float, float* %738, align 4
  %740 = fpext float %739 to double
  %741 = fmul double %740, 0x3FE6666666666666
  %742 = fptrunc double %741 to float
  store float %742, float* %738, align 4
  br label %753

743:                                              ; preds = %730
  %744 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %745 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %744, i32 0, i32 7
  %746 = load i32, i32* %19, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [400 x float], [400 x float]* %745, i64 0, i64 %747
  %749 = load float, float* %748, align 4
  %750 = fpext float %749 to double
  %751 = fmul double %750, 0x3FE6666666666666
  %752 = fptrunc double %751 to float
  store float %752, float* %748, align 4
  br label %753

753:                                              ; preds = %743, %733
  br label %754

754:                                              ; preds = %753, %729
  br label %755

755:                                              ; preds = %754, %660
  %756 = load %struct.pattern*, %struct.pattern** %8, align 8
  %757 = getelementptr inbounds %struct.pattern, %struct.pattern* %756, i32 0, i32 12
  %758 = load i32, i32* %757, align 8
  %759 = and i32 %758, 512
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %789

761:                                              ; preds = %755
  %762 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  %763 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %762, i32 0, i32 16
  %764 = load i32, i32* %763, align 4
  %765 = icmp ne i32 %764, 0
  br i1 %765, label %766, label %773

766:                                              ; preds = %761
  %767 = load i32, i32* %6, align 4
  %768 = load i32, i32* %19, align 4
  %769 = load %struct.pattern*, %struct.pattern** %8, align 8
  %770 = getelementptr inbounds %struct.pattern, %struct.pattern* %769, i32 0, i32 13
  %771 = load float, float* %770, align 4
  %772 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  call void @enter_intrusion_source(i32 %767, i32 %768, float %771, float 0x4003333340000000, %struct.influence_data* %772)
  br label %780

773:                                              ; preds = %761
  %774 = load i32, i32* %19, align 4
  %775 = load i32, i32* %7, align 4
  %776 = load %struct.pattern*, %struct.pattern** %8, align 8
  %777 = getelementptr inbounds %struct.pattern, %struct.pattern* %776, i32 0, i32 13
  %778 = load float, float* %777, align 4
  %779 = load %struct.influence_data*, %struct.influence_data** %13, align 8
  call void @add_influence_source(i32 %774, i32 %775, float %778, float 3.000000e+00, %struct.influence_data* %779)
  br label %780

780:                                              ; preds = %773, %766
  %781 = load i32, i32* @debug, align 4
  %782 = and i32 %781, 1
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %785, label %784

784:                                              ; preds = %780
  br label %788

785:                                              ; preds = %780
  %786 = load i32, i32* %19, align 4
  %787 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.28, i64 0, i64 0), i32 %786)
  br label %788

788:                                              ; preds = %785, %784
  br label %789

789:                                              ; preds = %788, %755
  br label %790

790:                                              ; preds = %789, %650, %644
  br label %791

791:                                              ; preds = %790
  %792 = load i32, i32* %12, align 4
  %793 = add nsw i32 %792, 1
  store i32 %793, i32* %12, align 4
  br label %607, !llvm.loop !48

794:                                              ; preds = %55, %67, %77, %176, %275, %298, %341, %383, %427, %450, %479, %579, %605, %607
  ret void
}

declare dso_local i32 @attack(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_influence_source(i32 %0, i32 %1, float %2, float %3, %struct.influence_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.influence_data*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store %struct.influence_data* %4, %struct.influence_data** %10, align 8
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %36

14:                                               ; preds = %5
  %15 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %16 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %15, i32 0, i32 3
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 %18
  %20 = load float, float* %19, align 4
  %21 = load float, float* %8, align 4
  %22 = fcmp olt float %20, %21
  br i1 %22, label %23, label %36

23:                                               ; preds = %14
  %24 = load float, float* %8, align 4
  %25 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %26 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %25, i32 0, i32 3
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [400 x float], [400 x float]* %26, i64 0, i64 %28
  store float %24, float* %29, align 4
  %30 = load float, float* %9, align 4
  %31 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %32 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %31, i32 0, i32 5
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x float], [400 x float]* %32, i64 0, i64 %34
  store float %30, float* %35, align 4
  br label %36

36:                                               ; preds = %23, %14, %5
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %42 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %41, i32 0, i32 4
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x float], [400 x float]* %42, i64 0, i64 %44
  %46 = load float, float* %45, align 4
  %47 = load float, float* %8, align 4
  %48 = fcmp olt float %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %40
  %50 = load float, float* %8, align 4
  %51 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %52 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %51, i32 0, i32 4
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [400 x float], [400 x float]* %52, i64 0, i64 %54
  store float %50, float* %55, align 4
  %56 = load float, float* %9, align 4
  %57 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %58 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %57, i32 0, i32 6
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [400 x float], [400 x float]* %58, i64 0, i64 %60
  store float %56, float* %61, align 4
  br label %62

62:                                               ; preds = %49, %40, %36
  ret void
}

declare dso_local i8* @color_to_string(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enter_intrusion_source(i32 %0, i32 %1, float %2, float %3, %struct.influence_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.influence_data*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store %struct.influence_data* %4, %struct.influence_data** %10, align 8
  %11 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %12 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %11, i32 0, i32 22
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 722
  br i1 %14, label %15, label %23

15:                                               ; preds = %5
  %16 = load i32, i32* @debug, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %22

20:                                               ; preds = %15
  %21 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.29, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %19
  br label %64

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %26 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %25, i32 0, i32 23
  %27 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %28 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %27, i32 0, i32 22
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %26, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %31, i32 0, i32 0
  store i32 %24, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %35 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %34, i32 0, i32 23
  %36 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %37 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %36, i32 0, i32 22
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %35, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %40, i32 0, i32 1
  store i32 %33, i32* %41, align 4
  %42 = load float, float* %8, align 4
  %43 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %44 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %43, i32 0, i32 23
  %45 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %46 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %45, i32 0, i32 22
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %44, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %49, i32 0, i32 2
  store float %42, float* %50, align 4
  %51 = load float, float* %9, align 4
  %52 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %53 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %52, i32 0, i32 23
  %54 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %55 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %54, i32 0, i32 22
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [722 x %struct.intrusion_data], [722 x %struct.intrusion_data]* %53, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %58, i32 0, i32 3
  store float %51, float* %59, align 4
  %60 = load %struct.influence_data*, %struct.influence_data** %10, align 8
  %61 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %60, i32 0, i32 22
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %23, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @segment_region(%struct.influence_data* %0, i32 (%struct.influence_data*, i32)* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.influence_data*, align 8
  %6 = alloca i32 (%struct.influence_data*, i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.influence_data* %0, %struct.influence_data** %5, align 8
  store i32 (%struct.influence_data*, i32)* %1, i32 (%struct.influence_data*, i32)** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([400 x i8], [400 x i8]* @segment_region.marked, i64 0, i64 0), i8 0, i64 400, i1 false)
  store i32 21, i32* %9, align 4
  br label %18

18:                                               ; preds = %223, %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 400
  br i1 %20, label %21, label %226

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %28, label %222

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x i8], [400 x i8]* @segment_region.marked, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %221, label %34

34:                                               ; preds = %28
  %35 = load i32 (%struct.influence_data*, i32)*, i32 (%struct.influence_data*, i32)** %6, align 8
  %36 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 %35(%struct.influence_data* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %221

40:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %41 = load i32 (%struct.influence_data*, i32)*, i32 (%struct.influence_data*, i32)** %6, align 8
  %42 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 %41(%struct.influence_data* %42, i32 %43)
  store i32 %44, i32* %14, align 4
  %45 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %46 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %45, i32 0, i32 15
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x i8], [400 x i8]* @segment_region.marked, i64 0, i64 %50
  store i8 1, i8* %51, align 1
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %54 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %53, i32 0, i32 21
  %55 = getelementptr inbounds [361 x i32], [361 x i32]* %54, i64 0, i64 0
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %180, %40
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %181

60:                                               ; preds = %56
  %61 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %62 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %61, i32 0, i32 21
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [361 x i32], [361 x i32]* %62, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %12, align 4
  %69 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %70 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %69, i32 0, i32 0
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x i8], [400 x i8]* %70, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = icmp ne i8 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %60
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %119

84:                                               ; preds = %76, %60
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  %87 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %88 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %87, i32 0, i32 16
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %118

91:                                               ; preds = %84
  %92 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %93 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %92, i32 0, i32 17
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [400 x float], [400 x float]* %93, i64 0, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fcmp olt float %97, 0.000000e+00
  br i1 %98, label %99, label %107

99:                                               ; preds = %91
  %100 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %101 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %100, i32 0, i32 17
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [400 x float], [400 x float]* %101, i64 0, i64 %103
  %105 = load float, float* %104, align 4
  %106 = fneg float %105
  br label %114

107:                                              ; preds = %91
  %108 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %109 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %108, i32 0, i32 17
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [400 x float], [400 x float]* %109, i64 0, i64 %111
  %113 = load float, float* %112, align 4
  br label %114

114:                                              ; preds = %107, %99
  %115 = phi float [ %106, %99 ], [ %113, %107 ]
  %116 = load float, float* %11, align 4
  %117 = fadd float %116, %115
  store float %117, float* %11, align 4
  br label %118

118:                                              ; preds = %114, %84
  br label %119

119:                                              ; preds = %118, %76
  %120 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %121 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %120, i32 0, i32 15
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 %122, i32* %126, align 4
  store i32 0, i32* %16, align 4
  br label %127

127:                                              ; preds = %177, %119
  %128 = load i32, i32* %16, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %180

130:                                              ; preds = %127
  %131 = load i32, i32* %16, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %17, align 4
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* %17, align 4
  %137 = add nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp ne i32 %141, 3
  br i1 %142, label %143, label %176

143:                                              ; preds = %130
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [400 x i8], [400 x i8]* @segment_region.marked, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = icmp ne i8 %149, 0
  br i1 %150, label %176, label %151

151:                                              ; preds = %143
  %152 = load i32 (%struct.influence_data*, i32)*, i32 (%struct.influence_data*, i32)** %6, align 8
  %153 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %154, %155
  %157 = call i32 %152(%struct.influence_data* %153, i32 %156)
  %158 = load i32, i32* %14, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %176

160:                                              ; preds = %151
  %161 = load i32, i32* %15, align 4
  %162 = load i32, i32* %17, align 4
  %163 = add nsw i32 %161, %162
  %164 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %165 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %164, i32 0, i32 21
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [361 x i32], [361 x i32]* %165, i64 0, i64 %167
  store i32 %163, i32* %168, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [400 x i8], [400 x i8]* @segment_region.marked, i64 0, i64 %174
  store i8 1, i8* %175, align 1
  br label %176

176:                                              ; preds = %160, %151, %143, %130
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %127, !llvm.loop !49

180:                                              ; preds = %127
  br label %56, !llvm.loop !50

181:                                              ; preds = %56
  %182 = load i32, i32* %14, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load i32, i32* %7, align 4
  %186 = or i32 0, %185
  %187 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %188 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %187, i32 0, i32 12
  %189 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %190 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %189, i32 0, i32 15
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [1084 x i32], [1084 x i32]* %188, i64 0, i64 %192
  store i32 %186, i32* %193, align 4
  br label %204

194:                                              ; preds = %181
  %195 = load i32, i32* %7, align 4
  %196 = or i32 1, %195
  %197 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %198 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %197, i32 0, i32 12
  %199 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %200 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %199, i32 0, i32 15
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [1084 x i32], [1084 x i32]* %198, i64 0, i64 %202
  store i32 %196, i32* %203, align 4
  br label %204

204:                                              ; preds = %194, %184
  %205 = load i32, i32* %10, align 4
  %206 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %207 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %206, i32 0, i32 13
  %208 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %209 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %208, i32 0, i32 15
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [1084 x i32], [1084 x i32]* %207, i64 0, i64 %211
  store i32 %205, i32* %212, align 4
  %213 = load float, float* %11, align 4
  %214 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %215 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %214, i32 0, i32 14
  %216 = load %struct.influence_data*, %struct.influence_data** %5, align 8
  %217 = getelementptr inbounds %struct.influence_data, %struct.influence_data* %216, i32 0, i32 15
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [1084 x float], [1084 x float]* %215, i64 0, i64 %219
  store float %213, float* %220, align 4
  br label %221

221:                                              ; preds = %204, %34, %28
  br label %222

222:                                              ; preds = %221, %21
  br label %223

223:                                              ; preds = %222
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %9, align 4
  br label %18, !llvm.loop !51

226:                                              ; preds = %18
  ret void
}

declare dso_local void @gg_sort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_intrusions(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.intrusion_data*, align 8
  %7 = alloca %struct.intrusion_data*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.intrusion_data*
  store %struct.intrusion_data* %9, %struct.intrusion_data** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.intrusion_data*
  store %struct.intrusion_data* %11, %struct.intrusion_data** %7, align 8
  %12 = load %struct.intrusion_data*, %struct.intrusion_data** %6, align 8
  %13 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.intrusion_data*, %struct.intrusion_data** %7, align 8
  %16 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.intrusion_data*, %struct.intrusion_data** %6, align 8
  %22 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.intrusion_data*, %struct.intrusion_data** %7, align 8
  %25 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %2
  %29 = load %struct.intrusion_data*, %struct.intrusion_data** %6, align 8
  %30 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.intrusion_data*, %struct.intrusion_data** %7, align 8
  %33 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.intrusion_data*, %struct.intrusion_data** %6, align 8
  %39 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.intrusion_data*, %struct.intrusion_data** %7, align 8
  %42 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %3, align 4
  br label %55

45:                                               ; preds = %28
  %46 = load %struct.intrusion_data*, %struct.intrusion_data** %6, align 8
  %47 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %46, i32 0, i32 2
  %48 = load float, float* %47, align 4
  %49 = load %struct.intrusion_data*, %struct.intrusion_data** %7, align 8
  %50 = getelementptr inbounds %struct.intrusion_data, %struct.intrusion_data* %49, i32 0, i32 2
  %51 = load float, float* %50, align 4
  %52 = fcmp ogt float %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %55

54:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %37, %20
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local float @gg_interpolate(%struct.interpolation_data*, float) #1

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
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
