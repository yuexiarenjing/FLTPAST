; ModuleID = 'combination.c'
source_filename = "combination.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.aa_move = type { i32, [4 x i32] }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.influence_data = type opaque

@verbose = external dso_local global i32, align 4
@.str = private unnamed_addr constant [38 x i8] c"\0Alooking for combination attacks ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Combination attack for %C with size %d found at %1m\0A\00", align 1
@board = external dso_local global [421 x i8], align 16
@.str.2 = private unnamed_addr constant [18 x i8] c"- defense at %1m\0A\00", align 1
@aa_depth = external dso_local global i32, align 4
@forbidden = internal global [400 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [12 x i8] c"atari_atari\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%1m deleted defense point, illegal\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"%1m deleted defense point, unsafe\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%1m deleted defense point, didn't work\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"combination.c\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"trymove\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"find_double_threats-A\00", align 1
@sgf_dumptree = external dso_local global %struct.SGFTree_t*, align 8
@count_variations = external dso_local global i32, align 4
@aa_status = internal global [400 x i32] zeroinitializer, align 16
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@debug = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"compute_aa_status() for %C\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"aa_status: (ALIVE worms not listed)\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"UNKNOWN (shouldn't happen)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"CRITICAL\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"INSUBSTANTIAL\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"%1M: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"%odo_atari_atari: \00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%oforbidden moves: \00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%o%1m \00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"attack found\00", align 1
@stackp = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [17 x i8] c"do_atari_atari-A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"%oError condition found by atari_atari\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"do_atari_atari-B\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"%oThe worm %1m can be attacked at %1m after \00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"%oreturn value:%d (%1m)\0A\00", align 1
@board_size = external dso_local global i32, align 4
@.str.27 = private unnamed_addr constant [40 x i8] c"Considering attack of %1m. depth = %d.\0A\00", align 1
@depth = external dso_local global i32, align 4
@.str.28 = private unnamed_addr constant [14 x i8] c"Attack moves:\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"%o %1m(\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"%o%s%1m\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.33 = private unnamed_addr constant [4 x i8] c"%o)\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%o\0A\00", align 1
@current_minsize = internal global i32 0, align 4
@current_attacks = internal global %struct.aa_move* null, align 8
@conditional_attack_point = internal global [400 x i32] zeroinitializer, align 16
@aa_attackpat_db = external dso_local global %struct.pattern_db, align 8
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@.str.35 = private unnamed_addr constant [16 x i8] c"attack_callback\00", align 1
@.str.36 = private unnamed_addr constant [79 x i8] c"aa_attack pattern %s+%d (conditional) found threat on %1m at %1m with code %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [65 x i8] c"aa_attack pattern %s+%d found threat on %1m at %1m with code %d\0A\00", align 1
@aa_values = internal global [400 x i32] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [12 x i8] c"aa_defend-A\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"aa_defend-B\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"Defense moves for %1m:\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"%o %1m\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"queue_end < 19 * 19\00", align 1
@delta = external dso_local global [8 x i32], align 16
@initial_black_influence = external dso_local global %struct.influence_data, align 1
@initial_white_influence = external dso_local global %struct.influence_data, align 1
@.str.43 = private unnamed_addr constant [23 x i8] c"aa_value for %1m = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @combinations(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [400 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 3, %9
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %2, align 4
  call void @find_double_threats(i32 %11)
  %12 = load i32, i32* @verbose, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @verbose, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @verbose, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* @verbose, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @atari_atari(i32 %24, i32* %4, i8* null, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  call void @add_my_atari_atari_move(i32 %38, i32 %39)
  br label %40

40:                                               ; preds = %37, %23
  %41 = load i32, i32* %6, align 4
  %42 = getelementptr inbounds [400 x i8], [400 x i8]* %5, i64 0, i64 0
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @atari_atari(i32 %41, i32* %4, i8* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %87

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  store i32 21, i32* %8, align 4
  br label %56

56:                                               ; preds = %83, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 400
  br i1 %58, label %59, label %86

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 3
  br i1 %65, label %66, label %82

66:                                               ; preds = %59
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x i8], [400 x i8]* %5, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %7, align 4
  call void @add_your_atari_atari_move(i32 %74, i32 %75)
  %76 = load i32, i32* %3, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %8, align 4
  %80 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %66, %59
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %56, !llvm.loop !4

86:                                               ; preds = %56
  br label %87

87:                                               ; preds = %86, %40
  %88 = load i32, i32* %3, align 4
  store i32 %88, i32* @verbose, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_double_threats(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [10 x i32], align 16
  store i32 %0, i32* %2, align 4
  store i32 21, i32* %3, align 4
  br label %8

8:                                                ; preds = %132, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 400
  br i1 %10, label %11, label %135

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  br label %132

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %22 = call i32 @get_attack_threats(i32 %20, i32 10, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %131

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @trymove(i32 %26, i32 %27, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %28, i32 0, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %130

31:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %126, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 1
  %36 = icmp slt i32 %33, %35
  br i1 %36, label %37, label %129

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %122, %37
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %125

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %89

64:                                               ; preds = %54, %44
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @attack(i32 %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %88, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  call void @add_either_move(i32 %69, i32 1, i32 %73, i32 1, i32 %77)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  call void @remove_attack_threat_move(i32 %78, i32 %82)
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  call void @remove_attack_threat_move(i32 %83, i32 %87)
  br label %88

88:                                               ; preds = %68, %64
  br label %121

89:                                               ; preds = %54
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @defend_both(i32 %93, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %120, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  call void @add_either_move(i32 %101, i32 1, i32 %105, i32 1, i32 %109)
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  call void @remove_attack_threat_move(i32 %110, i32 %114)
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %5, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  call void @remove_attack_threat_move(i32 %115, i32 %119)
  br label %120

120:                                              ; preds = %100, %89
  br label %121

121:                                              ; preds = %120, %88
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %40, !llvm.loop !6

125:                                              ; preds = %40
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %4, align 4
  br label %32, !llvm.loop !7

129:                                              ; preds = %32
  call void @popgo()
  br label %130

130:                                              ; preds = %129, %25
  br label %131

131:                                              ; preds = %130, %19
  br label %132

132:                                              ; preds = %131, %18
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %3, align 4
  br label %8, !llvm.loop !8

135:                                              ; preds = %8
  ret void
}

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atari_atari(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [400 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 3, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @aa_depth, align 4
  %20 = icmp slt i32 %19, 2
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %148

22:                                               ; preds = %4
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([400 x i32]* @forbidden to i8*), i8 0, i64 1600, i1 false)
  %23 = load i32, i32* %6, align 4
  call void @compute_aa_status(i32 %23, i8* null)
  %24 = load i32, i32* %6, align 4
  call void @compute_aa_values(i32 %24)
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i8*, i8** %8, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %28, i8 0, i64 400, i1 false)
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* %6, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @do_atari_atari(i32 %30, i32* %11, i32* %12, i8* %31, i32 0, i32 %32, i32 0, i8* null)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %148

37:                                               ; preds = %29
  br label %38

38:                                               ; preds = %37, %65
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i64 0, i64 %46
  store i32 1, i32* %47, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = getelementptr inbounds [400 x i8], [400 x i8]* %14, i64 0, i64 0
  %52 = load i8*, i8** %8, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %51, i8* align 1 %52, i64 400, i1 false)
  %53 = load i8*, i8** %8, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %53, i8 0, i64 400, i1 false)
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @do_atari_atari(i32 %55, i32* %11, i32* %12, i8* %56, i32 0, i32 %57, i32 %58, i8* null)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %66

63:                                               ; preds = %54
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %63
  br label %38

66:                                               ; preds = %62
  %67 = load i8*, i8** %8, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %146

69:                                               ; preds = %66
  %70 = load i8*, i8** %8, align 8
  %71 = getelementptr inbounds [400 x i8], [400 x i8]* %14, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %70, i8* align 16 %71, i64 400, i1 false)
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i64 0, i64 %73
  store i32 0, i32* %74, align 4
  store i32 21, i32* %16, align 4
  br label %75

75:                                               ; preds = %142, %69
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 400
  br i1 %77, label %78, label %145

78:                                               ; preds = %75
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %83, 3
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i8*, i8** %8, align 8
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85, %78
  br label %142

93:                                               ; preds = %85
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @trymove(i32 %94, i32 %95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 0, i32 0)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 0, i8* %102, align 1
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load i32, i32* %16, align 4
  %107 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %105, %98
  br label %142

109:                                              ; preds = %93
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @attack(i32 %110, i32* null)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i8*, i8** %8, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  store i8 0, i8* %117, align 1
  call void @popgo()
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* %16, align 4
  %122 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %120, %113
  br label %142

124:                                              ; preds = %109
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @do_atari_atari(i32 %125, i32* %11, i32* %12, i8* null, i32 0, i32 %126, i32 %127, i8* null)
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %124
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %16, align 4
  %135 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %130
  %137 = load i8*, i8** %8, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 0, i8* %140, align 1
  br label %141

141:                                              ; preds = %136, %124
  call void @popgo()
  br label %142

142:                                              ; preds = %141, %123, %108, %92
  %143 = load i32, i32* %16, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %16, align 4
  br label %75, !llvm.loop !9

145:                                              ; preds = %75
  br label %146

146:                                              ; preds = %145, %66
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %146, %36, %21
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local void @add_my_atari_atari_move(i32, i32) #1

declare dso_local void @add_your_atari_atari_move(i32, i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_aa_status(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFTree_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 3, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %14, %struct.SGFTree_t** %7, align 8
  %15 = load i32, i32* @count_variations, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @verbose, align 4
  store i32 %16, i32* %9, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %17 = load i32, i32* @verbose, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @verbose, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* @verbose, align 4
  br label %22

22:                                               ; preds = %19, %2
  store i32 21, i32* %6, align 4
  br label %23

23:                                               ; preds = %121, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 400
  br i1 %25, label %26, label %124

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %108

34:                                               ; preds = %26
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %34
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %46
  store i32 1, i32* %47, align 4
  br label %52

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %50
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  br label %107

53:                                               ; preds = %34
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %56, i32 0, i32 16
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %62
  store i32 0, i32* %63, align 4
  br label %106

64:                                               ; preds = %53
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %67, i32 0, i32 16
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %73
  store i32 2, i32* %74, align 4
  br label %105

75:                                               ; preds = %64
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %78, i32 0, i32 16
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %79, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %86, i32 0, i32 18
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %87, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %93
  store i32 2, i32* %94, align 4
  br label %99

95:                                               ; preds = %83
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %97
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %91
  br label %104

100:                                              ; preds = %75
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %102
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %99
  br label %105

105:                                              ; preds = %104, %71
  br label %106

106:                                              ; preds = %105, %60
  br label %107

107:                                              ; preds = %106, %52
  br label %120

108:                                              ; preds = %26
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 3
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %117
  store i32 3, i32* %118, align 4
  br label %119

119:                                              ; preds = %115, %108
  br label %120

120:                                              ; preds = %119, %107
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %6, align 4
  br label %23, !llvm.loop !10

124:                                              ; preds = %23
  store i32 21, i32* %6, align 4
  br label %125

125:                                              ; preds = %187, %124
  %126 = load i32, i32* %6, align 4
  %127 = icmp slt i32 %126, 400
  br i1 %127, label %128, label %190

128:                                              ; preds = %125
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* %5, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %186

136:                                              ; preds = %128
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %186

144:                                              ; preds = %136
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %186

151:                                              ; preds = %144
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %186

157:                                              ; preds = %151
  %158 = load i32, i32* %6, align 4
  %159 = call i32 @owl_substantial(i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %186, label %161

161:                                              ; preds = %157
  store i32 21, i32* %10, align 4
  br label %162

162:                                              ; preds = %182, %161
  %163 = load i32, i32* %10, align 4
  %164 = icmp slt i32 %163, 400
  br i1 %164, label %165, label %185

165:                                              ; preds = %162
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp ne i32 %170, 3
  br i1 %171, label %172, label %181

172:                                              ; preds = %165
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %6, align 4
  %175 = call i32 @is_worm_origin(i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %179
  store i32 10, i32* %180, align 4
  br label %181

181:                                              ; preds = %177, %172, %165
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %10, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %10, align 4
  br label %162, !llvm.loop !11

185:                                              ; preds = %162
  br label %186

186:                                              ; preds = %185, %157, %151, %144, %136, %128
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  br label %125, !llvm.loop !12

190:                                              ; preds = %125
  %191 = load i32, i32* @debug, align 4
  %192 = and i32 %191, 262144
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %253

194:                                              ; preds = %190
  %195 = load i32, i32* %3, align 4
  %196 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %195)
  %197 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  store i32 21, i32* %6, align 4
  br label %198

198:                                              ; preds = %249, %194
  %199 = load i32, i32* %6, align 4
  %200 = icmp slt i32 %199, 400
  br i1 %200, label %201, label %252

201:                                              ; preds = %198
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %203
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = load i32, i32* %5, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %248

209:                                              ; preds = %201
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @is_worm_origin(i32 %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %248

214:                                              ; preds = %209
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i8** %11, align 8
  %215 = load i32, i32* %6, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %214
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i8** %11, align 8
  br label %237

221:                                              ; preds = %214
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 2
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i8** %11, align 8
  br label %236

228:                                              ; preds = %221
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 10
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %11, align 8
  br label %235

235:                                              ; preds = %234, %228
  br label %236

236:                                              ; preds = %235, %227
  br label %237

237:                                              ; preds = %236, %220
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 1
  br i1 %242, label %243, label %247

243:                                              ; preds = %237
  %244 = load i32, i32* %6, align 4
  %245 = load i8*, i8** %11, align 8
  %246 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i32 %244, i8* %245)
  br label %247

247:                                              ; preds = %243, %237
  br label %248

248:                                              ; preds = %247, %209, %201
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %198, !llvm.loop !13

252:                                              ; preds = %198
  br label %253

253:                                              ; preds = %252, %190
  %254 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  store %struct.SGFTree_t* %254, %struct.SGFTree_t** @sgf_dumptree, align 8
  %255 = load i32, i32* %8, align 4
  store i32 %255, i32* @count_variations, align 4
  %256 = load i32, i32* %9, align 4
  store i32 %256, i32* @verbose, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_aa_values(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [241 x i32], align 16
  %8 = alloca [400 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = sub nsw i32 3, %12
  store i32 %13, i32* %3, align 4
  store i32 21, i32* %4, align 4
  br label %14

14:                                               ; preds = %162, %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 400
  br i1 %16, label %17, label %165

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @find_origin(i32 %27)
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %30, %25, %17
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_values, i64 0, i64 %38
  store i32 0, i32* %39, align 4
  br label %162

40:                                               ; preds = %30
  %41 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 0
  %42 = bitcast i32* %41 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %42, i8 0, i64 1600, i1 false)
  %43 = load i32, i32* %4, align 4
  %44 = getelementptr inbounds [241 x i32], [241 x i32]* %7, i64 0, i64 0
  %45 = call i32 @findlib(i32 %43, i32 241, i32* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @countstones(i32 %46)
  %48 = mul nsw i32 2, %47
  store i32 %48, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %145, %40
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %148

53:                                               ; preds = %49
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [241 x i32], [241 x i32]* %7, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %87, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [241 x i32], [241 x i32]* %7, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @whose_moyo(%struct.influence_data* @initial_black_influence, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [241 x i32], [241 x i32]* %7, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @whose_moyo(%struct.influence_data* @initial_white_influence, i32 %74)
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %70, %62
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [241 x i32], [241 x i32]* %7, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %83
  store i32 1, i32* %84, align 4
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %78, %70, %53
  store i32 0, i32* %10, align 4
  br label %88

88:                                               ; preds = %141, %87
  %89 = load i32, i32* %10, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %144

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [241 x i32], [241 x i32]* %7, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %95, %99
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = icmp ult i32 %101, 421
  br i1 %102, label %103, label %116

103:                                              ; preds = %91
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp ne i32 %108, 3
  br i1 %109, label %110, label %116

110:                                              ; preds = %103
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %110, %103, %91
  br label %141

117:                                              ; preds = %110
  %118 = load i32, i32* %11, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %119
  store i32 1, i32* %120, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %117
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @whose_moyo(%struct.influence_data* @initial_black_influence, i32 %128)
  %130 = load i32, i32* %3, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @whose_moyo(%struct.influence_data* @initial_white_influence, i32 %133)
  %135 = load i32, i32* %3, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %132, %127
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %137, %132, %117
  br label %141

141:                                              ; preds = %140, %116
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %88, !llvm.loop !14

144:                                              ; preds = %88
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %9, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %49, !llvm.loop !15

148:                                              ; preds = %49
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %4, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_values, i64 0, i64 %151
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @debug, align 4
  %154 = and i32 %153, 262144
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %148
  br label %161

157:                                              ; preds = %148
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.43, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %156
  br label %162

162:                                              ; preds = %161, %36
  %163 = load i32, i32* %4, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %4, align 4
  br label %14, !llvm.loop !16

165:                                              ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_atari_atari(i32 %0, i32* %1, i32* %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [361 x %struct.aa_move], align 16
  %21 = alloca i32, align 4
  %22 = alloca [361 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca %struct.SGFTree_t*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca [2 x i32], align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca [400 x i8], align 16
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 3, %36
  store i32 %37, i32* %18, align 4
  %38 = load i32, i32* @debug, align 4
  %39 = and i32 %38, 262144
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %8
  %42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  call void @dump_stack()
  %43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  store i32 21, i32* %23, align 4
  br label %44

44:                                               ; preds = %64, %41
  %45 = load i32, i32* %23, align 4
  %46 = icmp slt i32 %45, 400
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i32, i32* %23, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %23, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %23, align 4
  %62 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %54, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %23, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %23, align 4
  br label %44, !llvm.loop !17

67:                                               ; preds = %44
  %68 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %8
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %69
  %73 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %73, %struct.SGFTree_t** %24, align 8
  %74 = load i32, i32* @count_variations, align 4
  store i32 %74, i32* %25, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @atari_atari_succeeded(i32 %75, i32* %76, i32* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %26, align 4
  %82 = load %struct.SGFTree_t*, %struct.SGFTree_t** %24, align 8
  store %struct.SGFTree_t* %82, %struct.SGFTree_t** @sgf_dumptree, align 8
  %83 = load i32, i32* %25, align 4
  store i32 %83, i32* @count_variations, align 4
  %84 = load i32, i32* %26, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %72
  %87 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %88 = icmp ne %struct.SGFTree_t* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgftreeAddComment(%struct.SGFTree_t* %90, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86
  %92 = load i32, i32* %26, align 4
  store i32 %92, i32* %9, align 4
  br label %329

93:                                               ; preds = %72
  br label %94

94:                                               ; preds = %93, %69
  %95 = load i32, i32* @stackp, align 4
  %96 = load i32, i32* @aa_depth, align 4
  %97 = icmp sgt i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 0, i32* %9, align 4
  br label %329

99:                                               ; preds = %94
  %100 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %100, %struct.SGFTree_t** %24, align 8
  %101 = load i32, i32* @count_variations, align 4
  store i32 %101, i32* %25, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %16, align 4
  %104 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %20, i64 0, i64 0
  %105 = load i8*, i8** %17, align 8
  call void @atari_atari_find_attack_moves(i32 %102, i32 %103, %struct.aa_move* %104, i8* %105)
  %106 = load %struct.SGFTree_t*, %struct.SGFTree_t** %24, align 8
  store %struct.SGFTree_t* %106, %struct.SGFTree_t** @sgf_dumptree, align 8
  %107 = load i32, i32* %25, align 4
  store i32 %107, i32* @count_variations, align 4
  store i32 0, i32* %19, align 4
  br label %108

108:                                              ; preds = %325, %99
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %20, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %328

115:                                              ; preds = %108
  %116 = load i32, i32* %19, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %20, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %118, i32 0, i32 1
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* %119, i64 0, i64 0
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %28, align 4
  %122 = load i32, i32* %19, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %20, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %29, align 4
  %127 = load i32, i32* %29, align 4
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %28, align 4
  %130 = call i32 @trymove(i32 %127, i32 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %129, i32 0, i32 0)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %115
  br label %325

133:                                              ; preds = %115
  %134 = load i8*, i8** %13, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %163

136:                                              ; preds = %133
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* %29, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  store i8 1, i8* %140, align 1
  %141 = load i32, i32* %29, align 4
  %142 = call i32 @countlib(i32 %141)
  %143 = icmp sle i32 %142, 2
  br i1 %143, label %144, label %162

144:                                              ; preds = %136
  %145 = load i32, i32* %29, align 4
  %146 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %147 = call i32 @findlib(i32 %145, i32 2, i32* %146)
  store i32 %147, i32* %33, align 4
  %148 = load i8*, i8** %13, align 8
  %149 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  store i8 1, i8* %152, align 1
  %153 = load i32, i32* %33, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %161

155:                                              ; preds = %144
  %156 = load i8*, i8** %13, align 8
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i8, i8* %156, i64 %159
  store i8 1, i8* %160, align 1
  br label %161

161:                                              ; preds = %155, %144
  br label %162

162:                                              ; preds = %161, %136
  br label %163

163:                                              ; preds = %162, %133
  %164 = load i32, i32* %28, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %187, label %170

170:                                              ; preds = %163
  %171 = load i32, i32* %28, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %172
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 2
  br i1 %176, label %187, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* @debug, align 4
  %182 = and i32 %181, 262144
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180, %177
  %185 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0))
  br label %186

186:                                              ; preds = %184, %180
  call void @popgo()
  store i32 0, i32* %9, align 4
  br label %329

187:                                              ; preds = %170, %163
  %188 = load i32, i32* %28, align 4
  %189 = call i32 @get_aa_value(i32 %188)
  store i32 %189, i32* %27, align 4
  %190 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %190, %struct.SGFTree_t** %24, align 8
  %191 = load i32, i32* @count_variations, align 4
  store i32 %191, i32* %25, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %192 = load i32, i32* %19, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [361 x %struct.aa_move], [361 x %struct.aa_move]* %20, i64 0, i64 %193
  %195 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %194, i32 0, i32 1
  %196 = getelementptr inbounds [4 x i32], [4 x i32]* %195, i64 0, i64 0
  %197 = getelementptr inbounds [361 x i32], [361 x i32]* %22, i64 0, i64 0
  %198 = call i32 @atari_atari_find_defense_moves(i32* %196, i32* %197)
  store i32 %198, i32* %21, align 4
  %199 = load %struct.SGFTree_t*, %struct.SGFTree_t** %24, align 8
  store %struct.SGFTree_t* %199, %struct.SGFTree_t** @sgf_dumptree, align 8
  %200 = load i32, i32* %25, align 4
  store i32 %200, i32* @count_variations, align 4
  store i32 0, i32* %31, align 4
  br label %201

201:                                              ; preds = %248, %187
  %202 = load i32, i32* %31, align 4
  %203 = load i32, i32* %21, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %251

205:                                              ; preds = %201
  %206 = load i32, i32* %31, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [361 x i32], [361 x i32]* %22, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %30, align 4
  %210 = load i8*, i8** %13, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load i8*, i8** %13, align 8
  %214 = load i32, i32* %30, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  store i8 1, i8* %216, align 1
  br label %217

217:                                              ; preds = %212, %205
  %218 = load i32, i32* %30, align 4
  %219 = load i32, i32* %18, align 4
  %220 = load i32, i32* %28, align 4
  %221 = call i32 @trymove(i32 %218, i32 %219, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %220, i32 0, i32 0)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %243

223:                                              ; preds = %217
  call void @modify_depth_values(i32 2)
  %224 = load i8*, i8** %17, align 8
  %225 = getelementptr inbounds [400 x i8], [400 x i8]* %35, i64 0, i64 0
  %226 = load i32, i32* %29, align 4
  %227 = load i32, i32* %10, align 4
  %228 = call i32 @update_aa_goal(i8* %224, i8* %225, i32 %226, i32 %227)
  %229 = load i32, i32* %10, align 4
  %230 = load i32*, i32** %12, align 8
  %231 = load i8*, i8** %13, align 8
  %232 = load i32, i32* %29, align 4
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* %16, align 4
  %235 = getelementptr inbounds [400 x i8], [400 x i8]* %35, i64 0, i64 0
  %236 = call i32 @do_atari_atari(i32 %229, i32* null, i32* %230, i8* %231, i32 %232, i32 %233, i32 %234, i8* %235)
  store i32 %236, i32* %34, align 4
  call void @modify_depth_values(i32 -2)
  %237 = load i32, i32* %34, align 4
  %238 = load i32, i32* %27, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %223
  %241 = load i32, i32* %34, align 4
  store i32 %241, i32* %27, align 4
  br label %242

242:                                              ; preds = %240, %223
  call void @popgo()
  br label %243

243:                                              ; preds = %242, %217
  %244 = load i32, i32* %27, align 4
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  br label %251

247:                                              ; preds = %243
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %31, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %31, align 4
  br label %201, !llvm.loop !18

251:                                              ; preds = %246, %201
  call void @popgo()
  %252 = load i32, i32* %27, align 4
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

254:                                              ; preds = %251
  br label %325

255:                                              ; preds = %251
  %256 = load i32, i32* %21, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %275

258:                                              ; preds = %255
  %259 = load i32, i32* %15, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %265, label %261

261:                                              ; preds = %258
  %262 = load i32, i32* @debug, align 4
  %263 = and i32 %262, 262144
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %261, %258
  %266 = load i32, i32* %28, align 4
  %267 = load i32, i32* %29, align 4
  %268 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i32 %266, i32 %267)
  call void @dump_stack()
  br label %269

269:                                              ; preds = %265, %261
  %270 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %271 = icmp ne %struct.SGFTree_t* %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgftreeAddComment(%struct.SGFTree_t* %273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0))
  br label %274

274:                                              ; preds = %272, %269
  br label %275

275:                                              ; preds = %274, %255
  %276 = load i32*, i32** %11, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32, i32* %29, align 4
  %280 = load i32*, i32** %11, align 8
  store i32 %279, i32* %280, align 4
  br label %281

281:                                              ; preds = %278, %275
  %282 = load i32*, i32** %12, align 8
  %283 = icmp ne i32* %282, null
  br i1 %283, label %284, label %314

284:                                              ; preds = %281
  %285 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %285, %struct.SGFTree_t** %24, align 8
  %286 = load i32, i32* @count_variations, align 4
  store i32 %286, i32* %25, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %287 = load i32, i32* %28, align 4
  %288 = load i32*, i32** %12, align 8
  %289 = call i32 @find_defense(i32 %287, i32* %288)
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %293, label %291

291:                                              ; preds = %284
  %292 = load i32*, i32** %12, align 8
  store i32 0, i32* %292, align 4
  br label %293

293:                                              ; preds = %291, %284
  %294 = load i32*, i32** %12, align 8
  %295 = load i32, i32* %294, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %293
  %298 = load i32*, i32** %12, align 8
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* %18, align 4
  %301 = call i32 @safe_move(i32 %299, i32 %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %311, label %303

303:                                              ; preds = %297, %293
  %304 = load i32, i32* %29, align 4
  %305 = load i32, i32* %18, align 4
  %306 = call i32 @safe_move(i32 %304, i32 %305)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %311

308:                                              ; preds = %303
  %309 = load i32, i32* %29, align 4
  %310 = load i32*, i32** %12, align 8
  store i32 %309, i32* %310, align 4
  br label %311

311:                                              ; preds = %308, %303, %297
  %312 = load %struct.SGFTree_t*, %struct.SGFTree_t** %24, align 8
  store %struct.SGFTree_t* %312, %struct.SGFTree_t** @sgf_dumptree, align 8
  %313 = load i32, i32* %25, align 4
  store i32 %313, i32* @count_variations, align 4
  br label %314

314:                                              ; preds = %311, %281
  %315 = load i32, i32* @debug, align 4
  %316 = and i32 %315, 262144
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %314
  br label %323

319:                                              ; preds = %314
  %320 = load i32, i32* %27, align 4
  %321 = load i32, i32* %28, align 4
  %322 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %320, i32 %321)
  br label %323

323:                                              ; preds = %319, %318
  %324 = load i32, i32* %27, align 4
  store i32 %324, i32* %9, align 4
  br label %329

325:                                              ; preds = %254, %132
  %326 = load i32, i32* %19, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %19, align 4
  br label %108, !llvm.loop !19

328:                                              ; preds = %108
  store i32 0, i32* %9, align 4
  br label %329

329:                                              ; preds = %328, %323, %186, %98, %91
  %330 = load i32, i32* %9, align 4
  ret i32 %330
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local void @popgo() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atari_atari_confirm_safety(i32 %0, i32 %1, i32* %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [400 x i8], align 16
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i8*, i8** %11, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = getelementptr inbounds [400 x i8], [400 x i8]* %13, i64 0, i64 0
  call void @mark_safe_stones(i32 %14, i32 %15, i8* %16, i8* %17, i8* %18)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = getelementptr inbounds [400 x i8], [400 x i8]* %13, i64 0, i64 0
  %23 = call i32 @atari_atari_blunder_size(i32 %19, i32 %20, i32* %21, i8* %22)
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %23, %24
  %26 = zext i1 %25 to i32
  ret i32 %26
}

declare dso_local void @mark_safe_stones(i32, i32, i8*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atari_atari_blunder_size(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 3, %16
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* @aa_depth, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %84

21:                                               ; preds = %4
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([400 x i32]* @forbidden to i8*), i8 0, i64 1600, i1 false)
  %22 = load i32, i32* %15, align 4
  %23 = load i8*, i8** %9, align 8
  call void @compute_aa_status(i32 %22, i8* %23)
  %24 = load i32, i32* %15, align 4
  call void @compute_aa_values(i32 %24)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @tryko(i32 %25, i32 %26, i8* null, i32 0, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = sdiv i32 %30, 20
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %7, align 4
  %34 = srem i32 %33, 20
  %35 = sub nsw i32 %34, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 387, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %32, i32 %35)
  br label %36

36:                                               ; preds = %29, %21
  call void @increase_depth_values()
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @do_atari_atari(i32 %37, i32* %10, i32* %11, i8* null, i32 0, i32 0, i32 0, i8* null)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %36
  call void @popgo()
  call void @decrease_depth_values()
  store i32 0, i32* %5, align 4
  br label %84

46:                                               ; preds = %42
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %51, %47
  %55 = phi i1 [ false, %47 ], [ %53, %51 ]
  br i1 %55, label %56, label %64

56:                                               ; preds = %54
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i64 0, i64 %59
  store i32 1, i32* %60, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @do_atari_atari(i32 %61, i32* %10, i32* %11, i8* null, i32 0, i32 0, i32 %62, i8* null)
  store i32 %63, i32* %13, align 4
  br label %47, !llvm.loop !20

64:                                               ; preds = %54
  call void @popgo()
  call void @decrease_depth_values()
  %65 = load i32, i32* %15, align 4
  call void @compute_aa_status(i32 %65, i8* null)
  %66 = load i32, i32* %15, align 4
  call void @compute_aa_values(i32 %66)
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @do_atari_atari(i32 %67, i32* null, i32* null, i8* null, i32 0, i32 0, i32 0, i8* null)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %13, align 4
  %71 = sub nsw i32 %69, %70
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %64
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %5, align 4
  br label %84

83:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %79, %45, %20
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @tryko(i32, i32, i8*, i32, i32) #1

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local void @increase_depth_values() #1

declare dso_local void @decrease_depth_values() #1

declare dso_local i32 @get_attack_threats(i32, i32, i32*) #1

declare dso_local void @add_either_move(i32, i32, i32, i32, i32) #1

declare dso_local void @remove_attack_threat_move(i32, i32) #1

declare dso_local i32 @defend_both(i32, i32) #1

declare dso_local i32 @owl_substantial(i32) #1

declare dso_local i32 @is_worm_origin(i32, i32) #1

declare dso_local void @dump_stack() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atari_atari_succeeded(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 3, %19
  store i32 %20, i32* %16, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %163, %6
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @board_size, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %166

25:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  br label %26

26:                                               ; preds = %159, %25
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @board_size, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %162

30:                                               ; preds = %26
  %31 = load i32, i32* %14, align 4
  %32 = mul nsw i32 %31, 20
  %33 = add nsw i32 21, %32
  %34 = load i32, i32* %15, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %159

44:                                               ; preds = %30
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @find_origin(i32 %46)
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %159

50:                                               ; preds = %44
  %51 = load i32, i32* %13, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @get_aa_value(i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %159

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %17, align 4
  %61 = call i32 @get_aa_status(i32 %60)
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %159

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @adjacent_strings(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %159

77:                                               ; preds = %71, %64
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @liberty_of_string(i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %159

90:                                               ; preds = %84, %77
  %91 = load i32, i32* @debug, align 4
  %92 = and i32 %91, 262144
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* @depth, align 4
  %97 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %90
  %99 = load i32, i32* %17, align 4
  %100 = call i32 @attack(i32 %99, i32* %18)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %158

102:                                              ; preds = %98
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %158, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @debug, align 4
  %113 = and i32 %112, 262144
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111, %108
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %18, align 4
  %118 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i32 %116, i32 %117)
  call void @dump_stack()
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i32*, i32** %9, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load i32, i32* %18, align 4
  %124 = load i32*, i32** %9, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  %126 = load i32*, i32** %10, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %145

128:                                              ; preds = %125
  %129 = load i32, i32* %17, align 4
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @find_defense(i32 %129, i32* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %144, label %133

133:                                              ; preds = %128
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %16, align 4
  %136 = call i32 @safe_move(i32 %134, i32 %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* %18, align 4
  %140 = load i32*, i32** %10, align 8
  store i32 %139, i32* %140, align 4
  br label %143

141:                                              ; preds = %133
  %142 = load i32*, i32** %10, align 8
  store i32 0, i32* %142, align 4
  br label %143

143:                                              ; preds = %141, %138
  br label %144

144:                                              ; preds = %143, %128
  br label %145

145:                                              ; preds = %144, %125
  %146 = load i32, i32* @debug, align 4
  %147 = and i32 %146, 262144
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  br label %155

150:                                              ; preds = %145
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @get_aa_value(i32 %151)
  %153 = load i32, i32* %17, align 4
  %154 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %150, %149
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @get_aa_value(i32 %156)
  store i32 %157, i32* %7, align 4
  br label %167

158:                                              ; preds = %102, %98
  br label %159

159:                                              ; preds = %158, %89, %76, %63, %58, %49, %43
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %26, !llvm.loop !21

162:                                              ; preds = %26
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %21, !llvm.loop !22

166:                                              ; preds = %21
  store i32 0, i32* %7, align 4
  br label %167

167:                                              ; preds = %166, %155
  %168 = load i32, i32* %7, align 4
  ret i32 %168
}

declare dso_local void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atari_atari_find_attack_moves(i32 %0, i32 %1, %struct.aa_move* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_move*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.aa_move* %2, %struct.aa_move** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.aa_move*, %struct.aa_move** %7, align 8
  call void @aa_init_moves(%struct.aa_move* %11)
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.aa_move*, %struct.aa_move** %7, align 8
  %15 = load i8*, i8** %8, align 8
  call void @atari_atari_attack_patterns(i32 %12, i32 %13, %struct.aa_move* %14, i8* %15)
  %16 = load %struct.aa_move*, %struct.aa_move** %7, align 8
  call void @aa_sort_moves(%struct.aa_move* %16)
  %17 = load i32, i32* @debug, align 4
  %18 = and i32 %17, 262144
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %83

20:                                               ; preds = %4
  %21 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %78, %20
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 361
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load %struct.aa_move*, %struct.aa_move** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %26, i64 %28
  %30 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %25, %22
  %34 = phi i1 [ false, %22 ], [ %32, %25 ]
  br i1 %34, label %35, label %81

35:                                               ; preds = %33
  %36 = load %struct.aa_move*, %struct.aa_move** %7, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %36, i64 %38
  %40 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0), i32 %41)
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %73, %35
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 4
  br i1 %45, label %46, label %76

46:                                               ; preds = %43
  %47 = load %struct.aa_move*, %struct.aa_move** %7, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %47, i64 %49
  %51 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %50, i32 0, i32 1
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %51, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %76

58:                                               ; preds = %46
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i64 0, i64 0)
  %63 = load %struct.aa_move*, %struct.aa_move** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %63, i64 %65
  %67 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %66, i32 0, i32 1
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i64 0, i64 0), i8* %62, i32 %71)
  br label %73

73:                                               ; preds = %58
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %43, !llvm.loop !23

76:                                               ; preds = %57, %43
  %77 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %22, !llvm.loop !24

81:                                               ; preds = %33
  %82 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %4
  ret void
}

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @findlib(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_aa_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [361 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = getelementptr inbounds [361 x i32], [361 x i32]* %3, i64 0, i64 0
  %9 = call i32 @findstones(i32 %7, i32 361, i32* %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [361 x i32], [361 x i32]* %3, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_values, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10, !llvm.loop !25

27:                                               ; preds = %10
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atari_atari_find_defense_moves(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca [160 x i32], align 16
  %13 = alloca [400 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 0
  %19 = bitcast i32* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 1600, i1 false)
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %267, %2
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %20
  %31 = phi i1 [ false, %20 ], [ %29, %23 ]
  br i1 %31, label %32, label %270

32:                                               ; preds = %30
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %267

45:                                               ; preds = %32
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @find_defense(i32 %46, i32* %7)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %267

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 361
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %272

61:                                               ; preds = %50
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %63
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %16, align 4
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %67 = call i32 @findlib(i32 %65, i32 4, i32* %66)
  store i32 %67, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %121, %61
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %124

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %120, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @trymove(i32 %85, i32 %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0), i32 %91, i32 0, i32 0)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %81
  %95 = load i32, i32* %16, align 4
  %96 = call i32 @attack(i32 %95, i32* null)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %102, i32* %107, align 4
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %112
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %98, %94
  call void @popgo()
  %115 = load i32, i32* %6, align 4
  %116 = icmp eq i32 %115, 361
  br i1 %116, label %117, label %119

117:                                              ; preds = %114
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %272

119:                                              ; preds = %114
  br label %120

120:                                              ; preds = %119, %81, %72
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %8, align 4
  br label %68, !llvm.loop !26

124:                                              ; preds = %68
  %125 = load i32, i32* %16, align 4
  %126 = getelementptr inbounds [160 x i32], [160 x i32]* %12, i64 0, i64 0
  %127 = call i32 @chainlinks(i32 %125, i32* %126)
  store i32 %127, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %128

128:                                              ; preds = %240, %124
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %11, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %243

132:                                              ; preds = %128
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [160 x i32], [160 x i32]* %12, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @attack(i32 %136, i32* %17)
  %138 = icmp eq i32 %137, 5
  br i1 %138, label %139, label %160

139:                                              ; preds = %132
  %140 = load i32, i32* %17, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %160, label %145

145:                                              ; preds = %139
  %146 = load i32, i32* %17, align 4
  %147 = load i32*, i32** %5, align 8
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %6, align 4
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 361
  br i1 %153, label %154, label %156

154:                                              ; preds = %145
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %3, align 4
  br label %272

156:                                              ; preds = %145
  %157 = load i32, i32* %17, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %158
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %156, %139, %132
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [160 x i32], [160 x i32]* %12, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %166 = call i32 @findlib(i32 %164, i32 3, i32* %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp sle i32 %167, 3
  br i1 %168, label %169, label %239

169:                                              ; preds = %160
  store i32 0, i32* %15, align 4
  br label %170

170:                                              ; preds = %235, %169
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %238

174:                                              ; preds = %170
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %234, label %183

183:                                              ; preds = %174
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = call i32 @is_self_atari(i32 %187, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %234, label %195

195:                                              ; preds = %183
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = load i32, i32* %16, align 4
  %206 = call i32 @trymove(i32 %199, i32 %204, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i64 0, i64 0), i32 %205, i32 0, i32 0)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %234

208:                                              ; preds = %195
  %209 = load i32, i32* %16, align 4
  %210 = call i32 @attack(i32 %209, i32* null)
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %228

212:                                              ; preds = %208
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %5, align 8
  %218 = load i32, i32* %6, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %6, align 4
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32 %216, i32* %221, align 4
  %222 = load i32, i32* %15, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [400 x i32], [400 x i32]* %13, i64 0, i64 %226
  store i32 1, i32* %227, align 4
  br label %228

228:                                              ; preds = %212, %208
  call void @popgo()
  %229 = load i32, i32* %6, align 4
  %230 = icmp eq i32 %229, 361
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = load i32, i32* %6, align 4
  store i32 %232, i32* %3, align 4
  br label %272

233:                                              ; preds = %228
  br label %234

234:                                              ; preds = %233, %195, %183, %174
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %15, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %15, align 4
  br label %170, !llvm.loop !27

238:                                              ; preds = %170
  br label %239

239:                                              ; preds = %238, %160
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %8, align 4
  br label %128, !llvm.loop !28

243:                                              ; preds = %128
  %244 = load i32, i32* @debug, align 4
  %245 = and i32 %244, 262144
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %266

247:                                              ; preds = %243
  %248 = load i32, i32* %16, align 4
  %249 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i32 %248)
  store i32 0, i32* %8, align 4
  br label %250

250:                                              ; preds = %261, %247
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* %6, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %264

254:                                              ; preds = %250
  %255 = load i32*, i32** %5, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i64 0, i64 0), i32 %259)
  br label %261

261:                                              ; preds = %254
  %262 = load i32, i32* %8, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %8, align 4
  br label %250, !llvm.loop !29

264:                                              ; preds = %250
  %265 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  br label %266

266:                                              ; preds = %264, %243
  br label %267

267:                                              ; preds = %266, %49, %44
  %268 = load i32, i32* %14, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %14, align 4
  br label %20, !llvm.loop !30

270:                                              ; preds = %30
  %271 = load i32, i32* %6, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %270, %231, %154, %117, %59
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local void @modify_depth_values(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_aa_goal(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [400 x i32], align 16
  %12 = alloca [361 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [361 x i32], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 3, %26
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i8*, i8** %7, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %31, i8 0, i64 400, i1 false)
  br label %35

32:                                               ; preds = %4
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %6, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %34, i64 400, i1 false)
  br label %35

35:                                               ; preds = %32, %30
  %36 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 0
  %37 = bitcast i32* %36 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 1600, i1 false)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %42
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %40, %35
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %335

53:                                               ; preds = %49
  store i32 0, i32* %15, align 4
  br label %54

54:                                               ; preds = %331, %53
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %334

58:                                               ; preds = %54
  store i32 361, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 361
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %58
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 1229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i32 -1, i32 -1)
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %14, align 4
  br label %65

65:                                               ; preds = %89, %63
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %18, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %69
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %79, %69
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %14, align 4
  br label %65, !llvm.loop !31

92:                                               ; preds = %65
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* %15, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %19, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %106
  store i32 %104, i32* %107, align 4
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %19, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %110
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %96, %92
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %17, align 4
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %112
  %125 = load i8*, i8** %7, align 8
  %126 = load i32, i32* %17, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  store i8 1, i8* %128, align 1
  br label %129

129:                                              ; preds = %124, %112
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %327, %129
  %131 = load i32, i32* %14, align 4
  %132 = icmp slt i32 %131, 4
  br i1 %132, label %133, label %330

133:                                              ; preds = %130
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %134, %138
  store i32 %139, i32* %21, align 4
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 3
  br i1 %145, label %147, label %146

146:                                              ; preds = %133
  br label %327

147:                                              ; preds = %133
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %159, label %155

155:                                              ; preds = %147
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %218

159:                                              ; preds = %155, %147
  %160 = load i32, i32* %21, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %218

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  %173 = icmp sle i32 %172, 5
  br i1 %173, label %174, label %216

174:                                              ; preds = %167
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %174
  %181 = load i32, i32* %21, align 4
  %182 = load i32, i32* %13, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %13, align 4
  %184 = sext i32 %182 to i64
  %185 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load i32, i32* %17, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  %191 = load i32, i32* %21, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %192
  store i32 %190, i32* %193, align 4
  br label %215

194:                                              ; preds = %174
  %195 = load i32, i32* %21, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  %204 = icmp slt i32 %198, %203
  br i1 %204, label %205, label %214

205:                                              ; preds = %194
  %206 = load i32, i32* %17, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %212
  store i32 %210, i32* %213, align 4
  br label %214

214:                                              ; preds = %205, %194
  br label %215

215:                                              ; preds = %214, %180
  br label %216

216:                                              ; preds = %215, %167
  br label %217

217:                                              ; preds = %216
  br label %326

218:                                              ; preds = %159, %155
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = load i32, i32* %10, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %226, label %325

226:                                              ; preds = %218
  %227 = load i32, i32* %21, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  %232 = load i32, i32* %10, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %325

234:                                              ; preds = %226
  %235 = load i32, i32* %21, align 4
  %236 = getelementptr inbounds [361 x i32], [361 x i32]* %22, i64 0, i64 0
  %237 = call i32 @findstones(i32 %235, i32 361, i32* %236)
  store i32 %237, i32* %23, align 4
  %238 = load i32, i32* %21, align 4
  %239 = call i32 @countlib(i32 %238)
  store i32 %239, i32* %24, align 4
  %240 = load i32, i32* %24, align 4
  %241 = sub nsw i32 %240, 3
  store i32 %241, i32* %25, align 4
  %242 = load i32, i32* %25, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %234
  store i32 0, i32* %25, align 4
  br label %245

245:                                              ; preds = %244, %234
  store i32 0, i32* %16, align 4
  br label %246

246:                                              ; preds = %321, %245
  %247 = load i32, i32* %16, align 4
  %248 = load i32, i32* %23, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %324

250:                                              ; preds = %246
  br label %251

251:                                              ; preds = %250
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* %25, align 4
  %257 = add nsw i32 %255, %256
  %258 = icmp sle i32 %257, 5
  br i1 %258, label %259, label %319

259:                                              ; preds = %251
  %260 = load i32, i32* %16, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [361 x i32], [361 x i32]* %22, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %289

268:                                              ; preds = %259
  %269 = load i32, i32* %16, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [361 x i32], [361 x i32]* %22, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  %275 = sext i32 %273 to i64
  %276 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %275
  store i32 %272, i32* %276, align 4
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %25, align 4
  %282 = add nsw i32 %280, %281
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [361 x i32], [361 x i32]* %22, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %287
  store i32 %282, i32* %288, align 4
  br label %318

289:                                              ; preds = %259
  %290 = load i32, i32* %16, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [361 x i32], [361 x i32]* %22, i64 0, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %17, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %25, align 4
  %302 = add nsw i32 %300, %301
  %303 = icmp slt i32 %296, %302
  br i1 %303, label %304, label %317

304:                                              ; preds = %289
  %305 = load i32, i32* %17, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %25, align 4
  %310 = add nsw i32 %308, %309
  %311 = load i32, i32* %16, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [361 x i32], [361 x i32]* %22, i64 0, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %315
  store i32 %310, i32* %316, align 4
  br label %317

317:                                              ; preds = %304, %289
  br label %318

318:                                              ; preds = %317, %268
  br label %319

319:                                              ; preds = %318, %251
  br label %320

320:                                              ; preds = %319
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %16, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %16, align 4
  br label %246, !llvm.loop !32

324:                                              ; preds = %246
  br label %325

325:                                              ; preds = %324, %226, %218
  br label %326

326:                                              ; preds = %325, %217
  br label %327

327:                                              ; preds = %326, %146
  %328 = load i32, i32* %14, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %14, align 4
  br label %130, !llvm.loop !33

330:                                              ; preds = %130
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %15, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %15, align 4
  br label %54, !llvm.loop !34

334:                                              ; preds = %54
  store i32 1, i32* %5, align 4
  br label %335

335:                                              ; preds = %334, %52
  %336 = load i32, i32* %5, align 4
  ret i32 %336
}

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @find_origin(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_aa_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [361 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds [361 x i32], [361 x i32]* %4, i64 0, i64 0
  %20 = call i32 @findstones(i32 %18, i32 361, i32* %19)
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %43, %17
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [361 x i32], [361 x i32]* %4, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 3
  br i1 %33, label %34, label %42

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [361 x i32], [361 x i32]* %4, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x i32], [400 x i32]* @aa_status, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %25
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %21, !llvm.loop !35

46:                                               ; preds = %21
  store i32 3, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %34, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @adjacent_strings(i32, i32) #1

declare dso_local i32 @liberty_of_string(i32, i32) #1

declare dso_local i32 @findstones(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aa_init_moves(%struct.aa_move* %0) #0 {
  %2 = alloca %struct.aa_move*, align 8
  store %struct.aa_move* %0, %struct.aa_move** %2, align 8
  %3 = load %struct.aa_move*, %struct.aa_move** %2, align 8
  %4 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %3, i64 0
  %5 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atari_atari_attack_patterns(i32 %0, i32 %1, %struct.aa_move* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aa_move*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [400 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.aa_move* %2, %struct.aa_move** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* @current_minsize, align 4
  %11 = load %struct.aa_move*, %struct.aa_move** %7, align 8
  store %struct.aa_move* %11, %struct.aa_move** @current_attacks, align 8
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([400 x i32]* @conditional_attack_point to i8*), i8 0, i64 1600, i1 false)
  %12 = load i8*, i8** %8, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @update_aa_goal(i8* %15, i8* %16, i32 0, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = getelementptr inbounds [400 x i8], [400 x i8]* %9, i64 0, i64 0
  store i8* %21, i8** %8, align 8
  br label %22

22:                                               ; preds = %20, %14, %4
  %23 = load i32, i32* %5, align 4
  %24 = load i8*, i8** %8, align 8
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @atari_atari_attack_callback, i32 %23, %struct.pattern_db* @aa_attackpat_db, i8* null, i8* %24)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aa_sort_moves(%struct.aa_move* %0) #0 {
  %2 = alloca %struct.aa_move*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aa_move* %0, %struct.aa_move** %2, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %51, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 361
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = load %struct.aa_move*, %struct.aa_move** %2, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %11, i64 %13
  %15 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %10, %7
  %19 = phi i1 [ false, %7 ], [ %17, %10 ]
  br i1 %19, label %20, label %54

20:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %37, %20
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.aa_move*, %struct.aa_move** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %25, i64 %27
  %29 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %28, i32 0, i32 1
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %40

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %21, !llvm.loop !36

40:                                               ; preds = %35, %21
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %6, align 4
  %42 = load %struct.aa_move*, %struct.aa_move** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %42, i64 %44
  %46 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %45, i32 0, i32 1
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i64 0, i64 0
  %48 = bitcast i32* %47 to i8*
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  call void @gg_sort(i8* %48, i64 %50, i64 4, i32 (i8*, i8*)* @target_comp_func)
  br label %51

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %7, !llvm.loop !37

54:                                               ; preds = %18
  %55 = load i32, i32* %3, align 4
  store i32 %55, i32* %5, align 4
  %56 = load %struct.aa_move*, %struct.aa_move** %2, align 8
  %57 = bitcast %struct.aa_move* %56 to i8*
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  call void @gg_sort(i8* %57, i64 %59, i64 20, i32 (i8*, i8*)* @move_comp_func)
  ret void
}

declare dso_local void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atari_atari_attack_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = load %struct.pattern*, %struct.pattern** %8, align 8
  %18 = getelementptr inbounds %struct.pattern, %struct.pattern* %17, i32 0, i32 11
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %20
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %21, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x i32], [400 x i32]* @forbidden, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %5
  br label %245

34:                                               ; preds = %5
  %35 = load %struct.pattern*, %struct.pattern** %8, align 8
  %36 = getelementptr inbounds %struct.pattern, %struct.pattern* %35, i32 0, i32 20
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, 1
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.pattern*, %struct.pattern** %8, align 8
  %42 = getelementptr inbounds %struct.pattern, %struct.pattern* %41, i32 0, i32 22
  %43 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 %43(i32 %44, i32 %45, i32 %46, i32 0)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %245

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50, %34
  %52 = load %struct.pattern*, %struct.pattern** %8, align 8
  %53 = getelementptr inbounds %struct.pattern, %struct.pattern* %52, i32 0, i32 21
  %54 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %53, align 8
  %55 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %54, null
  br i1 %55, label %56, label %68

56:                                               ; preds = %51
  %57 = load %struct.pattern*, %struct.pattern** %8, align 8
  %58 = getelementptr inbounds %struct.pattern, %struct.pattern* %57, i32 0, i32 21
  %59 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %58, align 8
  %60 = load %struct.pattern*, %struct.pattern** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 %59(%struct.pattern* %60, i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  br label %245

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %51
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %242, %68
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.pattern*, %struct.pattern** %8, align 8
  %72 = getelementptr inbounds %struct.pattern, %struct.pattern* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %245

75:                                               ; preds = %69
  %76 = load %struct.pattern*, %struct.pattern** %8, align 8
  %77 = getelementptr inbounds %struct.pattern, %struct.pattern* %76, i32 0, i32 0
  %78 = load %struct.patval*, %struct.patval** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.patval, %struct.patval* %78, i64 %80
  %82 = getelementptr inbounds %struct.patval, %struct.patval* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %241

85:                                               ; preds = %75
  %86 = load %struct.pattern*, %struct.pattern** %8, align 8
  %87 = getelementptr inbounds %struct.pattern, %struct.pattern* %86, i32 0, i32 0
  %88 = load %struct.patval*, %struct.patval** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.patval, %struct.patval* %88, i64 %90
  %92 = getelementptr inbounds %struct.patval, %struct.patval* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %94
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [8 x i32], [8 x i32]* %95, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %99, %100
  %102 = call i32 @find_origin(i32 %101)
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* @current_minsize, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %85
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @get_aa_value(i32 %106)
  %108 = load i32, i32* @current_minsize, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %242

111:                                              ; preds = %105, %85
  %112 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @aa_move_known(%struct.aa_move* %112, i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %242

118:                                              ; preds = %111
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @get_aa_status(i32 %119)
  %121 = icmp ne i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  br label %242

123:                                              ; preds = %118
  %124 = load %struct.pattern*, %struct.pattern** %8, align 8
  %125 = getelementptr inbounds %struct.pattern, %struct.pattern* %124, i32 0, i32 12
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 16
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @is_self_atari(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %129
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @countlib(i32 %135)
  %137 = icmp sgt i32 %136, 2
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  br label %242

139:                                              ; preds = %134
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @safe_move(i32 %140, i32 %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %139
  br label %242

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %145, %129, %123
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @trymove(i32 %147, i32 %148, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i32 %149, i32 0, i32 0)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %240

152:                                              ; preds = %146
  store i32 0, i32* %15, align 4
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = icmp ne i8 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %152
  store i32 5, i32* %14, align 4
  br label %162

159:                                              ; preds = %152
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @attack(i32 %160, i32* %15)
  store i32 %161, i32* %14, align 4
  br label %162

162:                                              ; preds = %159, %158
  call void @popgo()
  %163 = load i32, i32* %14, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %239

165:                                              ; preds = %162
  %166 = load %struct.pattern*, %struct.pattern** %8, align 8
  %167 = getelementptr inbounds %struct.pattern, %struct.pattern* %166, i32 0, i32 12
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 256
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %220

171:                                              ; preds = %165
  %172 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @aa_move_known(%struct.aa_move* %172, i32 %173, i32 0)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %220, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* @debug, align 4
  %178 = and i32 %177, 262144
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %176
  br label %190

181:                                              ; preds = %176
  %182 = load %struct.pattern*, %struct.pattern** %8, align 8
  %183 = getelementptr inbounds %struct.pattern, %struct.pattern* %182, i32 0, i32 3
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %9, align 4
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %14, align 4
  %189 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.36, i64 0, i64 0), i8* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  br label %190

190:                                              ; preds = %181, %180
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [400 x i32], [400 x i32]* @conditional_attack_point, i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %190
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [400 x i32], [400 x i32]* @conditional_attack_point, i64 0, i64 %199
  store i32 %197, i32* %200, align 4
  br label %219

201:                                              ; preds = %190
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [400 x i32], [400 x i32]* @conditional_attack_point, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %218

208:                                              ; preds = %201
  %209 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [400 x i32], [400 x i32]* @conditional_attack_point, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  call void @aa_add_move(%struct.aa_move* %209, i32 %210, i32 %214)
  %215 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* %13, align 4
  call void @aa_add_move(%struct.aa_move* %215, i32 %216, i32 %217)
  br label %218

218:                                              ; preds = %208, %201
  br label %219

219:                                              ; preds = %218, %196
  br label %238

220:                                              ; preds = %171, %165
  %221 = load %struct.aa_move*, %struct.aa_move** @current_attacks, align 8
  %222 = load i32, i32* %11, align 4
  %223 = load i32, i32* %13, align 4
  call void @aa_add_move(%struct.aa_move* %221, i32 %222, i32 %223)
  %224 = load i32, i32* @debug, align 4
  %225 = and i32 %224, 262144
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %220
  br label %237

228:                                              ; preds = %220
  %229 = load %struct.pattern*, %struct.pattern** %8, align 8
  %230 = getelementptr inbounds %struct.pattern, %struct.pattern* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* %13, align 4
  %234 = load i32, i32* %11, align 4
  %235 = load i32, i32* %14, align 4
  %236 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.37, i64 0, i64 0), i8* %231, i32 %232, i32 %233, i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %228, %227
  br label %238

238:                                              ; preds = %237, %219
  br label %239

239:                                              ; preds = %238, %162
  br label %240

240:                                              ; preds = %239, %146
  br label %241

241:                                              ; preds = %240, %75
  br label %242

242:                                              ; preds = %241, %144, %138, %122, %117, %110
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %69, !llvm.loop !38

245:                                              ; preds = %33, %49, %66, %69
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aa_move_known(%struct.aa_move* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.aa_move*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aa_move* %0, %struct.aa_move** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 361
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load %struct.aa_move*, %struct.aa_move** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %14, i64 %16
  %18 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %30, label %22

22:                                               ; preds = %13
  %23 = load %struct.aa_move*, %struct.aa_move** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %23, i64 %25
  %27 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22, %13
  br label %35

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %10, !llvm.loop !39

35:                                               ; preds = %30, %10
  %36 = load i32, i32* %8, align 4
  %37 = icmp eq i32 %36, 361
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  br label %104

39:                                               ; preds = %35
  %40 = load %struct.aa_move*, %struct.aa_move** %5, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %40, i64 %42
  %44 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %104

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %104

52:                                               ; preds = %48
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @find_origin(i32 %53)
  store i32 %54, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %83, %52
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %86

58:                                               ; preds = %55
  %59 = load %struct.aa_move*, %struct.aa_move** %5, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %59, i64 %61
  %63 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %62, i32 0, i32 1
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %63, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %58
  %71 = load %struct.aa_move*, %struct.aa_move** %5, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %71, i64 %73
  %75 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %74, i32 0, i32 1
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %75, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %70, %58
  br label %86

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %55, !llvm.loop !40

86:                                               ; preds = %81, %55
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 1, i32* %4, align 4
  br label %104

90:                                               ; preds = %86
  %91 = load %struct.aa_move*, %struct.aa_move** %5, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %91, i64 %93
  %95 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %94, i32 0, i32 1
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  store i32 1, i32* %4, align 4
  br label %104

103:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %103, %102, %89, %51, %47, %38
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @is_self_atari(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aa_add_move(%struct.aa_move* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aa_move*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aa_move* %0, %struct.aa_move** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %31, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 361
  br i1 %11, label %12, label %34

12:                                               ; preds = %9
  %13 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %13, i64 %15
  %17 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %29, label %21

21:                                               ; preds = %12
  %22 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %22, i64 %24
  %26 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21, %12
  br label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %9, !llvm.loop !41

34:                                               ; preds = %29, %9
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 361
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %149

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @find_origin(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %41, i64 %43
  %45 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %78

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %50, i64 %52
  %54 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %56, i64 %58
  %60 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %59, i32 0, i32 1
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i64 0, i64 0
  store i32 %55, i32* %61, align 4
  %62 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %62, i64 %64
  %66 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %65, i32 0, i32 1
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i64 0, i64 1
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 360
  br i1 %69, label %70, label %77

70:                                               ; preds = %48
  %71 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %71, i64 %74
  %76 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %70, %48
  br label %149

78:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %79

79:                                               ; preds = %107, %78
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %80, 4
  br i1 %81, label %82, label %110

82:                                               ; preds = %79
  %83 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %83, i64 %85
  %87 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %86, i32 0, i32 1
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %87, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %82
  %95 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %95, i64 %97
  %99 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %98, i32 0, i32 1
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %99, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %94, %82
  br label %110

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %79, !llvm.loop !42

110:                                              ; preds = %105, %79
  %111 = load i32, i32* %8, align 4
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %149

114:                                              ; preds = %110
  %115 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %115, i64 %117
  %119 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %118, i32 0, i32 1
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %119, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %114
  br label %149

127:                                              ; preds = %114
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %129, i64 %131
  %133 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %132, i32 0, i32 1
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %133, i64 0, i64 %135
  store i32 %128, i32* %136, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 3
  br i1 %138, label %139, label %149

139:                                              ; preds = %127
  %140 = load %struct.aa_move*, %struct.aa_move** %4, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %140, i64 %142
  %144 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %143, i32 0, i32 1
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %144, i64 0, i64 %147
  store i32 0, i32* %148, align 4
  br label %149

149:                                              ; preds = %37, %77, %113, %126, %139, %127
  ret void
}

declare dso_local void @gg_sort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_comp_func(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i32*
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @get_aa_value(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_aa_value(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %15, %16
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_comp_func(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aa_move*, align 8
  %6 = alloca %struct.aa_move*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.aa_move*
  store %struct.aa_move* %10, %struct.aa_move** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.aa_move*
  store %struct.aa_move* %12, %struct.aa_move** %6, align 8
  %13 = load %struct.aa_move*, %struct.aa_move** %5, align 8
  %14 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %13, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @get_aa_value(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.aa_move*, %struct.aa_move** %6, align 8
  %19 = getelementptr inbounds %struct.aa_move, %struct.aa_move* %18, i32 0, i32 1
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_aa_value(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 %23, %24
  ret i32 %25
}

declare dso_local i32 @chainlinks(i32, i32*) #1

declare dso_local i32 @countstones(i32) #1

declare dso_local i32 @whose_moyo(%struct.influence_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }

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
