; ModuleID = 'utils.c'
source_filename = "utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@board = external dso_local global [421 x i8], align 16
@.str = private unnamed_addr constant [15 x i8] c"defend_against\00", align 1
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@stackp = external dso_local global i32, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"does_attack-A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"does_attack-B\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"utils.c\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"spos != 0\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"does_defend-A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"does_defend-B\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"stackp == 0 || !check_alive\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"(ai == bi) ^ (aj == bj)\00", align 1
@board_size = external dso_local global i32, align 4
@.str.9 = private unnamed_addr constant [24 x i8] c"ON_BOARD1(pos + k * up)\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"play_break_through_n\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"play_attack_defend_n\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"play_connect_n\00", align 1
@set_depth_values.node_limits = internal global [12 x i32] [i32 500, i32 500, i32 450, i32 400, i32 400, i32 325, i32 275, i32 200, i32 150, i32 100, i32 75, i32 50], align 16
@depth = external dso_local global i32, align 4
@backfill_depth = external dso_local global i32, align 4
@backfill2_depth = external dso_local global i32, align 4
@branch_depth = external dso_local global i32, align 4
@owl_distrust_depth = external dso_local global i32, align 4
@owl_branch_depth = external dso_local global i32, align 4
@owl_reading_depth = external dso_local global i32, align 4
@urgent = external dso_local global i32, align 4
@aa_depth = external dso_local global i32, align 4
@ko_depth = external dso_local global i32, align 4
@fourlib_depth = external dso_local global i32, align 4
@superstring_depth = external dso_local global i32, align 4
@owl_node_limit = external dso_local global i32, align 4
@mandated_depth = external dso_local global i32, align 4
@mandated_backfill_depth = external dso_local global i32, align 4
@mandated_backfill2_depth = external dso_local global i32, align 4
@mandated_superstring_depth = external dso_local global i32, align 4
@mandated_fourlib_depth = external dso_local global i32, align 4
@mandated_ko_depth = external dso_local global i32, align 4
@mandated_branch_depth = external dso_local global i32, align 4
@mandated_aa_depth = external dso_local global i32, align 4
@mandated_owl_distrust_depth = external dso_local global i32, align 4
@mandated_owl_branch_depth = external dso_local global i32, align 4
@mandated_owl_reading_depth = external dso_local global i32, align 4
@mandated_owl_node_limit = external dso_local global i32, align 4
@save_depth = internal global i32 0, align 4
@save_backfill_depth = internal global i32 0, align 4
@save_backfill2_depth = internal global i32 0, align 4
@save_superstring_depth = internal global i32 0, align 4
@save_branch_depth = internal global i32 0, align 4
@save_fourlib_depth = internal global i32 0, align 4
@save_ko_depth = internal global i32 0, align 4
@verbose = external dso_local global i32, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"Checking safety of a %s move at %1m\0A\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(apos)\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Combination attack appears at %1m.\0A\00", align 1
@deltai = external dso_local global [8 x i32], align 16
@deltaj = external dso_local global [8 x i32], align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"double_atari\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"unconditional_life\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Result: jigo   \00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Result: %c+%.1f   \00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"n >= 0 && n < 4\00", align 1
@showtime = external dso_local global i32, align 4
@timers = dso_local global [4 x double] zeroinitializer, align 16
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%1m\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c": %.2f sec\0A\00", align 1
@random_seed = external dso_local global i32, align 4
@delta = external dso_local global [8 x i32], align 16
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@.str.25 = private unnamed_addr constant [35 x i8] c"Dragon at %1m becomes attackable.\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"After %1m Worm at %1m becomes attackable.\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"After %1m worm at %1m becomes defendable.\0A\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"No attack found (unexpectedly) on %1m after move at %1m.\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Double threat appears at %1m.\0A\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"mx[str] == 0\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"num_stones\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"num_libs\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"num_adj\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_dragon_status(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  store i32 21, i32* %5, align 4
  br label %12

12:                                               ; preds = %38, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 400
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %34, i32 0, i32 16
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %22
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %12, !llvm.loop !4

41:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defend_against(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @trymove(i32 %8, i32 %9, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub nsw i32 3, %14
  %16 = call i32 @safe_move(i32 %13, i32 %15)
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  call void @popgo()
  store i32 1, i32* %4, align 4
  br label %21

19:                                               ; preds = %12
  call void @popgo()
  br label %20

20:                                               ; preds = %19, %3
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %4, align 4
  ret i32 %22
}

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local void @popgo() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cut_possible(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %28

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i32 0, i32 11
  %13 = load i8, i8* %12, align 4
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %19, i32 0, i32 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = and i32 %22, 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %16, %8
  %26 = phi i1 [ true, %8 ], [ %24, %16 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %48

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %31, i32 0, i32 11
  %33 = load i8, i8* %32, align 4
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %39, i32 0, i32 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = and i32 %42, 4
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %36, %28
  %46 = phi i1 [ true, %28 ], [ %44, %36 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %25
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @does_attack(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 3, %17
  store i32 %18, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @stackp, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %24, i32 0, i32 16
  %26 = getelementptr inbounds [10 x i32], [10 x i32]* %25, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %32, i32 0, i32 18
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %33, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %97

38:                                               ; preds = %29, %21
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %41, i32 0, i32 17
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %42, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %55

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @attack_and_defend(i32 %46, i32* %9, i32* null, i32* %10, i32* %11)
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %97

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54, %38
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @trymove(i32 %56, i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 0, i32 0)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = icmp ne i8 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @find_defense(i32 %68, i32* null)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %94, label %71

71:                                               ; preds = %67, %61
  store i32 5, i32* %8, align 4
  call void @increase_depth_values()
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @trymove(i32 %75, i32 %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 0, i32 0)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @attack(i32 %88, i32* null)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %87, %80
  call void @popgo()
  br label %93

93:                                               ; preds = %92, %74, %71
  call void @decrease_depth_values()
  br label %94

94:                                               ; preds = %93, %67
  call void @popgo()
  br label %95

95:                                               ; preds = %94, %55
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %53, %37
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @attack_and_defend(i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @find_defense(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @increase_depth_values() #0 {
  call void @modify_depth_values(i32 1)
  ret void
}

declare dso_local i32 @attack(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decrease_depth_values() #0 {
  call void @modify_depth_values(i32 -1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @does_defend(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 3, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* @stackp, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %22, i32 0, i32 16
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %79

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %31, i32 0, i32 15
  %33 = getelementptr inbounds [10 x i32], [10 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %28
  br label %42

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @attack(i32 %37, i32* %9)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %79

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 -1, i32 -1)
  br label %47

47:                                               ; preds = %46, %45
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @trymove(i32 %48, i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %50, i32 0, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @attack(i32 %54, i32* null)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  store i32 1, i32* %8, align 4
  call void @increase_depth_values()
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @trymove(i32 %58, i32 %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %60, i32 0, i32 0)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @find_defense(i32 %70, i32* null)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69, %63
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %73, %69
  call void @popgo()
  br label %75

75:                                               ; preds = %74, %57
  call void @decrease_depth_values()
  br label %76

76:                                               ; preds = %75, %53
  call void @popgo()
  br label %77

77:                                               ; preds = %76, %47
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %40, %27
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @somewhere(i32 %0, i32 %1, i32 %2, ...) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [1 x %struct.__va_list_tag], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @stackp, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13, %3
  br label %18

17:                                               ; preds = %13
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 197, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 -1, i32 -1)
  br label %18

18:                                               ; preds = %17, %16
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %20 = bitcast %struct.__va_list_tag* %19 to i8*
  call void @llvm.va_start(i8* %20)
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %63, %18
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %21
  %26 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %8, i64 0, i64 0
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 16
  %29 = icmp ule i32 %28, 40
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 3
  %32 = load i8*, i8** %31, align 16
  %33 = getelementptr i8, i8* %32, i32 %28
  %34 = bitcast i8* %33 to i32*
  %35 = add i32 %28, 8
  store i32 %35, i32* %27, align 16
  br label %41

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %26, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr i8, i8* %38, i32 8
  store i8* %40, i8** %37, align 8
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i32* [ %34, %30 ], [ %39, %36 ]
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %57, i32 0, i32 16
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %51
  store i32 1, i32* %4, align 4
  br label %67

62:                                               ; preds = %54, %41
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %10, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %10, align 4
  br label %21, !llvm.loop !6

66:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @visible_along_edge(i32 %0, i32 %1, i32 %2) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sdiv i32 %22, 20
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = srem i32 %25, 20
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = xor i32 %31, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %3
  br label %46

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = sdiv i32 %40, 20
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %6, align 4
  %44 = srem i32 %43, 20
  %45 = sub nsw i32 %44, 1
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 229, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i32 %42, i32 %45)
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %46
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 -1, i32* %13, align 4
  br label %56

55:                                               ; preds = %50
  store i32 1, i32* %13, align 4
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @board_size, align 4
  %59 = sdiv i32 %58, 2
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 21, %62
  store i32 %63, i32* %12, align 4
  store i32 20, i32* %14, align 4
  br label %71

64:                                               ; preds = %56
  %65 = load i32, i32* @board_size, align 4
  %66 = sub nsw i32 %65, 1
  %67 = mul nsw i32 %66, 20
  %68 = add nsw i32 21, %67
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %12, align 4
  store i32 -20, i32* %14, align 4
  br label %71

71:                                               ; preds = %64, %61
  br label %96

72:                                               ; preds = %46
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 -20, i32* %13, align 4
  br label %78

77:                                               ; preds = %72
  store i32 20, i32* %13, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @board_size, align 4
  %81 = sdiv i32 %80, 2
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = mul nsw i32 %84, 20
  %86 = add nsw i32 21, %85
  %87 = add nsw i32 %86, 0
  store i32 %87, i32* %12, align 4
  store i32 1, i32* %14, align 4
  br label %95

88:                                               ; preds = %78
  %89 = load i32, i32* %10, align 4
  %90 = mul nsw i32 %89, 20
  %91 = add nsw i32 21, %90
  %92 = load i32, i32* @board_size, align 4
  %93 = sub nsw i32 %92, 1
  %94 = add nsw i32 %91, %93
  store i32 %94, i32* %12, align 4
  store i32 -1, i32* %14, align 4
  br label %95

95:                                               ; preds = %88, %83
  br label %96

96:                                               ; preds = %95, %71
  br label %97

97:                                               ; preds = %175, %96
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 3
  br i1 %103, label %104, label %179

104:                                              ; preds = %97
  store i32 4, i32* %15, align 4
  br label %105

105:                                              ; preds = %171, %104
  %106 = load i32, i32* %15, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %174

108:                                              ; preds = %105
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %109, %112
  %114 = icmp ult i32 %113, 421
  br i1 %114, label %115, label %127

115:                                              ; preds = %108
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %14, align 4
  %119 = mul nsw i32 %117, %118
  %120 = add nsw i32 %116, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 3
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %142

127:                                              ; preds = %115, %108
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* %14, align 4
  %131 = mul nsw i32 %129, %130
  %132 = add nsw i32 %128, %131
  %133 = sdiv i32 %132, 20
  %134 = sub nsw i32 %133, 1
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %14, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %135, %138
  %140 = srem i32 %139, 20
  %141 = sub nsw i32 %140, 1
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 265, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %134, i32 %141)
  br label %142

142:                                              ; preds = %127, %126
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %15, align 4
  %145 = load i32, i32* %14, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %143, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  store i32 1, i32* %4, align 4
  br label %180

155:                                              ; preds = %142
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %156, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = load i32, i32* %5, align 4
  %166 = sub nsw i32 3, %165
  %167 = icmp eq i32 %164, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %180

169:                                              ; preds = %155
  br label %170

170:                                              ; preds = %169
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %15, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %15, align 4
  br label %105, !llvm.loop !7

174:                                              ; preds = %105
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %13, align 4
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, %176
  store i32 %178, i32* %12, align 4
  br label %97, !llvm.loop !8

179:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %179, %168, %154
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @play_break_through_n(i32 %0, i32 %1, ...) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %16 = bitcast %struct.__va_list_tag* %15 to i8*
  call void @llvm.va_start(i8* %16)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %58, %2
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %17
  %22 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 16
  %25 = icmp ule i32 %24, 40
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 3
  %28 = load i8*, i8** %27, align 16
  %29 = getelementptr i8, i8* %28, i32 %24
  %30 = bitcast i8* %29 to i32*
  %31 = add i32 %24, 8
  store i32 %31, i32* %23, align 16
  br label %37

32:                                               ; preds = %21
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %22, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr i8, i8* %34, i32 8
  store i8* %36, i8** %33, align 8
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i32* [ %30, %26 ], [ %35, %32 ]
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @trymove(i32 %43, i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0, i32 0)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @tryko(i32 %48, i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 0, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47, %42
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %47, %37
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 3, %56
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %17, !llvm.loop !9

61:                                               ; preds = %17
  %62 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 16
  %65 = icmp ule i32 %64, 40
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %62, i32 0, i32 3
  %68 = load i8*, i8** %67, align 16
  %69 = getelementptr i8, i8* %68, i32 %64
  %70 = bitcast i8* %69 to i32*
  %71 = add i32 %64, 8
  store i32 %71, i32* %63, align 16
  br label %77

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %62, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = bitcast i8* %74 to i32*
  %76 = getelementptr i8, i8* %74, i32 8
  store i8* %76, i8** %73, align 8
  br label %77

77:                                               ; preds = %72, %66
  %78 = phi i32* [ %70, %66 ], [ %75, %72 ]
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  %80 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 16
  %83 = icmp ule i32 %82, 40
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 3
  %86 = load i8*, i8** %85, align 16
  %87 = getelementptr i8, i8* %86, i32 %82
  %88 = bitcast i8* %87 to i32*
  %89 = add i32 %82, 8
  store i32 %89, i32* %81, align 16
  br label %95

90:                                               ; preds = %77
  %91 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %80, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = bitcast i8* %92 to i32*
  %94 = getelementptr i8, i8* %92, i32 8
  store i8* %94, i8** %91, align 8
  br label %95

95:                                               ; preds = %90, %84
  %96 = phi i32* [ %88, %84 ], [ %93, %90 ]
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %12, align 4
  %98 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 16
  %101 = icmp ule i32 %100, 40
  br i1 %101, label %102, label %108

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %98, i32 0, i32 3
  %104 = load i8*, i8** %103, align 16
  %105 = getelementptr i8, i8* %104, i32 %100
  %106 = bitcast i8* %105 to i32*
  %107 = add i32 %100, 8
  store i32 %107, i32* %99, align 16
  br label %113

108:                                              ; preds = %95
  %109 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %98, i32 0, i32 2
  %110 = load i8*, i8** %109, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = getelementptr i8, i8* %110, i32 8
  store i8* %112, i8** %109, align 8
  br label %113

113:                                              ; preds = %108, %102
  %114 = phi i32* [ %106, %102 ], [ %111, %108 ]
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129, %122, %113
  store i32 1, i32* %7, align 4
  br label %142

137:                                              ; preds = %129
  %138 = load i32, i32* %11, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @break_through(i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %137, %136
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %148, %142
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  call void @popgo()
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %143, !llvm.loop !10

151:                                              ; preds = %143
  %152 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %153 = bitcast %struct.__va_list_tag* %152 to i8*
  call void @llvm.va_end(i8* %153)
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i32 @tryko(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @break_through(i32, i32, i32) #1

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @play_attack_defend_n(i32 %0, i32 %1, i32 %2, ...) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_start(i8* %17)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %59, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 16
  %26 = icmp ule i32 %25, 40
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 3
  %29 = load i8*, i8** %28, align 16
  %30 = getelementptr i8, i8* %29, i32 %25
  %31 = bitcast i8* %30 to i32*
  %32 = add i32 %25, 8
  store i32 %32, i32* %24, align 16
  br label %38

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr i8, i8* %35, i32 8
  store i8* %37, i8** %34, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i32* [ %31, %27 ], [ %36, %33 ]
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @trymove(i32 %44, i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tryko(i32 %49, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %48, %38
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 3, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %18, !llvm.loop !11

62:                                               ; preds = %18
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 16
  %66 = icmp ule i32 %65, 40
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 3
  %69 = load i8*, i8** %68, align 16
  %70 = getelementptr i8, i8* %69, i32 %65
  %71 = bitcast i8* %70 to i32*
  %72 = add i32 %65, 8
  store i32 %72, i32* %64, align 16
  br label %78

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = getelementptr i8, i8* %75, i32 8
  store i8* %77, i8** %74, align 8
  br label %78

78:                                               ; preds = %73, %67
  %79 = phi i32* [ %71, %67 ], [ %76, %73 ]
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %78
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 5, i32* %9, align 4
  br label %94

91:                                               ; preds = %83
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @attack(i32 %92, i32* null)
  store i32 %93, i32* %9, align 4
  br label %94

94:                                               ; preds = %91, %90
  br label %117

95:                                               ; preds = %78
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 0, i32* %9, align 4
  br label %116

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @find_defense(i32 %104, i32* null)
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @attack(i32 %109, i32* null)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %108
  store i32 5, i32* %9, align 4
  br label %115

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %113, %112
  br label %116

116:                                              ; preds = %115, %102
  br label %117

117:                                              ; preds = %116, %94
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %123, %117
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  call void @popgo()
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %118, !llvm.loop !12

126:                                              ; preds = %118
  %127 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %128 = bitcast %struct.__va_list_tag* %127 to i8*
  call void @llvm.va_end(i8* %128)
  %129 = load i32, i32* %9, align 4
  ret i32 %129
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @play_attack_defend2_n(i32 %0, i32 %1, i32 %2, ...) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_start(i8* %17)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %59, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 16
  %26 = icmp ule i32 %25, 40
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 3
  %29 = load i8*, i8** %28, align 16
  %30 = getelementptr i8, i8* %29, i32 %25
  %31 = bitcast i8* %30 to i32*
  %32 = add i32 %25, 8
  store i32 %32, i32* %24, align 16
  br label %38

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr i8, i8* %35, i32 8
  store i8* %37, i8** %34, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i32* [ %31, %27 ], [ %36, %33 ]
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @trymove(i32 %44, i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tryko(i32 %49, i32 %50, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 0, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %48, %38
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 3, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %18, !llvm.loop !13

62:                                               ; preds = %18
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 16
  %66 = icmp ule i32 %65, 40
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 3
  %69 = load i8*, i8** %68, align 16
  %70 = getelementptr i8, i8* %69, i32 %65
  %71 = bitcast i8* %70 to i32*
  %72 = add i32 %65, 8
  store i32 %72, i32* %64, align 16
  br label %78

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = getelementptr i8, i8* %75, i32 8
  store i8* %77, i8** %74, align 8
  br label %78

78:                                               ; preds = %73, %67
  %79 = phi i32* [ %71, %67 ], [ %76, %73 ]
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  %81 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 16
  %84 = icmp ule i32 %83, 40
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 3
  %87 = load i8*, i8** %86, align 16
  %88 = getelementptr i8, i8* %87, i32 %83
  %89 = bitcast i8* %88 to i32*
  %90 = add i32 %83, 8
  store i32 %90, i32* %82, align 16
  br label %96

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = getelementptr i8, i8* %93, i32 8
  store i8* %95, i8** %92, align 8
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i32* [ %89, %85 ], [ %94, %91 ]
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %101
  store i32 5, i32* %9, align 4
  br label %120

116:                                              ; preds = %108
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @attack_either(i32 %117, i32 %118)
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %115
  br label %141

121:                                              ; preds = %96
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128, %121
  store i32 0, i32* %9, align 4
  br label %140

136:                                              ; preds = %128
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @defend_both(i32 %137, i32 %138)
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %136, %135
  br label %141

141:                                              ; preds = %140, %120
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %147, %141
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  call void @popgo()
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %142, !llvm.loop !14

150:                                              ; preds = %142
  %151 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %152 = bitcast %struct.__va_list_tag* %151 to i8*
  call void @llvm.va_end(i8* %152)
  %153 = load i32, i32* %9, align 4
  ret i32 %153
}

declare dso_local i32 @attack_either(i32, i32) #1

declare dso_local i32 @defend_both(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @play_connect_n(i32 %0, i32 %1, i32 %2, ...) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %17 = bitcast %struct.__va_list_tag* %16 to i8*
  call void @llvm.va_start(i8* %17)
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %59, %3
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %18
  %23 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 16
  %26 = icmp ule i32 %25, 40
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 3
  %29 = load i8*, i8** %28, align 16
  %30 = getelementptr i8, i8* %29, i32 %25
  %31 = bitcast i8* %30 to i32*
  %32 = add i32 %25, 8
  store i32 %32, i32* %24, align 16
  br label %38

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %23, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr i8, i8* %35, i32 8
  store i8* %37, i8** %34, align 8
  br label %38

38:                                               ; preds = %33, %27
  %39 = phi i32* [ %31, %27 ], [ %36, %33 ]
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @trymove(i32 %44, i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 0, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tryko(i32 %49, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0), i32 0, i32 0)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %53, %48, %38
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 3, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %18, !llvm.loop !15

62:                                               ; preds = %18
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 16
  %66 = icmp ule i32 %65, 40
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 3
  %69 = load i8*, i8** %68, align 16
  %70 = getelementptr i8, i8* %69, i32 %65
  %71 = bitcast i8* %70 to i32*
  %72 = add i32 %65, 8
  store i32 %72, i32* %64, align 16
  br label %78

73:                                               ; preds = %62
  %74 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %63, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = bitcast i8* %75 to i32*
  %77 = getelementptr i8, i8* %75, i32 8
  store i8* %77, i8** %74, align 8
  br label %78

78:                                               ; preds = %73, %67
  %79 = phi i32* [ %71, %67 ], [ %76, %73 ]
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %13, align 4
  %81 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %82 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 16
  %84 = icmp ule i32 %83, 40
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 3
  %87 = load i8*, i8** %86, align 16
  %88 = getelementptr i8, i8* %87, i32 %83
  %89 = bitcast i8* %88 to i32*
  %90 = add i32 %83, 8
  store i32 %90, i32* %82, align 16
  br label %96

91:                                               ; preds = %78
  %92 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %81, i32 0, i32 2
  %93 = load i8*, i8** %92, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = getelementptr i8, i8* %93, i32 8
  store i8* %95, i8** %92, align 8
  br label %96

96:                                               ; preds = %91, %85
  %97 = phi i32* [ %89, %85 ], [ %94, %91 ]
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %121

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %14, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %108, %101
  store i32 0, i32* %9, align 4
  br label %120

116:                                              ; preds = %108
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @string_connect(i32 %117, i32 %118, i32* null)
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %115
  br label %141

121:                                              ; preds = %96
  %122 = load i32, i32* %13, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %128, %121
  store i32 5, i32* %9, align 4
  br label %140

136:                                              ; preds = %128
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @disconnect(i32 %137, i32 %138, i32* null)
  store i32 %139, i32* %9, align 4
  br label %140

140:                                              ; preds = %136, %135
  br label %141

141:                                              ; preds = %140, %120
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %147, %141
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  call void @popgo()
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %10, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %10, align 4
  br label %142, !llvm.loop !16

150:                                              ; preds = %142
  %151 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %152 = bitcast %struct.__va_list_tag* %151 to i8*
  call void @llvm.va_end(i8* %152)
  %153 = load i32, i32* %9, align 4
  ret i32 %153
}

declare dso_local i32 @string_connect(i32, i32, i32*) #1

declare dso_local i32 @disconnect(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_depth_values(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sge i32 %4, 10
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sub nsw i32 %7, 10
  store i32 %8, i32* %3, align 4
  br label %19

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = icmp sge i32 %10, 8
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 %13, 9
  store i32 %14, i32* %3, align 4
  br label %18

15:                                               ; preds = %9
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 %16, 8
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %15, %12
  br label %19

19:                                               ; preds = %18, %6
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 16, %20
  %22 = icmp slt i32 6, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 16, %24
  br label %27

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 6, %26 ]
  store i32 %28, i32* @depth, align 4
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 12, %29
  %31 = icmp slt i32 2, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 12, %33
  br label %36

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ 2, %35 ]
  store i32 %37, i32* @backfill_depth, align 4
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 5, %38
  %40 = icmp slt i32 1, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 5, %42
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %41
  %46 = phi i32 [ %43, %41 ], [ 1, %44 ]
  store i32 %46, i32* @backfill2_depth, align 4
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 13, %47
  %49 = icmp slt i32 3, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 13, %51
  br label %54

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 3, %53 ]
  store i32 %55, i32* @branch_depth, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp sge i32 %56, 8
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 12, %59
  %61 = sdiv i32 %60, 2
  %62 = icmp slt i32 1, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 12, %64
  %66 = sdiv i32 %65, 2
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %63
  %69 = phi i32 [ %66, %63 ], [ 1, %67 ]
  store i32 %69, i32* @owl_distrust_depth, align 4
  br label %82

70:                                               ; preds = %54
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 11, %71
  %73 = sdiv i32 %72, 2
  %74 = icmp slt i32 1, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 11, %76
  %78 = sdiv i32 %77, 2
  br label %80

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %75
  %81 = phi i32 [ %78, %75 ], [ 1, %79 ]
  store i32 %81, i32* @owl_distrust_depth, align 4
  br label %82

82:                                               ; preds = %80, %68
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 16, %83
  %85 = sdiv i32 %84, 2
  %86 = icmp slt i32 2, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 16, %88
  %90 = sdiv i32 %89, 2
  br label %92

91:                                               ; preds = %82
  br label %92

92:                                               ; preds = %91, %87
  %93 = phi i32 [ %90, %87 ], [ 2, %91 ]
  store i32 %93, i32* @owl_branch_depth, align 4
  %94 = load i32, i32* %3, align 4
  %95 = add nsw i32 40, %94
  %96 = sdiv i32 %95, 2
  %97 = icmp slt i32 5, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 40, %99
  %101 = sdiv i32 %100, 2
  br label %103

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i32 [ %101, %98 ], [ 5, %102 ]
  store i32 %104, i32* @owl_reading_depth, align 4
  store i32 0, i32* @urgent, align 4
  %105 = load i32, i32* %2, align 4
  %106 = icmp sge i32 %105, 8
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i32, i32* %2, align 4
  %109 = sub nsw i32 %108, 10
  %110 = add nsw i32 6, %109
  %111 = icmp slt i32 0, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* %2, align 4
  %114 = sub nsw i32 %113, 10
  %115 = add nsw i32 6, %114
  br label %117

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %112
  %118 = phi i32 [ %115, %112 ], [ 0, %116 ]
  store i32 %118, i32* @aa_depth, align 4
  br label %131

119:                                              ; preds = %103
  %120 = load i32, i32* %2, align 4
  %121 = sub nsw i32 %120, 9
  %122 = add nsw i32 6, %121
  %123 = icmp slt i32 0, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* %2, align 4
  %126 = sub nsw i32 %125, 9
  %127 = add nsw i32 6, %126
  br label %129

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %124
  %130 = phi i32 [ %127, %124 ], [ 0, %128 ]
  store i32 %130, i32* @aa_depth, align 4
  br label %131

131:                                              ; preds = %129, %117
  %132 = load i32, i32* %2, align 4
  %133 = icmp sge i32 %132, 10
  br i1 %133, label %134, label %146

134:                                              ; preds = %131
  %135 = load i32, i32* %2, align 4
  %136 = sub nsw i32 %135, 10
  %137 = add nsw i32 8, %136
  %138 = icmp slt i32 1, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load i32, i32* %2, align 4
  %141 = sub nsw i32 %140, 10
  %142 = add nsw i32 8, %141
  br label %144

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %139
  %145 = phi i32 [ %142, %139 ], [ 1, %143 ]
  store i32 %145, i32* @ko_depth, align 4
  br label %174

146:                                              ; preds = %131
  %147 = load i32, i32* %2, align 4
  %148 = icmp ne i32 %147, 7
  br i1 %148, label %149, label %161

149:                                              ; preds = %146
  %150 = load i32, i32* %2, align 4
  %151 = sub nsw i32 %150, 9
  %152 = add nsw i32 8, %151
  %153 = icmp slt i32 1, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* %2, align 4
  %156 = sub nsw i32 %155, 9
  %157 = add nsw i32 8, %156
  br label %159

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %154
  %160 = phi i32 [ %157, %154 ], [ 1, %158 ]
  store i32 %160, i32* @ko_depth, align 4
  br label %173

161:                                              ; preds = %146
  %162 = load i32, i32* %2, align 4
  %163 = sub nsw i32 %162, 8
  %164 = add nsw i32 8, %163
  %165 = icmp slt i32 1, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  %167 = load i32, i32* %2, align 4
  %168 = sub nsw i32 %167, 8
  %169 = add nsw i32 8, %168
  br label %171

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %166
  %172 = phi i32 [ %169, %166 ], [ 1, %170 ]
  store i32 %172, i32* @ko_depth, align 4
  br label %173

173:                                              ; preds = %171, %159
  br label %174

174:                                              ; preds = %173, %144
  %175 = load i32, i32* %2, align 4
  %176 = icmp sge i32 %175, 10
  br i1 %176, label %177, label %189

177:                                              ; preds = %174
  %178 = load i32, i32* %2, align 4
  %179 = sub nsw i32 %178, 10
  %180 = add nsw i32 7, %179
  %181 = icmp slt i32 1, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %177
  %183 = load i32, i32* %2, align 4
  %184 = sub nsw i32 %183, 10
  %185 = add nsw i32 7, %184
  br label %187

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %186, %182
  %188 = phi i32 [ %185, %182 ], [ 1, %186 ]
  store i32 %188, i32* @fourlib_depth, align 4
  br label %206

189:                                              ; preds = %174
  %190 = load i32, i32* %2, align 4
  %191 = icmp sge i32 %190, 7
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  store i32 7, i32* @fourlib_depth, align 4
  br label %205

193:                                              ; preds = %189
  %194 = load i32, i32* %2, align 4
  %195 = sub nsw i32 %194, 7
  %196 = add nsw i32 7, %195
  %197 = icmp slt i32 1, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %193
  %199 = load i32, i32* %2, align 4
  %200 = sub nsw i32 %199, 7
  %201 = add nsw i32 7, %200
  br label %203

202:                                              ; preds = %193
  br label %203

203:                                              ; preds = %202, %198
  %204 = phi i32 [ %201, %198 ], [ 1, %202 ]
  store i32 %204, i32* @fourlib_depth, align 4
  br label %205

205:                                              ; preds = %203, %192
  br label %206

206:                                              ; preds = %205, %187
  %207 = load i32, i32* %2, align 4
  %208 = icmp sge i32 %207, 10
  br i1 %208, label %209, label %226

209:                                              ; preds = %206
  %210 = load i32, i32* %2, align 4
  %211 = sub nsw i32 %210, 10
  %212 = add nsw i32 7, %211
  %213 = icmp slt i32 1, %212
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i32, i32* %2, align 4
  %216 = sub nsw i32 %215, 10
  %217 = add nsw i32 7, %216
  br label %219

218:                                              ; preds = %209
  br label %219

219:                                              ; preds = %218, %214
  %220 = phi i32 [ %217, %214 ], [ 1, %218 ]
  store i32 %220, i32* @superstring_depth, align 4
  %221 = load i32, i32* %3, align 4
  %222 = sitofp i32 %221 to double
  %223 = call double @pow(double 1.500000e+00, double %222) #6
  %224 = fmul double 1.000000e+03, %223
  %225 = fptosi double %224 to i32
  store i32 %225, i32* @owl_node_limit, align 4
  br label %242

226:                                              ; preds = %206
  store i32 0, i32* @superstring_depth, align 4
  %227 = load i32, i32* %2, align 4
  %228 = sub nsw i32 10, %227
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [12 x i32], [12 x i32]* @set_depth_values.node_limits, i64 0, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 1000, %231
  %233 = load i32, i32* getelementptr inbounds ([12 x i32], [12 x i32]* @set_depth_values.node_limits, i64 0, i64 0), align 16
  %234 = sdiv i32 %232, %233
  store i32 %234, i32* @owl_node_limit, align 4
  %235 = load i32, i32* @owl_node_limit, align 4
  %236 = icmp slt i32 20, %235
  br i1 %236, label %237, label %239

237:                                              ; preds = %226
  %238 = load i32, i32* @owl_node_limit, align 4
  br label %240

239:                                              ; preds = %226
  br label %240

240:                                              ; preds = %239, %237
  %241 = phi i32 [ %238, %237 ], [ 20, %239 ]
  store i32 %241, i32* @owl_node_limit, align 4
  br label %242

242:                                              ; preds = %240, %219
  %243 = load i32, i32* @mandated_depth, align 4
  %244 = icmp ne i32 %243, -1
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = load i32, i32* @mandated_depth, align 4
  store i32 %246, i32* @depth, align 4
  br label %247

247:                                              ; preds = %245, %242
  %248 = load i32, i32* @mandated_backfill_depth, align 4
  %249 = icmp ne i32 %248, -1
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load i32, i32* @mandated_backfill_depth, align 4
  store i32 %251, i32* @backfill_depth, align 4
  br label %252

252:                                              ; preds = %250, %247
  %253 = load i32, i32* @mandated_backfill2_depth, align 4
  %254 = icmp ne i32 %253, -1
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = load i32, i32* @mandated_backfill2_depth, align 4
  store i32 %256, i32* @backfill2_depth, align 4
  br label %257

257:                                              ; preds = %255, %252
  %258 = load i32, i32* @mandated_superstring_depth, align 4
  %259 = icmp ne i32 %258, -1
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = load i32, i32* @mandated_superstring_depth, align 4
  store i32 %261, i32* @superstring_depth, align 4
  br label %262

262:                                              ; preds = %260, %257
  %263 = load i32, i32* @mandated_fourlib_depth, align 4
  %264 = icmp ne i32 %263, -1
  br i1 %264, label %265, label %267

265:                                              ; preds = %262
  %266 = load i32, i32* @mandated_fourlib_depth, align 4
  store i32 %266, i32* @fourlib_depth, align 4
  br label %267

267:                                              ; preds = %265, %262
  %268 = load i32, i32* @mandated_ko_depth, align 4
  %269 = icmp ne i32 %268, -1
  br i1 %269, label %270, label %272

270:                                              ; preds = %267
  %271 = load i32, i32* @mandated_ko_depth, align 4
  store i32 %271, i32* @ko_depth, align 4
  br label %272

272:                                              ; preds = %270, %267
  %273 = load i32, i32* @mandated_branch_depth, align 4
  %274 = icmp ne i32 %273, -1
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32, i32* @mandated_branch_depth, align 4
  store i32 %276, i32* @branch_depth, align 4
  br label %277

277:                                              ; preds = %275, %272
  %278 = load i32, i32* @mandated_aa_depth, align 4
  %279 = icmp ne i32 %278, -1
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = load i32, i32* @mandated_aa_depth, align 4
  store i32 %281, i32* @aa_depth, align 4
  br label %282

282:                                              ; preds = %280, %277
  %283 = load i32, i32* @mandated_owl_distrust_depth, align 4
  %284 = icmp ne i32 %283, -1
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = load i32, i32* @mandated_owl_distrust_depth, align 4
  store i32 %286, i32* @owl_distrust_depth, align 4
  br label %287

287:                                              ; preds = %285, %282
  %288 = load i32, i32* @mandated_owl_branch_depth, align 4
  %289 = icmp ne i32 %288, -1
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32, i32* @mandated_owl_branch_depth, align 4
  store i32 %291, i32* @owl_branch_depth, align 4
  br label %292

292:                                              ; preds = %290, %287
  %293 = load i32, i32* @mandated_owl_reading_depth, align 4
  %294 = icmp ne i32 %293, -1
  br i1 %294, label %295, label %297

295:                                              ; preds = %292
  %296 = load i32, i32* @mandated_owl_reading_depth, align 4
  store i32 %296, i32* @owl_reading_depth, align 4
  br label %297

297:                                              ; preds = %295, %292
  %298 = load i32, i32* @mandated_owl_node_limit, align 4
  %299 = icmp ne i32 %298, -1
  br i1 %299, label %300, label %302

300:                                              ; preds = %297
  %301 = load i32, i32* @mandated_owl_node_limit, align 4
  store i32 %301, i32* @owl_node_limit, align 4
  br label %302

302:                                              ; preds = %300, %297
  ret void
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modify_depth_values(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @depth, align 4
  %5 = add nsw i32 %4, %3
  store i32 %5, i32* @depth, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @backfill_depth, align 4
  %8 = add nsw i32 %7, %6
  store i32 %8, i32* @backfill_depth, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @backfill2_depth, align 4
  %11 = add nsw i32 %10, %9
  store i32 %11, i32* @backfill2_depth, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @superstring_depth, align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* @superstring_depth, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @branch_depth, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* @branch_depth, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* @fourlib_depth, align 4
  %20 = add nsw i32 %19, %18
  store i32 %20, i32* @fourlib_depth, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @ko_depth, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* @ko_depth, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_temporary_depth_values(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32, i32* @depth, align 4
  store i32 %15, i32* @save_depth, align 4
  %16 = load i32, i32* @backfill_depth, align 4
  store i32 %16, i32* @save_backfill_depth, align 4
  %17 = load i32, i32* @backfill2_depth, align 4
  store i32 %17, i32* @save_backfill2_depth, align 4
  %18 = load i32, i32* @superstring_depth, align 4
  store i32 %18, i32* @save_superstring_depth, align 4
  %19 = load i32, i32* @branch_depth, align 4
  store i32 %19, i32* @save_branch_depth, align 4
  %20 = load i32, i32* @fourlib_depth, align 4
  store i32 %20, i32* @save_fourlib_depth, align 4
  %21 = load i32, i32* @ko_depth, align 4
  store i32 %21, i32* @save_ko_depth, align 4
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* @depth, align 4
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* @backfill_depth, align 4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* @backfill2_depth, align 4
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* @superstring_depth, align 4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* @branch_depth, align 4
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* @fourlib_depth, align 4
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* @ko_depth, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @restore_depth_values() #0 {
  %1 = load i32, i32* @save_depth, align 4
  store i32 %1, i32* @depth, align 4
  %2 = load i32, i32* @save_backfill_depth, align 4
  store i32 %2, i32* @backfill_depth, align 4
  %3 = load i32, i32* @save_backfill2_depth, align 4
  store i32 %3, i32* @backfill2_depth, align 4
  %4 = load i32, i32* @save_superstring_depth, align 4
  store i32 %4, i32* @superstring_depth, align 4
  %5 = load i32, i32* @save_branch_depth, align 4
  store i32 %5, i32* @branch_depth, align 4
  %6 = load i32, i32* @save_fourlib_depth, align 4
  store i32 %6, i32* @fourlib_depth, align 4
  %7 = load i32, i32* @save_ko_depth, align 4
  store i32 %7, i32* @ko_depth, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @confirm_safety(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call float @blunder_size(i32 %9, i32 %10, i32* %11, i8* %12)
  %14 = fpext float %13 to double
  %15 = fcmp oeq double %14, 0.000000e+00
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @blunder_size(i32 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [5 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %19 = call i32 @accuratelib(i32 %16, i32 %17, i32 5, i32* %18)
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @verbose, align 4
  store i32 %20, i32* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %4
  %26 = load i32, i32* @verbose, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  br label %34

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = call i8* @color_to_string(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %28
  %35 = load i32, i32* @verbose, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @verbose, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @verbose, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @detect_owl_blunder(i32 %41, i32 %42, i32* %43, i8* %44, i32 %45, float* %14, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* %10, align 4
  %56 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %57 = load i32, i32* %13, align 4
  call void @detect_tactical_blunder(i32 %51, i32 %52, i32* %53, i8* %54, i32 %55, i32* %56, float* %14, i32 %57)
  br label %58

58:                                               ; preds = %50, %40
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @atari_atari_blunder_size(i32 %59, i32 %60, i32* %11, i8* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %58
  %66 = load i32, i32* %11, align 4
  %67 = icmp ult i32 %66, 421
  br i1 %67, label %68, label %76

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %73, 3
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %83

76:                                               ; preds = %68, %65
  %77 = load i32, i32* %11, align 4
  %78 = sdiv i32 %77, 20
  %79 = sub nsw i32 %78, 1
  %80 = load i32, i32* %11, align 4
  %81 = srem i32 %80, 20
  %82 = sub nsw i32 %81, 1
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 862, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %79, i32 %82)
  br label %83

83:                                               ; preds = %76, %75
  %84 = load i32*, i32** %7, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %7, align 8
  store i32 %87, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* @verbose, align 4
  %91 = load i32, i32* @verbose, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  br label %97

94:                                               ; preds = %89
  %95 = load i32, i32* %11, align 4
  %96 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.15, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %93
  %98 = load i32, i32* %15, align 4
  %99 = sitofp i32 %98 to float
  %100 = load float, float* %14, align 4
  %101 = fadd float %100, %99
  store float %101, float* %14, align 4
  br label %102

102:                                              ; preds = %97, %58
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* @verbose, align 4
  %104 = load float, float* %14, align 4
  ret float %104
}

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local i8* @color_to_string(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_owl_blunder(i32 %0, i32 %1, i32* %2, i8* %3, i32 %4, float* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [4 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store float* %5, float** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %26 = bitcast [4 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 16, i1 false)
  %27 = load i32, i32* @verbose, align 4
  store i32 %27, i32* %19, align 4
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %350, %7
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 4
  br i1 %30, label %31, label %353

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %32, %36
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %350

46:                                               ; preds = %31
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %20, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %47, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = load i32, i32* %12, align 4
  %56 = icmp sle i32 %55, 4
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 1, i32* %17, align 4
  br label %76

58:                                               ; preds = %54, %46
  %59 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %59, i64 %65
  %67 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %66, i32 0, i32 10
  %68 = call i32 @min_eyes(%struct.eyevalue* %67)
  %69 = icmp sgt i32 %68, 2
  br i1 %69, label %74, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @is_proper_eye_space(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70, %58
  br label %350

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %57
  store i32 0, i32* %21, align 4
  br label %77

77:                                               ; preds = %94, %76
  %78 = load i32, i32* %21, align 4
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load i32, i32* %21, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %85, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %97

93:                                               ; preds = %81
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %21, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %21, align 4
  br label %77, !llvm.loop !17

97:                                               ; preds = %92, %77
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  br label %350

102:                                              ; preds = %97
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [4 x i32], [4 x i32]* %18, i64 0, i64 %109
  store i32 %107, i32* %110, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %122

113:                                              ; preds = %102
  %114 = load i8*, i8** %11, align 8
  %115 = load i32, i32* %20, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 2
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  br label %350

122:                                              ; preds = %113, %102
  %123 = load i32, i32* %20, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %125, i32 0, i32 16
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %140, label %129

129:                                              ; preds = %122
  %130 = load i8*, i8** %11, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %349

132:                                              ; preds = %129
  %133 = load i8*, i8** %11, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %133, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %349

140:                                              ; preds = %132, %122
  %141 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %143
  %145 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %141, i64 %147
  %149 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 9
  br i1 %151, label %152, label %349

152:                                              ; preds = %140
  %153 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %154 = load i32, i32* %20, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %155
  %157 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %153, i64 %159
  %161 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 8
  br i1 %163, label %164, label %349

164:                                              ; preds = %152
  store i32 0, i32* %22, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %20, align 4
  %167 = load i32*, i32** %10, align 8
  %168 = call i32 @owl_confirm_safety(i32 %165, i32 %166, i32* %167, i32* %22)
  store i32 %168, i32* %23, align 4
  %169 = load i32, i32* %23, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %209

171:                                              ; preds = %164
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* @verbose, align 4
  %173 = load i32, i32* @verbose, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  br label %179

176:                                              ; preds = %171
  %177 = load i32, i32* %20, align 4
  %178 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0), i32 %177)
  br label %179

179:                                              ; preds = %176, %175
  %180 = load i32, i32* %19, align 4
  store i32 %180, i32* @verbose, align 4
  %181 = load i32, i32* %20, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %182
  %184 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %183, i32 0, i32 4
  %185 = load float, float* %184, align 4
  %186 = fpext float %185 to double
  %187 = fmul double 2.000000e+00, %186
  %188 = load float*, float** %13, align 8
  %189 = load float, float* %188, align 4
  %190 = fpext float %189 to double
  %191 = fadd double %190, %187
  %192 = fptrunc double %191 to float
  store float %192, float* %188, align 4
  %193 = load i8*, i8** %11, align 8
  %194 = icmp ne i8* %193, null
  br i1 %194, label %195, label %208

195:                                              ; preds = %179
  %196 = load i32, i32* %20, align 4
  %197 = call i32 @first_worm_in_dragon(i32 %196)
  store i32 %197, i32* %16, align 4
  br label %198

198:                                              ; preds = %204, %195
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = load i32, i32* %16, align 4
  %203 = load i8*, i8** %11, align 8
  call void @mark_string(i32 %202, i8* %203, i8 signext 0)
  br label %204

204:                                              ; preds = %201
  %205 = load i32, i32* %16, align 4
  %206 = call i32 @next_worm_in_dragon(i32 %205)
  store i32 %206, i32* %16, align 4
  br label %198, !llvm.loop !18

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %179
  br label %348

209:                                              ; preds = %164
  %210 = load i32, i32* %23, align 4
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %347

212:                                              ; preds = %209
  %213 = load i32, i32* %14, align 4
  store i32 %213, i32* @verbose, align 4
  %214 = load i32, i32* @verbose, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  br label %220

217:                                              ; preds = %212
  %218 = load i32, i32* %20, align 4
  %219 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %217, %216
  %221 = load i32, i32* %19, align 4
  store i32 %221, i32* @verbose, align 4
  %222 = load i32, i32* %22, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %297

225:                                              ; preds = %220
  store i32 0, i32* %24, align 4
  br label %226

226:                                              ; preds = %293, %225
  %227 = load i32, i32* %24, align 4
  %228 = icmp slt i32 %227, 4
  br i1 %228, label %229, label %296

229:                                              ; preds = %226
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* %24, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %230, %234
  store i32 %235, i32* %25, align 4
  %236 = load i32, i32* %25, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = load i32, i32* %9, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %292

243:                                              ; preds = %229
  %244 = load i32, i32* %25, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %245
  %247 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %246, i32 0, i32 2
  %248 = load float, float* %247, align 4
  %249 = fpext float %248 to double
  %250 = fmul double 2.000000e+00, %249
  %251 = load float*, float** %13, align 8
  %252 = load float, float* %251, align 4
  %253 = fpext float %252 to double
  %254 = fadd double %253, %250
  %255 = fptrunc double %254 to float
  store float %255, float* %251, align 4
  %256 = load i8*, i8** %11, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %291

258:                                              ; preds = %243
  store i32 21, i32* %16, align 4
  br label %259

259:                                              ; preds = %287, %258
  %260 = load i32, i32* %16, align 4
  %261 = icmp slt i32 %260, 400
  br i1 %261, label %262, label %290

262:                                              ; preds = %259
  %263 = load i32, i32* %16, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp ne i32 %267, 3
  br i1 %268, label %269, label %286

269:                                              ; preds = %262
  %270 = load i32, i32* %16, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %271
  %273 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %25, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %276
  %278 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %277, i32 0, i32 3
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %274, %279
  br i1 %280, label %281, label %286

281:                                              ; preds = %269
  %282 = load i8*, i8** %11, align 8
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8, i8* %282, i64 %284
  store i8 0, i8* %285, align 1
  br label %286

286:                                              ; preds = %281, %269, %262
  br label %287

287:                                              ; preds = %286
  %288 = load i32, i32* %16, align 4
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %16, align 4
  br label %259, !llvm.loop !19

290:                                              ; preds = %259
  br label %291

291:                                              ; preds = %290, %243
  br label %292

292:                                              ; preds = %291, %229
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %24, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %24, align 4
  br label %226, !llvm.loop !20

296:                                              ; preds = %226
  br label %346

297:                                              ; preds = %220
  %298 = load i32, i32* %22, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %299
  %301 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %300, i32 0, i32 2
  %302 = load float, float* %301, align 4
  %303 = fpext float %302 to double
  %304 = fmul double 2.000000e+00, %303
  %305 = load float*, float** %13, align 8
  %306 = load float, float* %305, align 4
  %307 = fpext float %306 to double
  %308 = fadd double %307, %304
  %309 = fptrunc double %308 to float
  store float %309, float* %305, align 4
  %310 = load i8*, i8** %11, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %345

312:                                              ; preds = %297
  store i32 21, i32* %16, align 4
  br label %313

313:                                              ; preds = %341, %312
  %314 = load i32, i32* %16, align 4
  %315 = icmp slt i32 %314, 400
  br i1 %315, label %316, label %344

316:                                              ; preds = %313
  %317 = load i32, i32* %16, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = icmp ne i32 %321, 3
  br i1 %322, label %323, label %340

323:                                              ; preds = %316
  %324 = load i32, i32* %16, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %325
  %327 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %22, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %330
  %332 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %328, %333
  br i1 %334, label %335, label %340

335:                                              ; preds = %323
  %336 = load i8*, i8** %11, align 8
  %337 = load i32, i32* %16, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  store i8 0, i8* %339, align 1
  br label %340

340:                                              ; preds = %335, %323, %316
  br label %341

341:                                              ; preds = %340
  %342 = load i32, i32* %16, align 4
  %343 = add nsw i32 %342, 1
  store i32 %343, i32* %16, align 4
  br label %313, !llvm.loop !21

344:                                              ; preds = %313
  br label %345

345:                                              ; preds = %344, %297
  br label %346

346:                                              ; preds = %345, %296
  br label %347

347:                                              ; preds = %346, %209
  br label %348

348:                                              ; preds = %347, %208
  br label %349

349:                                              ; preds = %348, %152, %140, %132, %129
  br label %350

350:                                              ; preds = %349, %121, %101, %74, %45
  %351 = load i32, i32* %15, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %15, align 4
  br label %28, !llvm.loop !22

353:                                              ; preds = %28
  %354 = load i32, i32* %17, align 4
  ret i32 %354
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @detect_tactical_blunder(i32 %0, i32 %1, i32* %2, i8* %3, i32 %4, i32* %5, float* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca float*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca float, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store float* %6, float** %15, align 8
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 3, %24
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %16, align 4
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @trymove(i32 %27, i32 %28, i8* null, i32 0, i32 0, i32 0)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %8
  br label %331

32:                                               ; preds = %8
  call void @increase_depth_values()
  store i32 21, i32* %18, align 4
  br label %33

33:                                               ; preds = %244, %32
  %34 = load i32, i32* %18, align 4
  %35 = icmp slt i32 %34, 400
  br i1 %35, label %36, label %247

36:                                               ; preds = %33
  %37 = load i32, i32* %18, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %18, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %62

50:                                               ; preds = %43, %36
  %51 = load i32, i32* %18, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58, %50, %43
  br label %244

63:                                               ; preds = %58
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %152

71:                                               ; preds = %63
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %74, %71
  %83 = load i8*, i8** %12, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %152, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %88, i32 0, i32 16
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %89, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %152

93:                                               ; preds = %85, %74
  %94 = load i32, i32* %18, align 4
  %95 = call i32 @attack(i32 %94, i32* null)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %152

97:                                               ; preds = %93
  %98 = load i32*, i32** %11, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %18, align 4
  %102 = load i32*, i32** %11, align 8
  %103 = call i32 @find_defense(i32 %101, i32* %102)
  br label %104

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* @verbose, align 4
  %106 = load i32, i32* @verbose, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %104
  br label %113

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %18, align 4
  %112 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %108
  %114 = load i32, i32* %20, align 4
  store i32 %114, i32* @verbose, align 4
  %115 = load i32, i32* %18, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %117, i32 0, i32 2
  %119 = load float, float* %118, align 4
  %120 = load float*, float** %15, align 8
  %121 = load float, float* %120, align 4
  %122 = fadd float %121, %119
  store float %122, float* %120, align 4
  %123 = load i8*, i8** %12, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %151

125:                                              ; preds = %113
  store i32 21, i32* %19, align 4
  br label %126

126:                                              ; preds = %147, %125
  %127 = load i32, i32* %19, align 4
  %128 = icmp slt i32 %127, 400
  br i1 %128, label %129, label %150

129:                                              ; preds = %126
  %130 = load i32, i32* %19, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %134, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %129
  %142 = load i8*, i8** %12, align 8
  %143 = load i32, i32* %19, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  store i8 0, i8* %145, align 1
  br label %146

146:                                              ; preds = %141, %129
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %19, align 4
  br label %126, !llvm.loop !23

150:                                              ; preds = %126
  br label %151

151:                                              ; preds = %150, %113
  br label %243

152:                                              ; preds = %93, %85, %82, %63
  %153 = load i32, i32* %18, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i32, i32* %17, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %242

160:                                              ; preds = %152
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %162
  %164 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %18, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %242

168:                                              ; preds = %160
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %170
  %172 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %171, i32 0, i32 16
  %173 = getelementptr inbounds [10 x i32], [10 x i32]* %172, i64 0, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %242

176:                                              ; preds = %168
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %179, i32 0, i32 18
  %181 = getelementptr inbounds [10 x i32], [10 x i32]* %180, i64 0, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %242

184:                                              ; preds = %176
  %185 = load i32, i32* %18, align 4
  %186 = call i32 @find_defense(i32 %185, i32* null)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %242

188:                                              ; preds = %184
  call void @popgo()
  call void @decrease_depth_values()
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* %18, align 4
  %191 = call i32 @owl_does_attack(i32 %189, i32 %190, i32* null)
  store i32 %191, i32* %21, align 4
  %192 = load i32, i32* %21, align 4
  %193 = icmp ne i32 %192, 5
  br i1 %193, label %194, label %213

194:                                              ; preds = %188
  %195 = load i32, i32* %18, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %197, i32 0, i32 2
  %199 = load float, float* %198, align 4
  %200 = load float*, float** %15, align 8
  %201 = load float, float* %200, align 4
  %202 = fadd float %201, %199
  store float %202, float* %200, align 4
  %203 = load i32, i32* %16, align 4
  store i32 %203, i32* @verbose, align 4
  %204 = load i32, i32* @verbose, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %194
  br label %211

207:                                              ; preds = %194
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %18, align 4
  %210 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i64 0, i64 0), i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %207, %206
  %212 = load i32, i32* %20, align 4
  store i32 %212, i32* @verbose, align 4
  br label %213

213:                                              ; preds = %211, %188
  %214 = load i32, i32* %9, align 4
  %215 = load i32, i32* %10, align 4
  %216 = call i32 @trymove(i32 %214, i32 %215, i8* null, i32 0, i32 0, i32 0)
  call void @increase_depth_values()
  %217 = load i32, i32* %21, align 4
  %218 = icmp ne i32 %217, 5
  br i1 %218, label %219, label %241

219:                                              ; preds = %213
  %220 = load i32*, i32** %11, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %241

222:                                              ; preds = %219
  %223 = load i32, i32* %18, align 4
  %224 = call i32 @attack(i32 %223, i32* %22)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32, i32* %22, align 4
  %228 = load i32*, i32** %11, align 8
  store i32 %227, i32* %228, align 4
  br label %240

229:                                              ; preds = %222
  %230 = load i32, i32* %16, align 4
  store i32 %230, i32* @verbose, align 4
  %231 = load i32, i32* @verbose, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  br label %238

234:                                              ; preds = %229
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %9, align 4
  %237 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i64 0, i64 0), i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %233
  %239 = load i32, i32* %20, align 4
  store i32 %239, i32* @verbose, align 4
  br label %240

240:                                              ; preds = %238, %226
  br label %241

241:                                              ; preds = %240, %219, %213
  br label %242

242:                                              ; preds = %241, %184, %176, %168, %160, %152
  br label %243

243:                                              ; preds = %242, %151
  br label %244

244:                                              ; preds = %243, %62
  %245 = load i32, i32* %18, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %18, align 4
  br label %33, !llvm.loop !24

247:                                              ; preds = %33
  %248 = load i32, i32* %13, align 4
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %250, label %330

250:                                              ; preds = %247
  %251 = load i32*, i32** %14, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %17, align 4
  %255 = load i8*, i8** %12, align 8
  %256 = call i32 @double_atari(i32 %253, i32 %254, float* %23, i8* %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %289

258:                                              ; preds = %250
  %259 = load i32*, i32** %11, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %273

261:                                              ; preds = %258
  %262 = load i32*, i32** %14, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @safe_move(i32 %264, i32 %265)
  %267 = icmp eq i32 %266, 5
  br i1 %267, label %268, label %273

268:                                              ; preds = %261
  %269 = load i32*, i32** %14, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 0
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %11, align 8
  store i32 %271, i32* %272, align 4
  br label %273

273:                                              ; preds = %268, %261, %258
  %274 = load float, float* %23, align 4
  %275 = load float*, float** %15, align 8
  %276 = load float, float* %275, align 4
  %277 = fadd float %276, %274
  store float %277, float* %275, align 4
  %278 = load i32, i32* %16, align 4
  store i32 %278, i32* @verbose, align 4
  %279 = load i32, i32* @verbose, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %273
  br label %287

282:                                              ; preds = %273
  %283 = load i32*, i32** %14, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 %285)
  br label %287

287:                                              ; preds = %282, %281
  %288 = load i32, i32* %20, align 4
  store i32 %288, i32* @verbose, align 4
  br label %329

289:                                              ; preds = %250
  %290 = load i32*, i32** %14, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 1
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %17, align 4
  %294 = load i8*, i8** %12, align 8
  %295 = call i32 @double_atari(i32 %292, i32 %293, float* %23, i8* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %328

297:                                              ; preds = %289
  %298 = load i32*, i32** %11, align 8
  %299 = icmp ne i32* %298, null
  br i1 %299, label %300, label %312

300:                                              ; preds = %297
  %301 = load i32*, i32** %14, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %10, align 4
  %305 = call i32 @safe_move(i32 %303, i32 %304)
  %306 = icmp eq i32 %305, 5
  br i1 %306, label %307, label %312

307:                                              ; preds = %300
  %308 = load i32*, i32** %14, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 1
  %310 = load i32, i32* %309, align 4
  %311 = load i32*, i32** %11, align 8
  store i32 %310, i32* %311, align 4
  br label %312

312:                                              ; preds = %307, %300, %297
  %313 = load float, float* %23, align 4
  %314 = load float*, float** %15, align 8
  %315 = load float, float* %314, align 4
  %316 = fadd float %315, %313
  store float %316, float* %314, align 4
  %317 = load i32, i32* %16, align 4
  store i32 %317, i32* @verbose, align 4
  %318 = load i32, i32* @verbose, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %312
  br label %326

321:                                              ; preds = %312
  %322 = load i32*, i32** %14, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 %324)
  br label %326

326:                                              ; preds = %321, %320
  %327 = load i32, i32* %20, align 4
  store i32 %327, i32* @verbose, align 4
  br label %328

328:                                              ; preds = %326, %289
  br label %329

329:                                              ; preds = %328, %287
  br label %330

330:                                              ; preds = %329, %247
  call void @decrease_depth_values()
  call void @popgo()
  br label %331

331:                                              ; preds = %330, %31
  ret void
}

declare dso_local i32 @atari_atari_blunder_size(i32, i32, i32*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @double_atari(i32 %0, i32 %1, float* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float* %2, float** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 3, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 20
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %6, align 4
  %22 = srem i32 %21, 20
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %261

31:                                               ; preds = %4
  store i32 4, i32* %11, align 4
  br label %32

32:                                               ; preds = %257, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %260

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %44, %45
  %47 = mul nsw i32 %46, 20
  %48 = add nsw i32 21, %47
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %49, %50
  %52 = add nsw i32 %48, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %256

59:                                               ; preds = %35
  %60 = load i32, i32* %12, align 4
  %61 = mul nsw i32 %60, 20
  %62 = add nsw i32 21, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %63, %64
  %66 = add nsw i32 %62, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %256

73:                                               ; preds = %59
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %74, %75
  %77 = mul nsw i32 %76, 20
  %78 = add nsw i32 21, %77
  %79 = load i32, i32* %13, align 4
  %80 = add nsw i32 %78, %79
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %10, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %256

87:                                               ; preds = %73
  %88 = load i8*, i8** %9, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %118

90:                                               ; preds = %87
  %91 = load i8*, i8** %9, align 8
  %92 = load i32, i32* %12, align 4
  %93 = mul nsw i32 %92, 20
  %94 = add nsw i32 21, %93
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %91, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %256

104:                                              ; preds = %90
  %105 = load i8*, i8** %9, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %106, %107
  %109 = mul nsw i32 %108, 20
  %110 = add nsw i32 21, %109
  %111 = load i32, i32* %13, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %105, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %256

118:                                              ; preds = %104, %87
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @trymove(i32 %119, i32 %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 0, i32 0, i32 0)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %256

123:                                              ; preds = %118
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @countlib(i32 %124)
  %126 = icmp sgt i32 %125, 1
  br i1 %126, label %127, label %255

127:                                              ; preds = %123
  %128 = load i32, i32* %12, align 4
  %129 = mul nsw i32 %128, 20
  %130 = add nsw i32 21, %129
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %131, %132
  %134 = add nsw i32 %130, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %170, label %140

140:                                              ; preds = %127
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* %14, align 4
  %143 = add nsw i32 %141, %142
  %144 = mul nsw i32 %143, 20
  %145 = add nsw i32 21, %144
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %170, label %153

153:                                              ; preds = %140
  %154 = load i32, i32* %12, align 4
  %155 = mul nsw i32 %154, 20
  %156 = add nsw i32 21, %155
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %15, align 4
  %159 = add nsw i32 %157, %158
  %160 = add nsw i32 %156, %159
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %161, %162
  %164 = mul nsw i32 %163, 20
  %165 = add nsw i32 21, %164
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %165, %166
  %168 = call i32 @defend_both(i32 %160, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %255, label %170

170:                                              ; preds = %153, %140, %127
  call void @popgo()
  %171 = load float*, float** %8, align 8
  %172 = icmp ne float* %171, null
  br i1 %172, label %173, label %254

173:                                              ; preds = %170
  %174 = load i32, i32* %12, align 4
  %175 = mul nsw i32 %174, 20
  %176 = add nsw i32 21, %175
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %177, %178
  %180 = add nsw i32 %176, %179
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %182, i32 0, i32 2
  %184 = load float, float* %183, align 4
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* %14, align 4
  %187 = add nsw i32 %185, %186
  %188 = mul nsw i32 %187, 20
  %189 = add nsw i32 21, %188
  %190 = load i32, i32* %13, align 4
  %191 = add nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %192
  %194 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %193, i32 0, i32 2
  %195 = load float, float* %194, align 4
  %196 = fcmp ogt float %184, %195
  br i1 %196, label %197, label %225

197:                                              ; preds = %173
  %198 = load i32, i32* %12, align 4
  %199 = mul nsw i32 %198, 20
  %200 = add nsw i32 21, %199
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %15, align 4
  %203 = add nsw i32 %201, %202
  %204 = add nsw i32 %200, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %205
  %207 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %206, i32 0, i32 2
  %208 = load float, float* %207, align 4
  %209 = fpext float %208 to double
  %210 = fmul double 2.000000e+00, %209
  %211 = fptrunc double %210 to float
  %212 = load float*, float** %8, align 8
  store float %211, float* %212, align 4
  %213 = load i8*, i8** %9, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %224

215:                                              ; preds = %197
  %216 = load i32, i32* %12, align 4
  %217 = mul nsw i32 %216, 20
  %218 = add nsw i32 21, %217
  %219 = load i32, i32* %13, align 4
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %219, %220
  %222 = add nsw i32 %218, %221
  %223 = load i8*, i8** %9, align 8
  call void @mark_string(i32 %222, i8* %223, i8 signext 0)
  br label %224

224:                                              ; preds = %215, %197
  br label %253

225:                                              ; preds = %173
  %226 = load i32, i32* %12, align 4
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %226, %227
  %229 = mul nsw i32 %228, 20
  %230 = add nsw i32 21, %229
  %231 = load i32, i32* %13, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %234, i32 0, i32 2
  %236 = load float, float* %235, align 4
  %237 = fpext float %236 to double
  %238 = fmul double 2.000000e+00, %237
  %239 = fptrunc double %238 to float
  %240 = load float*, float** %8, align 8
  store float %239, float* %240, align 4
  %241 = load i8*, i8** %9, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %252

243:                                              ; preds = %225
  %244 = load i32, i32* %12, align 4
  %245 = load i32, i32* %14, align 4
  %246 = add nsw i32 %244, %245
  %247 = mul nsw i32 %246, 20
  %248 = add nsw i32 21, %247
  %249 = load i32, i32* %13, align 4
  %250 = add nsw i32 %248, %249
  %251 = load i8*, i8** %9, align 8
  call void @mark_string(i32 %250, i8* %251, i8 signext 0)
  br label %252

252:                                              ; preds = %243, %225
  br label %253

253:                                              ; preds = %252, %224
  br label %254

254:                                              ; preds = %253, %170
  store i32 1, i32* %5, align 4
  br label %261

255:                                              ; preds = %153, %123
  call void @popgo()
  br label %256

256:                                              ; preds = %255, %118, %104, %90, %73, %59, %35
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %11, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %11, align 4
  br label %32, !llvm.loop !25

260:                                              ; preds = %32
  store i32 0, i32* %5, align 4
  br label %261

261:                                              ; preds = %260, %254, %30
  %262 = load i32, i32* %5, align 4
  ret i32 %262
}

declare dso_local i32 @countlib(i32) #1

declare dso_local void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unconditional_life(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [241 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sub nsw i32 3, %21
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %110, %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %111

26:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  store i32 21, i32* %9, align 4
  br label %27

27:                                               ; preds = %107, %26
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 400
  br i1 %29, label %30, label %110

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @is_worm_origin(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38, %30
  br label %107

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %47 = call i32 @findlib(i32 %45, i32 241, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %49

49:                                               ; preds = %66, %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @trymove(i32 %57, i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %59, i32 0, i32 0)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %53
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %49, !llvm.loop !26

69:                                               ; preds = %49
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 1, i32* %5, align 4
  br label %106

77:                                               ; preds = %69
  %78 = load i32, i32* %9, align 4
  %79 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %80 = call i32 @findlib(i32 %78, i32 2, i32* %79)
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @tryko(i32 %84, i32 %85, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 0, i32 0)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %91

90:                                               ; preds = %82
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1246, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i32 -1, i32 -1)
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %105

96:                                               ; preds = %77
  br label %97

97:                                               ; preds = %101, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97
  call void @popgo()
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %7, align 4
  br label %97, !llvm.loop !27

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %91
  br label %106

106:                                              ; preds = %105, %76
  br label %107

107:                                              ; preds = %106, %43
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %27, !llvm.loop !28

110:                                              ; preds = %27
  br label %23, !llvm.loop !29

111:                                              ; preds = %23
  store i32 21, i32* %9, align 4
  br label %112

112:                                              ; preds = %154, %111
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 400
  br i1 %114, label %115, label %157

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @is_worm_origin(i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %123, %115
  br label %154

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %132 = call i32 @findlib(i32 %130, i32 241, i32* %131)
  store i32 %132, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %133

133:                                              ; preds = %150, %129
  %134 = load i32, i32* %10, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %153

137:                                              ; preds = %133
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @trymove(i32 %141, i32 %142, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %143, i32 0, i32 0)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %137
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %146, %137
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %10, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %10, align 4
  br label %133, !llvm.loop !30

153:                                              ; preds = %133
  br label %154

154:                                              ; preds = %153, %128
  %155 = load i32, i32* %9, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %9, align 4
  br label %112, !llvm.loop !31

157:                                              ; preds = %112
  store i32 1, i32* %6, align 4
  br label %158

158:                                              ; preds = %195, %157
  %159 = load i32, i32* %6, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %196

161:                                              ; preds = %158
  store i32 0, i32* %6, align 4
  store i32 21, i32* %9, align 4
  br label %162

162:                                              ; preds = %192, %161
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 400
  br i1 %164, label %165, label %195

165:                                              ; preds = %162
  %166 = load i32, i32* %9, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = load i32, i32* %13, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %177, label %173

173:                                              ; preds = %165
  %174 = load i32, i32* %9, align 4
  %175 = call i32 @countlib(i32 %174)
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %173, %165
  br label %192

178:                                              ; preds = %173
  %179 = load i32, i32* %9, align 4
  %180 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %181 = call i32 @findlib(i32 %179, i32 1, i32* %180)
  %182 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %183 = load i32, i32* %182, align 16
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @trymove(i32 %183, i32 %184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %185, i32 0, i32 0)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %178
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %191

191:                                              ; preds = %188, %178
  br label %192

192:                                              ; preds = %191, %177
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %162, !llvm.loop !32

195:                                              ; preds = %162
  br label %158, !llvm.loop !33

196:                                              ; preds = %158
  store i32 21, i32* %9, align 4
  br label %197

197:                                              ; preds = %279, %196
  %198 = load i32, i32* %9, align 4
  %199 = icmp slt i32 %198, 400
  br i1 %199, label %200, label %282

200:                                              ; preds = %197
  %201 = load i32, i32* %9, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %212, label %208

208:                                              ; preds = %200
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @countlib(i32 %209)
  %211 = icmp ne i32 %210, 2
  br i1 %211, label %212, label %213

212:                                              ; preds = %208, %200
  br label %279

213:                                              ; preds = %208
  %214 = load i32, i32* %9, align 4
  %215 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %216 = call i32 @findlib(i32 %214, i32 2, i32* %215)
  %217 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %218 = load i32, i32* %217, align 16
  store i32 %218, i32* %15, align 4
  %219 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 1
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %15, align 4
  %222 = sdiv i32 %221, 20
  %223 = sub nsw i32 %222, 1
  %224 = load i32, i32* %16, align 4
  %225 = sdiv i32 %224, 20
  %226 = sub nsw i32 %225, 1
  %227 = sub nsw i32 %223, %226
  %228 = call i32 @abs(i32 %227) #7
  %229 = load i32, i32* %15, align 4
  %230 = srem i32 %229, 20
  %231 = sub nsw i32 %230, 1
  %232 = load i32, i32* %16, align 4
  %233 = srem i32 %232, 20
  %234 = sub nsw i32 %233, 1
  %235 = sub nsw i32 %231, %234
  %236 = call i32 @abs(i32 %235) #7
  %237 = add nsw i32 %228, %236
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %240

239:                                              ; preds = %213
  br label %279

240:                                              ; preds = %213
  %241 = load i32, i32* %15, align 4
  %242 = load i32, i32* %4, align 4
  %243 = call i32 @approxlib(i32 %241, i32 %242, i32 4, i32* null)
  store i32 %243, i32* %17, align 4
  %244 = load i32, i32* %16, align 4
  %245 = load i32, i32* %4, align 4
  %246 = call i32 @approxlib(i32 %244, i32 %245, i32 4, i32* null)
  store i32 %246, i32* %18, align 4
  %247 = load i32, i32* %15, align 4
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @approxlib(i32 %247, i32 %248, i32 4, i32* null)
  store i32 %249, i32* %19, align 4
  %250 = load i32, i32* %16, align 4
  %251 = load i32, i32* %13, align 4
  %252 = call i32 @approxlib(i32 %250, i32 %251, i32 4, i32* null)
  store i32 %252, i32* %20, align 4
  %253 = load i32, i32* %17, align 4
  %254 = load i32, i32* %18, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %264, label %256

256:                                              ; preds = %240
  %257 = load i32, i32* %17, align 4
  %258 = load i32, i32* %18, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %271

260:                                              ; preds = %256
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* %20, align 4
  %263 = icmp sge i32 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %260, %240
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* %13, align 4
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @trymove(i32 %265, i32 %266, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %267, i32 0, i32 0)
  %269 = load i32, i32* %7, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %7, align 4
  br label %278

271:                                              ; preds = %260, %256
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @trymove(i32 %272, i32 %273, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %274, i32 0, i32 0)
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %7, align 4
  br label %278

278:                                              ; preds = %271, %264
  br label %279

279:                                              ; preds = %278, %239, %212
  %280 = load i32, i32* %9, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %9, align 4
  br label %197, !llvm.loop !34

282:                                              ; preds = %197
  %283 = load i32*, i32** %3, align 8
  %284 = bitcast i32* %283 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %284, i8 0, i64 1600, i1 false)
  store i32 21, i32* %9, align 4
  br label %285

285:                                              ; preds = %353, %282
  %286 = load i32, i32* %9, align 4
  %287 = icmp slt i32 %286, 400
  br i1 %287, label %288, label %356

288:                                              ; preds = %285
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = load i32, i32* %4, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %326

296:                                              ; preds = %288
  %297 = load i32*, i32** %3, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %297, i64 %299
  store i32 1, i32* %300, align 4
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @is_worm_origin(i32 %301, i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %325

305:                                              ; preds = %296
  %306 = load i32, i32* %9, align 4
  %307 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %308 = call i32 @findlib(i32 %306, i32 241, i32* %307)
  store i32 %308, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %309

309:                                              ; preds = %321, %305
  %310 = load i32, i32* %10, align 4
  %311 = load i32, i32* %12, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %313, label %324

313:                                              ; preds = %309
  %314 = load i32*, i32** %3, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32, i32* %314, i64 %319
  store i32 2, i32* %320, align 4
  br label %321

321:                                              ; preds = %313
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %10, align 4
  br label %309, !llvm.loop !35

324:                                              ; preds = %309
  br label %325

325:                                              ; preds = %324, %296
  br label %352

326:                                              ; preds = %288
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %328
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = load i32, i32* %13, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %351

334:                                              ; preds = %326
  %335 = load i32, i32* %9, align 4
  %336 = call i32 @countlib(i32 %335)
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %351

338:                                              ; preds = %334
  %339 = load i32*, i32** %3, align 8
  %340 = load i32, i32* %9, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  store i32 2, i32* %342, align 4
  %343 = load i32, i32* %9, align 4
  %344 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %345 = call i32 @findlib(i32 %343, i32 1, i32* %344)
  %346 = load i32*, i32** %3, align 8
  %347 = getelementptr inbounds [241 x i32], [241 x i32]* %11, i64 0, i64 0
  %348 = load i32, i32* %347, align 16
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %346, i64 %349
  store i32 2, i32* %350, align 4
  br label %351

351:                                              ; preds = %338, %334, %326
  br label %352

352:                                              ; preds = %351, %325
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %9, align 4
  br label %285, !llvm.loop !36

356:                                              ; preds = %285
  br label %357

357:                                              ; preds = %360, %356
  %358 = load i32, i32* %7, align 4
  %359 = icmp sgt i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %357
  call void @popgo()
  %361 = load i32, i32* %7, align 4
  %362 = add nsw i32 %361, -1
  store i32 %362, i32* %7, align 4
  br label %357, !llvm.loop !37

363:                                              ; preds = %357
  ret void
}

declare dso_local i32 @is_worm_origin(i32, i32) #1

declare dso_local i32 @findlib(i32, i32, i32*) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i32 @abs(i32) #4

declare dso_local i32 @approxlib(i32, i32, i32, i32*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @who_wins(i32 %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 2, i32* %3, align 4
  br label %12

12:                                               ; preds = %11, %8, %2
  %13 = call float @estimate_score(float* null, float* null)
  store float %13, float* %5, align 4
  %14 = load float, float* %5, align 4
  %15 = fpext float %14 to double
  %16 = fcmp oeq double %15, 0.000000e+00
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  br label %38

20:                                               ; preds = %12
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %22 = load float, float* %5, align 4
  %23 = fpext float %22 to double
  %24 = fcmp ogt double %23, 0.000000e+00
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 87, i32 66
  %27 = load float, float* %5, align 4
  %28 = fcmp olt float %27, 0.000000e+00
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load float, float* %5, align 4
  %31 = fneg float %30
  br label %34

32:                                               ; preds = %20
  %33 = load float, float* %5, align 4
  br label %34

34:                                               ; preds = %32, %29
  %35 = phi float [ %31, %29 ], [ %33, %32 ]
  %36 = fpext float %35 to double
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0), i32 %26, double %36)
  br label %38

38:                                               ; preds = %34, %17
  ret void
}

declare dso_local float @estimate_score(float*, float*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_superstring(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %6, align 8
  call void @do_find_superstring(i32 %7, i32* %8, i32* %9, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0, i32 0, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_find_superstring(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [361 x i32], align 16
  %25 = alloca [400 x i8], align 16
  %26 = alloca [400 x i8], align 16
  %27 = alloca [400 x i8], align 16
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
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
  %45 = alloca [361 x i32], align 16
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  store i32 %54, i32* %31, align 4
  %55 = load i32, i32* %31, align 4
  %56 = sub nsw i32 3, %55
  store i32 %56, i32* %32, align 4
  %57 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %57, i8 0, i64 400, i1 false)
  %58 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %58, i8 0, i64 400, i1 false)
  %59 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 400, i1 false)
  %60 = load i32*, i32** %13, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %11
  %63 = load i32*, i32** %13, align 8
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %11
  %65 = load i32*, i32** %15, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32*, i32** %15, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i32*, i32** %18, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32*, i32** %18, align 8
  store i32 0, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %69
  store i32 0, i32* %23, align 4
  %75 = load i32, i32* %12, align 4
  %76 = getelementptr inbounds [361 x i32], [361 x i32]* %24, i64 0, i64 0
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = load i32*, i32** %15, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %17, align 4
  %82 = load i32*, i32** %18, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = load i32, i32* %20, align 4
  %85 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  %86 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  %87 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 0
  %88 = load i32, i32* %21, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  call void @superstring_add_string(i32 %75, i32* %23, i32* %76, i32* %77, i32* %78, i32* %79, i32* %80, i32 %81, i32* %82, i32* %83, i32 %84, i8* %85, i8* %86, i8* %87, i32 %91)
  store i32 0, i32* %30, align 4
  br label %92

92:                                               ; preds = %497, %74
  %93 = load i32, i32* %30, align 4
  %94 = load i32, i32* %23, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %500

96:                                               ; preds = %92
  %97 = load i32, i32* %30, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [361 x i32], [361 x i32]* %24, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %33, align 4
  store i32 0, i32* %28, align 4
  br label %101

101:                                              ; preds = %493, %96
  %102 = load i32, i32* %28, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %496

104:                                              ; preds = %101
  %105 = load i32, i32* %28, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %34, align 4
  %109 = load i32, i32* %28, align 4
  %110 = add nsw i32 %109, 1
  %111 = srem i32 %110, 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %35, align 4
  %115 = load i32, i32* %33, align 4
  %116 = load i32, i32* %34, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %36, align 4
  %118 = load i32, i32* %33, align 4
  %119 = load i32, i32* %34, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* %35, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, i32* %37, align 4
  %123 = load i32, i32* %33, align 4
  %124 = load i32, i32* %34, align 4
  %125 = mul nsw i32 2, %124
  %126 = add nsw i32 %123, %125
  store i32 %126, i32* %38, align 4
  %127 = load i32, i32* %33, align 4
  %128 = load i32, i32* %34, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %35, align 4
  %131 = sub nsw i32 %129, %130
  store i32 %131, i32* %39, align 4
  %132 = load i32, i32* %33, align 4
  %133 = load i32, i32* %35, align 4
  %134 = mul nsw i32 2, %133
  %135 = add nsw i32 %132, %134
  store i32 %135, i32* %40, align 4
  %136 = load i32, i32* %33, align 4
  %137 = load i32, i32* %34, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %35, align 4
  %140 = mul nsw i32 2, %139
  %141 = add nsw i32 %138, %140
  store i32 %141, i32* %41, align 4
  %142 = load i32, i32* %33, align 4
  %143 = load i32, i32* %35, align 4
  %144 = add nsw i32 %142, %143
  store i32 %144, i32* %42, align 4
  %145 = load i32, i32* %36, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %146
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp ne i32 %149, 3
  br i1 %150, label %152, label %151

151:                                              ; preds = %104
  br label %493

152:                                              ; preds = %104
  %153 = load i32, i32* %36, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %273

159:                                              ; preds = %152
  %160 = load i32, i32* %22, align 4
  %161 = icmp eq i32 %160, 2
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* %36, align 4
  %164 = load i32, i32* %32, align 4
  %165 = call i32 @approxlib(i32 %163, i32 %164, i32 2, i32* null)
  %166 = icmp slt i32 %165, 2
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %43, align 4
  br label %172

168:                                              ; preds = %159
  %169 = load i32, i32* %36, align 4
  %170 = load i32, i32* %32, align 4
  %171 = call i32 @is_self_atari(i32 %169, i32 %170)
  store i32 %171, i32* %43, align 4
  br label %172

172:                                              ; preds = %168, %162
  %173 = load i32, i32* %43, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %172
  %176 = load i32, i32* %22, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %184

178:                                              ; preds = %175
  %179 = load i32, i32* %36, align 4
  %180 = load i32, i32* %32, align 4
  %181 = call i32 @is_ko(i32 %179, i32 %180, i32* null)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  store i32 0, i32* %43, align 4
  br label %184

184:                                              ; preds = %183, %178, %175, %172
  %185 = load i32, i32* %43, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %272

187:                                              ; preds = %184
  %188 = load i32, i32* %37, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = load i32, i32* %31, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %215

195:                                              ; preds = %187
  %196 = load i32, i32* %37, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = icmp ne i8 %199, 0
  br i1 %200, label %215, label %201

201:                                              ; preds = %195
  %202 = load i32, i32* %37, align 4
  %203 = getelementptr inbounds [361 x i32], [361 x i32]* %24, i64 0, i64 0
  %204 = load i32*, i32** %13, align 8
  %205 = load i32*, i32** %14, align 8
  %206 = load i32*, i32** %15, align 8
  %207 = load i32*, i32** %16, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load i32*, i32** %18, align 8
  %210 = load i32*, i32** %19, align 8
  %211 = load i32, i32* %20, align 4
  %212 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  %213 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  %214 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 0
  call void @superstring_add_string(i32 %202, i32* %23, i32* %203, i32* %204, i32* %205, i32* %206, i32* %207, i32 %208, i32* %209, i32* %210, i32 %211, i8* %212, i8* %213, i8* %214, i32 1)
  br label %215

215:                                              ; preds = %201, %195, %187
  %216 = load i32, i32* %38, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = load i32, i32* %31, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %243

223:                                              ; preds = %215
  %224 = load i32, i32* %38, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = icmp ne i8 %227, 0
  br i1 %228, label %243, label %229

229:                                              ; preds = %223
  %230 = load i32, i32* %38, align 4
  %231 = getelementptr inbounds [361 x i32], [361 x i32]* %24, i64 0, i64 0
  %232 = load i32*, i32** %13, align 8
  %233 = load i32*, i32** %14, align 8
  %234 = load i32*, i32** %15, align 8
  %235 = load i32*, i32** %16, align 8
  %236 = load i32, i32* %17, align 4
  %237 = load i32*, i32** %18, align 8
  %238 = load i32*, i32** %19, align 8
  %239 = load i32, i32* %20, align 4
  %240 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  %241 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  %242 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 0
  call void @superstring_add_string(i32 %230, i32* %23, i32* %231, i32* %232, i32* %233, i32* %234, i32* %235, i32 %236, i32* %237, i32* %238, i32 %239, i8* %240, i8* %241, i8* %242, i32 1)
  br label %243

243:                                              ; preds = %229, %223, %215
  %244 = load i32, i32* %39, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = load i32, i32* %31, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %271

251:                                              ; preds = %243
  %252 = load i32, i32* %39, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = icmp ne i8 %255, 0
  br i1 %256, label %271, label %257

257:                                              ; preds = %251
  %258 = load i32, i32* %39, align 4
  %259 = getelementptr inbounds [361 x i32], [361 x i32]* %24, i64 0, i64 0
  %260 = load i32*, i32** %13, align 8
  %261 = load i32*, i32** %14, align 8
  %262 = load i32*, i32** %15, align 8
  %263 = load i32*, i32** %16, align 8
  %264 = load i32, i32* %17, align 4
  %265 = load i32*, i32** %18, align 8
  %266 = load i32*, i32** %19, align 8
  %267 = load i32, i32* %20, align 4
  %268 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  %269 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  %270 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 0
  call void @superstring_add_string(i32 %258, i32* %23, i32* %259, i32* %260, i32* %261, i32* %262, i32* %263, i32 %264, i32* %265, i32* %266, i32 %267, i8* %268, i8* %269, i8* %270, i32 1)
  br label %271

271:                                              ; preds = %257, %251, %243
  br label %272

272:                                              ; preds = %271, %184
  br label %273

273:                                              ; preds = %272, %152
  %274 = load i32, i32* %36, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %275
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = load i32, i32* %31, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %331

281:                                              ; preds = %273
  %282 = load i32, i32* %37, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %283
  %285 = load i8, i8* %284, align 1
  %286 = zext i8 %285 to i32
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %331

288:                                              ; preds = %281
  %289 = load i32, i32* %41, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = load i32, i32* %31, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %331

296:                                              ; preds = %288
  %297 = load i32, i32* %40, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %298
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = load i32, i32* %31, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %331

304:                                              ; preds = %296
  %305 = load i32, i32* %40, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = icmp ne i8 %308, 0
  br i1 %309, label %331, label %310

310:                                              ; preds = %304
  %311 = load i32, i32* %42, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %331

317:                                              ; preds = %310
  %318 = load i32, i32* %40, align 4
  %319 = getelementptr inbounds [361 x i32], [361 x i32]* %24, i64 0, i64 0
  %320 = load i32*, i32** %13, align 8
  %321 = load i32*, i32** %14, align 8
  %322 = load i32*, i32** %15, align 8
  %323 = load i32*, i32** %16, align 8
  %324 = load i32, i32* %17, align 4
  %325 = load i32*, i32** %18, align 8
  %326 = load i32*, i32** %19, align 8
  %327 = load i32, i32* %20, align 4
  %328 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  %329 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  %330 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 0
  call void @superstring_add_string(i32 %318, i32* %23, i32* %319, i32* %320, i32* %321, i32* %322, i32* %323, i32 %324, i32* %325, i32* %326, i32 %327, i8* %328, i8* %329, i8* %330, i32 1)
  br label %331

331:                                              ; preds = %317, %310, %304, %296, %288, %281, %273
  %332 = load i32, i32* %37, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %333
  %335 = load i8, i8* %334, align 1
  %336 = zext i8 %335 to i32
  %337 = load i32, i32* %31, align 4
  %338 = icmp eq i32 %336, %337
  br i1 %338, label %339, label %373

339:                                              ; preds = %331
  %340 = load i32, i32* %37, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = icmp ne i8 %343, 0
  br i1 %344, label %373, label %345

345:                                              ; preds = %339
  %346 = load i32, i32* %36, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %373

352:                                              ; preds = %345
  %353 = load i32, i32* %42, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %354
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %373

359:                                              ; preds = %352
  %360 = load i32, i32* %37, align 4
  %361 = getelementptr inbounds [361 x i32], [361 x i32]* %24, i64 0, i64 0
  %362 = load i32*, i32** %13, align 8
  %363 = load i32*, i32** %14, align 8
  %364 = load i32*, i32** %15, align 8
  %365 = load i32*, i32** %16, align 8
  %366 = load i32, i32* %17, align 4
  %367 = load i32*, i32** %18, align 8
  %368 = load i32*, i32** %19, align 8
  %369 = load i32, i32* %20, align 4
  %370 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  %371 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  %372 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 0
  call void @superstring_add_string(i32 %360, i32* %23, i32* %361, i32* %362, i32* %363, i32* %364, i32* %365, i32 %366, i32* %367, i32* %368, i32 %369, i8* %370, i8* %371, i8* %372, i32 1)
  br label %373

373:                                              ; preds = %359, %352, %345, %339, %331
  %374 = load i32, i32* %22, align 4
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %376, label %480

376:                                              ; preds = %373
  store i32 0, i32* %29, align 4
  br label %377

377:                                              ; preds = %476, %376
  %378 = load i32, i32* %29, align 4
  %379 = icmp slt i32 %378, 2
  br i1 %379, label %380, label %479

380:                                              ; preds = %377
  %381 = load i32, i32* %29, align 4
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %385

383:                                              ; preds = %380
  %384 = load i32, i32* %36, align 4
  store i32 %384, i32* %44, align 4
  br label %387

385:                                              ; preds = %380
  %386 = load i32, i32* %37, align 4
  store i32 %386, i32* %44, align 4
  br label %387

387:                                              ; preds = %385, %383
  %388 = load i32, i32* %44, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = load i32, i32* %32, align 4
  %394 = icmp ne i32 %392, %393
  br i1 %394, label %395, label %396

395:                                              ; preds = %387
  br label %476

396:                                              ; preds = %387
  %397 = load i32, i32* %44, align 4
  %398 = call i32 @find_origin(i32 %397)
  store i32 %398, i32* %44, align 4
  %399 = load i32, i32* %44, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %400
  %402 = load i8, i8* %401, align 1
  %403 = sext i8 %402 to i32
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %406

405:                                              ; preds = %396
  br label %476

406:                                              ; preds = %396
  %407 = load i32, i32* %44, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %408
  store i8 1, i8* %409, align 1
  %410 = load i32, i32* %44, align 4
  %411 = call i32 @attack(i32 %410, i32* null)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %475

413:                                              ; preds = %406
  %414 = load i32, i32* %44, align 4
  %415 = call i32 @find_defense(i32 %414, i32* null)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %475, label %417

417:                                              ; preds = %413
  %418 = load i32, i32* %44, align 4
  %419 = getelementptr inbounds [361 x i32], [361 x i32]* %45, i64 0, i64 0
  %420 = call i32 @findstones(i32 %418, i32 361, i32* %419)
  store i32 %420, i32* %46, align 4
  store i32 0, i32* %47, align 4
  br label %421

421:                                              ; preds = %471, %417
  %422 = load i32, i32* %47, align 4
  %423 = load i32, i32* %46, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %474

425:                                              ; preds = %421
  store i32 0, i32* %48, align 4
  br label %426

426:                                              ; preds = %467, %425
  %427 = load i32, i32* %48, align 4
  %428 = icmp slt i32 %427, 8
  br i1 %428, label %429, label %470

429:                                              ; preds = %426
  %430 = load i32, i32* %47, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [361 x i32], [361 x i32]* %45, i64 0, i64 %431
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* %48, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = add nsw i32 %433, %437
  store i32 %438, i32* %49, align 4
  %439 = load i32, i32* %49, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %440
  %442 = load i8, i8* %441, align 1
  %443 = zext i8 %442 to i32
  %444 = load i32, i32* %31, align 4
  %445 = icmp eq i32 %443, %444
  br i1 %445, label %446, label %466

446:                                              ; preds = %429
  %447 = load i32, i32* %49, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 %448
  %450 = load i8, i8* %449, align 1
  %451 = icmp ne i8 %450, 0
  br i1 %451, label %466, label %452

452:                                              ; preds = %446
  %453 = load i32, i32* %49, align 4
  %454 = getelementptr inbounds [361 x i32], [361 x i32]* %24, i64 0, i64 0
  %455 = load i32*, i32** %13, align 8
  %456 = load i32*, i32** %14, align 8
  %457 = load i32*, i32** %15, align 8
  %458 = load i32*, i32** %16, align 8
  %459 = load i32, i32* %17, align 4
  %460 = load i32*, i32** %18, align 8
  %461 = load i32*, i32** %19, align 8
  %462 = load i32, i32* %20, align 4
  %463 = getelementptr inbounds [400 x i8], [400 x i8]* %25, i64 0, i64 0
  %464 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  %465 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 0
  call void @superstring_add_string(i32 %453, i32* %23, i32* %454, i32* %455, i32* %456, i32* %457, i32* %458, i32 %459, i32* %460, i32* %461, i32 %462, i8* %463, i8* %464, i8* %465, i32 1)
  br label %466

466:                                              ; preds = %452, %446, %429
  br label %467

467:                                              ; preds = %466
  %468 = load i32, i32* %48, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %48, align 4
  br label %426, !llvm.loop !38

470:                                              ; preds = %426
  br label %471

471:                                              ; preds = %470
  %472 = load i32, i32* %47, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %47, align 4
  br label %421, !llvm.loop !39

474:                                              ; preds = %421
  br label %475

475:                                              ; preds = %474, %413, %406
  br label %476

476:                                              ; preds = %475, %405, %395
  %477 = load i32, i32* %29, align 4
  %478 = add nsw i32 %477, 1
  store i32 %478, i32* %29, align 4
  br label %377, !llvm.loop !40

479:                                              ; preds = %377
  br label %480

480:                                              ; preds = %479, %373
  %481 = load i32*, i32** %15, align 8
  %482 = icmp ne i32* %481, null
  br i1 %482, label %483, label %492

483:                                              ; preds = %480
  %484 = load i32, i32* %17, align 4
  %485 = icmp sgt i32 %484, 0
  br i1 %485, label %486, label %492

486:                                              ; preds = %483
  %487 = load i32*, i32** %15, align 8
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %17, align 4
  %490 = icmp sge i32 %488, %489
  br i1 %490, label %491, label %492

491:                                              ; preds = %486
  br label %500

492:                                              ; preds = %486, %483, %480
  br label %493

493:                                              ; preds = %492, %151
  %494 = load i32, i32* %28, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %28, align 4
  br label %101, !llvm.loop !41

496:                                              ; preds = %101
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %30, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %30, align 4
  br label %92, !llvm.loop !42

500:                                              ; preds = %491, %92
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_superstring_conservative(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32*, i32** %6, align 8
  call void @do_find_superstring(i32 %7, i32* %8, i32* %9, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0, i32 0, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_superstring_liberties(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  call void @do_find_superstring(i32 %9, i32* null, i32* null, i32* %10, i32* %11, i32 20, i32* null, i32* null, i32 %12, i32 0, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_proper_superstring_liberties(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  call void @do_find_superstring(i32 %9, i32* null, i32* null, i32* %10, i32* %11, i32 20, i32* null, i32* null, i32 %12, i32 1, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_superstring_stones_and_liberties(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %12, align 4
  call void @do_find_superstring(i32 %13, i32* %14, i32* %15, i32* %16, i32* %17, i32 20, i32* null, i32* null, i32 %18, i32 0, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @superstring_chainlinks(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  call void @do_find_superstring(i32 %9, i32* null, i32* null, i32* null, i32* null, i32 0, i32* %10, i32* %11, i32 %12, i32 0, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proper_superstring_chainlinks(i32 %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  call void @do_find_superstring(i32 %9, i32* null, i32* null, i32* null, i32* null, i32 0, i32* %10, i32* %11, i32 %12, i32 1, i32 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_timer(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sge i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %10

9:                                                ; preds = %5, %1
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1824, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 -1, i32 -1)
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* @showtime, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  br label %19

14:                                               ; preds = %10
  %15 = call double @gg_cputime()
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x double], [4 x double]* @timers, i64 0, i64 %17
  store double %15, double* %18, align 8
  br label %19

19:                                               ; preds = %14, %13
  ret void
}

declare dso_local double @gg_cputime() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @time_report(i32 %0, i8* %1, i32 %2, double %3) #0 {
  %5 = alloca double, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store double %3, double* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14, %4
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1839, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 -1, i32 -1)
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* @showtime, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store double 0.000000e+00, double* %5, align 8
  br label %52

23:                                               ; preds = %19
  %24 = call double @gg_cputime()
  store double %24, double* %10, align 8
  %25 = load double, double* %10, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x double], [4 x double]* @timers, i64 0, i64 %27
  %29 = load double, double* %28, align 8
  %30 = fsub double %25, %29
  store double %30, double* %11, align 8
  %31 = load double, double* %11, align 8
  %32 = load double, double* %9, align 8
  %33 = fcmp ogt double %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %23
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = load double, double* %11, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i64 0, i64 0), double %44)
  br label %46

46:                                               ; preds = %42, %23
  %47 = load double, double* %10, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x double], [4 x double]* @timers, i64 0, i64 %49
  store double %47, double* %50, align 8
  %51 = load double, double* %11, align 8
  store double %51, double* %5, align 8
  br label %52

52:                                               ; preds = %46, %22
  %53 = load double, double* %5, align 8
  ret double %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_random_seed() #0 {
  %1 = call i32 @gg_rand()
  store i32 %1, i32* @random_seed, align 4
  %2 = load i32, i32* @random_seed, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 1, i32* @random_seed, align 4
  br label %5

5:                                                ; preds = %4, %0
  ret void
}

declare dso_local i32 @gg_rand() #1

declare dso_local i32 @min_eyes(%struct.eyevalue*) #1

declare dso_local i32 @is_proper_eye_space(i32) #1

declare dso_local i32 @owl_confirm_safety(i32, i32, i32*, i32*) #1

declare dso_local i32 @first_worm_in_dragon(i32) #1

declare dso_local i32 @next_worm_in_dragon(i32) #1

declare dso_local i32 @owl_does_attack(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @superstring_add_string(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7, i32* %8, i32* %9, i32 %10, i8* %11, i8* %12, i8* %13, i32 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca [241 x i32], align 16
  %33 = alloca i32, align 4
  %34 = alloca [160 x i32], align 16
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i32 %0, i32* %16, align 4
  store i32* %1, i32** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32* %3, i32** %19, align 8
  store i32* %4, i32** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32* %6, i32** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32 %10, i32* %26, align 4
  store i8* %11, i8** %27, align 8
  store i8* %12, i8** %28, align 8
  store i8* %13, i8** %29, align 8
  store i32 %14, i32* %30, align 4
  %37 = load i8*, i8** %27, align 8
  %38 = load i32, i32* %16, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %15
  br label %52

45:                                               ; preds = %15
  %46 = load i32, i32* %16, align 4
  %47 = sdiv i32 %46, 20
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %16, align 4
  %50 = srem i32 %49, 20
  %51 = sub nsw i32 %50, 1
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1755, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.30, i64 0, i64 0), i32 %48, i32 %51)
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* @board_size, align 4
  %55 = load i32, i32* @board_size, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32*, i32** %18, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = call i32 @findstones(i32 %53, i32 %56, i32* %61)
  store i32 %62, i32* %35, align 4
  %63 = load i32, i32* %16, align 4
  %64 = load i8*, i8** %27, align 8
  call void @mark_string(i32 %63, i8* %64, i8 signext 1)
  %65 = load i32*, i32** %20, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %102

67:                                               ; preds = %52
  %68 = load i32*, i32** %19, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %72

71:                                               ; preds = %67
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1763, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i32 -1, i32 -1)
  br label %72

72:                                               ; preds = %71, %70
  store i32 0, i32* %36, align 4
  br label %73

73:                                               ; preds = %98, %72
  %74 = load i32, i32* %36, align 4
  %75 = load i32, i32* %35, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %73
  %78 = load i32, i32* %30, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %77
  %81 = load i32*, i32** %18, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %36, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %20, align 8
  %90 = load i32*, i32** %19, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load i32*, i32** %19, align 8
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %80, %77
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %36, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %36, align 4
  br label %73, !llvm.loop !43

101:                                              ; preds = %73
  br label %102

102:                                              ; preds = %101, %52
  %103 = load i32, i32* %35, align 4
  %104 = load i32*, i32** %17, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %103
  store i32 %106, i32* %104, align 4
  %107 = load i32*, i32** %22, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %186

109:                                              ; preds = %102
  %110 = load i32*, i32** %21, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  br label %114

113:                                              ; preds = %109
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1775, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), i32 -1, i32 -1)
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %16, align 4
  %116 = getelementptr inbounds [241 x i32], [241 x i32]* %32, i64 0, i64 0
  %117 = call i32 @findlib(i32 %115, i32 241, i32* %116)
  store i32 %117, i32* %31, align 4
  %118 = load i32, i32* %26, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32, i32* %31, align 4
  %122 = load i32, i32* %26, align 4
  %123 = icmp sgt i32 %121, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %120
  %125 = load i32, i32* %35, align 4
  %126 = load i32*, i32** %17, align 8
  %127 = load i32, i32* %126, align 4
  %128 = sub nsw i32 %127, %125
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %124, %120, %114
  store i32 0, i32* %36, align 4
  br label %130

130:                                              ; preds = %182, %129
  %131 = load i32, i32* %36, align 4
  %132 = load i32, i32* %31, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %185

134:                                              ; preds = %130
  %135 = load i8*, i8** %28, align 8
  %136 = load i32, i32* %36, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [241 x i32], [241 x i32]* %32, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %135, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = icmp ne i8 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %134
  br label %182

145:                                              ; preds = %134
  %146 = load i8*, i8** %28, align 8
  %147 = load i32, i32* %36, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [241 x i32], [241 x i32]* %32, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  store i8 1, i8* %152, align 1
  %153 = load i32, i32* %30, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %181

155:                                              ; preds = %145
  %156 = load i32, i32* %26, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %155
  %159 = load i32, i32* %31, align 4
  %160 = load i32, i32* %26, align 4
  %161 = icmp sle i32 %159, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %158, %155
  %163 = load i32, i32* %36, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [241 x i32], [241 x i32]* %32, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %22, align 8
  %168 = load i32*, i32** %21, align 8
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %167, i64 %170
  store i32 %166, i32* %171, align 4
  %172 = load i32*, i32** %21, align 8
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = load i32*, i32** %21, align 8
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %23, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %162
  br label %185

180:                                              ; preds = %162
  br label %181

181:                                              ; preds = %180, %158, %145
  br label %182

182:                                              ; preds = %181, %144
  %183 = load i32, i32* %36, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %36, align 4
  br label %130, !llvm.loop !44

185:                                              ; preds = %179, %130
  br label %186

186:                                              ; preds = %185, %102
  %187 = load i32*, i32** %25, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %253

189:                                              ; preds = %186
  %190 = load i32*, i32** %24, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %189
  br label %194

193:                                              ; preds = %189
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 1800, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32 -1, i32 -1)
  br label %194

194:                                              ; preds = %193, %192
  %195 = load i32, i32* %16, align 4
  %196 = getelementptr inbounds [160 x i32], [160 x i32]* %34, i64 0, i64 0
  %197 = call i32 @chainlinks(i32 %195, i32* %196)
  store i32 %197, i32* %33, align 4
  store i32 0, i32* %36, align 4
  br label %198

198:                                              ; preds = %249, %194
  %199 = load i32, i32* %36, align 4
  %200 = load i32, i32* %33, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %252

202:                                              ; preds = %198
  %203 = load i32, i32* %26, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load i32, i32* %36, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [160 x i32], [160 x i32]* %34, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @countlib(i32 %209)
  %211 = load i32, i32* %26, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %205
  br label %249

214:                                              ; preds = %205, %202
  %215 = load i8*, i8** %29, align 8
  %216 = load i32, i32* %36, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [160 x i32], [160 x i32]* %34, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %215, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = icmp ne i8 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %214
  br label %249

225:                                              ; preds = %214
  %226 = load i8*, i8** %29, align 8
  %227 = load i32, i32* %36, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [160 x i32], [160 x i32]* %34, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %226, i64 %231
  store i8 1, i8* %232, align 1
  %233 = load i32, i32* %30, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %225
  %236 = load i32, i32* %36, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [160 x i32], [160 x i32]* %34, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %25, align 8
  %241 = load i32*, i32** %24, align 8
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  store i32 %239, i32* %244, align 4
  %245 = load i32*, i32** %24, align 8
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  br label %248

248:                                              ; preds = %235, %225
  br label %249

249:                                              ; preds = %248, %224, %213
  %250 = load i32, i32* %36, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %36, align 4
  br label %198, !llvm.loop !45

252:                                              ; preds = %198
  br label %253

253:                                              ; preds = %252, %186
  ret void
}

declare dso_local i32 @is_self_atari(i32, i32) #1

declare dso_local i32 @is_ko(i32, i32, i32*) #1

declare dso_local i32 @find_origin(i32) #1

declare dso_local i32 @findstones(i32, i32, i32*) #1

declare dso_local i32 @chainlinks(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone willreturn }

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
