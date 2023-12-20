; ModuleID = 'move_reasons.c'
source_filename = "move_reasons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.move_data = type { float, float, float, float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, [120 x i32], i32, i32, float }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.move_reason = type { i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.Reason_set = type { i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.discard_rule = type { [120 x i32], i32 (i32, i32)*, i32, [160 x i8] }

@next_reason = dso_local global i32 0, align 4
@next_connection = dso_local global i32 0, align 4
@next_either = dso_local global i32 0, align 4
@next_all = dso_local global i32 0, align 4
@next_eye = dso_local global i32 0, align 4
@next_lunch = dso_local global i32 0, align 4
@board = external dso_local global [421 x i8], align 16
@move = dso_local global [400 x %struct.move_data] zeroinitializer, align 16
@replacement_map = dso_local global [400 x i32] zeroinitializer, align 16
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str = private unnamed_addr constant [15 x i8] c"move_reasons.c\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"ON_BOARD1(eater)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(food)\00", align 1
@lunch_dragon = dso_local global [240 x i32] zeroinitializer, align 16
@lunch_worm = dso_local global [240 x i32] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [23 x i8] c"next_lunch < 2*19*19/3\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@move_reasons = dso_local global [1000 x %struct.move_reason] zeroinitializer, align 16
@.str.5 = private unnamed_addr constant [22 x i8] c"IS_STONE(board[what])\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(ww)\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(w1)\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(w2)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"worm[w1].color == worm[w2].color\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(dr)\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"ON_BOARD1(eyespace)\00", align 1
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@.str.12 = private unnamed_addr constant [19 x i8] c"ON_BOARD1(target1)\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"ON_BOARD1(target2)\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"reason1 == 1\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"reason2 == 1\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"reason1 == 2\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"reason2 == 2\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"target2 != NO_MOVE\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(from)\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(to)\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"board[to] == EMPTY\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"dd == to || to == replacement_map[dd]\00", align 1
@verbose = external dso_local global i32, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"Move at %1m is replaced by %1m.\0A\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"Cyclic point redistribution detected.\0A\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"board[pos] == EMPTY\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"IS_STONE(board[affected])\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"board[affected] == OTHER_COLOR(color)\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"board[affected] == color\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"mark-changed-dragon\00", align 1
@.str.31 = private unnamed_addr constant [51 x i8] c"((board[affected]) == 1 || (board[affected]) == 2)\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"new_status == 2\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"\0AMove reasons:\0A\00", align 1
@board_size = external dso_local global i32, align 4
@.str.34 = private unnamed_addr constant [27 x i8] c"Move at %1m attacks %1m%s\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c" (defenseless)\00", align 1
@.str.36 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Move at %1m attacks %1m%s with good ko\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"Move at %1m attacks %1m%s with bad ko\0A\00", align 1
@.str.39 = private unnamed_addr constant [25 x i8] c"Move at %1m defends %1m\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"Move at %1m defends %1m with good ko\0A\00", align 1
@.str.41 = private unnamed_addr constant [37 x i8] c"Move at %1m defends %1m with bad ko\0A\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"Move at %1m threatens to attack %1m\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"Move at %1m threatens to defend %1m\0A\00", align 1
@.str.44 = private unnamed_addr constant [57 x i8] c"%1m found alive but not certainly, %1m defends it again\0A\00", align 1
@.str.45 = private unnamed_addr constant [56 x i8] c"%1m found dead but not certainly, %1m attacks it again\0A\00", align 1
@conn_worm1 = dso_local global [962 x i32] zeroinitializer, align 16
@conn_worm2 = dso_local global [962 x i32] zeroinitializer, align 16
@.str.46 = private unnamed_addr constant [34 x i8] c"Move at %1m connects %1m and %1m\0A\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"Move at %1m cuts %1m and %1m\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Move at %1m is an antisuji\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"Move at %1m wins semeai for %1m\0A\00", align 1
@.str.50 = private unnamed_addr constant [45 x i8] c"Move at %1m threatens to win semeai for %1m\0A\00", align 1
@eyes = dso_local global [180 x i32] zeroinitializer, align 16
@eyecolor = dso_local global [180 x i32] zeroinitializer, align 16
@.str.51 = private unnamed_addr constant [41 x i8] c"Move at %1m vital eye point for eye %1m\0A\00", align 1
@either_data = dso_local global [100 x %struct.Reason_set] zeroinitializer, align 16
@.str.52 = private unnamed_addr constant [37 x i8] c"Move at %1m either %s %1m or %s %1m\0A\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"attacks\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"defends\00", align 1
@all_data = dso_local global [100 x %struct.Reason_set] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [36 x i8] c"Move at %1m both %s %1m and %s %1m\0A\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"Move at %1m owl-attacks %1m\0A\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"Move at %1m owl-attacks %1m with good ko\0A\00", align 1
@.str.58 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-attacks %1m with bad ko\0A\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"Move at %1m owl-attacks %1m (captures %1m)\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"Move at %1m owl-defends %1m\0A\00", align 1
@.str.61 = private unnamed_addr constant [42 x i8] c"Move at %1m owl-defends %1m with good ko\0A\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-defends %1m with bad ko\0A\00", align 1
@.str.63 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-defends %1m (loses %1m)\0A\00", align 1
@.str.64 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-threatens to attack %1m\0A\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"Move at %1m owl-threatens to defend %1m\0A\00", align 1
@.str.66 = private unnamed_addr constant [59 x i8] c"Move at %1m owl-prevents a threat to attack or defend %1m\0A\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Move at %1m expands territory\0A\00", align 1
@.str.68 = private unnamed_addr constant [26 x i8] c"Move at %1m expands moyo\0A\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"Move at %1m is an invasion\0A\00", align 1
@.str.70 = private unnamed_addr constant [39 x i8] c"Move at %1m strategically attacks %1m\0A\00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"Move at %1m strategically defends %1m\0A\00", align 1
@.str.72 = private unnamed_addr constant [32 x i8] c"Move at %1m captures something\0A\00", align 1
@.str.73 = private unnamed_addr constant [48 x i8] c"Move at %1m defends against combination attack\0A\00", align 1
@.str.74 = private unnamed_addr constant [48 x i8] c"Move at %1m strategically or tactically unsafe\0A\00", align 1
@debug = external dso_local global i32, align 4
@stackp = external dso_local global i32, align 4
@.str.75 = private unnamed_addr constant [66 x i8] c"Move reason at %1m (type=%d, what=%d) dropped because list full.\0A\00", align 1
@.str.76 = private unnamed_addr constant [73 x i8] c"Move reason at %1m (type=%d, what=%d) dropped because global list full.\0A\00", align 1
@.str.77 = private unnamed_addr constant [30 x i8] c"next_connection < 4*2*19*19/3\00", align 1
@.str.78 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(eye)\00", align 1
@.str.79 = private unnamed_addr constant [19 x i8] c"next_eye < 19*19/2\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"next_either < 100\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"next_all < 100\00", align 1
@discard_rules = internal global <{ { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, [119 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } }> <{ { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ [9 x i32], [111 x i32] }> <{ [9 x i32] [i32 2, i32 4, i32 6, i32 3, i32 8, i32 10, i32 12, i32 9, i32 -1], [111 x i32] zeroinitializer }>, i32 (i32, i32)* @owl_move_vs_worm_known, i32 1, [160 x i8] c"  %1m: 0.0 - (threat of) attack/defense of %1m (owl attack/defense as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ i32, i32, i32, [117 x i32] }> <{ i32 18, i32 19, i32 -1, [117 x i32] zeroinitializer }>, i32 (i32, i32)* @owl_move_reason_known, i32 3, [160 x i8] c"  %1m: 0.0 - (threat to) win semai involving %1m (owl move as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ i32, i32, i32, [117 x i32] }> <{ i32 18, i32 19, i32 -1, [117 x i32] zeroinitializer }>, i32 (i32, i32)* @tactical_move_vs_whole_dragon_known, i32 3, [160 x i8] c"  %1m: 0.0 - (threat to) win semai involving %1m (tactical move as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ i32, i32, [118 x i32] }> <{ i32 100, i32 -1, [118 x i32] zeroinitializer }>, i32 (i32, i32)* @either_worm_attackable, i32 3, [160 x i8] c"  %1m: 0.0 - 'attack either' is redundant at %1m (direct att./def. as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ i32, i32, [118 x i32] }> <{ i32 102, i32 -1, [118 x i32] zeroinitializer }>, i32 (i32, i32)* @one_of_both_attackable, i32 3, [160 x i8] c"  %1m: 0.0 - 'defend both' is redundant at %1m (direct att./def. as well)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ [9 x i32], [111 x i32] }> <{ [9 x i32] [i32 2, i32 4, i32 6, i32 3, i32 8, i32 10, i32 12, i32 9, i32 -1], [111 x i32] zeroinitializer }>, i32 (i32, i32)* @concerns_inessential_worm, i32 1, [160 x i8] c"  %1m: 0.0 - attack/defense of %1m (inessential)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ [9 x i32], [111 x i32] }> <{ [9 x i32] [i32 26, i32 28, i32 30, i32 27, i32 32, i32 34, i32 36, i32 42, i32 -1], [111 x i32] zeroinitializer }>, i32 (i32, i32)* @concerns_inessential_dragon, i32 3, [160 x i8] c"  %1m: 0.0 - (uncertain) owl attack/defense of %1m (inessential)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }> <{ i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 -1, [113 x i32] zeroinitializer }>, i32 (i32, i32)* @move_is_marked_unsafe, i32 3, [160 x i8] c"  %1m: 0.0 - tactical move vs %1m (unsafe move)\0A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, { <{ i32, [119 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } { <{ i32, [119 x i32] }> <{ i32 -1, [119 x i32] zeroinitializer }>, i32 (i32, i32)* null, i32 0, [160 x i8] zeroinitializer } }>, align 16
@dragon2 = external dso_local global %struct.dragon_data2*, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_move_reasons() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* @next_reason, align 4
  store i32 0, i32* @next_connection, align 4
  store i32 0, i32* @next_either, align 4
  store i32 0, i32* @next_all, align 4
  store i32 0, i32* @next_eye, align 4
  store i32 0, i32* @next_lunch, align 4
  store i32 21, i32* %1, align 4
  br label %3

3:                                                ; preds = %119, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 400
  br i1 %5, label %6, label %122

6:                                                ; preds = %3
  %7 = load i32, i32* %1, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %118

13:                                               ; preds = %6
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.move_data, %struct.move_data* %16, i32 0, i32 0
  store float 0.000000e+00, float* %17, align 4
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.move_data, %struct.move_data* %20, i32 0, i32 1
  store float 0.000000e+00, float* %21, align 4
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.move_data, %struct.move_data* %24, i32 0, i32 2
  store float 0.000000e+00, float* %25, align 4
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.move_data, %struct.move_data* %28, i32 0, i32 3
  store float 0.000000e+00, float* %29, align 4
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.move_data, %struct.move_data* %32, i32 0, i32 4
  store float 0.000000e+00, float* %33, align 4
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.move_data, %struct.move_data* %36, i32 0, i32 5
  store float 0.000000e+00, float* %37, align 4
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.move_data, %struct.move_data* %40, i32 0, i32 7
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.move_data, %struct.move_data* %44, i32 0, i32 6
  store float 0.000000e+00, float* %45, align 4
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.move_data, %struct.move_data* %48, i32 0, i32 8
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* %1, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.move_data, %struct.move_data* %52, i32 0, i32 9
  store float 0.000000e+00, float* %53, align 4
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.move_data, %struct.move_data* %56, i32 0, i32 10
  store float 0.000000e+00, float* %57, align 4
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.move_data, %struct.move_data* %60, i32 0, i32 11
  store float 0.000000e+00, float* %61, align 4
  %62 = load i32, i32* %1, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.move_data, %struct.move_data* %64, i32 0, i32 12
  store float 0.000000e+00, float* %65, align 4
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.move_data, %struct.move_data* %68, i32 0, i32 13
  store float 0.000000e+00, float* %69, align 4
  %70 = load i32, i32* %1, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.move_data, %struct.move_data* %72, i32 0, i32 14
  store float 3.610000e+03, float* %73, align 4
  %74 = load i32, i32* %1, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.move_data, %struct.move_data* %76, i32 0, i32 15
  store float 0.000000e+00, float* %77, align 4
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.move_data, %struct.move_data* %80, i32 0, i32 16
  store float 3.610000e+03, float* %81, align 4
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %93, %13
  %83 = load i32, i32* %2, align 4
  %84 = icmp slt i32 %83, 120
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.move_data, %struct.move_data* %88, i32 0, i32 18
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [120 x i32], [120 x i32]* %89, i64 0, i64 %91
  store i32 -1, i32* %92, align 4
  br label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %82, !llvm.loop !4

96:                                               ; preds = %82
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.move_data, %struct.move_data* %99, i32 0, i32 19
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.move_data, %struct.move_data* %103, i32 0, i32 20
  store i32 0, i32* %104, align 4
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.move_data, %struct.move_data* %107, i32 0, i32 17
  store float 1.000000e+00, float* %108, align 4
  %109 = call double @gg_drand()
  %110 = fptrunc double %109 to float
  %111 = load i32, i32* %1, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.move_data, %struct.move_data* %113, i32 0, i32 21
  store float %110, float* %114, align 4
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %116
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %96, %6
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %1, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %1, align 4
  br label %3, !llvm.loop !6

122:                                              ; preds = %3
  ret void
}

declare dso_local double @gg_drand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_lunch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %18, 421
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %35

28:                                               ; preds = %20, %2
  %29 = load i32, i32* %3, align 4
  %30 = sdiv i32 %29, 20
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %3, align 4
  %33 = srem i32 %32, 20
  %34 = sub nsw i32 %33, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 338, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  br label %35

35:                                               ; preds = %28, %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp ult i32 %36, 421
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %53

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %4, align 4
  %48 = sdiv i32 %47, 20
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %4, align 4
  %51 = srem i32 %50, 20
  %52 = sub nsw i32 %51, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52)
  br label %53

53:                                               ; preds = %46, %45
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %74, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @next_lunch, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %93

73:                                               ; preds = %65, %58
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %54, !llvm.loop !7

77:                                               ; preds = %54
  %78 = load i32, i32* @next_lunch, align 4
  %79 = icmp slt i32 %78, 240
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %82

81:                                               ; preds = %77
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 346, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32 -1)
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @next_lunch, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @next_lunch, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i64 0, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @next_lunch, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* @next_lunch, align 4
  br label %93

93:                                               ; preds = %82, %72
  ret void
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_lunch(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ult i32 %18, 421
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %35

28:                                               ; preds = %20, %2
  %29 = load i32, i32* %3, align 4
  %30 = sdiv i32 %29, 20
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %3, align 4
  %33 = srem i32 %32, 20
  %34 = sub nsw i32 %33, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  br label %35

35:                                               ; preds = %28, %27
  %36 = load i32, i32* %4, align 4
  %37 = icmp ult i32 %36, 421
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %53

46:                                               ; preds = %38, %35
  %47 = load i32, i32* %4, align 4
  %48 = sdiv i32 %47, 20
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %4, align 4
  %51 = srem i32 %50, 20
  %52 = sub nsw i32 %51, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 364, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %49, i32 %52)
  br label %53

53:                                               ; preds = %46, %45
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %74, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @next_lunch, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %77

58:                                               ; preds = %54
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  br label %77

73:                                               ; preds = %65, %58
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %54, !llvm.loop !8

77:                                               ; preds = %72, %54
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @next_lunch, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %101

82:                                               ; preds = %77
  %83 = load i32, i32* @next_lunch, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_dragon, i64 0, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @next_lunch, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [240 x i32], [240 x i32]* @lunch_worm, i64 0, i64 %97
  store i32 %95, i32* %98, align 4
  %99 = load i32, i32* @next_lunch, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* @next_lunch, align 4
  br label %101

101:                                              ; preds = %82, %81
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @move_reason_known(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 421
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %12, %3
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 471, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %64, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 120
  br i1 %30, label %31, label %67

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.move_data, %struct.move_data* %34, i32 0, i32 18
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [120 x i32], [120 x i32]* %35, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %67

43:                                               ; preds = %31
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54, %51
  store i32 1, i32* %4, align 4
  br label %68

63:                                               ; preds = %54, %43
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %28, !llvm.loop !9

67:                                               ; preds = %42, %28
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attack_move_reason_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  br label %27

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 495, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @move_reason_known(i32 %33, i32 2, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 5, i32* %3, align 4
  br label %51

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @move_reason_known(i32 %39, i32 4, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 4, i32* %3, align 4
  br label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @move_reason_known(i32 %45, i32 6, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %43, %37
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defense_move_reason_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %2
  br label %27

20:                                               ; preds = %12
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 513, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @move_reason_known(i32 %33, i32 8, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 5, i32* %3, align 4
  br label %51

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @move_reason_known(i32 %39, i32 10, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 4, i32* %3, align 4
  br label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @move_reason_known(i32 %45, i32 12, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %49, %43, %37
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_attack_move_reason_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @move_reason_known(i32 %6, i32 26, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 5, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @move_reason_known(i32 %12, i32 28, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @move_reason_known(i32 %18, i32 30, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %16, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_defense_move_reason_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @move_reason_known(i32 %6, i32 32, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 5, i32* %3, align 4
  br label %24

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @move_reason_known(i32 %12, i32 34, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 4, i32* %3, align 4
  br label %24

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @move_reason_known(i32 %18, i32 36, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %23, %22, %16, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_move_reason_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @owl_attack_move_reason_known(i32 %5, i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @owl_defense_move_reason_known(i32 %10, i32 %11)
  %13 = icmp ne i32 %12, 0
  br label %14

14:                                               ; preds = %9, %2
  %15 = phi i1 [ true, %2 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_attack_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 421
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %24

17:                                               ; preds = %9, %3
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 20
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %5, align 4
  %22 = srem i32 %21, 20
  %23 = sub nsw i32 %22, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 652, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %20, i32 %23)
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %33, i32 2, i32 %34)
  br label %49

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %39, i32 4, i32 %40)
  br label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %45, i32 6, i32 %46)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_move_reason(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 421
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %26

19:                                               ; preds = %11, %3
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %4, align 4
  %24 = srem i32 %23, 20
  %25 = sub nsw i32 %24, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 392, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %22, i32 %25)
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* @stackp, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %44

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  %39 = sdiv i32 %38, 20
  %40 = sub nsw i32 %39, 1
  %41 = load i32, i32* %4, align 4
  %42 = srem i32 %41, 20
  %43 = sub nsw i32 %42, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 %40, i32 %43)
  br label %44

44:                                               ; preds = %37, %36
  br label %45

45:                                               ; preds = %44, %26
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %79, %45
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 120
  br i1 %48, label %49, label %82

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.move_data, %struct.move_data* %52, i32 0, i32 18
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [120 x i32], [120 x i32]* %53, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %82

61:                                               ; preds = %49
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %135

78:                                               ; preds = %69, %61
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %46, !llvm.loop !10

82:                                               ; preds = %60, %46
  %83 = load i32, i32* %7, align 4
  %84 = icmp sge i32 %83, 120
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = load i32, i32* @debug, align 4
  %87 = and i32 %86, 2048
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  br label %95

90:                                               ; preds = %85
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.75, i64 0, i64 0), i32 %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %89
  br label %135

96:                                               ; preds = %82
  %97 = load i32, i32* @next_reason, align 4
  %98 = icmp sge i32 %97, 1000
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* @debug, align 4
  %101 = and i32 %100, 2048
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  br label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.76, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %103
  br label %135

110:                                              ; preds = %96
  %111 = load i32, i32* @next_reason, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.move_data, %struct.move_data* %114, i32 0, i32 18
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [120 x i32], [120 x i32]* %115, i64 0, i64 %117
  store i32 %111, i32* %118, align 4
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @next_reason, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 4
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @next_reason, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* @next_reason, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %131, i32 0, i32 2
  store i32 0, i32* %132, align 4
  %133 = load i32, i32* @next_reason, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* @next_reason, align 4
  br label %135

135:                                              ; preds = %110, %109, %95, %77
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_defense_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 421
  br i1 %8, label %9, label %17

9:                                                ; preds = %3
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %24

17:                                               ; preds = %9, %3
  %18 = load i32, i32* %5, align 4
  %19 = sdiv i32 %18, 20
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %5, align 4
  %22 = srem i32 %21, 20
  %23 = sub nsw i32 %22, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 670, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %20, i32 %23)
  br label %24

24:                                               ; preds = %17, %16
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %33, i32 8, i32 %34)
  br label %49

35:                                               ; preds = %24
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %39, i32 10, i32 %40)
  br label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %45, i32 12, i32 %46)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_attack_threat_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 421
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %25

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 20
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 690, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %21, i32 %24)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  call void @add_move_reason(i32 %26, i32 3, i32 %31)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_attack_threat_move(i32 %0, i32 %1) #0 {
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 699, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  call void @remove_move_reason(i32 %23, i32 3, i32 %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_move_reason(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 421
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %12, %3
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 439, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %62, %27
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 120
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.move_data, %struct.move_data* %34, i32 0, i32 18
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [120 x i32], [120 x i32]* %35, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %65

43:                                               ; preds = %31
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %59, %51, %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %28, !llvm.loop !11

65:                                               ; preds = %42, %28
  %66 = load i32, i32* %8, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %94

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.move_data, %struct.move_data* %74, i32 0, i32 18
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [120 x i32], [120 x i32]* %75, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.move_data, %struct.move_data* %82, i32 0, i32 18
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [120 x i32], [120 x i32]* %83, i64 0, i64 %85
  store i32 %79, i32* %86, align 4
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.move_data, %struct.move_data* %89, i32 0, i32 18
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [120 x i32], [120 x i32]* %90, i64 0, i64 %92
  store i32 -1, i32* %93, align 4
  br label %94

94:                                               ; preds = %69, %68
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_defense_threat_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 421
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %25

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 20
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 712, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %21, i32 %24)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  call void @add_move_reason(i32 %26, i32 9, i32 %31)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_attack_threats(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %49, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 120
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.move_data, %struct.move_data* %16, i32 0, i32 18
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [120 x i32], [120 x i32]* %17, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %52

25:                                               ; preds = %13
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %25
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %10, !llvm.loop !12

52:                                               ; preds = %47, %24, %10
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_defense_threats(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %49, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 120
  br i1 %12, label %13, label %52

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.move_data, %struct.move_data* %16, i32 0, i32 18
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [120 x i32], [120 x i32]* %17, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %52

25:                                               ; preds = %13
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  store i32 %37, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %25
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %10, !llvm.loop !13

52:                                               ; preds = %47, %24, %10
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_biggest_owl_target(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %4, align 4
  store float 0.000000e+00, float* %5, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %57, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 120
  br i1 %9, label %10, label %60

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.move_data, %struct.move_data* %13, i32 0, i32 18
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [120 x i32], [120 x i32]* %14, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %60

22:                                               ; preds = %10
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %56 [
    i32 26, label %28
    i32 28, label %28
    i32 30, label %28
    i32 27, label %28
    i32 32, label %28
    i32 34, label %28
    i32 36, label %28
    i32 33, label %28
    i32 38, label %28
  ]

28:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %35, i32 0, i32 4
  %37 = load float, float* %36, align 4
  %38 = load float, float* %5, align 4
  %39 = fcmp ogt float %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %51
  %53 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %52, i32 0, i32 4
  %54 = load float, float* %53, align 4
  store float %54, float* %5, align 4
  br label %55

55:                                               ; preds = %40, %28
  br label %56

56:                                               ; preds = %22, %55
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %7, !llvm.loop !14

60:                                               ; preds = %21, %7
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_connection_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 421
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %25

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 20
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 811, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %21, i32 %24)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %26, 421
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %43

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 20
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %6, align 4
  %41 = srem i32 %40, 20
  %42 = sub nsw i32 %41, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 812, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %39, i32 %42)
  br label %43

43:                                               ; preds = %36, %35
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %57

56:                                               ; preds = %43
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 813, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 -1, i32 -1)
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %84

70:                                               ; preds = %57
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @find_connection(i32 %75, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %7, align 4
  call void @add_move_reason(i32 %82, i32 14, i32 %83)
  br label %84

84:                                               ; preds = %70, %69
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_connection(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %11, %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %37, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @next_connection, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %58

36:                                               ; preds = %27, %20
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %16, !llvm.loop !15

40:                                               ; preds = %16
  %41 = load i32, i32* @next_connection, align 4
  %42 = icmp slt i32 %41, 962
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %45

44:                                               ; preds = %40
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 150, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.77, i64 0, i64 0), i32 -1, i32 -1)
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @next_connection, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @next_connection, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @next_connection, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @next_connection, align 4
  %56 = load i32, i32* @next_connection, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %45, %34
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_cut_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 421
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %25

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 20
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 831, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %21, i32 %24)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %6, align 4
  %27 = icmp ult i32 %26, 421
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %43

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %6, align 4
  %38 = sdiv i32 %37, 20
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %6, align 4
  %41 = srem i32 %40, 20
  %42 = sub nsw i32 %41, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 832, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %39, i32 %42)
  br label %43

43:                                               ; preds = %36, %35
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  br label %57

56:                                               ; preds = %43
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 833, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 -1, i32 -1)
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %62, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %117

70:                                               ; preds = %57
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @find_connection(i32 %75, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %84, i32 0, i32 16
  %86 = getelementptr inbounds [10 x i32], [10 x i32]* %85, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %70
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %92, i32 0, i32 18
  %94 = getelementptr inbounds [10 x i32], [10 x i32]* %93, i64 0, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %113, label %97

97:                                               ; preds = %89, %70
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %100, i32 0, i32 16
  %102 = getelementptr inbounds [10 x i32], [10 x i32]* %101, i64 0, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %107
  %109 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %108, i32 0, i32 18
  %110 = getelementptr inbounds [10 x i32], [10 x i32]* %109, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105, %89
  br label %117

114:                                              ; preds = %105, %97
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %7, align 4
  call void @add_move_reason(i32 %115, i32 16, i32 %116)
  br label %117

117:                                              ; preds = %114, %113, %69
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_antisuji_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @add_move_reason(i32 %3, i32 70, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_semeai_move(i32 %0, i32 %1) #0 {
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 873, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  call void @add_move_reason(i32 %23, i32 18, i32 %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_semeai_threat(i32 %0, i32 %1) #0 {
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 887, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  call void @add_move_reason(i32 %23, i32 19, i32 %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_vital_eye_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ult i32 %8, 421
  br i1 %9, label %10, label %18

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %25

18:                                               ; preds = %10, %3
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 20
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 900, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %21, i32 %24)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @find_eye(i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @find_eye(i32 %41, i32 %42)
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %28
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %7, align 4
  call void @add_move_reason(i32 %45, i32 54, i32 %46)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_eye(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ult i32 %7, 421
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %24

17:                                               ; preds = %9, %2
  %18 = load i32, i32* %4, align 4
  %19 = sdiv i32 %18, 20
  %20 = sub nsw i32 %19, 1
  %21 = load i32, i32* %4, align 4
  %22 = srem i32 %21, 20
  %23 = sub nsw i32 %22, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 242, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.78, i64 0, i64 0), i32 %20, i32 %23)
  br label %24

24:                                               ; preds = %17, %16
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @next_eye, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [180 x i32], [180 x i32]* @eyes, i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [180 x i32], [180 x i32]* @eyecolor, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %36, %29
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %25, !llvm.loop !16

49:                                               ; preds = %25
  %50 = load i32, i32* @next_eye, align 4
  %51 = icmp slt i32 %50, 180
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %54

53:                                               ; preds = %49
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 249, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.79, i64 0, i64 0), i32 -1, i32 -1)
  br label %54

54:                                               ; preds = %53, %52
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @next_eye, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [180 x i32], [180 x i32]* @eyes, i64 0, i64 %57
  store i32 %55, i32* %58, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @next_eye, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [180 x i32], [180 x i32]* @eyecolor, i64 0, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load i32, i32* @next_eye, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* @next_eye, align 4
  %65 = load i32, i32* @next_eye, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %54, %43
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_either_move(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %14, 421
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %31

24:                                               ; preds = %16, %5
  %25 = load i32, i32* %8, align 4
  %26 = sdiv i32 %25, 20
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %28, 20
  %30 = sub nsw i32 %29, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 931, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %27, i32 %30)
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %32, 421
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %49

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %10, align 4
  %44 = sdiv i32 %43, 20
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %10, align 4
  %47 = srem i32 %46, 20
  %48 = sub nsw i32 %47, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 932, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %45, i32 %48)
  br label %49

49:                                               ; preds = %42, %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %128

58:                                               ; preds = %53, %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %58
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 937, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 -1, i32 -1)
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %68

67:                                               ; preds = %63
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 938, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 -1, i32 -1)
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %7, align 4
  switch i32 %69, label %93 [
    i32 1, label %70
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %78, i32 0, i32 16
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %79, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %70
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %86, i32 0, i32 18
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %87, i64 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %128

92:                                               ; preds = %83, %70
  br label %94

93:                                               ; preds = %68
  br label %94

94:                                               ; preds = %93, %92
  %95 = load i32, i32* %9, align 4
  switch i32 %95, label %119 [
    i32 1, label %96
  ]

96:                                               ; preds = %94
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %104, i32 0, i32 16
  %106 = getelementptr inbounds [10 x i32], [10 x i32]* %105, i64 0, i64 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %96
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %112, i32 0, i32 18
  %114 = getelementptr inbounds [10 x i32], [10 x i32]* %113, i64 0, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %128

118:                                              ; preds = %109, %96
  br label %120

119:                                              ; preds = %94
  br label %120

120:                                              ; preds = %119, %118
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %12, align 4
  %125 = call i32 @find_either_data(i32 %121, i32 %122, i32 %123, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %13, align 4
  call void @add_move_reason(i32 %126, i32 100, i32 %127)
  br label %128

128:                                              ; preds = %120, %117, %91, %57
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_either_data(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %59, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @next_either, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %92

58:                                               ; preds = %48, %40, %32, %24
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %20, !llvm.loop !17

62:                                               ; preds = %20
  %63 = load i32, i32* @next_either, align 4
  %64 = icmp slt i32 %63, 100
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 178, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i64 0, i64 0), i32 -1, i32 -1)
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @next_either, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 16
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @next_either, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @next_either, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @next_either, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %86, i32 0, i32 3
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @next_either, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @next_either, align 4
  %90 = load i32, i32* @next_either, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %67, %56
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_all_move(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %14, 421
  br i1 %15, label %16, label %24

16:                                               ; preds = %5
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %31

24:                                               ; preds = %16, %5
  %25 = load i32, i32* %8, align 4
  %26 = sdiv i32 %25, 20
  %27 = sub nsw i32 %26, 1
  %28 = load i32, i32* %8, align 4
  %29 = srem i32 %28, 20
  %30 = sub nsw i32 %29, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1002, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %27, i32 %30)
  br label %31

31:                                               ; preds = %24, %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp ult i32 %32, 421
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %49

42:                                               ; preds = %34, %31
  %43 = load i32, i32* %10, align 4
  %44 = sdiv i32 %43, 20
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %10, align 4
  %47 = srem i32 %46, 20
  %48 = sub nsw i32 %47, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1003, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i32 %45, i32 %48)
  br label %49

49:                                               ; preds = %42, %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %94

58:                                               ; preds = %53, %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %58
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1008, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %68

67:                                               ; preds = %63
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1009, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i32 -1, i32 -1)
  br label %68

68:                                               ; preds = %67, %66
  %69 = load i32, i32* %7, align 4
  switch i32 %69, label %76 [
    i32 2, label %70
  ]

70:                                               ; preds = %68
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %11, align 4
  br label %77

76:                                               ; preds = %68
  br label %77

77:                                               ; preds = %76, %70
  %78 = load i32, i32* %9, align 4
  switch i32 %78, label %85 [
    i32 2, label %79
  ]

79:                                               ; preds = %77
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %12, align 4
  br label %86

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @find_all_data(i32 %87, i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %13, align 4
  call void @add_move_reason(i32 %92, i32 102, i32 %93)
  br label %94

94:                                               ; preds = %86, %57
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_all_data(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %9, align 4
  br label %19

19:                                               ; preds = %15, %4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %59, %19
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @next_all, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %62

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 16
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %58

32:                                               ; preds = %24
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %92

58:                                               ; preds = %48, %40, %32, %24
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %20, !llvm.loop !18

62:                                               ; preds = %20
  %63 = load i32, i32* @next_all, align 4
  %64 = icmp slt i32 %63, 100
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i64 0, i64 0), i32 -1, i32 -1)
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @next_all, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %71, i32 0, i32 0
  store i32 %68, i32* %72, align 16
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @next_all, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @next_all, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %81, i32 0, i32 2
  store i32 %78, i32* %82, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @next_all, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %86, i32 0, i32 3
  store i32 %83, i32* %87, align 4
  %88 = load i32, i32* @next_all, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @next_all, align 4
  %90 = load i32, i32* @next_all, align 4
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %67, %56
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_gain_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @find_pair_data(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 20
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = srem i32 %30, 20
  %32 = sub nsw i32 %31, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1040, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %29, i32 %32)
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %9, align 4
  call void @add_move_reason(i32 %34, i32 60, i32 %35)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_pair_data(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @next_either, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %19, %11
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %7, !llvm.loop !19

33:                                               ; preds = %7
  %34 = load i32, i32* @next_either, align 4
  %35 = icmp slt i32 %34, 100
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %38

37:                                               ; preds = %33
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i64 0, i64 0), i32 -1, i32 -1)
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @next_either, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @next_either, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %47, i32 0, i32 3
  store i32 %44, i32* %48, align 4
  %49 = load i32, i32* @next_either, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @next_either, align 4
  %51 = load i32, i32* @next_either, align 4
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %38, %27
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_loss_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @find_pair_data(i32 %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %33

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 20
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = srem i32 %30, 20
  %32 = sub nsw i32 %31, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1050, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i32 %29, i32 %32)
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %9, align 4
  call void @add_move_reason(i32 %34, i32 62, i32 %35)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_expand_territory_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @add_move_reason(i32 %3, i32 20, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_expand_moyo_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @add_move_reason(i32 %3, i32 22, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_invasion_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @add_move_reason(i32 %3, i32 24, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_shape_value(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 421
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1095, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load float, float* %4, align 4
  %24 = fpext float %23 to double
  %25 = fcmp ogt double %24, 0.000000e+00
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load float, float* %4, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.move_data, %struct.move_data* %30, i32 0, i32 5
  %32 = load float, float* %31, align 4
  %33 = fcmp ogt float %27, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load float, float* %4, align 4
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.move_data, %struct.move_data* %38, i32 0, i32 5
  store float %35, float* %39, align 4
  br label %40

40:                                               ; preds = %34, %26
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.move_data, %struct.move_data* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %75

47:                                               ; preds = %22
  %48 = load float, float* %4, align 4
  %49 = fpext float %48 to double
  %50 = fcmp olt double %49, 0.000000e+00
  br i1 %50, label %51, label %74

51:                                               ; preds = %47
  %52 = load float, float* %4, align 4
  %53 = fneg float %52
  store float %53, float* %4, align 4
  %54 = load float, float* %4, align 4
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.move_data, %struct.move_data* %57, i32 0, i32 6
  %59 = load float, float* %58, align 4
  %60 = fcmp ogt float %54, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load float, float* %4, align 4
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.move_data, %struct.move_data* %65, i32 0, i32 6
  store float %62, float* %66, align 4
  br label %67

67:                                               ; preds = %61, %51
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.move_data, %struct.move_data* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %47
  br label %75

75:                                               ; preds = %74, %40
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_worthwhile_threat_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.move_data, %struct.move_data* %5, i32 0, i32 20
  store i32 1, i32* %6, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_strategical_attack_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 421
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1126, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  call void @add_move_reason(i32 %28, i32 44, i32 %29)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_strategical_defense_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 421
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  call void @add_move_reason(i32 %28, i32 46, i32 %29)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_owl_attack_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 421
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %29

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 20
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 20
  %28 = sub nsw i32 %27, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1151, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %25, i32 %28)
  br label %29

29:                                               ; preds = %22, %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %33, i32 26, i32 %34)
  br label %49

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %39, i32 28, i32 %40)
  br label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %45, i32 30, i32 %46)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_owl_defense_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ult i32 %12, 421
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %29

22:                                               ; preds = %14, %3
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 20
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 20
  %28 = sub nsw i32 %27, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1169, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %25, i32 %28)
  br label %29

29:                                               ; preds = %22, %21
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 5
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %33, i32 32, i32 %34)
  br label %49

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %39, i32 34, i32 %40)
  br label %48

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  call void @add_move_reason(i32 %45, i32 36, i32 %46)
  br label %47

47:                                               ; preds = %44, %41
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48, %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_owl_attack_threat_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %13, 421
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %30

23:                                               ; preds = %15, %3
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 20
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 20
  %29 = sub nsw i32 %28, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1190, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %26, i32 %29)
  br label %30

30:                                               ; preds = %23, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  call void @add_move_reason(i32 %31, i32 27, i32 %36)
  %37 = load i32, i32* %4, align 4
  call void @add_worthwhile_threat_move(i32 %37)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_owl_uncertain_defense_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 421
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1203, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  call void @add_move_reason(i32 %28, i32 42, i32 %33)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_owl_uncertain_attack_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 421
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp ne i32 %17, 3
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %27

20:                                               ; preds = %12, %2
  %21 = load i32, i32* %4, align 4
  %22 = sdiv i32 %21, 20
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %4, align 4
  %25 = srem i32 %24, 20
  %26 = sub nsw i32 %25, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1215, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  call void @add_move_reason(i32 %28, i32 40, i32 %33)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_owl_defense_threat_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ult i32 %13, 421
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 3
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %30

23:                                               ; preds = %15, %3
  %24 = load i32, i32* %5, align 4
  %25 = sdiv i32 %24, 20
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 20
  %29 = sub nsw i32 %28, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1231, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %26, i32 %29)
  br label %30

30:                                               ; preds = %23, %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  call void @add_move_reason(i32 %31, i32 33, i32 %36)
  %37 = load i32, i32* %4, align 4
  call void @add_worthwhile_threat_move(i32 %37)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_my_atari_atari_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  call void @add_move_reason(i32 %5, i32 50, i32 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_your_atari_atari_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  call void @add_move_reason(i32 %5, i32 52, i32 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_owl_prevent_threat_move(i32 %0, i32 %1) #0 {
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
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1268, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  call void @add_move_reason(i32 %23, i32 38, i32 %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_followup_value(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 421
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1278, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load float, float* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.move_data, %struct.move_data* %26, i32 0, i32 9
  %28 = load float, float* %27, align 4
  %29 = fcmp ogt float %23, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load float, float* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.move_data, %struct.move_data* %34, i32 0, i32 9
  store float %31, float* %35, align 4
  br label %36

36:                                               ; preds = %30, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_reverse_followup_value(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 421
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1289, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load float, float* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.move_data, %struct.move_data* %26, i32 0, i32 11
  %28 = load float, float* %27, align 4
  %29 = fcmp ogt float %23, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load float, float* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.move_data, %struct.move_data* %34, i32 0, i32 11
  store float %31, float* %35, align 4
  br label %36

36:                                               ; preds = %30, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_minimum_move_value(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ult i32 %6, 421
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %23

16:                                               ; preds = %8, %2
  %17 = load i32, i32* %4, align 4
  %18 = sdiv i32 %17, 20
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* %4, align 4
  %21 = srem i32 %20, 20
  %22 = sub nsw i32 %21, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1300, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %19, i32 %22)
  br label %23

23:                                               ; preds = %16, %15
  %24 = load float, float* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.move_data, %struct.move_data* %27, i32 0, i32 13
  %29 = load float, float* %28, align 4
  %30 = fcmp ogt float %24, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load float, float* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.move_data, %struct.move_data* %35, i32 0, i32 13
  store float %32, float* %36, align 4
  store i32 1, i32* %3, align 4
  br label %38

37:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_maximum_move_value(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 421
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1314, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load float, float* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.move_data, %struct.move_data* %26, i32 0, i32 14
  %28 = load float, float* %27, align 4
  %29 = fcmp olt float %23, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load float, float* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.move_data, %struct.move_data* %34, i32 0, i32 14
  store float %31, float* %35, align 4
  br label %36

36:                                               ; preds = %30, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_minimum_territorial_value(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 421
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1325, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load float, float* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.move_data, %struct.move_data* %26, i32 0, i32 15
  %28 = load float, float* %27, align 4
  %29 = fcmp ogt float %23, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load float, float* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.move_data, %struct.move_data* %34, i32 0, i32 15
  store float %31, float* %35, align 4
  br label %36

36:                                               ; preds = %30, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_maximum_territorial_value(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 421
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7, %2
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1336, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load float, float* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.move_data, %struct.move_data* %26, i32 0, i32 16
  %28 = load float, float* %27, align 4
  %29 = fcmp olt float %23, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load float, float* %4, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.move_data, %struct.move_data* %34, i32 0, i32 16
  store float %31, float* %35, align 4
  br label %36

36:                                               ; preds = %30, %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_replacement_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 421
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %25

18:                                               ; preds = %10, %2
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 20
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %3, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1351, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %21, i32 %24)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %26, 421
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %43

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %4, align 4
  %38 = sdiv i32 %37, 20
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %4, align 4
  %41 = srem i32 %40, 20
  %42 = sub nsw i32 %41, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1352, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 %39, i32 %42)
  br label %43

43:                                               ; preds = %36, %35
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %163

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  br label %66

59:                                               ; preds = %51
  %60 = load i32, i32* %4, align 4
  %61 = sdiv i32 %60, 20
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %4, align 4
  %64 = srem i32 %63, 20
  %65 = sub nsw i32 %64, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1356, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0), i32 %62, i32 %65)
  br label %66

66:                                               ; preds = %59, %58
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %100

76:                                               ; preds = %66
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %91, label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %84, %76
  br label %99

92:                                               ; preds = %84
  %93 = load i32, i32* %3, align 4
  %94 = sdiv i32 %93, 20
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %3, align 4
  %97 = srem i32 %96, 20
  %98 = sub nsw i32 %97, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1367, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.22, i64 0, i64 0), i32 %95, i32 %98)
  br label %99

99:                                               ; preds = %92, %91
  br label %163

100:                                              ; preds = %66
  %101 = load i32, i32* @verbose, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  br label %108

104:                                              ; preds = %100
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i64 0, i64 0), i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %104, %103
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %3, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %108
  %113 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0))
  %114 = load i32, i32* %3, align 4
  %115 = sdiv i32 %114, 20
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %3, align 4
  %118 = srem i32 %117, 20
  %119 = sub nsw i32 %118, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1380, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 %116, i32 %119)
  br label %120

120:                                              ; preds = %112, %108
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %3, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %126
  store i32 %124, i32* %127, align 4
  br label %133

128:                                              ; preds = %120
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %131
  store i32 %129, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %123
  store i32 21, i32* %6, align 4
  br label %134

134:                                              ; preds = %160, %133
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 400
  br i1 %136, label %137, label %163

137:                                              ; preds = %134
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp ne i32 %142, 3
  br i1 %143, label %144, label %159

144:                                              ; preds = %137
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %3, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load i32, i32* %3, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [400 x i32], [400 x i32]* @replacement_map, i64 0, i64 %157
  store i32 %155, i32* %158, align 4
  br label %159

159:                                              ; preds = %151, %144, %137
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %6, align 4
  br label %134, !llvm.loop !20

163:                                              ; preds = %50, %99, %134
  ret void
}

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_saved_worms(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 400, i1 false)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %111, %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 120
  br i1 %14, label %15, label %114

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.move_data, %struct.move_data* %18, i32 0, i32 18
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [120 x i32], [120 x i32]* %19, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %114

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %4, align 8
  call void @mark_string(i32 %44, i8* %45, i8 signext 1)
  br label %110

46:                                               ; preds = %27
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 62
  br i1 %52, label %53, label %109

53:                                               ; preds = %46
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  store i32 21, i32* %10, align 4
  br label %64

64:                                               ; preds = %105, %53
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 400
  br i1 %66, label %67, label %108

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %81, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %104

81:                                               ; preds = %74, %67
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %81
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i8*, i8** %4, align 8
  call void @mark_string(i32 %102, i8* %103, i8 signext 1)
  br label %104

104:                                              ; preds = %97, %89, %81, %74
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %64, !llvm.loop !21

108:                                              ; preds = %64
  br label %109

109:                                              ; preds = %108, %46
  br label %110

110:                                              ; preds = %109, %39
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %12, !llvm.loop !22

114:                                              ; preds = %26, %12
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_changed_dragon(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, float* %6, float* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store float* %6, float** %15, align 8
  store float* %7, float** %16, align 8
  store i8 2, i8* %18, align 1
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %8
  br label %35

28:                                               ; preds = %8
  %29 = load i32, i32* %9, align 4
  %30 = sdiv i32 %29, 20
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %9, align 4
  %33 = srem i32 %32, 20
  %34 = sub nsw i32 %33, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1451, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0), i32 %31, i32 %34)
  br label %35

35:                                               ; preds = %28, %27
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %42, %35
  br label %57

50:                                               ; preds = %42
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %51, 20
  %53 = sub nsw i32 %52, 1
  %54 = load i32, i32* %9, align 4
  %55 = srem i32 %54, 20
  %56 = sub nsw i32 %55, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1452, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), i32 %53, i32 %56)
  br label %57

57:                                               ; preds = %50, %49
  %58 = load float*, float** %16, align 8
  %59 = icmp ne float* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load float*, float** %16, align 8
  store float 0.000000e+00, float* %61, align 4
  br label %62

62:                                               ; preds = %60, %57
  %63 = load i32, i32* %13, align 4
  switch i32 %63, label %204 [
    i32 26, label %64
    i32 28, label %64
    i32 30, label %64
    i32 32, label %92
    i32 34, label %109
    i32 36, label %126
    i32 60, label %143
    i32 62, label %171
  ]

64:                                               ; preds = %62, %62, %62
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 3, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %81

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = sdiv i32 %75, 20
  %77 = sub nsw i32 %76, 1
  %78 = load i32, i32* %9, align 4
  %79 = srem i32 %78, 20
  %80 = sub nsw i32 %79, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1461, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i32 %77, i32 %80)
  br label %81

81:                                               ; preds = %74, %73
  store i8 0, i8* %18, align 1
  %82 = load float*, float** %16, align 8
  %83 = icmp ne float* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %87, i32 0, i32 4
  %89 = load float, float* %88, align 4
  %90 = load float*, float** %16, align 8
  store float %89, float* %90, align 4
  br label %91

91:                                               ; preds = %84, %81
  br label %211

92:                                               ; preds = %62
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %10, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %92
  br label %108

101:                                              ; preds = %92
  %102 = load i32, i32* %9, align 4
  %103 = sdiv i32 %102, 20
  %104 = sub nsw i32 %103, 1
  %105 = load i32, i32* %9, align 4
  %106 = srem i32 %105, 20
  %107 = sub nsw i32 %106, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1467, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i32 %104, i32 %107)
  br label %108

108:                                              ; preds = %101, %100
  store i32 5, i32* %19, align 4
  br label %211

109:                                              ; preds = %62
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i32, i32* %10, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  br label %125

118:                                              ; preds = %109
  %119 = load i32, i32* %9, align 4
  %120 = sdiv i32 %119, 20
  %121 = sub nsw i32 %120, 1
  %122 = load i32, i32* %9, align 4
  %123 = srem i32 %122, 20
  %124 = sub nsw i32 %123, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1471, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i32 %121, i32 %124)
  br label %125

125:                                              ; preds = %118, %117
  store i32 4, i32* %19, align 4
  br label %211

126:                                              ; preds = %62
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, i32* %10, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %142

135:                                              ; preds = %126
  %136 = load i32, i32* %9, align 4
  %137 = sdiv i32 %136, 20
  %138 = sub nsw i32 %137, 1
  %139 = load i32, i32* %9, align 4
  %140 = srem i32 %139, 20
  %141 = sub nsw i32 %140, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1475, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i32 %138, i32 %141)
  br label %142

142:                                              ; preds = %135, %134
  store i32 1, i32* %19, align 4
  br label %211

143:                                              ; preds = %62
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = load i32, i32* %10, align 4
  %150 = sub nsw i32 3, %149
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %143
  br label %160

153:                                              ; preds = %143
  %154 = load i32, i32* %9, align 4
  %155 = sdiv i32 %154, 20
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* %9, align 4
  %158 = srem i32 %157, 20
  %159 = sub nsw i32 %158, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1479, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.28, i64 0, i64 0), i32 %156, i32 %159)
  br label %160

160:                                              ; preds = %153, %152
  store i8 0, i8* %18, align 1
  %161 = load float*, float** %16, align 8
  %162 = icmp ne float* %161, null
  br i1 %162, label %163, label %170

163:                                              ; preds = %160
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %166, i32 0, i32 2
  %168 = load float, float* %167, align 4
  %169 = load float*, float** %16, align 8
  store float %168, float* %169, align 4
  br label %170

170:                                              ; preds = %163, %160
  br label %211

171:                                              ; preds = %62
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = load i32, i32* %10, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %187

180:                                              ; preds = %171
  %181 = load i32, i32* %9, align 4
  %182 = sdiv i32 %181, 20
  %183 = sub nsw i32 %182, 1
  %184 = load i32, i32* %9, align 4
  %185 = srem i32 %184, 20
  %186 = sub nsw i32 %185, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1485, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0), i32 %183, i32 %186)
  br label %187

187:                                              ; preds = %180, %179
  %188 = load float*, float** %16, align 8
  %189 = icmp ne float* %188, null
  br i1 %189, label %190, label %203

190:                                              ; preds = %187
  %191 = load i32, i32* %11, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %192
  %194 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %193, i32 0, i32 4
  %195 = load float, float* %194, align 4
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %197
  %199 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %198, i32 0, i32 2
  %200 = load float, float* %199, align 4
  %201 = fsub float %195, %200
  %202 = load float*, float** %16, align 8
  store float %201, float* %202, align 4
  br label %203

203:                                              ; preds = %190, %187
  store i32 5, i32* %19, align 4
  br label %211

204:                                              ; preds = %62
  %205 = load i32, i32* %9, align 4
  %206 = sdiv i32 %205, 20
  %207 = sub nsw i32 %206, 1
  %208 = load i32, i32* %9, align 4
  %209 = srem i32 %208, 20
  %210 = sub nsw i32 %209, 1
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1493, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 %207, i32 %210)
  br label %211

211:                                              ; preds = %204, %203, %170, %142, %125, %108, %91
  %212 = load i32, i32* %13, align 4
  %213 = icmp eq i32 %212, 60
  br i1 %213, label %214, label %219

214:                                              ; preds = %211
  %215 = load i32, i32* %12, align 4
  %216 = load i8*, i8** %14, align 8
  %217 = load float*, float** %15, align 8
  %218 = load i8, i8* %18, align 1
  call void @mark_changed_string(i32 %215, i8* %216, float* %217, i8 signext %218)
  br label %297

219:                                              ; preds = %211
  %220 = load i32, i32* %11, align 4
  %221 = call i32 @first_worm_in_dragon(i32 %220)
  store i32 %221, i32* %17, align 4
  br label %222

222:                                              ; preds = %285, %219
  %223 = load i32, i32* %17, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %288

225:                                              ; preds = %222
  %226 = load i8, i8* %18, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %225
  %230 = load i32, i32* %17, align 4
  %231 = load i8*, i8** %14, align 8
  %232 = load float*, float** %15, align 8
  %233 = load i8, i8* %18, align 1
  call void @mark_changed_string(i32 %230, i8* %231, float* %232, i8 signext %233)
  br label %284

234:                                              ; preds = %225
  store i32 0, i32* %20, align 4
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %236
  %238 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %237, i32 0, i32 16
  %239 = getelementptr inbounds [10 x i32], [10 x i32]* %238, i64 0, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %247, label %242

242:                                              ; preds = %234
  %243 = load i32, i32* %9, align 4
  %244 = load i32, i32* %17, align 4
  %245 = call i32 @defense_move_reason_known(i32 %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %242, %234
  store i32 1, i32* %20, align 4
  br label %263

248:                                              ; preds = %242
  %249 = load i32, i32* %9, align 4
  %250 = load i32, i32* %10, align 4
  %251 = load i32, i32* %17, align 4
  %252 = call i32 @trymove(i32 %249, i32 %250, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 %251, i32 0, i32 0)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %248
  %255 = load i32, i32* %17, align 4
  %256 = call i32 @attack(i32 %255, i32* null)
  %257 = sub nsw i32 5, %256
  %258 = load i32, i32* %19, align 4
  %259 = icmp sge i32 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %254
  store i32 1, i32* %20, align 4
  br label %261

261:                                              ; preds = %260, %254
  call void @popgo()
  br label %262

262:                                              ; preds = %261, %248
  br label %263

263:                                              ; preds = %262, %247
  %264 = load i32, i32* %20, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %283

266:                                              ; preds = %263
  %267 = load i32, i32* %17, align 4
  %268 = load i8*, i8** %14, align 8
  %269 = load float*, float** %15, align 8
  %270 = load i8, i8* %18, align 1
  call void @mark_changed_string(i32 %267, i8* %268, float* %269, i8 signext %270)
  %271 = load float*, float** %16, align 8
  %272 = icmp ne float* %271, null
  br i1 %272, label %273, label %282

273:                                              ; preds = %266
  %274 = load i32, i32* %17, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %276, i32 0, i32 2
  %278 = load float, float* %277, align 4
  %279 = load float*, float** %16, align 8
  %280 = load float, float* %279, align 4
  %281 = fadd float %280, %278
  store float %281, float* %279, align 4
  br label %282

282:                                              ; preds = %273, %266
  br label %283

283:                                              ; preds = %282, %263
  br label %284

284:                                              ; preds = %283, %229
  br label %285

285:                                              ; preds = %284
  %286 = load i32, i32* %17, align 4
  %287 = call i32 @next_worm_in_dragon(i32 %286)
  store i32 %287, i32* %17, align 4
  br label %222, !llvm.loop !23

288:                                              ; preds = %222
  %289 = load i32, i32* %13, align 4
  %290 = icmp eq i32 %289, 62
  br i1 %290, label %291, label %296

291:                                              ; preds = %288
  store i8 0, i8* %18, align 1
  %292 = load i32, i32* %12, align 4
  %293 = load i8*, i8** %14, align 8
  %294 = load float*, float** %15, align 8
  %295 = load i8, i8* %18, align 1
  call void @mark_changed_string(i32 %292, i8* %293, float* %294, i8 signext %295)
  br label %296

296:                                              ; preds = %291, %288
  br label %297

297:                                              ; preds = %296, %214
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_changed_string(i32 %0, i8* %1, float* %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i8, align 1
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store float* %2, float** %7, align 8
  store i8 %3, i8* %8, align 1
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %4
  br label %26

25:                                               ; preds = %17
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1540, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.31, i64 0, i64 0), i32 -1, i32 -1)
  br label %26

26:                                               ; preds = %25, %24
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store float 0.000000e+00, float* %9, align 4
  br label %38

31:                                               ; preds = %26
  %32 = load i8, i8* %8, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 1545, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.32, i64 0, i64 0), i32 -1, i32 -1)
  br label %37

37:                                               ; preds = %36, %35
  store float 1.000000e+02, float* %9, align 4
  br label %38

38:                                               ; preds = %37, %30
  store i32 21, i32* %10, align 4
  br label %39

39:                                               ; preds = %71, %38
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 400
  br i1 %41, label %42, label %74

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %47, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %42
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @same_string(i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %54
  %60 = load float, float* %9, align 4
  %61 = load float*, float** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  store float %60, float* %64, align 4
  %65 = load i8, i8* %8, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 %65, i8* %69, align 1
  br label %70

70:                                               ; preds = %59, %54, %42
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %39, !llvm.loop !24

74:                                               ; preds = %39
  ret void
}

declare dso_local i32 @first_worm_in_dragon(i32) #1

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local void @popgo() #1

declare dso_local i32 @next_worm_in_dragon(i32) #1

declare dso_local i32 @same_string(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_saved_dragons(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %9, i8 0, i64 400, i1 false)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 120
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.move_data, %struct.move_data* %16, i32 0, i32 18
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [120 x i32], [120 x i32]* %17, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  br label %54

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %50

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @first_worm_in_dragon(i32 %38)
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %46, %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %8, align 4
  %45 = load i8*, i8** %4, align 8
  call void @mark_string(i32 %44, i8* %45, i8 signext 1)
  br label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @next_worm_in_dragon(i32 %47)
  store i32 %48, i32* %8, align 4
  br label %40, !llvm.loop !25

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %25
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %10, !llvm.loop !26

54:                                               ; preds = %24, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mark_safe_stones(i32 %0, i32 %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  store i32 21, i32* %11, align 4
  br label %12

12:                                               ; preds = %140, %5
  %13 = load i32, i32* %11, align 4
  %14 = icmp slt i32 %13, 400
  br i1 %14, label %15, label %143

15:                                               ; preds = %12
  %16 = load i32, i32* %11, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %6, align 4
  %22 = sub nsw i32 3, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %15
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %27, i32 0, i32 16
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %34, i32 0, i32 16
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %42, i32 0, i32 18
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %43, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %39, %24
  %48 = load i8*, i8** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  br label %57

52:                                               ; preds = %39, %31
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* %11, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 1, i8* %56, align 1
  br label %57

57:                                               ; preds = %52, %47
  br label %139

58:                                               ; preds = %15
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %133

66:                                               ; preds = %58
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %69, i32 0, i32 16
  %71 = getelementptr inbounds [10 x i32], [10 x i32]* %70, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %66
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %77, i32 0, i32 18
  %79 = getelementptr inbounds [10 x i32], [10 x i32]* %78, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %96, label %82

82:                                               ; preds = %74
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %82, %66
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %92, i32 0, i32 16
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %89, %82, %74
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 0, i8* %100, align 1
  br label %132

101:                                              ; preds = %89
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = icmp ne i8 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  store i8 2, i8* %112, align 1
  br label %131

113:                                              ; preds = %101
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %116, i32 0, i32 16
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %125

120:                                              ; preds = %113
  %121 = load i8*, i8** %10, align 8
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  store i8 0, i8* %124, align 1
  br label %130

125:                                              ; preds = %113
  %126 = load i8*, i8** %10, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 1, i8* %129, align 1
  br label %130

130:                                              ; preds = %125, %120
  br label %131

131:                                              ; preds = %130, %108
  br label %132

132:                                              ; preds = %131, %96
  br label %138

133:                                              ; preds = %58
  %134 = load i8*, i8** %10, align 8
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %133, %132
  br label %139

139:                                              ; preds = %138, %57
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  br label %12, !llvm.loop !27

143:                                              ; preds = %12
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.move_data, %struct.move_data* %146, i32 0, i32 19
  %148 = load i32, i32* %147, align 4
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %10, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  store i8 %149, i8* %153, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @list_move_reasons(i32 %0) #0 {
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
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %551, %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @board_size, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %554

20:                                               ; preds = %16
  %21 = load i32, i32* @board_size, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %547, %20
  %24 = load i32, i32* %3, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %550

26:                                               ; preds = %23
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 20
  %29 = add nsw i32 21, %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %530, %26
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 120
  br i1 %34, label %35, label %533

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.move_data, %struct.move_data* %38, i32 0, i32 18
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [120 x i32], [120 x i32]* %39, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %533

47:                                               ; preds = %35
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %529 [
    i32 2, label %53
    i32 4, label %71
    i32 6, label %89
    i32 8, label %107
    i32 10, label %116
    i32 12, label %125
    i32 3, label %134
    i32 9, label %134
    i32 42, label %163
    i32 14, label %185
    i32 16, label %185
    i32 70, label %219
    i32 18, label %222
    i32 19, label %231
    i32 54, label %240
    i32 100, label %268
    i32 102, label %317
    i32 26, label %366
    i32 28, label %375
    i32 30, label %384
    i32 60, label %393
    i32 32, label %416
    i32 34, label %425
    i32 36, label %434
    i32 62, label %443
    i32 27, label %466
    i32 33, label %475
    i32 38, label %484
    i32 20, label %493
    i32 22, label %496
    i32 24, label %499
    i32 44, label %502
    i32 46, label %502
    i32 50, label %523
    i32 52, label %526
  ]

53:                                               ; preds = %47
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %63, i32 0, i32 18
  %65 = getelementptr inbounds [10 x i32], [10 x i32]* %64, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %70 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0), i32 %59, i32 %60, i8* %69)
  br label %529

71:                                               ; preds = %47
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %81, i32 0, i32 18
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %82, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %88 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.37, i64 0, i64 0), i32 %77, i32 %78, i8* %87)
  br label %529

89:                                               ; preds = %47
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %99, i32 0, i32 18
  %101 = getelementptr inbounds [10 x i32], [10 x i32]* %100, i64 0, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.36, i64 0, i64 0)
  %106 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i32 %95, i32 %96, i8* %105)
  br label %529

107:                                              ; preds = %47
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.39, i64 0, i64 0), i32 %113, i32 %114)
  br label %529

116:                                              ; preds = %47
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), i32 %122, i32 %123)
  br label %529

125:                                              ; preds = %47
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.41, i64 0, i64 0), i32 %131, i32 %132)
  br label %529

134:                                              ; preds = %47, %47
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 3
  br i1 %145, label %146, label %150

146:                                              ; preds = %134
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %9, align 4
  %149 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0), i32 %147, i32 %148)
  br label %162

150:                                              ; preds = %134
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %152
  %154 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 9
  br i1 %156, label %157, label %161

157:                                              ; preds = %150
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.43, i64 0, i64 0), i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %150
  br label %162

162:                                              ; preds = %161, %146
  br label %529

163:                                              ; preds = %47
  %164 = load i32, i32* %14, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %9, align 4
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = load i32, i32* %2, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %163
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %5, align 4
  %179 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.44, i64 0, i64 0), i32 %177, i32 %178)
  br label %184

180:                                              ; preds = %163
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %5, align 4
  %183 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %176
  br label %529

185:                                              ; preds = %47, %47
  %186 = load i32, i32* %14, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %195
  %197 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm2, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 14
  br i1 %207, label %208, label %213

208:                                              ; preds = %185
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* %12, align 4
  %212 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i64 0, i64 0), i32 %209, i32 %210, i32 %211)
  br label %218

213:                                              ; preds = %185
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* %11, align 4
  %216 = load i32, i32* %12, align 4
  %217 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i64 0, i64 0), i32 %214, i32 %215, i32 %216)
  br label %218

218:                                              ; preds = %213, %208
  br label %529

219:                                              ; preds = %47
  %220 = load i32, i32* %5, align 4
  %221 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 %220)
  br label %529

222:                                              ; preds = %47
  %223 = load i32, i32* %14, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %224
  %226 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %5, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i64 0, i64 0), i32 %228, i32 %229)
  br label %529

231:                                              ; preds = %47
  %232 = load i32, i32* %14, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %5, align 4
  %238 = load i32, i32* %9, align 4
  %239 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.50, i64 0, i64 0), i32 %237, i32 %238)
  br label %529

240:                                              ; preds = %47
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %242
  %244 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [180 x i32], [180 x i32]* @eyes, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  store i32 %248, i32* %9, align 4
  %249 = load i32, i32* %14, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %250
  %252 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [180 x i32], [180 x i32]* @eyecolor, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %13, align 4
  %257 = load i32, i32* %13, align 4
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %259, label %263

259:                                              ; preds = %240
  %260 = load i32, i32* %5, align 4
  %261 = load i32, i32* %9, align 4
  %262 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 %260, i32 %261)
  br label %267

263:                                              ; preds = %240
  %264 = load i32, i32* %5, align 4
  %265 = load i32, i32* %9, align 4
  %266 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.51, i64 0, i64 0), i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %263, %259
  br label %529

268:                                              ; preds = %47
  %269 = load i32, i32* %14, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %270
  %272 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %274
  %276 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 16
  store i32 %277, i32* %7, align 4
  %278 = load i32, i32* %14, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %283
  %285 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  store i32 %286, i32* %8, align 4
  %287 = load i32, i32* %14, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %288
  %290 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %292
  %294 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %11, align 4
  %296 = load i32, i32* %14, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %297
  %299 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %301
  %303 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %12, align 4
  %305 = load i32, i32* %5, align 4
  %306 = load i32, i32* %7, align 4
  %307 = icmp eq i32 %306, 1
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0)
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* %8, align 4
  %312 = icmp eq i32 %311, 1
  %313 = zext i1 %312 to i64
  %314 = select i1 %312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0)
  %315 = load i32, i32* %12, align 4
  %316 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.52, i64 0, i64 0), i32 %305, i8* %309, i32 %310, i8* %314, i32 %315)
  br label %529

317:                                              ; preds = %47
  %318 = load i32, i32* %14, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %319
  %321 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %323
  %325 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 16
  store i32 %326, i32* %7, align 4
  %327 = load i32, i32* %14, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %328
  %330 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %332
  %334 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %333, i32 0, i32 2
  %335 = load i32, i32* %334, align 8
  store i32 %335, i32* %8, align 4
  %336 = load i32, i32* %14, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %337
  %339 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %341
  %343 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %11, align 4
  %345 = load i32, i32* %14, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %346
  %348 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %350
  %352 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %351, i32 0, i32 3
  %353 = load i32, i32* %352, align 4
  store i32 %353, i32* %12, align 4
  %354 = load i32, i32* %5, align 4
  %355 = load i32, i32* %7, align 4
  %356 = icmp eq i32 %355, 1
  %357 = zext i1 %356 to i64
  %358 = select i1 %356, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0)
  %359 = load i32, i32* %11, align 4
  %360 = load i32, i32* %8, align 4
  %361 = icmp eq i32 %360, 1
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0)
  %364 = load i32, i32* %12, align 4
  %365 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i64 0, i64 0), i32 %354, i8* %358, i32 %359, i8* %363, i32 %364)
  br label %529

366:                                              ; preds = %47
  %367 = load i32, i32* %14, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %368
  %370 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  store i32 %371, i32* %9, align 4
  %372 = load i32, i32* %5, align 4
  %373 = load i32, i32* %9, align 4
  %374 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i64 0, i64 0), i32 %372, i32 %373)
  br label %529

375:                                              ; preds = %47
  %376 = load i32, i32* %14, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %377
  %379 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 4
  store i32 %380, i32* %9, align 4
  %381 = load i32, i32* %5, align 4
  %382 = load i32, i32* %9, align 4
  %383 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i64 0, i64 0), i32 %381, i32 %382)
  br label %529

384:                                              ; preds = %47
  %385 = load i32, i32* %14, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %386
  %388 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  store i32 %389, i32* %9, align 4
  %390 = load i32, i32* %5, align 4
  %391 = load i32, i32* %9, align 4
  %392 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.58, i64 0, i64 0), i32 %390, i32 %391)
  br label %529

393:                                              ; preds = %47
  %394 = load i32, i32* %14, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %395
  %397 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %399
  %401 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  store i32 %402, i32* %9, align 4
  %403 = load i32, i32* %14, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %404
  %406 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %408
  %410 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 4
  store i32 %411, i32* %10, align 4
  %412 = load i32, i32* %5, align 4
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* %10, align 4
  %415 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.59, i64 0, i64 0), i32 %412, i32 %413, i32 %414)
  br label %529

416:                                              ; preds = %47
  %417 = load i32, i32* %14, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %418
  %420 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* %9, align 4
  %422 = load i32, i32* %5, align 4
  %423 = load i32, i32* %9, align 4
  %424 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.60, i64 0, i64 0), i32 %422, i32 %423)
  br label %529

425:                                              ; preds = %47
  %426 = load i32, i32* %14, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %427
  %429 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  store i32 %430, i32* %9, align 4
  %431 = load i32, i32* %5, align 4
  %432 = load i32, i32* %9, align 4
  %433 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.61, i64 0, i64 0), i32 %431, i32 %432)
  br label %529

434:                                              ; preds = %47
  %435 = load i32, i32* %14, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %436
  %438 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %437, i32 0, i32 1
  %439 = load i32, i32* %438, align 4
  store i32 %439, i32* %9, align 4
  %440 = load i32, i32* %5, align 4
  %441 = load i32, i32* %9, align 4
  %442 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.62, i64 0, i64 0), i32 %440, i32 %441)
  br label %529

443:                                              ; preds = %47
  %444 = load i32, i32* %14, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %445
  %447 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %446, i32 0, i32 1
  %448 = load i32, i32* %447, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %449
  %451 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %450, i32 0, i32 1
  %452 = load i32, i32* %451, align 4
  store i32 %452, i32* %9, align 4
  %453 = load i32, i32* %14, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %454
  %456 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %458
  %460 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %459, i32 0, i32 3
  %461 = load i32, i32* %460, align 4
  store i32 %461, i32* %10, align 4
  %462 = load i32, i32* %5, align 4
  %463 = load i32, i32* %9, align 4
  %464 = load i32, i32* %10, align 4
  %465 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.63, i64 0, i64 0), i32 %462, i32 %463, i32 %464)
  br label %529

466:                                              ; preds = %47
  %467 = load i32, i32* %14, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %468
  %470 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  store i32 %471, i32* %9, align 4
  %472 = load i32, i32* %5, align 4
  %473 = load i32, i32* %9, align 4
  %474 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.64, i64 0, i64 0), i32 %472, i32 %473)
  br label %529

475:                                              ; preds = %47
  %476 = load i32, i32* %14, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %477
  %479 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  store i32 %480, i32* %9, align 4
  %481 = load i32, i32* %5, align 4
  %482 = load i32, i32* %9, align 4
  %483 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.65, i64 0, i64 0), i32 %481, i32 %482)
  br label %529

484:                                              ; preds = %47
  %485 = load i32, i32* %14, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %486
  %488 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 4
  store i32 %489, i32* %9, align 4
  %490 = load i32, i32* %5, align 4
  %491 = load i32, i32* %9, align 4
  %492 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.66, i64 0, i64 0), i32 %490, i32 %491)
  br label %529

493:                                              ; preds = %47
  %494 = load i32, i32* %5, align 4
  %495 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.67, i64 0, i64 0), i32 %494)
  br label %529

496:                                              ; preds = %47
  %497 = load i32, i32* %5, align 4
  %498 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.68, i64 0, i64 0), i32 %497)
  br label %529

499:                                              ; preds = %47
  %500 = load i32, i32* %5, align 4
  %501 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.69, i64 0, i64 0), i32 %500)
  br label %529

502:                                              ; preds = %47, %47
  %503 = load i32, i32* %14, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %504
  %506 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %505, i32 0, i32 1
  %507 = load i32, i32* %506, align 4
  store i32 %507, i32* %9, align 4
  %508 = load i32, i32* %14, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %509
  %511 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = icmp eq i32 %512, 44
  br i1 %513, label %514, label %518

514:                                              ; preds = %502
  %515 = load i32, i32* %5, align 4
  %516 = load i32, i32* %9, align 4
  %517 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.70, i64 0, i64 0), i32 %515, i32 %516)
  br label %522

518:                                              ; preds = %502
  %519 = load i32, i32* %5, align 4
  %520 = load i32, i32* %9, align 4
  %521 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.71, i64 0, i64 0), i32 %519, i32 %520)
  br label %522

522:                                              ; preds = %518, %514
  br label %529

523:                                              ; preds = %47
  %524 = load i32, i32* %5, align 4
  %525 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.72, i64 0, i64 0), i32 %524)
  br label %526

526:                                              ; preds = %47, %523
  %527 = load i32, i32* %5, align 4
  %528 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.73, i64 0, i64 0), i32 %527)
  br label %529

529:                                              ; preds = %526, %47, %522, %499, %496, %493, %484, %475, %466, %443, %434, %425, %416, %393, %384, %375, %366, %317, %268, %267, %231, %222, %219, %218, %184, %162, %125, %116, %107, %89, %71, %53
  br label %530

530:                                              ; preds = %529
  %531 = load i32, i32* %6, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %6, align 4
  br label %32, !llvm.loop !28

533:                                              ; preds = %46, %32
  %534 = load i32, i32* %6, align 4
  %535 = icmp sgt i32 %534, 0
  br i1 %535, label %536, label %546

536:                                              ; preds = %533
  %537 = load i32, i32* %5, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %538
  %540 = getelementptr inbounds %struct.move_data, %struct.move_data* %539, i32 0, i32 19
  %541 = load i32, i32* %540, align 4
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %546

543:                                              ; preds = %536
  %544 = load i32, i32* %5, align 4
  %545 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.74, i64 0, i64 0), i32 %544)
  br label %546

546:                                              ; preds = %543, %536, %533
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* %3, align 4
  %549 = add nsw i32 %548, -1
  store i32 %549, i32* %3, align 4
  br label %23, !llvm.loop !29

550:                                              ; preds = %23
  br label %551

551:                                              ; preds = %550
  %552 = load i32, i32* %4, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %4, align 4
  br label %16, !llvm.loop !30

554:                                              ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @discard_redundant_move_reasons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %118, %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* bitcast (<{ { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, [119 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } }>* @discard_rules to [9 x %struct.discard_rule]*), i64 0, i64 %9
  %11 = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %10, i32 0, i32 0
  %12 = getelementptr inbounds [120 x i32], [120 x i32]* %11, i64 0, i64 0
  %13 = load i32, i32* %12, align 16
  %14 = icmp eq i32 %13, -1
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %121

16:                                               ; preds = %7
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %114, %16
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* bitcast (<{ { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, [119 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } }>* @discard_rules to [9 x %struct.discard_rule]*), i64 0, i64 %19
  %21 = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [120 x i32], [120 x i32]* %21, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, -1
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %117

28:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %110, %28
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 120
  br i1 %31, label %32, label %113

32:                                               ; preds = %29
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.move_data, %struct.move_data* %35, i32 0, i32 18
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [120 x i32], [120 x i32]* %36, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %113

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* bitcast (<{ { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, [119 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } }>* @discard_rules to [9 x %struct.discard_rule]*), i64 0, i64 %51
  %53 = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %52, i32 0, i32 0
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [120 x i32], [120 x i32]* %53, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %49, %57
  br i1 %58, label %59, label %109

59:                                               ; preds = %44
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* bitcast (<{ { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, [119 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } }>* @discard_rules to [9 x %struct.discard_rule]*), i64 0, i64 %61
  %63 = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %62, i32 0, i32 1
  %64 = load i32 (i32, i32)*, i32 (i32, i32)** %63, align 16
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 %64(i32 %65, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %109

73:                                               ; preds = %59
  %74 = load i32, i32* @debug, align 4
  %75 = and i32 %74, 2048
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %97

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* bitcast (<{ { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, [119 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } }>* @discard_rules to [9 x %struct.discard_rule]*), i64 0, i64 %80
  %82 = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %81, i32 0, i32 3
  %83 = getelementptr inbounds [160 x i8], [160 x i8]* %82, i64 0, i64 0
  %84 = load i32, i32* %2, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @get_pos(i32 %89, i32 %94)
  %96 = call i32 (i8*, ...) @gprintf(i8* %83, i32 %84, i32 %95)
  br label %97

97:                                               ; preds = %78, %77
  %98 = load i32, i32* %3, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [9 x %struct.discard_rule], [9 x %struct.discard_rule]* bitcast (<{ { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, [117 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, [118 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ [9 x i32], [111 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, i32, i32, i32, i32, i32, i32, [113 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] }, { <{ i32, [119 x i32] }>, i32 (i32, i32)*, i32, [160 x i8] } }>* @discard_rules to [9 x %struct.discard_rule]*), i64 0, i64 %99
  %101 = getelementptr inbounds %struct.discard_rule, %struct.discard_rule* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %97, %59, %44
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %29, !llvm.loop !31

113:                                              ; preds = %43, %29
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %17, !llvm.loop !32

117:                                              ; preds = %17
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %7, !llvm.loop !33

121:                                              ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pos(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %35 [
    i32 2, label %7
    i32 8, label %7
    i32 3, label %7
    i32 9, label %7
    i32 4, label %7
    i32 6, label %7
    i32 10, label %7
    i32 12, label %7
    i32 18, label %9
    i32 19, label %9
    i32 54, label %9
    i32 44, label %9
    i32 46, label %9
    i32 26, label %9
    i32 32, label %9
    i32 27, label %9
    i32 33, label %9
    i32 38, label %9
    i32 40, label %9
    i32 42, label %9
    i32 28, label %9
    i32 30, label %9
    i32 34, label %9
    i32 36, label %9
    i32 100, label %11
    i32 102, label %17
    i32 14, label %23
    i32 16, label %23
    i32 70, label %28
    i32 20, label %28
    i32 22, label %28
    i32 24, label %28
    i32 50, label %28
    i32 52, label %28
    i32 60, label %29
    i32 62, label %29
  ]

7:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* %3, align 4
  br label %36

9:                                                ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %3, align 4
  br label %36

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %2, %2
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [962 x i32], [962 x i32]* @conn_worm1, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %2, %2, %2, %2, %2, %2
  store i32 0, i32* %3, align 4
  br label %36

29:                                               ; preds = %2, %2
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  call void @abortgo(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 322, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0), i32 -1, i32 -1)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %29, %28, %23, %17, %11, %9, %7
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_antisuji_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 120
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.move_data, %struct.move_data* %12, i32 0, i32 18
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [120 x i32], [120 x i32]* %13, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %33

21:                                               ; preds = %9
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [1000 x %struct.move_reason], [1000 x %struct.move_reason]* @move_reasons, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.move_reason, %struct.move_reason* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 70
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %34

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %6, !llvm.loop !34

33:                                               ; preds = %20, %6
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scale_randomness(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.move_data, %struct.move_data* %8, i32 0, i32 17
  %10 = load float, float* %9, align 4
  %11 = fcmp ogt float %5, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load float, float* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.move_data, %struct.move_data* %16, i32 0, i32 17
  store float %13, float* %17, align 4
  br label %18

18:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_move_vs_worm_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @owl_move_reason_known(i32 %5, i32 %10)
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tactical_move_vs_whole_dragon_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @attack_move_reason_known(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @defense_move_reason_known(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i1 [ true, %16 ], [ %25, %21 ]
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi i1 [ false, %2 ], [ %27, %26 ]
  %30 = zext i1 %29 to i32
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @either_worm_attackable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %45

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %26, i32 0, i32 16
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @either_data, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %38, i32 0, i32 16
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %39, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %31, %19
  %44 = phi i1 [ true, %19 ], [ %42, %31 ]
  br label %45

45:                                               ; preds = %43, %12, %2
  %46 = phi i1 [ false, %12 ], [ false, %2 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one_of_both_attackable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 16
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %45

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %19, label %45

19:                                               ; preds = %12
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %26, i32 0, i32 16
  %28 = getelementptr inbounds [10 x i32], [10 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [100 x %struct.Reason_set], [100 x %struct.Reason_set]* @all_data, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.Reason_set, %struct.Reason_set* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %38, i32 0, i32 16
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* %39, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %31, %19
  %44 = phi i1 [ true, %19 ], [ %42, %31 ]
  br label %45

45:                                               ; preds = %43, %12, %2
  %46 = phi i1 [ false, %12 ], [ false, %2 ], [ %44, %43 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concerns_inessential_worm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %6, i64 %12
  %14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %20, i32 0, i32 12
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %17, %2
  %25 = phi i1 [ true, %2 ], [ %23, %17 ]
  %26 = zext i1 %25 to i32
  ret i32 %26
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @concerns_inessential_dragon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %6, i64 %12
  %14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 5
  %17 = zext i1 %16 to i32
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_is_marked_unsafe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.move_data], [400 x %struct.move_data]* @move, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.move_data, %struct.move_data* %8, i32 0, i32 19
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  ret i32 %13
}

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
