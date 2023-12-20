; ModuleID = 'value_moves.c'
source_filename = "value_moves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.move_data = type { float, float, float, float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, [120 x i32], i32, i32, float }
%struct.move_reason = type { i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.Reason_set = type { i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.influence_data = type opaque

@best_move_values = external dso_local global [10 x float], align 16
@best_moves = external dso_local global [10 x i32], align 16
@urgent = external dso_local global i32, align 4
@allpats = external dso_local global i32, align 4
@.str = private unnamed_addr constant [37 x i8] c"  find_more_attack_and_defense_moves\00", align 1
@verbose = external dso_local global i32, align 4
@level = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"  find_more_owl_attack_and_defense_moves\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"  examine_move_safety\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"  induce_secondary_move_reasons\00", align 1
@printworms = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"  value_moves\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"\0ALooking for additional attack and defense moves. Trying moves ...\0A\00", align 1
@board_size = external dso_local global i32, align 4
@board = external dso_local global [421 x i8], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@move = external dso_local global [400 x %struct.move_data], align 16
@move_reasons = external dso_local global [1000 x %struct.move_reason], align 16
@.str.6 = private unnamed_addr constant [5 x i8] c"%1m \00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"find_more_attack_and_defense_moves\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"%ofound extra point of defense of %1m at %1m code %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"%ofound extra point of attack of %1m at %1m code %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [58 x i8] c"\0ATrying to upgrade strategical attack and defense moves.\0A\00", align 1
@eyes = external dso_local global [180 x i32], align 16
@eyecolor = external dso_local global [180 x i32], align 16
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@conn_worm1 = external dso_local global [962 x i32], align 16
@conn_worm2 = external dso_local global [962 x i32], align 16
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@.str.12 = private unnamed_addr constant [41 x i8] c"Move at %1m owl attacks %1m, result %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Move at %1m owl defends %1m, result %d.\0A\00", align 1
@either_data = external dso_local global [100 x %struct.Reason_set], align 16
@delta = external dso_local global [8 x i32], align 16
@.str.14 = private unnamed_addr constant [26 x i8] c"    examine_move_safety: \00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"induce_secondary_move_reasons\00", align 1
@debug = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [65 x i8] c"Connection move at %1m induced for %1m/%1m due to attack of %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"Cut move at %1m induced for %1m/%1m due to defense of %1m\0A\00", align 1
@.str.18 = private unnamed_addr constant [66 x i8] c"Connection move at %1m induced for %1m/%1m due to defense of %1m\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"induce_secondary_move_reasons-B\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\0AMove valuation:\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Move at %1m wasn't legal.\0A\00", align 1
@stackp = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [14 x i8] c"value_moves.c\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.24 = private unnamed_addr constant [70 x i8] c"  %1m:   %f - total followup value, added %f as territorial followup\0A\00", align 1
@.str.25 = private unnamed_addr constant [73 x i8] c"  %1m: %f - added due to followup (%f) and reverse followup values (%f)\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"  %1m: %f - secondary\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"  %1m: %f - shape \00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.28 = private unnamed_addr constant [58 x i8] c"(shape values +%4.2f(%d) -%4.2f(%d), shape factor %5.3f)\0A\00", align 1
@.str.29 = private unnamed_addr constant [30 x i8] c"  %1m: %f - connects strings \00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"(connect value %d, shape factor %5.3f)\0A\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"  %1m: %f - carry out threat or defend against threat\0A\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"  %1m:   %f - minimum accepted value\0A\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"  %1m:   %f - maximum accepted value\0A\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"Move generation values %1m to %f\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"board[aa] != color\00", align 1
@.str.36 = private unnamed_addr constant [55 x i8] c"  %1m:   %f (secondary) - attack on %1m (defenseless)\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"  %1m:   %f (secondary) - attack on %1m (dead)\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"  %1m: attack on worm %1m\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"  %1m: -%f - attack on worm %1m only with good ko\0A\00", align 1
@.str.40 = private unnamed_addr constant [50 x i8] c"  %1m: -%f - attack on worm %1m only with bad ko\0A\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"board[aa] == color\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"  %1m:   %f (secondary) - defense of %1m (dead)\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"  %1m: defense of worm %1m\0A\00", align 1
@.str.44 = private unnamed_addr constant [47 x i8] c"  %1m: -%f - defense of worm %1m with good ko\0A\00", align 1
@.str.45 = private unnamed_addr constant [46 x i8] c"  %1m: -%f - defense of worm %1m with bad ko\0A\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"  %1m: -%f - suspected ineffective defense of worm %1m\0A\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"board[aa] == other\00", align 1
@.str.48 = private unnamed_addr constant [48 x i8] c"    %1m: 0.0 - threatens to capture %1m (dead)\0A\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"estimate_territorial_value-A\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"estimate_territorial_value-b\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"%1m:   %f (followup) - threatens to capture %1m\0A\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"  %1m: %f (followup) - threatens to defend %1m\0A\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"  %1m: %f - semeai involving %1m\0A\00", align 1
@.str.54 = private unnamed_addr constant [56 x i8] c"  %1m: %f (followup) - threatens to win semeai for %1m\0A\00", align 1
@.str.55 = private unnamed_addr constant [53 x i8] c"  %1m: -0.5 - penalty for ko stone %1m (workaround)\0A\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"  %1m: owl attack/defend for %1m\0A\00", align 1
@.str.57 = private unnamed_addr constant [58 x i8] c"  %1m: -%f - owl attack/defense of %1m only with good ko\0A\00", align 1
@.str.58 = private unnamed_addr constant [57 x i8] c"  %1m: -%f - owl attack/defense of %1m only with bad ko\0A\00", align 1
@.str.59 = private unnamed_addr constant [59 x i8] c"  %1m: -%f - suspected ineffective owl attack of worm %1m\0A\00", align 1
@.str.60 = private unnamed_addr constant [51 x i8] c"    %1m: 0.0 - threatens to owl attack %1m (dead)\0A\00", align 1
@.str.61 = private unnamed_addr constant [52 x i8] c"  %1m: %f (followup) - threatens to owl attack %1m\0A\00", align 1
@.str.62 = private unnamed_addr constant [52 x i8] c"  %1m: %f (followup) - threatens to owl defend %1m\0A\00", align 1
@doing_scoring = external dso_local global i32, align 4
@.str.63 = private unnamed_addr constant [61 x i8] c"  %1m: %f - attack last move played, although it seems dead\0A\00", align 1
@.str.64 = private unnamed_addr constant [65 x i8] c"  %1m: %f - attack %1m, although it seems dead, as we are ahead\0A\00", align 1
@.str.65 = private unnamed_addr constant [61 x i8] c"  %1m: %f (reverse followup) - prevent threat to attack %1m\0A\00", align 1
@.str.66 = private unnamed_addr constant [61 x i8] c"  %1m: %f (reverse followup) - prevent threat to defend %1m\0A\00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"  %1m: %f - combination attack kills one of several worms\0A\00", align 1
@.str.68 = private unnamed_addr constant [65 x i8] c"  %1m: %f - defends against combination attack on several worms\0A\00", align 1
@.str.69 = private unnamed_addr constant [27 x i8] c"estimate_territorial_value\00", align 1
@move_influence = external dso_local global %struct.influence_data, align 1
@.str.70 = private unnamed_addr constant [11 x i8] c"after move\00", align 1
@followup_influence = external dso_local global %struct.influence_data, align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"followup\00", align 1
@initial_white_influence = external dso_local global %struct.influence_data, align 1
@initial_black_influence = external dso_local global %struct.influence_data, align 1
@.str.72 = private unnamed_addr constant [33 x i8] c"  %1m: %f - change in territory\0A\00", align 1
@.str.73 = private unnamed_addr constant [35 x i8] c"  %1m: 0.00 - change in territory\0A\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"  %1m:   %f - revised to meet minimum territory value\0A\00", align 1
@.str.75 = private unnamed_addr constant [55 x i8] c"  %1m:   %f - revised to meet maximum territory value\0A\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"  %1m: %f - %1m cutstone\0A\00", align 1
@next_lunch = external dso_local global i32, align 4
@lunch_worm = external dso_local global [240 x i32], align 16
@lunch_dragon = external dso_local global [240 x i32], align 16
@.str.77 = private unnamed_addr constant [37 x i8] c"  %1m:   %f - %1m attacked/defended\0A\00", align 1
@.str.78 = private unnamed_addr constant [57 x i8] c"  %1m: %f - either attacks %1m (%f) or attacks %1m (%f)\0A\00", align 1
@all_data = external dso_local global [100 x %struct.Reason_set], align 16
@.str.79 = private unnamed_addr constant [56 x i8] c"  %1m: %f - both defends %1m (%f) and defends %1m (%f)\0A\00", align 1
@.str.80 = private unnamed_addr constant [66 x i8] c"  %1m:   %f - connect %1m and %1m to attack thrashing dragon %1m\0A\00", align 1
@.str.81 = private unnamed_addr constant [47 x i8] c"  %1m:   %f - %1m cut/connect strategic value\0A\00", align 1
@.str.82 = private unnamed_addr constant [43 x i8] c"  %1m:   %f - %1m strategic attack/defend\0A\00", align 1
@.str.83 = private unnamed_addr constant [47 x i8] c"  %1m:   %f - %1m uncertain owl defense bonus\0A\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"dragon[aa].origin == aa\00", align 1
@.str.85 = private unnamed_addr constant [69 x i8] c"  %1m: 0.0 - disregarding strategic effect on %1m (critical dragon)\0A\00", align 1
@.str.86 = private unnamed_addr constant [56 x i8] c"  %1m:   %f - %1m strategic value already counted - A.\0A\00", align 1
@.str.87 = private unnamed_addr constant [37 x i8] c"  %1m: %f - strategic bonus for %1m\0A\00", align 1
@.str.88 = private unnamed_addr constant [56 x i8] c"  %1m:   %f - %1m strategic value already counted - B.\0A\00", align 1
@.str.89 = private unnamed_addr constant [37 x i8] c"  %1m: %f - strategic effect on %1m\0A\00", align 1
@.str.90 = private unnamed_addr constant [56 x i8] c"  %1m: %f - strategic penalty, considered as invasion.\0A\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@replacement_map = external dso_local global [400 x i32], align 16
@.str.92 = private unnamed_addr constant [40 x i8] c"Redistributing points from %1m to %1m.\0A\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"%1m is now valued %f.\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"%1m is now valued 0.\0A\00", align 1
@.str.95 = private unnamed_addr constant [13 x i8] c"\0ATop moves:\0A\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"%d. %1M %f\0A\00", align 1
@.str.97 = private unnamed_addr constant [31 x i8] c"Move at %1m would be suicide.\0A\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"Move at %1m would be an illegal ko capture.\0A\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"  reevaluate_ko_threats\00", align 1
@.str.100 = private unnamed_addr constant [43 x i8] c"Move at %1m is a blunder, subtracting %f.\0A\00", align 1
@.str.101 = private unnamed_addr constant [31 x i8] c"Move at %1m is now valued %f.\0A\00", align 1
@.str.102 = private unnamed_addr constant [20 x i8] c"ON_BOARD1(ko_stone)\00", align 1
@.str.103 = private unnamed_addr constant [26 x i8] c"Reevaluating ko threats.\0A\00", align 1
@.str.104 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"reevaluate_ko_threats\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"%1m: %f + %f = %f\0A\00", align 1
@.str.107 = private unnamed_addr constant [65 x i8] c"%1m: no additional ko value (threat does not work as ko threat)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @record_top_move(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  store i32 9, i32* %5, align 4
  br label %6

6:                                                ; preds = %46, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %6
  %10 = load float, float* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %12
  %14 = load float, float* %13, align 4
  %15 = fcmp ogt float %10, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 9
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %21
  %23 = load float, float* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %26
  store float %23, float* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i64 0, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %19, %16
  %37 = load float, float* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %39
  store float %37, float* %40, align 4
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %9
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %5, align 4
  br label %6, !llvm.loop !4

49:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_top_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %42, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 10
  br i1 %7, label %8, label %45

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i64 0, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %37, %15
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 9
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i64 0, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %35
  store float %33, float* %36, align 4
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %17, !llvm.loop !6

40:                                               ; preds = %17
  store i32 0, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @best_moves, i64 0, i64 9), align 4
  store float 0.000000e+00, float* getelementptr inbounds ([10 x float], [10 x float]* @best_move_values, i64 0, i64 9), align 4
  br label %41

41:                                               ; preds = %40, %8
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %5, !llvm.loop !7

45:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @review_move_reasons(i32* %0, float* %1, i32 %2, float %3, float %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store i32* %5, i32** %12, align 8
  call void @start_timer(i32 2)
  %14 = load i32, i32* @urgent, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %6
  %17 = load i32, i32* @allpats, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %6
  %20 = load i32, i32* %9, align 4
  call void @find_more_attack_and_defense_moves(i32 %20)
  %21 = call double @time_report(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* @verbose, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* @verbose, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @verbose, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* @verbose, align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* @level, align 4
  %31 = icmp sge i32 %30, 6
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  call void @find_more_owl_attack_and_defense_moves(i32 %33)
  %34 = call double @time_report(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* @verbose, align 4
  %37 = load i32, i32* @verbose, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @verbose, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* @verbose, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %9, align 4
  call void @examine_move_safety(i32 %43)
  %44 = call double @time_report(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 0, double 1.000000e+00)
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* @verbose, align 4
  %46 = load i32, i32* %9, align 4
  call void @induce_secondary_move_reasons(i32 %46)
  %47 = call double @time_report(i32 2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 0, double 1.000000e+00)
  %48 = load i32, i32* @printworms, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* @verbose, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50, %42
  %54 = load i32, i32* %9, align 4
  call void @list_move_reasons(i32 %54)
  br label %55

55:                                               ; preds = %53, %50
  %56 = load i32, i32* %9, align 4
  %57 = load float, float* %10, align 4
  %58 = load float, float* %11, align 4
  call void @value_moves(i32 %56, float %57, float %58)
  %59 = call double @time_report(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 0, double 1.000000e+00)
  call void @redistribute_points()
  call void @print_top_moves()
  %60 = load i32*, i32** %7, align 8
  %61 = load float*, float** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @find_best_move(i32* %60, float* %61, i32 %62, i32* %63)
  ret i32 %64
}

declare dso_local void @start_timer(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_more_attack_and_defense_moves(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [240 x i32], align 16
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
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %20 = load i32, i32* %2, align 4
  %21 = sub nsw i32 3, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @verbose, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %27

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %24
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %85, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @board_size, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %88

32:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %81, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @board_size, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %84

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = mul nsw i32 %38, 20
  %40 = add nsw i32 21, %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %49
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %60, i32 0, i32 16
  %62 = getelementptr inbounds [10 x i32], [10 x i32]* %61, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %68, i32 0, i32 18
  %70 = getelementptr inbounds [10 x i32], [10 x i32]* %69, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [240 x i32], [240 x i32]* %3, i64 0, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %65, %57, %49, %37
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %33, !llvm.loop !8

84:                                               ; preds = %33
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %28, !llvm.loop !9

88:                                               ; preds = %28
  call void @increase_depth_values()
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %412, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @board_size, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %415

93:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %94

94:                                               ; preds = %408, %93
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* @board_size, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %411

98:                                               ; preds = %94
  %99 = load i32, i32* %5, align 4
  %100 = mul nsw i32 %99, 20
  %101 = add nsw i32 21, %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %101, %102
  store i32 %103, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %182, %98
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 120
  br i1 %106, label %107, label %185

107:                                              ; preds = %104
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.move_data, %struct.move_data* %110, i32 0, i32 18
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [120 x i32], [120 x i32]* %111, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %107
  br label %185

119:                                              ; preds = %107
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %180, label %131

131:                                              ; preds = %119
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 4
  br i1 %137, label %180, label %138

138:                                              ; preds = %131
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %140
  %142 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 6
  br i1 %144, label %180, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %147
  %149 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 8
  br i1 %151, label %180, label %152

152:                                              ; preds = %145
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %154
  %156 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 10
  br i1 %158, label %180, label %159

159:                                              ; preds = %152
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %161
  %163 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 12
  br i1 %165, label %180, label %166

166:                                              ; preds = %159
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %168
  %170 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 14
  br i1 %172, label %180, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp eq i32 %178, 16
  br i1 %179, label %180, label %181

180:                                              ; preds = %173, %166, %159, %152, %145, %138, %131, %119
  br label %185

181:                                              ; preds = %173
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  br label %104, !llvm.loop !10

185:                                              ; preds = %180, %118, %104
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 120
  br i1 %187, label %198, label %188

188:                                              ; preds = %185
  %189 = load i32, i32* %7, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %190
  %192 = getelementptr inbounds %struct.move_data, %struct.move_data* %191, i32 0, i32 18
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [120 x i32], [120 x i32]* %192, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, -1
  br i1 %197, label %198, label %199

198:                                              ; preds = %188, %185
  br label %408

199:                                              ; preds = %188
  store i32 0, i32* %10, align 4
  %200 = load i32, i32* @verbose, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  br label %206

203:                                              ; preds = %199
  %204 = load i32, i32* %7, align 4
  %205 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  br label %206

206:                                              ; preds = %203, %202
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* %2, align 4
  %209 = call i32 @trymove(i32 %207, i32 %208, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 0)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %407

211:                                              ; preds = %206
  store i32 0, i32* %8, align 4
  br label %212

212:                                              ; preds = %403, %211
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %4, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %406

216:                                              ; preds = %212
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [240 x i32], [240 x i32]* %3, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  store i32 %220, i32* %13, align 4
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = load i32, i32* %2, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %315

228:                                              ; preds = %216
  %229 = load i32, i32* %7, align 4
  %230 = load i32, i32* %8, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [240 x i32], [240 x i32]* %3, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @defense_move_reason_known(i32 %229, i32 %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %315, label %236

236:                                              ; preds = %228
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @attack(i32 %237, i32* null)
  store i32 %238, i32* %14, align 4
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %241
  %243 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %242, i32 0, i32 16
  %244 = getelementptr inbounds [10 x i32], [10 x i32]* %243, i64 0, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %239, %245
  br i1 %246, label %247, label %314

247:                                              ; preds = %236
  store i32 1, i32* %15, align 4
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %249
  %251 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %250, i32 0, i32 15
  %252 = getelementptr inbounds [10 x i32], [10 x i32]* %251, i64 0, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %9, align 4
  %255 = call i32 @trymove(i32 %253, i32 %254, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 0)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %285

257:                                              ; preds = %247
  %258 = load i32, i32* %13, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = icmp ne i8 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %257
  store i32 0, i32* %15, align 4
  br label %284

264:                                              ; preds = %257
  %265 = load i32, i32* %13, align 4
  %266 = call i32 @find_defense(i32 %265, i32* null)
  %267 = sub nsw i32 5, %266
  store i32 %267, i32* %16, align 4
  %268 = load i32, i32* %16, align 4
  %269 = load i32, i32* %14, align 4
  %270 = icmp sgt i32 %268, %269
  br i1 %270, label %271, label %283

271:                                              ; preds = %264
  %272 = load i32, i32* %16, align 4
  store i32 %272, i32* %14, align 4
  %273 = load i32, i32* %14, align 4
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %276, i32 0, i32 16
  %278 = getelementptr inbounds [10 x i32], [10 x i32]* %277, i64 0, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp sge i32 %273, %279
  br i1 %280, label %281, label %282

281:                                              ; preds = %271
  store i32 0, i32* %15, align 4
  br label %282

282:                                              ; preds = %281, %271
  br label %283

283:                                              ; preds = %282, %264
  br label %284

284:                                              ; preds = %283, %263
  call void @popgo()
  br label %285

285:                                              ; preds = %284, %247
  %286 = load i32, i32* %15, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %313

288:                                              ; preds = %285
  %289 = load i32, i32* %10, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* @verbose, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %291
  br label %297

295:                                              ; preds = %291
  %296 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %294
  br label %298

298:                                              ; preds = %297, %288
  %299 = load i32, i32* @verbose, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %302, label %301

301:                                              ; preds = %298
  br label %308

302:                                              ; preds = %298
  %303 = load i32, i32* %13, align 4
  %304 = load i32, i32* %7, align 4
  %305 = load i32, i32* %14, align 4
  %306 = sub nsw i32 5, %305
  %307 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %303, i32 %304, i32 %306)
  br label %308

308:                                              ; preds = %302, %301
  store i32 1, i32* %10, align 4
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* %14, align 4
  %312 = sub nsw i32 5, %311
  call void @add_defense_move(i32 %309, i32 %310, i32 %312)
  br label %313

313:                                              ; preds = %308, %285
  br label %314

314:                                              ; preds = %313, %236
  br label %315

315:                                              ; preds = %314, %228, %216
  %316 = load i32, i32* %13, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = zext i8 %319 to i32
  %321 = load i32, i32* %9, align 4
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %323, label %402

323:                                              ; preds = %315
  %324 = load i32, i32* %7, align 4
  %325 = load i32, i32* %8, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [240 x i32], [240 x i32]* %3, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @attack_move_reason_known(i32 %324, i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %402, label %331

331:                                              ; preds = %323
  %332 = load i32, i32* %13, align 4
  %333 = call i32 @find_defense(i32 %332, i32* null)
  store i32 %333, i32* %17, align 4
  %334 = load i32, i32* %17, align 4
  %335 = load i32, i32* %13, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %336
  %338 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %337, i32 0, i32 18
  %339 = getelementptr inbounds [10 x i32], [10 x i32]* %338, i64 0, i64 0
  %340 = load i32, i32* %339, align 4
  %341 = icmp slt i32 %334, %340
  br i1 %341, label %342, label %401

342:                                              ; preds = %331
  store i32 1, i32* %18, align 4
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %344
  %346 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %345, i32 0, i32 17
  %347 = getelementptr inbounds [10 x i32], [10 x i32]* %346, i64 0, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = load i32, i32* %9, align 4
  %350 = call i32 @trymove(i32 %348, i32 %349, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 0, i32 0, i32 0)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %372

352:                                              ; preds = %342
  %353 = load i32, i32* %13, align 4
  %354 = call i32 @attack(i32 %353, i32* null)
  %355 = sub nsw i32 5, %354
  store i32 %355, i32* %19, align 4
  %356 = load i32, i32* %19, align 4
  %357 = load i32, i32* %17, align 4
  %358 = icmp sgt i32 %356, %357
  br i1 %358, label %359, label %371

359:                                              ; preds = %352
  %360 = load i32, i32* %19, align 4
  store i32 %360, i32* %17, align 4
  %361 = load i32, i32* %17, align 4
  %362 = load i32, i32* %13, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %363
  %365 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %364, i32 0, i32 18
  %366 = getelementptr inbounds [10 x i32], [10 x i32]* %365, i64 0, i64 0
  %367 = load i32, i32* %366, align 4
  %368 = icmp sge i32 %361, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %359
  store i32 0, i32* %18, align 4
  br label %370

370:                                              ; preds = %369, %359
  br label %371

371:                                              ; preds = %370, %352
  call void @popgo()
  br label %372

372:                                              ; preds = %371, %342
  %373 = load i32, i32* %18, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %400

375:                                              ; preds = %372
  %376 = load i32, i32* %10, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %385, label %378

378:                                              ; preds = %375
  %379 = load i32, i32* @verbose, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %382, label %381

381:                                              ; preds = %378
  br label %384

382:                                              ; preds = %378
  %383 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %384

384:                                              ; preds = %382, %381
  br label %385

385:                                              ; preds = %384, %375
  %386 = load i32, i32* @verbose, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %389, label %388

388:                                              ; preds = %385
  br label %395

389:                                              ; preds = %385
  %390 = load i32, i32* %13, align 4
  %391 = load i32, i32* %7, align 4
  %392 = load i32, i32* %17, align 4
  %393 = sub nsw i32 5, %392
  %394 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.10, i64 0, i64 0), i32 %390, i32 %391, i32 %393)
  br label %395

395:                                              ; preds = %389, %388
  store i32 1, i32* %10, align 4
  %396 = load i32, i32* %7, align 4
  %397 = load i32, i32* %13, align 4
  %398 = load i32, i32* %17, align 4
  %399 = sub nsw i32 5, %398
  call void @add_attack_move(i32 %396, i32 %397, i32 %399)
  br label %400

400:                                              ; preds = %395, %372
  br label %401

401:                                              ; preds = %400, %331
  br label %402

402:                                              ; preds = %401, %323, %315
  br label %403

403:                                              ; preds = %402
  %404 = load i32, i32* %8, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %8, align 4
  br label %212, !llvm.loop !11

406:                                              ; preds = %212
  call void @popgo()
  br label %407

407:                                              ; preds = %406, %206
  br label %408

408:                                              ; preds = %407, %198
  %409 = load i32, i32* %6, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %6, align 4
  br label %94, !llvm.loop !12

411:                                              ; preds = %94
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %5, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %5, align 4
  br label %89, !llvm.loop !13

415:                                              ; preds = %89
  %416 = load i32, i32* @verbose, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %419, label %418

418:                                              ; preds = %415
  br label %421

419:                                              ; preds = %415
  %420 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %421

421:                                              ; preds = %419, %418
  call void @decrease_depth_values()
  ret void
}

declare dso_local double @time_report(i32, i8*, i32, double) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_more_owl_attack_and_defense_moves(i32 %0) #0 {
  %2 = alloca i32, align 4
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
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* @verbose, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %31

29:                                               ; preds = %1
  %30 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.11, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %28
  store i32 21, i32* %3, align 4
  br label %32

32:                                               ; preds = %403, %31
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 400
  br i1 %34, label %35, label %406

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ne i32 %40, 3
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %403

43:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %399, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 120
  br i1 %46, label %47, label %402

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.move_data, %struct.move_data* %50, i32 0, i32 18
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [120 x i32], [120 x i32]* %51, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %402

59:                                               ; preds = %47
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 44
  br i1 %70, label %78, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %11, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %80

78:                                               ; preds = %71, %59
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %7, align 4
  br label %188

80:                                               ; preds = %71
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 2
  br i1 %86, label %122, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %122, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 6
  br i1 %100, label %122, label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 8
  br i1 %107, label %122, label %108

108:                                              ; preds = %101
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 10
  br i1 %114, label %122, label %115

115:                                              ; preds = %108
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 12
  br i1 %121, label %122, label %124

122:                                              ; preds = %115, %108, %101, %94, %87, %80
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %7, align 4
  br label %187

124:                                              ; preds = %115
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 54
  br i1 %130, label %131, label %153

131:                                              ; preds = %124
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [180 x i32], [180 x i32]* @eyes, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %13, align 4
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [180 x i32], [180 x i32]* @eyecolor, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %145

142:                                              ; preds = %131
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @find_eye_dragons(i32 %143, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0), i32 1, i32* %7, i32 1)
  br label %148

145:                                              ; preds = %131
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @find_eye_dragons(i32 %146, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0), i32 2, i32* %7, i32 1)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  br label %399

152:                                              ; preds = %148
  br label %186

153:                                              ; preds = %124
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %155
  %157 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 14
  br i1 %159, label %160, label %184

160:                                              ; preds = %153
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %12, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %170
  %172 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %160
  store i32 0, i32* %8, align 4
  br label %183

183:                                              ; preds = %182, %160
  br label %185

184:                                              ; preds = %153
  br label %399

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185, %152
  br label %187

187:                                              ; preds = %186, %122
  br label %188

188:                                              ; preds = %187, %78
  store i32 0, i32* %6, align 4
  br label %189

189:                                              ; preds = %395, %188
  %190 = load i32, i32* %6, align 4
  %191 = icmp slt i32 %190, 2
  br i1 %191, label %192, label %398

192:                                              ; preds = %189
  %193 = load i32, i32* %6, align 4
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = load i32, i32* %7, align 4
  store i32 %196, i32* %9, align 4
  br label %199

197:                                              ; preds = %192
  %198 = load i32, i32* %8, align 4
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = load i32, i32* %9, align 4
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  br label %395

203:                                              ; preds = %199
  %204 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %204, i64 %210
  %212 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 5
  br i1 %214, label %215, label %216

215:                                              ; preds = %203
  br label %395

216:                                              ; preds = %203
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %218
  %220 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 2
  br i1 %222, label %223, label %224

223:                                              ; preds = %216
  br label %395

224:                                              ; preds = %216
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %226
  %228 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 44
  br i1 %230, label %268, label %231

231:                                              ; preds = %224
  %232 = load i32, i32* %11, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %268, label %238

238:                                              ; preds = %231
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %240
  %242 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 4
  br i1 %244, label %268, label %245

245:                                              ; preds = %238
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %247
  %249 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 6
  br i1 %251, label %268, label %252

252:                                              ; preds = %245
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %254
  %256 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 54
  br i1 %258, label %259, label %306

259:                                              ; preds = %252
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %261
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = load i32, i32* %2, align 4
  %266 = sub nsw i32 3, %265
  %267 = icmp eq i32 %264, %266
  br i1 %267, label %268, label %306

268:                                              ; preds = %259, %245, %238, %231, %224
  %269 = load i32, i32* %3, align 4
  %270 = load i32, i32* %9, align 4
  %271 = call i32 @owl_attack_move_reason_known(i32 %269, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %306, label %273

273:                                              ; preds = %268
  store i32 0, i32* %17, align 4
  %274 = load i32, i32* %3, align 4
  %275 = load i32, i32* %9, align 4
  %276 = call i32 @owl_does_attack(i32 %274, i32 %275, i32* %17)
  store i32 %276, i32* %18, align 4
  %277 = load i32, i32* %18, align 4
  %278 = load i32, i32* %9, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %280, i32 0, i32 9
  %282 = load i32, i32* %281, align 4
  %283 = icmp sge i32 %277, %282
  br i1 %283, label %284, label %305

284:                                              ; preds = %273
  %285 = load i32, i32* %18, align 4
  %286 = icmp eq i32 %285, 3
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i32, i32* %3, align 4
  %289 = load i32, i32* %9, align 4
  %290 = load i32, i32* %17, align 4
  call void @add_gain_move(i32 %288, i32 %289, i32 %290)
  br label %295

291:                                              ; preds = %284
  %292 = load i32, i32* %3, align 4
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %18, align 4
  call void @add_owl_attack_move(i32 %292, i32 %293, i32 %294)
  br label %295

295:                                              ; preds = %291, %287
  %296 = load i32, i32* @verbose, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %295
  br label %304

299:                                              ; preds = %295
  %300 = load i32, i32* %3, align 4
  %301 = load i32, i32* %9, align 4
  %302 = load i32, i32* %18, align 4
  %303 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %300, i32 %301, i32 %302)
  br label %304

304:                                              ; preds = %299, %298
  br label %305

305:                                              ; preds = %304, %273
  br label %306

306:                                              ; preds = %305, %268, %259, %252
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %308
  %310 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 46
  br i1 %312, label %356, label %313

313:                                              ; preds = %306
  %314 = load i32, i32* %11, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %315
  %317 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 14
  br i1 %319, label %356, label %320

320:                                              ; preds = %313
  %321 = load i32, i32* %11, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %322
  %324 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 4
  %326 = icmp eq i32 %325, 8
  br i1 %326, label %356, label %327

327:                                              ; preds = %320
  %328 = load i32, i32* %11, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %329
  %331 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = icmp eq i32 %332, 10
  br i1 %333, label %356, label %334

334:                                              ; preds = %327
  %335 = load i32, i32* %11, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %336
  %338 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %339, 12
  br i1 %340, label %356, label %341

341:                                              ; preds = %334
  %342 = load i32, i32* %11, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %343
  %345 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 54
  br i1 %347, label %348, label %394

348:                                              ; preds = %341
  %349 = load i32, i32* %9, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %350
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = load i32, i32* %2, align 4
  %355 = icmp eq i32 %353, %354
  br i1 %355, label %356, label %394

356:                                              ; preds = %348, %334, %327, %320, %313, %306
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* %9, align 4
  %359 = call i32 @owl_defense_move_reason_known(i32 %357, i32 %358)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %394, label %361

361:                                              ; preds = %356
  store i32 0, i32* %19, align 4
  %362 = load i32, i32* %3, align 4
  %363 = load i32, i32* %9, align 4
  %364 = call i32 @owl_does_defend(i32 %362, i32 %363, i32* %19)
  store i32 %364, i32* %20, align 4
  %365 = load i32, i32* %20, align 4
  %366 = load i32, i32* %9, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %367
  %369 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %368, i32 0, i32 13
  %370 = load i32, i32* %369, align 4
  %371 = icmp sge i32 %365, %370
  br i1 %371, label %372, label %393

372:                                              ; preds = %361
  %373 = load i32, i32* %20, align 4
  %374 = icmp eq i32 %373, 2
  br i1 %374, label %375, label %379

375:                                              ; preds = %372
  %376 = load i32, i32* %3, align 4
  %377 = load i32, i32* %9, align 4
  %378 = load i32, i32* %19, align 4
  call void @add_loss_move(i32 %376, i32 %377, i32 %378)
  br label %383

379:                                              ; preds = %372
  %380 = load i32, i32* %3, align 4
  %381 = load i32, i32* %9, align 4
  %382 = load i32, i32* %20, align 4
  call void @add_owl_defense_move(i32 %380, i32 %381, i32 %382)
  br label %383

383:                                              ; preds = %379, %375
  %384 = load i32, i32* @verbose, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %387, label %386

386:                                              ; preds = %383
  br label %392

387:                                              ; preds = %383
  %388 = load i32, i32* %3, align 4
  %389 = load i32, i32* %9, align 4
  %390 = load i32, i32* %20, align 4
  %391 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0), i32 %388, i32 %389, i32 %390)
  br label %392

392:                                              ; preds = %387, %386
  br label %393

393:                                              ; preds = %392, %361
  br label %394

394:                                              ; preds = %393, %356, %348, %341
  br label %395

395:                                              ; preds = %394, %223, %215, %202
  %396 = load i32, i32* %6, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %6, align 4
  br label %189, !llvm.loop !14

398:                                              ; preds = %189
  br label %399

399:                                              ; preds = %398, %184, %151
  %400 = load i32, i32* %5, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %5, align 4
  br label %44, !llvm.loop !15

402:                                              ; preds = %58, %44
  br label %403

403:                                              ; preds = %402, %42
  %404 = load i32, i32* %3, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %3, align 4
  br label %32, !llvm.loop !16

406:                                              ; preds = %32
  store i32 21, i32* %3, align 4
  br label %407

407:                                              ; preds = %610, %406
  %408 = load i32, i32* %3, align 4
  %409 = icmp slt i32 %408, 400
  br i1 %409, label %410, label %613

410:                                              ; preds = %407
  %411 = load i32, i32* %3, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %412
  %414 = load i8, i8* %413, align 1
  %415 = zext i8 %414 to i32
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %424, label %417

417:                                              ; preds = %410
  %418 = load i32, i32* %3, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %419
  %421 = load i8, i8* %420, align 1
  %422 = zext i8 %421 to i32
  %423 = icmp eq i32 %422, 2
  br i1 %423, label %424, label %609

424:                                              ; preds = %417, %410
  %425 = load i32, i32* %3, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %426
  %428 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = load i32, i32* %3, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %609

432:                                              ; preds = %424
  %433 = load i32, i32* %3, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %434
  %436 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %435, i32 0, i32 7
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, 2
  br i1 %438, label %439, label %609

439:                                              ; preds = %432
  store i32 21, i32* %4, align 4
  br label %440

440:                                              ; preds = %605, %439
  %441 = load i32, i32* %4, align 4
  %442 = icmp slt i32 %441, 400
  br i1 %442, label %443, label %608

443:                                              ; preds = %440
  %444 = load i32, i32* %4, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %445
  %447 = load i8, i8* %446, align 1
  %448 = zext i8 %447 to i32
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %451

450:                                              ; preds = %443
  br label %605

451:                                              ; preds = %443
  store i32 0, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %452

452:                                              ; preds = %522, %451
  %453 = load i32, i32* %5, align 4
  %454 = icmp slt i32 %453, 120
  br i1 %454, label %455, label %525

455:                                              ; preds = %452
  %456 = load i32, i32* %4, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %457
  %459 = getelementptr inbounds %struct.move_data, %struct.move_data* %458, i32 0, i32 18
  %460 = load i32, i32* %5, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [120 x i32], [120 x i32]* %459, i64 0, i64 %461
  %463 = load i32, i32* %462, align 4
  store i32 %463, i32* %21, align 4
  %464 = load i32, i32* %21, align 4
  %465 = icmp slt i32 %464, 0
  br i1 %465, label %466, label %467

466:                                              ; preds = %455
  br label %525

467:                                              ; preds = %455
  %468 = load i32, i32* %21, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %469
  %471 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = icmp eq i32 %472, 26
  br i1 %473, label %509, label %474

474:                                              ; preds = %467
  %475 = load i32, i32* %21, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %476
  %478 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 4
  %480 = icmp eq i32 %479, 28
  br i1 %480, label %509, label %481

481:                                              ; preds = %474
  %482 = load i32, i32* %21, align 4
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %483
  %485 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %486, 30
  br i1 %487, label %509, label %488

488:                                              ; preds = %481
  %489 = load i32, i32* %21, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %490
  %492 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %493, 32
  br i1 %494, label %509, label %495

495:                                              ; preds = %488
  %496 = load i32, i32* %21, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %497
  %499 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = icmp eq i32 %500, 34
  br i1 %501, label %509, label %502

502:                                              ; preds = %495
  %503 = load i32, i32* %21, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %504
  %506 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = icmp eq i32 %507, 36
  br i1 %508, label %509, label %521

509:                                              ; preds = %502, %495, %488, %481, %474, %467
  %510 = load i32, i32* %21, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %511
  %513 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 4
  store i32 %514, i32* %9, align 4
  %515 = load i32, i32* %9, align 4
  %516 = load i32, i32* %3, align 4
  %517 = call i32 @are_neighbor_dragons(i32 %515, i32 %516)
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %509
  store i32 1, i32* %10, align 4
  br label %525

520:                                              ; preds = %509
  br label %521

521:                                              ; preds = %520, %502
  br label %522

522:                                              ; preds = %521
  %523 = load i32, i32* %5, align 4
  %524 = add nsw i32 %523, 1
  store i32 %524, i32* %5, align 4
  br label %452, !llvm.loop !17

525:                                              ; preds = %519, %466, %452
  %526 = load i32, i32* %10, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %604

528:                                              ; preds = %525
  %529 = load i32, i32* %3, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %530
  %532 = load i8, i8* %531, align 1
  %533 = zext i8 %532 to i32
  %534 = load i32, i32* %2, align 4
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %536, label %565

536:                                              ; preds = %528
  %537 = load i32, i32* %4, align 4
  %538 = load i32, i32* %3, align 4
  %539 = call i32 @owl_defense_move_reason_known(i32 %537, i32 %538)
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %565, label %541

541:                                              ; preds = %536
  store i32 0, i32* %22, align 4
  %542 = load i32, i32* %4, align 4
  %543 = load i32, i32* %3, align 4
  %544 = call i32 @owl_does_defend(i32 %542, i32 %543, i32* %22)
  store i32 %544, i32* %23, align 4
  %545 = load i32, i32* %23, align 4
  %546 = load i32, i32* %3, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %547
  %549 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %548, i32 0, i32 13
  %550 = load i32, i32* %549, align 4
  %551 = icmp sge i32 %545, %550
  br i1 %551, label %552, label %564

552:                                              ; preds = %541
  %553 = load i32, i32* %23, align 4
  %554 = icmp eq i32 %553, 2
  br i1 %554, label %555, label %559

555:                                              ; preds = %552
  %556 = load i32, i32* %4, align 4
  %557 = load i32, i32* %3, align 4
  %558 = load i32, i32* %22, align 4
  call void @add_loss_move(i32 %556, i32 %557, i32 %558)
  br label %563

559:                                              ; preds = %552
  %560 = load i32, i32* %4, align 4
  %561 = load i32, i32* %3, align 4
  %562 = load i32, i32* %23, align 4
  call void @add_owl_defense_move(i32 %560, i32 %561, i32 %562)
  br label %563

563:                                              ; preds = %559, %555
  br label %564

564:                                              ; preds = %563, %541
  br label %603

565:                                              ; preds = %536, %528
  %566 = load i32, i32* %3, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %567
  %569 = load i8, i8* %568, align 1
  %570 = zext i8 %569 to i32
  %571 = load i32, i32* %2, align 4
  %572 = icmp ne i32 %570, %571
  br i1 %572, label %573, label %602

573:                                              ; preds = %565
  %574 = load i32, i32* %4, align 4
  %575 = load i32, i32* %3, align 4
  %576 = call i32 @owl_attack_move_reason_known(i32 %574, i32 %575)
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %602, label %578

578:                                              ; preds = %573
  store i32 0, i32* %24, align 4
  %579 = load i32, i32* %4, align 4
  %580 = load i32, i32* %3, align 4
  %581 = call i32 @owl_does_attack(i32 %579, i32 %580, i32* %24)
  store i32 %581, i32* %25, align 4
  %582 = load i32, i32* %25, align 4
  %583 = load i32, i32* %3, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %584
  %586 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %585, i32 0, i32 9
  %587 = load i32, i32* %586, align 4
  %588 = icmp sge i32 %582, %587
  br i1 %588, label %589, label %601

589:                                              ; preds = %578
  %590 = load i32, i32* %25, align 4
  %591 = icmp eq i32 %590, 3
  br i1 %591, label %592, label %596

592:                                              ; preds = %589
  %593 = load i32, i32* %4, align 4
  %594 = load i32, i32* %3, align 4
  %595 = load i32, i32* %24, align 4
  call void @add_gain_move(i32 %593, i32 %594, i32 %595)
  br label %600

596:                                              ; preds = %589
  %597 = load i32, i32* %4, align 4
  %598 = load i32, i32* %3, align 4
  %599 = load i32, i32* %25, align 4
  call void @add_owl_attack_move(i32 %597, i32 %598, i32 %599)
  br label %600

600:                                              ; preds = %596, %592
  br label %601

601:                                              ; preds = %600, %578
  br label %602

602:                                              ; preds = %601, %573, %565
  br label %603

603:                                              ; preds = %602, %564
  br label %604

604:                                              ; preds = %603, %525
  br label %605

605:                                              ; preds = %604, %450
  %606 = load i32, i32* %4, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %4, align 4
  br label %440, !llvm.loop !18

608:                                              ; preds = %440
  br label %609

609:                                              ; preds = %608, %432, %424, %417
  br label %610

610:                                              ; preds = %609
  %611 = load i32, i32* %3, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %3, align 4
  br label %407, !llvm.loop !19

613:                                              ; preds = %407
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @examine_move_safety(i32 %0) #0 {
  %2 = alloca i32, align 4
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
  %16 = alloca [160 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @start_timer(i32 3)
  store i32 21, i32* %3, align 4
  br label %25

25:                                               ; preds = %445, %1
  %26 = load i32, i32* %3, align 4
  %27 = icmp slt i32 %26, 400
  br i1 %27, label %28, label %448

28:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  br label %445

36:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %418, %36
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %38, 120
  br i1 %39, label %40, label %421

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.move_data, %struct.move_data* %43, i32 0, i32 18
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [120 x i32], [120 x i32]* %44, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %421

52:                                               ; preds = %40
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  switch i32 %63, label %405 [
    i32 16, label %64
    i32 18, label %65
    i32 32, label %65
    i32 34, label %65
    i32 36, label %65
    i32 62, label %65
    i32 50, label %65
    i32 52, label %65
    i32 100, label %65
    i32 102, label %65
    i32 20, label %66
    i32 22, label %66
    i32 24, label %66
    i32 2, label %67
    i32 4, label %67
    i32 6, label %67
    i32 26, label %67
    i32 28, label %67
    i32 30, label %67
    i32 60, label %67
    i32 8, label %302
    i32 10, label %302
    i32 12, label %302
    i32 3, label %319
    i32 9, label %319
    i32 14, label %320
  ]

64:                                               ; preds = %52
  br label %405

65:                                               ; preds = %52, %52, %52, %52, %52, %52, %52, %52, %52
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %405

66:                                               ; preds = %52, %52, %52
  store i32 1, i32* %5, align 4
  br label %405

67:                                               ; preds = %52, %52, %52, %52, %52, %52, %52
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %76, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 6
  br i1 %75, label %76, label %84

76:                                               ; preds = %73, %70, %67
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %80, i32 0, i32 2
  %82 = load float, float* %81, align 4
  %83 = fptosi float %82 to i32
  store i32 %83, i32* %12, align 4
  br label %108

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  %86 = icmp eq i32 %85, 60
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %95, i32 0, i32 2
  %97 = load float, float* %96, align 4
  %98 = fptosi float %97 to i32
  store i32 %98, i32* %12, align 4
  br label %107

99:                                               ; preds = %84
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %103, i32 0, i32 4
  %105 = load float, float* %104, align 4
  %106 = fptosi float %105 to i32
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %99, %87
  br label %108

108:                                              ; preds = %107, %76
  %109 = load i32, i32* %12, align 4
  %110 = icmp sge i32 %109, 8
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %405

112:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 6
  br i1 %120, label %121, label %180

121:                                              ; preds = %118, %115, %112
  %122 = load i32, i32* %10, align 4
  %123 = getelementptr inbounds [160 x i32], [160 x i32]* %16, i64 0, i64 0
  %124 = call i32 @chainlinks(i32 %122, i32* %123)
  store i32 %124, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %125

125:                                              ; preds = %176, %121
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %15, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %179

129:                                              ; preds = %125
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [160 x i32], [160 x i32]* %16, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %17, align 4
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32, i32* %2, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %175

141:                                              ; preds = %129
  store i32 0, i32* %18, align 4
  br label %142

142:                                              ; preds = %163, %141
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %166

146:                                              ; preds = %142
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [160 x i32], [160 x i32]* %16, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %17, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %154, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %146
  br label %166

162:                                              ; preds = %146
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %18, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %18, align 4
  br label %142, !llvm.loop !20

166:                                              ; preds = %161, %142
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %17, align 4
  store i32 %173, i32* %11, align 4
  br label %174

174:                                              ; preds = %170, %166
  br label %175

175:                                              ; preds = %174, %129
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %125, !llvm.loop !21

179:                                              ; preds = %125
  br label %253

180:                                              ; preds = %118
  store i32 0, i32* %13, align 4
  br label %181

181:                                              ; preds = %249, %180
  %182 = load i32, i32* %13, align 4
  %183 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %183, i64 %189
  %191 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %182, %192
  br i1 %193, label %194, label %252

194:                                              ; preds = %181
  %195 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %196 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %196, i64 %202
  %204 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %203, i32 0, i32 1
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [10 x i32], [10 x i32]* %204, i64 0, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %195, i64 %209
  %211 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %213
  %215 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %2, align 4
  %218 = icmp eq i32 %216, %217
  br i1 %218, label %219, label %248

219:                                              ; preds = %194
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  %222 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %223 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %223, i64 %229
  %231 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %230, i32 0, i32 1
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [10 x i32], [10 x i32]* %231, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %222, i64 %236
  %238 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %11, align 4
  %240 = load i32, i32* %11, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %241
  %243 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %242, i32 0, i32 16
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 1
  br i1 %245, label %246, label %247

246:                                              ; preds = %219
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %247

247:                                              ; preds = %246, %219
  br label %248

248:                                              ; preds = %247, %194
  br label %249

249:                                              ; preds = %248
  %250 = load i32, i32* %13, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %13, align 4
  br label %181, !llvm.loop !22

252:                                              ; preds = %181
  br label %253

253:                                              ; preds = %252, %179
  %254 = load i32, i32* %14, align 4
  %255 = icmp sgt i32 %254, 1
  br i1 %255, label %256, label %257

256:                                              ; preds = %253
  br label %405

257:                                              ; preds = %253
  store i32 0, i32* %13, align 4
  br label %258

258:                                              ; preds = %280, %257
  %259 = load i32, i32* %13, align 4
  %260 = icmp slt i32 %259, 4
  br i1 %260, label %261, label %283

261:                                              ; preds = %258
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %263
  %265 = load i32, i32* %264, align 4
  store i32 %265, i32* %19, align 4
  %266 = load i32, i32* %3, align 4
  %267 = load i32, i32* %19, align 4
  %268 = add nsw i32 %266, %267
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %269
  %271 = load i8, i8* %270, align 1
  %272 = zext i8 %271 to i32
  %273 = load i32, i32* %2, align 4
  %274 = icmp eq i32 %272, %273
  br i1 %274, label %275, label %279

275:                                              ; preds = %261
  %276 = load i32, i32* %3, align 4
  %277 = load i32, i32* %19, align 4
  %278 = add nsw i32 %276, %277
  store i32 %278, i32* %11, align 4
  br label %283

279:                                              ; preds = %261
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %13, align 4
  br label %258, !llvm.loop !23

283:                                              ; preds = %275, %258
  %284 = load i32, i32* %11, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %405

287:                                              ; preds = %283
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %289
  %291 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %290, i32 0, i32 16
  %292 = load i32, i32* %291, align 4
  %293 = icmp eq i32 %292, 1
  br i1 %293, label %294, label %295

294:                                              ; preds = %287
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %405

295:                                              ; preds = %287
  %296 = load i32, i32* %3, align 4
  %297 = load i32, i32* %11, align 4
  %298 = call i32 @owl_does_defend(i32 %296, i32 %297, i32* null)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %295
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %301

301:                                              ; preds = %300, %295
  br label %405

302:                                              ; preds = %52, %52, %52
  %303 = load i32, i32* %9, align 4
  store i32 %303, i32* %20, align 4
  %304 = load i32, i32* %20, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %305
  %307 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %306, i32 0, i32 16
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 1
  br i1 %309, label %310, label %311

310:                                              ; preds = %302
  store i32 1, i32* %5, align 4
  br label %318

311:                                              ; preds = %302
  %312 = load i32, i32* %3, align 4
  %313 = load i32, i32* %20, align 4
  %314 = call i32 @owl_does_defend(i32 %312, i32 %313, i32* null)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store i32 1, i32* %5, align 4
  br label %317

317:                                              ; preds = %316, %311
  br label %318

318:                                              ; preds = %317, %310
  br label %405

319:                                              ; preds = %52, %52
  br label %405

320:                                              ; preds = %52
  %321 = load i32, i32* %7, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %322
  %324 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %326
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %21, align 4
  %329 = load i32, i32* %7, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %330
  %332 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i64 0, i64 %334
  %336 = load i32, i32* %335, align 4
  store i32 %336, i32* %22, align 4
  %337 = load i32, i32* %21, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %338
  %340 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  store i32 %341, i32* %23, align 4
  %342 = load i32, i32* %22, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %343
  %345 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %344, i32 0, i32 2
  %346 = load i32, i32* %345, align 4
  store i32 %346, i32* %24, align 4
  %347 = load i32, i32* %23, align 4
  %348 = load i32, i32* %24, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %351

350:                                              ; preds = %320
  br label %418

351:                                              ; preds = %320
  %352 = load i32, i32* %23, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %353
  %355 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = icmp eq i32 %356, 1
  br i1 %357, label %365, label %358

358:                                              ; preds = %351
  %359 = load i32, i32* %24, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %360
  %362 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %361, i32 0, i32 7
  %363 = load i32, i32* %362, align 4
  %364 = icmp eq i32 %363, 1
  br i1 %364, label %365, label %366

365:                                              ; preds = %358, %351
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %404

366:                                              ; preds = %358
  %367 = load i32, i32* %23, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %368
  %370 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %369, i32 0, i32 7
  %371 = load i32, i32* %370, align 4
  %372 = icmp eq i32 %371, 4
  br i1 %372, label %373, label %380

373:                                              ; preds = %366
  %374 = load i32, i32* %23, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %375
  %377 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %394, label %380

380:                                              ; preds = %373, %366
  %381 = load i32, i32* %24, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %382
  %384 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %383, i32 0, i32 7
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 4
  br i1 %386, label %387, label %395

387:                                              ; preds = %380
  %388 = load i32, i32* %24, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %389
  %391 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %390, i32 0, i32 5
  %392 = load i32, i32* %391, align 4
  %393 = icmp eq i32 %392, 1
  br i1 %393, label %394, label %395

394:                                              ; preds = %387, %373
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %403

395:                                              ; preds = %387, %380
  %396 = load i32, i32* %3, align 4
  %397 = load i32, i32* %23, align 4
  %398 = load i32, i32* %24, align 4
  %399 = call i32 @owl_connection_defends(i32 %396, i32 %397, i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %395
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %402

402:                                              ; preds = %401, %395
  br label %403

403:                                              ; preds = %402, %394
  br label %404

404:                                              ; preds = %403, %365
  br label %405

405:                                              ; preds = %52, %404, %319, %318, %301, %294, %286, %256, %111, %66, %65, %64
  %406 = load i32, i32* %5, align 4
  %407 = icmp eq i32 %406, 1
  br i1 %407, label %408, label %417

408:                                              ; preds = %405
  %409 = load i32, i32* %6, align 4
  %410 = icmp eq i32 %409, 1
  br i1 %410, label %416, label %411

411:                                              ; preds = %408
  %412 = load i32, i32* %3, align 4
  %413 = load i32, i32* %2, align 4
  %414 = call i32 @safe_move(i32 %412, i32 %413)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %411, %408
  br label %421

417:                                              ; preds = %411, %405
  br label %418

418:                                              ; preds = %417, %350
  %419 = load i32, i32* %4, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %4, align 4
  br label %37, !llvm.loop !24

421:                                              ; preds = %416, %51, %37
  %422 = load i32, i32* %5, align 4
  %423 = icmp eq i32 %422, 1
  br i1 %423, label %424, label %437

424:                                              ; preds = %421
  %425 = load i32, i32* %6, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %432, label %427

427:                                              ; preds = %424
  %428 = load i32, i32* %3, align 4
  %429 = load i32, i32* %2, align 4
  %430 = call i32 @safe_move(i32 %428, i32 %429)
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %437

432:                                              ; preds = %427, %424
  %433 = load i32, i32* %3, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %434
  %436 = getelementptr inbounds %struct.move_data, %struct.move_data* %435, i32 0, i32 19
  store i32 1, i32* %436, align 4
  br label %442

437:                                              ; preds = %427, %421
  %438 = load i32, i32* %3, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %439
  %441 = getelementptr inbounds %struct.move_data, %struct.move_data* %440, i32 0, i32 19
  store i32 0, i32* %441, align 4
  br label %442

442:                                              ; preds = %437, %432
  %443 = load i32, i32* %3, align 4
  %444 = call double @time_report(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %443, double 1.000000e+00)
  br label %445

445:                                              ; preds = %442, %35
  %446 = load i32, i32* %3, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %3, align 4
  br label %25, !llvm.loop !25

448:                                              ; preds = %25
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @induce_secondary_move_reasons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [160 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 21, i32* %3, align 4
  br label %20

20:                                               ; preds = %559, %1
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 400
  br i1 %22, label %23, label %562

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %559

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %555, %31
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 120
  br i1 %34, label %35, label %558

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.move_data, %struct.move_data* %38, i32 0, i32 18
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [120 x i32], [120 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %558

47:                                               ; preds = %35
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %355

61:                                               ; preds = %54, %47
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %80

73:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = sub nsw i32 3, %78
  store i32 %79, i32* %10, align 4
  br label %86

80:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %80, %73
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %89, i32 0, i32 18
  %91 = getelementptr inbounds [10 x i32], [10 x i32]* %90, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %555

95:                                               ; preds = %86
  %96 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %96, i64 %102
  %104 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 5
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %555

108:                                              ; preds = %95
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.move_data, %struct.move_data* %114, i32 0, i32 19
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %111
  br label %555

119:                                              ; preds = %111, %108
  %120 = load i32, i32* %7, align 4
  %121 = getelementptr inbounds [160 x i32], [160 x i32]* %12, i64 0, i64 0
  %122 = call i32 @extended_chainlinks(i32 %120, i32* %121, i32 1)
  store i32 %122, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %351, %119
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %354

127:                                              ; preds = %123
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %347, %127
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %350

134:                                              ; preds = %130
  %135 = load i32, i32* %5, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [160 x i32], [160 x i32]* %12, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %13, align 4
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [160 x i32], [160 x i32]* %12, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 %147, %152
  br i1 %153, label %154, label %155

154:                                              ; preds = %134
  br label %347

155:                                              ; preds = %134
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp ne i32 %163, %168
  br i1 %169, label %170, label %176

170:                                              ; preds = %158
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @disconnect(i32 %171, i32 %172, i32* null)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %170
  br label %347

176:                                              ; preds = %170, %158, %155
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %197, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = load i32, i32* %7, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp ne i32 %184, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %179
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @string_connect(i32 %192, i32 %193, i32* null)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %191
  br label %347

197:                                              ; preds = %191, %179, %176
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %197
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %205, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %200
  br label %347

213:                                              ; preds = %200, %197
  %214 = load i32, i32* %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %234, label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = load i32, i32* %7, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %221, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %216
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @disconnect(i32 %229, i32 %230, i32* null)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %228
  br label %347

234:                                              ; preds = %228, %216, %213
  %235 = load i32, i32* %3, align 4
  %236 = load i32, i32* %10, align 4
  %237 = load i32, i32* %7, align 4
  %238 = call i32 @trymove(i32 %235, i32 %236, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0), i32 %237, i32 0, i32 0)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %346

240:                                              ; preds = %234
  %241 = load i32, i32* %9, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %275

243:                                              ; preds = %240
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = load i32, i32* %7, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = icmp ne i32 %248, %253
  br i1 %254, label %255, label %275

255:                                              ; preds = %243
  %256 = load i32, i32* %13, align 4
  %257 = load i32, i32* %14, align 4
  %258 = call i32 @disconnect(i32 %256, i32 %257, i32* null)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %275, label %260

260:                                              ; preds = %255
  %261 = load i32, i32* @debug, align 4
  %262 = and i32 %261, 2048
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  br label %271

265:                                              ; preds = %260
  %266 = load i32, i32* %3, align 4
  %267 = load i32, i32* %13, align 4
  %268 = load i32, i32* %14, align 4
  %269 = load i32, i32* %7, align 4
  %270 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0), i32 %266, i32 %267, i32 %268, i32 %269)
  br label %271

271:                                              ; preds = %265, %264
  %272 = load i32, i32* %3, align 4
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %14, align 4
  call void @add_connection_move(i32 %272, i32 %273, i32 %274)
  br label %275

275:                                              ; preds = %271, %255, %243, %240
  %276 = load i32, i32* %9, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %310, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %280
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = load i32, i32* %7, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp ne i32 %283, %288
  br i1 %289, label %290, label %310

290:                                              ; preds = %278
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* %14, align 4
  %293 = call i32 @string_connect(i32 %291, i32 %292, i32* null)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %310, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* @debug, align 4
  %297 = and i32 %296, 2048
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %295
  br label %306

300:                                              ; preds = %295
  %301 = load i32, i32* %3, align 4
  %302 = load i32, i32* %13, align 4
  %303 = load i32, i32* %14, align 4
  %304 = load i32, i32* %7, align 4
  %305 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.17, i64 0, i64 0), i32 %301, i32 %302, i32 %303, i32 %304)
  br label %306

306:                                              ; preds = %300, %299
  %307 = load i32, i32* %3, align 4
  %308 = load i32, i32* %13, align 4
  %309 = load i32, i32* %14, align 4
  call void @add_cut_move(i32 %307, i32 %308, i32 %309)
  br label %310

310:                                              ; preds = %306, %290, %278, %275
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %345, label %313

313:                                              ; preds = %310
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %315
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %320
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = icmp eq i32 %318, %323
  br i1 %324, label %325, label %345

325:                                              ; preds = %313
  %326 = load i32, i32* %13, align 4
  %327 = load i32, i32* %14, align 4
  %328 = call i32 @disconnect(i32 %326, i32 %327, i32* null)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %345, label %330

330:                                              ; preds = %325
  %331 = load i32, i32* @debug, align 4
  %332 = and i32 %331, 2048
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %335, label %334

334:                                              ; preds = %330
  br label %341

335:                                              ; preds = %330
  %336 = load i32, i32* %3, align 4
  %337 = load i32, i32* %13, align 4
  %338 = load i32, i32* %14, align 4
  %339 = load i32, i32* %7, align 4
  %340 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.18, i64 0, i64 0), i32 %336, i32 %337, i32 %338, i32 %339)
  br label %341

341:                                              ; preds = %335, %334
  %342 = load i32, i32* %3, align 4
  %343 = load i32, i32* %13, align 4
  %344 = load i32, i32* %14, align 4
  call void @add_connection_move(i32 %342, i32 %343, i32 %344)
  br label %345

345:                                              ; preds = %341, %325, %313, %310
  call void @popgo()
  br label %346

346:                                              ; preds = %345, %234
  br label %347

347:                                              ; preds = %346, %233, %212, %196, %175, %154
  %348 = load i32, i32* %6, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %6, align 4
  br label %130, !llvm.loop !26

350:                                              ; preds = %130
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %5, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %5, align 4
  br label %123, !llvm.loop !27

354:                                              ; preds = %123
  br label %554

355:                                              ; preds = %54
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %357
  %359 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %360, 26
  br i1 %361, label %362, label %423

362:                                              ; preds = %355
  %363 = load i32, i32* %8, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %368

368:                                              ; preds = %419, %362
  %369 = load i32, i32* %5, align 4
  %370 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %371 = load i32, i32* %7, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %372
  %374 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %373, i32 0, i32 1
  %375 = load i32, i32* %374, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %370, i64 %376
  %378 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %377, i32 0, i32 2
  %379 = load i32, i32* %378, align 4
  %380 = icmp slt i32 %369, %379
  br i1 %380, label %381, label %422

381:                                              ; preds = %368
  %382 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %383 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %384 = load i32, i32* %7, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %385
  %387 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %383, i64 %389
  %391 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %390, i32 0, i32 1
  %392 = load i32, i32* %5, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [10 x i32], [10 x i32]* %391, i64 0, i64 %393
  %395 = load i32, i32* %394, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %382, i64 %396
  %398 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %15, align 4
  %400 = load i32, i32* %15, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %401
  %403 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = load i32, i32* %2, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %418

407:                                              ; preds = %381
  %408 = load i32, i32* %15, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %409
  %411 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %410, i32 0, i32 16
  %412 = getelementptr inbounds [10 x i32], [10 x i32]* %411, i64 0, i64 0
  %413 = load i32, i32* %412, align 4
  %414 = icmp eq i32 %413, 0
  br i1 %414, label %415, label %418

415:                                              ; preds = %407
  %416 = load i32, i32* %3, align 4
  %417 = load i32, i32* %15, align 4
  call void @add_strategical_defense_move(i32 %416, i32 %417)
  br label %418

418:                                              ; preds = %415, %407, %381
  br label %419

419:                                              ; preds = %418
  %420 = load i32, i32* %5, align 4
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* %5, align 4
  br label %368, !llvm.loop !28

422:                                              ; preds = %368
  br label %553

423:                                              ; preds = %355
  %424 = load i32, i32* %8, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %425
  %427 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = icmp eq i32 %428, 14
  br i1 %429, label %430, label %552

430:                                              ; preds = %423
  %431 = load i32, i32* %3, align 4
  %432 = load i32, i32* %2, align 4
  %433 = sub nsw i32 3, %432
  %434 = call i32 @cut_possible(i32 %431, i32 %433)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %552

436:                                              ; preds = %430
  %437 = load i32, i32* %8, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %438
  %440 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %442
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %16, align 4
  %445 = load i32, i32* %8, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %446
  %448 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %447, i32 0, i32 1
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i64 0, i64 %450
  %452 = load i32, i32* %451, align 4
  store i32 %452, i32* %17, align 4
  store i32 21, i32* %18, align 4
  br label %453

453:                                              ; preds = %548, %436
  %454 = load i32, i32* %18, align 4
  %455 = icmp slt i32 %454, 400
  br i1 %455, label %456, label %551

456:                                              ; preds = %453
  %457 = load i32, i32* %18, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %458
  %460 = load i8, i8* %459, align 1
  %461 = zext i8 %460 to i32
  %462 = icmp ne i32 %461, 3
  br i1 %462, label %463, label %547

463:                                              ; preds = %456
  %464 = load i32, i32* %18, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %465
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %470, label %547

470:                                              ; preds = %463
  %471 = load i32, i32* %18, align 4
  %472 = load i32, i32* %2, align 4
  %473 = sub nsw i32 3, %472
  %474 = call i32 @cut_possible(i32 %471, i32 %473)
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %547

476:                                              ; preds = %470
  %477 = load i32, i32* %3, align 4
  %478 = load i32, i32* %18, align 4
  %479 = call i32 @bdist(i32 %477, i32 %478)
  %480 = icmp sle i32 %479, 5
  br i1 %480, label %481, label %547

481:                                              ; preds = %476
  store i32 0, i32* %6, align 4
  br label %482

482:                                              ; preds = %543, %481
  %483 = load i32, i32* %6, align 4
  %484 = icmp slt i32 %483, 8
  br i1 %484, label %485, label %546

485:                                              ; preds = %482
  %486 = load i32, i32* %18, align 4
  %487 = load i32, i32* %6, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %488
  %490 = load i32, i32* %489, align 4
  %491 = add nsw i32 %486, %490
  store i32 %491, i32* %19, align 4
  %492 = load i32, i32* %19, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %493
  %495 = load i8, i8* %494, align 1
  %496 = zext i8 %495 to i32
  %497 = icmp ne i32 %496, 3
  br i1 %497, label %498, label %542

498:                                              ; preds = %485
  %499 = load i32, i32* %19, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %500
  %502 = load i8, i8* %501, align 1
  %503 = zext i8 %502 to i32
  %504 = load i32, i32* %2, align 4
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %542

506:                                              ; preds = %498
  %507 = load i32, i32* %19, align 4
  %508 = load i32, i32* %16, align 4
  %509 = call i32 @is_same_worm(i32 %507, i32 %508)
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %542, label %511

511:                                              ; preds = %506
  %512 = load i32, i32* %19, align 4
  %513 = load i32, i32* %17, align 4
  %514 = call i32 @is_same_worm(i32 %512, i32 %513)
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %542, label %516

516:                                              ; preds = %511
  %517 = load i32, i32* %3, align 4
  %518 = load i32, i32* %2, align 4
  %519 = load i32, i32* %16, align 4
  %520 = call i32 @trymove(i32 %517, i32 %518, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %519, i32 0, i32 0)
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %541

522:                                              ; preds = %516
  %523 = load i32, i32* %19, align 4
  %524 = load i32, i32* %16, align 4
  %525 = call i32 @disconnect(i32 %523, i32 %524, i32* null)
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %531, label %527

527:                                              ; preds = %522
  %528 = load i32, i32* %3, align 4
  %529 = load i32, i32* %19, align 4
  %530 = load i32, i32* %16, align 4
  call void @add_connection_move(i32 %528, i32 %529, i32 %530)
  br label %531

531:                                              ; preds = %527, %522
  %532 = load i32, i32* %19, align 4
  %533 = load i32, i32* %17, align 4
  %534 = call i32 @disconnect(i32 %532, i32 %533, i32* null)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %540, label %536

536:                                              ; preds = %531
  %537 = load i32, i32* %3, align 4
  %538 = load i32, i32* %19, align 4
  %539 = load i32, i32* %17, align 4
  call void @add_connection_move(i32 %537, i32 %538, i32 %539)
  br label %540

540:                                              ; preds = %536, %531
  call void @popgo()
  br label %541

541:                                              ; preds = %540, %516
  br label %542

542:                                              ; preds = %541, %511, %506, %498, %485
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %6, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %6, align 4
  br label %482, !llvm.loop !29

546:                                              ; preds = %482
  br label %547

547:                                              ; preds = %546, %476, %470, %463, %456
  br label %548

548:                                              ; preds = %547
  %549 = load i32, i32* %18, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %18, align 4
  br label %453, !llvm.loop !30

551:                                              ; preds = %453
  br label %552

552:                                              ; preds = %551, %430, %423
  br label %553

553:                                              ; preds = %552, %422
  br label %554

554:                                              ; preds = %553, %354
  br label %555

555:                                              ; preds = %554, %118, %107, %94
  %556 = load i32, i32* %4, align 4
  %557 = add nsw i32 %556, 1
  store i32 %557, i32* %4, align 4
  br label %32, !llvm.loop !31

558:                                              ; preds = %46, %32
  br label %559

559:                                              ; preds = %558, %30
  %560 = load i32, i32* %3, align 4
  %561 = add nsw i32 %560, 1
  store i32 %561, i32* %3, align 4
  br label %20, !llvm.loop !32

562:                                              ; preds = %20
  ret void
}

declare dso_local void @list_move_reasons(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @value_moves(i32 %0, float %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  store float %2, float* %6, align 4
  %10 = load i32, i32* @verbose, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %15

13:                                               ; preds = %3
  %14 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %12
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %99, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @board_size, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %102

20:                                               ; preds = %16
  %21 = load i32, i32* @board_size, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %95, %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %98

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, 20
  %29 = add nsw i32 21, %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load float, float* %5, align 4
  %35 = load float, float* %6, align 4
  %36 = call float @value_move_reasons(i32 %32, i32 %33, float %34, float %35)
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.move_data, %struct.move_data* %39, i32 0, i32 0
  store float %36, float* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.move_data, %struct.move_data* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fpext float %45 to double
  %47 = fcmp oeq double %46, 0.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %95

49:                                               ; preds = %26
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @is_legal(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @is_illegal_ko_capture(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %54, %49
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.move_data, %struct.move_data* %62, i32 0, i32 21
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = fmul double 1.000000e-02, %65
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.move_data, %struct.move_data* %69, i32 0, i32 17
  %71 = load float, float* %70, align 4
  %72 = fpext float %71 to double
  %73 = fmul double %66, %72
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.move_data, %struct.move_data* %76, i32 0, i32 0
  %78 = load float, float* %77, align 4
  %79 = fpext float %78 to double
  %80 = fadd double %79, %73
  %81 = fptrunc double %80 to float
  store float %81, float* %77, align 4
  br label %94

82:                                               ; preds = %54
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.move_data, %struct.move_data* %85, i32 0, i32 0
  store float 0.000000e+00, float* %86, align 4
  %87 = load i32, i32* @verbose, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %82
  br label %93

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  %92 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %90, %89
  br label %94

94:                                               ; preds = %93, %59
  br label %95

95:                                               ; preds = %94, %48
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %7, align 4
  br label %23, !llvm.loop !33

98:                                               ; preds = %23
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %16, !llvm.loop !34

102:                                              ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redistribute_points() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 21, i32* %2, align 4
  br label %3

3:                                                ; preds = %24, %0
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 400
  br i1 %5, label %6, label %27

6:                                                ; preds = %3
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %23

13:                                               ; preds = %6
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.move_data, %struct.move_data* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.move_data, %struct.move_data* %21, i32 0, i32 1
  store float %18, float* %22, align 4
  br label %23

23:                                               ; preds = %13, %6
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %3, !llvm.loop !35

27:                                               ; preds = %3
  store i32 21, i32* %1, align 4
  br label %28

28:                                               ; preds = %102, %27
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %29, 400
  br i1 %30, label %31, label %105

31:                                               ; preds = %28
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 3
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %102

39:                                               ; preds = %31
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %102

47:                                               ; preds = %39
  %48 = load i32, i32* @verbose, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %55

51:                                               ; preds = %47
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.92, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %50
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.move_data, %struct.move_data* %58, i32 0, i32 1
  %60 = load float, float* %59, align 4
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.move_data, %struct.move_data* %63, i32 0, i32 1
  %65 = load float, float* %64, align 4
  %66 = fcmp olt float %60, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %55
  %68 = load i32, i32* @verbose, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %80

71:                                               ; preds = %67
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.move_data, %struct.move_data* %75, i32 0, i32 1
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.93, i64 0, i64 0), i32 %72, double %78)
  br label %80

80:                                               ; preds = %71, %70
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.move_data, %struct.move_data* %83, i32 0, i32 1
  %85 = load float, float* %84, align 4
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.move_data, %struct.move_data* %88, i32 0, i32 1
  store float %85, float* %89, align 4
  br label %90

90:                                               ; preds = %80, %55
  %91 = load i32, i32* @verbose, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  br label %97

94:                                               ; preds = %90
  %95 = load i32, i32* %1, align 4
  %96 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.94, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %93
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.move_data, %struct.move_data* %100, i32 0, i32 1
  store float 0.000000e+00, float* %101, align 4
  br label %102

102:                                              ; preds = %97, %46, %38
  %103 = load i32, i32* %1, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %1, align 4
  br label %28, !llvm.loop !36

105:                                              ; preds = %28
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_top_moves() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %14, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 10
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i64 0, i64 %9
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %12
  store float 0.000000e+00, float* %13, align 4
  br label %14

14:                                               ; preds = %7
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %4, !llvm.loop !37

17:                                               ; preds = %4
  store i32 21, i32* %2, align 4
  br label %18

18:                                               ; preds = %45, %17
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %19, 400
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp ne i32 %26, 3
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.move_data, %struct.move_data* %31, i32 0, i32 1
  %33 = load float, float* %32, align 4
  %34 = fpext float %33 to double
  %35 = fcmp ole double %34, 0.000000e+00
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %21
  br label %45

37:                                               ; preds = %28
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.move_data, %struct.move_data* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  store float %42, float* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load float, float* %3, align 4
  call void @record_top_move(i32 %43, float %44)
  br label %45

45:                                               ; preds = %37, %36
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %2, align 4
  br label %18, !llvm.loop !38

48:                                               ; preds = %18
  %49 = load i32, i32* @verbose, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @debug, align 4
  %53 = and i32 %52, 4194304
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %86

55:                                               ; preds = %51, %48
  %56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.95, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %82, %55
  %58 = load i32, i32* %1, align 4
  %59 = icmp slt i32 %58, 10
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = fcmp ogt double %65, 0.000000e+00
  br label %67

67:                                               ; preds = %60, %57
  %68 = phi i1 [ false, %57 ], [ %66, %60 ]
  br i1 %68, label %69, label %85

69:                                               ; preds = %67
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* %1, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* @best_moves, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [10 x float], [10 x float]* @best_move_values, i64 0, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fpext float %79 to double
  %81 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i64 0, i64 0), i32 %71, i32 %75, double %80)
  br label %82

82:                                               ; preds = %69
  %83 = load i32, i32* %1, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %1, align 4
  br label %57, !llvm.loop !39

85:                                               ; preds = %67
  br label %86

86:                                               ; preds = %85, %51
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_best_move(i32* %0, float* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [400 x i8], align 16
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store i32* %0, i32** %6, align 8
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = getelementptr inbounds [400 x i8], [400 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 400, i1 false)
  br label %19

19:                                               ; preds = %197, %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %198

23:                                               ; preds = %19
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 21, i32* %15, align 4
  br label %24

24:                                               ; preds = %95, %23
  %25 = load i32, i32* %15, align 4
  %26 = icmp slt i32 %25, 400
  br i1 %26, label %27, label %98

27:                                               ; preds = %24
  %28 = load i32, i32* %15, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.move_data, %struct.move_data* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  store float %32, float* %16, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %95

43:                                               ; preds = %35, %27
  %44 = load i32, i32* %15, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 3
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.move_data, %struct.move_data* %53, i32 0, i32 1
  %55 = load float, float* %54, align 4
  %56 = fpext float %55 to double
  %57 = fcmp oeq double %56, 0.000000e+00
  br i1 %57, label %58, label %59

58:                                               ; preds = %50, %43
  br label %95

59:                                               ; preds = %50
  %60 = load float, float* %16, align 4
  %61 = load float, float* %13, align 4
  %62 = fcmp ogt float %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @is_legal(i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @is_illegal_ko_capture(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %63
  %74 = load float, float* %16, align 4
  store float %74, float* %13, align 4
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %14, align 4
  br label %93

76:                                               ; preds = %68
  %77 = load i32, i32* @verbose, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %76
  br label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %15, align 4
  %82 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.97, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32, i32* %15, align 4
  call void @remove_top_move(i32 %84)
  %85 = load i32, i32* %15, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.move_data, %struct.move_data* %87, i32 0, i32 0
  store float 0.000000e+00, float* %88, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.move_data, %struct.move_data* %91, i32 0, i32 1
  store float 0.000000e+00, float* %92, align 4
  br label %93

93:                                               ; preds = %83, %73
  br label %94

94:                                               ; preds = %93, %59
  br label %95

95:                                               ; preds = %94, %58, %42
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %24, !llvm.loop !40

98:                                               ; preds = %24
  %99 = load float, float* %13, align 4
  %100 = fpext float %99 to double
  %101 = fcmp ogt double %100, 0.000000e+00
  br i1 %101, label %102, label %127

102:                                              ; preds = %98
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @is_illegal_ko_capture(i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load i32, i32* @verbose, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  br label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %14, align 4
  %113 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.98, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %110
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %8, align 4
  call void @reevaluate_ko_threats(i32 %115, i32 %116)
  call void @redistribute_points()
  %117 = call double @time_report(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i64 0, i64 0), i32 0, double 1.000000e+00)
  store i32 1, i32* %11, align 4
  %118 = load i32, i32* %14, align 4
  call void @remove_top_move(i32 %118)
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.move_data, %struct.move_data* %121, i32 0, i32 0
  store float 0.000000e+00, float* %122, align 4
  %123 = load i32, i32* %14, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.move_data, %struct.move_data* %125, i32 0, i32 1
  store float 0.000000e+00, float* %126, align 4
  call void @print_top_moves()
  store i32 0, i32* %10, align 4
  br label %197

127:                                              ; preds = %102, %98
  %128 = load float, float* %13, align 4
  %129 = fpext float %128 to double
  %130 = fcmp ogt double %129, 0.000000e+00
  br i1 %130, label %131, label %195

131:                                              ; preds = %127
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [400 x i8], [400 x i8]* %12, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %193, label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call float @value_moves_get_blunder_size(i32 %138, i32 %139)
  store float %140, float* %17, align 4
  %141 = load float, float* %17, align 4
  %142 = fpext float %141 to double
  %143 = fcmp ogt double %142, 0.000000e+00
  br i1 %143, label %144, label %191

144:                                              ; preds = %137
  %145 = load i32, i32* @verbose, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  br label %153

148:                                              ; preds = %144
  %149 = load i32, i32* %14, align 4
  %150 = load float, float* %17, align 4
  %151 = fpext float %150 to double
  %152 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.100, i64 0, i64 0), i32 %149, double %151)
  br label %153

153:                                              ; preds = %148, %147
  %154 = load i32, i32* %14, align 4
  call void @remove_top_move(i32 %154)
  %155 = load float, float* %17, align 4
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.move_data, %struct.move_data* %158, i32 0, i32 0
  %160 = load float, float* %159, align 4
  %161 = fsub float %160, %155
  store float %161, float* %159, align 4
  %162 = load float, float* %17, align 4
  %163 = load i32, i32* %14, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.move_data, %struct.move_data* %165, i32 0, i32 1
  %167 = load float, float* %166, align 4
  %168 = fsub float %167, %162
  store float %168, float* %166, align 4
  %169 = load i32, i32* @verbose, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %153
  br label %181

172:                                              ; preds = %153
  %173 = load i32, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.move_data, %struct.move_data* %176, i32 0, i32 1
  %178 = load float, float* %177, align 4
  %179 = fpext float %178 to double
  %180 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.101, i64 0, i64 0), i32 %173, double %179)
  br label %181

181:                                              ; preds = %172, %171
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %14, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %184
  %186 = getelementptr inbounds %struct.move_data, %struct.move_data* %185, i32 0, i32 1
  %187 = load float, float* %186, align 4
  call void @record_top_move(i32 %182, float %187)
  store i32 0, i32* %10, align 4
  %188 = load i32, i32* %14, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [400 x i8], [400 x i8]* %12, i64 0, i64 %189
  store i8 1, i8* %190, align 1
  br label %192

191:                                              ; preds = %137
  store i32 1, i32* %10, align 4
  br label %192

192:                                              ; preds = %191, %181
  br label %194

193:                                              ; preds = %131
  store i32 1, i32* %10, align 4
  br label %194

194:                                              ; preds = %193, %192
  br label %196

195:                                              ; preds = %127
  store i32 1, i32* %10, align 4
  br label %196

196:                                              ; preds = %195, %194
  br label %197

197:                                              ; preds = %196, %114
  br label %19, !llvm.loop !41

198:                                              ; preds = %19
  %199 = load float, float* %13, align 4
  %200 = fpext float %199 to double
  %201 = fcmp ogt double %200, 0.000000e+00
  br i1 %201, label %202, label %210

202:                                              ; preds = %198
  %203 = load i32, i32* %14, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load i32, i32* %14, align 4
  %207 = load i32*, i32** %6, align 8
  store i32 %206, i32* %207, align 4
  %208 = load float, float* %13, align 4
  %209 = load float*, float** %7, align 8
  store float %208, float* %209, align 4
  store i32 1, i32* %5, align 4
  br label %211

210:                                              ; preds = %202, %198
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %210, %205
  %212 = load i32, i32* %5, align 4
  ret i32 %212
}

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local void @increase_depth_values() #1

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @defense_move_reason_known(i32, i32) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local void @popgo() #1

declare dso_local void @add_defense_move(i32, i32, i32) #1

declare dso_local i32 @attack_move_reason_known(i32, i32) #1

declare dso_local void @add_attack_move(i32, i32, i32) #1

declare dso_local void @decrease_depth_values() #1

declare dso_local i32 @find_eye_dragons(i32, %struct.eye_data*, i32, i32*, i32) #1

declare dso_local i32 @owl_attack_move_reason_known(i32, i32) #1

declare dso_local i32 @owl_does_attack(i32, i32, i32*) #1

declare dso_local void @add_gain_move(i32, i32, i32) #1

declare dso_local void @add_owl_attack_move(i32, i32, i32) #1

declare dso_local i32 @owl_defense_move_reason_known(i32, i32) #1

declare dso_local i32 @owl_does_defend(i32, i32, i32*) #1

declare dso_local void @add_loss_move(i32, i32, i32) #1

declare dso_local void @add_owl_defense_move(i32, i32, i32) #1

declare dso_local i32 @are_neighbor_dragons(i32, i32) #1

declare dso_local i32 @chainlinks(i32, i32*) #1

declare dso_local i32 @owl_connection_defends(i32, i32, i32) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @extended_chainlinks(i32, i32*, i32) #1

declare dso_local i32 @disconnect(i32, i32, i32*) #1

declare dso_local i32 @string_connect(i32, i32, i32*) #1

declare dso_local void @add_connection_move(i32, i32, i32) #1

declare dso_local void @add_cut_move(i32, i32, i32) #1

declare dso_local void @add_strategical_defense_move(i32, i32) #1

declare dso_local i32 @cut_possible(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdist(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sdiv i32 %7, 20
  %9 = sub nsw i32 %8, 1
  %10 = load i32, i32* %4, align 4
  %11 = sdiv i32 %10, 20
  %12 = sub nsw i32 %11, 1
  %13 = sub nsw i32 %9, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = srem i32 %14, 20
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %17, 20
  %19 = sub nsw i32 %18, 1
  %20 = sub nsw i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul nsw i32 %24, %25
  %27 = add nsw i32 %23, %26
  ret i32 %27
}

declare dso_local i32 @is_same_worm(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal float @value_move_reasons(i32 %0, i32 %1, float %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  %21 = load i32, i32* @stackp, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %25

24:                                               ; preds = %4
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 2391, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0), i32 -1, i32 -1)
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @is_antisuji_move(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store float 0.000000e+00, float* %5, align 4
  br label %740

30:                                               ; preds = %25
  %31 = load i32, i32* @urgent, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @allpats, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %87

36:                                               ; preds = %33, %30
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.move_data, %struct.move_data* %39, i32 0, i32 18
  %41 = getelementptr inbounds [120 x i32], [120 x i32]* %40, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.move_data, %struct.move_data* %47, i32 0, i32 15
  %49 = load float, float* %48, align 4
  %50 = fpext float %49 to double
  %51 = fcmp ogt double %50, 0.000000e+00
  br i1 %51, label %52, label %87

52:                                               ; preds = %44, %36
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %68, %52
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.move_data, %struct.move_data* %56, i32 0, i32 18
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [120 x i32], [120 x i32]* %57, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 120
  br label %66

66:                                               ; preds = %63, %53
  %67 = phi i1 [ false, %53 ], [ %65, %63 ]
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %53, !llvm.loop !42

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.move_data, %struct.move_data* %74, i32 0, i32 18
  %76 = getelementptr inbounds [120 x i32], [120 x i32]* %75, i64 0, i64 0
  %77 = bitcast i32* %76 to i8*
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  call void @gg_sort(i8* %77, i64 %79, i64 4, i32 (i8*, i8*)* @compare_move_reasons)
  %80 = load i32, i32* %6, align 4
  call void @discard_redundant_move_reasons(i32 %80)
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load float, float* %9, align 4
  call void @estimate_territorial_value(i32 %81, i32 %82, float %83)
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load float, float* %9, align 4
  call void @estimate_strategical_value(i32 %84, i32 %85, float %86)
  br label %87

87:                                               ; preds = %71, %44, %33
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.move_data, %struct.move_data* %90, i32 0, i32 3
  %92 = load float, float* %91, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.move_data, %struct.move_data* %95, i32 0, i32 4
  %97 = load float, float* %96, align 4
  %98 = fadd float %92, %97
  store float %98, float* %10, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call float @compute_shape_factor(i32 %99)
  store float %100, float* %11, align 4
  %101 = load float, float* %10, align 4
  %102 = fpext float %101 to double
  %103 = fcmp olt double %102, 1.000000e-03
  br i1 %103, label %104, label %109

104:                                              ; preds = %87
  %105 = load float, float* %10, align 4
  %106 = fpext float %105 to double
  %107 = fcmp ogt double %106, -1.000000e-03
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store float 0.000000e+00, float* %10, align 4
  br label %109

109:                                              ; preds = %108, %104, %87
  %110 = load float, float* %10, align 4
  %111 = fpext float %110 to double
  %112 = fcmp ogt double %111, 0.000000e+00
  br i1 %112, label %113, label %479

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.move_data, %struct.move_data* %116, i32 0, i32 9
  %118 = load float, float* %117, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.move_data, %struct.move_data* %121, i32 0, i32 10
  %123 = load float, float* %122, align 4
  %124 = fadd float %118, %123
  store float %124, float* %14, align 4
  %125 = load i32, i32* @verbose, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %113
  br label %139

128:                                              ; preds = %113
  %129 = load i32, i32* %6, align 4
  %130 = load float, float* %14, align 4
  %131 = fpext float %130 to double
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.move_data, %struct.move_data* %134, i32 0, i32 10
  %136 = load float, float* %135, align 4
  %137 = fpext float %136 to double
  %138 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.24, i64 0, i64 0), i32 %129, double %131, double %137)
  br label %139

139:                                              ; preds = %128, %127
  %140 = load float, float* %10, align 4
  %141 = fpext float %140 to double
  %142 = fcmp oge double %141, 5.000000e-01
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.move_data, %struct.move_data* %146, i32 0, i32 11
  %148 = load float, float* %147, align 4
  %149 = fpext float %148 to double
  %150 = fcmp oge double %149, 1.000000e+00
  br i1 %150, label %151, label %310

151:                                              ; preds = %143, %139
  %152 = load float, float* %10, align 4
  store float %152, float* %15, align 4
  %153 = load float, float* %14, align 4
  %154 = fpext float %153 to double
  %155 = fmul double 5.000000e-01, %154
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.move_data, %struct.move_data* %158, i32 0, i32 11
  %160 = load float, float* %159, align 4
  %161 = fpext float %160 to double
  %162 = fmul double 5.000000e-01, %161
  %163 = fadd double %155, %162
  %164 = load float, float* %10, align 4
  %165 = fpext float %164 to double
  %166 = fmul double 1.000000e+00, %165
  %167 = load float, float* %14, align 4
  %168 = fpext float %167 to double
  %169 = fadd double %166, %168
  %170 = fcmp olt double %163, %169
  br i1 %170, label %171, label %183

171:                                              ; preds = %151
  %172 = load float, float* %14, align 4
  %173 = fpext float %172 to double
  %174 = fmul double 5.000000e-01, %173
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %176
  %178 = getelementptr inbounds %struct.move_data, %struct.move_data* %177, i32 0, i32 11
  %179 = load float, float* %178, align 4
  %180 = fpext float %179 to double
  %181 = fmul double 5.000000e-01, %180
  %182 = fadd double %174, %181
  br label %190

183:                                              ; preds = %151
  %184 = load float, float* %10, align 4
  %185 = fpext float %184 to double
  %186 = fmul double 1.000000e+00, %185
  %187 = load float, float* %14, align 4
  %188 = fpext float %187 to double
  %189 = fadd double %186, %188
  br label %190

190:                                              ; preds = %183, %171
  %191 = phi double [ %182, %171 ], [ %189, %183 ]
  %192 = load float, float* %10, align 4
  %193 = fpext float %192 to double
  %194 = fmul double 1.100000e+00, %193
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.move_data, %struct.move_data* %197, i32 0, i32 11
  %199 = load float, float* %198, align 4
  %200 = fpext float %199 to double
  %201 = fadd double %194, %200
  %202 = fcmp olt double %191, %201
  br i1 %202, label %203, label %243

203:                                              ; preds = %190
  %204 = load float, float* %14, align 4
  %205 = fpext float %204 to double
  %206 = fmul double 5.000000e-01, %205
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %208
  %210 = getelementptr inbounds %struct.move_data, %struct.move_data* %209, i32 0, i32 11
  %211 = load float, float* %210, align 4
  %212 = fpext float %211 to double
  %213 = fmul double 5.000000e-01, %212
  %214 = fadd double %206, %213
  %215 = load float, float* %10, align 4
  %216 = fpext float %215 to double
  %217 = fmul double 1.000000e+00, %216
  %218 = load float, float* %14, align 4
  %219 = fpext float %218 to double
  %220 = fadd double %217, %219
  %221 = fcmp olt double %214, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %203
  %223 = load float, float* %14, align 4
  %224 = fpext float %223 to double
  %225 = fmul double 5.000000e-01, %224
  %226 = load i32, i32* %6, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %227
  %229 = getelementptr inbounds %struct.move_data, %struct.move_data* %228, i32 0, i32 11
  %230 = load float, float* %229, align 4
  %231 = fpext float %230 to double
  %232 = fmul double 5.000000e-01, %231
  %233 = fadd double %225, %232
  br label %241

234:                                              ; preds = %203
  %235 = load float, float* %10, align 4
  %236 = fpext float %235 to double
  %237 = fmul double 1.000000e+00, %236
  %238 = load float, float* %14, align 4
  %239 = fpext float %238 to double
  %240 = fadd double %237, %239
  br label %241

241:                                              ; preds = %234, %222
  %242 = phi double [ %233, %222 ], [ %240, %234 ]
  br label %254

243:                                              ; preds = %190
  %244 = load float, float* %10, align 4
  %245 = fpext float %244 to double
  %246 = fmul double 1.100000e+00, %245
  %247 = load i32, i32* %6, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %248
  %250 = getelementptr inbounds %struct.move_data, %struct.move_data* %249, i32 0, i32 11
  %251 = load float, float* %250, align 4
  %252 = fpext float %251 to double
  %253 = fadd double %246, %252
  br label %254

254:                                              ; preds = %243, %241
  %255 = phi double [ %242, %241 ], [ %253, %243 ]
  %256 = fptrunc double %255 to float
  store float %256, float* %16, align 4
  %257 = load float, float* %16, align 4
  %258 = load float, float* %10, align 4
  %259 = fadd float %258, %257
  store float %259, float* %10, align 4
  %260 = load float, float* %16, align 4
  %261 = fpext float %260 to double
  %262 = fcmp une double %261, 0.000000e+00
  br i1 %262, label %263, label %281

263:                                              ; preds = %254
  %264 = load i32, i32* @verbose, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %263
  br label %280

267:                                              ; preds = %263
  %268 = load i32, i32* %6, align 4
  %269 = load float, float* %16, align 4
  %270 = fpext float %269 to double
  %271 = load float, float* %14, align 4
  %272 = fpext float %271 to double
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %274
  %276 = getelementptr inbounds %struct.move_data, %struct.move_data* %275, i32 0, i32 11
  %277 = load float, float* %276, align 4
  %278 = fpext float %277 to double
  %279 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0), i32 %268, double %270, double %272, double %278)
  br label %280

280:                                              ; preds = %267, %266
  br label %281

281:                                              ; preds = %280, %254
  %282 = load float, float* %14, align 4
  %283 = load i32, i32* %6, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.move_data, %struct.move_data* %285, i32 0, i32 11
  %287 = load float, float* %286, align 4
  %288 = fadd float %282, %287
  %289 = load float, float* %10, align 4
  %290 = load float, float* %15, align 4
  %291 = fsub float %289, %290
  %292 = fsub float %288, %291
  %293 = load i32, i32* %6, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %294
  %296 = getelementptr inbounds %struct.move_data, %struct.move_data* %295, i32 0, i32 2
  store float %292, float* %296, align 4
  %297 = load i32, i32* %6, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %298
  %300 = getelementptr inbounds %struct.move_data, %struct.move_data* %299, i32 0, i32 2
  %301 = load float, float* %300, align 4
  %302 = fpext float %301 to double
  %303 = fcmp olt double %302, 0.000000e+00
  br i1 %303, label %304, label %309

304:                                              ; preds = %281
  %305 = load i32, i32* %6, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %306
  %308 = getelementptr inbounds %struct.move_data, %struct.move_data* %307, i32 0, i32 2
  store float 0.000000e+00, float* %308, align 4
  br label %309

309:                                              ; preds = %304, %281
  br label %328

310:                                              ; preds = %143
  %311 = load float, float* %11, align 4
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %313
  %315 = getelementptr inbounds %struct.move_data, %struct.move_data* %314, i32 0, i32 9
  %316 = load float, float* %315, align 4
  %317 = load i32, i32* %6, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %318
  %320 = getelementptr inbounds %struct.move_data, %struct.move_data* %319, i32 0, i32 11
  %321 = load float, float* %320, align 4
  %322 = fadd float %316, %321
  %323 = fmul float %311, %322
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %325
  %327 = getelementptr inbounds %struct.move_data, %struct.move_data* %326, i32 0, i32 2
  store float %323, float* %327, align 4
  br label %328

328:                                              ; preds = %310, %309
  %329 = load i32, i32* %6, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %330
  %332 = getelementptr inbounds %struct.move_data, %struct.move_data* %331, i32 0, i32 12
  %333 = load float, float* %332, align 4
  %334 = fpext float %333 to double
  %335 = fmul double 5.000000e-02, %334
  %336 = load float, float* %10, align 4
  %337 = fpext float %336 to double
  %338 = fadd double %337, %335
  %339 = fptrunc double %338 to float
  store float %339, float* %10, align 4
  %340 = load i32, i32* %6, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %341
  %343 = getelementptr inbounds %struct.move_data, %struct.move_data* %342, i32 0, i32 12
  %344 = load float, float* %343, align 4
  %345 = fpext float %344 to double
  %346 = fcmp une double %345, 0.000000e+00
  br i1 %346, label %347, label %362

347:                                              ; preds = %328
  %348 = load i32, i32* @verbose, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %347
  br label %361

351:                                              ; preds = %347
  %352 = load i32, i32* %6, align 4
  %353 = load i32, i32* %6, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %354
  %356 = getelementptr inbounds %struct.move_data, %struct.move_data* %355, i32 0, i32 12
  %357 = load float, float* %356, align 4
  %358 = fpext float %357 to double
  %359 = fmul double 5.000000e-02, %358
  %360 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 %352, double %359)
  br label %361

361:                                              ; preds = %351, %350
  br label %362

362:                                              ; preds = %361, %328
  %363 = load i32, i32* %6, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.move_data, %struct.move_data* %365, i32 0, i32 7
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %6, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %369
  %371 = getelementptr inbounds %struct.move_data, %struct.move_data* %370, i32 0, i32 8
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %367, %372
  %374 = icmp sgt i32 %373, 0
  br i1 %374, label %375, label %416

375:                                              ; preds = %362
  %376 = load float, float* %10, align 4
  store float %376, float* %17, align 4
  %377 = load float, float* %11, align 4
  %378 = load float, float* %10, align 4
  %379 = fmul float %378, %377
  store float %379, float* %10, align 4
  %380 = load i32, i32* @verbose, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %415

382:                                              ; preds = %375
  %383 = load i32, i32* %6, align 4
  %384 = load float, float* %10, align 4
  %385 = load float, float* %17, align 4
  %386 = fsub float %384, %385
  %387 = fpext float %386 to double
  %388 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i32 %383, double %387)
  %389 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %391
  %393 = getelementptr inbounds %struct.move_data, %struct.move_data* %392, i32 0, i32 5
  %394 = load float, float* %393, align 4
  %395 = fpext float %394 to double
  %396 = load i32, i32* %6, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %397
  %399 = getelementptr inbounds %struct.move_data, %struct.move_data* %398, i32 0, i32 7
  %400 = load i32, i32* %399, align 4
  %401 = load i32, i32* %6, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %402
  %404 = getelementptr inbounds %struct.move_data, %struct.move_data* %403, i32 0, i32 6
  %405 = load float, float* %404, align 4
  %406 = fpext float %405 to double
  %407 = load i32, i32* %6, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %408
  %410 = getelementptr inbounds %struct.move_data, %struct.move_data* %409, i32 0, i32 8
  %411 = load i32, i32* %410, align 4
  %412 = load float, float* %11, align 4
  %413 = fpext float %412 to double
  %414 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %389, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.28, i64 0, i64 0), double %395, i32 %400, double %406, i32 %411, double %413)
  br label %415

415:                                              ; preds = %382, %375
  br label %416

416:                                              ; preds = %415, %362
  %417 = load i32, i32* %6, align 4
  %418 = load i32, i32* %7, align 4
  %419 = call i32 @move_connects_strings(i32 %417, i32 %418)
  %420 = load i32, i32* %6, align 4
  %421 = load i32, i32* %7, align 4
  %422 = sub nsw i32 3, %421
  %423 = call i32 @move_connects_strings(i32 %420, i32 %422)
  %424 = add nsw i32 %419, %423
  store i32 %424, i32* %13, align 4
  %425 = load i32, i32* %13, align 4
  %426 = icmp sgt i32 %425, 0
  br i1 %426, label %427, label %478

427:                                              ; preds = %416
  %428 = load i32, i32* %13, align 4
  %429 = sitofp i32 %428 to float
  %430 = fpext float %429 to double
  %431 = call double @pow(double 1.020000e+00, double %430) #4
  %432 = fsub double %431, 1.000000e+00
  %433 = fptrunc double %432 to float
  store float %433, float* %18, align 4
  %434 = load float, float* %10, align 4
  %435 = fpext float %434 to double
  %436 = fcmp olt double %435, 5.000000e+00
  br i1 %436, label %437, label %440

437:                                              ; preds = %427
  %438 = load float, float* %10, align 4
  %439 = fpext float %438 to double
  br label %441

440:                                              ; preds = %427
  br label %441

441:                                              ; preds = %440, %437
  %442 = phi double [ %439, %437 ], [ 5.000000e+00, %440 ]
  %443 = fcmp olt double %442, 1.000000e+00
  br i1 %443, label %444, label %445

444:                                              ; preds = %441
  br label %455

445:                                              ; preds = %441
  %446 = load float, float* %10, align 4
  %447 = fpext float %446 to double
  %448 = fcmp olt double %447, 5.000000e+00
  br i1 %448, label %449, label %452

449:                                              ; preds = %445
  %450 = load float, float* %10, align 4
  %451 = fpext float %450 to double
  br label %453

452:                                              ; preds = %445
  br label %453

453:                                              ; preds = %452, %449
  %454 = phi double [ %451, %449 ], [ 5.000000e+00, %452 ]
  br label %455

455:                                              ; preds = %453, %444
  %456 = phi double [ 1.000000e+00, %444 ], [ %454, %453 ]
  %457 = fptrunc double %456 to float
  store float %457, float* %19, align 4
  %458 = load i32, i32* @verbose, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %472

460:                                              ; preds = %455
  %461 = load i32, i32* %6, align 4
  %462 = load float, float* %19, align 4
  %463 = load float, float* %18, align 4
  %464 = fmul float %462, %463
  %465 = fpext float %464 to double
  %466 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i64 0, i64 0), i32 %461, double %465)
  %467 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %468 = load i32, i32* %13, align 4
  %469 = load float, float* %18, align 4
  %470 = fpext float %469 to double
  %471 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %467, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 %468, double %470)
  br label %472

472:                                              ; preds = %460, %455
  %473 = load float, float* %19, align 4
  %474 = load float, float* %18, align 4
  %475 = fmul float %473, %474
  %476 = load float, float* %10, align 4
  %477 = fadd float %476, %475
  store float %477, float* %10, align 4
  br label %478

478:                                              ; preds = %472, %416
  br label %517

479:                                              ; preds = %109
  %480 = load float, float* %11, align 4
  %481 = load i32, i32* %6, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %482
  %484 = getelementptr inbounds %struct.move_data, %struct.move_data* %483, i32 0, i32 9
  %485 = load float, float* %484, align 4
  %486 = load i32, i32* %6, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %487
  %489 = getelementptr inbounds %struct.move_data, %struct.move_data* %488, i32 0, i32 9
  %490 = load float, float* %489, align 4
  %491 = load i32, i32* %6, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %492
  %494 = getelementptr inbounds %struct.move_data, %struct.move_data* %493, i32 0, i32 11
  %495 = load float, float* %494, align 4
  %496 = fcmp olt float %490, %495
  br i1 %496, label %497, label %503

497:                                              ; preds = %479
  %498 = load i32, i32* %6, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %499
  %501 = getelementptr inbounds %struct.move_data, %struct.move_data* %500, i32 0, i32 9
  %502 = load float, float* %501, align 4
  br label %509

503:                                              ; preds = %479
  %504 = load i32, i32* %6, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %505
  %507 = getelementptr inbounds %struct.move_data, %struct.move_data* %506, i32 0, i32 11
  %508 = load float, float* %507, align 4
  br label %509

509:                                              ; preds = %503, %497
  %510 = phi float [ %502, %497 ], [ %508, %503 ]
  %511 = fadd float %485, %510
  %512 = fmul float %480, %511
  %513 = load i32, i32* %6, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %514
  %516 = getelementptr inbounds %struct.move_data, %struct.move_data* %515, i32 0, i32 2
  store float %512, float* %516, align 4
  br label %517

517:                                              ; preds = %509, %478
  %518 = load float, float* %8, align 4
  %519 = fpext float %518 to double
  %520 = fcmp ogt double %519, 0.000000e+00
  br i1 %520, label %521, label %618

521:                                              ; preds = %517
  %522 = load i32, i32* %6, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %523
  %525 = getelementptr inbounds %struct.move_data, %struct.move_data* %524, i32 0, i32 20
  %526 = load i32, i32* %525, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %618

528:                                              ; preds = %521
  %529 = load float, float* %10, align 4
  %530 = load float, float* %8, align 4
  %531 = fcmp ole float %529, %530
  br i1 %531, label %532, label %618

532:                                              ; preds = %528
  %533 = load i32, i32* %6, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %534
  %536 = load i8, i8* %535, align 1
  %537 = zext i8 %536 to i32
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %618

539:                                              ; preds = %532
  %540 = load i32, i32* %6, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %541
  %543 = getelementptr inbounds %struct.move_data, %struct.move_data* %542, i32 0, i32 2
  %544 = load float, float* %543, align 4
  %545 = fpext float %544 to double
  %546 = fcmp ogt double %545, 0.000000e+00
  br i1 %546, label %547, label %618

547:                                              ; preds = %539
  %548 = load i32, i32* %6, align 4
  %549 = load i32, i32* %7, align 4
  %550 = call i32 @is_legal(i32 %548, i32 %549)
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %618

552:                                              ; preds = %547
  %553 = load i32, i32* %6, align 4
  %554 = load i32, i32* %7, align 4
  %555 = call i32 @value_moves_confirm_safety(i32 %553, i32 %554)
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %618

557:                                              ; preds = %552
  %558 = load float, float* %8, align 4
  %559 = fpext float %558 to double
  %560 = load float, float* %10, align 4
  %561 = fpext float %560 to double
  %562 = load i32, i32* %6, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %563
  %565 = getelementptr inbounds %struct.move_data, %struct.move_data* %564, i32 0, i32 2
  %566 = load float, float* %565, align 4
  %567 = fpext float %566 to double
  %568 = fmul double 2.500000e-01, %567
  %569 = fadd double %561, %568
  %570 = fcmp olt double %559, %569
  br i1 %570, label %571, label %574

571:                                              ; preds = %557
  %572 = load float, float* %8, align 4
  %573 = fpext float %572 to double
  br label %585

574:                                              ; preds = %557
  %575 = load float, float* %10, align 4
  %576 = fpext float %575 to double
  %577 = load i32, i32* %6, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %578
  %580 = getelementptr inbounds %struct.move_data, %struct.move_data* %579, i32 0, i32 2
  %581 = load float, float* %580, align 4
  %582 = fpext float %581 to double
  %583 = fmul double 2.500000e-01, %582
  %584 = fadd double %576, %583
  br label %585

585:                                              ; preds = %574, %571
  %586 = phi double [ %573, %571 ], [ %584, %574 ]
  %587 = fptrunc double %586 to float
  store float %587, float* %20, align 4
  %588 = load float, float* %8, align 4
  %589 = load float, float* %10, align 4
  %590 = fsub float %588, %589
  %591 = fpext float %590 to double
  %592 = fmul double 1.000000e-01, %591
  %593 = load float, float* %8, align 4
  %594 = fpext float %593 to double
  %595 = fdiv double %592, %594
  %596 = fsub double 1.000000e+00, %595
  %597 = load float, float* %20, align 4
  %598 = fpext float %597 to double
  %599 = fmul double %598, %596
  %600 = fptrunc double %599 to float
  store float %600, float* %20, align 4
  %601 = load float, float* %20, align 4
  %602 = load float, float* %10, align 4
  %603 = fcmp ogt float %601, %602
  br i1 %603, label %604, label %617

604:                                              ; preds = %585
  %605 = load i32, i32* @verbose, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %608, label %607

607:                                              ; preds = %604
  br label %615

608:                                              ; preds = %604
  %609 = load i32, i32* %6, align 4
  %610 = load float, float* %20, align 4
  %611 = load float, float* %10, align 4
  %612 = fsub float %610, %611
  %613 = fpext float %612 to double
  %614 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i64 0, i64 0), i32 %609, double %613)
  br label %615

615:                                              ; preds = %608, %607
  %616 = load float, float* %20, align 4
  store float %616, float* %10, align 4
  br label %617

617:                                              ; preds = %615, %585
  br label %618

618:                                              ; preds = %617, %552, %547, %539, %532, %528, %521, %517
  %619 = load i32, i32* %6, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %620
  %622 = getelementptr inbounds %struct.move_data, %struct.move_data* %621, i32 0, i32 13
  %623 = load float, float* %622, align 4
  %624 = load i32, i32* %6, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %625
  %627 = getelementptr inbounds %struct.move_data, %struct.move_data* %626, i32 0, i32 14
  %628 = load float, float* %627, align 4
  %629 = fcmp ogt float %623, %628
  br i1 %629, label %630, label %640

630:                                              ; preds = %618
  %631 = load i32, i32* %6, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %632
  %634 = getelementptr inbounds %struct.move_data, %struct.move_data* %633, i32 0, i32 13
  %635 = load float, float* %634, align 4
  %636 = load i32, i32* %6, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %637
  %639 = getelementptr inbounds %struct.move_data, %struct.move_data* %638, i32 0, i32 14
  store float %635, float* %639, align 4
  br label %640

640:                                              ; preds = %630, %618
  %641 = load i32, i32* %6, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %642
  %644 = getelementptr inbounds %struct.move_data, %struct.move_data* %643, i32 0, i32 13
  %645 = load float, float* %644, align 4
  %646 = fcmp olt float %645, 2.500000e+01
  br i1 %646, label %647, label %656

647:                                              ; preds = %640
  %648 = load float, float* %10, align 4
  %649 = fdiv float %648, 2.000000e+02
  %650 = load i32, i32* %6, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %651
  %653 = getelementptr inbounds %struct.move_data, %struct.move_data* %652, i32 0, i32 13
  %654 = load float, float* %653, align 4
  %655 = fadd float %654, %649
  store float %655, float* %653, align 4
  br label %656

656:                                              ; preds = %647, %640
  %657 = load float, float* %10, align 4
  %658 = load i32, i32* %6, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %659
  %661 = getelementptr inbounds %struct.move_data, %struct.move_data* %660, i32 0, i32 13
  %662 = load float, float* %661, align 4
  %663 = fcmp olt float %657, %662
  br i1 %663, label %664, label %686

664:                                              ; preds = %656
  %665 = load i32, i32* %6, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %666
  %668 = getelementptr inbounds %struct.move_data, %struct.move_data* %667, i32 0, i32 13
  %669 = load float, float* %668, align 4
  %670 = fcmp ogt float %669, 0.000000e+00
  br i1 %670, label %671, label %686

671:                                              ; preds = %664
  %672 = load i32, i32* %6, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %673
  %675 = getelementptr inbounds %struct.move_data, %struct.move_data* %674, i32 0, i32 13
  %676 = load float, float* %675, align 4
  store float %676, float* %10, align 4
  %677 = load i32, i32* @verbose, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %680, label %679

679:                                              ; preds = %671
  br label %685

680:                                              ; preds = %671
  %681 = load i32, i32* %6, align 4
  %682 = load float, float* %10, align 4
  %683 = fpext float %682 to double
  %684 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.32, i64 0, i64 0), i32 %681, double %683)
  br label %685

685:                                              ; preds = %680, %679
  br label %686

686:                                              ; preds = %685, %664, %656
  %687 = load float, float* %10, align 4
  %688 = load i32, i32* %6, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %689
  %691 = getelementptr inbounds %struct.move_data, %struct.move_data* %690, i32 0, i32 14
  %692 = load float, float* %691, align 4
  %693 = fcmp ogt float %687, %692
  br i1 %693, label %694, label %709

694:                                              ; preds = %686
  %695 = load i32, i32* %6, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %696
  %698 = getelementptr inbounds %struct.move_data, %struct.move_data* %697, i32 0, i32 14
  %699 = load float, float* %698, align 4
  store float %699, float* %10, align 4
  %700 = load i32, i32* @verbose, align 4
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %703, label %702

702:                                              ; preds = %694
  br label %708

703:                                              ; preds = %694
  %704 = load i32, i32* %6, align 4
  %705 = load float, float* %10, align 4
  %706 = fpext float %705 to double
  %707 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.33, i64 0, i64 0), i32 %704, double %706)
  br label %708

708:                                              ; preds = %703, %702
  br label %709

709:                                              ; preds = %708, %686
  %710 = load float, float* %10, align 4
  %711 = fcmp ogt float %710, 0.000000e+00
  br i1 %711, label %726, label %712

712:                                              ; preds = %709
  %713 = load i32, i32* %6, align 4
  %714 = sext i32 %713 to i64
  %715 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %714
  %716 = getelementptr inbounds %struct.move_data, %struct.move_data* %715, i32 0, i32 3
  %717 = load float, float* %716, align 4
  %718 = fcmp ogt float %717, 0.000000e+00
  br i1 %718, label %726, label %719

719:                                              ; preds = %712
  %720 = load i32, i32* %6, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %721
  %723 = getelementptr inbounds %struct.move_data, %struct.move_data* %722, i32 0, i32 4
  %724 = load float, float* %723, align 4
  %725 = fcmp ogt float %724, 0.000000e+00
  br i1 %725, label %726, label %738

726:                                              ; preds = %719, %712, %709
  %727 = load i32, i32* @verbose, align 4
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %730, label %729

729:                                              ; preds = %726
  br label %735

730:                                              ; preds = %726
  %731 = load i32, i32* %6, align 4
  %732 = load float, float* %10, align 4
  %733 = fpext float %732 to double
  %734 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0), i32 %731, double %733)
  br label %735

735:                                              ; preds = %730, %729
  %736 = load i32, i32* %6, align 4
  %737 = load float, float* %10, align 4
  call void @move_considered(i32 %736, float %737)
  br label %738

738:                                              ; preds = %735, %719
  %739 = load float, float* %10, align 4
  store float %739, float* %5, align 4
  br label %740

740:                                              ; preds = %738, %29
  %741 = load float, float* %5, align 4
  ret float %741
}

declare dso_local i32 @is_legal(i32, i32) #1

declare dso_local i32 @is_illegal_ko_capture(i32, i32) #1

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @is_antisuji_move(i32) #1

declare dso_local void @gg_sort(i8*, i64, i64, i32 (i8*, i8*)*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_move_reasons(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %30, %35
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %42, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %25
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local void @discard_redundant_move_reasons(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_territorial_value(i32 %0, i32 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca [400 x i8], align 16
  %16 = alloca [400 x float], align 16
  %17 = alloca i32, align 4
  %18 = alloca [160 x i32], align 16
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca float, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 3, %32
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  store i32 0, i32* %14, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 3, %34
  %36 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  %37 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 0
  call void @set_strength_data(i32 %35, i8* %36, float* %37)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %1412, %3
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 120
  br i1 %40, label %41, label %1415

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.move_data, %struct.move_data* %44, i32 0, i32 18
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [120 x i32], [120 x i32]* %45, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %1415

53:                                               ; preds = %41
  %54 = load i32, i32* %17, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 1
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %1412

62:                                               ; preds = %53
  store float 0.000000e+00, float* %11, align 4
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  switch i32 %67, label %1411 [
    i32 2, label %68
    i32 4, label %68
    i32 6, label %68
    i32 8, label %216
    i32 10, label %216
    i32 12, label %216
    i32 3, label %371
    i32 9, label %601
    i32 42, label %684
    i32 14, label %685
    i32 16, label %685
    i32 44, label %685
    i32 46, label %685
    i32 22, label %685
    i32 20, label %685
    i32 24, label %685
    i32 18, label %686
    i32 19, label %711
    i32 54, label %739
    i32 26, label %740
    i32 28, label %740
    i32 30, label %740
    i32 60, label %740
    i32 32, label %740
    i32 34, label %740
    i32 36, label %740
    i32 62, label %740
    i32 27, label %995
    i32 33, label %1107
    i32 38, label %1135
    i32 50, label %1371
    i32 52, label %1392
  ]

68:                                               ; preds = %62, %62, %62
  %69 = load i32, i32* %17, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %83

82:                                               ; preds = %68
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 1336, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0), i32 -1, i32 -1)
  br label %83

83:                                               ; preds = %82, %81
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %86, i32 0, i32 18
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %87, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %114

91:                                               ; preds = %83
  %92 = load i32, i32* @debug, align 4
  %93 = and i32 %92, 2048
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %106

96:                                               ; preds = %91
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %100, i32 0, i32 2
  %102 = load float, float* %101, align 4
  %103 = fpext float %102 to double
  %104 = load i32, i32* %9, align 4
  %105 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.36, i64 0, i64 0), i32 %97, double %103, i32 %104)
  br label %106

106:                                              ; preds = %96, %95
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %109, i32 0, i32 2
  %111 = load float, float* %110, align 4
  %112 = load float, float* %13, align 4
  %113 = fadd float %112, %111
  store float %113, float* %13, align 4
  store i32 1, i32* %14, align 4
  br label %1411

114:                                              ; preds = %83
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %117, i32 0, i32 2
  %119 = load float, float* %118, align 4
  %120 = fmul float 2.000000e+00, %119
  store float %120, float* %11, align 4
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %123, i32 0, i32 16
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %114
  %128 = load i32, i32* @debug, align 4
  %129 = and i32 %128, 2048
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %139

132:                                              ; preds = %127
  %133 = load i32, i32* %4, align 4
  %134 = load float, float* %11, align 4
  %135 = fpext float %134 to double
  %136 = fmul double 2.000000e-01, %135
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i64 0, i64 0), i32 %133, double %136, i32 %137)
  br label %139

139:                                              ; preds = %132, %131
  %140 = load float, float* %11, align 4
  %141 = fpext float %140 to double
  %142 = fmul double 2.000000e-01, %141
  %143 = load float, float* %13, align 4
  %144 = fpext float %143 to double
  %145 = fadd double %144, %142
  %146 = fptrunc double %145 to float
  store float %146, float* %13, align 4
  store i32 1, i32* %14, align 4
  br label %1411

147:                                              ; preds = %114
  %148 = load i32, i32* %9, align 4
  %149 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  %150 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 0
  call void @mark_changed_string(i32 %148, i8* %149, float* %150, i8 signext 0)
  %151 = load i32, i32* @verbose, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %158

154:                                              ; preds = %147
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i64 0, i64 0), i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %153
  %159 = load i32, i32* %17, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  store float 0.000000e+00, float* %11, align 4
  br label %212

166:                                              ; preds = %158
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %168
  %170 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 4
  br i1 %172, label %173, label %188

173:                                              ; preds = %166
  %174 = load float, float* %11, align 4
  %175 = fpext float %174 to double
  %176 = fmul double %175, 3.000000e-01
  %177 = fptrunc double %176 to float
  store float %177, float* %11, align 4
  %178 = load i32, i32* @verbose, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %173
  br label %187

181:                                              ; preds = %173
  %182 = load i32, i32* %4, align 4
  %183 = load float, float* %11, align 4
  %184 = fpext float %183 to double
  %185 = load i32, i32* %9, align 4
  %186 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i32 %182, double %184, i32 %185)
  br label %187

187:                                              ; preds = %181, %180
  br label %211

188:                                              ; preds = %166
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %190
  %192 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 6
  br i1 %194, label %195, label %210

195:                                              ; preds = %188
  %196 = load float, float* %11, align 4
  %197 = fpext float %196 to double
  %198 = fmul double %197, 5.000000e-01
  %199 = fptrunc double %198 to float
  store float %199, float* %11, align 4
  %200 = load i32, i32* @verbose, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %195
  br label %209

203:                                              ; preds = %195
  %204 = load i32, i32* %4, align 4
  %205 = load float, float* %11, align 4
  %206 = fpext float %205 to double
  %207 = load i32, i32* %9, align 4
  %208 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.40, i64 0, i64 0), i32 %204, double %206, i32 %207)
  br label %209

209:                                              ; preds = %203, %202
  br label %210

210:                                              ; preds = %209, %188
  br label %211

211:                                              ; preds = %210, %187
  br label %212

212:                                              ; preds = %211, %165
  %213 = load float, float* %11, align 4
  %214 = load float, float* %12, align 4
  %215 = fsub float %214, %213
  store float %215, float* %12, align 4
  store i32 1, i32* %14, align 4
  br label %1411

216:                                              ; preds = %62, %62, %62
  %217 = load i32, i32* %17, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %218
  %220 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  store i32 %221, i32* %9, align 4
  %222 = load i32, i32* %9, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = load i32, i32* %5, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %216
  br label %231

230:                                              ; preds = %216
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 1389, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i32 -1, i32 -1)
  br label %231

231:                                              ; preds = %230, %229
  %232 = load i32, i32* %9, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %234, i32 0, i32 2
  %236 = load float, float* %235, align 4
  %237 = fmul float 2.000000e+00, %236
  store float %237, float* %11, align 4
  %238 = load i32, i32* %9, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %239
  %241 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %240, i32 0, i32 16
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %264

244:                                              ; preds = %231
  %245 = load i32, i32* @debug, align 4
  %246 = and i32 %245, 2048
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %244
  br label %256

249:                                              ; preds = %244
  %250 = load i32, i32* %4, align 4
  %251 = load float, float* %11, align 4
  %252 = fpext float %251 to double
  %253 = fmul double 2.000000e-01, %252
  %254 = load i32, i32* %9, align 4
  %255 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.42, i64 0, i64 0), i32 %250, double %253, i32 %254)
  br label %256

256:                                              ; preds = %249, %248
  %257 = load float, float* %11, align 4
  %258 = fpext float %257 to double
  %259 = fmul double 2.000000e-01, %258
  %260 = load float, float* %13, align 4
  %261 = fpext float %260 to double
  %262 = fadd double %261, %259
  %263 = fptrunc double %262 to float
  store float %263, float* %13, align 4
  br label %1411

264:                                              ; preds = %231
  %265 = load i32, i32* %9, align 4
  %266 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  %267 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 0
  call void @mark_changed_string(i32 %265, i8* %266, float* %267, i8 signext 2)
  %268 = load i32, i32* @verbose, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %264
  br label %275

271:                                              ; preds = %264
  %272 = load i32, i32* %4, align 4
  %273 = load i32, i32* %9, align 4
  %274 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i64 0, i64 0), i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %271, %270
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %277
  %279 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %280, 8
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  store float 0.000000e+00, float* %11, align 4
  br label %329

283:                                              ; preds = %275
  %284 = load i32, i32* %17, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = icmp eq i32 %288, 10
  br i1 %289, label %290, label %305

290:                                              ; preds = %283
  %291 = load float, float* %11, align 4
  %292 = fpext float %291 to double
  %293 = fmul double %292, 3.000000e-01
  %294 = fptrunc double %293 to float
  store float %294, float* %11, align 4
  %295 = load i32, i32* @verbose, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %298, label %297

297:                                              ; preds = %290
  br label %304

298:                                              ; preds = %290
  %299 = load i32, i32* %4, align 4
  %300 = load float, float* %11, align 4
  %301 = fpext float %300 to double
  %302 = load i32, i32* %9, align 4
  %303 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.44, i64 0, i64 0), i32 %299, double %301, i32 %302)
  br label %304

304:                                              ; preds = %298, %297
  br label %328

305:                                              ; preds = %283
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %307
  %309 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = icmp eq i32 %310, 12
  br i1 %311, label %312, label %327

312:                                              ; preds = %305
  %313 = load float, float* %11, align 4
  %314 = fpext float %313 to double
  %315 = fmul double %314, 5.000000e-01
  %316 = fptrunc double %315 to float
  store float %316, float* %11, align 4
  %317 = load i32, i32* @verbose, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %320, label %319

319:                                              ; preds = %312
  br label %326

320:                                              ; preds = %312
  %321 = load i32, i32* %4, align 4
  %322 = load float, float* %11, align 4
  %323 = fpext float %322 to double
  %324 = load i32, i32* %9, align 4
  %325 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.45, i64 0, i64 0), i32 %321, double %323, i32 %324)
  br label %326

326:                                              ; preds = %320, %319
  br label %327

327:                                              ; preds = %326, %305
  br label %328

328:                                              ; preds = %327, %304
  br label %329

329:                                              ; preds = %328, %282
  %330 = load float, float* %11, align 4
  %331 = load float, float* %12, align 4
  %332 = fsub float %331, %330
  store float %332, float* %12, align 4
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %334
  %336 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %335, i32 0, i32 7
  %337 = load i32, i32* %336, align 4
  %338 = icmp eq i32 %337, 2
  br i1 %338, label %339, label %370

339:                                              ; preds = %329
  %340 = load i32, i32* %4, align 4
  %341 = load i32, i32* %9, align 4
  %342 = call i32 @owl_defense_move_reason_known(i32 %340, i32 %341)
  %343 = load i32, i32* %4, align 4
  %344 = load i32, i32* %9, align 4
  %345 = call i32 @defense_move_reason_known(i32 %343, i32 %344)
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %370

347:                                              ; preds = %339
  %348 = load i32, i32* %9, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %349
  %351 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %350, i32 0, i32 2
  %352 = load float, float* %351, align 4
  %353 = fmul float 2.000000e+00, %352
  %354 = fpext float %353 to double
  %355 = fmul double 4.500000e-01, %354
  %356 = fptrunc double %355 to float
  store float %356, float* %11, align 4
  %357 = load i32, i32* @verbose, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %360, label %359

359:                                              ; preds = %347
  br label %366

360:                                              ; preds = %347
  %361 = load i32, i32* %4, align 4
  %362 = load float, float* %11, align 4
  %363 = fpext float %362 to double
  %364 = load i32, i32* %9, align 4
  %365 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.46, i64 0, i64 0), i32 %361, double %363, i32 %364)
  br label %366

366:                                              ; preds = %360, %359
  %367 = load float, float* %11, align 4
  %368 = load float, float* %12, align 4
  %369 = fsub float %368, %367
  store float %369, float* %12, align 4
  br label %370

370:                                              ; preds = %366, %339, %329
  store i32 1, i32* %14, align 4
  br label %1411

371:                                              ; preds = %62
  %372 = load i32, i32* %17, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %373
  %375 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  store i32 %376, i32* %9, align 4
  %377 = load i32, i32* %9, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %378
  %380 = load i8, i8* %379, align 1
  %381 = zext i8 %380 to i32
  %382 = load i32, i32* %7, align 4
  %383 = icmp eq i32 %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %371
  br label %392

385:                                              ; preds = %371
  %386 = load i32, i32* %9, align 4
  %387 = sdiv i32 %386, 20
  %388 = sub nsw i32 %387, 1
  %389 = load i32, i32* %9, align 4
  %390 = srem i32 %389, 20
  %391 = sub nsw i32 %390, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 1450, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i64 0, i64 0), i32 %388, i32 %391)
  br label %392

392:                                              ; preds = %385, %384
  %393 = load i32, i32* %9, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %394
  %396 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %395, i32 0, i32 16
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %409

399:                                              ; preds = %392
  %400 = load i32, i32* @debug, align 4
  %401 = and i32 %400, 2048
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %404, label %403

403:                                              ; preds = %399
  br label %408

404:                                              ; preds = %399
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* %9, align 4
  %407 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.48, i64 0, i64 0), i32 %405, i32 %406)
  br label %408

408:                                              ; preds = %404, %403
  br label %1411

409:                                              ; preds = %392
  %410 = load i32, i32* %4, align 4
  %411 = load i32, i32* %5, align 4
  %412 = call i32 @trymove(i32 %410, i32 %411, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i64 0, i64 0), i32 0, i32 0, i32 0)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %600

414:                                              ; preds = %409
  %415 = load i32, i32* %9, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %416
  %418 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %417, i32 0, i32 2
  %419 = load float, float* %418, align 4
  %420 = fmul float 2.000000e+00, %419
  store float %420, float* %19, align 4
  store float 0.000000e+00, float* %20, align 4
  store float 0.000000e+00, float* %21, align 4
  %421 = load i32, i32* %9, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %422
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i32
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %414
  store i32 0, i32* %23, align 4
  br label %432

428:                                              ; preds = %414
  %429 = load i32, i32* %9, align 4
  %430 = getelementptr inbounds [160 x i32], [160 x i32]* %18, i64 0, i64 0
  %431 = call i32 @chainlinks(i32 %429, i32* %430)
  store i32 %431, i32* %23, align 4
  br label %432

432:                                              ; preds = %428, %427
  %433 = load i32, i32* %9, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %434
  %436 = load i8, i8* %435, align 1
  %437 = zext i8 %436 to i32
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %477

439:                                              ; preds = %432
  %440 = load i32, i32* %4, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %441
  %443 = getelementptr inbounds %struct.move_data, %struct.move_data* %442, i32 0, i32 19
  %444 = load i32, i32* %443, align 4
  %445 = icmp eq i32 %444, 1
  br i1 %445, label %451, label %446

446:                                              ; preds = %439
  %447 = load i32, i32* %4, align 4
  %448 = load i32, i32* %5, align 4
  %449 = call i32 @adjacent_to_nondead_stone(i32 %447, i32 %448)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %477

451:                                              ; preds = %446, %439
  %452 = load i32, i32* %9, align 4
  %453 = call i32 @find_defense(i32 %452, i32* %24)
  %454 = icmp eq i32 %453, 5
  br i1 %454, label %455, label %477

455:                                              ; preds = %451
  %456 = load i32, i32* %24, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %477

458:                                              ; preds = %455
  %459 = load i32, i32* %24, align 4
  %460 = load i32, i32* %7, align 4
  %461 = call i32 @trymove(i32 %459, i32 %460, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i64 0, i64 0), i32 0, i32 0, i32 0)
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %476

463:                                              ; preds = %458
  %464 = load i32, i32* %4, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %465
  %467 = load i8, i8* %466, align 1
  %468 = zext i8 %467 to i32
  %469 = icmp eq i32 %468, 0
  br i1 %469, label %474, label %470

470:                                              ; preds = %463
  %471 = load i32, i32* %4, align 4
  %472 = call i32 @attack(i32 %471, i32* null)
  %473 = icmp eq i32 %472, 5
  br i1 %473, label %474, label %475

474:                                              ; preds = %470, %463
  call void @popgo()
  call void @popgo()
  br label %1411

475:                                              ; preds = %470
  call void @popgo()
  br label %476

476:                                              ; preds = %475, %458
  br label %477

477:                                              ; preds = %476, %455, %451, %446, %432
  store i32 0, i32* %22, align 4
  br label %478

478:                                              ; preds = %552, %477
  %479 = load i32, i32* %22, align 4
  %480 = load i32, i32* %23, align 4
  %481 = icmp slt i32 %479, %480
  br i1 %481, label %482, label %555

482:                                              ; preds = %478
  %483 = load i32, i32* %22, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [160 x i32], [160 x i32]* %18, i64 0, i64 %484
  %486 = load i32, i32* %485, align 4
  store i32 %486, i32* %25, align 4
  %487 = load i32, i32* %4, align 4
  %488 = load i32, i32* %25, align 4
  %489 = call i32 @same_string(i32 %487, i32 %488)
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %482
  br label %552

492:                                              ; preds = %482
  %493 = load i32, i32* %25, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %494
  %496 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* %5, align 4
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %500, label %523

500:                                              ; preds = %492
  %501 = load i32, i32* %25, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %502
  %504 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %503, i32 0, i32 16
  %505 = load i32, i32* %504, align 4
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %523

507:                                              ; preds = %500
  %508 = load i32, i32* %25, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %509
  %511 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %510, i32 0, i32 4
  %512 = load float, float* %511, align 4
  %513 = fmul float 2.000000e+00, %512
  %514 = load float, float* %20, align 4
  %515 = fcmp ogt float %513, %514
  br i1 %515, label %516, label %523

516:                                              ; preds = %507
  %517 = load i32, i32* %25, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %518
  %520 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %519, i32 0, i32 4
  %521 = load float, float* %520, align 4
  %522 = fmul float 2.000000e+00, %521
  store float %522, float* %20, align 4
  br label %523

523:                                              ; preds = %516, %507, %500, %492
  %524 = load i32, i32* %25, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %525
  %527 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* %5, align 4
  %530 = icmp eq i32 %528, %529
  br i1 %530, label %531, label %551

531:                                              ; preds = %523
  %532 = load i32, i32* %25, align 4
  %533 = call i32 @attack(i32 %532, i32* null)
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %551

535:                                              ; preds = %531
  %536 = load i32, i32* %25, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %537
  %539 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %538, i32 0, i32 2
  %540 = load float, float* %539, align 4
  %541 = fmul float 2.000000e+00, %540
  %542 = load float, float* %21, align 4
  %543 = fcmp ogt float %541, %542
  br i1 %543, label %544, label %551

544:                                              ; preds = %535
  %545 = load i32, i32* %25, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %546
  %548 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %547, i32 0, i32 2
  %549 = load float, float* %548, align 4
  %550 = fmul float 2.000000e+00, %549
  store float %550, float* %21, align 4
  br label %551

551:                                              ; preds = %544, %535, %531, %523
  br label %552

552:                                              ; preds = %551, %491
  %553 = load i32, i32* %22, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %22, align 4
  br label %478, !llvm.loop !43

555:                                              ; preds = %478
  call void @popgo()
  %556 = load i32, i32* @verbose, align 4
  store i32 %556, i32* %26, align 4
  %557 = load i32, i32* @verbose, align 4
  %558 = icmp sgt i32 %557, 0
  br i1 %558, label %559, label %562

559:                                              ; preds = %555
  %560 = load i32, i32* @verbose, align 4
  %561 = add nsw i32 %560, -1
  store i32 %561, i32* @verbose, align 4
  br label %562

562:                                              ; preds = %559, %555
  %563 = load i32, i32* %4, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %564
  %566 = getelementptr inbounds %struct.move_data, %struct.move_data* %565, i32 0, i32 19
  %567 = load i32, i32* %566, align 4
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %569, label %575

569:                                              ; preds = %562
  %570 = load i32, i32* %9, align 4
  %571 = call i32 @owl_substantial(i32 %570)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %575, label %573

573:                                              ; preds = %569
  %574 = load i32, i32* %26, align 4
  store i32 %574, i32* @verbose, align 4
  br label %1411

575:                                              ; preds = %569, %562
  %576 = load i32, i32* %26, align 4
  store i32 %576, i32* @verbose, align 4
  %577 = load float, float* %20, align 4
  %578 = load float, float* %19, align 4
  %579 = fadd float %578, %577
  store float %579, float* %19, align 4
  %580 = load float, float* %21, align 4
  %581 = load float, float* %19, align 4
  %582 = fsub float %581, %580
  store float %582, float* %19, align 4
  %583 = load float, float* %19, align 4
  %584 = fpext float %583 to double
  %585 = fcmp ogt double %584, 0.000000e+00
  br i1 %585, label %586, label %599

586:                                              ; preds = %575
  %587 = load i32, i32* %4, align 4
  %588 = load float, float* %19, align 4
  call void @add_followup_value(i32 %587, float %588)
  %589 = load i32, i32* @verbose, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %592, label %591

591:                                              ; preds = %586
  br label %598

592:                                              ; preds = %586
  %593 = load i32, i32* %4, align 4
  %594 = load float, float* %19, align 4
  %595 = fpext float %594 to double
  %596 = load i32, i32* %9, align 4
  %597 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.51, i64 0, i64 0), i32 %593, double %595, i32 %596)
  br label %598

598:                                              ; preds = %592, %591
  br label %599

599:                                              ; preds = %598, %575
  br label %600

600:                                              ; preds = %599, %409
  br label %1411

601:                                              ; preds = %62
  %602 = load i32, i32* %17, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %603
  %605 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %604, i32 0, i32 1
  %606 = load i32, i32* %605, align 4
  store i32 %606, i32* %9, align 4
  %607 = load i32, i32* %9, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %608
  %610 = load i8, i8* %609, align 1
  %611 = zext i8 %610 to i32
  %612 = load i32, i32* %5, align 4
  %613 = icmp eq i32 %611, %612
  br i1 %613, label %614, label %615

614:                                              ; preds = %601
  br label %622

615:                                              ; preds = %601
  %616 = load i32, i32* %9, align 4
  %617 = sdiv i32 %616, 20
  %618 = sub nsw i32 %617, 1
  %619 = load i32, i32* %9, align 4
  %620 = srem i32 %619, 20
  %621 = sub nsw i32 %620, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 1574, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0), i32 %618, i32 %621)
  br label %622

622:                                              ; preds = %615, %614
  %623 = load i32, i32* %4, align 4
  %624 = load i32, i32* %5, align 4
  %625 = call i32 @trymove(i32 %623, i32 %624, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i64 0, i64 0), i32 0, i32 0, i32 0)
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %661

627:                                              ; preds = %622
  %628 = load i32, i32* %4, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %629
  %631 = getelementptr inbounds %struct.move_data, %struct.move_data* %630, i32 0, i32 19
  %632 = load i32, i32* %631, align 4
  %633 = icmp eq i32 %632, 1
  br i1 %633, label %634, label %660

634:                                              ; preds = %627
  %635 = load i32, i32* %9, align 4
  %636 = call i32 @attack(i32 %635, i32* %27)
  %637 = icmp eq i32 %636, 5
  br i1 %637, label %638, label %660

638:                                              ; preds = %634
  %639 = load i32, i32* %27, align 4
  %640 = icmp ne i32 %639, 0
  br i1 %640, label %641, label %660

641:                                              ; preds = %638
  %642 = load i32, i32* %27, align 4
  %643 = load i32, i32* %7, align 4
  %644 = call i32 @trymove(i32 %642, i32 %643, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i64 0, i64 0), i32 0, i32 0, i32 0)
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %659

646:                                              ; preds = %641
  %647 = load i32, i32* %4, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %648
  %650 = load i8, i8* %649, align 1
  %651 = zext i8 %650 to i32
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %657, label %653

653:                                              ; preds = %646
  %654 = load i32, i32* %4, align 4
  %655 = call i32 @attack(i32 %654, i32* null)
  %656 = icmp eq i32 %655, 5
  br i1 %656, label %657, label %658

657:                                              ; preds = %653, %646
  call void @popgo()
  call void @popgo()
  br label %1411

658:                                              ; preds = %653
  call void @popgo()
  br label %659

659:                                              ; preds = %658, %641
  br label %660

660:                                              ; preds = %659, %638, %634, %627
  call void @popgo()
  br label %661

661:                                              ; preds = %660, %622
  %662 = load i32, i32* %4, align 4
  %663 = load i32, i32* %9, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %664
  %666 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %665, i32 0, i32 2
  %667 = load float, float* %666, align 4
  %668 = fmul float 2.000000e+00, %667
  call void @add_followup_value(i32 %662, float %668)
  %669 = load i32, i32* @verbose, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %672, label %671

671:                                              ; preds = %661
  br label %683

672:                                              ; preds = %661
  %673 = load i32, i32* %4, align 4
  %674 = load i32, i32* %9, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %675
  %677 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %676, i32 0, i32 2
  %678 = load float, float* %677, align 4
  %679 = fmul float 2.000000e+00, %678
  %680 = fpext float %679 to double
  %681 = load i32, i32* %9, align 4
  %682 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.52, i64 0, i64 0), i32 %673, double %680, i32 %681)
  br label %683

683:                                              ; preds = %672, %671
  br label %1411

684:                                              ; preds = %62
  br label %1411

685:                                              ; preds = %62, %62, %62, %62, %62, %62, %62
  store i32 1, i32* %14, align 4
  br label %1411

686:                                              ; preds = %62
  %687 = load i32, i32* %17, align 4
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %688
  %690 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %689, i32 0, i32 1
  %691 = load i32, i32* %690, align 4
  store i32 %691, i32* %9, align 4
  %692 = load i32, i32* %9, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %693
  %695 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %694, i32 0, i32 4
  %696 = load float, float* %695, align 4
  %697 = fmul float 2.000000e+00, %696
  store float %697, float* %11, align 4
  %698 = load i32, i32* @verbose, align 4
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %701, label %700

700:                                              ; preds = %686
  br label %707

701:                                              ; preds = %686
  %702 = load i32, i32* %4, align 4
  %703 = load float, float* %11, align 4
  %704 = fpext float %703 to double
  %705 = load i32, i32* %9, align 4
  %706 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i64 0, i64 0), i32 %702, double %704, i32 %705)
  br label %707

707:                                              ; preds = %701, %700
  %708 = load float, float* %11, align 4
  %709 = load float, float* %12, align 4
  %710 = fadd float %709, %708
  store float %710, float* %12, align 4
  br label %1411

711:                                              ; preds = %62
  %712 = load i32, i32* %17, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %713
  %715 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %714, i32 0, i32 1
  %716 = load i32, i32* %715, align 4
  store i32 %716, i32* %9, align 4
  %717 = load i32, i32* %4, align 4
  %718 = load i32, i32* %9, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %719
  %721 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %720, i32 0, i32 4
  %722 = load float, float* %721, align 4
  %723 = fmul float 2.000000e+00, %722
  call void @add_followup_value(i32 %717, float %723)
  %724 = load i32, i32* @verbose, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %727, label %726

726:                                              ; preds = %711
  br label %738

727:                                              ; preds = %711
  %728 = load i32, i32* %4, align 4
  %729 = load i32, i32* %9, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %730
  %732 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %731, i32 0, i32 4
  %733 = load float, float* %732, align 4
  %734 = fmul float 2.000000e+00, %733
  %735 = fpext float %734 to double
  %736 = load i32, i32* %9, align 4
  %737 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.54, i64 0, i64 0), i32 %728, double %735, i32 %736)
  br label %738

738:                                              ; preds = %727, %726
  br label %1411

739:                                              ; preds = %62
  br label %1411

740:                                              ; preds = %62, %62, %62, %62, %62, %62, %62, %62
  %741 = load i32, i32* %17, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %742
  %744 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 4
  %746 = icmp eq i32 %745, 60
  br i1 %746, label %754, label %747

747:                                              ; preds = %740
  %748 = load i32, i32* %17, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %749
  %751 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %750, i32 0, i32 0
  %752 = load i32, i32* %751, align 4
  %753 = icmp eq i32 %752, 62
  br i1 %753, label %754, label %773

754:                                              ; preds = %747, %740
  %755 = load i32, i32* %17, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %756
  %758 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %757, i32 0, i32 1
  %759 = load i32, i32* %758, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %760
  %762 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %761, i32 0, i32 1
  %763 = load i32, i32* %762, align 4
  store i32 %763, i32* %9, align 4
  %764 = load i32, i32* %17, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %765
  %767 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %766, i32 0, i32 1
  %768 = load i32, i32* %767, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %769
  %771 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %770, i32 0, i32 3
  %772 = load i32, i32* %771, align 4
  store i32 %772, i32* %10, align 4
  br label %779

773:                                              ; preds = %747
  %774 = load i32, i32* %17, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %775
  %777 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %776, i32 0, i32 1
  %778 = load i32, i32* %777, align 4
  store i32 %778, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %779

779:                                              ; preds = %773, %754
  %780 = load i32, i32* %9, align 4
  %781 = sext i32 %780 to i64
  %782 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %781
  %783 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %782, i32 0, i32 3
  %784 = load i32, i32* %783, align 4
  %785 = icmp eq i32 %784, 1
  br i1 %785, label %786, label %808

786:                                              ; preds = %779
  %787 = load i32, i32* %9, align 4
  %788 = call i32 @is_ko_point(i32 %787)
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %808

790:                                              ; preds = %786
  %791 = load i32, i32* %4, align 4
  %792 = load i32, i32* %9, align 4
  %793 = call i32 @liberty_of_string(i32 %791, i32 %792)
  %794 = icmp ne i32 %793, 0
  br i1 %794, label %795, label %808

795:                                              ; preds = %790
  %796 = load i32, i32* @verbose, align 4
  %797 = icmp ne i32 %796, 0
  br i1 %797, label %799, label %798

798:                                              ; preds = %795
  br label %803

799:                                              ; preds = %795
  %800 = load i32, i32* %4, align 4
  %801 = load i32, i32* %9, align 4
  %802 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.55, i64 0, i64 0), i32 %800, i32 %801)
  br label %803

803:                                              ; preds = %799, %798
  %804 = load float, float* %12, align 4
  %805 = fpext float %804 to double
  %806 = fsub double %805, 5.000000e-01
  %807 = fptrunc double %806 to float
  store float %807, float* %12, align 4
  br label %808

808:                                              ; preds = %803, %790, %786, %779
  %809 = load i32, i32* %4, align 4
  %810 = load i32, i32* %5, align 4
  %811 = load i32, i32* %9, align 4
  %812 = load i32, i32* %10, align 4
  %813 = load i32, i32* %17, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %814
  %816 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %815, i32 0, i32 0
  %817 = load i32, i32* %816, align 4
  %818 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  %819 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 0
  call void @mark_changed_dragon(i32 %809, i32 %810, i32 %811, i32 %812, i32 %817, i8* %818, float* %819, float* %11)
  %820 = load float, float* %11, align 4
  %821 = fpext float %820 to double
  %822 = fmul double %821, 2.000000e+00
  %823 = fptrunc double %822 to float
  store float %823, float* %11, align 4
  %824 = load i32, i32* @verbose, align 4
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %827, label %826

826:                                              ; preds = %808
  br label %831

827:                                              ; preds = %808
  %828 = load i32, i32* %4, align 4
  %829 = load i32, i32* %9, align 4
  %830 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.56, i64 0, i64 0), i32 %828, i32 %829)
  br label %831

831:                                              ; preds = %827, %826
  %832 = load i32, i32* %17, align 4
  %833 = sext i32 %832 to i64
  %834 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %833
  %835 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %834, i32 0, i32 0
  %836 = load i32, i32* %835, align 4
  %837 = icmp eq i32 %836, 26
  br i1 %837, label %845, label %838

838:                                              ; preds = %831
  %839 = load i32, i32* %17, align 4
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %840
  %842 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %841, i32 0, i32 0
  %843 = load i32, i32* %842, align 4
  %844 = icmp eq i32 %843, 32
  br i1 %844, label %845, label %846

845:                                              ; preds = %838, %831
  store float 0.000000e+00, float* %11, align 4
  br label %922

846:                                              ; preds = %838
  %847 = load i32, i32* %17, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %848
  %850 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 4
  %852 = icmp eq i32 %851, 28
  br i1 %852, label %860, label %853

853:                                              ; preds = %846
  %854 = load i32, i32* %17, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %855
  %857 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %856, i32 0, i32 0
  %858 = load i32, i32* %857, align 4
  %859 = icmp eq i32 %858, 34
  br i1 %859, label %860, label %875

860:                                              ; preds = %853, %846
  %861 = load float, float* %11, align 4
  %862 = fpext float %861 to double
  %863 = fmul double %862, 3.000000e-01
  %864 = fptrunc double %863 to float
  store float %864, float* %11, align 4
  %865 = load i32, i32* @verbose, align 4
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %868, label %867

867:                                              ; preds = %860
  br label %874

868:                                              ; preds = %860
  %869 = load i32, i32* %4, align 4
  %870 = load float, float* %11, align 4
  %871 = fpext float %870 to double
  %872 = load i32, i32* %9, align 4
  %873 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.57, i64 0, i64 0), i32 %869, double %871, i32 %872)
  br label %874

874:                                              ; preds = %868, %867
  br label %921

875:                                              ; preds = %853
  %876 = load i32, i32* %17, align 4
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %877
  %879 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %878, i32 0, i32 0
  %880 = load i32, i32* %879, align 4
  %881 = icmp eq i32 %880, 30
  br i1 %881, label %889, label %882

882:                                              ; preds = %875
  %883 = load i32, i32* %17, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %884
  %886 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %885, i32 0, i32 0
  %887 = load i32, i32* %886, align 4
  %888 = icmp eq i32 %887, 36
  br i1 %888, label %889, label %904

889:                                              ; preds = %882, %875
  %890 = load float, float* %11, align 4
  %891 = fpext float %890 to double
  %892 = fmul double %891, 5.000000e-01
  %893 = fptrunc double %892 to float
  store float %893, float* %11, align 4
  %894 = load i32, i32* @verbose, align 4
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %897, label %896

896:                                              ; preds = %889
  br label %903

897:                                              ; preds = %889
  %898 = load i32, i32* %4, align 4
  %899 = load float, float* %11, align 4
  %900 = fpext float %899 to double
  %901 = load i32, i32* %9, align 4
  %902 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.58, i64 0, i64 0), i32 %898, double %900, i32 %901)
  br label %903

903:                                              ; preds = %897, %896
  br label %920

904:                                              ; preds = %882
  %905 = load i32, i32* %17, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %906
  %908 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %907, i32 0, i32 0
  %909 = load i32, i32* %908, align 4
  %910 = icmp eq i32 %909, 60
  br i1 %910, label %918, label %911

911:                                              ; preds = %904
  %912 = load i32, i32* %17, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %913
  %915 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %914, i32 0, i32 0
  %916 = load i32, i32* %915, align 4
  %917 = icmp eq i32 %916, 62
  br i1 %917, label %918, label %919

918:                                              ; preds = %911, %904
  store float 0.000000e+00, float* %11, align 4
  br label %919

919:                                              ; preds = %918, %911
  br label %920

920:                                              ; preds = %919, %903
  br label %921

921:                                              ; preds = %920, %874
  br label %922

922:                                              ; preds = %921, %845
  %923 = load float, float* %11, align 4
  %924 = load float, float* %12, align 4
  %925 = fsub float %924, %923
  store float %925, float* %12, align 4
  %926 = load i32, i32* %17, align 4
  %927 = sext i32 %926 to i64
  %928 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %927
  %929 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %928, i32 0, i32 0
  %930 = load i32, i32* %929, align 4
  %931 = icmp eq i32 %930, 26
  br i1 %931, label %946, label %932

932:                                              ; preds = %922
  %933 = load i32, i32* %17, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %934
  %936 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %935, i32 0, i32 0
  %937 = load i32, i32* %936, align 4
  %938 = icmp eq i32 %937, 28
  br i1 %938, label %946, label %939

939:                                              ; preds = %932
  %940 = load i32, i32* %17, align 4
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %941
  %943 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %942, i32 0, i32 0
  %944 = load i32, i32* %943, align 4
  %945 = icmp eq i32 %944, 30
  br i1 %945, label %946, label %994

946:                                              ; preds = %939, %932, %922
  %947 = load i32, i32* %9, align 4
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %948
  %950 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %949, i32 0, i32 3
  %951 = load i32, i32* %950, align 4
  %952 = load i32, i32* %9, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %953
  %955 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %954, i32 0, i32 1
  %956 = load i32, i32* %955, align 4
  %957 = icmp eq i32 %951, %956
  br i1 %957, label %958, label %994

958:                                              ; preds = %946
  %959 = load i32, i32* %9, align 4
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %960
  %962 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %961, i32 0, i32 16
  %963 = getelementptr inbounds [10 x i32], [10 x i32]* %962, i64 0, i64 0
  %964 = load i32, i32* %963, align 4
  %965 = icmp eq i32 %964, 5
  br i1 %965, label %966, label %994

966:                                              ; preds = %958
  %967 = load i32, i32* %4, align 4
  %968 = load i32, i32* %9, align 4
  %969 = call i32 @attack_move_reason_known(i32 %967, i32 %968)
  %970 = icmp ne i32 %969, 5
  br i1 %970, label %971, label %994

971:                                              ; preds = %966
  %972 = load i32, i32* %9, align 4
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %973
  %975 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %974, i32 0, i32 2
  %976 = load float, float* %975, align 4
  %977 = fmul float 2.000000e+00, %976
  %978 = fpext float %977 to double
  %979 = fmul double 5.000000e-02, %978
  %980 = fptrunc double %979 to float
  store float %980, float* %11, align 4
  %981 = load i32, i32* @verbose, align 4
  %982 = icmp ne i32 %981, 0
  br i1 %982, label %984, label %983

983:                                              ; preds = %971
  br label %990

984:                                              ; preds = %971
  %985 = load i32, i32* %4, align 4
  %986 = load float, float* %11, align 4
  %987 = fpext float %986 to double
  %988 = load i32, i32* %9, align 4
  %989 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.59, i64 0, i64 0), i32 %985, double %987, i32 %988)
  br label %990

990:                                              ; preds = %984, %983
  %991 = load float, float* %11, align 4
  %992 = load float, float* %12, align 4
  %993 = fsub float %992, %991
  store float %993, float* %12, align 4
  br label %994

994:                                              ; preds = %990, %966, %958, %946, %939
  store i32 1, i32* %14, align 4
  br label %1411

995:                                              ; preds = %62
  %996 = load i32, i32* %17, align 4
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %997
  %999 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %998, i32 0, i32 1
  %1000 = load i32, i32* %999, align 4
  store i32 %1000, i32* %9, align 4
  %1001 = load i32, i32* %9, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1002
  %1004 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1003, i32 0, i32 16
  %1005 = load i32, i32* %1004, align 4
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1017

1007:                                             ; preds = %995
  %1008 = load i32, i32* @debug, align 4
  %1009 = and i32 %1008, 2048
  %1010 = icmp ne i32 %1009, 0
  br i1 %1010, label %1012, label %1011

1011:                                             ; preds = %1007
  br label %1016

1012:                                             ; preds = %1007
  %1013 = load i32, i32* %4, align 4
  %1014 = load i32, i32* %9, align 4
  %1015 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.60, i64 0, i64 0), i32 %1013, i32 %1014)
  br label %1016

1016:                                             ; preds = %1012, %1011
  br label %1411

1017:                                             ; preds = %995
  %1018 = load i32, i32* %9, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1019
  %1021 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1020, i32 0, i32 4
  %1022 = load float, float* %1021, align 4
  %1023 = fmul float 2.000000e+00, %1022
  store float %1023, float* %28, align 4
  store i32 0, i32* %29, align 4
  br label %1024

1024:                                             ; preds = %1086, %1017
  %1025 = load i32, i32* %29, align 4
  %1026 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1027 = load i32, i32* %9, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1028
  %1030 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1029, i32 0, i32 1
  %1031 = load i32, i32* %1030, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1026, i64 %1032
  %1034 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1033, i32 0, i32 2
  %1035 = load i32, i32* %1034, align 4
  %1036 = icmp slt i32 %1025, %1035
  br i1 %1036, label %1037, label %1089

1037:                                             ; preds = %1024
  %1038 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1039 = load i32, i32* %9, align 4
  %1040 = sext i32 %1039 to i64
  %1041 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1040
  %1042 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1041, i32 0, i32 1
  %1043 = load i32, i32* %1042, align 4
  %1044 = sext i32 %1043 to i64
  %1045 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1038, i64 %1044
  %1046 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1045, i32 0, i32 1
  %1047 = load i32, i32* %29, align 4
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds [10 x i32], [10 x i32]* %1046, i64 0, i64 %1048
  %1050 = load i32, i32* %1049, align 4
  store i32 %1050, i32* %30, align 4
  %1051 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1052 = load i32, i32* %30, align 4
  %1053 = sext i32 %1052 to i64
  %1054 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1051, i64 %1053
  %1055 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1054, i32 0, i32 0
  %1056 = load i32, i32* %1055, align 4
  store i32 %1056, i32* %31, align 4
  %1057 = load i32, i32* %31, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1058
  %1060 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1059, i32 0, i32 0
  %1061 = load i32, i32* %1060, align 4
  %1062 = load i32, i32* %5, align 4
  %1063 = icmp eq i32 %1061, %1062
  br i1 %1063, label %1064, label %1085

1064:                                             ; preds = %1037
  %1065 = load i32, i32* %31, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1066
  %1068 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1067, i32 0, i32 16
  %1069 = load i32, i32* %1068, align 4
  %1070 = icmp eq i32 %1069, 2
  br i1 %1070, label %1071, label %1085

1071:                                             ; preds = %1064
  %1072 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1073 = load i32, i32* %30, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1072, i64 %1074
  %1076 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1075, i32 0, i32 6
  %1077 = load i32, i32* %1076, align 4
  %1078 = icmp ne i32 %1077, 5
  br i1 %1078, label %1079, label %1085

1079:                                             ; preds = %1071
  %1080 = load i32, i32* %4, align 4
  %1081 = load i32, i32* %31, align 4
  %1082 = call i32 @owl_defense_move_reason_known(i32 %1080, i32 %1081)
  %1083 = icmp ne i32 %1082, 0
  br i1 %1083, label %1085, label %1084

1084:                                             ; preds = %1079
  store float 0.000000e+00, float* %28, align 4
  br label %1085

1085:                                             ; preds = %1084, %1079, %1071, %1064, %1037
  br label %1086

1086:                                             ; preds = %1085
  %1087 = load i32, i32* %29, align 4
  %1088 = add nsw i32 %1087, 1
  store i32 %1088, i32* %29, align 4
  br label %1024, !llvm.loop !44

1089:                                             ; preds = %1024
  %1090 = load float, float* %28, align 4
  %1091 = fpext float %1090 to double
  %1092 = fcmp ogt double %1091, 0.000000e+00
  br i1 %1092, label %1093, label %1106

1093:                                             ; preds = %1089
  %1094 = load i32, i32* %4, align 4
  %1095 = load float, float* %28, align 4
  call void @add_followup_value(i32 %1094, float %1095)
  %1096 = load i32, i32* @verbose, align 4
  %1097 = icmp ne i32 %1096, 0
  br i1 %1097, label %1099, label %1098

1098:                                             ; preds = %1093
  br label %1105

1099:                                             ; preds = %1093
  %1100 = load i32, i32* %4, align 4
  %1101 = load float, float* %28, align 4
  %1102 = fpext float %1101 to double
  %1103 = load i32, i32* %9, align 4
  %1104 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.61, i64 0, i64 0), i32 %1100, double %1102, i32 %1103)
  br label %1105

1105:                                             ; preds = %1099, %1098
  br label %1106

1106:                                             ; preds = %1105, %1089
  br label %1411

1107:                                             ; preds = %62
  %1108 = load i32, i32* %17, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %1109
  %1111 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %1110, i32 0, i32 1
  %1112 = load i32, i32* %1111, align 4
  store i32 %1112, i32* %9, align 4
  %1113 = load i32, i32* %4, align 4
  %1114 = load i32, i32* %9, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1115
  %1117 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1116, i32 0, i32 4
  %1118 = load float, float* %1117, align 4
  %1119 = fmul float 2.000000e+00, %1118
  call void @add_followup_value(i32 %1113, float %1119)
  %1120 = load i32, i32* @verbose, align 4
  %1121 = icmp ne i32 %1120, 0
  br i1 %1121, label %1123, label %1122

1122:                                             ; preds = %1107
  br label %1134

1123:                                             ; preds = %1107
  %1124 = load i32, i32* %4, align 4
  %1125 = load i32, i32* %9, align 4
  %1126 = sext i32 %1125 to i64
  %1127 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1126
  %1128 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1127, i32 0, i32 4
  %1129 = load float, float* %1128, align 4
  %1130 = fmul float 2.000000e+00, %1129
  %1131 = fpext float %1130 to double
  %1132 = load i32, i32* %9, align 4
  %1133 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.62, i64 0, i64 0), i32 %1124, double %1131, i32 %1132)
  br label %1134

1134:                                             ; preds = %1123, %1122
  br label %1411

1135:                                             ; preds = %62
  %1136 = load i32, i32* %17, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %1137
  %1139 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %1138, i32 0, i32 1
  %1140 = load i32, i32* %1139, align 4
  store i32 %1140, i32* %9, align 4
  %1141 = load i32, i32* @doing_scoring, align 4
  %1142 = icmp ne i32 %1141, 0
  br i1 %1142, label %1170, label %1143

1143:                                             ; preds = %1135
  %1144 = load i32, i32* %5, align 4
  %1145 = call i32 @get_last_opponent_move(i32 %1144)
  %1146 = load i32, i32* %9, align 4
  %1147 = call i32 @is_same_dragon(i32 %1145, i32 %1146)
  %1148 = icmp ne i32 %1147, 0
  br i1 %1148, label %1149, label %1170

1149:                                             ; preds = %1143
  %1150 = load i32, i32* %9, align 4
  %1151 = sext i32 %1150 to i64
  %1152 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1151
  %1153 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1152, i32 0, i32 4
  %1154 = load float, float* %1153, align 4
  %1155 = fpext float %1154 to double
  %1156 = fmul double 1.500000e+00, %1155
  %1157 = fptrunc double %1156 to float
  store float %1157, float* %11, align 4
  %1158 = load i32, i32* @verbose, align 4
  %1159 = icmp ne i32 %1158, 0
  br i1 %1159, label %1161, label %1160

1160:                                             ; preds = %1149
  br label %1166

1161:                                             ; preds = %1149
  %1162 = load i32, i32* %4, align 4
  %1163 = load float, float* %11, align 4
  %1164 = fpext float %1163 to double
  %1165 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.63, i64 0, i64 0), i32 %1162, double %1164)
  br label %1166

1166:                                             ; preds = %1161, %1160
  %1167 = load float, float* %11, align 4
  %1168 = load float, float* %12, align 4
  %1169 = fadd float %1168, %1167
  store float %1169, float* %12, align 4
  br label %1370

1170:                                             ; preds = %1143, %1135
  %1171 = load i32, i32* @doing_scoring, align 4
  %1172 = icmp ne i32 %1171, 0
  br i1 %1172, label %1264, label %1173

1173:                                             ; preds = %1170
  %1174 = load i32, i32* %5, align 4
  %1175 = icmp eq i32 %1174, 2
  br i1 %1175, label %1176, label %1180

1176:                                             ; preds = %1173
  %1177 = load float, float* %6, align 4
  %1178 = fpext float %1177 to double
  %1179 = fcmp olt double %1178, 0.000000e+00
  br i1 %1179, label %1187, label %1180

1180:                                             ; preds = %1176, %1173
  %1181 = load i32, i32* %5, align 4
  %1182 = icmp eq i32 %1181, 1
  br i1 %1182, label %1183, label %1264

1183:                                             ; preds = %1180
  %1184 = load float, float* %6, align 4
  %1185 = fpext float %1184 to double
  %1186 = fcmp ogt double %1185, 0.000000e+00
  br i1 %1186, label %1187, label %1264

1187:                                             ; preds = %1183, %1176
  %1188 = load i32, i32* %9, align 4
  %1189 = sext i32 %1188 to i64
  %1190 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1189
  %1191 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1190, i32 0, i32 4
  %1192 = load float, float* %1191, align 4
  %1193 = fpext float %1192 to double
  %1194 = fmul double 9.000000e-01, %1193
  %1195 = load float, float* %6, align 4
  %1196 = fdiv float %1195, 2.000000e+00
  %1197 = fcmp olt float %1196, 0.000000e+00
  br i1 %1197, label %1198, label %1202

1198:                                             ; preds = %1187
  %1199 = load float, float* %6, align 4
  %1200 = fdiv float %1199, 2.000000e+00
  %1201 = fneg float %1200
  br label %1205

1202:                                             ; preds = %1187
  %1203 = load float, float* %6, align 4
  %1204 = fdiv float %1203, 2.000000e+00
  br label %1205

1205:                                             ; preds = %1202, %1198
  %1206 = phi float [ %1201, %1198 ], [ %1204, %1202 ]
  %1207 = load i32, i32* @board_size, align 4
  %1208 = sdiv i32 %1207, 2
  %1209 = sitofp i32 %1208 to float
  %1210 = fsub float %1206, %1209
  %1211 = fsub float %1210, 1.000000e+00
  %1212 = fpext float %1211 to double
  %1213 = fcmp olt double %1194, %1212
  br i1 %1213, label %1214, label %1222

1214:                                             ; preds = %1205
  %1215 = load i32, i32* %9, align 4
  %1216 = sext i32 %1215 to i64
  %1217 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1216
  %1218 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1217, i32 0, i32 4
  %1219 = load float, float* %1218, align 4
  %1220 = fpext float %1219 to double
  %1221 = fmul double 9.000000e-01, %1220
  br label %1241

1222:                                             ; preds = %1205
  %1223 = load float, float* %6, align 4
  %1224 = fdiv float %1223, 2.000000e+00
  %1225 = fcmp olt float %1224, 0.000000e+00
  br i1 %1225, label %1226, label %1230

1226:                                             ; preds = %1222
  %1227 = load float, float* %6, align 4
  %1228 = fdiv float %1227, 2.000000e+00
  %1229 = fneg float %1228
  br label %1233

1230:                                             ; preds = %1222
  %1231 = load float, float* %6, align 4
  %1232 = fdiv float %1231, 2.000000e+00
  br label %1233

1233:                                             ; preds = %1230, %1226
  %1234 = phi float [ %1229, %1226 ], [ %1232, %1230 ]
  %1235 = load i32, i32* @board_size, align 4
  %1236 = sdiv i32 %1235, 2
  %1237 = sitofp i32 %1236 to float
  %1238 = fsub float %1234, %1237
  %1239 = fsub float %1238, 1.000000e+00
  %1240 = fpext float %1239 to double
  br label %1241

1241:                                             ; preds = %1233, %1214
  %1242 = phi double [ %1221, %1214 ], [ %1240, %1233 ]
  %1243 = fptrunc double %1242 to float
  store float %1243, float* %11, align 4
  %1244 = load float, float* %11, align 4
  %1245 = fcmp olt float %1244, 0.000000e+00
  br i1 %1245, label %1246, label %1247

1246:                                             ; preds = %1241
  br label %1249

1247:                                             ; preds = %1241
  %1248 = load float, float* %11, align 4
  br label %1249

1249:                                             ; preds = %1247, %1246
  %1250 = phi float [ 0.000000e+00, %1246 ], [ %1248, %1247 ]
  store float %1250, float* %11, align 4
  %1251 = load i32, i32* @verbose, align 4
  %1252 = icmp ne i32 %1251, 0
  br i1 %1252, label %1254, label %1253

1253:                                             ; preds = %1249
  br label %1260

1254:                                             ; preds = %1249
  %1255 = load i32, i32* %4, align 4
  %1256 = load float, float* %11, align 4
  %1257 = fpext float %1256 to double
  %1258 = load i32, i32* %9, align 4
  %1259 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.64, i64 0, i64 0), i32 %1255, double %1257, i32 %1258)
  br label %1260

1260:                                             ; preds = %1254, %1253
  %1261 = load float, float* %11, align 4
  %1262 = load float, float* %12, align 4
  %1263 = fadd float %1262, %1261
  store float %1263, float* %12, align 4
  br label %1369

1264:                                             ; preds = %1183, %1180, %1170
  %1265 = load i32, i32* %5, align 4
  %1266 = icmp eq i32 %1265, 2
  br i1 %1266, label %1267, label %1271

1267:                                             ; preds = %1264
  %1268 = load float, float* %6, align 4
  %1269 = fpext float %1268 to double
  %1270 = fcmp ogt double %1269, 0.000000e+00
  br i1 %1270, label %1278, label %1271

1271:                                             ; preds = %1267, %1264
  %1272 = load i32, i32* %5, align 4
  %1273 = icmp eq i32 %1272, 1
  br i1 %1273, label %1274, label %1279

1274:                                             ; preds = %1271
  %1275 = load float, float* %6, align 4
  %1276 = fpext float %1275 to double
  %1277 = fcmp olt double %1276, 0.000000e+00
  br i1 %1277, label %1278, label %1279

1278:                                             ; preds = %1274, %1267
  store float 0.000000e+00, float* %11, align 4
  br label %1321

1279:                                             ; preds = %1274, %1271
  %1280 = load i32, i32* %9, align 4
  %1281 = sext i32 %1280 to i64
  %1282 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1281
  %1283 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1282, i32 0, i32 4
  %1284 = load float, float* %1283, align 4
  %1285 = fmul float 2.000000e+00, %1284
  %1286 = load float, float* %6, align 4
  %1287 = fdiv float %1286, 2.000000e+00
  %1288 = fcmp olt float %1287, 0.000000e+00
  br i1 %1288, label %1289, label %1293

1289:                                             ; preds = %1279
  %1290 = load float, float* %6, align 4
  %1291 = fdiv float %1290, 2.000000e+00
  %1292 = fneg float %1291
  br label %1296

1293:                                             ; preds = %1279
  %1294 = load float, float* %6, align 4
  %1295 = fdiv float %1294, 2.000000e+00
  br label %1296

1296:                                             ; preds = %1293, %1289
  %1297 = phi float [ %1292, %1289 ], [ %1295, %1293 ]
  %1298 = fcmp olt float %1285, %1297
  br i1 %1298, label %1299, label %1306

1299:                                             ; preds = %1296
  %1300 = load i32, i32* %9, align 4
  %1301 = sext i32 %1300 to i64
  %1302 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1301
  %1303 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1302, i32 0, i32 4
  %1304 = load float, float* %1303, align 4
  %1305 = fmul float 2.000000e+00, %1304
  br label %1319

1306:                                             ; preds = %1296
  %1307 = load float, float* %6, align 4
  %1308 = fdiv float %1307, 2.000000e+00
  %1309 = fcmp olt float %1308, 0.000000e+00
  br i1 %1309, label %1310, label %1314

1310:                                             ; preds = %1306
  %1311 = load float, float* %6, align 4
  %1312 = fdiv float %1311, 2.000000e+00
  %1313 = fneg float %1312
  br label %1317

1314:                                             ; preds = %1306
  %1315 = load float, float* %6, align 4
  %1316 = fdiv float %1315, 2.000000e+00
  br label %1317

1317:                                             ; preds = %1314, %1310
  %1318 = phi float [ %1313, %1310 ], [ %1316, %1314 ]
  br label %1319

1319:                                             ; preds = %1317, %1299
  %1320 = phi float [ %1305, %1299 ], [ %1318, %1317 ]
  store float %1320, float* %11, align 4
  br label %1321

1321:                                             ; preds = %1319, %1278
  %1322 = load i32, i32* %4, align 4
  %1323 = load i32, i32* %9, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1324
  %1326 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1325, i32 0, i32 4
  %1327 = load float, float* %1326, align 4
  %1328 = fmul float 2.000000e+00, %1327
  call void @add_reverse_followup_value(i32 %1322, float %1328)
  %1329 = load i32, i32* %9, align 4
  %1330 = sext i32 %1329 to i64
  %1331 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1330
  %1332 = load i8, i8* %1331, align 1
  %1333 = zext i8 %1332 to i32
  %1334 = load i32, i32* %5, align 4
  %1335 = icmp eq i32 %1333, %1334
  br i1 %1335, label %1336, label %1352

1336:                                             ; preds = %1321
  %1337 = load i32, i32* @verbose, align 4
  %1338 = icmp ne i32 %1337, 0
  br i1 %1338, label %1340, label %1339

1339:                                             ; preds = %1336
  br label %1351

1340:                                             ; preds = %1336
  %1341 = load i32, i32* %4, align 4
  %1342 = load i32, i32* %9, align 4
  %1343 = sext i32 %1342 to i64
  %1344 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1343
  %1345 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1344, i32 0, i32 4
  %1346 = load float, float* %1345, align 4
  %1347 = fmul float 2.000000e+00, %1346
  %1348 = fpext float %1347 to double
  %1349 = load i32, i32* %9, align 4
  %1350 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.65, i64 0, i64 0), i32 %1341, double %1348, i32 %1349)
  br label %1351

1351:                                             ; preds = %1340, %1339
  br label %1368

1352:                                             ; preds = %1321
  %1353 = load i32, i32* @verbose, align 4
  %1354 = icmp ne i32 %1353, 0
  br i1 %1354, label %1356, label %1355

1355:                                             ; preds = %1352
  br label %1367

1356:                                             ; preds = %1352
  %1357 = load i32, i32* %4, align 4
  %1358 = load i32, i32* %9, align 4
  %1359 = sext i32 %1358 to i64
  %1360 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1359
  %1361 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1360, i32 0, i32 4
  %1362 = load float, float* %1361, align 4
  %1363 = fmul float 2.000000e+00, %1362
  %1364 = fpext float %1363 to double
  %1365 = load i32, i32* %9, align 4
  %1366 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.66, i64 0, i64 0), i32 %1357, double %1364, i32 %1365)
  br label %1367

1367:                                             ; preds = %1356, %1355
  br label %1368

1368:                                             ; preds = %1367, %1351
  br label %1369

1369:                                             ; preds = %1368, %1260
  br label %1370

1370:                                             ; preds = %1369, %1166
  br label %1411

1371:                                             ; preds = %62
  %1372 = load i32, i32* %17, align 4
  %1373 = sext i32 %1372 to i64
  %1374 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %1373
  %1375 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %1374, i32 0, i32 1
  %1376 = load i32, i32* %1375, align 4
  %1377 = sitofp i32 %1376 to double
  %1378 = fadd double %1377, 1.000000e+00
  %1379 = fptrunc double %1378 to float
  store float %1379, float* %11, align 4
  %1380 = load float, float* %11, align 4
  %1381 = load float, float* %12, align 4
  %1382 = fadd float %1381, %1380
  store float %1382, float* %12, align 4
  %1383 = load i32, i32* @verbose, align 4
  %1384 = icmp ne i32 %1383, 0
  br i1 %1384, label %1386, label %1385

1385:                                             ; preds = %1371
  br label %1391

1386:                                             ; preds = %1371
  %1387 = load i32, i32* %4, align 4
  %1388 = load float, float* %11, align 4
  %1389 = fpext float %1388 to double
  %1390 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.67, i64 0, i64 0), i32 %1387, double %1389)
  br label %1391

1391:                                             ; preds = %1386, %1385
  br label %1411

1392:                                             ; preds = %62
  %1393 = load i32, i32* %17, align 4
  %1394 = sext i32 %1393 to i64
  %1395 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %1394
  %1396 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %1395, i32 0, i32 1
  %1397 = load i32, i32* %1396, align 4
  %1398 = sitofp i32 %1397 to float
  store float %1398, float* %11, align 4
  %1399 = load float, float* %11, align 4
  %1400 = load float, float* %12, align 4
  %1401 = fadd float %1400, %1399
  store float %1401, float* %12, align 4
  %1402 = load i32, i32* @verbose, align 4
  %1403 = icmp ne i32 %1402, 0
  br i1 %1403, label %1405, label %1404

1404:                                             ; preds = %1392
  br label %1410

1405:                                             ; preds = %1392
  %1406 = load i32, i32* %4, align 4
  %1407 = load float, float* %11, align 4
  %1408 = fpext float %1407 to double
  %1409 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.68, i64 0, i64 0), i32 %1406, double %1408)
  br label %1410

1410:                                             ; preds = %1405, %1404
  br label %1411

1411:                                             ; preds = %62, %1410, %1391, %1370, %1134, %1106, %1016, %994, %739, %738, %707, %685, %684, %683, %657, %600, %573, %474, %408, %370, %256, %212, %139, %106
  br label %1412

1412:                                             ; preds = %1411, %61
  %1413 = load i32, i32* %8, align 4
  %1414 = add nsw i32 %1413, 1
  store i32 %1414, i32* %8, align 4
  br label %38, !llvm.loop !45

1415:                                             ; preds = %52, %38
  store float 0.000000e+00, float* %11, align 4
  %1416 = load i32, i32* %4, align 4
  %1417 = sext i32 %1416 to i64
  %1418 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1417
  %1419 = getelementptr inbounds %struct.move_data, %struct.move_data* %1418, i32 0, i32 19
  %1420 = load i32, i32* %1419, align 4
  %1421 = icmp eq i32 %1420, 1
  br i1 %1421, label %1422, label %1434

1422:                                             ; preds = %1415
  %1423 = load i32, i32* %4, align 4
  %1424 = load i32, i32* %5, align 4
  %1425 = call i32 @safe_move(i32 %1423, i32 %1424)
  %1426 = icmp eq i32 %1425, 5
  br i1 %1426, label %1427, label %1434

1427:                                             ; preds = %1422
  %1428 = load i32, i32* %4, align 4
  %1429 = sext i32 %1428 to i64
  %1430 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 %1429
  store i8 2, i8* %1430, align 1
  %1431 = load i32, i32* %4, align 4
  %1432 = sext i32 %1431 to i64
  %1433 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 %1432
  store float 1.000000e+02, float* %1433, align 4
  br label %1441

1434:                                             ; preds = %1422, %1415
  %1435 = load i32, i32* %4, align 4
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 %1436
  store i8 0, i8* %1437, align 1
  %1438 = load i32, i32* %4, align 4
  %1439 = sext i32 %1438 to i64
  %1440 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 %1439
  store float 0.000000e+00, float* %1440, align 4
  br label %1441

1441:                                             ; preds = %1434, %1427
  %1442 = load i32, i32* %14, align 4
  %1443 = icmp ne i32 %1442, 0
  br i1 %1443, label %1444, label %1519

1444:                                             ; preds = %1441
  %1445 = load i32, i32* %4, align 4
  %1446 = sext i32 %1445 to i64
  %1447 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1446
  %1448 = getelementptr inbounds %struct.move_data, %struct.move_data* %1447, i32 0, i32 19
  %1449 = load i32, i32* %1448, align 4
  %1450 = icmp ne i32 %1449, 0
  br i1 %1450, label %1451, label %1519

1451:                                             ; preds = %1444
  %1452 = load i32, i32* %4, align 4
  %1453 = load i32, i32* %5, align 4
  %1454 = call i32 @tryko(i32 %1452, i32 %1453, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.69, i64 0, i64 0), i32 0, i32 0)
  %1455 = icmp ne i32 %1454, 0
  br i1 %1455, label %1456, label %1519

1456:                                             ; preds = %1451
  %1457 = load i32, i32* %4, align 4
  %1458 = load i32, i32* %5, align 4
  %1459 = load i32, i32* %4, align 4
  %1460 = sext i32 %1459 to i64
  %1461 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1460
  %1462 = getelementptr inbounds %struct.move_data, %struct.move_data* %1461, i32 0, i32 10
  %1463 = call i32 @retrieve_delta_territory_cache(i32 %1457, i32 %1458, float* %11, float* %1462)
  %1464 = icmp ne i32 %1463, 0
  br i1 %1464, label %1495, label %1465

1465:                                             ; preds = %1456
  %1466 = load i32, i32* %5, align 4
  %1467 = sub nsw i32 3, %1466
  %1468 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  %1469 = getelementptr inbounds [400 x float], [400 x float]* %16, i64 0, i64 0
  %1470 = load i32, i32* %4, align 4
  call void @compute_influence(i32 %1467, i8* %1468, float* %1469, %struct.influence_data* @move_influence, i32 %1470, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i64 0, i64 0))
  %1471 = load i32, i32* %4, align 4
  call void @compute_followup_influence(%struct.influence_data* @move_influence, %struct.influence_data* @followup_influence, i32 %1471, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0))
  %1472 = load i32, i32* %5, align 4
  %1473 = sub nsw i32 3, %1472
  %1474 = icmp eq i32 %1473, 1
  %1475 = zext i1 %1474 to i64
  %1476 = select i1 %1474, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %1477 = load i32, i32* %5, align 4
  %1478 = load i32, i32* %4, align 4
  %1479 = call float @influence_delta_territory(%struct.influence_data* %1476, %struct.influence_data* @move_influence, i32 %1477, i32 %1478)
  store float %1479, float* %11, align 4
  %1480 = load i32, i32* %5, align 4
  %1481 = load i32, i32* %4, align 4
  %1482 = call float @influence_delta_territory(%struct.influence_data* @move_influence, %struct.influence_data* @followup_influence, i32 %1480, i32 %1481)
  %1483 = load i32, i32* %4, align 4
  %1484 = sext i32 %1483 to i64
  %1485 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1484
  %1486 = getelementptr inbounds %struct.move_data, %struct.move_data* %1485, i32 0, i32 10
  store float %1482, float* %1486, align 4
  %1487 = load i32, i32* %4, align 4
  %1488 = load i32, i32* %5, align 4
  %1489 = load float, float* %11, align 4
  %1490 = load i32, i32* %4, align 4
  %1491 = sext i32 %1490 to i64
  %1492 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1491
  %1493 = getelementptr inbounds %struct.move_data, %struct.move_data* %1492, i32 0, i32 10
  %1494 = load float, float* %1493, align 4
  call void @store_delta_territory_cache(i32 %1487, i32 %1488, float %1489, float %1494)
  br label %1495

1495:                                             ; preds = %1465, %1456
  call void @popgo()
  %1496 = load float, float* %11, align 4
  %1497 = fpext float %1496 to double
  %1498 = fcmp une double %1497, 0.000000e+00
  br i1 %1498, label %1499, label %1509

1499:                                             ; preds = %1495
  %1500 = load i32, i32* @verbose, align 4
  %1501 = icmp ne i32 %1500, 0
  br i1 %1501, label %1503, label %1502

1502:                                             ; preds = %1499
  br label %1508

1503:                                             ; preds = %1499
  %1504 = load i32, i32* %4, align 4
  %1505 = load float, float* %11, align 4
  %1506 = fpext float %1505 to double
  %1507 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.72, i64 0, i64 0), i32 %1504, double %1506)
  br label %1508

1508:                                             ; preds = %1503, %1502
  br label %1518

1509:                                             ; preds = %1495
  %1510 = load i32, i32* @debug, align 4
  %1511 = and i32 %1510, 2048
  %1512 = icmp ne i32 %1511, 0
  br i1 %1512, label %1514, label %1513

1513:                                             ; preds = %1509
  br label %1517

1514:                                             ; preds = %1509
  %1515 = load i32, i32* %4, align 4
  %1516 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.73, i64 0, i64 0), i32 %1515)
  br label %1517

1517:                                             ; preds = %1514, %1513
  br label %1518

1518:                                             ; preds = %1517, %1508
  br label %1519

1519:                                             ; preds = %1518, %1451, %1444, %1441
  %1520 = load float, float* %11, align 4
  %1521 = load float, float* %12, align 4
  %1522 = fadd float %1521, %1520
  store float %1522, float* %12, align 4
  %1523 = load float, float* %12, align 4
  %1524 = load i32, i32* %4, align 4
  %1525 = sext i32 %1524 to i64
  %1526 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1525
  %1527 = getelementptr inbounds %struct.move_data, %struct.move_data* %1526, i32 0, i32 15
  %1528 = load float, float* %1527, align 4
  %1529 = fcmp olt float %1523, %1528
  br i1 %1529, label %1530, label %1552

1530:                                             ; preds = %1519
  %1531 = load i32, i32* %4, align 4
  %1532 = sext i32 %1531 to i64
  %1533 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1532
  %1534 = getelementptr inbounds %struct.move_data, %struct.move_data* %1533, i32 0, i32 15
  %1535 = load float, float* %1534, align 4
  %1536 = fcmp ogt float %1535, 0.000000e+00
  br i1 %1536, label %1537, label %1552

1537:                                             ; preds = %1530
  %1538 = load i32, i32* %4, align 4
  %1539 = sext i32 %1538 to i64
  %1540 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1539
  %1541 = getelementptr inbounds %struct.move_data, %struct.move_data* %1540, i32 0, i32 15
  %1542 = load float, float* %1541, align 4
  store float %1542, float* %12, align 4
  %1543 = load i32, i32* @verbose, align 4
  %1544 = icmp ne i32 %1543, 0
  br i1 %1544, label %1546, label %1545

1545:                                             ; preds = %1537
  br label %1551

1546:                                             ; preds = %1537
  %1547 = load i32, i32* %4, align 4
  %1548 = load float, float* %12, align 4
  %1549 = fpext float %1548 to double
  %1550 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.74, i64 0, i64 0), i32 %1547, double %1549)
  br label %1551

1551:                                             ; preds = %1546, %1545
  br label %1552

1552:                                             ; preds = %1551, %1530, %1519
  %1553 = load float, float* %12, align 4
  %1554 = load i32, i32* %4, align 4
  %1555 = sext i32 %1554 to i64
  %1556 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1555
  %1557 = getelementptr inbounds %struct.move_data, %struct.move_data* %1556, i32 0, i32 16
  %1558 = load float, float* %1557, align 4
  %1559 = fcmp ogt float %1553, %1558
  br i1 %1559, label %1560, label %1575

1560:                                             ; preds = %1552
  %1561 = load i32, i32* %4, align 4
  %1562 = sext i32 %1561 to i64
  %1563 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1562
  %1564 = getelementptr inbounds %struct.move_data, %struct.move_data* %1563, i32 0, i32 16
  %1565 = load float, float* %1564, align 4
  store float %1565, float* %12, align 4
  %1566 = load i32, i32* @verbose, align 4
  %1567 = icmp ne i32 %1566, 0
  br i1 %1567, label %1569, label %1568

1568:                                             ; preds = %1560
  br label %1574

1569:                                             ; preds = %1560
  %1570 = load i32, i32* %4, align 4
  %1571 = load float, float* %12, align 4
  %1572 = fpext float %1571 to double
  %1573 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.75, i64 0, i64 0), i32 %1570, double %1572)
  br label %1574

1574:                                             ; preds = %1569, %1568
  br label %1575

1575:                                             ; preds = %1574, %1552
  %1576 = load float, float* %12, align 4
  %1577 = load i32, i32* %4, align 4
  %1578 = sext i32 %1577 to i64
  %1579 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1578
  %1580 = getelementptr inbounds %struct.move_data, %struct.move_data* %1579, i32 0, i32 3
  store float %1576, float* %1580, align 4
  %1581 = load float, float* %13, align 4
  %1582 = load i32, i32* %4, align 4
  %1583 = sext i32 %1582 to i64
  %1584 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1583
  %1585 = getelementptr inbounds %struct.move_data, %struct.move_data* %1584, i32 0, i32 12
  %1586 = load float, float* %1585, align 4
  %1587 = fadd float %1586, %1581
  store float %1587, float* %1585, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @estimate_strategical_value(i32 %0, i32 %1, float %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca [400 x float], align 16
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  store float 0.000000e+00, float* %12, align 4
  store float 0.000000e+00, float* %13, align 4
  store float 0.000000e+00, float* %14, align 4
  store i32 21, i32* %9, align 4
  br label %25

25:                                               ; preds = %32, %3
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 400
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %30
  store float 0.000000e+00, float* %31, align 4
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %25, !llvm.loop !46

35:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %36

36:                                               ; preds = %1048, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 120
  br i1 %38, label %39, label %1051

39:                                               ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.move_data, %struct.move_data* %42, i32 0, i32 18
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [120 x i32], [120 x i32]* %43, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %1051

51:                                               ; preds = %39
  %52 = load i32, i32* %16, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 2
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %1048

60:                                               ; preds = %51
  store float 0.000000e+00, float* %13, align 4
  %61 = load i32, i32* %16, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %1047 [
    i32 2, label %66
    i32 4, label %66
    i32 6, label %66
    i32 8, label %66
    i32 10, label %66
    i32 12, label %66
    i32 3, label %335
    i32 9, label %335
    i32 100, label %336
    i32 102, label %408
    i32 14, label %485
    i32 16, label %634
    i32 18, label %787
    i32 54, label %788
    i32 44, label %789
    i32 46, label %789
    i32 42, label %905
  ]

66:                                               ; preds = %60, %60, %60, %60, %60, %60
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %74, i32 0, i32 18
  %76 = getelementptr inbounds [10 x i32], [10 x i32]* %75, i64 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %1047

80:                                               ; preds = %66
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %140

87:                                               ; preds = %80
  store double 1.000000e+00, double* %17, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 4
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %96
  %98 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 10
  br i1 %100, label %101, label %102

101:                                              ; preds = %94, %87
  store double 6.000000e-01, double* %17, align 8
  br label %118

102:                                              ; preds = %94
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 6
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 12
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %102
  store double 4.000000e-01, double* %17, align 8
  br label %117

117:                                              ; preds = %116, %109
  br label %118

118:                                              ; preds = %117, %101
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sitofp i32 %124 to double
  %126 = fmul double 1.000000e+01, %125
  %127 = load double, double* %17, align 8
  %128 = fmul double %126, %127
  %129 = fptrunc double %128 to float
  store float %129, float* %13, align 4
  %130 = load i32, i32* @verbose, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %118
  br label %139

133:                                              ; preds = %118
  %134 = load i32, i32* %4, align 4
  %135 = load float, float* %13, align 4
  %136 = fpext float %135 to double
  %137 = load i32, i32* %9, align 4
  %138 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i64 0, i64 0), i32 %134, double %136, i32 %137)
  br label %139

139:                                              ; preds = %133, %132
  br label %140

140:                                              ; preds = %139, %80
  %141 = load float, float* %13, align 4
  %142 = load float, float* %14, align 4
  %143 = fadd float %142, %141
  store float %143, float* %14, align 4
  %144 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %145 = load i32, i32* %9, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %144, i64 %150
  %152 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 5
  br i1 %154, label %162, label %155

155:                                              ; preds = %140
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %158, i32 0, i32 12
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155, %140
  br label %1047

163:                                              ; preds = %155
  store i32 0, i32* %8, align 4
  br label %164

164:                                              ; preds = %331, %163
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @next_lunch, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %334

168:                                              ; preds = %164
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %330

175:                                              ; preds = %168
  %176 = load i32, i32* %8, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %10, align 4
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %182, i32 0, i32 4
  %184 = load float, float* %183, align 4
  %185 = call float @soft_cap(float %184, float 1.500000e+01)
  %186 = fpext float %185 to double
  %187 = fmul double 1.800000e+00, %186
  %188 = load i32, i32* %10, align 4
  %189 = call float @dragon_weakness(i32 %188, i32 0)
  %190 = fpext float %189 to double
  %191 = fmul double %187, %190
  %192 = fptrunc double %191 to float
  store float %192, float* %13, align 4
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %195, i32 0, i32 16
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %222

199:                                              ; preds = %175
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %201
  %203 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %204, %209
  br i1 %210, label %211, label %222

211:                                              ; preds = %199
  %212 = load i32, i32* %4, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @attack_move_reason_known(i32 %212, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %221, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %4, align 4
  %218 = load i32, i32* %10, align 4
  %219 = call i32 @defense_move_reason_known(i32 %217, i32 %218)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216, %211
  store float 0.000000e+00, float* %13, align 4
  br label %222

222:                                              ; preds = %221, %216, %199, %175
  %223 = load i32, i32* %10, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %224
  %226 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %225, i32 0, i32 16
  %227 = getelementptr inbounds [10 x i32], [10 x i32]* %226, i64 0, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %258

230:                                              ; preds = %222
  %231 = load i32, i32* %5, align 4
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %233
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = icmp eq i32 %231, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %230
  %239 = load i32, i32* %4, align 4
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @does_defend(i32 %239, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %257

243:                                              ; preds = %238, %230
  %244 = load i32, i32* %5, align 4
  %245 = load i32, i32* %10, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = sub nsw i32 3, %249
  %251 = icmp eq i32 %244, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %243
  %253 = load i32, i32* %4, align 4
  %254 = load i32, i32* %10, align 4
  %255 = call i32 @does_attack(i32 %253, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %252, %238
  store float 0.000000e+00, float* %13, align 4
  br label %258

258:                                              ; preds = %257, %252, %243, %222
  %259 = load i32, i32* @doing_scoring, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %306

261:                                              ; preds = %258
  %262 = load i32, i32* %4, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %263
  %265 = getelementptr inbounds %struct.move_data, %struct.move_data* %264, i32 0, i32 3
  %266 = load float, float* %265, align 4
  %267 = fpext float %266 to double
  %268 = fcmp olt double %267, 0.000000e+00
  br i1 %268, label %269, label %306

269:                                              ; preds = %261
  %270 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %271 = load i32, i32* %10, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %272
  %274 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %270, i64 %276
  %278 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %305, label %281

281:                                              ; preds = %269
  %282 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %282, i64 %288
  %290 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %289, i32 0, i32 6
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 8
  br i1 %292, label %305, label %293

293:                                              ; preds = %281
  %294 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %294, i64 %300
  %302 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 9
  br i1 %304, label %305, label %306

305:                                              ; preds = %293, %281, %269
  store float 0.000000e+00, float* %13, align 4
  br label %306

306:                                              ; preds = %305, %293, %261, %258
  %307 = load float, float* %13, align 4
  %308 = load i32, i32* %10, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %309
  %311 = load float, float* %310, align 4
  %312 = fcmp ogt float %307, %311
  br i1 %312, label %313, label %329

313:                                              ; preds = %306
  %314 = load i32, i32* @debug, align 4
  %315 = and i32 %314, 2048
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  br label %324

318:                                              ; preds = %313
  %319 = load i32, i32* %4, align 4
  %320 = load float, float* %13, align 4
  %321 = fpext float %320 to double
  %322 = load i32, i32* %10, align 4
  %323 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.77, i64 0, i64 0), i32 %319, double %321, i32 %322)
  br label %324

324:                                              ; preds = %318, %317
  %325 = load float, float* %13, align 4
  %326 = load i32, i32* %10, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %327
  store float %325, float* %328, align 4
  br label %329

329:                                              ; preds = %324, %306
  br label %330

330:                                              ; preds = %329, %168
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %8, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %8, align 4
  br label %164, !llvm.loop !47

334:                                              ; preds = %164
  br label %1047

335:                                              ; preds = %60, %60
  br label %1047

336:                                              ; preds = %60
  %337 = load i32, i32* %16, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %338
  %340 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %342
  %344 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  store i32 %345, i32* %9, align 4
  %346 = load i32, i32* %16, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %347
  %349 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %351
  %353 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 4
  store i32 %354, i32* %10, align 4
  %355 = load i32, i32* %9, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %356
  %358 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %357, i32 0, i32 16
  %359 = load i32, i32* %358, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %369

361:                                              ; preds = %336
  %362 = load i32, i32* %10, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %363
  %365 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %364, i32 0, i32 16
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %361
  br label %1047

369:                                              ; preds = %361, %336
  %370 = load i32, i32* %4, align 4
  %371 = call i32 @move_reason_known(i32 %370, i32 50, i32 -1)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  br label %1047

374:                                              ; preds = %369
  %375 = load i32, i32* %4, align 4
  %376 = load i32, i32* %9, align 4
  %377 = call float @adjusted_worm_attack_value(i32 %375, i32 %376)
  store float %377, float* %11, align 4
  %378 = load i32, i32* %4, align 4
  %379 = load i32, i32* %10, align 4
  %380 = call float @adjusted_worm_attack_value(i32 %378, i32 %379)
  store float %380, float* %12, align 4
  %381 = load float, float* %11, align 4
  %382 = load float, float* %12, align 4
  %383 = fcmp olt float %381, %382
  br i1 %383, label %384, label %386

384:                                              ; preds = %374
  %385 = load float, float* %11, align 4
  br label %388

386:                                              ; preds = %374
  %387 = load float, float* %12, align 4
  br label %388

388:                                              ; preds = %386, %384
  %389 = phi float [ %385, %384 ], [ %387, %386 ]
  store float %389, float* %13, align 4
  %390 = load i32, i32* @verbose, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %393, label %392

392:                                              ; preds = %388
  br label %404

393:                                              ; preds = %388
  %394 = load i32, i32* %4, align 4
  %395 = load float, float* %13, align 4
  %396 = fpext float %395 to double
  %397 = load i32, i32* %9, align 4
  %398 = load float, float* %11, align 4
  %399 = fpext float %398 to double
  %400 = load i32, i32* %10, align 4
  %401 = load float, float* %12, align 4
  %402 = fpext float %401 to double
  %403 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.78, i64 0, i64 0), i32 %394, double %396, i32 %397, double %399, i32 %400, double %402)
  br label %404

404:                                              ; preds = %393, %392
  %405 = load float, float* %13, align 4
  %406 = load float, float* %14, align 4
  %407 = fadd float %406, %405
  store float %407, float* %14, align 4
  br label %1047

408:                                              ; preds = %60
  %409 = load i32, i32* %16, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %410
  %412 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %414
  %416 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  store i32 %417, i32* %9, align 4
  %418 = load i32, i32* %16, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %419
  %421 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %423
  %425 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %424, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  store i32 %426, i32* %10, align 4
  %427 = load i32, i32* %9, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %428
  %430 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %429, i32 0, i32 16
  %431 = load i32, i32* %430, align 4
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %408
  %434 = load i32, i32* %10, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %435
  %437 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %436, i32 0, i32 16
  %438 = load i32, i32* %437, align 4
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %433
  br label %1047

441:                                              ; preds = %433, %408
  %442 = load i32, i32* %4, align 4
  %443 = call i32 @move_reason_known(i32 %442, i32 52, i32 -1)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %441
  br label %1047

446:                                              ; preds = %441
  %447 = load i32, i32* %9, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %448
  %450 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %449, i32 0, i32 2
  %451 = load float, float* %450, align 4
  store float %451, float* %11, align 4
  %452 = load i32, i32* %10, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %453
  %455 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %454, i32 0, i32 2
  %456 = load float, float* %455, align 4
  store float %456, float* %12, align 4
  %457 = load float, float* %11, align 4
  %458 = load float, float* %12, align 4
  %459 = fcmp olt float %457, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %446
  %461 = load float, float* %11, align 4
  br label %464

462:                                              ; preds = %446
  %463 = load float, float* %12, align 4
  br label %464

464:                                              ; preds = %462, %460
  %465 = phi float [ %461, %460 ], [ %463, %462 ]
  %466 = fmul float 2.000000e+00, %465
  store float %466, float* %13, align 4
  %467 = load i32, i32* @verbose, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %470, label %469

469:                                              ; preds = %464
  br label %481

470:                                              ; preds = %464
  %471 = load i32, i32* %4, align 4
  %472 = load float, float* %13, align 4
  %473 = fpext float %472 to double
  %474 = load i32, i32* %9, align 4
  %475 = load float, float* %11, align 4
  %476 = fpext float %475 to double
  %477 = load i32, i32* %10, align 4
  %478 = load float, float* %12, align 4
  %479 = fpext float %478 to double
  %480 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.79, i64 0, i64 0), i32 %471, double %473, i32 %474, double %476, i32 %477, double %479)
  br label %481

481:                                              ; preds = %470, %469
  %482 = load float, float* %13, align 4
  %483 = load float, float* %14, align 4
  %484 = fadd float %483, %482
  store float %484, float* %14, align 4
  br label %1047

485:                                              ; preds = %60
  %486 = load i32, i32* @doing_scoring, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %625, label %488

488:                                              ; preds = %485
  %489 = load i32, i32* %16, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %490
  %492 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %494
  %496 = load i32, i32* %495, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %497
  %499 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 4
  store i32 %500, i32* %9, align 4
  %501 = load i32, i32* %16, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %502
  %504 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i64 0, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %509
  %511 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %510, i32 0, i32 2
  %512 = load i32, i32* %511, align 4
  store i32 %512, i32* %10, align 4
  %513 = load i32, i32* %5, align 4
  %514 = call i32 @get_last_opponent_move(i32 %513)
  store i32 %514, i32* %18, align 4
  %515 = load i32, i32* %18, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %624

517:                                              ; preds = %488
  %518 = load i32, i32* %18, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %519
  %521 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %520, i32 0, i32 16
  %522 = load i32, i32* %521, align 4
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %624

524:                                              ; preds = %517
  %525 = load i32, i32* %9, align 4
  %526 = load i32, i32* %18, align 4
  %527 = call i32 @are_neighbor_dragons(i32 %525, i32 %526)
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %624

529:                                              ; preds = %524
  %530 = load i32, i32* %10, align 4
  %531 = load i32, i32* %18, align 4
  %532 = call i32 @are_neighbor_dragons(i32 %530, i32 %531)
  %533 = icmp ne i32 %532, 0
  br i1 %533, label %534, label %624

534:                                              ; preds = %529
  %535 = load i32, i32* %9, align 4
  %536 = load i32, i32* %10, align 4
  %537 = icmp eq i32 %535, %536
  br i1 %537, label %538, label %547

538:                                              ; preds = %534
  %539 = load i32, i32* %18, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %540
  %542 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %541, i32 0, i32 4
  %543 = load float, float* %542, align 4
  %544 = fpext float %543 to double
  %545 = fmul double 1.600000e+00, %544
  %546 = fptrunc double %545 to float
  store float %546, float* %13, align 4
  br label %590

547:                                              ; preds = %534
  %548 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %549 = load i32, i32* %9, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %550
  %552 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %548, i64 %554
  %556 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %555, i32 0, i32 6
  %557 = load i32, i32* %556, align 4
  %558 = icmp eq i32 %557, 5
  br i1 %558, label %571, label %559

559:                                              ; preds = %547
  %560 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %561 = load i32, i32* %10, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %562
  %564 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %560, i64 %566
  %568 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %567, i32 0, i32 6
  %569 = load i32, i32* %568, align 4
  %570 = icmp eq i32 %569, 5
  br i1 %570, label %571, label %580

571:                                              ; preds = %559, %547
  %572 = load i32, i32* %18, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %573
  %575 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %574, i32 0, i32 4
  %576 = load float, float* %575, align 4
  %577 = fpext float %576 to double
  %578 = fmul double 8.000000e-01, %577
  %579 = fptrunc double %578 to float
  store float %579, float* %13, align 4
  br label %589

580:                                              ; preds = %559
  %581 = load i32, i32* %18, align 4
  %582 = sext i32 %581 to i64
  %583 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %582
  %584 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %583, i32 0, i32 4
  %585 = load float, float* %584, align 4
  %586 = fpext float %585 to double
  %587 = fmul double 1.700000e+00, %586
  %588 = fptrunc double %587 to float
  store float %588, float* %13, align 4
  br label %589

589:                                              ; preds = %580, %571
  br label %590

590:                                              ; preds = %589, %538
  %591 = load float, float* %13, align 4
  %592 = load i32, i32* %18, align 4
  %593 = sext i32 %592 to i64
  %594 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %593
  %595 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %594, i32 0, i32 2
  %596 = load i32, i32* %595, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %597
  %599 = load float, float* %598, align 4
  %600 = fcmp ogt float %591, %599
  br i1 %600, label %601, label %623

601:                                              ; preds = %590
  %602 = load float, float* %13, align 4
  %603 = load i32, i32* %18, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %604
  %606 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %608
  store float %602, float* %609, align 4
  %610 = load i32, i32* @debug, align 4
  %611 = and i32 %610, 2048
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %614, label %613

613:                                              ; preds = %601
  br label %622

614:                                              ; preds = %601
  %615 = load i32, i32* %4, align 4
  %616 = load float, float* %13, align 4
  %617 = fpext float %616 to double
  %618 = load i32, i32* %9, align 4
  %619 = load i32, i32* %10, align 4
  %620 = load i32, i32* %18, align 4
  %621 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.80, i64 0, i64 0), i32 %615, double %617, i32 %618, i32 %619, i32 %620)
  br label %622

622:                                              ; preds = %614, %613
  br label %623

623:                                              ; preds = %622, %590
  br label %624

624:                                              ; preds = %623, %529, %524, %517, %488
  br label %625

625:                                              ; preds = %624, %485
  %626 = load i32, i32* %4, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %627
  %629 = getelementptr inbounds %struct.move_data, %struct.move_data* %628, i32 0, i32 19
  %630 = load i32, i32* %629, align 4
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %633, label %632

632:                                              ; preds = %625
  br label %1047

633:                                              ; preds = %625
  br label %634

634:                                              ; preds = %60, %633
  %635 = load i32, i32* @doing_scoring, align 4
  %636 = icmp ne i32 %635, 0
  br i1 %636, label %637, label %645

637:                                              ; preds = %634
  %638 = load i32, i32* %4, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %639
  %641 = getelementptr inbounds %struct.move_data, %struct.move_data* %640, i32 0, i32 19
  %642 = load i32, i32* %641, align 4
  %643 = icmp ne i32 %642, 0
  br i1 %643, label %645, label %644

644:                                              ; preds = %637
  br label %1047

645:                                              ; preds = %637, %634
  %646 = load i32, i32* %16, align 4
  %647 = sext i32 %646 to i64
  %648 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %647
  %649 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %648, i32 0, i32 1
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %651
  %653 = load i32, i32* %652, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %654
  %656 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %655, i32 0, i32 2
  %657 = load i32, i32* %656, align 4
  store i32 %657, i32* %9, align 4
  %658 = load i32, i32* %16, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %659
  %661 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %660, i32 0, i32 1
  %662 = load i32, i32* %661, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i64 0, i64 %663
  %665 = load i32, i32* %664, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %666
  %668 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %667, i32 0, i32 2
  %669 = load i32, i32* %668, align 4
  store i32 %669, i32* %10, align 4
  %670 = load i32, i32* %9, align 4
  %671 = load i32, i32* %10, align 4
  %672 = icmp eq i32 %670, %671
  br i1 %672, label %673, label %674

673:                                              ; preds = %645
  br label %1048

674:                                              ; preds = %645
  %675 = load i32, i32* %5, align 4
  %676 = icmp eq i32 %675, 1
  br i1 %676, label %677, label %681

677:                                              ; preds = %674
  %678 = load float, float* %6, align 4
  %679 = fpext float %678 to double
  %680 = fcmp ogt double %679, 2.000000e+01
  br i1 %680, label %688, label %681

681:                                              ; preds = %677, %674
  %682 = load i32, i32* %5, align 4
  %683 = icmp eq i32 %682, 2
  br i1 %683, label %684, label %702

684:                                              ; preds = %681
  %685 = load float, float* %6, align 4
  %686 = fpext float %685 to double
  %687 = fcmp olt double %686, -2.000000e+01
  br i1 %687, label %688, label %702

688:                                              ; preds = %684, %677
  %689 = load i32, i32* %9, align 4
  %690 = load i32, i32* %10, align 4
  %691 = load i32, i32* %4, align 4
  %692 = load float, float* %6, align 4
  %693 = fcmp olt float %692, 0.000000e+00
  br i1 %693, label %694, label %697

694:                                              ; preds = %688
  %695 = load float, float* %6, align 4
  %696 = fneg float %695
  br label %699

697:                                              ; preds = %688
  %698 = load float, float* %6, align 4
  br label %699

699:                                              ; preds = %697, %694
  %700 = phi float [ %696, %694 ], [ %698, %697 ]
  %701 = call float @connection_value(i32 %689, i32 %690, i32 %691, float %700)
  store float %701, float* %13, align 4
  br label %707

702:                                              ; preds = %684, %681
  %703 = load i32, i32* %9, align 4
  %704 = load i32, i32* %10, align 4
  %705 = load i32, i32* %4, align 4
  %706 = call float @connection_value(i32 %703, i32 %704, i32 %705, float 0.000000e+00)
  store float %706, float* %13, align 4
  br label %707

707:                                              ; preds = %702, %699
  %708 = load float, float* %13, align 4
  %709 = load i32, i32* %9, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %710
  %712 = load float, float* %711, align 4
  %713 = fcmp ogt float %708, %712
  br i1 %713, label %714, label %730

714:                                              ; preds = %707
  %715 = load float, float* %13, align 4
  %716 = load i32, i32* %9, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %717
  store float %715, float* %718, align 4
  %719 = load i32, i32* @debug, align 4
  %720 = and i32 %719, 2048
  %721 = icmp ne i32 %720, 0
  br i1 %721, label %723, label %722

722:                                              ; preds = %714
  br label %729

723:                                              ; preds = %714
  %724 = load i32, i32* %4, align 4
  %725 = load float, float* %13, align 4
  %726 = fpext float %725 to double
  %727 = load i32, i32* %9, align 4
  %728 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.81, i64 0, i64 0), i32 %724, double %726, i32 %727)
  br label %729

729:                                              ; preds = %723, %722
  br label %730

730:                                              ; preds = %729, %707
  %731 = load i32, i32* %5, align 4
  %732 = icmp eq i32 %731, 1
  br i1 %732, label %733, label %737

733:                                              ; preds = %730
  %734 = load float, float* %6, align 4
  %735 = fpext float %734 to double
  %736 = fcmp ogt double %735, 2.000000e+01
  br i1 %736, label %744, label %737

737:                                              ; preds = %733, %730
  %738 = load i32, i32* %5, align 4
  %739 = icmp eq i32 %738, 2
  br i1 %739, label %740, label %758

740:                                              ; preds = %737
  %741 = load float, float* %6, align 4
  %742 = fpext float %741 to double
  %743 = fcmp olt double %742, -2.000000e+01
  br i1 %743, label %744, label %758

744:                                              ; preds = %740, %733
  %745 = load i32, i32* %10, align 4
  %746 = load i32, i32* %9, align 4
  %747 = load i32, i32* %4, align 4
  %748 = load float, float* %6, align 4
  %749 = fcmp olt float %748, 0.000000e+00
  br i1 %749, label %750, label %753

750:                                              ; preds = %744
  %751 = load float, float* %6, align 4
  %752 = fneg float %751
  br label %755

753:                                              ; preds = %744
  %754 = load float, float* %6, align 4
  br label %755

755:                                              ; preds = %753, %750
  %756 = phi float [ %752, %750 ], [ %754, %753 ]
  %757 = call float @connection_value(i32 %745, i32 %746, i32 %747, float %756)
  store float %757, float* %13, align 4
  br label %763

758:                                              ; preds = %740, %737
  %759 = load i32, i32* %10, align 4
  %760 = load i32, i32* %9, align 4
  %761 = load i32, i32* %4, align 4
  %762 = call float @connection_value(i32 %759, i32 %760, i32 %761, float 0.000000e+00)
  store float %762, float* %13, align 4
  br label %763

763:                                              ; preds = %758, %755
  %764 = load float, float* %13, align 4
  %765 = load i32, i32* %10, align 4
  %766 = sext i32 %765 to i64
  %767 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %766
  %768 = load float, float* %767, align 4
  %769 = fcmp ogt float %764, %768
  br i1 %769, label %770, label %786

770:                                              ; preds = %763
  %771 = load float, float* %13, align 4
  %772 = load i32, i32* %10, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %773
  store float %771, float* %774, align 4
  %775 = load i32, i32* @debug, align 4
  %776 = and i32 %775, 2048
  %777 = icmp ne i32 %776, 0
  br i1 %777, label %779, label %778

778:                                              ; preds = %770
  br label %785

779:                                              ; preds = %770
  %780 = load i32, i32* %4, align 4
  %781 = load float, float* %13, align 4
  %782 = fpext float %781 to double
  %783 = load i32, i32* %10, align 4
  %784 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.81, i64 0, i64 0), i32 %780, double %782, i32 %783)
  br label %785

785:                                              ; preds = %779, %778
  br label %786

786:                                              ; preds = %785, %763
  br label %1047

787:                                              ; preds = %60
  br label %1047

788:                                              ; preds = %60
  br label %1047

789:                                              ; preds = %60, %60
  %790 = load i32, i32* %16, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %791
  %793 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %792, i32 0, i32 1
  %794 = load i32, i32* %793, align 4
  store i32 %794, i32* %9, align 4
  %795 = load i32, i32* %9, align 4
  %796 = sext i32 %795 to i64
  %797 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %796
  %798 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %797, i32 0, i32 4
  %799 = load float, float* %798, align 4
  %800 = call float @soft_cap(float %799, float 1.500000e+01)
  %801 = fpext float %800 to double
  %802 = fmul double 1.800000e+00, %801
  %803 = load i32, i32* %9, align 4
  %804 = call float @dragon_weakness(i32 %803, i32 1)
  %805 = fpext float %804 to double
  %806 = fmul double %802, %805
  %807 = fptrunc double %806 to float
  store float %807, float* %13, align 4
  %808 = load i32, i32* %16, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %809
  %811 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %810, i32 0, i32 0
  %812 = load i32, i32* %811, align 4
  %813 = icmp eq i32 %812, 44
  br i1 %813, label %814, label %881

814:                                              ; preds = %789
  store i32 0, i32* %19, align 4
  br label %815

815:                                              ; preds = %877, %814
  %816 = load i32, i32* %19, align 4
  %817 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %818 = load i32, i32* %9, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %819
  %821 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %820, i32 0, i32 1
  %822 = load i32, i32* %821, align 4
  %823 = sext i32 %822 to i64
  %824 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %817, i64 %823
  %825 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %824, i32 0, i32 2
  %826 = load i32, i32* %825, align 4
  %827 = icmp slt i32 %816, %826
  br i1 %827, label %828, label %880

828:                                              ; preds = %815
  %829 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %830 = load i32, i32* %9, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %831
  %833 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %832, i32 0, i32 1
  %834 = load i32, i32* %833, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %829, i64 %835
  %837 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %836, i32 0, i32 1
  %838 = load i32, i32* %19, align 4
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds [10 x i32], [10 x i32]* %837, i64 0, i64 %839
  %841 = load i32, i32* %840, align 4
  store i32 %841, i32* %20, align 4
  %842 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %843 = load i32, i32* %20, align 4
  %844 = sext i32 %843 to i64
  %845 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %842, i64 %844
  %846 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %845, i32 0, i32 0
  %847 = load i32, i32* %846, align 4
  store i32 %847, i32* %21, align 4
  %848 = load i32, i32* %21, align 4
  %849 = sext i32 %848 to i64
  %850 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %849
  %851 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %850, i32 0, i32 0
  %852 = load i32, i32* %851, align 4
  %853 = load i32, i32* %5, align 4
  %854 = icmp eq i32 %852, %853
  br i1 %854, label %855, label %876

855:                                              ; preds = %828
  %856 = load i32, i32* %21, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %857
  %859 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %858, i32 0, i32 16
  %860 = load i32, i32* %859, align 4
  %861 = icmp eq i32 %860, 2
  br i1 %861, label %862, label %876

862:                                              ; preds = %855
  %863 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %864 = load i32, i32* %20, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %863, i64 %865
  %867 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %866, i32 0, i32 6
  %868 = load i32, i32* %867, align 4
  %869 = icmp ne i32 %868, 5
  br i1 %869, label %870, label %876

870:                                              ; preds = %862
  %871 = load i32, i32* %4, align 4
  %872 = load i32, i32* %21, align 4
  %873 = call i32 @owl_defense_move_reason_known(i32 %871, i32 %872)
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %876, label %875

875:                                              ; preds = %870
  store float 0.000000e+00, float* %13, align 4
  br label %876

876:                                              ; preds = %875, %870, %862, %855, %828
  br label %877

877:                                              ; preds = %876
  %878 = load i32, i32* %19, align 4
  %879 = add nsw i32 %878, 1
  store i32 %879, i32* %19, align 4
  br label %815, !llvm.loop !48

880:                                              ; preds = %815
  br label %881

881:                                              ; preds = %880, %789
  %882 = load float, float* %13, align 4
  %883 = load i32, i32* %9, align 4
  %884 = sext i32 %883 to i64
  %885 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %884
  %886 = load float, float* %885, align 4
  %887 = fcmp ogt float %882, %886
  br i1 %887, label %888, label %904

888:                                              ; preds = %881
  %889 = load float, float* %13, align 4
  %890 = load i32, i32* %9, align 4
  %891 = sext i32 %890 to i64
  %892 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %891
  store float %889, float* %892, align 4
  %893 = load i32, i32* @debug, align 4
  %894 = and i32 %893, 2048
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %897, label %896

896:                                              ; preds = %888
  br label %903

897:                                              ; preds = %888
  %898 = load i32, i32* %4, align 4
  %899 = load float, float* %13, align 4
  %900 = fpext float %899 to double
  %901 = load i32, i32* %9, align 4
  %902 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.82, i64 0, i64 0), i32 %898, double %900, i32 %901)
  br label %903

903:                                              ; preds = %897, %896
  br label %904

904:                                              ; preds = %903, %881
  br label %1047

905:                                              ; preds = %60
  %906 = load i32, i32* %16, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %907
  %909 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %908, i32 0, i32 1
  %910 = load i32, i32* %909, align 4
  store i32 %910, i32* %9, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %911

911:                                              ; preds = %950, %905
  %912 = load i32, i32* %22, align 4
  %913 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %914 = load i32, i32* %9, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %915
  %917 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %916, i32 0, i32 1
  %918 = load i32, i32* %917, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %913, i64 %919
  %921 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %920, i32 0, i32 2
  %922 = load i32, i32* %921, align 4
  %923 = icmp slt i32 %912, %922
  br i1 %923, label %924, label %953

924:                                              ; preds = %911
  %925 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %926 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %927 = load i32, i32* %9, align 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %928
  %930 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %929, i32 0, i32 1
  %931 = load i32, i32* %930, align 4
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %926, i64 %932
  %934 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %933, i32 0, i32 1
  %935 = load i32, i32* %22, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds [10 x i32], [10 x i32]* %934, i64 0, i64 %936
  %938 = load i32, i32* %937, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %925, i64 %939
  %941 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %940, i32 0, i32 0
  %942 = load i32, i32* %941, align 4
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %943
  %945 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %944, i32 0, i32 16
  %946 = load i32, i32* %945, align 4
  %947 = icmp eq i32 %946, 2
  br i1 %947, label %948, label %949

948:                                              ; preds = %924
  store i32 1, i32* %23, align 4
  br label %949

949:                                              ; preds = %948, %924
  br label %950

950:                                              ; preds = %949
  %951 = load i32, i32* %22, align 4
  %952 = add nsw i32 %951, 1
  store i32 %952, i32* %22, align 4
  br label %911, !llvm.loop !49

953:                                              ; preds = %911
  %954 = load i32, i32* %23, align 4
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %956, label %957

956:                                              ; preds = %953
  br label %1047

957:                                              ; preds = %953
  %958 = load i32, i32* %5, align 4
  %959 = icmp eq i32 %958, 2
  br i1 %959, label %960, label %964

960:                                              ; preds = %957
  %961 = load float, float* %6, align 4
  %962 = fpext float %961 to double
  %963 = fcmp ogt double %962, 0.000000e+00
  br i1 %963, label %971, label %964

964:                                              ; preds = %960, %957
  %965 = load i32, i32* %5, align 4
  %966 = icmp eq i32 %965, 1
  br i1 %966, label %967, label %972

967:                                              ; preds = %964
  %968 = load float, float* %6, align 4
  %969 = fpext float %968 to double
  %970 = fcmp olt double %969, 0.000000e+00
  br i1 %970, label %971, label %972

971:                                              ; preds = %967, %960
  store float 0.000000e+00, float* %13, align 4
  br label %1023

972:                                              ; preds = %967, %964
  %973 = load i32, i32* %9, align 4
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %974
  %976 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %975, i32 0, i32 4
  %977 = load float, float* %976, align 4
  %978 = fmul float 2.000000e+00, %977
  %979 = fpext float %978 to double
  %980 = load float, float* %6, align 4
  %981 = fpext float %980 to double
  %982 = fmul double 6.500000e-01, %981
  %983 = fcmp olt double %982, 0.000000e+00
  br i1 %983, label %984, label %989

984:                                              ; preds = %972
  %985 = load float, float* %6, align 4
  %986 = fpext float %985 to double
  %987 = fmul double 6.500000e-01, %986
  %988 = fneg double %987
  br label %993

989:                                              ; preds = %972
  %990 = load float, float* %6, align 4
  %991 = fpext float %990 to double
  %992 = fmul double 6.500000e-01, %991
  br label %993

993:                                              ; preds = %989, %984
  %994 = phi double [ %988, %984 ], [ %992, %989 ]
  %995 = fcmp olt double %979, %994
  br i1 %995, label %996, label %1004

996:                                              ; preds = %993
  %997 = load i32, i32* %9, align 4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %998
  %1000 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %999, i32 0, i32 4
  %1001 = load float, float* %1000, align 4
  %1002 = fmul float 2.000000e+00, %1001
  %1003 = fpext float %1002 to double
  br label %1020

1004:                                             ; preds = %993
  %1005 = load float, float* %6, align 4
  %1006 = fpext float %1005 to double
  %1007 = fmul double 6.500000e-01, %1006
  %1008 = fcmp olt double %1007, 0.000000e+00
  br i1 %1008, label %1009, label %1014

1009:                                             ; preds = %1004
  %1010 = load float, float* %6, align 4
  %1011 = fpext float %1010 to double
  %1012 = fmul double 6.500000e-01, %1011
  %1013 = fneg double %1012
  br label %1018

1014:                                             ; preds = %1004
  %1015 = load float, float* %6, align 4
  %1016 = fpext float %1015 to double
  %1017 = fmul double 6.500000e-01, %1016
  br label %1018

1018:                                             ; preds = %1014, %1009
  %1019 = phi double [ %1013, %1009 ], [ %1017, %1014 ]
  br label %1020

1020:                                             ; preds = %1018, %996
  %1021 = phi double [ %1003, %996 ], [ %1019, %1018 ]
  %1022 = fptrunc double %1021 to float
  store float %1022, float* %13, align 4
  br label %1023

1023:                                             ; preds = %1020, %971
  %1024 = load float, float* %13, align 4
  %1025 = load i32, i32* %9, align 4
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1026
  %1028 = load float, float* %1027, align 4
  %1029 = fcmp ogt float %1024, %1028
  br i1 %1029, label %1030, label %1046

1030:                                             ; preds = %1023
  %1031 = load float, float* %13, align 4
  %1032 = load i32, i32* %9, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1033
  store float %1031, float* %1034, align 4
  %1035 = load i32, i32* @debug, align 4
  %1036 = and i32 %1035, 2048
  %1037 = icmp ne i32 %1036, 0
  br i1 %1037, label %1039, label %1038

1038:                                             ; preds = %1030
  br label %1045

1039:                                             ; preds = %1030
  %1040 = load i32, i32* %4, align 4
  %1041 = load float, float* %13, align 4
  %1042 = fpext float %1041 to double
  %1043 = load i32, i32* %9, align 4
  %1044 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.83, i64 0, i64 0), i32 %1040, double %1042, i32 %1043)
  br label %1045

1045:                                             ; preds = %1039, %1038
  br label %1046

1046:                                             ; preds = %1045, %1023
  br label %1047

1047:                                             ; preds = %60, %1046, %956, %904, %788, %787, %786, %644, %632, %481, %445, %440, %404, %373, %368, %335, %334, %162, %79
  br label %1048

1048:                                             ; preds = %1047, %673, %59
  %1049 = load i32, i32* %7, align 4
  %1050 = add nsw i32 %1049, 1
  store i32 %1050, i32* %7, align 4
  br label %36, !llvm.loop !50

1051:                                             ; preds = %50, %36
  store i32 21, i32* %9, align 4
  br label %1052

1052:                                             ; preds = %1223, %1051
  %1053 = load i32, i32* %9, align 4
  %1054 = icmp slt i32 %1053, 400
  br i1 %1054, label %1055, label %1226

1055:                                             ; preds = %1052
  %1056 = load i32, i32* %9, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1057
  %1059 = load float, float* %1058, align 4
  %1060 = fpext float %1059 to double
  %1061 = fcmp oeq double %1060, 0.000000e+00
  br i1 %1061, label %1062, label %1063

1062:                                             ; preds = %1055
  br label %1223

1063:                                             ; preds = %1055
  %1064 = load i32, i32* %9, align 4
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1065
  %1067 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1066, i32 0, i32 2
  %1068 = load i32, i32* %1067, align 4
  %1069 = load i32, i32* %9, align 4
  %1070 = icmp eq i32 %1068, %1069
  br i1 %1070, label %1071, label %1072

1071:                                             ; preds = %1063
  br label %1079

1072:                                             ; preds = %1063
  %1073 = load i32, i32* %9, align 4
  %1074 = sdiv i32 %1073, 20
  %1075 = sub nsw i32 %1074, 1
  %1076 = load i32, i32* %9, align 4
  %1077 = srem i32 %1076, 20
  %1078 = sub nsw i32 %1077, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 2298, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i64 0, i64 0), i32 %1075, i32 %1078)
  br label %1079

1079:                                             ; preds = %1072, %1071
  %1080 = load i32, i32* %9, align 4
  %1081 = sext i32 %1080 to i64
  %1082 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1081
  %1083 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1082, i32 0, i32 16
  %1084 = load i32, i32* %1083, align 4
  %1085 = icmp eq i32 %1084, 2
  br i1 %1085, label %1086, label %1101

1086:                                             ; preds = %1079
  %1087 = load i32, i32* %4, align 4
  %1088 = load i32, i32* %9, align 4
  %1089 = call i32 @owl_move_reason_known(i32 %1087, i32 %1088)
  %1090 = icmp ne i32 %1089, 0
  br i1 %1090, label %1101, label %1091

1091:                                             ; preds = %1086
  %1092 = load i32, i32* @debug, align 4
  %1093 = and i32 %1092, 2048
  %1094 = icmp ne i32 %1093, 0
  br i1 %1094, label %1096, label %1095

1095:                                             ; preds = %1091
  br label %1100

1096:                                             ; preds = %1091
  %1097 = load i32, i32* %4, align 4
  %1098 = load i32, i32* %9, align 4
  %1099 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.85, i64 0, i64 0), i32 %1097, i32 %1098)
  br label %1100

1100:                                             ; preds = %1096, %1095
  br label %1223

1101:                                             ; preds = %1086, %1079
  %1102 = load i32, i32* %9, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1103
  %1105 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1104, i32 0, i32 16
  %1106 = load i32, i32* %1105, align 4
  %1107 = icmp ne i32 %1106, 0
  br i1 %1107, label %1108, label %1144

1108:                                             ; preds = %1101
  %1109 = load i32, i32* %9, align 4
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1110
  %1112 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1111, i32 0, i32 3
  %1113 = load i32, i32* %1112, align 4
  %1114 = load i32, i32* %9, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1115
  %1117 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1116, i32 0, i32 1
  %1118 = load i32, i32* %1117, align 4
  %1119 = icmp eq i32 %1113, %1118
  br i1 %1119, label %1120, label %1144

1120:                                             ; preds = %1108
  %1121 = load i32, i32* %4, align 4
  %1122 = load i32, i32* %9, align 4
  %1123 = call i32 @attack_move_reason_known(i32 %1121, i32 %1122)
  %1124 = icmp ne i32 %1123, 0
  br i1 %1124, label %1130, label %1125

1125:                                             ; preds = %1120
  %1126 = load i32, i32* %4, align 4
  %1127 = load i32, i32* %9, align 4
  %1128 = call i32 @defense_move_reason_known(i32 %1126, i32 %1127)
  %1129 = icmp ne i32 %1128, 0
  br i1 %1129, label %1130, label %1144

1130:                                             ; preds = %1125, %1120
  %1131 = load i32, i32* @verbose, align 4
  %1132 = icmp ne i32 %1131, 0
  br i1 %1132, label %1134, label %1133

1133:                                             ; preds = %1130
  br label %1143

1134:                                             ; preds = %1130
  %1135 = load i32, i32* %4, align 4
  %1136 = load i32, i32* %9, align 4
  %1137 = sext i32 %1136 to i64
  %1138 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1137
  %1139 = load float, float* %1138, align 4
  %1140 = fpext float %1139 to double
  %1141 = load i32, i32* %9, align 4
  %1142 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.86, i64 0, i64 0), i32 %1135, double %1140, i32 %1141)
  br label %1143

1143:                                             ; preds = %1134, %1133
  br label %1223

1144:                                             ; preds = %1125, %1108, %1101
  %1145 = load i32, i32* %4, align 4
  %1146 = load i32, i32* %9, align 4
  %1147 = call i32 @owl_attack_move_reason_known(i32 %1145, i32 %1146)
  %1148 = icmp ne i32 %1147, 0
  br i1 %1148, label %1159, label %1149

1149:                                             ; preds = %1144
  %1150 = load i32, i32* %4, align 4
  %1151 = load i32, i32* %9, align 4
  %1152 = call i32 @owl_defense_move_reason_known(i32 %1150, i32 %1151)
  %1153 = icmp ne i32 %1152, 0
  br i1 %1153, label %1159, label %1154

1154:                                             ; preds = %1149
  %1155 = load i32, i32* %4, align 4
  %1156 = load i32, i32* %9, align 4
  %1157 = call i32 @move_reason_known(i32 %1155, i32 18, i32 %1156)
  %1158 = icmp ne i32 %1157, 0
  br i1 %1158, label %1159, label %1203

1159:                                             ; preds = %1154, %1149, %1144
  %1160 = load i32, i32* %9, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1161
  %1163 = load float, float* %1162, align 4
  %1164 = load i32, i32* %9, align 4
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1165
  %1167 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1166, i32 0, i32 4
  %1168 = load float, float* %1167, align 4
  %1169 = fmul float 2.000000e+00, %1168
  %1170 = fsub float %1163, %1169
  store float %1170, float* %24, align 4
  %1171 = load float, float* %24, align 4
  %1172 = fpext float %1171 to double
  %1173 = fcmp ogt double %1172, 0.000000e+00
  br i1 %1173, label %1174, label %1188

1174:                                             ; preds = %1159
  %1175 = load i32, i32* @verbose, align 4
  %1176 = icmp ne i32 %1175, 0
  br i1 %1176, label %1178, label %1177

1177:                                             ; preds = %1174
  br label %1184

1178:                                             ; preds = %1174
  %1179 = load i32, i32* %4, align 4
  %1180 = load float, float* %24, align 4
  %1181 = fpext float %1180 to double
  %1182 = load i32, i32* %9, align 4
  %1183 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.87, i64 0, i64 0), i32 %1179, double %1181, i32 %1182)
  br label %1184

1184:                                             ; preds = %1178, %1177
  %1185 = load float, float* %24, align 4
  %1186 = load float, float* %14, align 4
  %1187 = fadd float %1186, %1185
  store float %1187, float* %14, align 4
  br label %1202

1188:                                             ; preds = %1159
  %1189 = load i32, i32* @verbose, align 4
  %1190 = icmp ne i32 %1189, 0
  br i1 %1190, label %1192, label %1191

1191:                                             ; preds = %1188
  br label %1201

1192:                                             ; preds = %1188
  %1193 = load i32, i32* %4, align 4
  %1194 = load i32, i32* %9, align 4
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1195
  %1197 = load float, float* %1196, align 4
  %1198 = fpext float %1197 to double
  %1199 = load i32, i32* %9, align 4
  %1200 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.88, i64 0, i64 0), i32 %1193, double %1198, i32 %1199)
  br label %1201

1201:                                             ; preds = %1192, %1191
  br label %1202

1202:                                             ; preds = %1201, %1184
  br label %1223

1203:                                             ; preds = %1154
  %1204 = load i32, i32* @verbose, align 4
  %1205 = icmp ne i32 %1204, 0
  br i1 %1205, label %1207, label %1206

1206:                                             ; preds = %1203
  br label %1216

1207:                                             ; preds = %1203
  %1208 = load i32, i32* %4, align 4
  %1209 = load i32, i32* %9, align 4
  %1210 = sext i32 %1209 to i64
  %1211 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1210
  %1212 = load float, float* %1211, align 4
  %1213 = fpext float %1212 to double
  %1214 = load i32, i32* %9, align 4
  %1215 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.89, i64 0, i64 0), i32 %1208, double %1213, i32 %1214)
  br label %1216

1216:                                             ; preds = %1207, %1206
  %1217 = load i32, i32* %9, align 4
  %1218 = sext i32 %1217 to i64
  %1219 = getelementptr inbounds [400 x float], [400 x float]* %15, i64 0, i64 %1218
  %1220 = load float, float* %1219, align 4
  %1221 = load float, float* %14, align 4
  %1222 = fadd float %1221, %1220
  store float %1222, float* %14, align 4
  br label %1223

1223:                                             ; preds = %1216, %1202, %1143, %1100, %1062
  %1224 = load i32, i32* %9, align 4
  %1225 = add nsw i32 %1224, 1
  store i32 %1225, i32* %9, align 4
  br label %1052, !llvm.loop !51

1226:                                             ; preds = %1052
  %1227 = load i32, i32* %4, align 4
  %1228 = load i32, i32* %5, align 4
  %1229 = call float @strategic_penalty(i32 %1227, i32 %1228)
  store float %1229, float* %13, align 4
  %1230 = load float, float* %13, align 4
  %1231 = fpext float %1230 to double
  %1232 = fcmp ogt double %1231, 0.000000e+00
  br i1 %1232, label %1233, label %1247

1233:                                             ; preds = %1226
  %1234 = load i32, i32* @verbose, align 4
  %1235 = icmp ne i32 %1234, 0
  br i1 %1235, label %1237, label %1236

1236:                                             ; preds = %1233
  br label %1243

1237:                                             ; preds = %1233
  %1238 = load i32, i32* %4, align 4
  %1239 = load float, float* %13, align 4
  %1240 = fneg float %1239
  %1241 = fpext float %1240 to double
  %1242 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.90, i64 0, i64 0), i32 %1238, double %1241)
  br label %1243

1243:                                             ; preds = %1237, %1236
  %1244 = load float, float* %13, align 4
  %1245 = load float, float* %14, align 4
  %1246 = fsub float %1245, %1244
  store float %1246, float* %14, align 4
  br label %1247

1247:                                             ; preds = %1243, %1226
  %1248 = load float, float* %14, align 4
  %1249 = load i32, i32* %4, align 4
  %1250 = sext i32 %1249 to i64
  %1251 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %1250
  %1252 = getelementptr inbounds %struct.move_data, %struct.move_data* %1251, i32 0, i32 4
  store float %1248, float* %1252, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal float @compute_shape_factor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.move_data, %struct.move_data* %6, i32 0, i32 5
  %8 = load float, float* %7, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.move_data, %struct.move_data* %11, i32 0, i32 6
  %13 = load float, float* %12, align 4
  %14 = fsub float %8, %13
  store float %14, float* %3, align 4
  %15 = load i32, i32* %2, align 4
  %16 = icmp ult i32 %15, 421
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %32

25:                                               ; preds = %17, %1
  %26 = load i32, i32* %2, align 4
  %27 = sdiv i32 %26, 20
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %2, align 4
  %30 = srem i32 %29, 20
  %31 = sub nsw i32 %30, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 1090, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.91, i64 0, i64 0), i32 %28, i32 %31)
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.move_data, %struct.move_data* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %49

39:                                               ; preds = %32
  %40 = load i32, i32* %2, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.move_data, %struct.move_data* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sitofp i32 %45 to float
  %47 = load float, float* %3, align 4
  %48 = fadd float %47, %46
  store float %48, float* %3, align 4
  br label %49

49:                                               ; preds = %39, %32
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.move_data, %struct.move_data* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.move_data, %struct.move_data* %59, i32 0, i32 8
  %61 = load i32, i32* %60, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sitofp i32 %62 to float
  %64 = load float, float* %3, align 4
  %65 = fsub float %64, %63
  store float %65, float* %3, align 4
  br label %66

66:                                               ; preds = %56, %49
  %67 = load float, float* %3, align 4
  %68 = fpext float %67 to double
  %69 = call double @pow(double 1.050000e+00, double %68) #4
  %70 = fptrunc double %69 to float
  ret float %70
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_connects_strings(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
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
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %69, %2
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %72

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %30, label %37

30:                                               ; preds = %17
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %17
  br label %69

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @find_origin(i32 %39)
  store i32 %40, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %54, %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %57

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %41, !llvm.loop !52

57:                                               ; preds = %52, %41
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %61, %57
  br label %69

69:                                               ; preds = %68, %37
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %14, !llvm.loop !53

72:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %145, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %148

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %123

88:                                               ; preds = %77
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @approxlib(i32 %89, i32 %90, i32 241, i32* null)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @countlib(i32 %98)
  %100 = icmp sge i32 %94, %99
  br i1 %100, label %101, label %122

101:                                              ; preds = %88
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @countlib(i32 %105)
  %107 = icmp sle i32 %106, 4
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %108, %101
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @countlib(i32 %115)
  %117 = icmp sle i32 %116, 2
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %121

121:                                              ; preds = %118, %111
  br label %122

122:                                              ; preds = %121, %88
  br label %144

123:                                              ; preds = %77
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @countlib(i32 %127)
  %129 = icmp sle i32 %128, 2
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %130, %123
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @countlib(i32 %137)
  %139 = icmp sle i32 %138, 1
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %140, %133
  br label %144

144:                                              ; preds = %143, %122
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %8, align 4
  br label %73, !llvm.loop !54

148:                                              ; preds = %73
  %149 = load i32, i32* %10, align 4
  %150 = icmp sgt i32 %149, 4
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 4, i32* %10, align 4
  br label %152

152:                                              ; preds = %151, %148
  %153 = load i32, i32* %10, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* %7, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %155, %152
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %160, %161
  ret i32 %162
}

; Function Attrs: nounwind
declare dso_local double @pow(double, double) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @value_moves_confirm_safety(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call float @value_moves_get_blunder_size(i32 %5, i32 %6)
  %8 = fpext float %7 to double
  %9 = fcmp oeq double %8, 0.000000e+00
  %10 = zext i1 %9 to i32
  ret i32 %10
}

declare dso_local void @move_considered(i32, float) #1

declare dso_local void @set_strength_data(i32, i8*, float*) #1

declare dso_local void @mark_changed_string(i32, i8*, float*, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adjacent_to_nondead_stone(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %49, %2
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 4
  br i1 %9, label %10, label %52

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
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %48

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %22
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %36, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %43, i32 0, i32 16
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %53

48:                                               ; preds = %35, %22, %10
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %7, !llvm.loop !55

52:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @same_string(i32, i32) #1

declare dso_local i32 @owl_substantial(i32) #1

declare dso_local void @add_followup_value(i32, float) #1

declare dso_local i32 @is_ko_point(i32) #1

declare dso_local i32 @liberty_of_string(i32, i32) #1

declare dso_local void @mark_changed_dragon(i32, i32, i32, i32, i32, i8*, float*, float*) #1

declare dso_local i32 @is_same_dragon(i32, i32) #1

declare dso_local i32 @get_last_opponent_move(i32) #1

declare dso_local void @add_reverse_followup_value(i32, float) #1

declare dso_local i32 @tryko(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @retrieve_delta_territory_cache(i32, i32, float*, float*) #1

declare dso_local void @compute_influence(i32, i8*, float*, %struct.influence_data*, i32, i8*) #1

declare dso_local void @compute_followup_influence(%struct.influence_data*, %struct.influence_data*, i32, i8*) #1

declare dso_local float @influence_delta_territory(%struct.influence_data*, %struct.influence_data*, i32, i32) #1

declare dso_local void @store_delta_territory_cache(i32, i32, float, float) #1

declare dso_local float @soft_cap(float, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal float @dragon_weakness(i32 %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %7, i64 %13
  %15 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 6
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %19
  store float 0.000000e+00, float* %3, align 4
  br label %47

29:                                               ; preds = %25, %2
  %30 = load i32, i32* @doing_scoring, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store float 0.000000e+00, float* %3, align 4
  br label %47

36:                                               ; preds = %32, %29
  %37 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %37, i64 %43
  %45 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %44, i32 0, i32 7
  %46 = load float, float* %45, align 4
  store float %46, float* %3, align 4
  br label %47

47:                                               ; preds = %36, %35, %28
  %48 = load float, float* %3, align 4
  ret float %48
}

declare dso_local i32 @does_defend(i32, i32) #1

declare dso_local i32 @does_attack(i32, i32) #1

declare dso_local i32 @move_reason_known(i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal float @adjusted_worm_attack_value(i32 %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [160 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %16, i32 0, i32 2
  %18 = load float, float* %17, align 4
  %19 = fmul float 2.000000e+00, %18
  store float %19, float* %9, align 4
  store float 0.000000e+00, float* %10, align 4
  store float 0.000000e+00, float* %11, align 4
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds [160 x i32], [160 x i32]* %7, i64 0, i64 0
  %22 = call i32 @chainlinks(i32 %20, i32* %21)
  store i32 %22, i32* %6, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %92, %2
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %95

27:                                               ; preds = %23
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [160 x i32], [160 x i32]* %7, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %27
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %49, i32 0, i32 4
  %51 = load float, float* %50, align 4
  %52 = fmul float 2.000000e+00, %51
  %53 = load float, float* %10, align 4
  %54 = fcmp ogt float %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %58, i32 0, i32 4
  %60 = load float, float* %59, align 4
  %61 = fmul float 2.000000e+00, %60
  store float %61, float* %10, align 4
  br label %62

62:                                               ; preds = %55, %46, %39
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %65, i32 0, i32 16
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %62
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @does_defend(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %91, label %75

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %78, i32 0, i32 2
  %80 = load float, float* %79, align 4
  %81 = fmul float 2.000000e+00, %80
  %82 = load float, float* %11, align 4
  %83 = fcmp ogt float %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %75
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %87, i32 0, i32 2
  %89 = load float, float* %88, align 4
  %90 = fmul float 2.000000e+00, %89
  store float %90, float* %11, align 4
  br label %91

91:                                               ; preds = %84, %75, %70, %62
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %23, !llvm.loop !56

95:                                               ; preds = %23
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load float, float* %10, align 4
  %100 = load float, float* %9, align 4
  %101 = fadd float %100, %99
  store float %101, float* %9, align 4
  br label %102

102:                                              ; preds = %98, %95
  %103 = load float, float* %11, align 4
  %104 = load float, float* %9, align 4
  %105 = fsub float %104, %103
  store float %105, float* %9, align 4
  %106 = load float, float* %9, align 4
  %107 = fpext float %106 to double
  %108 = fcmp ogt double %107, 0.000000e+00
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load float, float* %9, align 4
  store float %110, float* %3, align 4
  br label %112

111:                                              ; preds = %102
  store float 0.000000e+00, float* %3, align 4
  br label %112

112:                                              ; preds = %111, %109
  %113 = load float, float* %3, align 4
  ret float %113
}

; Function Attrs: noinline nounwind optnone uwtable
define internal float @connection_value(i32 %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.dragon_data2*, align 8
  %11 = alloca %struct.dragon_data2*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca %struct.eyevalue, align 1
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store float %3, float* %9, align 4
  %24 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %24, i64 %30
  store %struct.dragon_data2* %31, %struct.dragon_data2** %10, align 8
  %32 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %32, i64 %38
  store %struct.dragon_data2* %39, %struct.dragon_data2** %11, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %42, i32 0, i32 4
  %44 = load float, float* %43, align 4
  store float %44, float* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %47, i32 0, i32 4
  %49 = load float, float* %48, align 4
  store float %49, float* %13, align 4
  %50 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %51 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %14, align 4
  %53 = load %struct.dragon_data2*, %struct.dragon_data2** %11, align 8
  %54 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %15, align 4
  %56 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %57 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %60 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %59, i32 0, i32 10
  %61 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %62 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %67 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %66, i32 0, i32 5
  %68 = load float, float* %67, align 4
  %69 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %70 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 4
  %72 = sitofp i32 %71 to float
  %73 = call float @crude_dragon_weakness(i32 %58, %struct.eyevalue* %60, i32 %65, float %68, float %72)
  store float %73, float* %16, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.move_data, %struct.move_data* %76, i32 0, i32 3
  %78 = load float, float* %77, align 4
  store float %78, float* %19, align 4
  %79 = load float, float* %9, align 4
  %80 = fpext float %79 to double
  %81 = fcmp ogt double %80, 2.000000e+01
  br i1 %81, label %82, label %83

82:                                               ; preds = %4
  store float 2.000000e+01, float* %9, align 4
  br label %83

83:                                               ; preds = %82, %4
  %84 = load i32, i32* @doing_scoring, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %83
  %87 = load float, float* %19, align 4
  %88 = fpext float %87 to double
  %89 = fcmp olt double %88, 0.000000e+00
  br i1 %89, label %90, label %110

90:                                               ; preds = %86
  %91 = load i32, i32* %14, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %99, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 8
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = icmp eq i32 %97, 9
  br i1 %98, label %99, label %109

99:                                               ; preds = %96, %93, %90
  %100 = load i32, i32* %15, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* %15, align 4
  %104 = icmp eq i32 %103, 8
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = icmp eq i32 %106, 9
  br i1 %107, label %108, label %109

108:                                              ; preds = %105, %102, %99
  store float 0.000000e+00, float* %5, align 4
  br label %251

109:                                              ; preds = %105, %96
  br label %110

110:                                              ; preds = %109, %86, %83
  %111 = load float, float* %16, align 4
  %112 = fpext float %111 to double
  %113 = fcmp oeq double %112, 0.000000e+00
  br i1 %113, label %121, label %114

114:                                              ; preds = %110
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %117, i32 0, i32 16
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114, %110
  store float 0.000000e+00, float* %5, align 4
  br label %251

122:                                              ; preds = %114
  %123 = load float, float* %19, align 4
  %124 = fpext float %123 to double
  %125 = fcmp olt double %124, 0.000000e+00
  br i1 %125, label %126, label %127

126:                                              ; preds = %122
  store float 0.000000e+00, float* %19, align 4
  br label %127

127:                                              ; preds = %126, %122
  %128 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %129 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %128, i32 0, i32 10
  %130 = load %struct.dragon_data2*, %struct.dragon_data2** %11, align 8
  %131 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %130, i32 0, i32 10
  call void @add_eyevalues(%struct.eyevalue* %129, %struct.eyevalue* %131, %struct.eyevalue* %18)
  %132 = load i32, i32* %15, align 4
  %133 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %134 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %133, i32 0, i32 12
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %127
  %138 = load %struct.dragon_data2*, %struct.dragon_data2** %11, align 8
  %139 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %138, i32 0, i32 12
  %140 = load i32, i32* %139, align 4
  %141 = icmp ne i32 %140, 0
  br label %142

142:                                              ; preds = %137, %127
  %143 = phi i1 [ true, %127 ], [ %141, %137 ]
  %144 = zext i1 %143 to i32
  %145 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %146 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %145, i32 0, i32 5
  %147 = load float, float* %146, align 4
  %148 = load %struct.dragon_data2*, %struct.dragon_data2** %11, align 8
  %149 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %148, i32 0, i32 5
  %150 = load float, float* %149, align 4
  %151 = fadd float %147, %150
  %152 = load float, float* %19, align 4
  %153 = fadd float %151, %152
  %154 = load %struct.dragon_data2*, %struct.dragon_data2** %10, align 8
  %155 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = sitofp i32 %156 to float
  %158 = call float @crude_dragon_weakness(i32 %132, %struct.eyevalue* %18, i32 %144, float %153, float %157)
  store float %158, float* %17, align 4
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %161, i32 0, i32 16
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %198

165:                                              ; preds = %142
  %166 = load float, float* %17, align 4
  %167 = fpext float %166 to double
  %168 = fmul double 3.000000e-01, %167
  %169 = fsub double 2.000000e-01, %168
  %170 = load float, float* %12, align 4
  %171 = fpext float %170 to double
  %172 = fmul double %169, %171
  %173 = fptrunc double %172 to float
  store float %173, float* %21, align 4
  %174 = load float, float* %9, align 4
  %175 = fpext float %174 to double
  %176 = fcmp ogt double %175, 0.000000e+00
  br i1 %176, label %177, label %190

177:                                              ; preds = %165
  %178 = load float, float* %21, align 4
  %179 = fpext float %178 to double
  %180 = fcmp ogt double %179, 0.000000e+00
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load float, float* %9, align 4
  %183 = fpext float %182 to double
  %184 = fmul double 5.000000e-02, %183
  %185 = fadd double 1.000000e+00, %184
  %186 = load float, float* %21, align 4
  %187 = fpext float %186 to double
  %188 = fmul double %187, %185
  %189 = fptrunc double %188 to float
  store float %189, float* %21, align 4
  br label %190

190:                                              ; preds = %181, %177, %165
  %191 = load float, float* %12, align 4
  %192 = fpext float %191 to double
  %193 = fmul double 2.000000e+00, %192
  %194 = load float, float* %21, align 4
  %195 = fpext float %194 to double
  %196 = fadd double %193, %195
  %197 = fptrunc double %196 to float
  store float %197, float* %20, align 4
  br label %244

198:                                              ; preds = %142
  %199 = load float, float* %16, align 4
  %200 = fpext float %199 to double
  %201 = fmul double 2.000000e+00, %200
  %202 = load float, float* %12, align 4
  %203 = call float @soft_cap(float %202, float 1.500000e+01)
  %204 = fpext float %203 to double
  %205 = fmul double %201, %204
  %206 = fptrunc double %205 to float
  store float %206, float* %22, align 4
  %207 = load float, float* %17, align 4
  %208 = fpext float %207 to double
  %209 = fmul double 2.000000e+00, %208
  %210 = load float, float* %12, align 4
  %211 = load float, float* %13, align 4
  %212 = fadd float %210, %211
  %213 = call float @soft_cap(float %212, float 1.500000e+01)
  %214 = fpext float %213 to double
  %215 = fmul double %209, %214
  %216 = load float, float* %12, align 4
  %217 = fpext float %216 to double
  %218 = fmul double %215, %217
  %219 = load float, float* %12, align 4
  %220 = load float, float* %13, align 4
  %221 = fadd float %219, %220
  %222 = fpext float %221 to double
  %223 = fdiv double %218, %222
  %224 = fptrunc double %223 to float
  store float %224, float* %23, align 4
  %225 = load float, float* %22, align 4
  %226 = load float, float* %23, align 4
  %227 = fsub float %225, %226
  %228 = fpext float %227 to double
  %229 = fmul double 1.050000e+00, %228
  %230 = fptrunc double %229 to float
  store float %230, float* %20, align 4
  %231 = load float, float* %9, align 4
  %232 = fpext float %231 to double
  %233 = fcmp ogt double %232, 0.000000e+00
  br i1 %233, label %234, label %243

234:                                              ; preds = %198
  %235 = load float, float* %9, align 4
  %236 = fpext float %235 to double
  %237 = fmul double 2.000000e-02, %236
  %238 = fadd double 1.000000e+00, %237
  %239 = load float, float* %20, align 4
  %240 = fpext float %239 to double
  %241 = fmul double %240, %238
  %242 = fptrunc double %241 to float
  store float %242, float* %20, align 4
  br label %243

243:                                              ; preds = %234, %198
  br label %244

244:                                              ; preds = %243, %190
  %245 = load float, float* %20, align 4
  %246 = fpext float %245 to double
  %247 = fcmp olt double %246, 0.000000e+00
  br i1 %247, label %248, label %249

248:                                              ; preds = %244
  store float 0.000000e+00, float* %20, align 4
  br label %249

249:                                              ; preds = %248, %244
  %250 = load float, float* %20, align 4
  store float %250, float* %5, align 4
  br label %251

251:                                              ; preds = %249, %121, %108
  %252 = load float, float* %5, align 4
  ret float %252
}

declare dso_local i32 @owl_move_reason_known(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal float @strategic_penalty(i32 %0, i32 %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %47, %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %50

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %18, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 3, %30
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %35, %39
  %41 = call i32 @whose_area(%struct.influence_data* %34, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = sub nsw i32 3, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store float 0.000000e+00, float* %3, align 4
  br label %337

46:                                               ; preds = %29, %17
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %14, !llvm.loop !57

50:                                               ; preds = %14
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 3, %51
  %53 = icmp eq i32 %52, 1
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @whose_area(%struct.influence_data* %55, i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 3, %58
  %60 = icmp ne i32 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  store float 0.000000e+00, float* %3, align 4
  br label %337

62:                                               ; preds = %50
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %309, %62
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 120
  br i1 %65, label %66, label %312

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.move_data, %struct.move_data* %69, i32 0, i32 18
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [120 x i32], [120 x i32]* %70, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %312

78:                                               ; preds = %66
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %308 [
    i32 22, label %84
    i32 44, label %84
    i32 24, label %84
    i32 8, label %85
    i32 32, label %99
  ]

84:                                               ; preds = %78, %78, %78
  br label %309

85:                                               ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  store float 0.000000e+00, float* %3, align 4
  br label %337

98:                                               ; preds = %85
  br label %309

99:                                               ; preds = %78
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %101
  %103 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %125, label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %125, label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118, %111, %99
  store float 0.000000e+00, float* %3, align 4
  br label %337

126:                                              ; preds = %118
  %127 = load i32, i32* %4, align 4
  %128 = sdiv i32 %127, 20
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* @board_size, align 4
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* %4, align 4
  %133 = sdiv i32 %132, 20
  %134 = sub nsw i32 %133, 1
  %135 = sub nsw i32 %131, %134
  %136 = icmp slt i32 %129, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %126
  %138 = load i32, i32* %4, align 4
  %139 = sdiv i32 %138, 20
  %140 = sub nsw i32 %139, 1
  br label %148

141:                                              ; preds = %126
  %142 = load i32, i32* @board_size, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %4, align 4
  %145 = sdiv i32 %144, 20
  %146 = sub nsw i32 %145, 1
  %147 = sub nsw i32 %143, %146
  br label %148

148:                                              ; preds = %141, %137
  %149 = phi i32 [ %140, %137 ], [ %147, %141 ]
  %150 = load i32, i32* %4, align 4
  %151 = srem i32 %150, 20
  %152 = sub nsw i32 %151, 1
  %153 = load i32, i32* @board_size, align 4
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* %4, align 4
  %156 = srem i32 %155, 20
  %157 = sub nsw i32 %156, 1
  %158 = sub nsw i32 %154, %157
  %159 = icmp slt i32 %152, %158
  br i1 %159, label %160, label %164

160:                                              ; preds = %148
  %161 = load i32, i32* %4, align 4
  %162 = srem i32 %161, 20
  %163 = sub nsw i32 %162, 1
  br label %171

164:                                              ; preds = %148
  %165 = load i32, i32* @board_size, align 4
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* %4, align 4
  %168 = srem i32 %167, 20
  %169 = sub nsw i32 %168, 1
  %170 = sub nsw i32 %166, %169
  br label %171

171:                                              ; preds = %164, %160
  %172 = phi i32 [ %163, %160 ], [ %170, %164 ]
  %173 = icmp slt i32 %149, %172
  br i1 %173, label %174, label %198

174:                                              ; preds = %171
  %175 = load i32, i32* %4, align 4
  %176 = sdiv i32 %175, 20
  %177 = sub nsw i32 %176, 1
  %178 = load i32, i32* @board_size, align 4
  %179 = sub nsw i32 %178, 1
  %180 = load i32, i32* %4, align 4
  %181 = sdiv i32 %180, 20
  %182 = sub nsw i32 %181, 1
  %183 = sub nsw i32 %179, %182
  %184 = icmp slt i32 %177, %183
  br i1 %184, label %185, label %189

185:                                              ; preds = %174
  %186 = load i32, i32* %4, align 4
  %187 = sdiv i32 %186, 20
  %188 = sub nsw i32 %187, 1
  br label %196

189:                                              ; preds = %174
  %190 = load i32, i32* @board_size, align 4
  %191 = sub nsw i32 %190, 1
  %192 = load i32, i32* %4, align 4
  %193 = sdiv i32 %192, 20
  %194 = sub nsw i32 %193, 1
  %195 = sub nsw i32 %191, %194
  br label %196

196:                                              ; preds = %189, %185
  %197 = phi i32 [ %188, %185 ], [ %195, %189 ]
  br label %222

198:                                              ; preds = %171
  %199 = load i32, i32* %4, align 4
  %200 = srem i32 %199, 20
  %201 = sub nsw i32 %200, 1
  %202 = load i32, i32* @board_size, align 4
  %203 = sub nsw i32 %202, 1
  %204 = load i32, i32* %4, align 4
  %205 = srem i32 %204, 20
  %206 = sub nsw i32 %205, 1
  %207 = sub nsw i32 %203, %206
  %208 = icmp slt i32 %201, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %198
  %210 = load i32, i32* %4, align 4
  %211 = srem i32 %210, 20
  %212 = sub nsw i32 %211, 1
  br label %220

213:                                              ; preds = %198
  %214 = load i32, i32* @board_size, align 4
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* %4, align 4
  %217 = srem i32 %216, 20
  %218 = sub nsw i32 %217, 1
  %219 = sub nsw i32 %215, %218
  br label %220

220:                                              ; preds = %213, %209
  %221 = phi i32 [ %212, %209 ], [ %219, %213 ]
  br label %222

222:                                              ; preds = %220, %196
  %223 = phi i32 [ %197, %196 ], [ %221, %220 ]
  %224 = icmp slt i32 %223, 3
  br i1 %224, label %225, label %226

225:                                              ; preds = %222
  store float 0.000000e+00, float* %3, align 4
  br label %337

226:                                              ; preds = %222
  store i32 0, i32* %13, align 4
  br label %227

227:                                              ; preds = %297, %226
  %228 = load i32, i32* %13, align 4
  %229 = icmp slt i32 %228, 4
  br i1 %229, label %230, label %300

230:                                              ; preds = %227
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %231, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %237
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = load i32, i32* %5, align 4
  %242 = sub nsw i32 3, %241
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %244, label %296

244:                                              ; preds = %230
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %13, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %245, %249
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %251
  %253 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %257

256:                                              ; preds = %244
  store i32 1, i32* %12, align 4
  br label %300

257:                                              ; preds = %244
  %258 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %259 = load i32, i32* %10, align 4
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %259, %263
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %258, i64 %269
  %271 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  switch i32 %272, label %294 [
    i32 9, label %273
    i32 8, label %273
    i32 1, label %274
  ]

273:                                              ; preds = %257, %257
  store i32 1, i32* %11, align 4
  br label %295

274:                                              ; preds = %257
  %275 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = add nsw i32 %276, %280
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %282
  %284 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %275, i64 %286
  %288 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %287, i32 0, i32 7
  %289 = load float, float* %288, align 4
  %290 = fpext float %289 to double
  %291 = fcmp ogt double %290, 4.000000e-01
  br i1 %291, label %292, label %293

292:                                              ; preds = %274
  store i32 1, i32* %12, align 4
  br label %293

293:                                              ; preds = %292, %274
  br label %295

294:                                              ; preds = %257
  store i32 1, i32* %12, align 4
  br label %295

295:                                              ; preds = %294, %293, %273
  br label %296

296:                                              ; preds = %295, %230
  br label %297

297:                                              ; preds = %296
  %298 = load i32, i32* %13, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %13, align 4
  br label %227, !llvm.loop !58

300:                                              ; preds = %256, %227
  %301 = load i32, i32* %12, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %11, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %303, %300
  store float 0.000000e+00, float* %3, align 4
  br label %337

307:                                              ; preds = %303
  br label %309

308:                                              ; preds = %78
  store float 0.000000e+00, float* %3, align 4
  br label %337

309:                                              ; preds = %307, %98, %84
  %310 = load i32, i32* %6, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %6, align 4
  br label %63, !llvm.loop !59

312:                                              ; preds = %77, %63
  %313 = load i32, i32* %5, align 4
  %314 = sub nsw i32 3, %313
  %315 = icmp eq i32 %314, 1
  %316 = zext i1 %315 to i64
  %317 = select i1 %315, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %318 = load i32, i32* %4, align 4
  %319 = load i32, i32* %5, align 4
  %320 = sub nsw i32 3, %319
  %321 = call float @influence_territory(%struct.influence_data* %317, i32 %318, i32 %320)
  store float %321, float* %7, align 4
  %322 = load float, float* %7, align 4
  %323 = fpext float %322 to double
  %324 = fmul double %323, 1.200000e+01
  %325 = fptrunc double %324 to float
  store float %325, float* %7, align 4
  %326 = load float, float* %7, align 4
  %327 = fpext float %326 to double
  %328 = fcmp olt double 0.000000e+00, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %312
  %330 = load float, float* %7, align 4
  %331 = fpext float %330 to double
  br label %333

332:                                              ; preds = %312
  br label %333

333:                                              ; preds = %332, %329
  %334 = phi double [ %331, %329 ], [ 0.000000e+00, %332 ]
  %335 = fptrunc double %334 to float
  store float %335, float* %7, align 4
  %336 = load float, float* %7, align 4
  store float %336, float* %3, align 4
  br label %337

337:                                              ; preds = %333, %308, %306, %225, %125, %97, %61, %45
  %338 = load float, float* %3, align 4
  ret float %338
}

declare dso_local float @crude_dragon_weakness(i32, %struct.eyevalue*, i32, float, float) #1

declare dso_local void @add_eyevalues(%struct.eyevalue*, %struct.eyevalue*, %struct.eyevalue*) #1

declare dso_local i32 @whose_area(%struct.influence_data*, i32) #1

declare dso_local float @influence_territory(%struct.influence_data*, i32, i32) #1

declare dso_local i32 @find_origin(i32) #1

declare dso_local i32 @approxlib(i32, i32, i32, i32*) #1

declare dso_local i32 @countlib(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal float @value_moves_get_blunder_size(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [400 x i8], align 16
  %6 = alloca [400 x i8], align 16
  %7 = alloca [400 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [400 x i8], [400 x i8]* %5, i64 0, i64 0
  call void @get_saved_dragons(i32 %8, i8* %9)
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 0
  call void @get_saved_worms(i32 %10, i8* %11)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds [400 x i8], [400 x i8]* %5, i64 0, i64 0
  %15 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 0
  %16 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  call void @mark_safe_stones(i32 %12, i32 %13, i8* %14, i8* %15, i8* %16)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %20 = call float @blunder_size(i32 %17, i32 %18, i32* null, i8* %19)
  ret float %20
}

declare dso_local void @get_saved_dragons(i32, i8*) #1

declare dso_local void @get_saved_worms(i32, i8*) #1

declare dso_local void @mark_safe_stones(i32, i32, i8*, i8*, i8*) #1

declare dso_local float @blunder_size(i32, i32, i32*, i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reevaluate_ko_threats(i32 %0, i32 %1) #0 {
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
  %15 = alloca float, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @get_biggest_owl_target(i32 %17)
  store i32 %18, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %41, %2
  %20 = load i32, i32* %10, align 4
  %21 = icmp sle i32 %20, 3
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %23, %27
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %44

40:                                               ; preds = %35, %22
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %19, !llvm.loop !60

44:                                               ; preds = %39, %19
  %45 = load i32, i32* %5, align 4
  %46 = icmp ult i32 %45, 421
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %62

55:                                               ; preds = %47, %44
  %56 = load i32, i32* %5, align 4
  %57 = sdiv i32 %56, 20
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %5, align 4
  %60 = srem i32 %59, 20
  %61 = sub nsw i32 %60, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 2737, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i64 0, i64 0), i32 %58, i32 %61)
  br label %62

62:                                               ; preds = %55, %54
  %63 = load i32, i32* @verbose, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %68

66:                                               ; preds = %62
  %67 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.103, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %65
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %328, %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @board_size, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %331

73:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %324, %73
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @board_size, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %327

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 %79, 20
  %81 = add nsw i32 21, %80
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %3, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %324

88:                                               ; preds = %78
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.move_data, %struct.move_data* %91, i32 0, i32 2
  %93 = load float, float* %92, align 4
  %94 = fpext float %93 to double
  %95 = fcmp ole double %94, 0.000000e+00
  br i1 %95, label %96, label %97

96:                                               ; preds = %88
  br label %324

97:                                               ; preds = %88
  store float 0.000000e+00, float* %15, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %196, %97
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 120
  br i1 %100, label %101, label %199

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.move_data, %struct.move_data* %104, i32 0, i32 18
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [120 x i32], [120 x i32]* %105, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %16, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %199

113:                                              ; preds = %101
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %113
  br label %196

122:                                              ; preds = %113
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %194 [
    i32 3, label %128
    i32 9, label %128
    i32 27, label %161
    i32 33, label %161
    i32 19, label %161
  ]

128:                                              ; preds = %122, %122
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %134
  %136 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %135, i32 0, i32 2
  %137 = load float, float* %136, align 4
  %138 = load float, float* %15, align 4
  %139 = fcmp ogt float %137, %138
  br i1 %139, label %140, label %160

140:                                              ; preds = %128
  %141 = load i32, i32* %16, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %147, i32 0, i32 2
  %149 = load float, float* %148, align 4
  store float %149, float* %15, align 4
  %150 = load i32, i32* %16, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %16, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %12, align 4
  br label %160

160:                                              ; preds = %140, %128
  br label %195

161:                                              ; preds = %122, %122, %122
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %163
  %165 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %168, i32 0, i32 4
  %170 = load float, float* %169, align 4
  %171 = load float, float* %15, align 4
  %172 = fcmp ogt float %170, %171
  br i1 %172, label %173, label %193

173:                                              ; preds = %161
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %179
  %181 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %180, i32 0, i32 4
  %182 = load float, float* %181, align 4
  store float %182, float* %15, align 4
  %183 = load i32, i32* %16, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %184
  %186 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %189
  %191 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %173, %161
  br label %195

194:                                              ; preds = %122
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 2785, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i64 0, i64 0), i32 -1, i32 -1)
  br label %195

195:                                              ; preds = %194, %193, %160
  br label %196

196:                                              ; preds = %195, %121
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  br label %98, !llvm.loop !61

199:                                              ; preds = %112, %98
  %200 = load i32, i32* %11, align 4
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %203

202:                                              ; preds = %199
  store i32 1, i32* %13, align 4
  br label %268

203:                                              ; preds = %199
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %4, align 4
  %206 = load i32, i32* %3, align 4
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @trymove(i32 %204, i32 %205, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.105, i64 0, i64 0), i32 %206, i32 0, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %267

210:                                              ; preds = %203
  %211 = load i32, i32* %5, align 4
  %212 = icmp ult i32 %211, 421
  br i1 %212, label %213, label %221

213:                                              ; preds = %210
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = icmp ne i32 %218, 3
  br i1 %219, label %220, label %221

220:                                              ; preds = %213
  br label %228

221:                                              ; preds = %213, %210
  %222 = load i32, i32* %5, align 4
  %223 = sdiv i32 %222, 20
  %224 = sub nsw i32 %223, 1
  %225 = load i32, i32* %5, align 4
  %226 = srem i32 %225, 20
  %227 = sub nsw i32 %226, 1
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0), i32 2798, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.102, i64 0, i64 0), i32 %224, i32 %227)
  br label %228

228:                                              ; preds = %221, %220
  %229 = load i32, i32* %5, align 4
  %230 = call i32 @find_defense(i32 %229, i32* %6)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %228
  store i32 1, i32* %13, align 4
  br label %266

233:                                              ; preds = %228
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %4, align 4
  %236 = sub nsw i32 3, %235
  %237 = load i32, i32* %3, align 4
  %238 = call i32 @trymove(i32 %234, i32 %236, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.105, i64 0, i64 0), i32 %237, i32 0, i32 0)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %265

240:                                              ; preds = %233
  %241 = load i32, i32* %11, align 4
  switch i32 %241, label %264 [
    i32 3, label %242
    i32 9, label %245
    i32 27, label %259
    i32 33, label %259
  ]

242:                                              ; preds = %240
  %243 = load i32, i32* %12, align 4
  %244 = call i32 @attack(i32 %243, i32* null)
  store i32 %244, i32* %13, align 4
  br label %264

245:                                              ; preds = %240
  %246 = load i32, i32* %12, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %256

252:                                              ; preds = %245
  %253 = load i32, i32* %12, align 4
  %254 = call i32 @find_defense(i32 %253, i32* null)
  %255 = icmp ne i32 %254, 0
  br label %256

256:                                              ; preds = %252, %245
  %257 = phi i1 [ false, %245 ], [ %255, %252 ]
  %258 = zext i1 %257 to i32
  store i32 %258, i32* %13, align 4
  br label %264

259:                                              ; preds = %240, %240
  %260 = load i32, i32* %14, align 4
  %261 = load i32, i32* %12, align 4
  %262 = icmp ne i32 %260, %261
  %263 = zext i1 %262 to i32
  store i32 %263, i32* %13, align 4
  br label %264

264:                                              ; preds = %259, %240, %256, %242
  call void @popgo()
  br label %265

265:                                              ; preds = %264, %233
  br label %266

266:                                              ; preds = %265, %232
  call void @popgo()
  br label %267

267:                                              ; preds = %266, %203
  br label %268

268:                                              ; preds = %267, %202
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %314

271:                                              ; preds = %268
  %272 = load i32, i32* @verbose, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %275, label %274

274:                                              ; preds = %271
  br label %302

275:                                              ; preds = %271
  %276 = load i32, i32* %9, align 4
  %277 = load i32, i32* %9, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %278
  %280 = getelementptr inbounds %struct.move_data, %struct.move_data* %279, i32 0, i32 0
  %281 = load float, float* %280, align 4
  %282 = fpext float %281 to double
  %283 = load i32, i32* %9, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.move_data, %struct.move_data* %285, i32 0, i32 2
  %287 = load float, float* %286, align 4
  %288 = fpext float %287 to double
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %290
  %292 = getelementptr inbounds %struct.move_data, %struct.move_data* %291, i32 0, i32 0
  %293 = load float, float* %292, align 4
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %295
  %297 = getelementptr inbounds %struct.move_data, %struct.move_data* %296, i32 0, i32 2
  %298 = load float, float* %297, align 4
  %299 = fadd float %293, %298
  %300 = fpext float %299 to double
  %301 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.106, i64 0, i64 0), i32 %276, double %282, double %288, double %300)
  br label %302

302:                                              ; preds = %275, %274
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %304
  %306 = getelementptr inbounds %struct.move_data, %struct.move_data* %305, i32 0, i32 2
  %307 = load float, float* %306, align 4
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %309
  %311 = getelementptr inbounds %struct.move_data, %struct.move_data* %310, i32 0, i32 0
  %312 = load float, float* %311, align 4
  %313 = fadd float %312, %307
  store float %313, float* %311, align 4
  br label %323

314:                                              ; preds = %268
  %315 = load i32, i32* @debug, align 4
  %316 = and i32 %315, 2048
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %319, label %318

318:                                              ; preds = %314
  br label %322

319:                                              ; preds = %314
  %320 = load i32, i32* %9, align 4
  %321 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.107, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %319, %318
  br label %323

323:                                              ; preds = %322, %302
  br label %324

324:                                              ; preds = %323, %96, %87
  %325 = load i32, i32* %8, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %8, align 4
  br label %74, !llvm.loop !62

327:                                              ; preds = %74
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %7, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %7, align 4
  br label %69, !llvm.loop !63

331:                                              ; preds = %69
  ret void
}

declare dso_local i32 @get_biggest_owl_target(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind }

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
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
