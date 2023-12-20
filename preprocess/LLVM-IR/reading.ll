; ModuleID = 'reading.c'
source_filename = "reading.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.read_result_t = type { i32, i32, %struct.read_result_t* }
%struct.reading_moves = type { [50 x i32], [50 x i32], i32 }

@reading_node_counter = internal global i32 0, align 4
@nodes_when_called = internal global i32 0, align 4
@shadow = external dso_local global [400 x i8], align 16
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [38 x i8] c"%oattack %1m(%1m) = %d %1M, %d nodes \00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"%oattack %1m(%1m) = %d, %d nodes \00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%odefend %1m(%1m) = %d %1M, %d nodes \00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"%odefend %1m(%1m) = %d, %d nodes \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"reading.c\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"!(acode != 0 && dcode == WIN && dpos == NO_MOVE)\00", align 1
@board = external dso_local global [421 x i8], align 16
@.str.6 = private unnamed_addr constant [16 x i8] c"IS_STONE(color)\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"color == board[bstr]\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"attack_either-A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"attack_either-B\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"defend_both-A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"defend_both-B\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"defend_both-C\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"color == board[bpos]\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"color == board[cpos]\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"board[dpos] == EMPTY\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"board[epos] == EMPTY\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"board[Fpos] == other\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"break_through-A\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"break_through-B\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"break_through-C\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[str])\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"attack_threats-A\00", align 1
@delta = external dso_local global [8 x i32], align 16
@.str.23 = private unnamed_addr constant [17 x i8] c"attack_threats-B\00", align 1
@stackp = external dso_local global i32, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str.24 = private unnamed_addr constant [17 x i8] c"attack_threats-C\00", align 1
@defend_lib_score = internal global [6 x i32] [i32 -5, i32 -4, i32 0, i32 3, i32 5, i32 50], align 16
@defend_not_adjacent_lib_score = internal global [5 x i32] [i32 0, i32 0, i32 2, i32 3, i32 5], align 16
@defend_capture_score = internal global [6 x i32] [i32 0, i32 6, i32 9, i32 13, i32 18, i32 24], align 16
@defend_atari_score = internal global [6 x i32] [i32 0, i32 2, i32 4, i32 6, i32 7, i32 8], align 16
@defend_save_score = internal global [6 x i32] [i32 0, i32 3, i32 6, i32 8, i32 10, i32 12], align 16
@defend_open_score = internal global [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@attack_own_lib_score = internal global [5 x i32] [i32 10, i32 -4, i32 2, i32 3, i32 4], align 16
@attack_string_lib_score = internal global [6 x i32] [i32 -5, i32 2, i32 3, i32 7, i32 10, i32 19], align 16
@attack_capture_score = internal global [6 x i32] [i32 -4, i32 4, i32 10, i32 15, i32 20, i32 25], align 16
@attack_save_score = internal global [6 x i32] [i32 0, i32 10, i32 13, i32 18, i32 21, i32 24], align 16
@attack_open_score = internal global [5 x i32] [i32 0, i32 0, i32 2, i32 4, i32 4], align 16
@defend_not_edge_score = internal global i32 5, align 4
@attack_not_edge_score = internal global i32 1, align 4
@attack_ko_score = internal global i32 -15, align 4
@cannot_defend_penalty = internal global i32 -20, align 4
@safe_atari_score = internal global i32 8, align 4
@verbose = external dso_local global i32, align 4
@.str.25 = private unnamed_addr constant [73 x i8] c"static int defend_lib_score[6]              = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.26 = private unnamed_addr constant [69 x i8] c"static int defend_not_adjacent_lib_score[5] = {%d, %d, %d, %d, %d};\0A\00", align 1
@.str.27 = private unnamed_addr constant [73 x i8] c"static int defend_capture_score[6]          = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.28 = private unnamed_addr constant [73 x i8] c"static int defend_atari_score[6]            = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.29 = private unnamed_addr constant [73 x i8] c"static int defend_save_score[6]             = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.30 = private unnamed_addr constant [69 x i8] c"static int defend_open_score[5]             = {%d, %d, %d, %d, %d};\0A\00", align 1
@.str.31 = private unnamed_addr constant [69 x i8] c"static int attack_own_lib_score[5]          = {%d, %d, %d, %d, %d};\0A\00", align 1
@.str.32 = private unnamed_addr constant [73 x i8] c"static int attack_string_lib_score[6]       = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.33 = private unnamed_addr constant [73 x i8] c"static int attack_capture_score[6]          = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.34 = private unnamed_addr constant [73 x i8] c"static int attack_save_score[6]             = {%d, %d, %d, %d, %d, %d};\0A\00", align 1
@.str.35 = private unnamed_addr constant [69 x i8] c"static int attack_open_score[5]             = {%d, %d, %d, %d, %d};\0A\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"static int defend_not_edge_score            = %d;\0A\00", align 1
@.str.37 = private unnamed_addr constant [51 x i8] c"static int attack_not_edge_score            = %d;\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"static int attack_ko_score                  = %d;\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"static int cannot_defend_penalty            = %d;\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"static int safe_atari_score                 = %d;\0A\00", align 1
@safe_move.initialized = internal global i32 0, align 4
@safe_move_cache_when = internal global [400 x [2 x i32]] zeroinitializer, align 16
@position_number = external dso_local global i32, align 4
@safe_move_cache = internal global [400 x [2 x i32]] zeroinitializer, align 16
@.str.41 = private unnamed_addr constant [12 x i8] c"safe_move-A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"safe_move-B\00", align 1
@board_size = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.43 = private unnamed_addr constant [5 x i8] c"\0A%2d\00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@rgoal = dso_local global i8* null, align 8
@goallib = dso_local global i32 0, align 4
@.str.46 = private unnamed_addr constant [23 x i8] c"break_through_helper-A\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"break_through_helper-E\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"break_through_helper-F\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"break_through_helper-G\00", align 1
@.str.50 = private unnamed_addr constant [23 x i8] c"break_through_helper-B\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"break_through_helper-C\00", align 1
@.str.52 = private unnamed_addr constant [23 x i8] c"break_through_helper-D\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"find_defense\00", align 1
@fourlib_depth = external dso_local global i32, align 4
@depth = external dso_local global i32, align 4
@sgf_dumptree = external dso_local global %struct.SGFTree_t*, align 8
@.str.54 = private unnamed_addr constant [37 x i8] c"too many liberties or stackp > depth\00", align 1
@hashflags = external dso_local global i32, align 4
@.str.55 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"defend1\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"countlib(str) == 1\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"liberties == 1\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"defend1-A\00", align 1
@ko_depth = external dso_local global i32, align 4
@.str.60 = private unnamed_addr constant [22 x i8] c"defense effective - A\00", align 1
@backfill_depth = external dso_local global i32, align 4
@.str.61 = private unnamed_addr constant [10 x i8] c"defend1-C\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"backfilling\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"saved move\00", align 1
@.str.64 = private unnamed_addr constant [17 x i8] c"number_open <= 4\00", align 1
@.str.65 = private unnamed_addr constant [22 x i8] c"Move order for %s: %n\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"%c%d (%d) %n\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"defend2\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"((board[str]) == 1 || (board[str]) == 2)\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"countlib(str) == 2\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"liberties == 2\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"defend2-A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"defend2-B\00", align 1
@.str.73 = private unnamed_addr constant [22 x i8] c"defense effective - B\00", align 1
@superstring_depth = external dso_local global i32, align 4
@backfill2_depth = external dso_local global i32, align 4
@.str.74 = private unnamed_addr constant [10 x i8] c"defend2-E\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"countlib(adj) == 2\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"liberties == 2 || liberties == 3\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"defend3\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"countlib(str) == 3\00", align 1
@.str.79 = private unnamed_addr constant [15 x i8] c"liberties == 3\00", align 1
@branch_depth = external dso_local global i32, align 4
@.str.80 = private unnamed_addr constant [10 x i8] c"defend3-A\00", align 1
@level = external dso_local global i32, align 4
@.str.81 = private unnamed_addr constant [10 x i8] c"defend3-E\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"num_libs <= 4\00", align 1
@.str.83 = private unnamed_addr constant [33 x i8] c"liberties == 3 || liberties == 4\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"defend4\00", align 1
@.str.85 = private unnamed_addr constant [19 x i8] c"countlib(str) == 4\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"liberties == 4\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"defend4-A\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"attack\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"color != 0\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"got 4 liberties (stackp:%d>%d)\00", align 1
@.str.91 = private unnamed_addr constant [29 x i8] c"result >= 0 && result <= WIN\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"attack1\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"attack1-A\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"attack1-B\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"attack1-C\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"attack2\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"attack2-A\00", align 1
@.str.98 = private unnamed_addr constant [17 x i8] c"attack effective\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"find cap2\00", align 1
@.str.100 = private unnamed_addr constant [16 x i8] c"special attack2\00", align 1
@.str.101 = private unnamed_addr constant [16 x i8] c"special attack3\00", align 1
@.str.102 = private unnamed_addr constant [16 x i8] c"special attack4\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"attack2-C\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"attack2-D\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"find_cap2\00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c"special_attack2\00", align 1
@.str.107 = private unnamed_addr constant [18 x i8] c"special_attack3-A\00", align 1
@.str.108 = private unnamed_addr constant [18 x i8] c"special_attack3-B\00", align 1
@.str.109 = private unnamed_addr constant [16 x i8] c"special_attack4\00", align 1
@.str.110 = private unnamed_addr constant [8 x i8] c"attack3\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"attack3-A\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"find cap3\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"draw back\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"attack3-C\00", align 1
@.str.115 = private unnamed_addr constant [10 x i8] c"attack3-E\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"attack3-F\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"draw_back\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"attack4\00", align 1
@.str.119 = private unnamed_addr constant [15 x i8] c"stackp > depth\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"attack4-A\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"find cap\00", align 1
@.str.122 = private unnamed_addr constant [21 x i8] c"simple_ladder_attack\00", align 1
@.str.123 = private unnamed_addr constant [21 x i8] c"simple_ladder_defend\00", align 1
@.str.124 = private unnamed_addr constant [18 x i8] c"defense effective\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attack(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @reading_node_counter, align 4
  store i32 %10, i32* @nodes_when_called, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @countlib(i32 %11)
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @find_origin(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @search_persistent_reading_cache(i32 4, i32 %18, i32* %6, i32* %9)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %73

29:                                               ; preds = %15
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([400 x i8], [400 x i8]* @shadow, i64 0, i64 0), i8 0, i64 400, i1 false)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @do_attack(i32 %30, i32* %9, i32 0, i32 0)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @reading_node_counter, align 4
  %33 = load i32, i32* @nodes_when_called, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @debug, align 4
  %36 = and i32 %35, 32768
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %61

38:                                               ; preds = %29
  %39 = load i32, i32* @reading_node_counter, align 4
  %40 = load i32, i32* @nodes_when_called, align 4
  %41 = sub nsw i32 %39, %40
  %42 = icmp sge i32 %41, 1000
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  br label %59

53:                                               ; preds = %43
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %53, %46
  call void @dump_stack()
  br label %60

60:                                               ; preds = %59, %38
  br label %61

61:                                               ; preds = %60, %29
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  call void @store_persistent_reading_cache(i32 4, i32 %62, i32 %63, i32 %64, i32 %65)
  %66 = load i32*, i32** %5, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = load i32*, i32** %5, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %68, %61
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %27, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @find_origin(i32) #1

declare dso_local i32 @search_persistent_reading_cache(i32, i32, i32*, i32*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_attack(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %15 = alloca %struct.read_result_t*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [100 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %15, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i64 0, i64 0), i8** %16, align 8
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, 20
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %6, align 4
  %33 = srem i32 %32, 20
  %34 = sub nsw i32 %33, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2298, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i32 %31, i32 %34)
  br label %35

35:                                               ; preds = %28, %27
  %36 = load i32, i32* %10, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %230

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @countlib(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 4
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i32, i32* @stackp, align 4
  %49 = load i32, i32* @fourlib_depth, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %47, %39
  %52 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %53 = icmp ne %struct.SGFTree_t* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %51
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  %56 = load i32, i32* @stackp, align 4
  %57 = load i32, i32* @fourlib_depth, align 4
  %58 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.90, i64 0, i64 0), i32 %56, i32 %57) #4
  %59 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %60 = icmp ne %struct.SGFTree_t* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i8*, i8** %16, align 8
  %63 = load i32, i32* %17, align 4
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %18, i64 0, i64 0
  call void @sgf_trace(i8* %62, i32 %63, i32 0, i32 0, i8* %64)
  br label %65

65:                                               ; preds = %61, %54
  br label %66

66:                                               ; preds = %65, %51
  store i32 0, i32* %5, align 4
  br label %230

67:                                               ; preds = %47, %44
  %68 = load i32, i32* @stackp, align 4
  %69 = load i32, i32* @depth, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %122

71:                                               ; preds = %67
  %72 = load i32, i32* @hashflags, align 4
  %73 = and i32 %72, 32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %122

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @get_read_result(i32 4, i32 %76, i32 %77, i32* %6, %struct.read_result_t** %15)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %121

81:                                               ; preds = %75
  %82 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %83 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = lshr i32 %84, 24
  %86 = and i32 %85, 15
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %81
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %93 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = lshr i32 %94, 10
  %96 = and i32 %95, 1023
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %88
  br label %99

99:                                               ; preds = %98, %81
  %100 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %101 = icmp ne %struct.SGFTree_t* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %99
  %103 = load i8*, i8** %16, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %106 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = lshr i32 %107, 10
  %109 = and i32 %108, 1023
  %110 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %111 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = lshr i32 %112, 24
  %114 = and i32 %113, 15
  call void @sgf_trace(i8* %103, i32 %104, i32 %109, i32 %114, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0))
  br label %115

115:                                              ; preds = %102, %99
  %116 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %117 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = lshr i32 %118, 24
  %120 = and i32 %119, 15
  store i32 %120, i32* %5, align 4
  br label %230

121:                                              ; preds = %75
  br label %122

122:                                              ; preds = %121, %71, %67
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %130

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @attack1(i32 %126, i32* %11, i32 %127, i32 %128)
  store i32 %129, i32* %13, align 4
  br label %168

130:                                              ; preds = %122
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load i32, i32* @stackp, align 4
  %135 = load i32, i32* @depth, align 4
  %136 = add nsw i32 %135, 10
  %137 = icmp sgt i32 %134, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @simple_ladder_attack(i32 %139, i32* %11, i32 %140, i32 %141)
  store i32 %142, i32* %13, align 4
  br label %148

143:                                              ; preds = %133
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @attack2(i32 %144, i32* %11, i32 %145, i32 %146)
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %143, %138
  br label %167

149:                                              ; preds = %130
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @attack3(i32 %153, i32* %11, i32 %154, i32 %155)
  store i32 %156, i32* %13, align 4
  br label %166

157:                                              ; preds = %149
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %158, 4
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %9, align 4
  %164 = call i32 @attack4(i32 %161, i32* %11, i32 %162, i32 %163)
  store i32 %164, i32* %13, align 4
  br label %165

165:                                              ; preds = %160, %157
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %148
  br label %168

168:                                              ; preds = %167, %125
  %169 = load i32, i32* %13, align 4
  %170 = icmp sge i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load i32, i32* %13, align 4
  %173 = icmp sle i32 %172, 5
  br i1 %173, label %174, label %175

174:                                              ; preds = %171
  br label %182

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %6, align 4
  %177 = sdiv i32 %176, 20
  %178 = sub nsw i32 %177, 1
  %179 = load i32, i32* %6, align 4
  %180 = srem i32 %179, 20
  %181 = sub nsw i32 %180, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2348, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.91, i64 0, i64 0), i32 %178, i32 %181)
  br label %182

182:                                              ; preds = %175, %174
  %183 = load i32, i32* %13, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %217

185:                                              ; preds = %182
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %186
  %190 = load i32*, i32** %7, align 8
  %191 = icmp ne i32* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %11, align 4
  %194 = load i32*, i32** %7, align 8
  store i32 %193, i32* %194, align 4
  br label %195

195:                                              ; preds = %192, %189, %186
  %196 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %197 = icmp ne %struct.read_result_t* %196, null
  br i1 %197, label %198, label %214

198:                                              ; preds = %195
  %199 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %200 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 1023
  %203 = or i32 %202, 536870912
  %204 = load i32, i32* %13, align 4
  %205 = and i32 %204, 15
  %206 = shl i32 %205, 24
  %207 = or i32 %203, %206
  %208 = load i32, i32* %11, align 4
  %209 = and i32 %208, 1023
  %210 = shl i32 %209, 10
  %211 = or i32 %207, %210
  %212 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %213 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %212, i32 0, i32 1
  store i32 %211, i32* %213, align 4
  br label %214

214:                                              ; preds = %198, %195
  %215 = load i32, i32* %13, align 4
  store i32 %215, i32* %5, align 4
  br label %230

216:                                              ; No predecessors!
  br label %217

217:                                              ; preds = %216, %182
  br label %218

218:                                              ; preds = %217
  %219 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %220 = icmp ne %struct.read_result_t* %219, null
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %223 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = and i32 %224, 1023
  %226 = or i32 %225, 536870912
  %227 = load %struct.read_result_t*, %struct.read_result_t** %15, align 8
  %228 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %221, %218
  store i32 0, i32* %5, align 4
  br label %230

230:                                              ; preds = %38, %66, %115, %214, %229
  %231 = load i32, i32* %5, align 4
  ret i32 %231
}

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local void @dump_stack() #1

declare dso_local void @store_persistent_reading_cache(i32, i32, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_defense(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @reading_node_counter, align 4
  store i32 %10, i32* @nodes_when_called, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @countlib(i32 %11)
  %13 = icmp sgt i32 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  store i32 5, i32* %3, align 4
  br label %78

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @find_origin(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @search_persistent_reading_cache(i32 3, i32 %23, i32* %6, i32* %9)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %78

34:                                               ; preds = %20
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([400 x i8], [400 x i8]* @shadow, i64 0, i64 0), i8 0, i64 400, i1 false)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @do_find_defense(i32 %35, i32* %9, i32 0, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @reading_node_counter, align 4
  %38 = load i32, i32* @nodes_when_called, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @debug, align 4
  %41 = and i32 %40, 32768
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %34
  %44 = load i32, i32* @reading_node_counter, align 4
  %45 = load i32, i32* @nodes_when_called, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp sge i32 %46, 1000
  br i1 %47, label %48, label %65

48:                                               ; preds = %43
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  br label %64

58:                                               ; preds = %48
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %58, %51
  call void @dump_stack()
  br label %65

65:                                               ; preds = %64, %43
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %7, align 4
  call void @store_persistent_reading_cache(i32 3, i32 %67, i32 %68, i32 %69, i32 %70)
  %71 = load i32*, i32** %5, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %32, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_find_defense(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.read_result_t*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %14, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8** %15, align 8
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @countlib(i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp sgt i32 %20, 4
  br i1 %21, label %36, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @stackp, align 4
  %27 = load i32, i32* @fourlib_depth, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %12, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %48

32:                                               ; preds = %29
  %33 = load i32, i32* @stackp, align 4
  %34 = load i32, i32* @depth, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32, %25, %4
  %37 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %38 = icmp ne %struct.SGFTree_t* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i8*, i8** %15, align 8
  %41 = load i32, i32* %16, align 4
  call void @sgf_trace(i8* %40, i32 %41, i32 0, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.54, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %7, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %42
  store i32 5, i32* %5, align 4
  br label %186

48:                                               ; preds = %32, %29
  %49 = load i32, i32* @stackp, align 4
  %50 = load i32, i32* @depth, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %103

52:                                               ; preds = %48
  %53 = load i32, i32* @hashflags, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %52
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @get_read_result(i32 3, i32 %57, i32 %58, i32* %6, %struct.read_result_t** %14)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %102

62:                                               ; preds = %56
  %63 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %64 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = lshr i32 %65, 24
  %67 = and i32 %66, 15
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load i32*, i32** %7, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %74 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = lshr i32 %75, 10
  %77 = and i32 %76, 1023
  %78 = load i32*, i32** %7, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %72, %69
  br label %80

80:                                               ; preds = %79, %62
  %81 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %82 = icmp ne %struct.SGFTree_t* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %80
  %84 = load i8*, i8** %15, align 8
  %85 = load i32, i32* %16, align 4
  %86 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %87 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = lshr i32 %88, 10
  %90 = and i32 %89, 1023
  %91 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %92 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = lshr i32 %93, 24
  %95 = and i32 %94, 15
  call void @sgf_trace(i8* %84, i32 %85, i32 %90, i32 %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i64 0, i64 0))
  br label %96

96:                                               ; preds = %83, %80
  %97 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %98 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = lshr i32 %99, 24
  %101 = and i32 %100, 15
  store i32 %101, i32* %5, align 4
  br label %186

102:                                              ; preds = %56
  br label %103

103:                                              ; preds = %102, %52, %48
  %104 = load i32, i32* %12, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @defend1(i32 %107, i32* %10, i32 %108, i32 %109)
  store i32 %110, i32* %11, align 4
  br label %138

111:                                              ; preds = %103
  %112 = load i32, i32* %12, align 4
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @defend2(i32 %115, i32* %10, i32 %116, i32 %117)
  store i32 %118, i32* %11, align 4
  br label %137

119:                                              ; preds = %111
  %120 = load i32, i32* %12, align 4
  %121 = icmp eq i32 %120, 3
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* %9, align 4
  %126 = call i32 @defend3(i32 %123, i32* %10, i32 %124, i32 %125)
  store i32 %126, i32* %11, align 4
  br label %136

127:                                              ; preds = %119
  %128 = load i32, i32* %12, align 4
  %129 = icmp eq i32 %128, 4
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @defend4(i32 %131, i32* %10, i32 %132, i32 %133)
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %130, %127
  br label %136

136:                                              ; preds = %135, %122
  br label %137

137:                                              ; preds = %136, %114
  br label %138

138:                                              ; preds = %137, %106
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %173

141:                                              ; preds = %138
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %11, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %142
  %146 = load i32*, i32** %7, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load i32, i32* %10, align 4
  %150 = load i32*, i32** %7, align 8
  store i32 %149, i32* %150, align 4
  br label %151

151:                                              ; preds = %148, %145, %142
  %152 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %153 = icmp ne %struct.read_result_t* %152, null
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %156 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 1023
  %159 = or i32 %158, 536870912
  %160 = load i32, i32* %11, align 4
  %161 = and i32 %160, 15
  %162 = shl i32 %161, 24
  %163 = or i32 %159, %162
  %164 = load i32, i32* %10, align 4
  %165 = and i32 %164, 1023
  %166 = shl i32 %165, 10
  %167 = or i32 %163, %166
  %168 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %169 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %154, %151
  %171 = load i32, i32* %11, align 4
  store i32 %171, i32* %5, align 4
  br label %186

172:                                              ; No predecessors!
  br label %173

173:                                              ; preds = %172, %138
  br label %174

174:                                              ; preds = %173
  %175 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %176 = icmp ne %struct.read_result_t* %175, null
  br i1 %176, label %177, label %185

177:                                              ; preds = %174
  %178 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %179 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 1023
  %182 = or i32 %181, 536870912
  %183 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  %184 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %177, %174
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %47, %96, %170, %185
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attack_and_defend(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @attack(i32 %15, i32* %12)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %5
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @find_defense(i32 %20, i32* %14)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp eq i32 %22, 5
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load i32, i32* %14, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  call void @delete_persistent_reading_cache_entry(i32 4, i32 %28)
  %29 = load i32, i32* %6, align 4
  call void @delete_persistent_reading_cache_entry(i32 3, i32 %29)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @attack(i32 %30, i32* %12)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @find_defense(i32 %35, i32* %14)
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %34, %27
  br label %38

38:                                               ; preds = %37, %24, %19
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* %13, align 4
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %42, %39
  br label %56

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = sdiv i32 %50, 20
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* %6, align 4
  %54 = srem i32 %53, 20
  %55 = sub nsw i32 %54, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 378, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %52, i32 %55)
  br label %56

56:                                               ; preds = %49, %48
  %57 = load i32*, i32** %7, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %56
  %63 = load i32*, i32** %8, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* %12, align 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* %13, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %68
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %83, %80
  %87 = phi i1 [ false, %80 ], [ %85, %83 ]
  %88 = zext i1 %87 to i32
  ret i32 %88
}

declare dso_local void @delete_persistent_reading_cache_entry(i32, i32) #1

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attack_either(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %26

25:                                               ; preds = %22, %2
  br label %33

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = sdiv i32 %27, 20
  %29 = sub nsw i32 %28, 1
  %30 = load i32, i32* %4, align 4
  %31 = srem i32 %30, 20
  %32 = sub nsw i32 %31, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 419, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %29, i32 %32)
  br label %33

33:                                               ; preds = %26, %25
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %49

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = sdiv i32 %43, 20
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %5, align 4
  %47 = srem i32 %46, 20
  %48 = sub nsw i32 %47, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %45, i32 %48)
  br label %49

49:                                               ; preds = %42, %41
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @countlib(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @countlib(i32 %52)
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @attack(i32 %60, i32* null)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 5
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %129

66:                                               ; preds = %59
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @attack(i32 %67, i32* null)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load i32, i32* %6, align 4
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %3, align 4
  br label %129

84:                                               ; preds = %71
  %85 = load i32, i32* %4, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %87 = call i32 @findlib(i32 %85, i32 2, i32* %86)
  store i32 %87, i32* %11, align 4
  store i32 5, i32* %12, align 4
  store i32 5, i32* %13, align 4
  %88 = load i32, i32* %8, align 4
  %89 = sub nsw i32 3, %88
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %92, label %118

92:                                               ; preds = %84
  %93 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @trymove(i32 %94, i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %96, i32 0, i32 0)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @defend_both(i32 %100, i32 %101)
  store i32 %102, i32* %12, align 4
  call void @popgo()
  br label %103

103:                                              ; preds = %99, %92
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %103
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %4, align 4
  %111 = call i32 @trymove(i32 %108, i32 %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %110, i32 0, i32 0)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @defend_both(i32 %114, i32 %115)
  store i32 %116, i32* %13, align 4
  call void @popgo()
  br label %117

117:                                              ; preds = %113, %106, %103
  br label %118

118:                                              ; preds = %117, %84
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* %12, align 4
  br label %126

124:                                              ; preds = %118
  %125 = load i32, i32* %13, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = sub nsw i32 5, %127
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %126, %82, %64
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @findlib(i32, i32, i32*) #1

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defend_both(i32 %0, i32 %1) #0 {
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
  %13 = alloca [160 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca [160 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %2
  br label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 20
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = srem i32 %36, 20
  %38 = sub nsw i32 %37, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 490, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %35, i32 %38)
  br label %39

39:                                               ; preds = %32, %31
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %55

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = sdiv i32 %49, 20
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %5, align 4
  %53 = srem i32 %52, 20
  %54 = sub nsw i32 %53, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 491, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %51, i32 %54)
  br label %55

55:                                               ; preds = %48, %47
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @attack_and_defend(i32 %56, i32* %10, i32* null, i32* %11, i32* %8)
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  store i32 1, i32* %6, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %218

64:                                               ; preds = %60
  br label %65

65:                                               ; preds = %64, %55
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @attack_and_defend(i32 %66, i32* %10, i32* null, i32* %11, i32* %9)
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  store i32 1, i32* %7, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %218

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74, %65
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78, %75
  store i32 5, i32* %3, align 4
  br label %218

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 5, i32* %3, align 4
  br label %218

87:                                               ; preds = %82
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @trymove(i32 %88, i32 %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %90, i32 0, i32 0)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %87
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %93
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @attack(i32 %101, i32* null)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  call void @popgo()
  store i32 5, i32* %3, align 4
  br label %218

105:                                              ; preds = %100, %93
  call void @popgo()
  br label %106

106:                                              ; preds = %105, %87
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @trymove(i32 %107, i32 %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %109, i32 0, i32 0)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @attack(i32 %120, i32* null)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %119
  call void @popgo()
  store i32 5, i32* %3, align 4
  br label %218

124:                                              ; preds = %119, %112
  call void @popgo()
  br label %125

125:                                              ; preds = %124, %106
  %126 = load i32, i32* %4, align 4
  %127 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  %128 = call i32 @chainlinks(i32 %126, i32* %127)
  store i32 %128, i32* %14, align 4
  %129 = load i32, i32* %5, align 4
  %130 = getelementptr inbounds [160 x i32], [160 x i32]* %15, i64 0, i64 0
  %131 = call i32 @chainlinks(i32 %129, i32* %130)
  store i32 %131, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %132

132:                                              ; preds = %214, %125
  %133 = load i32, i32* %17, align 4
  %134 = load i32, i32* %14, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %217

136:                                              ; preds = %132
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %19, align 4
  %141 = load i32, i32* %19, align 4
  %142 = call i32 @countlib(i32 %141)
  %143 = icmp sle i32 %142, 4
  br i1 %143, label %144, label %213

144:                                              ; preds = %136
  %145 = load i32, i32* %19, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %213

148:                                              ; preds = %144
  %149 = load i32, i32* %19, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %213

152:                                              ; preds = %148
  store i32 0, i32* %18, align 4
  br label %153

153:                                              ; preds = %169, %152
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %16, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %172

157:                                              ; preds = %153
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [160 x i32], [160 x i32]* %15, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %17, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %161, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %157
  br label %172

168:                                              ; preds = %157
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %18, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %18, align 4
  br label %153, !llvm.loop !4

172:                                              ; preds = %167, %153
  %173 = load i32, i32* %18, align 4
  %174 = load i32, i32* %16, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %214

177:                                              ; preds = %172
  %178 = load i32, i32* %19, align 4
  %179 = call i32 @attack(i32 %178, i32* %20)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %212

181:                                              ; preds = %177
  %182 = load i32, i32* %20, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @trymove(i32 %182, i32 %183, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %184, i32 0, i32 0)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %211

187:                                              ; preds = %181
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %210

194:                                              ; preds = %187
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %196
  %198 = load i8, i8* %197, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = load i32, i32* %4, align 4
  %203 = call i32 @attack(i32 %202, i32* null)
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @attack(i32 %206, i32* null)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  call void @popgo()
  store i32 5, i32* %3, align 4
  br label %218

210:                                              ; preds = %205, %201, %194, %187
  call void @popgo()
  br label %211

211:                                              ; preds = %210, %181
  br label %212

212:                                              ; preds = %211, %177
  br label %213

213:                                              ; preds = %212, %148, %144, %136
  br label %214

214:                                              ; preds = %213, %176
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  br label %132, !llvm.loop !6

217:                                              ; preds = %132
  store i32 0, i32* %3, align 4
  br label %218

218:                                              ; preds = %217, %209, %123, %104, %86, %81, %73, %63
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local void @popgo() #1

declare dso_local i32 @chainlinks(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @break_through(i32 %0, i32 %1, i32 %2) #0 {
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
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 3, %21
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %3
  br label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = sdiv i32 %30, 20
  %32 = sub nsw i32 %31, 1
  %33 = load i32, i32* %5, align 4
  %34 = srem i32 %33, 20
  %35 = sub nsw i32 %34, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 634, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %32, i32 %35)
  br label %36

36:                                               ; preds = %29, %28
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %52

45:                                               ; preds = %36
  %46 = load i32, i32* %6, align 4
  %47 = sdiv i32 %46, 20
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %6, align 4
  %50 = srem i32 %49, 20
  %51 = sub nsw i32 %50, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 635, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %48, i32 %51)
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %68

61:                                               ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = sdiv i32 %62, 20
  %64 = sub nsw i32 %63, 1
  %65 = load i32, i32* %7, align 4
  %66 = srem i32 %65, 20
  %67 = sub nsw i32 %66, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 636, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %64, i32 %67)
  br label %68

68:                                               ; preds = %61, %60
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %69, %70
  %72 = sdiv i32 %71, 2
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* %12, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %68
  br label %97

90:                                               ; preds = %68
  %91 = load i32, i32* %10, align 4
  %92 = sdiv i32 %91, 20
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %10, align 4
  %95 = srem i32 %94, 20
  %96 = sub nsw i32 %95, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 644, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %93, i32 %96)
  br label %97

97:                                               ; preds = %90, %89
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %112

105:                                              ; preds = %97
  %106 = load i32, i32* %11, align 4
  %107 = sdiv i32 %106, 20
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %11, align 4
  %110 = srem i32 %109, 20
  %111 = sub nsw i32 %110, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %108, i32 %111)
  br label %112

112:                                              ; preds = %105, %104
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %238

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %136

129:                                              ; preds = %120
  %130 = load i32, i32* %12, align 4
  %131 = sdiv i32 %130, 20
  %132 = sub nsw i32 %131, 1
  %133 = load i32, i32* %12, align 4
  %134 = srem i32 %133, 20
  %135 = sub nsw i32 %134, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 653, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i32 %132, i32 %135)
  br label %136

136:                                              ; preds = %129, %128
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @break_through_helper(i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144)
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp eq i32 %146, 5
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  store i32 5, i32* %4, align 4
  br label %238

149:                                              ; preds = %136
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @break_through_helper(i32 %150, i32 %151, i32 %152, i32 %153, i32 %154, i32 %155, i32 %156, i32 %157)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp eq i32 %159, 5
  br i1 %160, label %161, label %162

161:                                              ; preds = %149
  store i32 5, i32* %4, align 4
  br label %238

162:                                              ; preds = %149
  %163 = load i32, i32* %15, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  store i32 2, i32* %14, align 4
  br label %166

166:                                              ; preds = %165, %162
  store i32 0, i32* %15, align 4
  %167 = load i32, i32* %12, align 4
  %168 = call i32 @attack_and_defend(i32 %167, i32* null, i32* null, i32* null, i32* %13)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %231

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @trymove(i32 %171, i32 %172, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %173, i32 0, i32 0)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %230

176:                                              ; preds = %170
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @trymove(i32 %177, i32 %178, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %179, i32 0, i32 0)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %176
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @safe_move(i32 %183, i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %199

187:                                              ; preds = %182
  store i32 2, i32* %15, align 4
  %188 = load i32, i32* %7, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = icmp ne i8 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %187
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @attack(i32 %194, i32* null)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193, %187
  store i32 5, i32* %15, align 4
  br label %198

198:                                              ; preds = %197, %193
  br label %199

199:                                              ; preds = %198, %182
  call void @popgo()
  br label %200

200:                                              ; preds = %199, %176
  %201 = load i32, i32* %15, align 4
  %202 = icmp sgt i32 %201, 0
  br i1 %202, label %203, label %229

203:                                              ; preds = %200
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* %12, align 4
  %207 = call i32 @trymove(i32 %204, i32 %205, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %206, i32 0, i32 0)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %229

209:                                              ; preds = %203
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @safe_move(i32 %210, i32 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %209
  %215 = load i32, i32* %5, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %214
  %222 = load i32, i32* %5, align 4
  %223 = call i32 @attack(i32 %222, i32* null)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %221
  store i32 2, i32* %15, align 4
  br label %226

226:                                              ; preds = %225, %221, %214
  br label %228

227:                                              ; preds = %209
  store i32 0, i32* %15, align 4
  br label %228

228:                                              ; preds = %227, %226
  call void @popgo()
  br label %229

229:                                              ; preds = %228, %203, %200
  call void @popgo()
  br label %230

230:                                              ; preds = %229, %170
  br label %231

231:                                              ; preds = %230, %166
  %232 = load i32, i32* %15, align 4
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %231
  %235 = load i32, i32* %15, align 4
  store i32 %235, i32* %4, align 4
  br label %238

236:                                              ; preds = %231
  %237 = load i32, i32* %14, align 4
  store i32 %237, i32* %4, align 4
  br label %238

238:                                              ; preds = %236, %234, %161, %148, %119
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @break_through_helper(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %17, align 4
  %25 = load i32, i32* %15, align 4
  %26 = call i32 @trymove(i32 %23, i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i32 %25, i32 0, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %197

28:                                               ; preds = %8
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @attack(i32 %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %196, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @attack(i32 %33, i32* %19)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  store i32 2, i32* %18, align 4
  br label %101

37:                                               ; preds = %32
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @trymove(i32 %38, i32 %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.47, i64 0, i64 0), i32 %40, i32 0, i32 0)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @find_defense(i32 %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49, %43
  call void @popgo()
  call void @popgo()
  store i32 0, i32* %9, align 4
  br label %199

54:                                               ; preds = %49
  call void @popgo()
  br label %55

55:                                               ; preds = %54, %37
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @popgo()
  store i32 0, i32* %9, align 4
  br label %199

60:                                               ; preds = %55
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %16, align 4
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @trymove(i32 %61, i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), i32 %63, i32 0, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %100

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @trymove(i32 %67, i32 %68, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0), i32 %69, i32 0, i32 0)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %99

72:                                               ; preds = %66
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @attack(i32 %73, i32* null)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %97, label %76

76:                                               ; preds = %72
  store i32 2, i32* %18, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %76
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @defend_both(i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  call void @popgo()
  call void @popgo()
  call void @popgo()
  store i32 2, i32* %9, align 4
  br label %199

96:                                               ; preds = %90, %83, %76
  br label %98

97:                                               ; preds = %72
  call void @popgo()
  call void @popgo()
  call void @popgo()
  store i32 0, i32* %9, align 4
  br label %199

98:                                               ; preds = %96
  call void @popgo()
  br label %99

99:                                               ; preds = %98, %66
  call void @popgo()
  br label %100

100:                                              ; preds = %99, %60
  br label %101

101:                                              ; preds = %100, %36
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = icmp ne i8 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load i32, i32* %11, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = icmp ne i8 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @defend_both(i32 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113, %107, %101
  store i32 5, i32* %18, align 4
  br label %195

119:                                              ; preds = %113
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %16, align 4
  %122 = load i32, i32* %15, align 4
  %123 = call i32 @trymove(i32 %120, i32 %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.50, i64 0, i64 0), i32 %122, i32 0, i32 0)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %119
  %126 = load i32, i32* %11, align 4
  %127 = call i32 @attack(i32 %126, i32* null)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i32 1, i32* %20, align 4
  br label %136

130:                                              ; preds = %125
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @attack(i32 %131, i32* null)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  store i32 1, i32* %21, align 4
  br label %135

135:                                              ; preds = %134, %130
  br label %136

136:                                              ; preds = %135, %129
  call void @popgo()
  br label %137

137:                                              ; preds = %136, %119
  %138 = load i32, i32* %21, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %20, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %194

143:                                              ; preds = %140, %137
  store i32 0, i32* %22, align 4
  %144 = load i32, i32* %21, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @find_defense(i32 %147, i32* %22)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* %20, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %192

153:                                              ; preds = %150
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @find_defense(i32 %154, i32* %22)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %192

157:                                              ; preds = %153, %146
  %158 = load i32, i32* %22, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %192

160:                                              ; preds = %157
  %161 = load i32, i32* %22, align 4
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* %15, align 4
  %164 = call i32 @trymove(i32 %161, i32 %162, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.51, i64 0, i64 0), i32 %163, i32 0, i32 0)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %160
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* %17, align 4
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @trymove(i32 %167, i32 %168, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.52, i64 0, i64 0), i32 %169, i32 0, i32 0)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %191

172:                                              ; preds = %166
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = icmp ne i8 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %172
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %180
  %182 = load i8, i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %178
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 @defend_both(i32 %185, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184, %178, %172
  store i32 5, i32* %18, align 4
  br label %190

190:                                              ; preds = %189, %184
  call void @popgo()
  br label %191

191:                                              ; preds = %190, %166
  call void @popgo()
  br label %193

192:                                              ; preds = %160, %157, %153, %150
  store i32 5, i32* %18, align 4
  br label %193

193:                                              ; preds = %192, %191
  br label %194

194:                                              ; preds = %193, %140
  br label %195

195:                                              ; preds = %194, %118
  br label %196

196:                                              ; preds = %195, %28
  call void @popgo()
  br label %197

197:                                              ; preds = %196, %8
  %198 = load i32, i32* %18, align 4
  store i32 %198, i32* %9, align 4
  br label %199

199:                                              ; preds = %197, %97, %95, %59, %53
  %200 = load i32, i32* %9, align 4
  ret i32 %200
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @safe_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @safe_move.initialized, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  call void @clear_safe_move_cache()
  store i32 1, i32* @safe_move.initialized, align 4
  br label %10

10:                                               ; preds = %9, %2
  %11 = load i32, i32* @stackp, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache_when, i64 0, i64 %15
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @position_number, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %13
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache, i64 0, i64 %27
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %28, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %13, %10
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @trymove(i32 %36, i32 %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), i32 0, i32 0, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @attack(i32 %41, i32* null)
  %43 = sub nsw i32 5, %42
  store i32 %43, i32* %6, align 4
  call void @popgo()
  br label %64

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @is_ko(i32 %45, i32 %46, i32* null)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @tryko(i32 %50, i32 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 0, i32 0)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @do_attack(i32 %55, i32* null, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 5
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 1, i32* %6, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %61, %60
  call void @popgo()
  br label %63

63:                                               ; preds = %62, %49, %44
  br label %64

64:                                               ; preds = %63, %40
  %65 = load i32, i32* @stackp, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load i32, i32* @position_number, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache_when, i64 0, i64 %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 2
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 %75
  store i32 %68, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache, i64 0, i64 %79
  %81 = load i32, i32* %5, align 4
  %82 = icmp eq i32 %81, 2
  %83 = zext i1 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %80, i64 0, i64 %84
  store i32 %77, i32* %85, align 4
  br label %86

86:                                               ; preds = %67, %64
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %25
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attack_threats(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [241 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca [160 x i32], align 16
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %40, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %4
  br label %48

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 20
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %6, align 4
  %46 = srem i32 %45, 20
  %47 = sub nsw i32 %46, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 871, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %44, i32 %47)
  br label %48

48:                                               ; preds = %41, %40
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = sub nsw i32 3, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @attack(i32 %55, i32* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %291

59:                                               ; preds = %48
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 0
  %62 = call i32 @findlib(i32 %60, i32 241, i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %162

65:                                               ; preds = %59
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %66, 6
  br i1 %67, label %68, label %162

68:                                               ; preds = %65
  store i32 0, i32* %16, align 4
  br label %69

69:                                               ; preds = %158, %68
  %70 = load i32, i32* %16, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %161

73:                                               ; preds = %69
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @trymove(i32 %78, i32 %79, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i32 %80, i32 0, i32 0)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %73
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @attack(i32 %84, i32* null)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %19, align 4
  %90 = load i32, i32* %20, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %9, align 8
  call void @movelist_change_point(i32 %89, i32 %90, i32 %91, i32* %92, i32* %93)
  br label %94

94:                                               ; preds = %88, %83
  call void @popgo()
  br label %95

95:                                               ; preds = %94, %73
  store i32 0, i32* %17, align 4
  br label %96

96:                                               ; preds = %154, %95
  %97 = load i32, i32* %17, align 4
  %98 = icmp slt i32 %97, 4
  br i1 %98, label %99, label %157

99:                                               ; preds = %96
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %103, %107
  store i32 %108, i32* %21, align 4
  %109 = load i32, i32* %21, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 3
  br i1 %114, label %115, label %134

115:                                              ; preds = %99
  %116 = load i32, i32* %21, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %134, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %21, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %134, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @liberty_of_string(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129, %122, %115, %99
  br label %154

135:                                              ; preds = %129
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @trymove(i32 %136, i32 %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %138, i32 0, i32 0)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %153

141:                                              ; preds = %135
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @attack(i32 %142, i32* null)
  store i32 %143, i32* %22, align 4
  %144 = load i32, i32* %22, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i32, i32* %21, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32*, i32** %8, align 8
  %151 = load i32*, i32** %9, align 8
  call void @movelist_change_point(i32 %147, i32 %148, i32 %149, i32* %150, i32* %151)
  br label %152

152:                                              ; preds = %146, %141
  call void @popgo()
  br label %153

153:                                              ; preds = %152, %135
  br label %154

154:                                              ; preds = %153, %134
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %96, !llvm.loop !7

157:                                              ; preds = %96
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %16, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %16, align 4
  br label %69, !llvm.loop !8

161:                                              ; preds = %69
  br label %162

162:                                              ; preds = %161, %65, %59
  %163 = load i32, i32* %6, align 4
  %164 = getelementptr inbounds [160 x i32], [160 x i32]* %15, i64 0, i64 0
  %165 = call i32 @chainlinks(i32 %163, i32* %164)
  store i32 %165, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %166

166:                                              ; preds = %259, %162
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %262

170:                                              ; preds = %166
  %171 = load i32, i32* %16, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [160 x i32], [160 x i32]* %15, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @attack_and_defend(i32 %174, i32* %25, i32* null, i32* %26, i32* %24)
  %176 = load i32, i32* %25, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %170
  %179 = load i32, i32* %26, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %170
  br label %259

182:                                              ; preds = %178
  store i32 -1, i32* %18, align 4
  br label %183

183:                                              ; preds = %255, %182
  %184 = load i32, i32* %18, align 4
  %185 = load i32, i32* %7, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %258

187:                                              ; preds = %183
  %188 = load i32, i32* @stackp, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %220

190:                                              ; preds = %187
  %191 = load i32, i32* %18, align 4
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  br label %255

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [160 x i32], [160 x i32]* %15, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %199
  %201 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %200, i32 0, i32 18
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [10 x i32], [10 x i32]* %201, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %194
  br label %258

208:                                              ; preds = %194
  %209 = load i32, i32* %16, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [160 x i32], [160 x i32]* %15, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %213
  %215 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %214, i32 0, i32 17
  %216 = load i32, i32* %18, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [10 x i32], [10 x i32]* %215, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  store i32 %219, i32* %23, align 4
  br label %227

220:                                              ; preds = %187
  %221 = load i32, i32* %18, align 4
  %222 = icmp eq i32 %221, -1
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i32, i32* %24, align 4
  store i32 %224, i32* %23, align 4
  br label %226

225:                                              ; preds = %220
  br label %258

226:                                              ; preds = %223
  br label %227

227:                                              ; preds = %226, %208
  %228 = load i32, i32* %23, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* %6, align 4
  %231 = call i32 @trymove(i32 %228, i32 %229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i64 0, i64 0), i32 %230, i32 0, i32 0)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %254

233:                                              ; preds = %227
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %233
  store i32 5, i32* %25, align 4
  br label %244

241:                                              ; preds = %233
  %242 = load i32, i32* %6, align 4
  %243 = call i32 @attack(i32 %242, i32* null)
  store i32 %243, i32* %25, align 4
  br label %244

244:                                              ; preds = %241, %240
  %245 = load i32, i32* %25, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %244
  %248 = load i32, i32* %23, align 4
  %249 = load i32, i32* %25, align 4
  %250 = load i32, i32* %7, align 4
  %251 = load i32*, i32** %8, align 8
  %252 = load i32*, i32** %9, align 8
  call void @movelist_change_point(i32 %248, i32 %249, i32 %250, i32* %251, i32* %252)
  br label %253

253:                                              ; preds = %247, %244
  call void @popgo()
  br label %254

254:                                              ; preds = %253, %227
  br label %255

255:                                              ; preds = %254, %193
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %18, align 4
  br label %183, !llvm.loop !9

258:                                              ; preds = %225, %207, %183
  br label %259

259:                                              ; preds = %258, %181
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %16, align 4
  br label %166, !llvm.loop !10

262:                                              ; preds = %166
  %263 = load i32*, i32** %9, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp sgt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %262
  %271 = load i32, i32* %7, align 4
  store i32 %271, i32* %5, align 4
  br label %291

272:                                              ; preds = %262
  store i32 0, i32* %11, align 4
  br label %273

273:                                              ; preds = %286, %272
  %274 = load i32, i32* %11, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp slt i32 %274, %275
  br i1 %276, label %277, label %289

277:                                              ; preds = %273
  %278 = load i32*, i32** %9, align 8
  %279 = load i32, i32* %11, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  br label %289

285:                                              ; preds = %277
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %11, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %11, align 4
  br label %273, !llvm.loop !11

289:                                              ; preds = %284, %273
  %290 = load i32, i32* %11, align 4
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %289, %270, %58
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

declare dso_local void @movelist_change_point(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @liberty_of_string(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tune_move_ordering(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %118, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 6
  br i1 %6, label %7, label %121

7:                                                ; preds = %4
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 %14
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 5
  br i1 %17, label %18, label %28

18:                                               ; preds = %7
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 6
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i64 0, i64 %26
  store i32 %24, i32* %27, align 4
  br label %28

28:                                               ; preds = %18, %7
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 11
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 %36
  store i32 %34, i32* %37, align 4
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 17
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 23
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 5
  br i1 %57, label %58, label %77

58:                                               ; preds = %28
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = add nsw i32 %60, 29
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* @defend_open_score, i64 0, i64 %66
  store i32 %64, i32* %67, align 4
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 34
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* @attack_own_lib_score, i64 0, i64 %75
  store i32 %73, i32* %76, align 4
  br label %77

77:                                               ; preds = %58, %28
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 39
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_string_lib_score, i64 0, i64 %85
  store i32 %83, i32* %86, align 4
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* %3, align 4
  %89 = add nsw i32 %88, 45
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 %94
  store i32 %92, i32* %95, align 4
  %96 = load i32*, i32** %2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 51
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %3, align 4
  %106 = icmp slt i32 %105, 5
  br i1 %106, label %107, label %117

107:                                              ; preds = %77
  %108 = load i32*, i32** %2, align 8
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 57
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [5 x i32], [5 x i32]* @attack_open_score, i64 0, i64 %115
  store i32 %113, i32* %116, align 4
  br label %117

117:                                              ; preds = %107, %77
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %4, !llvm.loop !12

121:                                              ; preds = %4
  %122 = load i32*, i32** %2, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 62
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* @defend_not_edge_score, align 4
  %125 = load i32*, i32** %2, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 63
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* @attack_not_edge_score, align 4
  %128 = load i32*, i32** %2, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 64
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* @attack_ko_score, align 4
  %131 = load i32*, i32** %2, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 65
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* @cannot_defend_penalty, align 4
  %134 = load i32*, i32** %2, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 66
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* @safe_atari_score, align 4
  %137 = load i32, i32* @verbose, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %223

139:                                              ; preds = %121
  %140 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 0), align 16
  %141 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 1), align 4
  %142 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 2), align 8
  %143 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 3), align 4
  %144 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 4), align 16
  %145 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 5), align 4
  %146 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.25, i64 0, i64 0), i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145)
  %147 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i64 0, i64 0), align 16
  %148 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i64 0, i64 1), align 4
  %149 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i64 0, i64 2), align 8
  %150 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i64 0, i64 3), align 4
  %151 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i64 0, i64 4), align 16
  %152 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.26, i64 0, i64 0), i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  %153 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 0), align 16
  %154 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 1), align 4
  %155 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 2), align 8
  %156 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 3), align 4
  %157 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 4), align 16
  %158 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 5), align 4
  %159 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.27, i64 0, i64 0), i32 %153, i32 %154, i32 %155, i32 %156, i32 %157, i32 %158)
  %160 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 0), align 16
  %161 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 1), align 4
  %162 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 2), align 8
  %163 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 3), align 4
  %164 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 4), align 16
  %165 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 5), align 4
  %166 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.28, i64 0, i64 0), i32 %160, i32 %161, i32 %162, i32 %163, i32 %164, i32 %165)
  %167 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 0), align 16
  %168 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 1), align 4
  %169 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 2), align 8
  %170 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 3), align 4
  %171 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 4), align 16
  %172 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 5), align 4
  %173 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.29, i64 0, i64 0), i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172)
  %174 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i64 0, i64 0), align 16
  %175 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i64 0, i64 1), align 4
  %176 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i64 0, i64 2), align 8
  %177 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i64 0, i64 3), align 4
  %178 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_open_score, i64 0, i64 4), align 16
  %179 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.30, i64 0, i64 0), i32 %174, i32 %175, i32 %176, i32 %177, i32 %178)
  %180 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i64 0, i64 0), align 16
  %181 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i64 0, i64 1), align 4
  %182 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i64 0, i64 2), align 8
  %183 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i64 0, i64 3), align 4
  %184 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_own_lib_score, i64 0, i64 4), align 16
  %185 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.31, i64 0, i64 0), i32 %180, i32 %181, i32 %182, i32 %183, i32 %184)
  %186 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i64 0, i64 0), align 16
  %187 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i64 0, i64 1), align 4
  %188 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i64 0, i64 2), align 8
  %189 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i64 0, i64 3), align 4
  %190 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i64 0, i64 4), align 16
  %191 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_string_lib_score, i64 0, i64 5), align 4
  %192 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.32, i64 0, i64 0), i32 %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %191)
  %193 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 0), align 16
  %194 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 1), align 4
  %195 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 2), align 8
  %196 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 3), align 4
  %197 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 4), align 16
  %198 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 5), align 4
  %199 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.33, i64 0, i64 0), i32 %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198)
  %200 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 0), align 16
  %201 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 1), align 4
  %202 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 2), align 8
  %203 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 3), align 4
  %204 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 4), align 16
  %205 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 5), align 4
  %206 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.34, i64 0, i64 0), i32 %200, i32 %201, i32 %202, i32 %203, i32 %204, i32 %205)
  %207 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i64 0, i64 0), align 16
  %208 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i64 0, i64 1), align 4
  %209 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i64 0, i64 2), align 8
  %210 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i64 0, i64 3), align 4
  %211 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @attack_open_score, i64 0, i64 4), align 16
  %212 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.35, i64 0, i64 0), i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  %213 = load i32, i32* @defend_not_edge_score, align 4
  %214 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* @attack_not_edge_score, align 4
  %216 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.37, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* @attack_ko_score, align 4
  %218 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @cannot_defend_penalty, align 4
  %220 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.39, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* @safe_atari_score, align 4
  %222 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i64 0, i64 0), i32 %221)
  br label %223

223:                                              ; preds = %139, %121
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_safe_move_cache() #0 {
  %1 = alloca i32, align 4
  store i32 21, i32* %1, align 4
  br label %2

2:                                                ; preds = %14, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 400
  br i1 %4, label %5, label %17

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache_when, i64 0, i64 %7
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 -1, i32* %9, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [400 x [2 x i32]], [400 x [2 x i32]]* @safe_move_cache_when, i64 0, i64 %11
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 -1, i32* %13, align 4
  br label %14

14:                                               ; preds = %5
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  br label %2, !llvm.loop !13

17:                                               ; preds = %2
  ret void
}

declare dso_local i32 @is_ko(i32, i32, i32*) #1

declare dso_local i32 @tryko(i32, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_reading_node_counter() #0 {
  store i32 0, i32* @reading_node_counter, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_reading_node_counter() #0 {
  %1 = load i32, i32* @reading_node_counter, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_reading_shadow() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 32, i32* %4, align 4
  call void @start_draw_board()
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %170, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @board_size, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %173

9:                                                ; preds = %5
  %10 = load i32, i32* @board_size, align 4
  %11 = load i32, i32* %1, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0), i32 %14)
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %163, %9
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @board_size, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %166

20:                                               ; preds = %16
  %21 = load i32, i32* %1, align 4
  %22 = mul nsw i32 %21, 20
  %23 = add nsw i32 21, %22
  %24 = load i32, i32* %2, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %42, label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %1, align 4
  %32 = mul nsw i32 %31, 20
  %33 = add nsw i32 21, %32
  %34 = load i32, i32* %2, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 46, i32* %4, align 4
  br label %88

42:                                               ; preds = %30, %20
  %43 = load i32, i32* %1, align 4
  %44 = mul nsw i32 %43, 20
  %45 = add nsw i32 21, %44
  %46 = load i32, i32* %2, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = icmp ne i8 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %1, align 4
  %54 = mul nsw i32 %53, 20
  %55 = add nsw i32 21, %54
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %52
  store i32 79, i32* %4, align 4
  br label %87

64:                                               ; preds = %52, %42
  %65 = load i32, i32* %1, align 4
  %66 = mul nsw i32 %65, 20
  %67 = add nsw i32 21, %66
  %68 = load i32, i32* %2, align 4
  %69 = add nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %64
  %75 = load i32, i32* %1, align 4
  %76 = mul nsw i32 %75, 20
  %77 = add nsw i32 21, %76
  %78 = load i32, i32* %2, align 4
  %79 = add nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  store i32 88, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %74, %64
  br label %87

87:                                               ; preds = %86, %63
  br label %88

88:                                               ; preds = %87, %41
  %89 = load i32, i32* %1, align 4
  %90 = mul nsw i32 %89, 20
  %91 = add nsw i32 21, %90
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %88
  %100 = load i32, i32* %1, align 4
  %101 = mul nsw i32 %100, 20
  %102 = add nsw i32 21, %101
  %103 = load i32, i32* %2, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %99
  store i32 44, i32* %4, align 4
  br label %159

111:                                              ; preds = %99, %88
  %112 = load i32, i32* %1, align 4
  %113 = mul nsw i32 %112, 20
  %114 = add nsw i32 21, %113
  %115 = load i32, i32* %2, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %111
  %123 = load i32, i32* %1, align 4
  %124 = mul nsw i32 %123, 20
  %125 = add nsw i32 21, %124
  %126 = load i32, i32* %2, align 4
  %127 = add nsw i32 %125, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %134

133:                                              ; preds = %122
  store i32 111, i32* %4, align 4
  br label %158

134:                                              ; preds = %122, %111
  %135 = load i32, i32* %1, align 4
  %136 = mul nsw i32 %135, 20
  %137 = add nsw i32 21, %136
  %138 = load i32, i32* %2, align 4
  %139 = add nsw i32 %137, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i64 0, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %134
  %146 = load i32, i32* %1, align 4
  %147 = mul nsw i32 %146, 20
  %148 = add nsw i32 21, %147
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %157

156:                                              ; preds = %145
  store i32 120, i32* %4, align 4
  br label %157

157:                                              ; preds = %156, %145, %134
  br label %158

158:                                              ; preds = %157, %133
  br label %159

159:                                              ; preds = %158, %110
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %161 = load i32, i32* %4, align 4
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %159
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  br label %16, !llvm.loop !14

166:                                              ; preds = %16
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = load i32, i32* %3, align 4
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.45, i64 0, i64 0), i32 %168)
  br label %170

170:                                              ; preds = %166
  %171 = load i32, i32* %1, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %1, align 4
  br label %5, !llvm.loop !15

173:                                              ; preds = %5
  call void @end_draw_board()
  ret void
}

declare dso_local void @start_draw_board() #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local void @end_draw_board() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simple_ladder(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @simple_ladder_attack(i32 %5, i32* %6, i32 0, i32 0)
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_ladder_attack(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.reading_moves, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 3, %30
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i64 0, i64 0), i8** %19, align 8
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* @reading_node_counter, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* @reading_node_counter, align 4
  %35 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 2
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @find_origin(i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %51, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %4
  br label %59

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 %53, 20
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %6, align 4
  %57 = srem i32 %56, 20
  %58 = sub nsw i32 %57, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4714, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %55, i32 %58)
  br label %59

59:                                               ; preds = %52, %51
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @countlib(i32 %60)
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = sdiv i32 %65, 20
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %6, align 4
  %69 = srem i32 %68, 20
  %70 = sub nsw i32 %69, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4715, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i32 %67, i32 %70)
  br label %71

71:                                               ; preds = %64, %63
  %72 = load i32, i32* @stackp, align 4
  %73 = load i32, i32* @depth, align 4
  %74 = add nsw i32 %73, 20
  %75 = icmp sgt i32 %72, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = sub nsw i32 3, %82
  %84 = icmp eq i32 %77, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %76
  %86 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %87 = icmp ne %struct.SGFTree_t* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i8*, i8** %19, align 8
  %90 = load i32, i32* %20, align 4
  call void @sgf_trace(i8* %89, i32 %90, i32 0, i32 0, i8* null)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32*, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i32*, i32** %7, align 8
  store i32 0, i32* %95, align 4
  br label %96

96:                                               ; preds = %94, %91
  store i32 0, i32* %5, align 4
  br label %273

97:                                               ; preds = %76, %71
  %98 = load i32, i32* %6, align 4
  %99 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %100 = call i32 @findlib(i32 %98, i32 2, i32* %99)
  store i32 0, i32* %17, align 4
  br label %101

101:                                              ; preds = %162, %97
  %102 = load i32, i32* %17, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %165

104:                                              ; preds = %101
  br label %105

105:                                              ; preds = %104
  store i32 0, i32* %21, align 4
  br label %106

106:                                              ; preds = %130, %105
  %107 = load i32, i32* %21, align 4
  %108 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %133

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 0
  %113 = load i32, i32* %21, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [50 x i32], [50 x i32]* %112, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %17, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %116, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %111
  %123 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 1
  %124 = load i32, i32* %21, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [50 x i32], [50 x i32]* %123, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 0
  store i32 %128, i32* %126, align 4
  br label %133

129:                                              ; preds = %111
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %21, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %21, align 4
  br label %106, !llvm.loop !16

133:                                              ; preds = %122, %106
  %134 = load i32, i32* %21, align 4
  %135 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 50
  br i1 %141, label %142, label %160

142:                                              ; preds = %138
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 0
  %148 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [50 x i32], [50 x i32]* %147, i64 0, i64 %150
  store i32 %146, i32* %151, align 4
  %152 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 1
  %153 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [50 x i32], [50 x i32]* %152, i64 0, i64 %155
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %142, %138, %133
  br label %161

161:                                              ; preds = %160
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %17, align 4
  br label %101, !llvm.loop !17

165:                                              ; preds = %101
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* %11, align 4
  %168 = load i8*, i8** %19, align 8
  call void @order_moves(i32 %166, %struct.reading_moves* %18, i32 %167, i8* %168, i32 0)
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %242, %165
  %170 = load i32, i32* %17, align 4
  %171 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp slt i32 %170, %172
  br i1 %173, label %174, label %245

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %18, i32 0, i32 0
  %176 = load i32, i32* %17, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [50 x i32], [50 x i32]* %175, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %15, align 4
  %186 = icmp eq i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = call i32 @komaster_trymove(i32 %180, i32 %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.122, i64 0, i64 0), i32 %182, i32 %183, i32 %184, i32* %22, i32* %23, i32* %24, i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %241

190:                                              ; preds = %174
  %191 = load i32, i32* %24, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %231, label %193

193:                                              ; preds = %190
  %194 = load i32, i32* %6, align 4
  %195 = load i32, i32* %22, align 4
  %196 = load i32, i32* %23, align 4
  %197 = call i32 @simple_ladder_defend(i32 %194, i32* null, i32 %195, i32 %196)
  store i32 %197, i32* %16, align 4
  %198 = load i32, i32* %16, align 4
  %199 = icmp ne i32 %198, 5
  br i1 %199, label %200, label %230

200:                                              ; preds = %193
  %201 = load i32, i32* %16, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %200
  call void @popgo()
  %204 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %205 = icmp ne %struct.SGFTree_t* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load i8*, i8** %19, align 8
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %207, i32 %208, i32 %209, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %210

210:                                              ; preds = %206, %203
  %211 = load i32*, i32** %7, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* %12, align 4
  %215 = load i32*, i32** %7, align 8
  store i32 %214, i32* %215, align 4
  br label %216

216:                                              ; preds = %213, %210
  store i32 5, i32* %5, align 4
  br label %273

217:                                              ; preds = %200
  %218 = load i32, i32* %16, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load i32, i32* %16, align 4
  %222 = sub nsw i32 5, %221
  %223 = load i32, i32* %15, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load i32, i32* %12, align 4
  store i32 %226, i32* %14, align 4
  %227 = load i32, i32* %16, align 4
  %228 = sub nsw i32 5, %227
  store i32 %228, i32* %15, align 4
  br label %229

229:                                              ; preds = %225, %220, %217
  br label %230

230:                                              ; preds = %229, %193
  br label %240

231:                                              ; preds = %190
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %22, align 4
  %234 = load i32, i32* %23, align 4
  %235 = call i32 @simple_ladder_defend(i32 %232, i32* null, i32 %233, i32 %234)
  %236 = icmp ne i32 %235, 5
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i32, i32* %12, align 4
  store i32 %238, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %239

239:                                              ; preds = %237, %231
  br label %240

240:                                              ; preds = %239, %230
  call void @popgo()
  br label %241

241:                                              ; preds = %240, %174
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %17, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %17, align 4
  br label %169, !llvm.loop !18

245:                                              ; preds = %169
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %15, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %264

249:                                              ; preds = %246
  %250 = load i32*, i32** %7, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* %14, align 4
  %254 = load i32*, i32** %7, align 8
  store i32 %253, i32* %254, align 4
  br label %255

255:                                              ; preds = %252, %249
  %256 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %257 = icmp ne %struct.SGFTree_t* %256, null
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i8*, i8** %19, align 8
  %260 = load i32, i32* %20, align 4
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %15, align 4
  call void @sgf_trace(i8* %259, i32 %260, i32 %261, i32 %262, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %263

263:                                              ; preds = %258, %255
  br label %271

264:                                              ; preds = %246
  %265 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %266 = icmp ne %struct.SGFTree_t* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i8*, i8** %19, align 8
  %269 = load i32, i32* %20, align 4
  call void @sgf_trace(i8* %268, i32 %269, i32 0, i32 0, i8* null)
  br label %270

270:                                              ; preds = %267, %264
  br label %271

271:                                              ; preds = %270, %263
  %272 = load i32, i32* %15, align 4
  store i32 %272, i32* %5, align 4
  br label %273

273:                                              ; preds = %96, %216, %271
  %274 = load i32, i32* %5, align 4
  ret i32 %274
}

declare dso_local void @sgf_trace(i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @get_read_result(i32, i32, i32, i32*, %struct.read_result_t**) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defend1(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.reading_moves, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [6 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 3, %33
  store i32 %34, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i8** %19, align 8
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* @reading_node_counter, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @reading_node_counter, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %51, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %44, %4
  br label %59

52:                                               ; preds = %44
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 %53, 20
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %6, align 4
  %57 = srem i32 %56, 20
  %58 = sub nsw i32 %57, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1077, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %55, i32 %58)
  br label %59

59:                                               ; preds = %52, %51
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @countlib(i32 %60)
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %6, align 4
  %66 = sdiv i32 %65, 20
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %6, align 4
  %69 = srem i32 %68, 20
  %70 = sub nsw i32 %69, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1078, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i32 %67, i32 %70)
  br label %71

71:                                               ; preds = %64, %63
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @findlib(i32 %72, i32 1, i32* %13)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %84

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = sdiv i32 %78, 20
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %6, align 4
  %82 = srem i32 %81, 20
  %83 = sub nsw i32 %82, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1082, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.58, i64 0, i64 0), i32 %80, i32 %83)
  br label %84

84:                                               ; preds = %77, %76
  %85 = load i32, i32* %13, align 4
  %86 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %14, i32 0, i32 0
  %87 = getelementptr inbounds [50 x i32], [50 x i32]* %86, i64 0, i64 0
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %14, i32 0, i32 1
  %89 = getelementptr inbounds [50 x i32], [50 x i32]* %88, i64 0, i64 0
  store i32 0, i32* %89, align 4
  %90 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %14, i32 0, i32 2
  store i32 1, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  call void @break_chain_moves(i32 %91, %struct.reading_moves* %14)
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %13, align 4
  call void @set_up_snapback_moves(i32 %92, i32 %93, %struct.reading_moves* %14)
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i8*, i8** %19, align 8
  call void @order_moves(i32 %94, %struct.reading_moves* %14, i32 %95, i8* %96, i32 0)
  store i32 0, i32* %18, align 4
  br label %97

97:                                               ; preds = %172, %84
  %98 = load i32, i32* %18, align 4
  %99 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %14, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %98, %100
  br i1 %101, label %102, label %175

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %14, i32 0, i32 0
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [50 x i32], [50 x i32]* %103, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @stackp, align 4
  %114 = load i32, i32* @ko_depth, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %102
  %117 = load i32, i32* %16, align 4
  %118 = icmp eq i32 %117, 0
  br label %119

119:                                              ; preds = %116, %102
  %120 = phi i1 [ false, %102 ], [ %118, %116 ]
  %121 = zext i1 %120 to i32
  %122 = call i32 @komaster_trymove(i32 %108, i32 %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32* %21, i32* %22, i32* %23, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %171

124:                                              ; preds = %119
  %125 = load i32, i32* %23, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %161, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %21, align 4
  %130 = load i32, i32* %22, align 4
  %131 = call i32 @do_attack(i32 %128, i32* null, i32 %129, i32 %130)
  store i32 %131, i32* %24, align 4
  call void @popgo()
  br label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %24, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  %136 = load i32*, i32** %7, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %12, align 4
  %140 = load i32*, i32** %7, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %143 = icmp ne %struct.SGFTree_t* %142, null
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i8*, i8** %19, align 8
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %145, i32 %146, i32 %147, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  br label %148

148:                                              ; preds = %144, %141
  store i32 5, i32* %5, align 4
  br label %288

149:                                              ; preds = %132
  %150 = load i32, i32* %24, align 4
  %151 = sub nsw i32 5, %150
  %152 = load i32, i32* %16, align 4
  %153 = icmp sgt i32 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %24, align 4
  %157 = sub nsw i32 5, %156
  store i32 %157, i32* %16, align 4
  br label %158

158:                                              ; preds = %154, %149
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  br label %170

161:                                              ; preds = %124
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %21, align 4
  %164 = load i32, i32* %22, align 4
  %165 = call i32 @do_attack(i32 %162, i32* null, i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 5
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %169

169:                                              ; preds = %167, %161
  call void @popgo()
  br label %170

170:                                              ; preds = %169, %160
  br label %171

171:                                              ; preds = %170, %119
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %18, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %18, align 4
  br label %97, !llvm.loop !19

175:                                              ; preds = %97
  %176 = load i32, i32* @stackp, align 4
  %177 = load i32, i32* @backfill_depth, align 4
  %178 = icmp sle i32 %176, %177
  br i1 %178, label %179, label %260

179:                                              ; preds = %175
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @countstones(i32 %180)
  %182 = icmp eq i32 %181, 1
  br i1 %182, label %183, label %260

183:                                              ; preds = %179
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %11, align 4
  %186 = call i32 @is_ko(i32 %184, i32 %185, i32* null)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %260

188:                                              ; preds = %183
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %10, align 4
  %191 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 0
  %192 = call i32 @approxlib(i32 %189, i32 %190, i32 6, i32* %191)
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* %17, align 4
  %194 = icmp sle i32 %193, 5
  br i1 %194, label %195, label %259

195:                                              ; preds = %188
  store i32 0, i32* %18, align 4
  br label %196

196:                                              ; preds = %255, %195
  %197 = load i32, i32* %18, align 4
  %198 = load i32, i32* %17, align 4
  %199 = icmp slt i32 %197, %198
  br i1 %199, label %200, label %258

200:                                              ; preds = %196
  %201 = load i32, i32* %18, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [6 x i32], [6 x i32]* %25, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %26, align 4
  %205 = load i32, i32* %17, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %212, label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %26, align 4
  %209 = load i32, i32* %11, align 4
  %210 = call i32 @is_self_atari(i32 %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %254, label %212

212:                                              ; preds = %207, %200
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %6, align 4
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* %9, align 4
  %218 = call i32 @trymove(i32 %213, i32 %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i64 0, i64 0), i32 %215, i32 %216, i32 %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %254

220:                                              ; preds = %212
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %9, align 4
  %224 = call i32 @do_attack(i32 %221, i32* null, i32 %222, i32 %223)
  store i32 %224, i32* %27, align 4
  call void @popgo()
  br label %225

225:                                              ; preds = %220
  %226 = load i32, i32* %27, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %225
  %229 = load i32*, i32** %7, align 8
  %230 = icmp ne i32* %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* %26, align 4
  %233 = load i32*, i32** %7, align 8
  store i32 %232, i32* %233, align 4
  br label %234

234:                                              ; preds = %231, %228
  %235 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %236 = icmp ne %struct.SGFTree_t* %235, null
  br i1 %236, label %237, label %241

237:                                              ; preds = %234
  %238 = load i8*, i8** %19, align 8
  %239 = load i32, i32* %20, align 4
  %240 = load i32, i32* %26, align 4
  call void @sgf_trace(i8* %238, i32 %239, i32 %240, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0))
  br label %241

241:                                              ; preds = %237, %234
  store i32 5, i32* %5, align 4
  br label %288

242:                                              ; preds = %225
  %243 = load i32, i32* %27, align 4
  %244 = sub nsw i32 5, %243
  %245 = load i32, i32* %16, align 4
  %246 = icmp sgt i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %242
  %248 = load i32, i32* %26, align 4
  store i32 %248, i32* %15, align 4
  %249 = load i32, i32* %27, align 4
  %250 = sub nsw i32 5, %249
  store i32 %250, i32* %16, align 4
  br label %251

251:                                              ; preds = %247, %242
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252
  br label %254

254:                                              ; preds = %253, %212, %207
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %18, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %18, align 4
  br label %196, !llvm.loop !20

258:                                              ; preds = %196
  br label %259

259:                                              ; preds = %258, %188
  br label %260

260:                                              ; preds = %259, %183, %179, %175
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %16, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %279

264:                                              ; preds = %261
  %265 = load i32*, i32** %7, align 8
  %266 = icmp ne i32* %265, null
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %15, align 4
  %269 = load i32*, i32** %7, align 8
  store i32 %268, i32* %269, align 4
  br label %270

270:                                              ; preds = %267, %264
  %271 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %272 = icmp ne %struct.SGFTree_t* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i8*, i8** %19, align 8
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %16, align 4
  call void @sgf_trace(i8* %274, i32 %275, i32 %276, i32 %277, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %278

278:                                              ; preds = %273, %270
  br label %286

279:                                              ; preds = %261
  %280 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %281 = icmp ne %struct.SGFTree_t* %280, null
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i8*, i8** %19, align 8
  %284 = load i32, i32* %20, align 4
  call void @sgf_trace(i8* %283, i32 %284, i32 0, i32 0, i8* null)
  br label %285

285:                                              ; preds = %282, %279
  br label %286

286:                                              ; preds = %285, %278
  %287 = load i32, i32* %16, align 4
  store i32 %287, i32* %5, align 4
  br label %288

288:                                              ; preds = %148, %241, %286
  %289 = load i32, i32* %5, align 4
  ret i32 %289
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defend2(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca [6 x i32], align 16
  %17 = alloca %struct.reading_moves, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca [24 x i32], align 16
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8** %23, align 8
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %24, align 4
  %45 = load i32, i32* @reading_node_counter, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @reading_node_counter, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sub nsw i32 3, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %67, label %60

60:                                               ; preds = %4
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %4
  br label %69

68:                                               ; preds = %60
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1185, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i64 0, i64 0), i32 -1, i32 -1)
  br label %69

69:                                               ; preds = %68, %67
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @countlib(i32 %70)
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %75

74:                                               ; preds = %69
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1186, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i32 -1, i32 -1)
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, i32* %6, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %78 = call i32 @findlib(i32 %76, i32 2, i32* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %89

82:                                               ; preds = %75
  %83 = load i32, i32* %6, align 4
  %84 = sdiv i32 %83, 20
  %85 = sub nsw i32 %84, 1
  %86 = load i32, i32* %6, align 4
  %87 = srem i32 %86, 20
  %88 = sub nsw i32 %87, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1189, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0), i32 %85, i32 %88)
  br label %89

89:                                               ; preds = %82, %81
  store i32 0, i32* %21, align 4
  br label %90

90:                                               ; preds = %107, %89
  %91 = load i32, i32* %21, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %110

94:                                               ; preds = %90
  %95 = load i32, i32* %21, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %100 = load i32, i32* %21, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [50 x i32], [50 x i32]* %99, i64 0, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 1
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [50 x i32], [50 x i32]* %103, i64 0, i64 %105
  store i32 0, i32* %106, align 4
  br label %107

107:                                              ; preds = %94
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %90, !llvm.loop !21

110:                                              ; preds = %90
  %111 = load i32, i32* %13, align 4
  %112 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %6, align 4
  call void @break_chain_moves(i32 %113, %struct.reading_moves* %17)
  %114 = load i32, i32* %6, align 4
  call void @break_chain2_efficient_moves(i32 %114, %struct.reading_moves* %17)
  %115 = load i32, i32* %6, align 4
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %10, align 4
  call void @propose_edge_moves(i32 %115, i32* %116, i32 %117, %struct.reading_moves* %17, i32 %118)
  %119 = load i32, i32* %6, align 4
  call void @edge_clamp_moves(i32 %119, %struct.reading_moves* %17)
  %120 = load i32, i32* @stackp, align 4
  %121 = load i32, i32* @depth, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %110
  store i32 0, i32* %21, align 4
  br label %124

124:                                              ; preds = %134, %123
  %125 = load i32, i32* %21, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %21, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  call void @special_rescue_moves(i32 %129, i32 %133, %struct.reading_moves* %17)
  br label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %21, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %21, align 4
  br label %124, !llvm.loop !22

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137, %110
  %139 = load i32, i32* @stackp, align 4
  %140 = load i32, i32* @backfill_depth, align 4
  %141 = icmp sle i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %138
  %143 = load i32, i32* %6, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  call void @special_rescue2_moves(i32 %143, i32* %144, %struct.reading_moves* %17)
  br label %145

145:                                              ; preds = %142, %138
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %10, align 4
  %148 = load i8*, i8** %23, align 8
  call void @order_moves(i32 %146, %struct.reading_moves* %17, i32 %147, i8* %148, i32 0)
  store i32 0, i32* %21, align 4
  br label %149

149:                                              ; preds = %224, %145
  %150 = load i32, i32* %21, align 4
  %151 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %150, %152
  br i1 %153, label %154, label %227

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %156 = load i32, i32* %21, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [50 x i32], [50 x i32]* %155, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = load i32, i32* @stackp, align 4
  %166 = load i32, i32* @ko_depth, align 4
  %167 = icmp sle i32 %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %154
  %169 = load i32, i32* %20, align 4
  %170 = icmp eq i32 %169, 0
  br label %171

171:                                              ; preds = %168, %154
  %172 = phi i1 [ false, %154 ], [ %170, %168 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @komaster_trymove(i32 %160, i32 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i64 0, i64 0), i32 %162, i32 %163, i32 %164, i32* %25, i32* %26, i32* %27, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %223

176:                                              ; preds = %171
  %177 = load i32, i32* %27, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %213, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %25, align 4
  %182 = load i32, i32* %26, align 4
  %183 = call i32 @do_attack(i32 %180, i32* null, i32 %181, i32 %182)
  store i32 %183, i32* %28, align 4
  call void @popgo()
  br label %184

184:                                              ; preds = %179
  %185 = load i32, i32* %28, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %201

187:                                              ; preds = %184
  %188 = load i32*, i32** %7, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %12, align 4
  %192 = load i32*, i32** %7, align 8
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %187
  %194 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %195 = icmp ne %struct.SGFTree_t* %194, null
  br i1 %195, label %196, label %200

196:                                              ; preds = %193
  %197 = load i8*, i8** %23, align 8
  %198 = load i32, i32* %24, align 4
  %199 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %197, i32 %198, i32 %199, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  br label %200

200:                                              ; preds = %196, %193
  store i32 5, i32* %5, align 4
  br label %764

201:                                              ; preds = %184
  %202 = load i32, i32* %28, align 4
  %203 = sub nsw i32 5, %202
  %204 = load i32, i32* %20, align 4
  %205 = icmp sgt i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load i32, i32* %12, align 4
  store i32 %207, i32* %19, align 4
  %208 = load i32, i32* %28, align 4
  %209 = sub nsw i32 5, %208
  store i32 %209, i32* %20, align 4
  br label %210

210:                                              ; preds = %206, %201
  br label %211

211:                                              ; preds = %210
  br label %212

212:                                              ; preds = %211
  br label %222

213:                                              ; preds = %176
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* %25, align 4
  %216 = load i32, i32* %26, align 4
  %217 = call i32 @do_attack(i32 %214, i32* null, i32 %215, i32 %216)
  %218 = icmp ne i32 %217, 5
  br i1 %218, label %219, label %221

219:                                              ; preds = %213
  %220 = load i32, i32* %12, align 4
  store i32 %220, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %221

221:                                              ; preds = %219, %213
  call void @popgo()
  br label %222

222:                                              ; preds = %221, %212
  br label %223

223:                                              ; preds = %222, %171
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %21, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %21, align 4
  br label %149, !llvm.loop !23

227:                                              ; preds = %149
  %228 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  store i32 %229, i32* %18, align 4
  store i32 0, i32* %21, align 4
  br label %230

230:                                              ; preds = %407, %227
  %231 = load i32, i32* %21, align 4
  %232 = load i32, i32* %13, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %410

234:                                              ; preds = %230
  %235 = load i32, i32* %21, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %11, align 4
  %240 = call i32 @is_self_atari(i32 %238, i32 %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %325

242:                                              ; preds = %234
  %243 = load i32, i32* %21, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %10, align 4
  %248 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %249 = call i32 @approxlib(i32 %246, i32 %247, i32 6, i32* %248)
  store i32 %249, i32* %15, align 4
  store i32 0, i32* %22, align 4
  br label %250

250:                                              ; preds = %321, %242
  %251 = load i32, i32* %22, align 4
  %252 = load i32, i32* %15, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %324

254:                                              ; preds = %250
  %255 = load i32, i32* %22, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  store i32 %258, i32* %12, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %10, align 4
  %261 = call i32 @is_self_atari(i32 %259, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %254
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 @has_neighbor(i32 %264, i32 %265)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %320

268:                                              ; preds = %263, %254
  br label %269

269:                                              ; preds = %268
  store i32 0, i32* %29, align 4
  br label %270

270:                                              ; preds = %291, %269
  %271 = load i32, i32* %29, align 4
  %272 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = icmp slt i32 %271, %273
  br i1 %274, label %275, label %294

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %277 = load i32, i32* %29, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [50 x i32], [50 x i32]* %276, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* %12, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %275
  %284 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 1
  %285 = load i32, i32* %29, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [50 x i32], [50 x i32]* %284, i64 0, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, 0
  store i32 %289, i32* %287, align 4
  br label %294

290:                                              ; preds = %275
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %29, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %29, align 4
  br label %270, !llvm.loop !24

294:                                              ; preds = %283, %270
  %295 = load i32, i32* %29, align 4
  %296 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %299, label %318

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp slt i32 %301, 50
  br i1 %302, label %303, label %318

303:                                              ; preds = %299
  %304 = load i32, i32* %12, align 4
  %305 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %306 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [50 x i32], [50 x i32]* %305, i64 0, i64 %308
  store i32 %304, i32* %309, align 4
  %310 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 1
  %311 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [50 x i32], [50 x i32]* %310, i64 0, i64 %313
  store i32 0, i32* %314, align 4
  %315 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 4
  br label %318

318:                                              ; preds = %303, %299, %294
  br label %319

319:                                              ; preds = %318
  br label %320

320:                                              ; preds = %319, %263
  br label %321

321:                                              ; preds = %320
  %322 = load i32, i32* %22, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %22, align 4
  br label %250, !llvm.loop !25

324:                                              ; preds = %250
  br label %325

325:                                              ; preds = %324, %234
  %326 = load i32, i32* %21, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %11, align 4
  %331 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %332 = call i32 @approxlib(i32 %329, i32 %330, i32 3, i32* %331)
  store i32 %332, i32* %15, align 4
  %333 = load i32, i32* %15, align 4
  %334 = icmp sle i32 %333, 2
  br i1 %334, label %335, label %406

335:                                              ; preds = %325
  store i32 0, i32* %22, align 4
  br label %336

336:                                              ; preds = %402, %335
  %337 = load i32, i32* %22, align 4
  %338 = load i32, i32* %15, align 4
  %339 = icmp slt i32 %337, %338
  br i1 %339, label %340, label %405

340:                                              ; preds = %336
  %341 = load i32, i32* %22, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %342
  %344 = load i32, i32* %343, align 4
  store i32 %344, i32* %12, align 4
  %345 = load i32, i32* %12, align 4
  %346 = load i32, i32* %10, align 4
  %347 = call i32 @is_self_atari(i32 %345, i32 %346)
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %401, label %349

349:                                              ; preds = %340
  br label %350

350:                                              ; preds = %349
  store i32 0, i32* %30, align 4
  br label %351

351:                                              ; preds = %372, %350
  %352 = load i32, i32* %30, align 4
  %353 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = icmp slt i32 %352, %354
  br i1 %355, label %356, label %375

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %358 = load i32, i32* %30, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [50 x i32], [50 x i32]* %357, i64 0, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %12, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %371

364:                                              ; preds = %356
  %365 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 1
  %366 = load i32, i32* %30, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [50 x i32], [50 x i32]* %365, i64 0, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = add nsw i32 %369, 0
  store i32 %370, i32* %368, align 4
  br label %375

371:                                              ; preds = %356
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %30, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %30, align 4
  br label %351, !llvm.loop !26

375:                                              ; preds = %364, %351
  %376 = load i32, i32* %30, align 4
  %377 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %378 = load i32, i32* %377, align 4
  %379 = icmp eq i32 %376, %378
  br i1 %379, label %380, label %399

380:                                              ; preds = %375
  %381 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = icmp slt i32 %382, 50
  br i1 %383, label %384, label %399

384:                                              ; preds = %380
  %385 = load i32, i32* %12, align 4
  %386 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %387 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [50 x i32], [50 x i32]* %386, i64 0, i64 %389
  store i32 %385, i32* %390, align 4
  %391 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 1
  %392 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [50 x i32], [50 x i32]* %391, i64 0, i64 %394
  store i32 0, i32* %395, align 4
  %396 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  br label %399

399:                                              ; preds = %384, %380, %375
  br label %400

400:                                              ; preds = %399
  br label %401

401:                                              ; preds = %400, %340
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %22, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %22, align 4
  br label %336, !llvm.loop !27

405:                                              ; preds = %336
  br label %406

406:                                              ; preds = %405, %325
  br label %407

407:                                              ; preds = %406
  %408 = load i32, i32* %21, align 4
  %409 = add nsw i32 %408, 1
  store i32 %409, i32* %21, align 4
  br label %230, !llvm.loop !28

410:                                              ; preds = %230
  %411 = load i32, i32* %6, align 4
  %412 = load i32, i32* %11, align 4
  %413 = load i8*, i8** %23, align 8
  %414 = load i32, i32* %18, align 4
  call void @order_moves(i32 %411, %struct.reading_moves* %17, i32 %412, i8* %413, i32 %414)
  %415 = load i32, i32* %18, align 4
  store i32 %415, i32* %21, align 4
  br label %416

416:                                              ; preds = %491, %410
  %417 = load i32, i32* %21, align 4
  %418 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = icmp slt i32 %417, %419
  br i1 %420, label %421, label %494

421:                                              ; preds = %416
  %422 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %423 = load i32, i32* %21, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [50 x i32], [50 x i32]* %422, i64 0, i64 %424
  %426 = load i32, i32* %425, align 4
  store i32 %426, i32* %12, align 4
  %427 = load i32, i32* %12, align 4
  %428 = load i32, i32* %10, align 4
  %429 = load i32, i32* %6, align 4
  %430 = load i32, i32* %8, align 4
  %431 = load i32, i32* %9, align 4
  %432 = load i32, i32* @stackp, align 4
  %433 = load i32, i32* @ko_depth, align 4
  %434 = icmp sle i32 %432, %433
  br i1 %434, label %435, label %438

435:                                              ; preds = %421
  %436 = load i32, i32* %20, align 4
  %437 = icmp eq i32 %436, 0
  br label %438

438:                                              ; preds = %435, %421
  %439 = phi i1 [ false, %421 ], [ %437, %435 ]
  %440 = zext i1 %439 to i32
  %441 = call i32 @komaster_trymove(i32 %427, i32 %428, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i64 0, i64 0), i32 %429, i32 %430, i32 %431, i32* %31, i32* %32, i32* %33, i32 %440)
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %490

443:                                              ; preds = %438
  %444 = load i32, i32* %33, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %480, label %446

446:                                              ; preds = %443
  %447 = load i32, i32* %6, align 4
  %448 = load i32, i32* %31, align 4
  %449 = load i32, i32* %32, align 4
  %450 = call i32 @do_attack(i32 %447, i32* null, i32 %448, i32 %449)
  store i32 %450, i32* %34, align 4
  call void @popgo()
  br label %451

451:                                              ; preds = %446
  %452 = load i32, i32* %34, align 4
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %454, label %468

454:                                              ; preds = %451
  %455 = load i32*, i32** %7, align 8
  %456 = icmp ne i32* %455, null
  br i1 %456, label %457, label %460

457:                                              ; preds = %454
  %458 = load i32, i32* %12, align 4
  %459 = load i32*, i32** %7, align 8
  store i32 %458, i32* %459, align 4
  br label %460

460:                                              ; preds = %457, %454
  %461 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %462 = icmp ne %struct.SGFTree_t* %461, null
  br i1 %462, label %463, label %467

463:                                              ; preds = %460
  %464 = load i8*, i8** %23, align 8
  %465 = load i32, i32* %24, align 4
  %466 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %464, i32 %465, i32 %466, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.73, i64 0, i64 0))
  br label %467

467:                                              ; preds = %463, %460
  store i32 5, i32* %5, align 4
  br label %764

468:                                              ; preds = %451
  %469 = load i32, i32* %34, align 4
  %470 = sub nsw i32 5, %469
  %471 = load i32, i32* %20, align 4
  %472 = icmp sgt i32 %470, %471
  br i1 %472, label %473, label %477

473:                                              ; preds = %468
  %474 = load i32, i32* %12, align 4
  store i32 %474, i32* %19, align 4
  %475 = load i32, i32* %34, align 4
  %476 = sub nsw i32 5, %475
  store i32 %476, i32* %20, align 4
  br label %477

477:                                              ; preds = %473, %468
  br label %478

478:                                              ; preds = %477
  br label %479

479:                                              ; preds = %478
  br label %489

480:                                              ; preds = %443
  %481 = load i32, i32* %6, align 4
  %482 = load i32, i32* %31, align 4
  %483 = load i32, i32* %32, align 4
  %484 = call i32 @do_attack(i32 %481, i32* null, i32 %482, i32 %483)
  %485 = icmp ne i32 %484, 5
  br i1 %485, label %486, label %488

486:                                              ; preds = %480
  %487 = load i32, i32* %12, align 4
  store i32 %487, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %488

488:                                              ; preds = %486, %480
  call void @popgo()
  br label %489

489:                                              ; preds = %488, %479
  br label %490

490:                                              ; preds = %489, %438
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %21, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %21, align 4
  br label %416, !llvm.loop !29

494:                                              ; preds = %416
  %495 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %496 = load i32, i32* %495, align 4
  store i32 %496, i32* %18, align 4
  %497 = load i32, i32* @stackp, align 4
  %498 = load i32, i32* @superstring_depth, align 4
  %499 = icmp sle i32 %497, %498
  br i1 %499, label %500, label %502

500:                                              ; preds = %494
  %501 = load i32, i32* %6, align 4
  call void @superstring_breakchain_moves(i32 %501, i32 4, %struct.reading_moves* %17)
  br label %502

502:                                              ; preds = %500, %494
  %503 = load i32, i32* @stackp, align 4
  %504 = load i32, i32* @superstring_depth, align 4
  %505 = icmp sle i32 %503, %504
  br i1 %505, label %506, label %606

506:                                              ; preds = %502
  %507 = load i32, i32* %6, align 4
  %508 = getelementptr inbounds [24 x i32], [24 x i32]* %36, i64 0, i64 0
  call void @find_superstring_liberties(i32 %507, i32* %35, i32* %508, i32 3)
  store i32 0, i32* %21, align 4
  br label %509

509:                                              ; preds = %581, %506
  %510 = load i32, i32* %21, align 4
  %511 = load i32, i32* %35, align 4
  %512 = icmp slt i32 %510, %511
  br i1 %512, label %513, label %584

513:                                              ; preds = %509
  %514 = load i32, i32* %21, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [24 x i32], [24 x i32]* %36, i64 0, i64 %515
  %517 = load i32, i32* %516, align 4
  store i32 %517, i32* %37, align 4
  %518 = load i32, i32* %37, align 4
  %519 = load i32, i32* %6, align 4
  %520 = call i32 @liberty_of_string(i32 %518, i32 %519)
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %523

522:                                              ; preds = %513
  br label %581

523:                                              ; preds = %513
  %524 = load i32, i32* %37, align 4
  %525 = load i32, i32* %10, align 4
  %526 = call i32 @approxlib(i32 %524, i32 %525, i32 2, i32* null)
  %527 = icmp sgt i32 %526, 1
  br i1 %527, label %528, label %580

528:                                              ; preds = %523
  br label %529

529:                                              ; preds = %528
  store i32 0, i32* %38, align 4
  br label %530

530:                                              ; preds = %551, %529
  %531 = load i32, i32* %38, align 4
  %532 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %533 = load i32, i32* %532, align 4
  %534 = icmp slt i32 %531, %533
  br i1 %534, label %535, label %554

535:                                              ; preds = %530
  %536 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %537 = load i32, i32* %38, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [50 x i32], [50 x i32]* %536, i64 0, i64 %538
  %540 = load i32, i32* %539, align 4
  %541 = load i32, i32* %37, align 4
  %542 = icmp eq i32 %540, %541
  br i1 %542, label %543, label %550

543:                                              ; preds = %535
  %544 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 1
  %545 = load i32, i32* %38, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [50 x i32], [50 x i32]* %544, i64 0, i64 %546
  %548 = load i32, i32* %547, align 4
  %549 = add nsw i32 %548, 0
  store i32 %549, i32* %547, align 4
  br label %554

550:                                              ; preds = %535
  br label %551

551:                                              ; preds = %550
  %552 = load i32, i32* %38, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %38, align 4
  br label %530, !llvm.loop !30

554:                                              ; preds = %543, %530
  %555 = load i32, i32* %38, align 4
  %556 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %557 = load i32, i32* %556, align 4
  %558 = icmp eq i32 %555, %557
  br i1 %558, label %559, label %578

559:                                              ; preds = %554
  %560 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %561 = load i32, i32* %560, align 4
  %562 = icmp slt i32 %561, 50
  br i1 %562, label %563, label %578

563:                                              ; preds = %559
  %564 = load i32, i32* %37, align 4
  %565 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %566 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %567 = load i32, i32* %566, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [50 x i32], [50 x i32]* %565, i64 0, i64 %568
  store i32 %564, i32* %569, align 4
  %570 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 1
  %571 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %572 = load i32, i32* %571, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [50 x i32], [50 x i32]* %570, i64 0, i64 %573
  store i32 0, i32* %574, align 4
  %575 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %576 = load i32, i32* %575, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %575, align 4
  br label %578

578:                                              ; preds = %563, %559, %554
  br label %579

579:                                              ; preds = %578
  br label %580

580:                                              ; preds = %579, %523
  br label %581

581:                                              ; preds = %580, %522
  %582 = load i32, i32* %21, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %21, align 4
  br label %509, !llvm.loop !31

584:                                              ; preds = %509
  store i32 0, i32* %21, align 4
  br label %585

585:                                              ; preds = %602, %584
  %586 = load i32, i32* %21, align 4
  %587 = load i32, i32* %35, align 4
  %588 = icmp slt i32 %586, %587
  br i1 %588, label %589, label %605

589:                                              ; preds = %585
  %590 = load i32, i32* %21, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds [24 x i32], [24 x i32]* %36, i64 0, i64 %591
  %593 = load i32, i32* %592, align 4
  store i32 %593, i32* %39, align 4
  %594 = load i32, i32* %39, align 4
  %595 = load i32, i32* %6, align 4
  %596 = call i32 @liberty_of_string(i32 %594, i32 %595)
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %599

598:                                              ; preds = %589
  br label %602

599:                                              ; preds = %589
  %600 = load i32, i32* %6, align 4
  %601 = load i32, i32* %39, align 4
  call void @special_rescue_moves(i32 %600, i32 %601, %struct.reading_moves* %17)
  br label %602

602:                                              ; preds = %599, %598
  %603 = load i32, i32* %21, align 4
  %604 = add nsw i32 %603, 1
  store i32 %604, i32* %21, align 4
  br label %585, !llvm.loop !32

605:                                              ; preds = %585
  br label %606

606:                                              ; preds = %605, %502
  %607 = load i32, i32* %6, align 4
  call void @break_chain2_defense_moves(i32 %607, %struct.reading_moves* %17)
  %608 = load i32, i32* @stackp, align 4
  %609 = load i32, i32* @backfill_depth, align 4
  %610 = icmp sle i32 %608, %609
  br i1 %610, label %611, label %614

611:                                              ; preds = %606
  %612 = load i32, i32* %6, align 4
  %613 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  call void @special_rescue5_moves(i32 %612, i32* %613, %struct.reading_moves* %17)
  br label %614

614:                                              ; preds = %611, %606
  %615 = load i32, i32* @stackp, align 4
  %616 = load i32, i32* @backfill2_depth, align 4
  %617 = icmp sle i32 %615, %616
  br i1 %617, label %618, label %620

618:                                              ; preds = %614
  %619 = load i32, i32* %6, align 4
  call void @break_chain3_moves(i32 %619, %struct.reading_moves* %17)
  br label %620

620:                                              ; preds = %618, %614
  %621 = load i32, i32* %6, align 4
  %622 = load i32, i32* %11, align 4
  %623 = load i8*, i8** %23, align 8
  %624 = load i32, i32* %18, align 4
  call void @order_moves(i32 %621, %struct.reading_moves* %17, i32 %622, i8* %623, i32 %624)
  %625 = load i32, i32* %18, align 4
  store i32 %625, i32* %21, align 4
  br label %626

626:                                              ; preds = %701, %620
  %627 = load i32, i32* %21, align 4
  %628 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 2
  %629 = load i32, i32* %628, align 4
  %630 = icmp slt i32 %627, %629
  br i1 %630, label %631, label %704

631:                                              ; preds = %626
  %632 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %17, i32 0, i32 0
  %633 = load i32, i32* %21, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds [50 x i32], [50 x i32]* %632, i64 0, i64 %634
  %636 = load i32, i32* %635, align 4
  store i32 %636, i32* %12, align 4
  %637 = load i32, i32* %12, align 4
  %638 = load i32, i32* %10, align 4
  %639 = load i32, i32* %6, align 4
  %640 = load i32, i32* %8, align 4
  %641 = load i32, i32* %9, align 4
  %642 = load i32, i32* @stackp, align 4
  %643 = load i32, i32* @ko_depth, align 4
  %644 = icmp sle i32 %642, %643
  br i1 %644, label %645, label %648

645:                                              ; preds = %631
  %646 = load i32, i32* %20, align 4
  %647 = icmp eq i32 %646, 0
  br label %648

648:                                              ; preds = %645, %631
  %649 = phi i1 [ false, %631 ], [ %647, %645 ]
  %650 = zext i1 %649 to i32
  %651 = call i32 @komaster_trymove(i32 %637, i32 %638, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0), i32 %639, i32 %640, i32 %641, i32* %40, i32* %41, i32* %42, i32 %650)
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %700

653:                                              ; preds = %648
  %654 = load i32, i32* %42, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %690, label %656

656:                                              ; preds = %653
  %657 = load i32, i32* %6, align 4
  %658 = load i32, i32* %40, align 4
  %659 = load i32, i32* %41, align 4
  %660 = call i32 @do_attack(i32 %657, i32* null, i32 %658, i32 %659)
  store i32 %660, i32* %43, align 4
  call void @popgo()
  br label %661

661:                                              ; preds = %656
  %662 = load i32, i32* %43, align 4
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %664, label %678

664:                                              ; preds = %661
  %665 = load i32*, i32** %7, align 8
  %666 = icmp ne i32* %665, null
  br i1 %666, label %667, label %670

667:                                              ; preds = %664
  %668 = load i32, i32* %12, align 4
  %669 = load i32*, i32** %7, align 8
  store i32 %668, i32* %669, align 4
  br label %670

670:                                              ; preds = %667, %664
  %671 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %672 = icmp ne %struct.SGFTree_t* %671, null
  br i1 %672, label %673, label %677

673:                                              ; preds = %670
  %674 = load i8*, i8** %23, align 8
  %675 = load i32, i32* %24, align 4
  %676 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %674, i32 %675, i32 %676, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  br label %677

677:                                              ; preds = %673, %670
  store i32 5, i32* %5, align 4
  br label %764

678:                                              ; preds = %661
  %679 = load i32, i32* %43, align 4
  %680 = sub nsw i32 5, %679
  %681 = load i32, i32* %20, align 4
  %682 = icmp sgt i32 %680, %681
  br i1 %682, label %683, label %687

683:                                              ; preds = %678
  %684 = load i32, i32* %12, align 4
  store i32 %684, i32* %19, align 4
  %685 = load i32, i32* %43, align 4
  %686 = sub nsw i32 5, %685
  store i32 %686, i32* %20, align 4
  br label %687

687:                                              ; preds = %683, %678
  br label %688

688:                                              ; preds = %687
  br label %689

689:                                              ; preds = %688
  br label %699

690:                                              ; preds = %653
  %691 = load i32, i32* %6, align 4
  %692 = load i32, i32* %40, align 4
  %693 = load i32, i32* %41, align 4
  %694 = call i32 @do_attack(i32 %691, i32* null, i32 %692, i32 %693)
  %695 = icmp ne i32 %694, 5
  br i1 %695, label %696, label %698

696:                                              ; preds = %690
  %697 = load i32, i32* %12, align 4
  store i32 %697, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %698

698:                                              ; preds = %696, %690
  call void @popgo()
  br label %699

699:                                              ; preds = %698, %689
  br label %700

700:                                              ; preds = %699, %648
  br label %701

701:                                              ; preds = %700
  %702 = load i32, i32* %21, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* %21, align 4
  br label %626, !llvm.loop !33

704:                                              ; preds = %626
  %705 = load i32, i32* %20, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %707, label %736

707:                                              ; preds = %704
  br label %708

708:                                              ; preds = %707
  %709 = load i32, i32* %20, align 4
  %710 = icmp ne i32 %709, 0
  br i1 %710, label %711, label %726

711:                                              ; preds = %708
  %712 = load i32*, i32** %7, align 8
  %713 = icmp ne i32* %712, null
  br i1 %713, label %714, label %717

714:                                              ; preds = %711
  %715 = load i32, i32* %19, align 4
  %716 = load i32*, i32** %7, align 8
  store i32 %715, i32* %716, align 4
  br label %717

717:                                              ; preds = %714, %711
  %718 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %719 = icmp ne %struct.SGFTree_t* %718, null
  br i1 %719, label %720, label %725

720:                                              ; preds = %717
  %721 = load i8*, i8** %23, align 8
  %722 = load i32, i32* %24, align 4
  %723 = load i32, i32* %19, align 4
  %724 = load i32, i32* %20, align 4
  call void @sgf_trace(i8* %721, i32 %722, i32 %723, i32 %724, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %725

725:                                              ; preds = %720, %717
  br label %733

726:                                              ; preds = %708
  %727 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %728 = icmp ne %struct.SGFTree_t* %727, null
  br i1 %728, label %729, label %732

729:                                              ; preds = %726
  %730 = load i8*, i8** %23, align 8
  %731 = load i32, i32* %24, align 4
  call void @sgf_trace(i8* %730, i32 %731, i32 0, i32 0, i8* null)
  br label %732

732:                                              ; preds = %729, %726
  br label %733

733:                                              ; preds = %732, %725
  %734 = load i32, i32* %20, align 4
  store i32 %734, i32* %5, align 4
  br label %764

735:                                              ; No predecessors!
  br label %736

736:                                              ; preds = %735, %704
  br label %737

737:                                              ; preds = %736
  %738 = load i32, i32* %20, align 4
  %739 = icmp ne i32 %738, 0
  br i1 %739, label %740, label %755

740:                                              ; preds = %737
  %741 = load i32*, i32** %7, align 8
  %742 = icmp ne i32* %741, null
  br i1 %742, label %743, label %746

743:                                              ; preds = %740
  %744 = load i32, i32* %19, align 4
  %745 = load i32*, i32** %7, align 8
  store i32 %744, i32* %745, align 4
  br label %746

746:                                              ; preds = %743, %740
  %747 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %748 = icmp ne %struct.SGFTree_t* %747, null
  br i1 %748, label %749, label %754

749:                                              ; preds = %746
  %750 = load i8*, i8** %23, align 8
  %751 = load i32, i32* %24, align 4
  %752 = load i32, i32* %19, align 4
  %753 = load i32, i32* %20, align 4
  call void @sgf_trace(i8* %750, i32 %751, i32 %752, i32 %753, i8* null)
  br label %754

754:                                              ; preds = %749, %746
  br label %762

755:                                              ; preds = %737
  %756 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %757 = icmp ne %struct.SGFTree_t* %756, null
  br i1 %757, label %758, label %761

758:                                              ; preds = %755
  %759 = load i8*, i8** %23, align 8
  %760 = load i32, i32* %24, align 4
  call void @sgf_trace(i8* %759, i32 %760, i32 0, i32 0, i8* null)
  br label %761

761:                                              ; preds = %758, %755
  br label %762

762:                                              ; preds = %761, %754
  %763 = load i32, i32* %20, align 4
  store i32 %763, i32* %5, align 4
  br label %764

764:                                              ; preds = %200, %467, %677, %733, %762
  %765 = load i32, i32* %5, align 4
  ret i32 %765
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defend3(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca %struct.reading_moves, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
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
  %31 = alloca [24 x i32], align 16
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i64 0, i64 0), i8** %20, align 8
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* @reading_node_counter, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @reading_node_counter, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 3, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %62, label %55

55:                                               ; preds = %4
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %55, %4
  br label %64

63:                                               ; preds = %55
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1408, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i64 0, i64 0), i32 -1, i32 -1)
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @countlib(i32 %65)
  %67 = icmp eq i32 %66, 3
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %70

69:                                               ; preds = %64
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1409, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0), i32 -1, i32 -1)
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %73 = call i32 @findlib(i32 %71, i32 3, i32* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp eq i32 %74, 3
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %84

77:                                               ; preds = %70
  %78 = load i32, i32* %6, align 4
  %79 = sdiv i32 %78, 20
  %80 = sub nsw i32 %79, 1
  %81 = load i32, i32* %6, align 4
  %82 = srem i32 %81, 20
  %83 = sub nsw i32 %82, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1412, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0), i32 %80, i32 %83)
  br label %84

84:                                               ; preds = %77, %76
  store i32 0, i32* %19, align 4
  br label %85

85:                                               ; preds = %102, %84
  %86 = load i32, i32* %19, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i32, i32* %19, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 0
  %95 = load i32, i32* %19, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [50 x i32], [50 x i32]* %94, i64 0, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 1
  %99 = load i32, i32* %19, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [50 x i32], [50 x i32]* %98, i64 0, i64 %100
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %19, align 4
  br label %85, !llvm.loop !34

105:                                              ; preds = %85
  %106 = load i32, i32* %13, align 4
  %107 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* %6, align 4
  call void @break_chain_moves(i32 %108, %struct.reading_moves* %15)
  %109 = load i32, i32* %6, align 4
  call void @break_chain2_efficient_moves(i32 %109, %struct.reading_moves* %15)
  %110 = load i32, i32* %6, align 4
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %10, align 4
  call void @propose_edge_moves(i32 %110, i32* %111, i32 %112, %struct.reading_moves* %15, i32 %113)
  %114 = load i32, i32* %6, align 4
  call void @edge_clamp_moves(i32 %114, %struct.reading_moves* %15)
  %115 = load i32, i32* @stackp, align 4
  %116 = load i32, i32* @backfill2_depth, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %105
  %119 = load i32, i32* %6, align 4
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  call void @hane_rescue_moves(i32 %119, i32* %120, %struct.reading_moves* %15)
  br label %121

121:                                              ; preds = %118, %105
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i8*, i8** %20, align 8
  call void @order_moves(i32 %122, %struct.reading_moves* %15, i32 %123, i8* %124, i32 0)
  store i32 0, i32* %19, align 4
  br label %125

125:                                              ; preds = %208, %121
  %126 = load i32, i32* %19, align 4
  %127 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %126, %128
  br i1 %129, label %130, label %211

130:                                              ; preds = %125
  %131 = load i32, i32* @stackp, align 4
  %132 = load i32, i32* @branch_depth, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %130
  %135 = load i32, i32* %19, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  br label %211

138:                                              ; preds = %134, %130
  %139 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 0
  %140 = load i32, i32* %19, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [50 x i32], [50 x i32]* %139, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @stackp, align 4
  %150 = load i32, i32* @ko_depth, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %138
  %153 = load i32, i32* %18, align 4
  %154 = icmp eq i32 %153, 0
  br label %155

155:                                              ; preds = %152, %138
  %156 = phi i1 [ false, %138 ], [ %154, %152 ]
  %157 = zext i1 %156 to i32
  %158 = call i32 @komaster_trymove(i32 %144, i32 %145, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.80, i64 0, i64 0), i32 %146, i32 %147, i32 %148, i32* %22, i32* %23, i32* %24, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %207

160:                                              ; preds = %155
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %197, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %6, align 4
  %165 = load i32, i32* %22, align 4
  %166 = load i32, i32* %23, align 4
  %167 = call i32 @do_attack(i32 %164, i32* null, i32 %165, i32 %166)
  store i32 %167, i32* %25, align 4
  call void @popgo()
  br label %168

168:                                              ; preds = %163
  %169 = load i32, i32* %25, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load i32*, i32** %7, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %12, align 4
  %176 = load i32*, i32** %7, align 8
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %174, %171
  %178 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %179 = icmp ne %struct.SGFTree_t* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %177
  %181 = load i8*, i8** %20, align 8
  %182 = load i32, i32* %21, align 4
  %183 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %181, i32 %182, i32 %183, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  br label %184

184:                                              ; preds = %180, %177
  store i32 5, i32* %5, align 4
  br label %586

185:                                              ; preds = %168
  %186 = load i32, i32* %25, align 4
  %187 = sub nsw i32 5, %186
  %188 = load i32, i32* %18, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %194

190:                                              ; preds = %185
  %191 = load i32, i32* %12, align 4
  store i32 %191, i32* %17, align 4
  %192 = load i32, i32* %25, align 4
  %193 = sub nsw i32 5, %192
  store i32 %193, i32* %18, align 4
  br label %194

194:                                              ; preds = %190, %185
  br label %195

195:                                              ; preds = %194
  br label %196

196:                                              ; preds = %195
  br label %206

197:                                              ; preds = %160
  %198 = load i32, i32* %6, align 4
  %199 = load i32, i32* %22, align 4
  %200 = load i32, i32* %23, align 4
  %201 = call i32 @do_attack(i32 %198, i32* null, i32 %199, i32 %200)
  %202 = icmp ne i32 %201, 5
  br i1 %202, label %203, label %205

203:                                              ; preds = %197
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %205

205:                                              ; preds = %203, %197
  call void @popgo()
  br label %206

206:                                              ; preds = %205, %196
  br label %207

207:                                              ; preds = %206, %155
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %19, align 4
  br label %125, !llvm.loop !35

211:                                              ; preds = %137, %125
  %212 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %16, align 4
  %214 = load i32, i32* @stackp, align 4
  %215 = load i32, i32* @backfill_depth, align 4
  %216 = icmp sle i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load i32, i32* %6, align 4
  %219 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  call void @special_rescue3_moves(i32 %218, i32* %219, %struct.reading_moves* %15)
  br label %220

220:                                              ; preds = %217, %211
  %221 = load i32, i32* @stackp, align 4
  %222 = load i32, i32* @depth, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %239

224:                                              ; preds = %220
  store i32 0, i32* %19, align 4
  br label %225

225:                                              ; preds = %235, %224
  %226 = load i32, i32* %19, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %238

229:                                              ; preds = %225
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %19, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %232
  %234 = load i32, i32* %233, align 4
  call void @special_rescue_moves(i32 %230, i32 %234, %struct.reading_moves* %15)
  br label %235

235:                                              ; preds = %229
  %236 = load i32, i32* %19, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %19, align 4
  br label %225, !llvm.loop !36

238:                                              ; preds = %225
  br label %239

239:                                              ; preds = %238, %220
  %240 = load i32, i32* @level, align 4
  %241 = icmp sge i32 %240, 10
  br i1 %241, label %242, label %248

242:                                              ; preds = %239
  %243 = load i32, i32* @stackp, align 4
  %244 = load i32, i32* @backfill2_depth, align 4
  %245 = icmp sle i32 %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = load i32, i32* %6, align 4
  call void @superstring_breakchain_moves(i32 %247, i32 4, %struct.reading_moves* %15)
  br label %248

248:                                              ; preds = %246, %242, %239
  %249 = load i32, i32* @stackp, align 4
  %250 = load i32, i32* @backfill2_depth, align 4
  %251 = icmp sle i32 %249, %250
  br i1 %251, label %252, label %254

252:                                              ; preds = %248
  %253 = load i32, i32* %6, align 4
  call void @break_chain2_defense_moves(i32 %253, %struct.reading_moves* %15)
  br label %254

254:                                              ; preds = %252, %248
  %255 = load i32, i32* @stackp, align 4
  %256 = load i32, i32* @backfill_depth, align 4
  %257 = icmp sle i32 %255, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %254
  %259 = load i32, i32* %6, align 4
  %260 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  call void @special_rescue5_moves(i32 %259, i32* %260, %struct.reading_moves* %15)
  %261 = load i32, i32* %6, align 4
  %262 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  call void @special_rescue6_moves(i32 %261, i32* %262, %struct.reading_moves* %15)
  br label %263

263:                                              ; preds = %258, %254
  %264 = load i32, i32* %6, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load i8*, i8** %20, align 8
  %267 = load i32, i32* %16, align 4
  call void @order_moves(i32 %264, %struct.reading_moves* %15, i32 %265, i8* %266, i32 %267)
  %268 = load i32, i32* %16, align 4
  store i32 %268, i32* %19, align 4
  br label %269

269:                                              ; preds = %344, %263
  %270 = load i32, i32* %19, align 4
  %271 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %270, %272
  br i1 %273, label %274, label %347

274:                                              ; preds = %269
  %275 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 0
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [50 x i32], [50 x i32]* %275, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %12, align 4
  %280 = load i32, i32* %12, align 4
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* %8, align 4
  %284 = load i32, i32* %9, align 4
  %285 = load i32, i32* @stackp, align 4
  %286 = load i32, i32* @ko_depth, align 4
  %287 = icmp sle i32 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %274
  %289 = load i32, i32* %18, align 4
  %290 = icmp eq i32 %289, 0
  br label %291

291:                                              ; preds = %288, %274
  %292 = phi i1 [ false, %274 ], [ %290, %288 ]
  %293 = zext i1 %292 to i32
  %294 = call i32 @komaster_trymove(i32 %280, i32 %281, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 %282, i32 %283, i32 %284, i32* %26, i32* %27, i32* %28, i32 %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %343

296:                                              ; preds = %291
  %297 = load i32, i32* %28, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %333, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %6, align 4
  %301 = load i32, i32* %26, align 4
  %302 = load i32, i32* %27, align 4
  %303 = call i32 @do_attack(i32 %300, i32* null, i32 %301, i32 %302)
  store i32 %303, i32* %29, align 4
  call void @popgo()
  br label %304

304:                                              ; preds = %299
  %305 = load i32, i32* %29, align 4
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %321

307:                                              ; preds = %304
  %308 = load i32*, i32** %7, align 8
  %309 = icmp ne i32* %308, null
  br i1 %309, label %310, label %313

310:                                              ; preds = %307
  %311 = load i32, i32* %12, align 4
  %312 = load i32*, i32** %7, align 8
  store i32 %311, i32* %312, align 4
  br label %313

313:                                              ; preds = %310, %307
  %314 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %315 = icmp ne %struct.SGFTree_t* %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load i8*, i8** %20, align 8
  %318 = load i32, i32* %21, align 4
  %319 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %317, i32 %318, i32 %319, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  br label %320

320:                                              ; preds = %316, %313
  store i32 5, i32* %5, align 4
  br label %586

321:                                              ; preds = %304
  %322 = load i32, i32* %29, align 4
  %323 = sub nsw i32 5, %322
  %324 = load i32, i32* %18, align 4
  %325 = icmp sgt i32 %323, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load i32, i32* %12, align 4
  store i32 %327, i32* %17, align 4
  %328 = load i32, i32* %29, align 4
  %329 = sub nsw i32 5, %328
  store i32 %329, i32* %18, align 4
  br label %330

330:                                              ; preds = %326, %321
  br label %331

331:                                              ; preds = %330
  br label %332

332:                                              ; preds = %331
  br label %342

333:                                              ; preds = %296
  %334 = load i32, i32* %6, align 4
  %335 = load i32, i32* %26, align 4
  %336 = load i32, i32* %27, align 4
  %337 = call i32 @do_attack(i32 %334, i32* null, i32 %335, i32 %336)
  %338 = icmp ne i32 %337, 5
  br i1 %338, label %339, label %341

339:                                              ; preds = %333
  %340 = load i32, i32* %12, align 4
  store i32 %340, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %341

341:                                              ; preds = %339, %333
  call void @popgo()
  br label %342

342:                                              ; preds = %341, %332
  br label %343

343:                                              ; preds = %342, %291
  br label %344

344:                                              ; preds = %343
  %345 = load i32, i32* %19, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %19, align 4
  br label %269, !llvm.loop !37

347:                                              ; preds = %269
  %348 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %16, align 4
  %350 = load i32, i32* @level, align 4
  %351 = icmp sge i32 %350, 10
  br i1 %351, label %352, label %456

352:                                              ; preds = %347
  %353 = load i32, i32* @stackp, align 4
  %354 = load i32, i32* @backfill2_depth, align 4
  %355 = icmp sle i32 %353, %354
  br i1 %355, label %356, label %456

356:                                              ; preds = %352
  %357 = load i32, i32* %6, align 4
  %358 = getelementptr inbounds [24 x i32], [24 x i32]* %31, i64 0, i64 0
  call void @find_superstring_liberties(i32 %357, i32* %30, i32* %358, i32 3)
  store i32 0, i32* %19, align 4
  br label %359

359:                                              ; preds = %431, %356
  %360 = load i32, i32* %19, align 4
  %361 = load i32, i32* %30, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %434

363:                                              ; preds = %359
  %364 = load i32, i32* %19, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [24 x i32], [24 x i32]* %31, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %32, align 4
  %368 = load i32, i32* %32, align 4
  %369 = load i32, i32* %6, align 4
  %370 = call i32 @liberty_of_string(i32 %368, i32 %369)
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %363
  br label %431

373:                                              ; preds = %363
  %374 = load i32, i32* %32, align 4
  %375 = load i32, i32* %10, align 4
  %376 = call i32 @approxlib(i32 %374, i32 %375, i32 2, i32* null)
  %377 = icmp sgt i32 %376, 1
  br i1 %377, label %378, label %430

378:                                              ; preds = %373
  br label %379

379:                                              ; preds = %378
  store i32 0, i32* %33, align 4
  br label %380

380:                                              ; preds = %401, %379
  %381 = load i32, i32* %33, align 4
  %382 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = icmp slt i32 %381, %383
  br i1 %384, label %385, label %404

385:                                              ; preds = %380
  %386 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 0
  %387 = load i32, i32* %33, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [50 x i32], [50 x i32]* %386, i64 0, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %32, align 4
  %392 = icmp eq i32 %390, %391
  br i1 %392, label %393, label %400

393:                                              ; preds = %385
  %394 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 1
  %395 = load i32, i32* %33, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [50 x i32], [50 x i32]* %394, i64 0, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = add nsw i32 %398, 0
  store i32 %399, i32* %397, align 4
  br label %404

400:                                              ; preds = %385
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %33, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %33, align 4
  br label %380, !llvm.loop !38

404:                                              ; preds = %393, %380
  %405 = load i32, i32* %33, align 4
  %406 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %407 = load i32, i32* %406, align 4
  %408 = icmp eq i32 %405, %407
  br i1 %408, label %409, label %428

409:                                              ; preds = %404
  %410 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %411 = load i32, i32* %410, align 4
  %412 = icmp slt i32 %411, 50
  br i1 %412, label %413, label %428

413:                                              ; preds = %409
  %414 = load i32, i32* %32, align 4
  %415 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 0
  %416 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [50 x i32], [50 x i32]* %415, i64 0, i64 %418
  store i32 %414, i32* %419, align 4
  %420 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 1
  %421 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %422 = load i32, i32* %421, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [50 x i32], [50 x i32]* %420, i64 0, i64 %423
  store i32 0, i32* %424, align 4
  %425 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %425, align 4
  br label %428

428:                                              ; preds = %413, %409, %404
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429, %373
  br label %431

431:                                              ; preds = %430, %372
  %432 = load i32, i32* %19, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %19, align 4
  br label %359, !llvm.loop !39

434:                                              ; preds = %359
  store i32 0, i32* %19, align 4
  br label %435

435:                                              ; preds = %452, %434
  %436 = load i32, i32* %19, align 4
  %437 = load i32, i32* %30, align 4
  %438 = icmp slt i32 %436, %437
  br i1 %438, label %439, label %455

439:                                              ; preds = %435
  %440 = load i32, i32* %19, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [24 x i32], [24 x i32]* %31, i64 0, i64 %441
  %443 = load i32, i32* %442, align 4
  store i32 %443, i32* %34, align 4
  %444 = load i32, i32* %34, align 4
  %445 = load i32, i32* %6, align 4
  %446 = call i32 @liberty_of_string(i32 %444, i32 %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %439
  br label %452

449:                                              ; preds = %439
  %450 = load i32, i32* %6, align 4
  %451 = load i32, i32* %34, align 4
  call void @special_rescue_moves(i32 %450, i32 %451, %struct.reading_moves* %15)
  br label %452

452:                                              ; preds = %449, %448
  %453 = load i32, i32* %19, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %19, align 4
  br label %435, !llvm.loop !40

455:                                              ; preds = %435
  br label %456

456:                                              ; preds = %455, %352, %347
  %457 = load i32, i32* @stackp, align 4
  %458 = load i32, i32* @backfill2_depth, align 4
  %459 = icmp sle i32 %457, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %456
  %461 = load i32, i32* %6, align 4
  call void @break_chain3_moves(i32 %461, %struct.reading_moves* %15)
  br label %462

462:                                              ; preds = %460, %456
  %463 = load i32, i32* %6, align 4
  %464 = load i32, i32* %11, align 4
  %465 = load i8*, i8** %20, align 8
  %466 = load i32, i32* %16, align 4
  call void @order_moves(i32 %463, %struct.reading_moves* %15, i32 %464, i8* %465, i32 %466)
  %467 = load i32, i32* %16, align 4
  store i32 %467, i32* %19, align 4
  br label %468

468:                                              ; preds = %543, %462
  %469 = load i32, i32* %19, align 4
  %470 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = icmp slt i32 %469, %471
  br i1 %472, label %473, label %546

473:                                              ; preds = %468
  %474 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 0
  %475 = load i32, i32* %19, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [50 x i32], [50 x i32]* %474, i64 0, i64 %476
  %478 = load i32, i32* %477, align 4
  store i32 %478, i32* %12, align 4
  %479 = load i32, i32* %12, align 4
  %480 = load i32, i32* %10, align 4
  %481 = load i32, i32* %6, align 4
  %482 = load i32, i32* %8, align 4
  %483 = load i32, i32* %9, align 4
  %484 = load i32, i32* @stackp, align 4
  %485 = load i32, i32* @ko_depth, align 4
  %486 = icmp sle i32 %484, %485
  br i1 %486, label %487, label %490

487:                                              ; preds = %473
  %488 = load i32, i32* %18, align 4
  %489 = icmp eq i32 %488, 0
  br label %490

490:                                              ; preds = %487, %473
  %491 = phi i1 [ false, %473 ], [ %489, %487 ]
  %492 = zext i1 %491 to i32
  %493 = call i32 @komaster_trymove(i32 %479, i32 %480, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i64 0, i64 0), i32 %481, i32 %482, i32 %483, i32* %35, i32* %36, i32* %37, i32 %492)
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %542

495:                                              ; preds = %490
  %496 = load i32, i32* %37, align 4
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %532, label %498

498:                                              ; preds = %495
  %499 = load i32, i32* %6, align 4
  %500 = load i32, i32* %35, align 4
  %501 = load i32, i32* %36, align 4
  %502 = call i32 @do_attack(i32 %499, i32* null, i32 %500, i32 %501)
  store i32 %502, i32* %38, align 4
  call void @popgo()
  br label %503

503:                                              ; preds = %498
  %504 = load i32, i32* %38, align 4
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %520

506:                                              ; preds = %503
  %507 = load i32*, i32** %7, align 8
  %508 = icmp ne i32* %507, null
  br i1 %508, label %509, label %512

509:                                              ; preds = %506
  %510 = load i32, i32* %12, align 4
  %511 = load i32*, i32** %7, align 8
  store i32 %510, i32* %511, align 4
  br label %512

512:                                              ; preds = %509, %506
  %513 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %514 = icmp ne %struct.SGFTree_t* %513, null
  br i1 %514, label %515, label %519

515:                                              ; preds = %512
  %516 = load i8*, i8** %20, align 8
  %517 = load i32, i32* %21, align 4
  %518 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %516, i32 %517, i32 %518, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  br label %519

519:                                              ; preds = %515, %512
  store i32 5, i32* %5, align 4
  br label %586

520:                                              ; preds = %503
  %521 = load i32, i32* %38, align 4
  %522 = sub nsw i32 5, %521
  %523 = load i32, i32* %18, align 4
  %524 = icmp sgt i32 %522, %523
  br i1 %524, label %525, label %529

525:                                              ; preds = %520
  %526 = load i32, i32* %12, align 4
  store i32 %526, i32* %17, align 4
  %527 = load i32, i32* %38, align 4
  %528 = sub nsw i32 5, %527
  store i32 %528, i32* %18, align 4
  br label %529

529:                                              ; preds = %525, %520
  br label %530

530:                                              ; preds = %529
  br label %531

531:                                              ; preds = %530
  br label %541

532:                                              ; preds = %495
  %533 = load i32, i32* %6, align 4
  %534 = load i32, i32* %35, align 4
  %535 = load i32, i32* %36, align 4
  %536 = call i32 @do_attack(i32 %533, i32* null, i32 %534, i32 %535)
  %537 = icmp ne i32 %536, 5
  br i1 %537, label %538, label %540

538:                                              ; preds = %532
  %539 = load i32, i32* %12, align 4
  store i32 %539, i32* %17, align 4
  store i32 1, i32* %18, align 4
  br label %540

540:                                              ; preds = %538, %532
  call void @popgo()
  br label %541

541:                                              ; preds = %540, %531
  br label %542

542:                                              ; preds = %541, %490
  br label %543

543:                                              ; preds = %542
  %544 = load i32, i32* %19, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %19, align 4
  br label %468, !llvm.loop !41

546:                                              ; preds = %468
  %547 = load i32, i32* %18, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %578

549:                                              ; preds = %546
  br label %550

550:                                              ; preds = %549
  %551 = load i32, i32* %18, align 4
  %552 = icmp ne i32 %551, 0
  br i1 %552, label %553, label %568

553:                                              ; preds = %550
  %554 = load i32*, i32** %7, align 8
  %555 = icmp ne i32* %554, null
  br i1 %555, label %556, label %559

556:                                              ; preds = %553
  %557 = load i32, i32* %17, align 4
  %558 = load i32*, i32** %7, align 8
  store i32 %557, i32* %558, align 4
  br label %559

559:                                              ; preds = %556, %553
  %560 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %561 = icmp ne %struct.SGFTree_t* %560, null
  br i1 %561, label %562, label %567

562:                                              ; preds = %559
  %563 = load i8*, i8** %20, align 8
  %564 = load i32, i32* %21, align 4
  %565 = load i32, i32* %17, align 4
  %566 = load i32, i32* %18, align 4
  call void @sgf_trace(i8* %563, i32 %564, i32 %565, i32 %566, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %567

567:                                              ; preds = %562, %559
  br label %575

568:                                              ; preds = %550
  %569 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %570 = icmp ne %struct.SGFTree_t* %569, null
  br i1 %570, label %571, label %574

571:                                              ; preds = %568
  %572 = load i8*, i8** %20, align 8
  %573 = load i32, i32* %21, align 4
  call void @sgf_trace(i8* %572, i32 %573, i32 0, i32 0, i8* null)
  br label %574

574:                                              ; preds = %571, %568
  br label %575

575:                                              ; preds = %574, %567
  %576 = load i32, i32* %18, align 4
  store i32 %576, i32* %5, align 4
  br label %586

577:                                              ; No predecessors!
  br label %578

578:                                              ; preds = %577, %546
  br label %579

579:                                              ; preds = %578
  %580 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %581 = icmp ne %struct.SGFTree_t* %580, null
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = load i8*, i8** %20, align 8
  %584 = load i32, i32* %21, align 4
  call void @sgf_trace(i8* %583, i32 %584, i32 0, i32 0, i8* null)
  br label %585

585:                                              ; preds = %582, %579
  store i32 0, i32* %5, align 4
  br label %586

586:                                              ; preds = %184, %320, %519, %575, %585
  %587 = load i32, i32* %5, align 4
  ret i32 %587
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @defend4(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca %struct.reading_moves, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i64 0, i64 0), i8** %19, align 8
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %20, align 4
  %26 = load i32, i32* @reading_node_counter, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @reading_node_counter, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = sub nsw i32 3, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %48, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %4
  br label %50

49:                                               ; preds = %41
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1611, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i64 0, i64 0), i32 -1, i32 -1)
  br label %50

50:                                               ; preds = %49, %48
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @countlib(i32 %51)
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %56

55:                                               ; preds = %50
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1612, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.85, i64 0, i64 0), i32 -1, i32 -1)
  br label %56

56:                                               ; preds = %55, %54
  %57 = load i32, i32* %6, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %59 = call i32 @findlib(i32 %57, i32 4, i32* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %70

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 20
  %66 = sub nsw i32 %65, 1
  %67 = load i32, i32* %6, align 4
  %68 = srem i32 %67, 20
  %69 = sub nsw i32 %68, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1615, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i64 0, i64 0), i32 %66, i32 %69)
  br label %70

70:                                               ; preds = %63, %62
  store i32 0, i32* %18, align 4
  br label %71

71:                                               ; preds = %88, %70
  %72 = load i32, i32* %18, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i32, i32* %18, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 0
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [50 x i32], [50 x i32]* %80, i64 0, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 1
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [50 x i32], [50 x i32]* %84, i64 0, i64 %86
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %18, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %18, align 4
  br label %71, !llvm.loop !42

91:                                               ; preds = %71
  %92 = load i32, i32* %13, align 4
  %93 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  store i32 %92, i32* %93, align 4
  %94 = load i32, i32* %6, align 4
  call void @break_chain_moves(i32 %94, %struct.reading_moves* %15)
  %95 = load i32, i32* %6, align 4
  call void @break_chain2_efficient_moves(i32 %95, %struct.reading_moves* %15)
  %96 = load i32, i32* @stackp, align 4
  %97 = load i32, i32* @backfill_depth, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %6, align 4
  call void @break_chain2_defense_moves(i32 %100, %struct.reading_moves* %15)
  br label %101

101:                                              ; preds = %99, %91
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i8*, i8** %19, align 8
  call void @order_moves(i32 %102, %struct.reading_moves* %15, i32 %103, i8* %104, i32 0)
  store i32 0, i32* %18, align 4
  br label %105

105:                                              ; preds = %188, %101
  %106 = load i32, i32* %18, align 4
  %107 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %106, %108
  br i1 %109, label %110, label %191

110:                                              ; preds = %105
  %111 = load i32, i32* @stackp, align 4
  %112 = load i32, i32* @branch_depth, align 4
  %113 = icmp sge i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %110
  %115 = load i32, i32* %18, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %191

118:                                              ; preds = %114, %110
  %119 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %15, i32 0, i32 0
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [50 x i32], [50 x i32]* %119, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @stackp, align 4
  %130 = load i32, i32* @ko_depth, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %118
  %133 = load i32, i32* %17, align 4
  %134 = icmp eq i32 %133, 0
  br label %135

135:                                              ; preds = %132, %118
  %136 = phi i1 [ false, %118 ], [ %134, %132 ]
  %137 = zext i1 %136 to i32
  %138 = call i32 @komaster_trymove(i32 %124, i32 %125, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i64 0, i64 0), i32 %126, i32 %127, i32 %128, i32* %21, i32* %22, i32* %23, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %187

140:                                              ; preds = %135
  %141 = load i32, i32* %23, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %177, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %21, align 4
  %146 = load i32, i32* %22, align 4
  %147 = call i32 @do_attack(i32 %144, i32* null, i32 %145, i32 %146)
  store i32 %147, i32* %24, align 4
  call void @popgo()
  br label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %24, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %148
  %152 = load i32*, i32** %7, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %12, align 4
  %156 = load i32*, i32** %7, align 8
  store i32 %155, i32* %156, align 4
  br label %157

157:                                              ; preds = %154, %151
  %158 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %159 = icmp ne %struct.SGFTree_t* %158, null
  br i1 %159, label %160, label %164

160:                                              ; preds = %157
  %161 = load i8*, i8** %19, align 8
  %162 = load i32, i32* %20, align 4
  %163 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %161, i32 %162, i32 %163, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0))
  br label %164

164:                                              ; preds = %160, %157
  store i32 5, i32* %5, align 4
  br label %231

165:                                              ; preds = %148
  %166 = load i32, i32* %24, align 4
  %167 = sub nsw i32 5, %166
  %168 = load i32, i32* %17, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %165
  %171 = load i32, i32* %12, align 4
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %24, align 4
  %173 = sub nsw i32 5, %172
  store i32 %173, i32* %17, align 4
  br label %174

174:                                              ; preds = %170, %165
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175
  br label %186

177:                                              ; preds = %140
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %22, align 4
  %181 = call i32 @do_attack(i32 %178, i32* null, i32 %179, i32 %180)
  %182 = icmp ne i32 %181, 5
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32, i32* %12, align 4
  store i32 %184, i32* %16, align 4
  store i32 1, i32* %17, align 4
  br label %185

185:                                              ; preds = %183, %177
  call void @popgo()
  br label %186

186:                                              ; preds = %185, %176
  br label %187

187:                                              ; preds = %186, %135
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %105, !llvm.loop !43

191:                                              ; preds = %117, %105
  %192 = load i32, i32* %17, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %223

194:                                              ; preds = %191
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %195
  %199 = load i32*, i32** %7, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %204

201:                                              ; preds = %198
  %202 = load i32, i32* %16, align 4
  %203 = load i32*, i32** %7, align 8
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %201, %198
  %205 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %206 = icmp ne %struct.SGFTree_t* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load i8*, i8** %19, align 8
  %209 = load i32, i32* %20, align 4
  %210 = load i32, i32* %16, align 4
  %211 = load i32, i32* %17, align 4
  call void @sgf_trace(i8* %208, i32 %209, i32 %210, i32 %211, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %212

212:                                              ; preds = %207, %204
  br label %220

213:                                              ; preds = %195
  %214 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %215 = icmp ne %struct.SGFTree_t* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i8*, i8** %19, align 8
  %218 = load i32, i32* %20, align 4
  call void @sgf_trace(i8* %217, i32 %218, i32 0, i32 0, i8* null)
  br label %219

219:                                              ; preds = %216, %213
  br label %220

220:                                              ; preds = %219, %212
  %221 = load i32, i32* %17, align 4
  store i32 %221, i32* %5, align 4
  br label %231

222:                                              ; No predecessors!
  br label %223

223:                                              ; preds = %222, %191
  br label %224

224:                                              ; preds = %223
  %225 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %226 = icmp ne %struct.SGFTree_t* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i8*, i8** %19, align 8
  %229 = load i32, i32* %20, align 4
  call void @sgf_trace(i8* %228, i32 %229, i32 0, i32 0, i8* null)
  br label %230

230:                                              ; preds = %227, %224
  store i32 0, i32* %5, align 4
  br label %231

231:                                              ; preds = %164, %220, %230
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_chain_moves(i32 %0, %struct.reading_moves* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reading_moves*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [160 x i32], align 16
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.reading_moves* %1, %struct.reading_moves** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = getelementptr inbounds [160 x i32], [160 x i32]* %8, i64 0, i64 0
  %12 = call i32 @chainlinks2(i32 %10, i32* %11, i32 1)
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %84, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %87

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [160 x i32], [160 x i32]* %8, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @findlib(i32 %21, i32 1, i32* %6)
  br label %23

23:                                               ; preds = %17
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %27 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %24
  %31 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %32 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %31, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [50 x i32], [50 x i32]* %32, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %30
  %40 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %41 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %40, i32 0, i32 1
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [50 x i32], [50 x i32]* %41, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %51

47:                                               ; preds = %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %24, !llvm.loop !44

51:                                               ; preds = %39, %24
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %54 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %51
  %58 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %59 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 50
  br i1 %61, label %62, label %82

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %65 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %64, i32 0, i32 0
  %66 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %67 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [50 x i32], [50 x i32]* %65, i64 0, i64 %69
  store i32 %63, i32* %70, align 4
  %71 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %72 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %71, i32 0, i32 1
  %73 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %74 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [50 x i32], [50 x i32]* %72, i64 0, i64 %76
  store i32 1, i32* %77, align 4
  %78 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %79 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %62, %57, %51
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %13, !llvm.loop !45

87:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_up_snapback_moves(i32 %0, i32 %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reading_moves*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sub nsw i32 3, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %29

22:                                               ; preds = %3
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 20
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %4, align 4
  %27 = srem i32 %26, 20
  %28 = sub nsw i32 %27, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4490, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i32 %25, i32 %28)
  br label %29

29:                                               ; preds = %22, %21
  %30 = load i32, i32* @stackp, align 4
  %31 = load i32, i32* @backfill_depth, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %113

33:                                               ; preds = %29
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @countstones(i32 %34)
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %113

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %41 = call i32 @approxlib(i32 %38, i32 %39, i32 2, i32* %40)
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %113

43:                                               ; preds = %37
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @is_self_atari(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %113, label %49

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %76, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %54 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %51
  %58 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %59 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %58, i32 0, i32 0
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [50 x i32], [50 x i32]* %59, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %69 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %68, i32 0, i32 1
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [50 x i32], [50 x i32]* %69, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 0
  store i32 %74, i32* %72, align 4
  br label %79

75:                                               ; preds = %57
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %51, !llvm.loop !46

79:                                               ; preds = %67, %51
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %82 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %80, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %79
  %86 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %87 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp slt i32 %88, 50
  br i1 %89, label %90, label %111

90:                                               ; preds = %85
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %94 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %93, i32 0, i32 0
  %95 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %96 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [50 x i32], [50 x i32]* %94, i64 0, i64 %98
  store i32 %92, i32* %99, align 4
  %100 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %101 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %100, i32 0, i32 1
  %102 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %103 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [50 x i32], [50 x i32]* %101, i64 0, i64 %105
  store i32 0, i32* %106, align 4
  %107 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %108 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %90, %85, %79
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112, %43, %37, %33, %29
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @order_moves(i32 %0, %struct.reading_moves* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.reading_moves*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca [500 x i8], align 16
  %33 = alloca i8*, align 8
  %34 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.reading_moves* %1, %struct.reading_moves** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @countlib(i32 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %43 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %44, %45
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %49

48:                                               ; preds = %5
  br label %604

49:                                               ; preds = %5
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %441, %49
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %54 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %444

57:                                               ; preds = %51
  %58 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %59 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %58, i32 0, i32 0
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [50 x i32], [50 x i32]* %59, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %64 = load i32, i32* %18, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  call void @incremental_order_moves(i32 %64, i32 %65, i32 %66, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %250

70:                                               ; preds = %57
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @approxlib(i32 %71, i32 %72, i32 10, i32* null)
  store i32 %73, i32* %27, align 4
  %74 = load i32, i32* %20, align 4
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %111

76:                                               ; preds = %70
  %77 = load i32, i32* %27, align 4
  %78 = icmp sgt i32 %77, 5
  br i1 %78, label %86, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %27, align 4
  %81 = icmp eq i32 %80, 4
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i32, i32* @stackp, align 4
  %84 = load i32, i32* @fourlib_depth, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %82, %76
  %87 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 5), align 4
  %88 = load i32, i32* %27, align 4
  %89 = sub nsw i32 %88, 4
  %90 = add nsw i32 %87, %89
  %91 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %92 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %91, i32 0, i32 1
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [50 x i32], [50 x i32]* %92, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %90
  store i32 %97, i32* %95, align 4
  br label %110

98:                                               ; preds = %82, %79
  %99 = load i32, i32* %27, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_lib_score, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %104 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %103, i32 0, i32 1
  %105 = load i32, i32* %13, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [50 x i32], [50 x i32]* %104, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, %102
  store i32 %109, i32* %107, align 4
  br label %110

110:                                              ; preds = %98, %86
  br label %136

111:                                              ; preds = %70
  %112 = load i32, i32* %27, align 4
  %113 = icmp sgt i32 %112, 4
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i64 0, i64 4), align 16
  %116 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %117 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %116, i32 0, i32 1
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [50 x i32], [50 x i32]* %117, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, %115
  store i32 %122, i32* %120, align 4
  br label %135

123:                                              ; preds = %111
  %124 = load i32, i32* %27, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [5 x i32], [5 x i32]* @defend_not_adjacent_lib_score, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %129 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %128, i32 0, i32 1
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [50 x i32], [50 x i32]* %129, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, %127
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %123, %114
  br label %136

136:                                              ; preds = %135, %110
  %137 = load i32, i32* %26, align 4
  %138 = icmp sle i32 %137, 4
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  br label %141

140:                                              ; preds = %136
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4227, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i64 0, i64 0), i32 -1, i32 -1)
  br label %141

141:                                              ; preds = %140, %139
  %142 = load i32, i32* %26, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [5 x i32], [5 x i32]* @defend_open_score, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %147 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %146, i32 0, i32 1
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [50 x i32], [50 x i32]* %147, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %145
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %141
  %156 = load i32, i32* %23, align 4
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %167

158:                                              ; preds = %155, %141
  %159 = load i32, i32* @defend_not_edge_score, align 4
  %160 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %161 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %160, i32 0, i32 1
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [50 x i32], [50 x i32]* %161, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, %159
  store i32 %166, i32* %164, align 4
  br label %167

167:                                              ; preds = %158, %155
  %168 = load i32, i32* %23, align 4
  %169 = icmp sle i32 %168, 5
  br i1 %169, label %170, label %182

170:                                              ; preds = %167
  %171 = load i32, i32* %23, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %176 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %175, i32 0, i32 1
  %177 = load i32, i32* %13, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [50 x i32], [50 x i32]* %176, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %174
  store i32 %181, i32* %179, align 4
  br label %193

182:                                              ; preds = %167
  %183 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_capture_score, i64 0, i64 5), align 4
  %184 = load i32, i32* %23, align 4
  %185 = add nsw i32 %183, %184
  %186 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %187 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %186, i32 0, i32 1
  %188 = load i32, i32* %13, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [50 x i32], [50 x i32]* %187, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %185
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %182, %170
  %194 = load i32, i32* %27, align 4
  %195 = load i32, i32* %23, align 4
  %196 = add nsw i32 %194, %195
  %197 = icmp sgt i32 %196, 1
  br i1 %197, label %198, label %225

198:                                              ; preds = %193
  %199 = load i32, i32* %24, align 4
  %200 = icmp sle i32 %199, 5
  br i1 %200, label %201, label %213

201:                                              ; preds = %198
  %202 = load i32, i32* %24, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %207 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %206, i32 0, i32 1
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [50 x i32], [50 x i32]* %207, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %205
  store i32 %212, i32* %210, align 4
  br label %224

213:                                              ; preds = %198
  %214 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_atari_score, i64 0, i64 5), align 4
  %215 = load i32, i32* %24, align 4
  %216 = add nsw i32 %214, %215
  %217 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %218 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %217, i32 0, i32 1
  %219 = load i32, i32* %13, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [50 x i32], [50 x i32]* %218, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, %216
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %213, %201
  br label %225

225:                                              ; preds = %224, %193
  %226 = load i32, i32* %25, align 4
  %227 = icmp sle i32 %226, 5
  br i1 %227, label %228, label %240

228:                                              ; preds = %225
  %229 = load i32, i32* %25, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %234 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %233, i32 0, i32 1
  %235 = load i32, i32* %13, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [50 x i32], [50 x i32]* %234, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, %232
  store i32 %239, i32* %237, align 4
  br label %249

240:                                              ; preds = %225
  %241 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @defend_save_score, i64 0, i64 5), align 4
  %242 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %243 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %242, i32 0, i32 1
  %244 = load i32, i32* %13, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [50 x i32], [50 x i32]* %243, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, %241
  store i32 %248, i32* %246, align 4
  br label %249

249:                                              ; preds = %240, %228
  br label %440

250:                                              ; preds = %57
  %251 = load i32, i32* %18, align 4
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @approxlib(i32 %251, i32 %252, i32 4, i32* null)
  store i32 %253, i32* %28, align 4
  %254 = load i32, i32* %28, align 4
  %255 = icmp sgt i32 %254, 4
  br i1 %255, label %256, label %257

256:                                              ; preds = %250
  store i32 4, i32* %28, align 4
  br label %257

257:                                              ; preds = %256, %250
  %258 = load i32, i32* %28, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [5 x i32], [5 x i32]* @attack_own_lib_score, i64 0, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %263 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %262, i32 0, i32 1
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [50 x i32], [50 x i32]* %263, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = add nsw i32 %267, %261
  store i32 %268, i32* %266, align 4
  %269 = load i32, i32* %28, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %283

271:                                              ; preds = %257
  %272 = load i32, i32* %23, align 4
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %283

274:                                              ; preds = %271
  %275 = load i32, i32* @attack_ko_score, align 4
  %276 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %277 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %276, i32 0, i32 1
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [50 x i32], [50 x i32]* %277, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, %275
  store i32 %282, i32* %280, align 4
  br label %283

283:                                              ; preds = %274, %271, %257
  %284 = load i32, i32* %28, align 4
  %285 = load i32, i32* %23, align 4
  %286 = add nsw i32 %284, %285
  %287 = icmp sgt i32 %286, 1
  br i1 %287, label %294, label %288

288:                                              ; preds = %283
  %289 = load i32, i32* %12, align 4
  %290 = icmp sle i32 %289, 2
  br i1 %290, label %291, label %363

291:                                              ; preds = %288
  %292 = load i32, i32* %21, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %363

294:                                              ; preds = %291, %283
  %295 = load i32, i32* %20, align 4
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %363

297:                                              ; preds = %294
  %298 = load i32, i32* %18, align 4
  %299 = load i32, i32* %11, align 4
  %300 = call i32 @approxlib(i32 %298, i32 %299, i32 5, i32* null)
  store i32 %300, i32* %30, align 4
  %301 = load i32, i32* %30, align 4
  %302 = icmp sgt i32 %301, 5
  br i1 %302, label %310, label %303

303:                                              ; preds = %297
  %304 = load i32, i32* %30, align 4
  %305 = icmp eq i32 %304, 4
  br i1 %305, label %306, label %311

306:                                              ; preds = %303
  %307 = load i32, i32* @stackp, align 4
  %308 = load i32, i32* @fourlib_depth, align 4
  %309 = icmp sgt i32 %307, %308
  br i1 %309, label %310, label %311

310:                                              ; preds = %306, %297
  store i32 5, i32* %30, align 4
  br label %311

311:                                              ; preds = %310, %306, %303
  %312 = load i32, i32* %30, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_string_lib_score, i64 0, i64 %313
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %317 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %316, i32 0, i32 1
  %318 = load i32, i32* %13, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [50 x i32], [50 x i32]* %317, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = add nsw i32 %321, %315
  store i32 %322, i32* %320, align 4
  %323 = load i32, i32* %12, align 4
  %324 = icmp sle i32 %323, 2
  br i1 %324, label %325, label %330

325:                                              ; preds = %311
  %326 = load i32, i32* %28, align 4
  %327 = load i32, i32* %23, align 4
  %328 = add nsw i32 %326, %327
  %329 = icmp sgt i32 %328, 1
  br label %330

330:                                              ; preds = %325, %311
  %331 = phi i1 [ false, %311 ], [ %329, %325 ]
  %332 = zext i1 %331 to i32
  store i32 %332, i32* %29, align 4
  %333 = load i32, i32* %30, align 4
  %334 = icmp eq i32 %333, 1
  br i1 %334, label %335, label %350

335:                                              ; preds = %330
  %336 = load i32, i32* %25, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %350

338:                                              ; preds = %335
  %339 = load i32, i32* %29, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %350, label %341

341:                                              ; preds = %338
  %342 = load i32, i32* @cannot_defend_penalty, align 4
  %343 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %344 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %343, i32 0, i32 1
  %345 = load i32, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [50 x i32], [50 x i32]* %344, i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  %349 = add nsw i32 %348, %342
  store i32 %349, i32* %347, align 4
  br label %350

350:                                              ; preds = %341, %338, %335, %330
  %351 = load i32, i32* %29, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %362

353:                                              ; preds = %350
  %354 = load i32, i32* @safe_atari_score, align 4
  %355 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %356 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %355, i32 0, i32 1
  %357 = load i32, i32* %13, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [50 x i32], [50 x i32]* %356, i64 0, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %360, %354
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %353, %350
  br label %363

363:                                              ; preds = %362, %294, %291, %288
  %364 = load i32, i32* %26, align 4
  %365 = icmp sle i32 %364, 4
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  br label %368

367:                                              ; preds = %363
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4300, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.64, i64 0, i64 0), i32 -1, i32 -1)
  br label %368

368:                                              ; preds = %367, %366
  %369 = load i32, i32* %26, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [5 x i32], [5 x i32]* @attack_open_score, i64 0, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %374 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %373, i32 0, i32 1
  %375 = load i32, i32* %13, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [50 x i32], [50 x i32]* %374, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = add nsw i32 %378, %372
  store i32 %379, i32* %377, align 4
  %380 = load i32, i32* %19, align 4
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %368
  %383 = load i32, i32* @attack_not_edge_score, align 4
  %384 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %385 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %384, i32 0, i32 1
  %386 = load i32, i32* %13, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [50 x i32], [50 x i32]* %385, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = add nsw i32 %389, %383
  store i32 %390, i32* %388, align 4
  br label %391

391:                                              ; preds = %382, %368
  %392 = load i32, i32* %23, align 4
  %393 = icmp sle i32 %392, 5
  br i1 %393, label %394, label %406

394:                                              ; preds = %391
  %395 = load i32, i32* %23, align 4
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 %396
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %400 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %399, i32 0, i32 1
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds [50 x i32], [50 x i32]* %400, i64 0, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %404, %398
  store i32 %405, i32* %403, align 4
  br label %415

406:                                              ; preds = %391
  %407 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_capture_score, i64 0, i64 5), align 4
  %408 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %409 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %408, i32 0, i32 1
  %410 = load i32, i32* %13, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [50 x i32], [50 x i32]* %409, i64 0, i64 %411
  %413 = load i32, i32* %412, align 4
  %414 = add nsw i32 %413, %407
  store i32 %414, i32* %412, align 4
  br label %415

415:                                              ; preds = %406, %394
  %416 = load i32, i32* %25, align 4
  %417 = icmp sle i32 %416, 5
  br i1 %417, label %418, label %430

418:                                              ; preds = %415
  %419 = load i32, i32* %25, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %424 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %423, i32 0, i32 1
  %425 = load i32, i32* %13, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [50 x i32], [50 x i32]* %424, i64 0, i64 %426
  %428 = load i32, i32* %427, align 4
  %429 = add nsw i32 %428, %422
  store i32 %429, i32* %427, align 4
  br label %439

430:                                              ; preds = %415
  %431 = load i32, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @attack_save_score, i64 0, i64 5), align 4
  %432 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %433 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %432, i32 0, i32 1
  %434 = load i32, i32* %13, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [50 x i32], [50 x i32]* %433, i64 0, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = add nsw i32 %437, %431
  store i32 %438, i32* %436, align 4
  br label %439

439:                                              ; preds = %430, %418
  br label %440

440:                                              ; preds = %439, %249
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %13, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %13, align 4
  br label %51, !llvm.loop !47

444:                                              ; preds = %51
  %445 = load i32, i32* %10, align 4
  store i32 %445, i32* %14, align 4
  br label %446

446:                                              ; preds = %534, %444
  %447 = load i32, i32* %14, align 4
  %448 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %449 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 4
  %451 = sub nsw i32 %450, 1
  %452 = icmp slt i32 %447, %451
  br i1 %452, label %453, label %537

453:                                              ; preds = %446
  %454 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %455 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %454, i32 0, i32 1
  %456 = load i32, i32* %14, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [50 x i32], [50 x i32]* %455, i64 0, i64 %457
  %459 = load i32, i32* %458, align 4
  store i32 %459, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %460 = load i32, i32* %14, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %15, align 4
  br label %462

462:                                              ; preds = %486, %453
  %463 = load i32, i32* %15, align 4
  %464 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %465 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 4
  %467 = icmp slt i32 %463, %466
  br i1 %467, label %468, label %489

468:                                              ; preds = %462
  %469 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %470 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %469, i32 0, i32 1
  %471 = load i32, i32* %15, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [50 x i32], [50 x i32]* %470, i64 0, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load i32, i32* %16, align 4
  %476 = icmp sgt i32 %474, %475
  br i1 %476, label %477, label %485

477:                                              ; preds = %468
  %478 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %479 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %478, i32 0, i32 1
  %480 = load i32, i32* %15, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds [50 x i32], [50 x i32]* %479, i64 0, i64 %481
  %483 = load i32, i32* %482, align 4
  store i32 %483, i32* %16, align 4
  %484 = load i32, i32* %15, align 4
  store i32 %484, i32* %17, align 4
  br label %485

485:                                              ; preds = %477, %468
  br label %486

486:                                              ; preds = %485
  %487 = load i32, i32* %15, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %15, align 4
  br label %462, !llvm.loop !48

489:                                              ; preds = %462
  %490 = load i32, i32* %17, align 4
  %491 = icmp ne i32 %490, 0
  br i1 %491, label %492, label %533

492:                                              ; preds = %489
  %493 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %494 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %493, i32 0, i32 0
  %495 = load i32, i32* %17, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [50 x i32], [50 x i32]* %494, i64 0, i64 %496
  %498 = load i32, i32* %497, align 4
  store i32 %498, i32* %31, align 4
  %499 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %500 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %499, i32 0, i32 0
  %501 = load i32, i32* %14, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds [50 x i32], [50 x i32]* %500, i64 0, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %506 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %505, i32 0, i32 0
  %507 = load i32, i32* %17, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [50 x i32], [50 x i32]* %506, i64 0, i64 %508
  store i32 %504, i32* %509, align 4
  %510 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %511 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %510, i32 0, i32 1
  %512 = load i32, i32* %14, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds [50 x i32], [50 x i32]* %511, i64 0, i64 %513
  %515 = load i32, i32* %514, align 4
  %516 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %517 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %516, i32 0, i32 1
  %518 = load i32, i32* %17, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [50 x i32], [50 x i32]* %517, i64 0, i64 %519
  store i32 %515, i32* %520, align 4
  %521 = load i32, i32* %31, align 4
  %522 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %523 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %522, i32 0, i32 0
  %524 = load i32, i32* %14, align 4
  %525 = sext i32 %524 to i64
  %526 = getelementptr inbounds [50 x i32], [50 x i32]* %523, i64 0, i64 %525
  store i32 %521, i32* %526, align 4
  %527 = load i32, i32* %16, align 4
  %528 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %529 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %528, i32 0, i32 1
  %530 = load i32, i32* %14, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds [50 x i32], [50 x i32]* %529, i64 0, i64 %531
  store i32 %527, i32* %532, align 4
  br label %533

533:                                              ; preds = %492, %489
  br label %534

534:                                              ; preds = %533
  %535 = load i32, i32* %14, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %14, align 4
  br label %446, !llvm.loop !49

537:                                              ; preds = %446
  %538 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %539 = icmp ne %struct.SGFTree_t* %538, null
  br i1 %539, label %540, label %604

540:                                              ; preds = %537
  %541 = getelementptr inbounds [500 x i8], [500 x i8]* %32, i64 0, i64 0
  %542 = load i8*, i8** %9, align 8
  %543 = call i32 (i8*, i8*, ...) @sprintf(i8* %541, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.65, i64 0, i64 0), i8* %542, i32* %34) #4
  %544 = getelementptr inbounds [500 x i8], [500 x i8]* %32, i64 0, i64 0
  %545 = load i32, i32* %34, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i8, i8* %544, i64 %546
  store i8* %547, i8** %33, align 8
  %548 = load i32, i32* %10, align 4
  store i32 %548, i32* %14, align 4
  br label %549

549:                                              ; preds = %598, %540
  %550 = load i32, i32* %14, align 4
  %551 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %552 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %551, i32 0, i32 2
  %553 = load i32, i32* %552, align 4
  %554 = icmp slt i32 %550, %553
  br i1 %554, label %555, label %601

555:                                              ; preds = %549
  %556 = load i8*, i8** %33, align 8
  %557 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %558 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %557, i32 0, i32 0
  %559 = load i32, i32* %14, align 4
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [50 x i32], [50 x i32]* %558, i64 0, i64 %560
  %562 = load i32, i32* %561, align 4
  %563 = srem i32 %562, 20
  %564 = sub nsw i32 %563, 1
  %565 = add nsw i32 %564, 65
  %566 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %567 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %566, i32 0, i32 0
  %568 = load i32, i32* %14, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [50 x i32], [50 x i32]* %567, i64 0, i64 %569
  %571 = load i32, i32* %570, align 4
  %572 = srem i32 %571, 20
  %573 = sub nsw i32 %572, 1
  %574 = icmp sge i32 %573, 8
  %575 = zext i1 %574 to i32
  %576 = add nsw i32 %565, %575
  %577 = load i32, i32* @board_size, align 4
  %578 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %579 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %578, i32 0, i32 0
  %580 = load i32, i32* %14, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [50 x i32], [50 x i32]* %579, i64 0, i64 %581
  %583 = load i32, i32* %582, align 4
  %584 = sdiv i32 %583, 20
  %585 = sub nsw i32 %584, 1
  %586 = sub nsw i32 %577, %585
  %587 = load %struct.reading_moves*, %struct.reading_moves** %7, align 8
  %588 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %587, i32 0, i32 1
  %589 = load i32, i32* %14, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [50 x i32], [50 x i32]* %588, i64 0, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = call i32 (i8*, i8*, ...) @sprintf(i8* %556, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i32 %576, i32 %586, i32 %592, i32* %34) #4
  %594 = load i32, i32* %34, align 4
  %595 = load i8*, i8** %33, align 8
  %596 = sext i32 %594 to i64
  %597 = getelementptr inbounds i8, i8* %595, i64 %596
  store i8* %597, i8** %33, align 8
  br label %598

598:                                              ; preds = %555
  %599 = load i32, i32* %14, align 4
  %600 = add nsw i32 %599, 1
  store i32 %600, i32* %14, align 4
  br label %549, !llvm.loop !50

601:                                              ; preds = %549
  %602 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %603 = getelementptr inbounds [500 x i8], [500 x i8]* %32, i64 0, i64 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %602, i8* %603)
  br label %604

604:                                              ; preds = %48, %601, %537
  ret void
}

declare dso_local i32 @komaster_trymove(i32, i32, i8*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @countstones(i32) #1

declare dso_local i32 @approxlib(i32, i32, i32, i32*) #1

declare dso_local i32 @is_self_atari(i32, i32) #1

declare dso_local i32 @chainlinks2(i32, i32*, i32) #1

declare dso_local void @incremental_order_moves(i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

declare dso_local void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_chain2_efficient_moves(i32 %0, %struct.reading_moves* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reading_moves*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [160 x i32], align 16
  store i32 %0, i32* %3, align 4
  store %struct.reading_moves* %1, %struct.reading_moves** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [160 x i32], [160 x i32]* %7, i64 0, i64 0
  %10 = call i32 @chainlinks2(i32 %8, i32* %9, i32 2)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [160 x i32], [160 x i32]* %7, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  call void @do_find_break_chain2_efficient_moves(i32 %16, i32 %20, %struct.reading_moves* %21)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %11, !llvm.loop !51

25:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propose_edge_moves(i32 %0, i32* %1, i32 %2, %struct.reading_moves* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.reading_moves*, align 8
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
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.reading_moves* %3, %struct.reading_moves** %9, align 8
  store i32 %4, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub nsw i32 3, %30
  store i32 %31, i32* %12, align 4
  store i32 0, i32* %18, align 4
  br label %32

32:                                               ; preds = %469, %5
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %472

36:                                               ; preds = %32
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %18, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %465, %36
  %43 = load i32, i32* %16, align 4
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %468

45:                                               ; preds = %42
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %14, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %465

59:                                               ; preds = %45
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %461, %59
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %464

63:                                               ; preds = %60
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  %66 = srem i32 %65, 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32, i32* %13, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %72, %63
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i32, i32* %12, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %200

85:                                               ; preds = %75
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %86, %87
  %89 = call i32 @countlib(i32 %88)
  %90 = icmp sgt i32 %89, 4
  br i1 %90, label %91, label %200

91:                                               ; preds = %85
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %200

95:                                               ; preds = %91
  %96 = load i32, i32* %15, align 4
  store i32 %96, i32* %19, align 4
  br label %97

97:                                               ; preds = %123, %95
  %98 = load i32, i32* %19, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp ne i32 %102, 3
  br i1 %103, label %104, label %127

104:                                              ; preds = %97
  %105 = load i32, i32* %19, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* %11, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %19, align 4
  %114 = load i32, i32* %14, align 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %112, %104
  br label %127

123:                                              ; preds = %112
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %19, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %19, align 4
  br label %97, !llvm.loop !52

127:                                              ; preds = %122, %97
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %132, 3
  br i1 %133, label %199, label %134

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134
  store i32 0, i32* %20, align 4
  br label %136

136:                                              ; preds = %194, %135
  %137 = load i32, i32* %20, align 4
  %138 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %139 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %197

142:                                              ; preds = %136
  %143 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %144 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %143, i32 0, i32 0
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [50 x i32], [50 x i32]* %144, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %15, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %193

151:                                              ; preds = %142
  %152 = load i32, i32* %20, align 4
  store i32 %152, i32* %21, align 4
  br label %153

153:                                              ; preds = %185, %151
  %154 = load i32, i32* %21, align 4
  %155 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %156 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = sub nsw i32 %157, 1
  %159 = icmp slt i32 %154, %158
  br i1 %159, label %160, label %188

160:                                              ; preds = %153
  %161 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %162 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %161, i32 0, i32 0
  %163 = load i32, i32* %21, align 4
  %164 = add nsw i32 %163, 1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [50 x i32], [50 x i32]* %162, i64 0, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %169 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %168, i32 0, i32 0
  %170 = load i32, i32* %21, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [50 x i32], [50 x i32]* %169, i64 0, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %174 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %173, i32 0, i32 1
  %175 = load i32, i32* %21, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [50 x i32], [50 x i32]* %174, i64 0, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %181 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %180, i32 0, i32 1
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [50 x i32], [50 x i32]* %181, i64 0, i64 %183
  store i32 %179, i32* %184, align 4
  br label %185

185:                                              ; preds = %160
  %186 = load i32, i32* %21, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %21, align 4
  br label %153, !llvm.loop !53

188:                                              ; preds = %153
  %189 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %190 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, -1
  store i32 %192, i32* %190, align 4
  br label %197

193:                                              ; preds = %142
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %20, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %20, align 4
  br label %136, !llvm.loop !54

197:                                              ; preds = %188, %136
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198, %127
  br label %460

200:                                              ; preds = %91, %85, %75
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %14, align 4
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = zext i8 %206 to i32
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %459

209:                                              ; preds = %200
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %13, align 4
  %212 = sub nsw i32 %210, %211
  %213 = load i32, i32* %14, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = zext i8 %217 to i32
  %219 = load i32, i32* %12, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %459

221:                                              ; preds = %209
  %222 = load i32, i32* %15, align 4
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %459

230:                                              ; preds = %221
  %231 = load i32, i32* %15, align 4
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %231, %232
  %234 = load i32, i32* %13, align 4
  %235 = sub nsw i32 %233, %234
  %236 = call i32 @countlib(i32 %235)
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %304

238:                                              ; preds = %230
  br label %239

239:                                              ; preds = %238
  store i32 0, i32* %22, align 4
  br label %240

240:                                              ; preds = %266, %239
  %241 = load i32, i32* %22, align 4
  %242 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %243 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = icmp slt i32 %241, %244
  br i1 %245, label %246, label %269

246:                                              ; preds = %240
  %247 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %248 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %247, i32 0, i32 0
  %249 = load i32, i32* %22, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [50 x i32], [50 x i32]* %248, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %15, align 4
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %253, %254
  %256 = icmp eq i32 %252, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %246
  %258 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %259 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %258, i32 0, i32 1
  %260 = load i32, i32* %22, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [50 x i32], [50 x i32]* %259, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = add nsw i32 %263, 10
  store i32 %264, i32* %262, align 4
  br label %269

265:                                              ; preds = %246
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %22, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %22, align 4
  br label %240, !llvm.loop !55

269:                                              ; preds = %257, %240
  %270 = load i32, i32* %22, align 4
  %271 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %272 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = icmp eq i32 %270, %273
  br i1 %274, label %275, label %302

275:                                              ; preds = %269
  %276 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %277 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 4
  %279 = icmp slt i32 %278, 50
  br i1 %279, label %280, label %302

280:                                              ; preds = %275
  %281 = load i32, i32* %15, align 4
  %282 = load i32, i32* %14, align 4
  %283 = add nsw i32 %281, %282
  %284 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %285 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %284, i32 0, i32 0
  %286 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %287 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [50 x i32], [50 x i32]* %285, i64 0, i64 %289
  store i32 %283, i32* %290, align 4
  %291 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %292 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %291, i32 0, i32 1
  %293 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %294 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [50 x i32], [50 x i32]* %292, i64 0, i64 %296
  store i32 10, i32* %297, align 4
  %298 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %299 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %299, align 4
  br label %302

302:                                              ; preds = %280, %275, %269
  br label %303

303:                                              ; preds = %302
  br label %458

304:                                              ; preds = %230
  br label %305

305:                                              ; preds = %304
  store i32 0, i32* %23, align 4
  br label %306

306:                                              ; preds = %332, %305
  %307 = load i32, i32* %23, align 4
  %308 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %309 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %308, i32 0, i32 2
  %310 = load i32, i32* %309, align 4
  %311 = icmp slt i32 %307, %310
  br i1 %311, label %312, label %335

312:                                              ; preds = %306
  %313 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %314 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %313, i32 0, i32 0
  %315 = load i32, i32* %23, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [50 x i32], [50 x i32]* %314, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %15, align 4
  %320 = load i32, i32* %14, align 4
  %321 = add nsw i32 %319, %320
  %322 = icmp eq i32 %318, %321
  br i1 %322, label %323, label %331

323:                                              ; preds = %312
  %324 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %325 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %324, i32 0, i32 1
  %326 = load i32, i32* %23, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [50 x i32], [50 x i32]* %325, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 0
  store i32 %330, i32* %328, align 4
  br label %335

331:                                              ; preds = %312
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %23, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %23, align 4
  br label %306, !llvm.loop !56

335:                                              ; preds = %323, %306
  %336 = load i32, i32* %23, align 4
  %337 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %338 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 4
  %340 = icmp eq i32 %336, %339
  br i1 %340, label %341, label %368

341:                                              ; preds = %335
  %342 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %343 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = icmp slt i32 %344, 50
  br i1 %345, label %346, label %368

346:                                              ; preds = %341
  %347 = load i32, i32* %15, align 4
  %348 = load i32, i32* %14, align 4
  %349 = add nsw i32 %347, %348
  %350 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %351 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %350, i32 0, i32 0
  %352 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %353 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [50 x i32], [50 x i32]* %351, i64 0, i64 %355
  store i32 %349, i32* %356, align 4
  %357 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %358 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %357, i32 0, i32 1
  %359 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %360 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [50 x i32], [50 x i32]* %358, i64 0, i64 %362
  store i32 0, i32* %363, align 4
  %364 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %365 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %364, i32 0, i32 2
  %366 = load i32, i32* %365, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %365, align 4
  br label %368

368:                                              ; preds = %346, %341, %335
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %15, align 4
  %371 = load i32, i32* %13, align 4
  %372 = add nsw i32 %370, %371
  %373 = load i32, i32* %14, align 4
  %374 = add nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %375
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %457

380:                                              ; preds = %369
  %381 = load i32, i32* %8, align 4
  %382 = icmp ne i32 %381, 2
  br i1 %382, label %387, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* %11, align 4
  %385 = load i32, i32* %10, align 4
  %386 = icmp ne i32 %384, %385
  br i1 %386, label %387, label %457

387:                                              ; preds = %383, %380
  br label %388

388:                                              ; preds = %387
  store i32 0, i32* %24, align 4
  br label %389

389:                                              ; preds = %417, %388
  %390 = load i32, i32* %24, align 4
  %391 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %392 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %390, %393
  br i1 %394, label %395, label %420

395:                                              ; preds = %389
  %396 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %397 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %396, i32 0, i32 0
  %398 = load i32, i32* %24, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [50 x i32], [50 x i32]* %397, i64 0, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %15, align 4
  %403 = load i32, i32* %13, align 4
  %404 = add nsw i32 %402, %403
  %405 = load i32, i32* %14, align 4
  %406 = add nsw i32 %404, %405
  %407 = icmp eq i32 %401, %406
  br i1 %407, label %408, label %416

408:                                              ; preds = %395
  %409 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %410 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %409, i32 0, i32 1
  %411 = load i32, i32* %24, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [50 x i32], [50 x i32]* %410, i64 0, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %414, 0
  store i32 %415, i32* %413, align 4
  br label %420

416:                                              ; preds = %395
  br label %417

417:                                              ; preds = %416
  %418 = load i32, i32* %24, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %24, align 4
  br label %389, !llvm.loop !57

420:                                              ; preds = %408, %389
  %421 = load i32, i32* %24, align 4
  %422 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %423 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 4
  %425 = icmp eq i32 %421, %424
  br i1 %425, label %426, label %455

426:                                              ; preds = %420
  %427 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %428 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 4
  %430 = icmp slt i32 %429, 50
  br i1 %430, label %431, label %455

431:                                              ; preds = %426
  %432 = load i32, i32* %15, align 4
  %433 = load i32, i32* %13, align 4
  %434 = add nsw i32 %432, %433
  %435 = load i32, i32* %14, align 4
  %436 = add nsw i32 %434, %435
  %437 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %438 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %437, i32 0, i32 0
  %439 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %440 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %439, i32 0, i32 2
  %441 = load i32, i32* %440, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [50 x i32], [50 x i32]* %438, i64 0, i64 %442
  store i32 %436, i32* %443, align 4
  %444 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %445 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %444, i32 0, i32 1
  %446 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %447 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [50 x i32], [50 x i32]* %445, i64 0, i64 %449
  store i32 0, i32* %450, align 4
  %451 = load %struct.reading_moves*, %struct.reading_moves** %9, align 8
  %452 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %452, align 4
  br label %455

455:                                              ; preds = %431, %426, %420
  br label %456

456:                                              ; preds = %455
  br label %457

457:                                              ; preds = %456, %383, %369
  br label %458

458:                                              ; preds = %457, %303
  br label %459

459:                                              ; preds = %458, %221, %209, %200
  br label %460

460:                                              ; preds = %459, %199
  br label %461

461:                                              ; preds = %460
  %462 = load i32, i32* %17, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %17, align 4
  br label %60, !llvm.loop !58

464:                                              ; preds = %60
  br label %465

465:                                              ; preds = %464, %58
  %466 = load i32, i32* %16, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %16, align 4
  br label %42, !llvm.loop !59

468:                                              ; preds = %42
  br label %469

469:                                              ; preds = %468
  %470 = load i32, i32* %18, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %18, align 4
  br label %32, !llvm.loop !60

472:                                              ; preds = %32
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edge_clamp_moves(i32 %0, %struct.reading_moves* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reading_moves*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [160 x i32], align 16
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.reading_moves* %1, %struct.reading_moves** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 3, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %3, align 4
  %29 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  %30 = call i32 @chainlinks2(i32 %28, i32* %29, i32 3)
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %31

31:                                               ; preds = %246, %2
  %32 = load i32, i32* %17, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %249

35:                                               ; preds = %31
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %42 = call i32 @findlib(i32 %40, i32 3, i32* %41)
  store i32 0, i32* %15, align 4
  br label %43

43:                                               ; preds = %59, %35
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 3
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @is_edge_vertex(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %8, align 4
  br label %62

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %43, !llvm.loop !61

62:                                               ; preds = %53, %43
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %246

66:                                               ; preds = %62
  store i32 0, i32* %15, align 4
  br label %67

67:                                               ; preds = %242, %66
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 4
  br i1 %69, label %70, label %245

70:                                               ; preds = %67
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %18, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp ne i32 %81, 3
  br i1 %82, label %83, label %84

83:                                               ; preds = %70
  br label %242

84:                                               ; preds = %70
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %18, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %242

95:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  br label %96

96:                                               ; preds = %238, %95
  %97 = load i32, i32* %16, align 4
  %98 = icmp slt i32 %97, 2
  br i1 %98, label %99, label %241

99:                                               ; preds = %96
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  %102 = srem i32 %101, 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %108, label %111

108:                                              ; preds = %99
  %109 = load i32, i32* %19, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %19, align 4
  br label %111

111:                                              ; preds = %108, %99
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32, i32* %19, align 4
  %116 = sub nsw i32 %114, %115
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %19, align 4
  %121 = add nsw i32 %119, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %111
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @same_string(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129, %111
  br label %238

135:                                              ; preds = %129
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @liberty_of_string(i32 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %142, %135
  br label %238

148:                                              ; preds = %142
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %149, %150
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %148
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @liberty_of_string(i32 %159, i32 %160)
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158, %148
  br label %238

164:                                              ; preds = %158
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @approxlib(i32 %165, i32 %166, i32 3, i32* null)
  %168 = icmp slt i32 %167, 3
  br i1 %168, label %169, label %170

169:                                              ; preds = %164
  br label %238

170:                                              ; preds = %164
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @approxlib(i32 %171, i32 %172, i32 4, i32* null)
  %174 = icmp sgt i32 %173, 3
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  br label %238

176:                                              ; preds = %170
  br label %177

177:                                              ; preds = %176
  store i32 0, i32* %20, align 4
  br label %178

178:                                              ; preds = %202, %177
  %179 = load i32, i32* %20, align 4
  %180 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %181 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %205

184:                                              ; preds = %178
  %185 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %186 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %185, i32 0, i32 0
  %187 = load i32, i32* %20, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [50 x i32], [50 x i32]* %186, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %184
  %194 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %195 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %194, i32 0, i32 1
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [50 x i32], [50 x i32]* %195, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, 10
  store i32 %200, i32* %198, align 4
  br label %205

201:                                              ; preds = %184
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %20, align 4
  br label %178, !llvm.loop !62

205:                                              ; preds = %193, %178
  %206 = load i32, i32* %20, align 4
  %207 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %208 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %206, %209
  br i1 %210, label %211, label %236

211:                                              ; preds = %205
  %212 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %213 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %214, 50
  br i1 %215, label %216, label %236

216:                                              ; preds = %211
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %219 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %218, i32 0, i32 0
  %220 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %221 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [50 x i32], [50 x i32]* %219, i64 0, i64 %223
  store i32 %217, i32* %224, align 4
  %225 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %226 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %225, i32 0, i32 1
  %227 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %228 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [50 x i32], [50 x i32]* %226, i64 0, i64 %230
  store i32 10, i32* %231, align 4
  %232 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %233 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %216, %211, %205
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237, %175, %169, %163, %147, %134
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %16, align 4
  br label %96, !llvm.loop !63

241:                                              ; preds = %96
  br label %242

242:                                              ; preds = %241, %94, %83
  %243 = load i32, i32* %15, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %15, align 4
  br label %67, !llvm.loop !64

245:                                              ; preds = %67
  br label %246

246:                                              ; preds = %245, %65
  %247 = load i32, i32* %17, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %17, align 4
  br label %31, !llvm.loop !65

249:                                              ; preds = %31
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @special_rescue_moves(i32 %0, i32 %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reading_moves*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = sub nsw i32 3, %17
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %116, %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %119

22:                                               ; preds = %19
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %115

35:                                               ; preds = %22
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @approxlib(i32 %36, i32 %37, i32 3, i32* null)
  %39 = icmp sgt i32 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %116

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @is_self_atari(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %116

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %77, %50
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %54 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %80

57:                                               ; preds = %51
  %58 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %59 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %58, i32 0, i32 0
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [50 x i32], [50 x i32]* %59, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %64, %65
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %57
  %69 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %70 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %69, i32 0, i32 1
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [50 x i32], [50 x i32]* %70, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 0
  store i32 %75, i32* %73, align 4
  br label %80

76:                                               ; preds = %57
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %51, !llvm.loop !66

80:                                               ; preds = %68, %51
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %83 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %113

86:                                               ; preds = %80
  %87 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %88 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 50
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %96 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %95, i32 0, i32 0
  %97 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %98 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [50 x i32], [50 x i32]* %96, i64 0, i64 %100
  store i32 %94, i32* %101, align 4
  %102 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %103 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %102, i32 0, i32 1
  %104 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %105 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [50 x i32], [50 x i32]* %103, i64 0, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %110 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %91, %86, %80
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114, %22
  br label %116

116:                                              ; preds = %115, %48, %40
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %19, !llvm.loop !67

119:                                              ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @special_rescue2_moves(i32 %0, i32* %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.reading_moves*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub nsw i32 3, %22
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %176, %3
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %27, label %179

27:                                               ; preds = %24
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @is_suicide(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %176

38:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %172, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 4
  br i1 %41, label %42, label %175

42:                                               ; preds = %39
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %43, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %171

55:                                               ; preds = %42
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %56, %60
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @same_string(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %171, label %65

65:                                               ; preds = %55
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %66, %70
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %74 = call i32 @findlib(i32 %72, i32 4, i32* %73)
  store i32 %74, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %161, %65
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 4
  br label %82

82:                                               ; preds = %79, %75
  %83 = phi i1 [ false, %75 ], [ %81, %79 ]
  br i1 %83, label %84, label %164

84:                                               ; preds = %82
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @is_self_atari(i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %160, label %92

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %121, %93
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %97 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %124

100:                                              ; preds = %94
  %101 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %102 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %101, i32 0, i32 0
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [50 x i32], [50 x i32]* %102, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %106, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %100
  %113 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %114 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %113, i32 0, i32 1
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [50 x i32], [50 x i32]* %114, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 0
  store i32 %119, i32* %117, align 4
  br label %124

120:                                              ; preds = %100
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %16, align 4
  br label %94, !llvm.loop !68

124:                                              ; preds = %112, %94
  %125 = load i32, i32* %16, align 4
  %126 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %127 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %125, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %124
  %131 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %132 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %133, 50
  br i1 %134, label %135, label %158

135:                                              ; preds = %130
  %136 = load i32, i32* %14, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %141 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %140, i32 0, i32 0
  %142 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %143 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [50 x i32], [50 x i32]* %141, i64 0, i64 %145
  store i32 %139, i32* %146, align 4
  %147 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %148 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %147, i32 0, i32 1
  %149 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %150 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [50 x i32], [50 x i32]* %148, i64 0, i64 %152
  store i32 0, i32* %153, align 4
  %154 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %155 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %135, %130, %124
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159, %84
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %75, !llvm.loop !69

164:                                              ; preds = %82
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  call void @break_chain_moves(i32 %165, %struct.reading_moves* %166)
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  call void @break_chain2_efficient_moves(i32 %167, %struct.reading_moves* %168)
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  call void @edge_clamp_moves(i32 %169, %struct.reading_moves* %170)
  br label %171

171:                                              ; preds = %164, %55, %42
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %12, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %12, align 4
  br label %39, !llvm.loop !70

175:                                              ; preds = %39
  br label %176

176:                                              ; preds = %175, %37
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %24, !llvm.loop !71

179:                                              ; preds = %24
  ret void
}

declare dso_local i32 @has_neighbor(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @superstring_breakchain_moves(i32 %0, i32 %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reading_moves*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [160 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = getelementptr inbounds [160 x i32], [160 x i32]* %8, i64 0, i64 0
  %15 = load i32, i32* %5, align 4
  call void @proper_superstring_chainlinks(i32 %13, i32* %7, i32* %14, i32 %15)
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %107, %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %110

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [160 x i32], [160 x i32]* %8, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @countlib(i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %95

28:                                               ; preds = %20
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [160 x i32], [160 x i32]* %8, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @findlib(i32 %32, i32 1, i32* %10)
  br label %34

34:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %59, %34
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %38 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %43 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %42, i32 0, i32 0
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [50 x i32], [50 x i32]* %43, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %41
  %51 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %52 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %51, i32 0, i32 1
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [50 x i32], [50 x i32]* %52, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 0
  store i32 %57, i32* %55, align 4
  br label %62

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %12, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %35, !llvm.loop !72

62:                                               ; preds = %50, %35
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %65 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %62
  %69 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %70 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 50
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %76 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %75, i32 0, i32 0
  %77 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %78 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [50 x i32], [50 x i32]* %76, i64 0, i64 %80
  store i32 %74, i32* %81, align 4
  %82 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %83 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %82, i32 0, i32 1
  %84 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %85 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [50 x i32], [50 x i32]* %83, i64 0, i64 %87
  store i32 0, i32* %88, align 4
  %89 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %90 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %73, %68, %62
  br label %94

94:                                               ; preds = %93
  br label %106

95:                                               ; preds = %20
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [160 x i32], [160 x i32]* %8, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  call void @do_find_break_chain2_efficient_moves(i32 %99, i32 %103, %struct.reading_moves* %104)
  br label %105

105:                                              ; preds = %98, %95
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %16, !llvm.loop !73

110:                                              ; preds = %16
  ret void
}

declare dso_local void @find_superstring_liberties(i32, i32*, i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_chain2_defense_moves(i32 %0, %struct.reading_moves* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reading_moves*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.reading_moves* %1, %struct.reading_moves** %4, align 8
  %7 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %8 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %12 = load i32, i32* @stackp, align 4
  %13 = load i32, i32* @backfill_depth, align 4
  %14 = icmp sle i32 %12, %13
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  call void @break_chain2_moves(i32 %10, %struct.reading_moves* %11, i32 %16)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %30, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %21 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %26 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %25, i32 0, i32 1
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [50 x i32], [50 x i32]* %26, i64 0, i64 %28
  store i32 -2, i32* %29, align 4
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %18, !llvm.loop !74

33:                                               ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @special_rescue5_moves(i32 %0, i32* %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.reading_moves*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [160 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 3, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @countlib(i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %3
  br label %45

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  %40 = sdiv i32 %39, 20
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %4, align 4
  %43 = srem i32 %42, 20
  %44 = sub nsw i32 %43, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1942, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.76, i64 0, i64 0), i32 %41, i32 %44)
  br label %45

45:                                               ; preds = %38, %37
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %284, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %287

50:                                               ; preds = %46
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %280, %50
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %283

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %280

74:                                               ; preds = %59
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @countlib(i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  %79 = icmp sgt i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %280

81:                                               ; preds = %74
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @count_common_libs(i32 %82, i32 %83)
  %85 = icmp slt i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %280

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %90 = call i32 @findlib(i32 %88, i32 4, i32* %89)
  store i32 %90, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %91

91:                                               ; preds = %180, %87
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %183

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @liberty_of_string(i32 %99, i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %179, label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @is_self_atari(i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %179, label %111

111:                                              ; preds = %103
  br label %112

112:                                              ; preds = %111
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %140, %112
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %116 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %143

119:                                              ; preds = %113
  %120 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %121 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %120, i32 0, i32 0
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [50 x i32], [50 x i32]* %121, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %125, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %119
  %132 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %133 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %132, i32 0, i32 1
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [50 x i32], [50 x i32]* %133, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 0
  store i32 %138, i32* %136, align 4
  br label %143

139:                                              ; preds = %119
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %17, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %113, !llvm.loop !75

143:                                              ; preds = %131, %113
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %146 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %144, %147
  br i1 %148, label %149, label %177

149:                                              ; preds = %143
  %150 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %151 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %152, 50
  br i1 %153, label %154, label %177

154:                                              ; preds = %149
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %160 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %159, i32 0, i32 0
  %161 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %162 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [50 x i32], [50 x i32]* %160, i64 0, i64 %164
  store i32 %158, i32* %165, align 4
  %166 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %167 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %166, i32 0, i32 1
  %168 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %169 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [50 x i32], [50 x i32]* %167, i64 0, i64 %171
  store i32 0, i32* %172, align 4
  %173 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %174 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %154, %149, %143
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178, %103, %95
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %13, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %13, align 4
  br label %91, !llvm.loop !76

183:                                              ; preds = %91
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp sle i32 %184, %185
  br i1 %186, label %187, label %279

187:                                              ; preds = %183
  %188 = load i32, i32* %10, align 4
  %189 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 0
  %190 = call i32 @chainlinks2(i32 %188, i32* %189, i32 1)
  store i32 %190, i32* %18, align 4
  store i32 0, i32* %20, align 4
  br label %191

191:                                              ; preds = %273, %187
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %18, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %276

195:                                              ; preds = %191
  %196 = load i32, i32* %20, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  call void @break_chain_moves(i32 %199, %struct.reading_moves* %200)
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @findlib(i32 %204, i32 1, i32* %21)
  %206 = load i32, i32* %21, align 4
  %207 = load i32, i32* %7, align 4
  %208 = call i32 @is_self_atari(i32 %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %272, label %210

210:                                              ; preds = %195
  br label %211

211:                                              ; preds = %210
  store i32 0, i32* %22, align 4
  br label %212

212:                                              ; preds = %236, %211
  %213 = load i32, i32* %22, align 4
  %214 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %215 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = icmp slt i32 %213, %216
  br i1 %217, label %218, label %239

218:                                              ; preds = %212
  %219 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %220 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %219, i32 0, i32 0
  %221 = load i32, i32* %22, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [50 x i32], [50 x i32]* %220, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* %21, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %235

227:                                              ; preds = %218
  %228 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %229 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %228, i32 0, i32 1
  %230 = load i32, i32* %22, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [50 x i32], [50 x i32]* %229, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %233, 0
  store i32 %234, i32* %232, align 4
  br label %239

235:                                              ; preds = %218
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %22, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %22, align 4
  br label %212, !llvm.loop !77

239:                                              ; preds = %227, %212
  %240 = load i32, i32* %22, align 4
  %241 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %242 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %270

245:                                              ; preds = %239
  %246 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %247 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 4
  %249 = icmp slt i32 %248, 50
  br i1 %249, label %250, label %270

250:                                              ; preds = %245
  %251 = load i32, i32* %21, align 4
  %252 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %253 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %252, i32 0, i32 0
  %254 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %255 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [50 x i32], [50 x i32]* %253, i64 0, i64 %257
  store i32 %251, i32* %258, align 4
  %259 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %260 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %259, i32 0, i32 1
  %261 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %262 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [50 x i32], [50 x i32]* %260, i64 0, i64 %264
  store i32 0, i32* %265, align 4
  %266 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %267 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 4
  br label %270

270:                                              ; preds = %250, %245, %239
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271, %195
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %20, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %20, align 4
  br label %191, !llvm.loop !78

276:                                              ; preds = %191
  %277 = load i32, i32* %10, align 4
  %278 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  call void @double_atari_chain2_moves(i32 %277, %struct.reading_moves* %278)
  br label %279

279:                                              ; preds = %276, %183
  br label %280

280:                                              ; preds = %279, %86, %80, %73
  %281 = load i32, i32* %11, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %11, align 4
  br label %56, !llvm.loop !79

283:                                              ; preds = %56
  br label %284

284:                                              ; preds = %283
  %285 = load i32, i32* %12, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %12, align 4
  br label %46, !llvm.loop !80

287:                                              ; preds = %46
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_chain3_moves(i32 %0, %struct.reading_moves* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reading_moves*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [160 x i32], align 16
  %14 = alloca [3 x i32], align 4
  %15 = alloca [50 x i32], align 16
  %16 = alloca [400 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.reading_moves* %1, %struct.reading_moves** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 3, %27
  store i32 %28, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %29 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 0
  %30 = bitcast i32* %29 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 1600, i1 false)
  %31 = load i32, i32* %3, align 4
  %32 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  %33 = call i32 @chainlinks2(i32 %31, i32* %32, i32 3)
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %170, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %173

38:                                               ; preds = %34
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %45 = call i32 @findlib(i32 %43, i32 3, i32* %44)
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @approxlib(i32 %47, i32 %48, i32 4, i32* null)
  store i32 %49, i32* %17, align 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @approxlib(i32 %51, i32 %52, i32 4, i32* null)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %17, align 4
  %55 = icmp sge i32 %54, 4
  br i1 %55, label %56, label %60

56:                                               ; preds = %38
  %57 = load i32, i32* %18, align 4
  %58 = icmp sge i32 %57, 4
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %170

60:                                               ; preds = %56, %38
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @approxlib(i32 %62, i32 %63, i32 4, i32* null)
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %17, align 4
  %66 = icmp sge i32 %65, 4
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %18, align 4
  %69 = icmp sge i32 %68, 4
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %19, align 4
  %72 = icmp sge i32 %71, 4
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  br label %170

74:                                               ; preds = %70, %67
  %75 = load i32, i32* %17, align 4
  %76 = icmp sge i32 %75, 4
  br i1 %76, label %77, label %95

77:                                               ; preds = %74
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %95, label %84

84:                                               ; preds = %77
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %87
  store i32 1, i32* %88, align 4
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds [50 x i32], [50 x i32]* %15, i64 0, i64 %93
  store i32 %90, i32* %94, align 4
  br label %170

95:                                               ; preds = %77, %74
  %96 = load i32, i32* %18, align 4
  %97 = icmp sge i32 %96, 4
  br i1 %97, label %98, label %116

98:                                               ; preds = %95
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %98
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %108
  store i32 1, i32* %109, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds [50 x i32], [50 x i32]* %15, i64 0, i64 %114
  store i32 %111, i32* %115, align 4
  br label %170

116:                                              ; preds = %98, %95
  %117 = load i32, i32* %19, align 4
  %118 = icmp sge i32 %117, 4
  br i1 %118, label %119, label %137

119:                                              ; preds = %116
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %119
  %127 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %129
  store i32 1, i32* %130, align 4
  %131 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds [50 x i32], [50 x i32]* %15, i64 0, i64 %135
  store i32 %132, i32* %136, align 4
  br label %170

137:                                              ; preds = %119, %116
  store i32 0, i32* %8, align 4
  br label %138

138:                                              ; preds = %166, %137
  %139 = load i32, i32* %8, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %169

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %165, label %150

150:                                              ; preds = %141
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [400 x i32], [400 x i32]* %16, i64 0, i64 %155
  store i32 1, i32* %156, align 4
  %157 = load i32, i32* %8, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds [50 x i32], [50 x i32]* %15, i64 0, i64 %163
  store i32 %160, i32* %164, align 4
  br label %165

165:                                              ; preds = %150, %141
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %8, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %8, align 4
  br label %138, !llvm.loop !81

169:                                              ; preds = %138
  br label %170

170:                                              ; preds = %169, %126, %105, %84, %73, %59
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %7, align 4
  br label %34, !llvm.loop !82

173:                                              ; preds = %34
  store i32 0, i32* %10, align 4
  br label %174

174:                                              ; preds = %254, %173
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %257

178:                                              ; preds = %174
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [50 x i32], [50 x i32]* %15, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* @stackp, align 4
  %184 = load i32, i32* @backfill2_depth, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %191, label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %20, align 4
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @approxlib(i32 %187, i32 %188, i32 2, i32* null)
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %191, label %253

191:                                              ; preds = %186, %178
  br label %192

192:                                              ; preds = %191
  store i32 0, i32* %21, align 4
  br label %193

193:                                              ; preds = %217, %192
  %194 = load i32, i32* %21, align 4
  %195 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %196 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %220

199:                                              ; preds = %193
  %200 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %201 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %200, i32 0, i32 0
  %202 = load i32, i32* %21, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [50 x i32], [50 x i32]* %201, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %20, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %199
  %209 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %210 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %209, i32 0, i32 1
  %211 = load i32, i32* %21, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [50 x i32], [50 x i32]* %210, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = add nsw i32 %214, -2
  store i32 %215, i32* %213, align 4
  br label %220

216:                                              ; preds = %199
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %21, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %21, align 4
  br label %193, !llvm.loop !83

220:                                              ; preds = %208, %193
  %221 = load i32, i32* %21, align 4
  %222 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %223 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %221, %224
  br i1 %225, label %226, label %251

226:                                              ; preds = %220
  %227 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %228 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = icmp slt i32 %229, 50
  br i1 %230, label %231, label %251

231:                                              ; preds = %226
  %232 = load i32, i32* %20, align 4
  %233 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %234 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %233, i32 0, i32 0
  %235 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %236 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [50 x i32], [50 x i32]* %234, i64 0, i64 %238
  store i32 %232, i32* %239, align 4
  %240 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %241 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %240, i32 0, i32 1
  %242 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %243 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [50 x i32], [50 x i32]* %241, i64 0, i64 %245
  store i32 -2, i32* %246, align 4
  %247 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %248 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %251

251:                                              ; preds = %231, %226, %220
  br label %252

252:                                              ; preds = %251
  br label %253

253:                                              ; preds = %252, %186
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %10, align 4
  br label %174, !llvm.loop !84

257:                                              ; preds = %174
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_find_break_chain2_efficient_moves(i32 %0, i32 %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reading_moves*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [160 x i32], align 16
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @countlib(i32 %27)
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %38

31:                                               ; preds = %3
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 %32, 20
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %5, align 4
  %36 = srem i32 %35, 20
  %37 = sub nsw i32 %36, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 3778, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.75, i64 0, i64 0), i32 %34, i32 %37)
  br label %38

38:                                               ; preds = %31, %30
  %39 = load i32, i32* %5, align 4
  %40 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 0
  %41 = call i32 @chainlinks2(i32 %39, i32* %40, i32 1)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %119

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @countlib(i32 %45)
  %47 = icmp sgt i32 %46, 2
  br i1 %47, label %48, label %119

48:                                               ; preds = %44
  %49 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = call i32 @findlib(i32 %50, i32 1, i32* %15)
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @is_self_atari(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %118, label %56

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56
  store i32 0, i32* %16, align 4
  br label %58

58:                                               ; preds = %82, %57
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %61 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %58
  %65 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %66 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %65, i32 0, i32 0
  %67 = load i32, i32* %16, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [50 x i32], [50 x i32]* %66, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %75 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %74, i32 0, i32 1
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [50 x i32], [50 x i32]* %75, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 0
  store i32 %80, i32* %78, align 4
  br label %85

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %58, !llvm.loop !85

85:                                               ; preds = %73, %58
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %88 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %86, %89
  br i1 %90, label %91, label %116

91:                                               ; preds = %85
  %92 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %93 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 50
  br i1 %95, label %96, label %116

96:                                               ; preds = %91
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %99 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %98, i32 0, i32 0
  %100 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %101 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [50 x i32], [50 x i32]* %99, i64 0, i64 %103
  store i32 %97, i32* %104, align 4
  %105 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %106 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %105, i32 0, i32 1
  %107 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %108 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [50 x i32], [50 x i32]* %106, i64 0, i64 %110
  store i32 0, i32* %111, align 4
  %112 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %113 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %96, %91, %85
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117, %48
  br label %467

119:                                              ; preds = %44, %38
  %120 = load i32, i32* %10, align 4
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %467

123:                                              ; preds = %119
  %124 = load i32, i32* %5, align 4
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %126 = call i32 @findlib(i32 %124, i32 2, i32* %125)
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %218, %123
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %128, 2
  br i1 %129, label %130, label %221

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @approxlib(i32 %134, i32 %135, i32 3, i32* null)
  %137 = icmp sle i32 %136, 2
  br i1 %137, label %138, label %217

138:                                              ; preds = %130
  %139 = load i32, i32* %9, align 4
  %140 = sub nsw i32 1, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @is_self_atari(i32 %143, i32 %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %217, label %147

147:                                              ; preds = %138
  br label %148

148:                                              ; preds = %147
  store i32 0, i32* %17, align 4
  br label %149

149:                                              ; preds = %177, %148
  %150 = load i32, i32* %17, align 4
  %151 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %152 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %149
  %156 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %157 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %156, i32 0, i32 0
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [50 x i32], [50 x i32]* %157, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %9, align 4
  %163 = sub nsw i32 1, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %161, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %155
  %169 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %170 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %169, i32 0, i32 1
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [50 x i32], [50 x i32]* %170, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 0
  store i32 %175, i32* %173, align 4
  br label %180

176:                                              ; preds = %155
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %17, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %17, align 4
  br label %149, !llvm.loop !86

180:                                              ; preds = %168, %149
  %181 = load i32, i32* %17, align 4
  %182 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %183 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = icmp eq i32 %181, %184
  br i1 %185, label %186, label %215

186:                                              ; preds = %180
  %187 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %188 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %189, 50
  br i1 %190, label %191, label %215

191:                                              ; preds = %186
  %192 = load i32, i32* %9, align 4
  %193 = sub nsw i32 1, %192
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %198 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %197, i32 0, i32 0
  %199 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %200 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [50 x i32], [50 x i32]* %198, i64 0, i64 %202
  store i32 %196, i32* %203, align 4
  %204 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %205 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %204, i32 0, i32 1
  %206 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %207 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [50 x i32], [50 x i32]* %205, i64 0, i64 %209
  store i32 0, i32* %210, align 4
  %211 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %212 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %191, %186, %180
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216, %138, %130
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %9, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %9, align 4
  br label %127, !llvm.loop !87

221:                                              ; preds = %127
  %222 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, 20
  %227 = sub nsw i32 %226, 1
  %228 = icmp ne i32 %223, %227
  br i1 %228, label %229, label %254

229:                                              ; preds = %221
  %230 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %233, 20
  %235 = sub nsw i32 %234, 1
  %236 = icmp ne i32 %231, %235
  br i1 %236, label %237, label %254

237:                                              ; preds = %229
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %241, 20
  %243 = add nsw i32 %242, 1
  %244 = icmp ne i32 %239, %243
  br i1 %244, label %245, label %254

245:                                              ; preds = %237
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %247 = load i32, i32* %246, align 4
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 20
  %251 = add nsw i32 %250, 1
  %252 = icmp ne i32 %247, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %245
  br label %467

254:                                              ; preds = %245, %237, %229, %221
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %256 = load i32, i32* %255, align 4
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %256, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %254
  %261 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %262 = load i32, i32* %261, align 4
  br label %266

263:                                              ; preds = %254
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %265 = load i32, i32* %264, align 4
  br label %266

266:                                              ; preds = %263, %260
  %267 = phi i32 [ %262, %260 ], [ %265, %263 ]
  %268 = sub nsw i32 %267, 20
  store i32 %268, i32* %13, align 4
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %270, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %266
  %275 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %276 = load i32, i32* %275, align 4
  br label %280

277:                                              ; preds = %266
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %279 = load i32, i32* %278, align 4
  br label %280

280:                                              ; preds = %277, %274
  %281 = phi i32 [ %276, %274 ], [ %279, %277 ]
  %282 = add nsw i32 %281, 20
  store i32 %282, i32* %14, align 4
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = load i32, i32* %8, align 4
  %289 = icmp ne i32 %287, %288
  br i1 %289, label %299, label %290

290:                                              ; preds = %280
  %291 = load i32, i32* %14, align 4
  %292 = call i32 @is_edge_vertex(i32 %291)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %290
  %295 = load i32, i32* %13, align 4
  %296 = load i32, i32* %5, align 4
  %297 = call i32 @same_string(i32 %295, i32 %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %317, label %299

299:                                              ; preds = %294, %290, %280
  %300 = load i32, i32* %14, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = load i32, i32* %8, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %316, label %307

307:                                              ; preds = %299
  %308 = load i32, i32* %13, align 4
  %309 = call i32 @is_edge_vertex(i32 %308)
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %316

311:                                              ; preds = %307
  %312 = load i32, i32* %14, align 4
  %313 = load i32, i32* %5, align 4
  %314 = call i32 @same_string(i32 %312, i32 %313)
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %317, label %316

316:                                              ; preds = %311, %307, %299
  br label %467

317:                                              ; preds = %311, %294
  %318 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @is_edge_vertex(i32 %319)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %392

322:                                              ; preds = %317
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %7, align 4
  %326 = call i32 @is_self_atari(i32 %324, i32 %325)
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %392, label %328

328:                                              ; preds = %322
  br label %329

329:                                              ; preds = %328
  store i32 0, i32* %18, align 4
  br label %330

330:                                              ; preds = %355, %329
  %331 = load i32, i32* %18, align 4
  %332 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %333 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = icmp slt i32 %331, %334
  br i1 %335, label %336, label %358

336:                                              ; preds = %330
  %337 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %338 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %337, i32 0, i32 0
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [50 x i32], [50 x i32]* %338, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %342, %344
  br i1 %345, label %346, label %354

346:                                              ; preds = %336
  %347 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %348 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %347, i32 0, i32 1
  %349 = load i32, i32* %18, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [50 x i32], [50 x i32]* %348, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %351, align 4
  br label %358

354:                                              ; preds = %336
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %18, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %18, align 4
  br label %330, !llvm.loop !88

358:                                              ; preds = %346, %330
  %359 = load i32, i32* %18, align 4
  %360 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %361 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %360, i32 0, i32 2
  %362 = load i32, i32* %361, align 4
  %363 = icmp eq i32 %359, %362
  br i1 %363, label %364, label %390

364:                                              ; preds = %358
  %365 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %366 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 4
  %368 = icmp slt i32 %367, 50
  br i1 %368, label %369, label %390

369:                                              ; preds = %364
  %370 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %373 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %372, i32 0, i32 0
  %374 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %375 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [50 x i32], [50 x i32]* %373, i64 0, i64 %377
  store i32 %371, i32* %378, align 4
  %379 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %380 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %379, i32 0, i32 1
  %381 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %382 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [50 x i32], [50 x i32]* %380, i64 0, i64 %384
  store i32 1, i32* %385, align 4
  %386 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %387 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 4
  br label %390

390:                                              ; preds = %369, %364, %358
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391, %322, %317
  %393 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @is_edge_vertex(i32 %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %467

397:                                              ; preds = %392
  %398 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %399 = load i32, i32* %398, align 4
  %400 = load i32, i32* %7, align 4
  %401 = call i32 @is_self_atari(i32 %399, i32 %400)
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %467, label %403

403:                                              ; preds = %397
  br label %404

404:                                              ; preds = %403
  store i32 0, i32* %19, align 4
  br label %405

405:                                              ; preds = %430, %404
  %406 = load i32, i32* %19, align 4
  %407 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %408 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %407, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = icmp slt i32 %406, %409
  br i1 %410, label %411, label %433

411:                                              ; preds = %405
  %412 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %413 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %412, i32 0, i32 0
  %414 = load i32, i32* %19, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds [50 x i32], [50 x i32]* %413, i64 0, i64 %415
  %417 = load i32, i32* %416, align 4
  %418 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %417, %419
  br i1 %420, label %421, label %429

421:                                              ; preds = %411
  %422 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %423 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %422, i32 0, i32 1
  %424 = load i32, i32* %19, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [50 x i32], [50 x i32]* %423, i64 0, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %426, align 4
  br label %433

429:                                              ; preds = %411
  br label %430

430:                                              ; preds = %429
  %431 = load i32, i32* %19, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %19, align 4
  br label %405, !llvm.loop !89

433:                                              ; preds = %421, %405
  %434 = load i32, i32* %19, align 4
  %435 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %436 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %434, %437
  br i1 %438, label %439, label %465

439:                                              ; preds = %433
  %440 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %441 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 4
  %443 = icmp slt i32 %442, 50
  br i1 %443, label %444, label %465

444:                                              ; preds = %439
  %445 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %448 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %447, i32 0, i32 0
  %449 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %450 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [50 x i32], [50 x i32]* %448, i64 0, i64 %452
  store i32 %446, i32* %453, align 4
  %454 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %455 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %454, i32 0, i32 1
  %456 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %457 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %456, i32 0, i32 2
  %458 = load i32, i32* %457, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [50 x i32], [50 x i32]* %455, i64 0, i64 %459
  store i32 1, i32* %460, align 4
  %461 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %462 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %462, align 4
  br label %465

465:                                              ; preds = %444, %439, %433
  br label %466

466:                                              ; preds = %465
  br label %467

467:                                              ; preds = %118, %122, %253, %316, %466, %397, %392
  ret void
}

declare dso_local i32 @is_edge_vertex(i32) #1

declare dso_local i32 @same_string(i32, i32) #1

declare dso_local i32 @is_suicide(i32, i32) #1

declare dso_local void @proper_superstring_chainlinks(i32, i32*, i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_chain2_moves(i32 %0, %struct.reading_moves* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.reading_moves*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [160 x i32], align 16
  %14 = alloca [160 x i32], align 16
  %15 = alloca [2 x i32], align 4
  %16 = alloca [2 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.reading_moves* %1, %struct.reading_moves** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 3, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  %30 = call i32 @chainlinks2(i32 %28, i32* %29, i32 2)
  store i32 %30, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %286, %3
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %289

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @stackp, align 4
  %41 = load i32, i32* @backfill_depth, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = getelementptr inbounds [160 x i32], [160 x i32]* %14, i64 0, i64 0
  %46 = call i32 @chainlinks2(i32 %44, i32* %45, i32 1)
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %286

49:                                               ; preds = %43, %35
  %50 = load i32, i32* %11, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %52 = call i32 @findlib(i32 %50, i32 2, i32* %51)
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %159, %49
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %162

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @is_self_atari(i32 %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %64
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %56
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @is_ko(i32 %75, i32 %76, i32* null)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %158, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @approxlib(i32 %86, i32 %87, i32 5, i32* null)
  %89 = icmp slt i32 %88, 5
  br i1 %89, label %90, label %158

90:                                               ; preds = %82, %71, %56
  br label %91

91:                                               ; preds = %90
  store i32 0, i32* %17, align 4
  br label %92

92:                                               ; preds = %119, %91
  %93 = load i32, i32* %17, align 4
  %94 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %95 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %92
  %99 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %100 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %99, i32 0, i32 0
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [50 x i32], [50 x i32]* %100, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %104, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %98
  %111 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %112 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %111, i32 0, i32 1
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [50 x i32], [50 x i32]* %112, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 0
  store i32 %117, i32* %115, align 4
  br label %122

118:                                              ; preds = %98
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %92, !llvm.loop !90

122:                                              ; preds = %110, %92
  %123 = load i32, i32* %17, align 4
  %124 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %125 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %156

128:                                              ; preds = %122
  %129 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %130 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %131, 50
  br i1 %132, label %133, label %156

133:                                              ; preds = %128
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %139 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %138, i32 0, i32 0
  %140 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %141 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [50 x i32], [50 x i32]* %139, i64 0, i64 %143
  store i32 %137, i32* %144, align 4
  %145 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %146 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %145, i32 0, i32 1
  %147 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %148 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [50 x i32], [50 x i32]* %146, i64 0, i64 %150
  store i32 0, i32* %151, align 4
  %152 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %153 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 4
  br label %156

156:                                              ; preds = %133, %128, %122
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %82, %79
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %53, !llvm.loop !91

162:                                              ; preds = %53
  %163 = load i32, i32* @stackp, align 4
  %164 = load i32, i32* @backfill2_depth, align 4
  %165 = icmp sle i32 %163, %164
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* %11, align 4
  %169 = call i32 @have_common_lib(i32 %167, i32 %168, i32* null)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %285

171:                                              ; preds = %166, %162
  %172 = load i32, i32* %11, align 4
  %173 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  call void @break_chain_moves(i32 %172, %struct.reading_moves* %173)
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %284

177:                                              ; preds = %171
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %284

181:                                              ; preds = %177
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %280, %181
  %183 = load i32, i32* %10, align 4
  %184 = icmp slt i32 %183, 2
  br i1 %184, label %185, label %283

185:                                              ; preds = %182
  %186 = load i32, i32* %10, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %8, align 4
  %191 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 0
  %192 = call i32 @approxlib(i32 %189, i32 %190, i32 3, i32* %191)
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %194, label %279

194:                                              ; preds = %185
  store i32 0, i32* %19, align 4
  br label %195

195:                                              ; preds = %275, %194
  %196 = load i32, i32* %19, align 4
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %278

198:                                              ; preds = %195
  %199 = load i32, i32* %19, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %7, align 4
  %204 = call i32 @is_self_atari(i32 %202, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %274, label %206

206:                                              ; preds = %198
  br label %207

207:                                              ; preds = %206
  store i32 0, i32* %20, align 4
  br label %208

208:                                              ; preds = %235, %207
  %209 = load i32, i32* %20, align 4
  %210 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %211 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %209, %212
  br i1 %213, label %214, label %238

214:                                              ; preds = %208
  %215 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %216 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %215, i32 0, i32 0
  %217 = load i32, i32* %20, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [50 x i32], [50 x i32]* %216, i64 0, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %19, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %220, %224
  br i1 %225, label %226, label %234

226:                                              ; preds = %214
  %227 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %228 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %227, i32 0, i32 1
  %229 = load i32, i32* %20, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [50 x i32], [50 x i32]* %228, i64 0, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = add nsw i32 %232, 0
  store i32 %233, i32* %231, align 4
  br label %238

234:                                              ; preds = %214
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %20, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %20, align 4
  br label %208, !llvm.loop !92

238:                                              ; preds = %226, %208
  %239 = load i32, i32* %20, align 4
  %240 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %241 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %244, label %272

244:                                              ; preds = %238
  %245 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %246 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %247, 50
  br i1 %248, label %249, label %272

249:                                              ; preds = %244
  %250 = load i32, i32* %19, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [3 x i32], [3 x i32]* %18, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %255 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %254, i32 0, i32 0
  %256 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %257 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [50 x i32], [50 x i32]* %255, i64 0, i64 %259
  store i32 %253, i32* %260, align 4
  %261 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %262 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %261, i32 0, i32 1
  %263 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %264 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [50 x i32], [50 x i32]* %262, i64 0, i64 %266
  store i32 0, i32* %267, align 4
  %268 = load %struct.reading_moves*, %struct.reading_moves** %5, align 8
  %269 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %249, %244, %238
  br label %273

273:                                              ; preds = %272
  br label %274

274:                                              ; preds = %273, %198
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %19, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %19, align 4
  br label %195, !llvm.loop !93

278:                                              ; preds = %195
  br label %279

279:                                              ; preds = %278, %185
  br label %280

280:                                              ; preds = %279
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %10, align 4
  br label %182, !llvm.loop !94

283:                                              ; preds = %182
  br label %284

284:                                              ; preds = %283, %177, %171
  br label %285

285:                                              ; preds = %284, %166
  br label %286

286:                                              ; preds = %285, %48
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %9, align 4
  br label %31, !llvm.loop !95

289:                                              ; preds = %31
  ret void
}

declare dso_local i32 @have_common_lib(i32, i32, i32*) #1

declare dso_local i32 @count_common_libs(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @double_atari_chain2_moves(i32 %0, %struct.reading_moves* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reading_moves*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [160 x i32], align 16
  %10 = alloca [2 x i32], align 4
  %11 = alloca [400 x i32], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.reading_moves* %1, %struct.reading_moves** %4, align 8
  %13 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 0
  %14 = bitcast i32* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 1600, i1 false)
  %15 = load i32, i32* %3, align 4
  %16 = getelementptr inbounds [160 x i32], [160 x i32]* %9, i64 0, i64 0
  %17 = call i32 @chainlinks2(i32 %15, i32* %16, i32 2)
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %136, %2
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %139

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [160 x i32], [160 x i32]* %9, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %29 = call i32 @findlib(i32 %27, i32 2, i32* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %132, %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %135

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %131

50:                                               ; preds = %33
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = call i32 @is_self_atari(i32 %54, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %130, label %62

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  store i32 0, i32* %12, align 4
  br label %64

64:                                               ; preds = %91, %63
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %67 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %94

70:                                               ; preds = %64
  %71 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %72 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %71, i32 0, i32 0
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [50 x i32], [50 x i32]* %72, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %76, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %84 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %83, i32 0, i32 1
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [50 x i32], [50 x i32]* %84, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %94

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %64, !llvm.loop !96

94:                                               ; preds = %82, %64
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %97 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %128

100:                                              ; preds = %94
  %101 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %102 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %103, 50
  br i1 %104, label %105, label %128

105:                                              ; preds = %100
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %111 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %110, i32 0, i32 0
  %112 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %113 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [50 x i32], [50 x i32]* %111, i64 0, i64 %115
  store i32 %109, i32* %116, align 4
  %117 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %118 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %117, i32 0, i32 1
  %119 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %120 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [50 x i32], [50 x i32]* %118, i64 0, i64 %122
  store i32 1, i32* %123, align 4
  %124 = load %struct.reading_moves*, %struct.reading_moves** %4, align 8
  %125 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %105, %100, %94
  br label %129

129:                                              ; preds = %128
  br label %130

130:                                              ; preds = %129, %50
  br label %131

131:                                              ; preds = %130, %33
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %30, !llvm.loop !97

135:                                              ; preds = %30
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %18, !llvm.loop !98

139:                                              ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hane_rescue_moves(i32 %0, i32* %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.reading_moves*, align 8
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
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @countlib(i32 %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp sle i32 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 20
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = srem i32 %36, 20
  %38 = sub nsw i32 %37, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1865, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i64 0, i64 0), i32 %35, i32 %38)
  br label %39

39:                                               ; preds = %32, %31
  store i32 0, i32* %16, align 4
  br label %40

40:                                               ; preds = %197, %39
  %41 = load i32, i32* %16, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %200

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %50

50:                                               ; preds = %193, %44
  %51 = load i32, i32* %14, align 4
  %52 = icmp slt i32 %51, 4
  br i1 %52, label %53, label %196

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %14, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %54, %58
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %193

68:                                               ; preds = %53
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @same_string(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %193

74:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  br label %75

75:                                               ; preds = %189, %74
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %192

78:                                               ; preds = %75
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  %81 = srem i32 %80, 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %15, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %78
  %88 = load i32, i32* %17, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %87, %78
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %17, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %189

101:                                              ; preds = %90
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %17, align 4
  %104 = add nsw i32 %102, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %189

113:                                              ; preds = %101
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @countlib(i32 %114)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %13, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %18, align 4
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %18, align 4
  %124 = call i32 @accuratelib(i32 %121, i32 %122, i32 %123, i32* null)
  %125 = icmp sgt i32 %120, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %119, %113
  br label %189

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127
  store i32 0, i32* %19, align 4
  br label %129

129:                                              ; preds = %153, %128
  %130 = load i32, i32* %19, align 4
  %131 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %132 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %156

135:                                              ; preds = %129
  %136 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %137 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %136, i32 0, i32 0
  %138 = load i32, i32* %19, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [50 x i32], [50 x i32]* %137, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %152

144:                                              ; preds = %135
  %145 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %146 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %145, i32 0, i32 1
  %147 = load i32, i32* %19, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [50 x i32], [50 x i32]* %146, i64 0, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 0
  store i32 %151, i32* %149, align 4
  br label %156

152:                                              ; preds = %135
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %19, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %19, align 4
  br label %129, !llvm.loop !99

156:                                              ; preds = %144, %129
  %157 = load i32, i32* %19, align 4
  %158 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %159 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %157, %160
  br i1 %161, label %162, label %187

162:                                              ; preds = %156
  %163 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %164 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %165, 50
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load i32, i32* %11, align 4
  %169 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %170 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %169, i32 0, i32 0
  %171 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %172 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [50 x i32], [50 x i32]* %170, i64 0, i64 %174
  store i32 %168, i32* %175, align 4
  %176 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %177 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %176, i32 0, i32 1
  %178 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %179 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [50 x i32], [50 x i32]* %177, i64 0, i64 %181
  store i32 0, i32* %182, align 4
  %183 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %184 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %167, %162, %156
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188, %126, %112, %100
  %190 = load i32, i32* %15, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %15, align 4
  br label %75, !llvm.loop !100

192:                                              ; preds = %75
  br label %193

193:                                              ; preds = %192, %73, %67
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %14, align 4
  br label %50, !llvm.loop !101

196:                                              ; preds = %50
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %16, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %16, align 4
  br label %40, !llvm.loop !102

200:                                              ; preds = %40
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @special_rescue3_moves(i32 %0, i32* %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.reading_moves*, align 8
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
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 3, %26
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @countlib(i32 %28)
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %39

32:                                               ; preds = %3
  %33 = load i32, i32* %4, align 4
  %34 = sdiv i32 %33, 20
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %4, align 4
  %37 = srem i32 %36, 20
  %38 = sub nsw i32 %37, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 1788, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0), i32 %35, i32 %38)
  br label %39

39:                                               ; preds = %32, %31
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %225, %39
  %41 = load i32, i32* %18, align 4
  %42 = icmp slt i32 %41, 3
  br i1 %42, label %43, label %228

43:                                               ; preds = %40
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %18, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %9, align 4
  store i32 0, i32* %16, align 4
  br label %49

49:                                               ; preds = %221, %43
  %50 = load i32, i32* %16, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %224

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %16, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %53, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  br label %221

66:                                               ; preds = %52
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %67, %71
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %66
  br label %221

81:                                               ; preds = %66
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @same_string(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  br label %221

87:                                               ; preds = %81
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %217, %87
  %89 = load i32, i32* %17, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %220

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  %94 = srem i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %19, align 4
  %98 = load i32, i32* %17, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %19, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %100, %91
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %217

115:                                              ; preds = %103
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %19, align 4
  %118 = add nsw i32 %116, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %217

127:                                              ; preds = %115
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %217

138:                                              ; preds = %127
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %19, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %138
  br label %217

149:                                              ; preds = %138
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @approxlib(i32 %150, i32 %151, i32 4, i32* null)
  %153 = icmp sgt i32 %152, 3
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %217

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155
  store i32 0, i32* %20, align 4
  br label %157

157:                                              ; preds = %181, %156
  %158 = load i32, i32* %20, align 4
  %159 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %160 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %184

163:                                              ; preds = %157
  %164 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %165 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %164, i32 0, i32 0
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [50 x i32], [50 x i32]* %165, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %180

172:                                              ; preds = %163
  %173 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %174 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %173, i32 0, i32 1
  %175 = load i32, i32* %20, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [50 x i32], [50 x i32]* %174, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 0
  store i32 %179, i32* %177, align 4
  br label %184

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %20, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %20, align 4
  br label %157, !llvm.loop !103

184:                                              ; preds = %172, %157
  %185 = load i32, i32* %20, align 4
  %186 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %187 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %185, %188
  br i1 %189, label %190, label %215

190:                                              ; preds = %184
  %191 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %192 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %193, 50
  br i1 %194, label %195, label %215

195:                                              ; preds = %190
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %198 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %197, i32 0, i32 0
  %199 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %200 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [50 x i32], [50 x i32]* %198, i64 0, i64 %202
  store i32 %196, i32* %203, align 4
  %204 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %205 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %204, i32 0, i32 1
  %206 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %207 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [50 x i32], [50 x i32]* %205, i64 0, i64 %209
  store i32 0, i32* %210, align 4
  %211 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %212 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %195, %190, %184
  br label %216

216:                                              ; preds = %215
  br label %217

217:                                              ; preds = %216, %154, %148, %137, %126, %114
  %218 = load i32, i32* %17, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %17, align 4
  br label %88, !llvm.loop !104

220:                                              ; preds = %88
  br label %221

221:                                              ; preds = %220, %86, %80, %65
  %222 = load i32, i32* %16, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %16, align 4
  br label %49, !llvm.loop !105

224:                                              ; preds = %49
  br label %225

225:                                              ; preds = %224
  %226 = load i32, i32* %18, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %18, align 4
  br label %40, !llvm.loop !106

228:                                              ; preds = %40
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @special_rescue6_moves(i32 %0, i32* %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.reading_moves*, align 8
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
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @countlib(i32 %27)
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %17, align 4
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* %17, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %31, %3
  br label %42

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %36, 20
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %4, align 4
  %40 = srem i32 %39, 20
  %41 = sub nsw i32 %40, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2016, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i64 0, i64 0), i32 %38, i32 %41)
  br label %42

42:                                               ; preds = %35, %34
  store i32 0, i32* %16, align 4
  br label %43

43:                                               ; preds = %325, %42
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %328

47:                                               ; preds = %43
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %16, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %321, %47
  %54 = load i32, i32* %14, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %324

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %56
  br label %321

70:                                               ; preds = %56
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %86, label %81

81:                                               ; preds = %70
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @same_string(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81, %70
  br label %321

87:                                               ; preds = %81
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %317, %87
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %89, 2
  br i1 %90, label %91, label %320

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  %94 = srem i32 %93, 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* %13, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %100, %91
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %8, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %317

115:                                              ; preds = %103
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %317

125:                                              ; preds = %115
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %317

135:                                              ; preds = %125
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* %13, align 4
  %140 = add nsw i32 %138, %139
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %135
  br label %317

147:                                              ; preds = %135
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %147
  br label %317

157:                                              ; preds = %147
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %160, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  br label %317

170:                                              ; preds = %157
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %171, %172
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @is_self_atari(i32 %173, i32 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %243, label %177

177:                                              ; preds = %170
  br label %178

178:                                              ; preds = %177
  store i32 0, i32* %18, align 4
  br label %179

179:                                              ; preds = %205, %178
  %180 = load i32, i32* %18, align 4
  %181 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %182 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %208

185:                                              ; preds = %179
  %186 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %187 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %186, i32 0, i32 0
  %188 = load i32, i32* %18, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [50 x i32], [50 x i32]* %187, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %192, %193
  %195 = icmp eq i32 %191, %194
  br i1 %195, label %196, label %204

196:                                              ; preds = %185
  %197 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %198 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %197, i32 0, i32 1
  %199 = load i32, i32* %18, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [50 x i32], [50 x i32]* %198, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 0
  store i32 %203, i32* %201, align 4
  br label %208

204:                                              ; preds = %185
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %18, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %18, align 4
  br label %179, !llvm.loop !107

208:                                              ; preds = %196, %179
  %209 = load i32, i32* %18, align 4
  %210 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %211 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %209, %212
  br i1 %213, label %214, label %241

214:                                              ; preds = %208
  %215 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %216 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = icmp slt i32 %217, 50
  br i1 %218, label %219, label %241

219:                                              ; preds = %214
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %220, %221
  %223 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %224 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %223, i32 0, i32 0
  %225 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %226 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [50 x i32], [50 x i32]* %224, i64 0, i64 %228
  store i32 %222, i32* %229, align 4
  %230 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %231 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %230, i32 0, i32 1
  %232 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %233 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [50 x i32], [50 x i32]* %231, i64 0, i64 %235
  store i32 0, i32* %236, align 4
  %237 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %238 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %219, %214, %208
  br label %242

242:                                              ; preds = %241
  br label %243

243:                                              ; preds = %242, %170
  %244 = load i32, i32* %11, align 4
  %245 = load i32, i32* %13, align 4
  %246 = add nsw i32 %244, %245
  %247 = load i32, i32* %7, align 4
  %248 = call i32 @is_self_atari(i32 %246, i32 %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %316, label %250

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %250
  store i32 0, i32* %19, align 4
  br label %252

252:                                              ; preds = %278, %251
  %253 = load i32, i32* %19, align 4
  %254 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %255 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %254, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %281

258:                                              ; preds = %252
  %259 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %260 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %259, i32 0, i32 0
  %261 = load i32, i32* %19, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [50 x i32], [50 x i32]* %260, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* %13, align 4
  %267 = add nsw i32 %265, %266
  %268 = icmp eq i32 %264, %267
  br i1 %268, label %269, label %277

269:                                              ; preds = %258
  %270 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %271 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %270, i32 0, i32 1
  %272 = load i32, i32* %19, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [50 x i32], [50 x i32]* %271, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 0
  store i32 %276, i32* %274, align 4
  br label %281

277:                                              ; preds = %258
  br label %278

278:                                              ; preds = %277
  %279 = load i32, i32* %19, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %19, align 4
  br label %252, !llvm.loop !108

281:                                              ; preds = %269, %252
  %282 = load i32, i32* %19, align 4
  %283 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %284 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 4
  %286 = icmp eq i32 %282, %285
  br i1 %286, label %287, label %314

287:                                              ; preds = %281
  %288 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %289 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = icmp slt i32 %290, 50
  br i1 %291, label %292, label %314

292:                                              ; preds = %287
  %293 = load i32, i32* %11, align 4
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %293, %294
  %296 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %297 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %296, i32 0, i32 0
  %298 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %299 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [50 x i32], [50 x i32]* %297, i64 0, i64 %301
  store i32 %295, i32* %302, align 4
  %303 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %304 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %303, i32 0, i32 1
  %305 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %306 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [50 x i32], [50 x i32]* %304, i64 0, i64 %308
  store i32 0, i32* %309, align 4
  %310 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %311 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  br label %314

314:                                              ; preds = %292, %287, %281
  br label %315

315:                                              ; preds = %314
  br label %316

316:                                              ; preds = %315, %243
  br label %317

317:                                              ; preds = %316, %169, %156, %146, %134, %124, %114
  %318 = load i32, i32* %15, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %15, align 4
  br label %88, !llvm.loop !109

320:                                              ; preds = %88
  br label %321

321:                                              ; preds = %320, %86, %69
  %322 = load i32, i32* %14, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %14, align 4
  br label %53, !llvm.loop !110

324:                                              ; preds = %53
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %16, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %16, align 4
  br label %43, !llvm.loop !111

328:                                              ; preds = %43
  ret void
}

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attack1(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [6 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 3, %26
  store i32 %27, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0), i8** %14, align 8
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* @reading_node_counter, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @reading_node_counter, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @findlib(i32 %31, i32 1, i32* %12)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @countstones(i32 %33)
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  store i32 5, i32* %13, align 4
  br label %87

37:                                               ; preds = %4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @trymove(i32 %38, i32 %39, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %37
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @countlib(i32 %46)
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 5, i32* %13, align 4
  br label %78

50:                                               ; preds = %45
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @countstones(i32 %51)
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 4, i32* %13, align 4
  br label %60

59:                                               ; preds = %54
  store i32 5, i32* %13, align 4
  br label %60

60:                                               ; preds = %59, %58
  br label %77

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @trymove(i32 %62, i32 %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i64 0, i64 0), i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @countlib(i32 %70)
  %72 = icmp sgt i32 %71, 1
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 0, i32* %13, align 4
  br label %75

74:                                               ; preds = %69
  store i32 5, i32* %13, align 4
  br label %75

75:                                               ; preds = %74, %73
  call void @popgo()
  br label %76

76:                                               ; preds = %75, %61
  br label %77

77:                                               ; preds = %76, %60
  br label %78

78:                                               ; preds = %77, %49
  call void @popgo()
  br label %86

79:                                               ; preds = %37
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  br label %85

84:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %83
  br label %86

86:                                               ; preds = %85, %78
  br label %87

87:                                               ; preds = %86, %36
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 5
  br i1 %89, label %90, label %165

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  %94 = call i32 @approxlib(i32 %91, i32 %92, i32 6, i32* %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp sle i32 %95, 5
  br i1 %96, label %97, label %164

97:                                               ; preds = %90
  store i32 0, i32* %18, align 4
  br label %98

98:                                               ; preds = %160, %97
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %163

102:                                              ; preds = %98
  %103 = load i32, i32* %18, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @is_self_atari(i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %159, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %19, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @trymove(i32 %112, i32 %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i64 0, i64 0), i32 %114, i32 %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %159

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %9, align 4
  %123 = call i32 @do_find_defense(i32 %120, i32* null, i32 %121, i32 %122)
  store i32 %123, i32* %20, align 4
  %124 = load i32, i32* %20, align 4
  %125 = icmp ne i32 %124, 5
  br i1 %125, label %126, label %158

126:                                              ; preds = %119
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @do_attack(i32 %127, i32* null, i32 %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %158

132:                                              ; preds = %126
  %133 = load i32, i32* %20, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  call void @popgo()
  %136 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %137 = icmp ne %struct.SGFTree_t* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i8*, i8** %14, align 8
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %19, align 4
  call void @sgf_trace(i8* %139, i32 %140, i32 %141, i32 5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.62, i64 0, i64 0))
  br label %142

142:                                              ; preds = %138, %135
  %143 = load i32, i32* %19, align 4
  %144 = load i32*, i32** %7, align 8
  store i32 %143, i32* %144, align 4
  store i32 5, i32* %5, align 4
  br label %188

145:                                              ; preds = %132
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i32, i32* %20, align 4
  %150 = sub nsw i32 5, %149
  %151 = load i32, i32* %13, align 4
  %152 = icmp sgt i32 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i32, i32* %19, align 4
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %20, align 4
  %156 = sub nsw i32 5, %155
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %153, %148, %145
  br label %158

158:                                              ; preds = %157, %126, %119
  call void @popgo()
  br label %159

159:                                              ; preds = %158, %111, %102
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  br label %98, !llvm.loop !112

163:                                              ; preds = %98
  br label %164

164:                                              ; preds = %163, %90
  br label %165

165:                                              ; preds = %164, %87
  %166 = load i32, i32* %13, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load i32, i32* %12, align 4
  %170 = load i32*, i32** %7, align 8
  store i32 %169, i32* %170, align 4
  %171 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %172 = icmp ne %struct.SGFTree_t* %171, null
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = load i8*, i8** %14, align 8
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load i32, i32* %13, align 4
  call void @sgf_trace(i8* %174, i32 %175, i32 %176, i32 %177, i8* null)
  br label %178

178:                                              ; preds = %173, %168
  br label %186

179:                                              ; preds = %165
  %180 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %181 = icmp ne %struct.SGFTree_t* %180, null
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i8*, i8** %14, align 8
  %184 = load i32, i32* %15, align 4
  call void @sgf_trace(i8* %183, i32 %184, i32 0, i32 0, i8* null)
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %185, %178
  %187 = load i32, i32* %13, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %142
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attack2(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca [2 x i32], align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca [160 x i32], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.reading_moves, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
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
  %42 = alloca [24 x i32], align 16
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 3, %50
  store i32 %51, i32* %11, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.96, i64 0, i64 0), i8** %28, align 8
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %29, align 4
  %53 = load i32, i32* @reading_node_counter, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* @reading_node_counter, align 4
  %55 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  store i32 0, i32* %55, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @find_origin(i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %71, label %64

64:                                               ; preds = %4
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %64, %4
  br label %79

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = sdiv i32 %73, 20
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %6, align 4
  %77 = srem i32 %76, 20
  %78 = sub nsw i32 %77, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2552, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 %75, i32 %78)
  br label %79

79:                                               ; preds = %72, %71
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @countlib(i32 %80)
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  br label %91

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = sdiv i32 %85, 20
  %87 = sub nsw i32 %86, 1
  %88 = load i32, i32* %6, align 4
  %89 = srem i32 %88, 20
  %90 = sub nsw i32 %89, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2553, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i32 %87, i32 %90)
  br label %91

91:                                               ; preds = %84, %83
  %92 = load i32, i32* %6, align 4
  %93 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 0
  %94 = call i32 @chainlinks2(i32 %92, i32* %93, i32 1)
  store i32 %94, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %95

95:                                               ; preds = %185, %91
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %18, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %188

99:                                               ; preds = %95
  %100 = load i32, i32* @stackp, align 4
  %101 = load i32, i32* @depth, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %119

103:                                              ; preds = %99
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @countstones(i32 %107)
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %110, label %119

110:                                              ; preds = %103
  br label %111

111:                                              ; preds = %110
  %112 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %113 = icmp ne %struct.SGFTree_t* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i8*, i8** %28, align 8
  %116 = load i32, i32* %29, align 4
  call void @sgf_trace(i8* %115, i32 %116, i32 0, i32 0, i8* null)
  br label %117

117:                                              ; preds = %114, %111
  store i32 0, i32* %5, align 4
  br label %1023

118:                                              ; No predecessors!
  br label %119

119:                                              ; preds = %118, %103, %99
  %120 = load i32, i32* @stackp, align 4
  %121 = load i32, i32* @depth, align 4
  %122 = icmp sle i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  call void @break_chain_moves(i32 %127, %struct.reading_moves* %26)
  br label %128

128:                                              ; preds = %123, %119
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @findlib(i32 %132, i32 1, i32* %12)
  br label %134

134:                                              ; preds = %128
  store i32 0, i32* %30, align 4
  br label %135

135:                                              ; preds = %156, %134
  %136 = load i32, i32* %30, align 4
  %137 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %136, %138
  br i1 %139, label %140, label %159

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %142 = load i32, i32* %30, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [50 x i32], [50 x i32]* %141, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %140
  %149 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 1
  %150 = load i32, i32* %30, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [50 x i32], [50 x i32]* %149, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, 0
  store i32 %154, i32* %152, align 4
  br label %159

155:                                              ; preds = %140
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %30, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %30, align 4
  br label %135, !llvm.loop !113

159:                                              ; preds = %148, %135
  %160 = load i32, i32* %30, align 4
  %161 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = icmp slt i32 %166, 50
  br i1 %167, label %168, label %183

168:                                              ; preds = %164
  %169 = load i32, i32* %12, align 4
  %170 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %171 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [50 x i32], [50 x i32]* %170, i64 0, i64 %173
  store i32 %169, i32* %174, align 4
  %175 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 1
  %176 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [50 x i32], [50 x i32]* %175, i64 0, i64 %178
  store i32 0, i32* %179, align 4
  %180 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %168, %164, %159
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %95, !llvm.loop !114

188:                                              ; preds = %95
  %189 = load i32, i32* %6, align 4
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %191 = call i32 @findlib(i32 %189, i32 2, i32* %190)
  store i32 %191, i32* %14, align 4
  %192 = load i32, i32* %14, align 4
  %193 = icmp eq i32 %192, 2
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  br label %202

195:                                              ; preds = %188
  %196 = load i32, i32* %6, align 4
  %197 = sdiv i32 %196, 20
  %198 = sub nsw i32 %197, 1
  %199 = load i32, i32* %6, align 4
  %200 = srem i32 %199, 20
  %201 = sub nsw i32 %200, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2581, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i64 0, i64 0), i32 %198, i32 %201)
  br label %202

202:                                              ; preds = %195, %194
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 20
  %208 = icmp eq i32 %204, %207
  br i1 %208, label %230, label %209

209:                                              ; preds = %202
  %210 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %213 = load i32, i32* %212, align 4
  %214 = sub nsw i32 %213, 1
  %215 = icmp eq i32 %211, %214
  br i1 %215, label %230, label %216

216:                                              ; preds = %209
  %217 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, 20
  %222 = icmp eq i32 %218, %221
  br i1 %222, label %230, label %223

223:                                              ; preds = %216
  %224 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  %229 = icmp eq i32 %225, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %223, %216, %209, %202
  store i32 1, i32* %27, align 4
  br label %231

231:                                              ; preds = %230, %223
  store i32 0, i32* %24, align 4
  br label %232

232:                                              ; preds = %497, %231
  %233 = load i32, i32* %24, align 4
  %234 = icmp slt i32 %233, 2
  br i1 %234, label %235, label %500

235:                                              ; preds = %232
  %236 = load i32, i32* %24, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %31, align 4
  %240 = load i32, i32* %31, align 4
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @is_self_atari(i32 %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %235
  store i32 1, i32* %25, align 4
  br label %245

245:                                              ; preds = %244, %235
  %246 = load i32, i32* @stackp, align 4
  %247 = load i32, i32* @backfill_depth, align 4
  %248 = icmp sle i32 %246, %247
  br i1 %248, label %297, label %249

249:                                              ; preds = %245
  %250 = load i32, i32* @stackp, align 4
  %251 = load i32, i32* @depth, align 4
  %252 = icmp sle i32 %250, %251
  br i1 %252, label %256, label %253

253:                                              ; preds = %249
  %254 = load i32, i32* %27, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %292

256:                                              ; preds = %253, %249
  %257 = load i32, i32* %31, align 4
  %258 = add nsw i32 %257, 20
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = load i32, i32* %11, align 4
  %264 = icmp ne i32 %262, %263
  br i1 %264, label %265, label %292

265:                                              ; preds = %256
  %266 = load i32, i32* %31, align 4
  %267 = sub nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = load i32, i32* %11, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %292

274:                                              ; preds = %265
  %275 = load i32, i32* %31, align 4
  %276 = sub nsw i32 %275, 20
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %277
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = load i32, i32* %11, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %292

283:                                              ; preds = %274
  %284 = load i32, i32* %31, align 4
  %285 = add nsw i32 %284, 1
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = load i32, i32* %11, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %297, label %292

292:                                              ; preds = %283, %274, %265, %256, %253
  %293 = load i32, i32* %31, align 4
  %294 = load i32, i32* %11, align 4
  %295 = call i32 @is_self_atari(i32 %293, i32 %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %349, label %297

297:                                              ; preds = %292, %283, %245
  br label %298

298:                                              ; preds = %297
  store i32 0, i32* %32, align 4
  br label %299

299:                                              ; preds = %320, %298
  %300 = load i32, i32* %32, align 4
  %301 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %302 = load i32, i32* %301, align 4
  %303 = icmp slt i32 %300, %302
  br i1 %303, label %304, label %323

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %306 = load i32, i32* %32, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [50 x i32], [50 x i32]* %305, i64 0, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %31, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %319

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 1
  %314 = load i32, i32* %32, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [50 x i32], [50 x i32]* %313, i64 0, i64 %315
  %317 = load i32, i32* %316, align 4
  %318 = add nsw i32 %317, 0
  store i32 %318, i32* %316, align 4
  br label %323

319:                                              ; preds = %304
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %32, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %32, align 4
  br label %299, !llvm.loop !115

323:                                              ; preds = %312, %299
  %324 = load i32, i32* %32, align 4
  %325 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %324, %326
  br i1 %327, label %328, label %347

328:                                              ; preds = %323
  %329 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %330, 50
  br i1 %331, label %332, label %347

332:                                              ; preds = %328
  %333 = load i32, i32* %31, align 4
  %334 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %335 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [50 x i32], [50 x i32]* %334, i64 0, i64 %337
  store i32 %333, i32* %338, align 4
  %339 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 1
  %340 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [50 x i32], [50 x i32]* %339, i64 0, i64 %342
  store i32 0, i32* %343, align 4
  %344 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %345 = load i32, i32* %344, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %332, %328, %323
  br label %348

348:                                              ; preds = %347
  br label %349

349:                                              ; preds = %348, %292
  %350 = load i32, i32* @stackp, align 4
  %351 = load i32, i32* @backfill_depth, align 4
  %352 = icmp sle i32 %350, %351
  br i1 %352, label %353, label %496

353:                                              ; preds = %349
  %354 = load i32, i32* %31, align 4
  %355 = load i32, i32* %11, align 4
  %356 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %357 = call i32 @approxlib(i32 %354, i32 %355, i32 2, i32* %356)
  %358 = icmp eq i32 %357, 1
  br i1 %358, label %359, label %496

359:                                              ; preds = %353
  br label %360

360:                                              ; preds = %359
  store i32 0, i32* %33, align 4
  br label %361

361:                                              ; preds = %383, %360
  %362 = load i32, i32* %33, align 4
  %363 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %364 = load i32, i32* %363, align 4
  %365 = icmp slt i32 %362, %364
  br i1 %365, label %366, label %386

366:                                              ; preds = %361
  %367 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %368 = load i32, i32* %33, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [50 x i32], [50 x i32]* %367, i64 0, i64 %369
  %371 = load i32, i32* %370, align 4
  %372 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %373 = load i32, i32* %372, align 4
  %374 = icmp eq i32 %371, %373
  br i1 %374, label %375, label %382

375:                                              ; preds = %366
  %376 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 1
  %377 = load i32, i32* %33, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [50 x i32], [50 x i32]* %376, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = add nsw i32 %380, 0
  store i32 %381, i32* %379, align 4
  br label %386

382:                                              ; preds = %366
  br label %383

383:                                              ; preds = %382
  %384 = load i32, i32* %33, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %33, align 4
  br label %361, !llvm.loop !116

386:                                              ; preds = %375, %361
  %387 = load i32, i32* %33, align 4
  %388 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = icmp eq i32 %387, %389
  br i1 %390, label %391, label %411

391:                                              ; preds = %386
  %392 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %393, 50
  br i1 %394, label %395, label %411

395:                                              ; preds = %391
  %396 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %397 = load i32, i32* %396, align 4
  %398 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %399 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %400 = load i32, i32* %399, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [50 x i32], [50 x i32]* %398, i64 0, i64 %401
  store i32 %397, i32* %402, align 4
  %403 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 1
  %404 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %405 = load i32, i32* %404, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [50 x i32], [50 x i32]* %403, i64 0, i64 %406
  store i32 0, i32* %407, align 4
  %408 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %408, align 4
  br label %411

411:                                              ; preds = %395, %391, %386
  br label %412

412:                                              ; preds = %411
  store i32 0, i32* %15, align 4
  br label %413

413:                                              ; preds = %492, %412
  %414 = load i32, i32* %15, align 4
  %415 = icmp slt i32 %414, 4
  br i1 %415, label %416, label %495

416:                                              ; preds = %413
  %417 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %15, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = add nsw i32 %418, %422
  store i32 %423, i32* %34, align 4
  %424 = load i32, i32* %34, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %425
  %427 = load i8, i8* %426, align 1
  %428 = zext i8 %427 to i32
  %429 = load i32, i32* %11, align 4
  %430 = icmp eq i32 %428, %429
  br i1 %430, label %431, label %491

431:                                              ; preds = %416
  %432 = load i32, i32* %34, align 4
  %433 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 0
  %434 = call i32 @chainlinks2(i32 %432, i32* %433, i32 1)
  %435 = icmp sgt i32 %434, 0
  br i1 %435, label %436, label %491

436:                                              ; preds = %431
  %437 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 0
  %438 = load i32, i32* %437, align 16
  %439 = call i32 @findlib(i32 %438, i32 1, i32* %13)
  br label %440

440:                                              ; preds = %436
  store i32 0, i32* %35, align 4
  br label %441

441:                                              ; preds = %462, %440
  %442 = load i32, i32* %35, align 4
  %443 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %444 = load i32, i32* %443, align 4
  %445 = icmp slt i32 %442, %444
  br i1 %445, label %446, label %465

446:                                              ; preds = %441
  %447 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %448 = load i32, i32* %35, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [50 x i32], [50 x i32]* %447, i64 0, i64 %449
  %451 = load i32, i32* %450, align 4
  %452 = load i32, i32* %13, align 4
  %453 = icmp eq i32 %451, %452
  br i1 %453, label %454, label %461

454:                                              ; preds = %446
  %455 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 1
  %456 = load i32, i32* %35, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds [50 x i32], [50 x i32]* %455, i64 0, i64 %457
  %459 = load i32, i32* %458, align 4
  %460 = add nsw i32 %459, 0
  store i32 %460, i32* %458, align 4
  br label %465

461:                                              ; preds = %446
  br label %462

462:                                              ; preds = %461
  %463 = load i32, i32* %35, align 4
  %464 = add nsw i32 %463, 1
  store i32 %464, i32* %35, align 4
  br label %441, !llvm.loop !117

465:                                              ; preds = %454, %441
  %466 = load i32, i32* %35, align 4
  %467 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %468 = load i32, i32* %467, align 4
  %469 = icmp eq i32 %466, %468
  br i1 %469, label %470, label %489

470:                                              ; preds = %465
  %471 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %472 = load i32, i32* %471, align 4
  %473 = icmp slt i32 %472, 50
  br i1 %473, label %474, label %489

474:                                              ; preds = %470
  %475 = load i32, i32* %13, align 4
  %476 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %477 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds [50 x i32], [50 x i32]* %476, i64 0, i64 %479
  store i32 %475, i32* %480, align 4
  %481 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 1
  %482 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [50 x i32], [50 x i32]* %481, i64 0, i64 %484
  store i32 0, i32* %485, align 4
  %486 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %487 = load i32, i32* %486, align 4
  %488 = add nsw i32 %487, 1
  store i32 %488, i32* %486, align 4
  br label %489

489:                                              ; preds = %474, %470, %465
  br label %490

490:                                              ; preds = %489
  br label %491

491:                                              ; preds = %490, %431, %416
  br label %492

492:                                              ; preds = %491
  %493 = load i32, i32* %15, align 4
  %494 = add nsw i32 %493, 1
  store i32 %494, i32* %15, align 4
  br label %413, !llvm.loop !118

495:                                              ; preds = %413
  br label %496

496:                                              ; preds = %495, %353, %349
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %24, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %24, align 4
  br label %232, !llvm.loop !119

500:                                              ; preds = %232
  %501 = load i32, i32* %25, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %517, label %503

503:                                              ; preds = %500
  store i32 0, i32* %24, align 4
  br label %504

504:                                              ; preds = %513, %503
  %505 = load i32, i32* %24, align 4
  %506 = icmp slt i32 %505, 2
  br i1 %506, label %507, label %516

507:                                              ; preds = %504
  %508 = load i32, i32* %6, align 4
  %509 = load i32, i32* %24, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %510
  %512 = load i32, i32* %511, align 4
  call void @edge_block_moves(i32 %508, i32 %512, %struct.reading_moves* %26)
  br label %513

513:                                              ; preds = %507
  %514 = load i32, i32* %24, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %24, align 4
  br label %504, !llvm.loop !120

516:                                              ; preds = %504
  br label %517

517:                                              ; preds = %516, %500
  %518 = load i32, i32* %6, align 4
  %519 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 0
  %520 = call i32 @chainlinks2(i32 %518, i32* %519, i32 2)
  store i32 %520, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %521

521:                                              ; preds = %544, %517
  %522 = load i32, i32* %15, align 4
  %523 = load i32, i32* %18, align 4
  %524 = icmp slt i32 %522, %523
  br i1 %524, label %525, label %547

525:                                              ; preds = %521
  %526 = load i32, i32* %15, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [160 x i32], [160 x i32]* %19, i64 0, i64 %527
  %529 = load i32, i32* %528, align 4
  store i32 %529, i32* %36, align 4
  %530 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* %36, align 4
  %533 = call i32 @liberty_of_string(i32 %531, i32 %532)
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %543

535:                                              ; preds = %525
  %536 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %537 = load i32, i32* %536, align 4
  %538 = load i32, i32* %36, align 4
  %539 = call i32 @liberty_of_string(i32 %537, i32 %538)
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %543

541:                                              ; preds = %535
  %542 = load i32, i32* %36, align 4
  call void @break_chain_moves(i32 %542, %struct.reading_moves* %26)
  br label %543

543:                                              ; preds = %541, %535, %525
  br label %544

544:                                              ; preds = %543
  %545 = load i32, i32* %15, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %15, align 4
  br label %521, !llvm.loop !121

547:                                              ; preds = %521
  %548 = load i32, i32* %6, align 4
  %549 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %550 = load i32, i32* %14, align 4
  %551 = load i32, i32* %11, align 4
  call void @propose_edge_moves(i32 %548, i32* %549, i32 %550, %struct.reading_moves* %26, i32 %551)
  %552 = load i32, i32* %6, align 4
  %553 = load i32, i32* %11, align 4
  %554 = load i8*, i8** %28, align 8
  call void @order_moves(i32 %552, %struct.reading_moves* %26, i32 %553, i8* %554, i32 0)
  store i32 0, i32* %24, align 4
  br label %555

555:                                              ; preds = %647, %547
  %556 = load i32, i32* %24, align 4
  %557 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 2
  %558 = load i32, i32* %557, align 4
  %559 = icmp slt i32 %556, %558
  br i1 %559, label %560, label %650

560:                                              ; preds = %555
  %561 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %26, i32 0, i32 0
  %562 = load i32, i32* %24, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [50 x i32], [50 x i32]* %561, i64 0, i64 %563
  %565 = load i32, i32* %564, align 4
  store i32 %565, i32* %40, align 4
  %566 = load i32, i32* %40, align 4
  %567 = load i32, i32* %11, align 4
  %568 = load i32, i32* %6, align 4
  %569 = load i32, i32* %8, align 4
  %570 = load i32, i32* %9, align 4
  %571 = load i32, i32* @stackp, align 4
  %572 = load i32, i32* @ko_depth, align 4
  %573 = icmp sle i32 %571, %572
  br i1 %573, label %574, label %577

574:                                              ; preds = %560
  %575 = load i32, i32* %21, align 4
  %576 = icmp eq i32 %575, 0
  br label %577

577:                                              ; preds = %574, %560
  %578 = phi i1 [ false, %560 ], [ %576, %574 ]
  %579 = zext i1 %578 to i32
  %580 = call i32 @komaster_trymove(i32 %566, i32 %567, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i64 0, i64 0), i32 %568, i32 %569, i32 %570, i32* %37, i32* %38, i32* %39, i32 %579)
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %646

582:                                              ; preds = %577
  %583 = load i32, i32* %39, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %630, label %585

585:                                              ; preds = %582
  %586 = load i32, i32* %6, align 4
  %587 = load i32, i32* %37, align 4
  %588 = load i32, i32* %38, align 4
  %589 = call i32 @do_find_defense(i32 %586, i32* null, i32 %587, i32 %588)
  store i32 %589, i32* %23, align 4
  %590 = load i32, i32* %23, align 4
  %591 = icmp ne i32 %590, 5
  br i1 %591, label %592, label %628

592:                                              ; preds = %585
  %593 = load i32, i32* %6, align 4
  %594 = load i32, i32* %37, align 4
  %595 = load i32, i32* %38, align 4
  %596 = call i32 @do_attack(i32 %593, i32* null, i32 %594, i32 %595)
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %598, label %628

598:                                              ; preds = %592
  call void @popgo()
  br label %599

599:                                              ; preds = %598
  %600 = load i32, i32* %23, align 4
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %616

602:                                              ; preds = %599
  %603 = load i32*, i32** %7, align 8
  %604 = icmp ne i32* %603, null
  br i1 %604, label %605, label %608

605:                                              ; preds = %602
  %606 = load i32, i32* %40, align 4
  %607 = load i32*, i32** %7, align 8
  store i32 %606, i32* %607, align 4
  br label %608

608:                                              ; preds = %605, %602
  %609 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %610 = icmp ne %struct.SGFTree_t* %609, null
  br i1 %610, label %611, label %615

611:                                              ; preds = %608
  %612 = load i8*, i8** %28, align 8
  %613 = load i32, i32* %29, align 4
  %614 = load i32, i32* %40, align 4
  call void @sgf_trace(i8* %612, i32 %613, i32 %614, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %615

615:                                              ; preds = %611, %608
  store i32 5, i32* %5, align 4
  br label %1023

616:                                              ; preds = %599
  %617 = load i32, i32* %23, align 4
  %618 = sub nsw i32 5, %617
  %619 = load i32, i32* %21, align 4
  %620 = icmp sgt i32 %618, %619
  br i1 %620, label %621, label %625

621:                                              ; preds = %616
  %622 = load i32, i32* %40, align 4
  store i32 %622, i32* %20, align 4
  %623 = load i32, i32* %23, align 4
  %624 = sub nsw i32 5, %623
  store i32 %624, i32* %21, align 4
  br label %625

625:                                              ; preds = %621, %616
  br label %626

626:                                              ; preds = %625
  br label %627

627:                                              ; preds = %626
  br label %629

628:                                              ; preds = %592, %585
  call void @popgo()
  br label %629

629:                                              ; preds = %628, %627
  br label %645

630:                                              ; preds = %582
  %631 = load i32, i32* %6, align 4
  %632 = load i32, i32* %37, align 4
  %633 = load i32, i32* %38, align 4
  %634 = call i32 @do_find_defense(i32 %631, i32* null, i32 %632, i32 %633)
  %635 = icmp ne i32 %634, 5
  br i1 %635, label %636, label %644

636:                                              ; preds = %630
  %637 = load i32, i32* %6, align 4
  %638 = load i32, i32* %37, align 4
  %639 = load i32, i32* %38, align 4
  %640 = call i32 @do_attack(i32 %637, i32* null, i32 %638, i32 %639)
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %644

642:                                              ; preds = %636
  %643 = load i32, i32* %40, align 4
  store i32 %643, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %644

644:                                              ; preds = %642, %636, %630
  call void @popgo()
  br label %645

645:                                              ; preds = %644, %629
  br label %646

646:                                              ; preds = %645, %577
  br label %647

647:                                              ; preds = %646
  %648 = load i32, i32* %24, align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %24, align 4
  br label %555, !llvm.loop !122

650:                                              ; preds = %555
  %651 = load i32, i32* %6, align 4
  %652 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %653 = load i32, i32* %652, align 4
  %654 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %655 = load i32, i32* %654, align 4
  %656 = load i32, i32* %8, align 4
  %657 = load i32, i32* %9, align 4
  %658 = call i32 @find_cap2(i32 %651, i32 %653, i32 %655, i32* %13, i32 %656, i32 %657)
  store i32 %658, i32* %22, align 4
  br label %659

659:                                              ; preds = %650
  %660 = load i32, i32* %22, align 4
  %661 = sub nsw i32 5, %660
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %663, label %677

663:                                              ; preds = %659
  %664 = load i32*, i32** %7, align 8
  %665 = icmp ne i32* %664, null
  br i1 %665, label %666, label %669

666:                                              ; preds = %663
  %667 = load i32, i32* %13, align 4
  %668 = load i32*, i32** %7, align 8
  store i32 %667, i32* %668, align 4
  br label %669

669:                                              ; preds = %666, %663
  %670 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %671 = icmp ne %struct.SGFTree_t* %670, null
  br i1 %671, label %672, label %676

672:                                              ; preds = %669
  %673 = load i8*, i8** %28, align 8
  %674 = load i32, i32* %29, align 4
  %675 = load i32, i32* %13, align 4
  call void @sgf_trace(i8* %673, i32 %674, i32 %675, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.99, i64 0, i64 0))
  br label %676

676:                                              ; preds = %672, %669
  store i32 5, i32* %5, align 4
  br label %1023

677:                                              ; preds = %659
  %678 = load i32, i32* %22, align 4
  %679 = sub nsw i32 5, %678
  %680 = sub nsw i32 5, %679
  %681 = load i32, i32* %21, align 4
  %682 = icmp sgt i32 %680, %681
  br i1 %682, label %683, label %688

683:                                              ; preds = %677
  %684 = load i32, i32* %13, align 4
  store i32 %684, i32* %20, align 4
  %685 = load i32, i32* %22, align 4
  %686 = sub nsw i32 5, %685
  %687 = sub nsw i32 5, %686
  store i32 %687, i32* %21, align 4
  br label %688

688:                                              ; preds = %683, %677
  br label %689

689:                                              ; preds = %688
  br label %690

690:                                              ; preds = %689
  %691 = load i32, i32* @stackp, align 4
  %692 = load i32, i32* @backfill_depth, align 4
  %693 = icmp sle i32 %691, %692
  br i1 %693, label %694, label %732

694:                                              ; preds = %690
  %695 = load i32, i32* %6, align 4
  %696 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %697 = load i32, i32* %8, align 4
  %698 = load i32, i32* %9, align 4
  %699 = call i32 @special_attack2(i32 %695, i32* %696, i32* %13, i32 %697, i32 %698)
  store i32 %699, i32* %22, align 4
  br label %700

700:                                              ; preds = %694
  %701 = load i32, i32* %22, align 4
  %702 = sub nsw i32 5, %701
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %704, label %718

704:                                              ; preds = %700
  %705 = load i32*, i32** %7, align 8
  %706 = icmp ne i32* %705, null
  br i1 %706, label %707, label %710

707:                                              ; preds = %704
  %708 = load i32, i32* %13, align 4
  %709 = load i32*, i32** %7, align 8
  store i32 %708, i32* %709, align 4
  br label %710

710:                                              ; preds = %707, %704
  %711 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %712 = icmp ne %struct.SGFTree_t* %711, null
  br i1 %712, label %713, label %717

713:                                              ; preds = %710
  %714 = load i8*, i8** %28, align 8
  %715 = load i32, i32* %29, align 4
  %716 = load i32, i32* %13, align 4
  call void @sgf_trace(i8* %714, i32 %715, i32 %716, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.100, i64 0, i64 0))
  br label %717

717:                                              ; preds = %713, %710
  store i32 5, i32* %5, align 4
  br label %1023

718:                                              ; preds = %700
  %719 = load i32, i32* %22, align 4
  %720 = sub nsw i32 5, %719
  %721 = sub nsw i32 5, %720
  %722 = load i32, i32* %21, align 4
  %723 = icmp sgt i32 %721, %722
  br i1 %723, label %724, label %729

724:                                              ; preds = %718
  %725 = load i32, i32* %13, align 4
  store i32 %725, i32* %20, align 4
  %726 = load i32, i32* %22, align 4
  %727 = sub nsw i32 5, %726
  %728 = sub nsw i32 5, %727
  store i32 %728, i32* %21, align 4
  br label %729

729:                                              ; preds = %724, %718
  br label %730

730:                                              ; preds = %729
  br label %731

731:                                              ; preds = %730
  br label %732

732:                                              ; preds = %731, %690
  %733 = load i32, i32* @stackp, align 4
  %734 = load i32, i32* @backfill_depth, align 4
  %735 = icmp sle i32 %733, %734
  br i1 %735, label %736, label %774

736:                                              ; preds = %732
  %737 = load i32, i32* %6, align 4
  %738 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %739 = load i32, i32* %8, align 4
  %740 = load i32, i32* %9, align 4
  %741 = call i32 @special_attack3(i32 %737, i32* %738, i32* %13, i32 %739, i32 %740)
  store i32 %741, i32* %22, align 4
  br label %742

742:                                              ; preds = %736
  %743 = load i32, i32* %22, align 4
  %744 = sub nsw i32 5, %743
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %746, label %760

746:                                              ; preds = %742
  %747 = load i32*, i32** %7, align 8
  %748 = icmp ne i32* %747, null
  br i1 %748, label %749, label %752

749:                                              ; preds = %746
  %750 = load i32, i32* %13, align 4
  %751 = load i32*, i32** %7, align 8
  store i32 %750, i32* %751, align 4
  br label %752

752:                                              ; preds = %749, %746
  %753 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %754 = icmp ne %struct.SGFTree_t* %753, null
  br i1 %754, label %755, label %759

755:                                              ; preds = %752
  %756 = load i8*, i8** %28, align 8
  %757 = load i32, i32* %29, align 4
  %758 = load i32, i32* %13, align 4
  call void @sgf_trace(i8* %756, i32 %757, i32 %758, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.101, i64 0, i64 0))
  br label %759

759:                                              ; preds = %755, %752
  store i32 5, i32* %5, align 4
  br label %1023

760:                                              ; preds = %742
  %761 = load i32, i32* %22, align 4
  %762 = sub nsw i32 5, %761
  %763 = sub nsw i32 5, %762
  %764 = load i32, i32* %21, align 4
  %765 = icmp sgt i32 %763, %764
  br i1 %765, label %766, label %771

766:                                              ; preds = %760
  %767 = load i32, i32* %13, align 4
  store i32 %767, i32* %20, align 4
  %768 = load i32, i32* %22, align 4
  %769 = sub nsw i32 5, %768
  %770 = sub nsw i32 5, %769
  store i32 %770, i32* %21, align 4
  br label %771

771:                                              ; preds = %766, %760
  br label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772
  br label %774

774:                                              ; preds = %773, %732
  %775 = load i32, i32* @stackp, align 4
  %776 = load i32, i32* @backfill_depth, align 4
  %777 = icmp sle i32 %775, %776
  br i1 %777, label %778, label %816

778:                                              ; preds = %774
  %779 = load i32, i32* %6, align 4
  %780 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  %781 = load i32, i32* %8, align 4
  %782 = load i32, i32* %9, align 4
  %783 = call i32 @special_attack4(i32 %779, i32* %780, i32* %13, i32 %781, i32 %782)
  store i32 %783, i32* %22, align 4
  br label %784

784:                                              ; preds = %778
  %785 = load i32, i32* %22, align 4
  %786 = sub nsw i32 5, %785
  %787 = icmp eq i32 %786, 0
  br i1 %787, label %788, label %802

788:                                              ; preds = %784
  %789 = load i32*, i32** %7, align 8
  %790 = icmp ne i32* %789, null
  br i1 %790, label %791, label %794

791:                                              ; preds = %788
  %792 = load i32, i32* %13, align 4
  %793 = load i32*, i32** %7, align 8
  store i32 %792, i32* %793, align 4
  br label %794

794:                                              ; preds = %791, %788
  %795 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %796 = icmp ne %struct.SGFTree_t* %795, null
  br i1 %796, label %797, label %801

797:                                              ; preds = %794
  %798 = load i8*, i8** %28, align 8
  %799 = load i32, i32* %29, align 4
  %800 = load i32, i32* %13, align 4
  call void @sgf_trace(i8* %798, i32 %799, i32 %800, i32 5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.102, i64 0, i64 0))
  br label %801

801:                                              ; preds = %797, %794
  store i32 5, i32* %5, align 4
  br label %1023

802:                                              ; preds = %784
  %803 = load i32, i32* %22, align 4
  %804 = sub nsw i32 5, %803
  %805 = sub nsw i32 5, %804
  %806 = load i32, i32* %21, align 4
  %807 = icmp sgt i32 %805, %806
  br i1 %807, label %808, label %813

808:                                              ; preds = %802
  %809 = load i32, i32* %13, align 4
  store i32 %809, i32* %20, align 4
  %810 = load i32, i32* %22, align 4
  %811 = sub nsw i32 5, %810
  %812 = sub nsw i32 5, %811
  store i32 %812, i32* %21, align 4
  br label %813

813:                                              ; preds = %808, %802
  br label %814

814:                                              ; preds = %813
  br label %815

815:                                              ; preds = %814
  br label %816

816:                                              ; preds = %815, %774
  %817 = load i32, i32* @level, align 4
  %818 = icmp sge i32 %817, 10
  br i1 %818, label %819, label %983

819:                                              ; preds = %816
  %820 = load i32, i32* @stackp, align 4
  %821 = load i32, i32* @backfill_depth, align 4
  %822 = icmp sle i32 %820, %821
  br i1 %822, label %823, label %983

823:                                              ; preds = %819
  %824 = load i32, i32* @stackp, align 4
  %825 = load i32, i32* @superstring_depth, align 4
  %826 = icmp sle i32 %824, %825
  br i1 %826, label %830, label %827

827:                                              ; preds = %823
  %828 = load i32, i32* %25, align 4
  %829 = icmp ne i32 %828, 0
  br i1 %829, label %983, label %830

830:                                              ; preds = %827, %823
  store i32 2, i32* %43, align 4
  %831 = load i32, i32* @stackp, align 4
  %832 = load i32, i32* @backfill2_depth, align 4
  %833 = icmp sle i32 %831, %832
  br i1 %833, label %834, label %835

834:                                              ; preds = %830
  store i32 3, i32* %43, align 4
  br label %835

835:                                              ; preds = %834, %830
  %836 = load i32, i32* %6, align 4
  %837 = getelementptr inbounds [24 x i32], [24 x i32]* %42, i64 0, i64 0
  %838 = load i32, i32* %43, align 4
  call void @find_superstring_liberties(i32 %836, i32* %41, i32* %837, i32 %838)
  %839 = load i32, i32* %41, align 4
  %840 = icmp sle i32 %839, 5
  br i1 %840, label %841, label %982

841:                                              ; preds = %835
  store i32 0, i32* %24, align 4
  br label %842

842:                                              ; preds = %978, %841
  %843 = load i32, i32* %24, align 4
  %844 = load i32, i32* %41, align 4
  %845 = icmp slt i32 %843, %844
  br i1 %845, label %846, label %981

846:                                              ; preds = %842
  %847 = load i32, i32* %24, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [24 x i32], [24 x i32]* %42, i64 0, i64 %848
  %850 = load i32, i32* %849, align 4
  store i32 %850, i32* %44, align 4
  %851 = load i32, i32* %44, align 4
  %852 = load i32, i32* %6, align 4
  %853 = call i32 @liberty_of_string(i32 %851, i32 %852)
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %855, label %856

855:                                              ; preds = %846
  br label %978

856:                                              ; preds = %846
  %857 = load i32, i32* %44, align 4
  %858 = load i32, i32* %11, align 4
  %859 = load i32, i32* %6, align 4
  %860 = load i32, i32* %8, align 4
  %861 = load i32, i32* %9, align 4
  %862 = call i32 @trymove(i32 %857, i32 %858, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i64 0, i64 0), i32 %859, i32 %860, i32 %861)
  %863 = icmp ne i32 %862, 0
  br i1 %863, label %864, label %977

864:                                              ; preds = %856
  %865 = load i32, i32* %44, align 4
  %866 = call i32 @countlib(i32 %865)
  %867 = icmp eq i32 %866, 1
  br i1 %867, label %868, label %931

868:                                              ; preds = %864
  %869 = load i32, i32* %44, align 4
  %870 = call i32 @findlib(i32 %869, i32 1, i32* %13)
  %871 = load i32, i32* %13, align 4
  %872 = load i32, i32* %11, align 4
  %873 = call i32 @approxlib(i32 %871, i32 %872, i32 2, i32* null)
  %874 = icmp sgt i32 %873, 1
  br i1 %874, label %875, label %929

875:                                              ; preds = %868
  call void @popgo()
  %876 = load i32, i32* %13, align 4
  %877 = load i32, i32* %11, align 4
  %878 = load i32, i32* %6, align 4
  %879 = load i32, i32* %8, align 4
  %880 = load i32, i32* %9, align 4
  %881 = call i32 @trymove(i32 %876, i32 %877, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i64 0, i64 0), i32 %878, i32 %879, i32 %880)
  %882 = icmp ne i32 %881, 0
  br i1 %882, label %883, label %928

883:                                              ; preds = %875
  %884 = load i32, i32* %6, align 4
  %885 = load i32, i32* %8, align 4
  %886 = load i32, i32* %9, align 4
  %887 = call i32 @do_find_defense(i32 %884, i32* null, i32 %885, i32 %886)
  store i32 %887, i32* %23, align 4
  %888 = load i32, i32* %23, align 4
  %889 = icmp ne i32 %888, 5
  br i1 %889, label %890, label %926

890:                                              ; preds = %883
  %891 = load i32, i32* %6, align 4
  %892 = load i32, i32* %8, align 4
  %893 = load i32, i32* %9, align 4
  %894 = call i32 @do_attack(i32 %891, i32* null, i32 %892, i32 %893)
  %895 = icmp ne i32 %894, 0
  br i1 %895, label %896, label %926

896:                                              ; preds = %890
  call void @popgo()
  br label %897

897:                                              ; preds = %896
  %898 = load i32, i32* %23, align 4
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %900, label %914

900:                                              ; preds = %897
  %901 = load i32*, i32** %7, align 8
  %902 = icmp ne i32* %901, null
  br i1 %902, label %903, label %906

903:                                              ; preds = %900
  %904 = load i32, i32* %13, align 4
  %905 = load i32*, i32** %7, align 8
  store i32 %904, i32* %905, align 4
  br label %906

906:                                              ; preds = %903, %900
  %907 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %908 = icmp ne %struct.SGFTree_t* %907, null
  br i1 %908, label %909, label %913

909:                                              ; preds = %906
  %910 = load i8*, i8** %28, align 8
  %911 = load i32, i32* %29, align 4
  %912 = load i32, i32* %13, align 4
  call void @sgf_trace(i8* %910, i32 %911, i32 %912, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %913

913:                                              ; preds = %909, %906
  store i32 5, i32* %5, align 4
  br label %1023

914:                                              ; preds = %897
  %915 = load i32, i32* %23, align 4
  %916 = sub nsw i32 5, %915
  %917 = load i32, i32* %21, align 4
  %918 = icmp sgt i32 %916, %917
  br i1 %918, label %919, label %923

919:                                              ; preds = %914
  %920 = load i32, i32* %13, align 4
  store i32 %920, i32* %20, align 4
  %921 = load i32, i32* %23, align 4
  %922 = sub nsw i32 5, %921
  store i32 %922, i32* %21, align 4
  br label %923

923:                                              ; preds = %919, %914
  br label %924

924:                                              ; preds = %923
  br label %925

925:                                              ; preds = %924
  br label %927

926:                                              ; preds = %890, %883
  call void @popgo()
  br label %927

927:                                              ; preds = %926, %925
  br label %928

928:                                              ; preds = %927, %875
  br label %930

929:                                              ; preds = %868
  call void @popgo()
  br label %930

930:                                              ; preds = %929, %928
  br label %976

931:                                              ; preds = %864
  %932 = load i32, i32* %6, align 4
  %933 = load i32, i32* %8, align 4
  %934 = load i32, i32* %9, align 4
  %935 = call i32 @do_find_defense(i32 %932, i32* null, i32 %933, i32 %934)
  store i32 %935, i32* %23, align 4
  %936 = load i32, i32* %23, align 4
  %937 = icmp ne i32 %936, 5
  br i1 %937, label %938, label %974

938:                                              ; preds = %931
  %939 = load i32, i32* %6, align 4
  %940 = load i32, i32* %8, align 4
  %941 = load i32, i32* %9, align 4
  %942 = call i32 @do_attack(i32 %939, i32* null, i32 %940, i32 %941)
  %943 = icmp ne i32 %942, 0
  br i1 %943, label %944, label %974

944:                                              ; preds = %938
  call void @popgo()
  br label %945

945:                                              ; preds = %944
  %946 = load i32, i32* %23, align 4
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %948, label %962

948:                                              ; preds = %945
  %949 = load i32*, i32** %7, align 8
  %950 = icmp ne i32* %949, null
  br i1 %950, label %951, label %954

951:                                              ; preds = %948
  %952 = load i32, i32* %44, align 4
  %953 = load i32*, i32** %7, align 8
  store i32 %952, i32* %953, align 4
  br label %954

954:                                              ; preds = %951, %948
  %955 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %956 = icmp ne %struct.SGFTree_t* %955, null
  br i1 %956, label %957, label %961

957:                                              ; preds = %954
  %958 = load i8*, i8** %28, align 8
  %959 = load i32, i32* %29, align 4
  %960 = load i32, i32* %44, align 4
  call void @sgf_trace(i8* %958, i32 %959, i32 %960, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %961

961:                                              ; preds = %957, %954
  store i32 5, i32* %5, align 4
  br label %1023

962:                                              ; preds = %945
  %963 = load i32, i32* %23, align 4
  %964 = sub nsw i32 5, %963
  %965 = load i32, i32* %21, align 4
  %966 = icmp sgt i32 %964, %965
  br i1 %966, label %967, label %971

967:                                              ; preds = %962
  %968 = load i32, i32* %44, align 4
  store i32 %968, i32* %20, align 4
  %969 = load i32, i32* %23, align 4
  %970 = sub nsw i32 5, %969
  store i32 %970, i32* %21, align 4
  br label %971

971:                                              ; preds = %967, %962
  br label %972

972:                                              ; preds = %971
  br label %973

973:                                              ; preds = %972
  br label %975

974:                                              ; preds = %938, %931
  call void @popgo()
  br label %975

975:                                              ; preds = %974, %973
  br label %976

976:                                              ; preds = %975, %930
  br label %977

977:                                              ; preds = %976, %856
  br label %978

978:                                              ; preds = %977, %855
  %979 = load i32, i32* %24, align 4
  %980 = add nsw i32 %979, 1
  store i32 %980, i32* %24, align 4
  br label %842, !llvm.loop !123

981:                                              ; preds = %842
  br label %982

982:                                              ; preds = %981, %835
  br label %983

983:                                              ; preds = %982, %827, %819, %816
  %984 = load i32, i32* %21, align 4
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %986, label %995

986:                                              ; preds = %983
  br label %987

987:                                              ; preds = %986
  %988 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %989 = icmp ne %struct.SGFTree_t* %988, null
  br i1 %989, label %990, label %993

990:                                              ; preds = %987
  %991 = load i8*, i8** %28, align 8
  %992 = load i32, i32* %29, align 4
  call void @sgf_trace(i8* %991, i32 %992, i32 0, i32 0, i8* null)
  br label %993

993:                                              ; preds = %990, %987
  store i32 0, i32* %5, align 4
  br label %1023

994:                                              ; No predecessors!
  br label %995

995:                                              ; preds = %994, %983
  br label %996

996:                                              ; preds = %995
  %997 = load i32, i32* %21, align 4
  %998 = icmp ne i32 %997, 0
  br i1 %998, label %999, label %1014

999:                                              ; preds = %996
  %1000 = load i32*, i32** %7, align 8
  %1001 = icmp ne i32* %1000, null
  br i1 %1001, label %1002, label %1005

1002:                                             ; preds = %999
  %1003 = load i32, i32* %20, align 4
  %1004 = load i32*, i32** %7, align 8
  store i32 %1003, i32* %1004, align 4
  br label %1005

1005:                                             ; preds = %1002, %999
  %1006 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1007 = icmp ne %struct.SGFTree_t* %1006, null
  br i1 %1007, label %1008, label %1013

1008:                                             ; preds = %1005
  %1009 = load i8*, i8** %28, align 8
  %1010 = load i32, i32* %29, align 4
  %1011 = load i32, i32* %20, align 4
  %1012 = load i32, i32* %21, align 4
  call void @sgf_trace(i8* %1009, i32 %1010, i32 %1011, i32 %1012, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %1013

1013:                                             ; preds = %1008, %1005
  br label %1021

1014:                                             ; preds = %996
  %1015 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1016 = icmp ne %struct.SGFTree_t* %1015, null
  br i1 %1016, label %1017, label %1020

1017:                                             ; preds = %1014
  %1018 = load i8*, i8** %28, align 8
  %1019 = load i32, i32* %29, align 4
  call void @sgf_trace(i8* %1018, i32 %1019, i32 0, i32 0, i8* null)
  br label %1020

1020:                                             ; preds = %1017, %1014
  br label %1021

1021:                                             ; preds = %1020, %1013
  %1022 = load i32, i32* %21, align 4
  store i32 %1022, i32* %5, align 4
  br label %1023

1023:                                             ; preds = %117, %615, %676, %717, %759, %801, %913, %961, %993, %1021
  %1024 = load i32, i32* %5, align 4
  ret i32 %1024
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attack3(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [160 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.reading_moves, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca [2 x i32], align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca [24 x i32], align 16
  %43 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = sub nsw i32 3, %49
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.110, i64 0, i64 0), i8** %23, align 8
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %24, align 4
  %52 = load i32, i32* @reading_node_counter, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @reading_node_counter, align 4
  %54 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %68, label %61

61:                                               ; preds = %4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %69

68:                                               ; preds = %61, %4
  br label %70

69:                                               ; preds = %61
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2799, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i64 0, i64 0), i32 -1, i32 -1)
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* @stackp, align 4
  %72 = load i32, i32* @depth, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %77 = icmp ne %struct.SGFTree_t* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i8*, i8** %23, align 8
  %80 = load i32, i32* %24, align 4
  call void @sgf_trace(i8* %79, i32 %80, i32 0, i32 0, i8* null)
  br label %81

81:                                               ; preds = %78, %75
  store i32 0, i32* %5, align 4
  br label %937

82:                                               ; No predecessors!
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* %6, align 4
  %85 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  %86 = call i32 @chainlinks2(i32 %84, i32* %85, i32 1)
  store i32 %86, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %87

87:                                               ; preds = %152, %83
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %155

91:                                               ; preds = %87
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  call void @break_chain_moves(i32 %95, %struct.reading_moves* %20)
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @findlib(i32 %99, i32 1, i32* %25)
  br label %101

101:                                              ; preds = %91
  store i32 0, i32* %26, align 4
  br label %102

102:                                              ; preds = %123, %101
  %103 = load i32, i32* %26, align 4
  %104 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %126

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %109 = load i32, i32* %26, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [50 x i32], [50 x i32]* %108, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %25, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %107
  %116 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %117 = load i32, i32* %26, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [50 x i32], [50 x i32]* %116, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 0
  store i32 %121, i32* %119, align 4
  br label %126

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %26, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %26, align 4
  br label %102, !llvm.loop !124

126:                                              ; preds = %115, %102
  %127 = load i32, i32* %26, align 4
  %128 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %150

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %133, 50
  br i1 %134, label %135, label %150

135:                                              ; preds = %131
  %136 = load i32, i32* %25, align 4
  %137 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %138 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [50 x i32], [50 x i32]* %137, i64 0, i64 %140
  store i32 %136, i32* %141, align 4
  %142 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %143 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [50 x i32], [50 x i32]* %142, i64 0, i64 %145
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %135, %131, %126
  br label %151

151:                                              ; preds = %150
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %17, align 4
  br label %87, !llvm.loop !125

155:                                              ; preds = %87
  %156 = load i32, i32* %6, align 4
  call void @double_atari_chain2_moves(i32 %156, %struct.reading_moves* %20)
  %157 = load i32, i32* %6, align 4
  %158 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %159 = call i32 @findlib(i32 %157, i32 3, i32* %158)
  store i32 %159, i32* %15, align 4
  %160 = load i32, i32* %15, align 4
  %161 = icmp eq i32 %160, 3
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %170

163:                                              ; preds = %155
  %164 = load i32, i32* %6, align 4
  %165 = sdiv i32 %164, 20
  %166 = sub nsw i32 %165, 1
  %167 = load i32, i32* %6, align 4
  %168 = srem i32 %167, 20
  %169 = sub nsw i32 %168, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 2818, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.79, i64 0, i64 0), i32 %166, i32 %169)
  br label %170

170:                                              ; preds = %163, %162
  store i32 0, i32* %19, align 4
  br label %171

171:                                              ; preds = %339, %170
  %172 = load i32, i32* %19, align 4
  %173 = icmp slt i32 %172, 3
  br i1 %173, label %174, label %342

174:                                              ; preds = %171
  %175 = load i32, i32* %19, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %27, align 4
  %179 = load i32, i32* @stackp, align 4
  %180 = load i32, i32* @backfill_depth, align 4
  %181 = icmp sle i32 %179, %180
  br i1 %181, label %227, label %182

182:                                              ; preds = %174
  %183 = load i32, i32* @stackp, align 4
  %184 = load i32, i32* @depth, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %186, label %222

186:                                              ; preds = %182
  %187 = load i32, i32* %27, align 4
  %188 = add nsw i32 %187, 20
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %189
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %192, %193
  br i1 %194, label %195, label %222

195:                                              ; preds = %186
  %196 = load i32, i32* %27, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %204, label %222

204:                                              ; preds = %195
  %205 = load i32, i32* %27, align 4
  %206 = sub nsw i32 %205, 20
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %222

213:                                              ; preds = %204
  %214 = load i32, i32* %27, align 4
  %215 = add nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %227, label %222

222:                                              ; preds = %213, %204, %195, %186, %182
  %223 = load i32, i32* %27, align 4
  %224 = load i32, i32* %11, align 4
  %225 = call i32 @is_self_atari(i32 %223, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %279, label %227

227:                                              ; preds = %222, %213, %174
  br label %228

228:                                              ; preds = %227
  store i32 0, i32* %28, align 4
  br label %229

229:                                              ; preds = %250, %228
  %230 = load i32, i32* %28, align 4
  %231 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = icmp slt i32 %230, %232
  br i1 %233, label %234, label %253

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %236 = load i32, i32* %28, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [50 x i32], [50 x i32]* %235, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %27, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %249

242:                                              ; preds = %234
  %243 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %244 = load i32, i32* %28, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [50 x i32], [50 x i32]* %243, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 0
  store i32 %248, i32* %246, align 4
  br label %253

249:                                              ; preds = %234
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %28, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %28, align 4
  br label %229, !llvm.loop !126

253:                                              ; preds = %242, %229
  %254 = load i32, i32* %28, align 4
  %255 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %254, %256
  br i1 %257, label %258, label %277

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = icmp slt i32 %260, 50
  br i1 %261, label %262, label %277

262:                                              ; preds = %258
  %263 = load i32, i32* %27, align 4
  %264 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %265 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [50 x i32], [50 x i32]* %264, i64 0, i64 %267
  store i32 %263, i32* %268, align 4
  %269 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %270 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [50 x i32], [50 x i32]* %269, i64 0, i64 %272
  store i32 0, i32* %273, align 4
  %274 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  br label %277

277:                                              ; preds = %262, %258, %253
  br label %278

278:                                              ; preds = %277
  br label %279

279:                                              ; preds = %278, %222
  %280 = load i32, i32* %6, align 4
  %281 = load i32, i32* %27, align 4
  %282 = call i32 @edge_closing_backfill(i32 %280, i32 %281, i32* %14)
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %336

284:                                              ; preds = %279
  br label %285

285:                                              ; preds = %284
  store i32 0, i32* %29, align 4
  br label %286

286:                                              ; preds = %307, %285
  %287 = load i32, i32* %29, align 4
  %288 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = icmp slt i32 %287, %289
  br i1 %290, label %291, label %310

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %293 = load i32, i32* %29, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [50 x i32], [50 x i32]* %292, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %14, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %291
  %300 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %301 = load i32, i32* %29, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [50 x i32], [50 x i32]* %300, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 0
  store i32 %305, i32* %303, align 4
  br label %310

306:                                              ; preds = %291
  br label %307

307:                                              ; preds = %306
  %308 = load i32, i32* %29, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %29, align 4
  br label %286, !llvm.loop !127

310:                                              ; preds = %299, %286
  %311 = load i32, i32* %29, align 4
  %312 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = icmp eq i32 %311, %313
  br i1 %314, label %315, label %334

315:                                              ; preds = %310
  %316 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = icmp slt i32 %317, 50
  br i1 %318, label %319, label %334

319:                                              ; preds = %315
  %320 = load i32, i32* %14, align 4
  %321 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %322 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [50 x i32], [50 x i32]* %321, i64 0, i64 %324
  store i32 %320, i32* %325, align 4
  %326 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %327 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [50 x i32], [50 x i32]* %326, i64 0, i64 %329
  store i32 0, i32* %330, align 4
  %331 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %331, align 4
  br label %334

334:                                              ; preds = %319, %315, %310
  br label %335

335:                                              ; preds = %334
  br label %336

336:                                              ; preds = %335, %279
  %337 = load i32, i32* %6, align 4
  %338 = load i32, i32* %27, align 4
  call void @edge_block_moves(i32 %337, i32 %338, %struct.reading_moves* %20)
  br label %339

339:                                              ; preds = %336
  %340 = load i32, i32* %19, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %19, align 4
  br label %171, !llvm.loop !128

342:                                              ; preds = %171
  %343 = load i32, i32* %6, align 4
  %344 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %345 = load i32, i32* %15, align 4
  %346 = load i32, i32* %11, align 4
  call void @propose_edge_moves(i32 %343, i32* %344, i32 %345, %struct.reading_moves* %20, i32 %346)
  %347 = load i32, i32* %6, align 4
  %348 = load i32, i32* %11, align 4
  %349 = load i8*, i8** %23, align 8
  call void @order_moves(i32 %347, %struct.reading_moves* %20, i32 %348, i8* %349, i32 0)
  store i32 0, i32* %19, align 4
  br label %350

350:                                              ; preds = %450, %342
  %351 = load i32, i32* %19, align 4
  %352 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = icmp slt i32 %351, %353
  br i1 %354, label %355, label %453

355:                                              ; preds = %350
  %356 = load i32, i32* @stackp, align 4
  %357 = load i32, i32* @branch_depth, align 4
  %358 = icmp sge i32 %356, %357
  br i1 %358, label %359, label %363

359:                                              ; preds = %355
  %360 = load i32, i32* %19, align 4
  %361 = icmp sgt i32 %360, 0
  br i1 %361, label %362, label %363

362:                                              ; preds = %359
  br label %453

363:                                              ; preds = %359, %355
  %364 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %365 = load i32, i32* %19, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds [50 x i32], [50 x i32]* %364, i64 0, i64 %366
  %368 = load i32, i32* %367, align 4
  store i32 %368, i32* %14, align 4
  %369 = load i32, i32* %14, align 4
  %370 = load i32, i32* %11, align 4
  %371 = load i32, i32* %6, align 4
  %372 = load i32, i32* %8, align 4
  %373 = load i32, i32* %9, align 4
  %374 = load i32, i32* @stackp, align 4
  %375 = load i32, i32* @ko_depth, align 4
  %376 = icmp sle i32 %374, %375
  br i1 %376, label %377, label %380

377:                                              ; preds = %363
  %378 = load i32, i32* %22, align 4
  %379 = icmp eq i32 %378, 0
  br label %380

380:                                              ; preds = %377, %363
  %381 = phi i1 [ false, %363 ], [ %379, %377 ]
  %382 = zext i1 %381 to i32
  %383 = call i32 @komaster_trymove(i32 %369, i32 %370, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i64 0, i64 0), i32 %371, i32 %372, i32 %373, i32* %30, i32* %31, i32* %32, i32 %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %449

385:                                              ; preds = %380
  %386 = load i32, i32* %32, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %433, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %6, align 4
  %390 = load i32, i32* %30, align 4
  %391 = load i32, i32* %31, align 4
  %392 = call i32 @do_find_defense(i32 %389, i32* null, i32 %390, i32 %391)
  store i32 %392, i32* %18, align 4
  %393 = load i32, i32* %18, align 4
  %394 = icmp ne i32 %393, 5
  br i1 %394, label %395, label %431

395:                                              ; preds = %388
  %396 = load i32, i32* %6, align 4
  %397 = load i32, i32* %30, align 4
  %398 = load i32, i32* %31, align 4
  %399 = call i32 @do_attack(i32 %396, i32* null, i32 %397, i32 %398)
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %431

401:                                              ; preds = %395
  call void @popgo()
  br label %402

402:                                              ; preds = %401
  %403 = load i32, i32* %18, align 4
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %419

405:                                              ; preds = %402
  %406 = load i32*, i32** %7, align 8
  %407 = icmp ne i32* %406, null
  br i1 %407, label %408, label %411

408:                                              ; preds = %405
  %409 = load i32, i32* %14, align 4
  %410 = load i32*, i32** %7, align 8
  store i32 %409, i32* %410, align 4
  br label %411

411:                                              ; preds = %408, %405
  %412 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %413 = icmp ne %struct.SGFTree_t* %412, null
  br i1 %413, label %414, label %418

414:                                              ; preds = %411
  %415 = load i8*, i8** %23, align 8
  %416 = load i32, i32* %24, align 4
  %417 = load i32, i32* %14, align 4
  call void @sgf_trace(i8* %415, i32 %416, i32 %417, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %418

418:                                              ; preds = %414, %411
  store i32 5, i32* %5, align 4
  br label %937

419:                                              ; preds = %402
  %420 = load i32, i32* %18, align 4
  %421 = sub nsw i32 5, %420
  %422 = load i32, i32* %22, align 4
  %423 = icmp sgt i32 %421, %422
  br i1 %423, label %424, label %428

424:                                              ; preds = %419
  %425 = load i32, i32* %14, align 4
  store i32 %425, i32* %21, align 4
  %426 = load i32, i32* %18, align 4
  %427 = sub nsw i32 5, %426
  store i32 %427, i32* %22, align 4
  br label %428

428:                                              ; preds = %424, %419
  br label %429

429:                                              ; preds = %428
  br label %430

430:                                              ; preds = %429
  br label %432

431:                                              ; preds = %395, %388
  call void @popgo()
  br label %432

432:                                              ; preds = %431, %430
  br label %448

433:                                              ; preds = %385
  %434 = load i32, i32* %6, align 4
  %435 = load i32, i32* %30, align 4
  %436 = load i32, i32* %31, align 4
  %437 = call i32 @do_find_defense(i32 %434, i32* null, i32 %435, i32 %436)
  %438 = icmp ne i32 %437, 5
  br i1 %438, label %439, label %447

439:                                              ; preds = %433
  %440 = load i32, i32* %6, align 4
  %441 = load i32, i32* %30, align 4
  %442 = load i32, i32* %31, align 4
  %443 = call i32 @do_attack(i32 %440, i32* null, i32 %441, i32 %442)
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %447

445:                                              ; preds = %439
  %446 = load i32, i32* %14, align 4
  store i32 %446, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %447

447:                                              ; preds = %445, %439, %433
  call void @popgo()
  br label %448

448:                                              ; preds = %447, %432
  br label %449

449:                                              ; preds = %448, %380
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %19, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %19, align 4
  br label %350, !llvm.loop !129

453:                                              ; preds = %362, %350
  %454 = load i32, i32* @stackp, align 4
  %455 = load i32, i32* @backfill_depth, align 4
  %456 = icmp sle i32 %454, %455
  br i1 %456, label %457, label %494

457:                                              ; preds = %453
  %458 = load i32, i32* %6, align 4
  %459 = load i32, i32* %8, align 4
  %460 = load i32, i32* %9, align 4
  %461 = call i32 @find_cap(i32 %458, i32* %14, i32 %459, i32 %460)
  store i32 %461, i32* %33, align 4
  br label %462

462:                                              ; preds = %457
  %463 = load i32, i32* %33, align 4
  %464 = sub nsw i32 5, %463
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %480

466:                                              ; preds = %462
  %467 = load i32*, i32** %7, align 8
  %468 = icmp ne i32* %467, null
  br i1 %468, label %469, label %472

469:                                              ; preds = %466
  %470 = load i32, i32* %14, align 4
  %471 = load i32*, i32** %7, align 8
  store i32 %470, i32* %471, align 4
  br label %472

472:                                              ; preds = %469, %466
  %473 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %474 = icmp ne %struct.SGFTree_t* %473, null
  br i1 %474, label %475, label %479

475:                                              ; preds = %472
  %476 = load i8*, i8** %23, align 8
  %477 = load i32, i32* %24, align 4
  %478 = load i32, i32* %14, align 4
  call void @sgf_trace(i8* %476, i32 %477, i32 %478, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i64 0, i64 0))
  br label %479

479:                                              ; preds = %475, %472
  store i32 5, i32* %5, align 4
  br label %937

480:                                              ; preds = %462
  %481 = load i32, i32* %33, align 4
  %482 = sub nsw i32 5, %481
  %483 = sub nsw i32 5, %482
  %484 = load i32, i32* %22, align 4
  %485 = icmp sgt i32 %483, %484
  br i1 %485, label %486, label %491

486:                                              ; preds = %480
  %487 = load i32, i32* %14, align 4
  store i32 %487, i32* %21, align 4
  %488 = load i32, i32* %33, align 4
  %489 = sub nsw i32 5, %488
  %490 = sub nsw i32 5, %489
  store i32 %490, i32* %22, align 4
  br label %491

491:                                              ; preds = %486, %480
  br label %492

492:                                              ; preds = %491
  br label %493

493:                                              ; preds = %492
  br label %494

494:                                              ; preds = %493, %453
  %495 = load i32, i32* @stackp, align 4
  %496 = load i32, i32* @fourlib_depth, align 4
  %497 = icmp sle i32 %495, %496
  br i1 %497, label %498, label %535

498:                                              ; preds = %494
  %499 = load i32, i32* %6, align 4
  %500 = load i32, i32* %8, align 4
  %501 = load i32, i32* %9, align 4
  %502 = call i32 @draw_back(i32 %499, i32* %14, i32 %500, i32 %501)
  store i32 %502, i32* %34, align 4
  br label %503

503:                                              ; preds = %498
  %504 = load i32, i32* %34, align 4
  %505 = sub nsw i32 5, %504
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %507, label %521

507:                                              ; preds = %503
  %508 = load i32*, i32** %7, align 8
  %509 = icmp ne i32* %508, null
  br i1 %509, label %510, label %513

510:                                              ; preds = %507
  %511 = load i32, i32* %14, align 4
  %512 = load i32*, i32** %7, align 8
  store i32 %511, i32* %512, align 4
  br label %513

513:                                              ; preds = %510, %507
  %514 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %515 = icmp ne %struct.SGFTree_t* %514, null
  br i1 %515, label %516, label %520

516:                                              ; preds = %513
  %517 = load i8*, i8** %23, align 8
  %518 = load i32, i32* %24, align 4
  %519 = load i32, i32* %14, align 4
  call void @sgf_trace(i8* %517, i32 %518, i32 %519, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i64 0, i64 0))
  br label %520

520:                                              ; preds = %516, %513
  store i32 5, i32* %5, align 4
  br label %937

521:                                              ; preds = %503
  %522 = load i32, i32* %34, align 4
  %523 = sub nsw i32 5, %522
  %524 = sub nsw i32 5, %523
  %525 = load i32, i32* %22, align 4
  %526 = icmp sgt i32 %524, %525
  br i1 %526, label %527, label %532

527:                                              ; preds = %521
  %528 = load i32, i32* %14, align 4
  store i32 %528, i32* %21, align 4
  %529 = load i32, i32* %34, align 4
  %530 = sub nsw i32 5, %529
  %531 = sub nsw i32 5, %530
  store i32 %531, i32* %22, align 4
  br label %532

532:                                              ; preds = %527, %521
  br label %533

533:                                              ; preds = %532
  br label %534

534:                                              ; preds = %533
  br label %535

535:                                              ; preds = %534, %494
  %536 = load i32, i32* @stackp, align 4
  %537 = load i32, i32* @backfill2_depth, align 4
  %538 = icmp sle i32 %536, %537
  br i1 %538, label %539, label %755

539:                                              ; preds = %535
  %540 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %541 = load i32, i32* %540, align 4
  store i32 %541, i32* %35, align 4
  %542 = load i32, i32* %6, align 4
  %543 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  %544 = call i32 @chainlinks2(i32 %542, i32* %543, i32 2)
  store i32 %544, i32* %12, align 4
  store i32 0, i32* %17, align 4
  br label %545

545:                                              ; preds = %642, %539
  %546 = load i32, i32* %17, align 4
  %547 = load i32, i32* %12, align 4
  %548 = icmp slt i32 %546, %547
  br i1 %548, label %549, label %645

549:                                              ; preds = %545
  %550 = load i32, i32* %17, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %551
  %553 = load i32, i32* %552, align 4
  %554 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 0
  %555 = call i32 @findlib(i32 %553, i32 2, i32* %554)
  %556 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 0
  %557 = load i32, i32* %556, align 4
  %558 = load i32, i32* %11, align 4
  %559 = call i32 @approxlib(i32 %557, i32 %558, i32 4, i32* null)
  %560 = icmp sgt i32 %559, 3
  br i1 %560, label %561, label %568

561:                                              ; preds = %549
  %562 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 1
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* %11, align 4
  %565 = call i32 @approxlib(i32 %563, i32 %564, i32 4, i32* null)
  %566 = icmp sgt i32 %565, 3
  br i1 %566, label %567, label %568

567:                                              ; preds = %561
  br label %642

568:                                              ; preds = %561, %549
  %569 = load i32, i32* %17, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %570
  %572 = load i32, i32* %571, align 4
  call void @break_chain_moves(i32 %572, %struct.reading_moves* %20)
  %573 = load i32, i32* %17, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %574
  %576 = load i32, i32* %575, align 4
  call void @break_chain2_moves(i32 %576, %struct.reading_moves* %20, i32 1)
  store i32 0, i32* %19, align 4
  br label %577

577:                                              ; preds = %638, %568
  %578 = load i32, i32* %19, align 4
  %579 = icmp slt i32 %578, 2
  br i1 %579, label %580, label %641

580:                                              ; preds = %577
  br label %581

581:                                              ; preds = %580
  store i32 0, i32* %37, align 4
  br label %582

582:                                              ; preds = %606, %581
  %583 = load i32, i32* %37, align 4
  %584 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %585 = load i32, i32* %584, align 4
  %586 = icmp slt i32 %583, %585
  br i1 %586, label %587, label %609

587:                                              ; preds = %582
  %588 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %589 = load i32, i32* %37, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds [50 x i32], [50 x i32]* %588, i64 0, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = load i32, i32* %19, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 %594
  %596 = load i32, i32* %595, align 4
  %597 = icmp eq i32 %592, %596
  br i1 %597, label %598, label %605

598:                                              ; preds = %587
  %599 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %600 = load i32, i32* %37, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds [50 x i32], [50 x i32]* %599, i64 0, i64 %601
  %603 = load i32, i32* %602, align 4
  %604 = add nsw i32 %603, 0
  store i32 %604, i32* %602, align 4
  br label %609

605:                                              ; preds = %587
  br label %606

606:                                              ; preds = %605
  %607 = load i32, i32* %37, align 4
  %608 = add nsw i32 %607, 1
  store i32 %608, i32* %37, align 4
  br label %582, !llvm.loop !130

609:                                              ; preds = %598, %582
  %610 = load i32, i32* %37, align 4
  %611 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %612 = load i32, i32* %611, align 4
  %613 = icmp eq i32 %610, %612
  br i1 %613, label %614, label %636

614:                                              ; preds = %609
  %615 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %616 = load i32, i32* %615, align 4
  %617 = icmp slt i32 %616, 50
  br i1 %617, label %618, label %636

618:                                              ; preds = %614
  %619 = load i32, i32* %19, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %624 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %625 = load i32, i32* %624, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [50 x i32], [50 x i32]* %623, i64 0, i64 %626
  store i32 %622, i32* %627, align 4
  %628 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %629 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %630 = load i32, i32* %629, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds [50 x i32], [50 x i32]* %628, i64 0, i64 %631
  store i32 0, i32* %632, align 4
  %633 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %634 = load i32, i32* %633, align 4
  %635 = add nsw i32 %634, 1
  store i32 %635, i32* %633, align 4
  br label %636

636:                                              ; preds = %618, %614, %609
  br label %637

637:                                              ; preds = %636
  br label %638

638:                                              ; preds = %637
  %639 = load i32, i32* %19, align 4
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %19, align 4
  br label %577, !llvm.loop !131

641:                                              ; preds = %577
  br label %642

642:                                              ; preds = %641, %567
  %643 = load i32, i32* %17, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %17, align 4
  br label %545, !llvm.loop !132

645:                                              ; preds = %545
  %646 = load i32, i32* %6, align 4
  %647 = load i32, i32* %11, align 4
  %648 = load i8*, i8** %23, align 8
  %649 = load i32, i32* %35, align 4
  call void @order_moves(i32 %646, %struct.reading_moves* %20, i32 %647, i8* %648, i32 %649)
  %650 = load i32, i32* %35, align 4
  store i32 %650, i32* %19, align 4
  br label %651

651:                                              ; preds = %751, %645
  %652 = load i32, i32* %19, align 4
  %653 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %654 = load i32, i32* %653, align 4
  %655 = icmp slt i32 %652, %654
  br i1 %655, label %656, label %754

656:                                              ; preds = %651
  %657 = load i32, i32* @stackp, align 4
  %658 = load i32, i32* @branch_depth, align 4
  %659 = icmp sge i32 %657, %658
  br i1 %659, label %660, label %664

660:                                              ; preds = %656
  %661 = load i32, i32* %19, align 4
  %662 = icmp sgt i32 %661, 0
  br i1 %662, label %663, label %664

663:                                              ; preds = %660
  br label %754

664:                                              ; preds = %660, %656
  %665 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %666 = load i32, i32* %19, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [50 x i32], [50 x i32]* %665, i64 0, i64 %667
  %669 = load i32, i32* %668, align 4
  store i32 %669, i32* %14, align 4
  %670 = load i32, i32* %14, align 4
  %671 = load i32, i32* %11, align 4
  %672 = load i32, i32* %6, align 4
  %673 = load i32, i32* %8, align 4
  %674 = load i32, i32* %9, align 4
  %675 = load i32, i32* @stackp, align 4
  %676 = load i32, i32* @ko_depth, align 4
  %677 = icmp sle i32 %675, %676
  br i1 %677, label %678, label %681

678:                                              ; preds = %664
  %679 = load i32, i32* %22, align 4
  %680 = icmp eq i32 %679, 0
  br label %681

681:                                              ; preds = %678, %664
  %682 = phi i1 [ false, %664 ], [ %680, %678 ]
  %683 = zext i1 %682 to i32
  %684 = call i32 @komaster_trymove(i32 %670, i32 %671, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i64 0, i64 0), i32 %672, i32 %673, i32 %674, i32* %38, i32* %39, i32* %40, i32 %683)
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %686, label %750

686:                                              ; preds = %681
  %687 = load i32, i32* %40, align 4
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %734, label %689

689:                                              ; preds = %686
  %690 = load i32, i32* %6, align 4
  %691 = load i32, i32* %38, align 4
  %692 = load i32, i32* %39, align 4
  %693 = call i32 @do_find_defense(i32 %690, i32* null, i32 %691, i32 %692)
  store i32 %693, i32* %18, align 4
  %694 = load i32, i32* %18, align 4
  %695 = icmp ne i32 %694, 5
  br i1 %695, label %696, label %732

696:                                              ; preds = %689
  %697 = load i32, i32* %6, align 4
  %698 = load i32, i32* %38, align 4
  %699 = load i32, i32* %39, align 4
  %700 = call i32 @do_attack(i32 %697, i32* null, i32 %698, i32 %699)
  %701 = icmp ne i32 %700, 0
  br i1 %701, label %702, label %732

702:                                              ; preds = %696
  call void @popgo()
  br label %703

703:                                              ; preds = %702
  %704 = load i32, i32* %18, align 4
  %705 = icmp eq i32 %704, 0
  br i1 %705, label %706, label %720

706:                                              ; preds = %703
  %707 = load i32*, i32** %7, align 8
  %708 = icmp ne i32* %707, null
  br i1 %708, label %709, label %712

709:                                              ; preds = %706
  %710 = load i32, i32* %14, align 4
  %711 = load i32*, i32** %7, align 8
  store i32 %710, i32* %711, align 4
  br label %712

712:                                              ; preds = %709, %706
  %713 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %714 = icmp ne %struct.SGFTree_t* %713, null
  br i1 %714, label %715, label %719

715:                                              ; preds = %712
  %716 = load i8*, i8** %23, align 8
  %717 = load i32, i32* %24, align 4
  %718 = load i32, i32* %14, align 4
  call void @sgf_trace(i8* %716, i32 %717, i32 %718, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %719

719:                                              ; preds = %715, %712
  store i32 5, i32* %5, align 4
  br label %937

720:                                              ; preds = %703
  %721 = load i32, i32* %18, align 4
  %722 = sub nsw i32 5, %721
  %723 = load i32, i32* %22, align 4
  %724 = icmp sgt i32 %722, %723
  br i1 %724, label %725, label %729

725:                                              ; preds = %720
  %726 = load i32, i32* %14, align 4
  store i32 %726, i32* %21, align 4
  %727 = load i32, i32* %18, align 4
  %728 = sub nsw i32 5, %727
  store i32 %728, i32* %22, align 4
  br label %729

729:                                              ; preds = %725, %720
  br label %730

730:                                              ; preds = %729
  br label %731

731:                                              ; preds = %730
  br label %733

732:                                              ; preds = %696, %689
  call void @popgo()
  br label %733

733:                                              ; preds = %732, %731
  br label %749

734:                                              ; preds = %686
  %735 = load i32, i32* %6, align 4
  %736 = load i32, i32* %38, align 4
  %737 = load i32, i32* %39, align 4
  %738 = call i32 @do_find_defense(i32 %735, i32* null, i32 %736, i32 %737)
  %739 = icmp ne i32 %738, 5
  br i1 %739, label %740, label %748

740:                                              ; preds = %734
  %741 = load i32, i32* %6, align 4
  %742 = load i32, i32* %38, align 4
  %743 = load i32, i32* %39, align 4
  %744 = call i32 @do_attack(i32 %741, i32* null, i32 %742, i32 %743)
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %748

746:                                              ; preds = %740
  %747 = load i32, i32* %14, align 4
  store i32 %747, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %748

748:                                              ; preds = %746, %740, %734
  call void @popgo()
  br label %749

749:                                              ; preds = %748, %733
  br label %750

750:                                              ; preds = %749, %681
  br label %751

751:                                              ; preds = %750
  %752 = load i32, i32* %19, align 4
  %753 = add nsw i32 %752, 1
  store i32 %753, i32* %19, align 4
  br label %651, !llvm.loop !133

754:                                              ; preds = %663, %651
  br label %755

755:                                              ; preds = %754, %535
  %756 = load i32, i32* @level, align 4
  %757 = icmp sge i32 %756, 10
  br i1 %757, label %758, label %909

758:                                              ; preds = %755
  %759 = load i32, i32* @stackp, align 4
  %760 = load i32, i32* @backfill2_depth, align 4
  %761 = icmp sle i32 %759, %760
  br i1 %761, label %762, label %909

762:                                              ; preds = %758
  %763 = load i32, i32* %6, align 4
  %764 = getelementptr inbounds [24 x i32], [24 x i32]* %42, i64 0, i64 0
  call void @find_superstring_liberties(i32 %763, i32* %41, i32* %764, i32 3)
  %765 = load i32, i32* %41, align 4
  %766 = icmp sle i32 %765, 5
  br i1 %766, label %767, label %908

767:                                              ; preds = %762
  store i32 0, i32* %19, align 4
  br label %768

768:                                              ; preds = %904, %767
  %769 = load i32, i32* %19, align 4
  %770 = load i32, i32* %41, align 4
  %771 = icmp slt i32 %769, %770
  br i1 %771, label %772, label %907

772:                                              ; preds = %768
  %773 = load i32, i32* %19, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds [24 x i32], [24 x i32]* %42, i64 0, i64 %774
  %776 = load i32, i32* %775, align 4
  store i32 %776, i32* %43, align 4
  %777 = load i32, i32* %43, align 4
  %778 = load i32, i32* %6, align 4
  %779 = call i32 @liberty_of_string(i32 %777, i32 %778)
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %782

781:                                              ; preds = %772
  br label %904

782:                                              ; preds = %772
  %783 = load i32, i32* %43, align 4
  %784 = load i32, i32* %11, align 4
  %785 = load i32, i32* %6, align 4
  %786 = load i32, i32* %8, align 4
  %787 = load i32, i32* %9, align 4
  %788 = call i32 @trymove(i32 %783, i32 %784, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.115, i64 0, i64 0), i32 %785, i32 %786, i32 %787)
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %903

790:                                              ; preds = %782
  %791 = load i32, i32* %43, align 4
  %792 = call i32 @countlib(i32 %791)
  %793 = icmp eq i32 %792, 1
  br i1 %793, label %794, label %857

794:                                              ; preds = %790
  %795 = load i32, i32* %43, align 4
  %796 = call i32 @findlib(i32 %795, i32 1, i32* %14)
  %797 = load i32, i32* %14, align 4
  %798 = load i32, i32* %11, align 4
  %799 = call i32 @approxlib(i32 %797, i32 %798, i32 2, i32* null)
  %800 = icmp sgt i32 %799, 1
  br i1 %800, label %801, label %855

801:                                              ; preds = %794
  call void @popgo()
  %802 = load i32, i32* %14, align 4
  %803 = load i32, i32* %11, align 4
  %804 = load i32, i32* %6, align 4
  %805 = load i32, i32* %8, align 4
  %806 = load i32, i32* %9, align 4
  %807 = call i32 @trymove(i32 %802, i32 %803, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i64 0, i64 0), i32 %804, i32 %805, i32 %806)
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %809, label %854

809:                                              ; preds = %801
  %810 = load i32, i32* %6, align 4
  %811 = load i32, i32* %8, align 4
  %812 = load i32, i32* %9, align 4
  %813 = call i32 @do_find_defense(i32 %810, i32* null, i32 %811, i32 %812)
  store i32 %813, i32* %18, align 4
  %814 = load i32, i32* %18, align 4
  %815 = icmp ne i32 %814, 5
  br i1 %815, label %816, label %852

816:                                              ; preds = %809
  %817 = load i32, i32* %6, align 4
  %818 = load i32, i32* %8, align 4
  %819 = load i32, i32* %9, align 4
  %820 = call i32 @do_attack(i32 %817, i32* null, i32 %818, i32 %819)
  %821 = icmp ne i32 %820, 0
  br i1 %821, label %822, label %852

822:                                              ; preds = %816
  call void @popgo()
  br label %823

823:                                              ; preds = %822
  %824 = load i32, i32* %18, align 4
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %826, label %840

826:                                              ; preds = %823
  %827 = load i32*, i32** %7, align 8
  %828 = icmp ne i32* %827, null
  br i1 %828, label %829, label %832

829:                                              ; preds = %826
  %830 = load i32, i32* %14, align 4
  %831 = load i32*, i32** %7, align 8
  store i32 %830, i32* %831, align 4
  br label %832

832:                                              ; preds = %829, %826
  %833 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %834 = icmp ne %struct.SGFTree_t* %833, null
  br i1 %834, label %835, label %839

835:                                              ; preds = %832
  %836 = load i8*, i8** %23, align 8
  %837 = load i32, i32* %24, align 4
  %838 = load i32, i32* %14, align 4
  call void @sgf_trace(i8* %836, i32 %837, i32 %838, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %839

839:                                              ; preds = %835, %832
  store i32 5, i32* %5, align 4
  br label %937

840:                                              ; preds = %823
  %841 = load i32, i32* %18, align 4
  %842 = sub nsw i32 5, %841
  %843 = load i32, i32* %22, align 4
  %844 = icmp sgt i32 %842, %843
  br i1 %844, label %845, label %849

845:                                              ; preds = %840
  %846 = load i32, i32* %14, align 4
  store i32 %846, i32* %21, align 4
  %847 = load i32, i32* %18, align 4
  %848 = sub nsw i32 5, %847
  store i32 %848, i32* %22, align 4
  br label %849

849:                                              ; preds = %845, %840
  br label %850

850:                                              ; preds = %849
  br label %851

851:                                              ; preds = %850
  br label %853

852:                                              ; preds = %816, %809
  call void @popgo()
  br label %853

853:                                              ; preds = %852, %851
  br label %854

854:                                              ; preds = %853, %801
  br label %856

855:                                              ; preds = %794
  call void @popgo()
  br label %856

856:                                              ; preds = %855, %854
  br label %902

857:                                              ; preds = %790
  %858 = load i32, i32* %6, align 4
  %859 = load i32, i32* %8, align 4
  %860 = load i32, i32* %9, align 4
  %861 = call i32 @do_find_defense(i32 %858, i32* null, i32 %859, i32 %860)
  store i32 %861, i32* %18, align 4
  %862 = load i32, i32* %18, align 4
  %863 = icmp ne i32 %862, 5
  br i1 %863, label %864, label %900

864:                                              ; preds = %857
  %865 = load i32, i32* %6, align 4
  %866 = load i32, i32* %8, align 4
  %867 = load i32, i32* %9, align 4
  %868 = call i32 @do_attack(i32 %865, i32* null, i32 %866, i32 %867)
  %869 = icmp ne i32 %868, 0
  br i1 %869, label %870, label %900

870:                                              ; preds = %864
  call void @popgo()
  br label %871

871:                                              ; preds = %870
  %872 = load i32, i32* %18, align 4
  %873 = icmp eq i32 %872, 0
  br i1 %873, label %874, label %888

874:                                              ; preds = %871
  %875 = load i32*, i32** %7, align 8
  %876 = icmp ne i32* %875, null
  br i1 %876, label %877, label %880

877:                                              ; preds = %874
  %878 = load i32, i32* %43, align 4
  %879 = load i32*, i32** %7, align 8
  store i32 %878, i32* %879, align 4
  br label %880

880:                                              ; preds = %877, %874
  %881 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %882 = icmp ne %struct.SGFTree_t* %881, null
  br i1 %882, label %883, label %887

883:                                              ; preds = %880
  %884 = load i8*, i8** %23, align 8
  %885 = load i32, i32* %24, align 4
  %886 = load i32, i32* %43, align 4
  call void @sgf_trace(i8* %884, i32 %885, i32 %886, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %887

887:                                              ; preds = %883, %880
  store i32 5, i32* %5, align 4
  br label %937

888:                                              ; preds = %871
  %889 = load i32, i32* %18, align 4
  %890 = sub nsw i32 5, %889
  %891 = load i32, i32* %22, align 4
  %892 = icmp sgt i32 %890, %891
  br i1 %892, label %893, label %897

893:                                              ; preds = %888
  %894 = load i32, i32* %43, align 4
  store i32 %894, i32* %21, align 4
  %895 = load i32, i32* %18, align 4
  %896 = sub nsw i32 5, %895
  store i32 %896, i32* %22, align 4
  br label %897

897:                                              ; preds = %893, %888
  br label %898

898:                                              ; preds = %897
  br label %899

899:                                              ; preds = %898
  br label %901

900:                                              ; preds = %864, %857
  call void @popgo()
  br label %901

901:                                              ; preds = %900, %899
  br label %902

902:                                              ; preds = %901, %856
  br label %903

903:                                              ; preds = %902, %782
  br label %904

904:                                              ; preds = %903, %781
  %905 = load i32, i32* %19, align 4
  %906 = add nsw i32 %905, 1
  store i32 %906, i32* %19, align 4
  br label %768, !llvm.loop !134

907:                                              ; preds = %768
  br label %908

908:                                              ; preds = %907, %762
  br label %909

909:                                              ; preds = %908, %758, %755
  br label %910

910:                                              ; preds = %909
  %911 = load i32, i32* %22, align 4
  %912 = icmp ne i32 %911, 0
  br i1 %912, label %913, label %928

913:                                              ; preds = %910
  %914 = load i32*, i32** %7, align 8
  %915 = icmp ne i32* %914, null
  br i1 %915, label %916, label %919

916:                                              ; preds = %913
  %917 = load i32, i32* %21, align 4
  %918 = load i32*, i32** %7, align 8
  store i32 %917, i32* %918, align 4
  br label %919

919:                                              ; preds = %916, %913
  %920 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %921 = icmp ne %struct.SGFTree_t* %920, null
  br i1 %921, label %922, label %927

922:                                              ; preds = %919
  %923 = load i8*, i8** %23, align 8
  %924 = load i32, i32* %24, align 4
  %925 = load i32, i32* %21, align 4
  %926 = load i32, i32* %22, align 4
  call void @sgf_trace(i8* %923, i32 %924, i32 %925, i32 %926, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %927

927:                                              ; preds = %922, %919
  br label %935

928:                                              ; preds = %910
  %929 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %930 = icmp ne %struct.SGFTree_t* %929, null
  br i1 %930, label %931, label %934

931:                                              ; preds = %928
  %932 = load i8*, i8** %23, align 8
  %933 = load i32, i32* %24, align 4
  call void @sgf_trace(i8* %932, i32 %933, i32 0, i32 0, i8* null)
  br label %934

934:                                              ; preds = %931, %928
  br label %935

935:                                              ; preds = %934, %927
  %936 = load i32, i32* %22, align 4
  store i32 %936, i32* %5, align 4
  br label %937

937:                                              ; preds = %81, %418, %479, %520, %719, %839, %887, %935
  %938 = load i32, i32* %5, align 4
  ret i32 %938
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attack4(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
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
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca [160 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca %struct.reading_moves, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = sub nsw i32 3, %39
  store i32 %40, i32* %11, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i64 0, i64 0), i8** %23, align 8
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %24, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %55, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %4
  br label %57

56:                                               ; preds = %48
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 3020, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i64 0, i64 0), i32 -1, i32 -1)
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* @reading_node_counter, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @reading_node_counter, align 4
  %60 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* @stackp, align 4
  %62 = load i32, i32* @depth, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %66 = icmp ne %struct.SGFTree_t* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load i8*, i8** %23, align 8
  %69 = load i32, i32* %24, align 4
  call void @sgf_trace(i8* %68, i32 %69, i32 0, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.119, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  store i32 0, i32* %5, align 4
  br label %517

71:                                               ; preds = %57
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds [160 x i32], [160 x i32]* %18, i64 0, i64 0
  %74 = call i32 @chainlinks2(i32 %72, i32* %73, i32 1)
  store i32 %74, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %75

75:                                               ; preds = %140, %71
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %143

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [160 x i32], [160 x i32]* %18, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  call void @break_chain_moves(i32 %83, %struct.reading_moves* %20)
  %84 = load i32, i32* %13, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [160 x i32], [160 x i32]* %18, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @findlib(i32 %87, i32 1, i32* %25)
  br label %89

89:                                               ; preds = %79
  store i32 0, i32* %26, align 4
  br label %90

90:                                               ; preds = %111, %89
  %91 = load i32, i32* %26, align 4
  %92 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %97 = load i32, i32* %26, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [50 x i32], [50 x i32]* %96, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %25, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %95
  %104 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %105 = load i32, i32* %26, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [50 x i32], [50 x i32]* %104, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 0
  store i32 %109, i32* %107, align 4
  br label %114

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %26, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %26, align 4
  br label %90, !llvm.loop !135

114:                                              ; preds = %103, %90
  %115 = load i32, i32* %26, align 4
  %116 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %114
  %120 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 50
  br i1 %122, label %123, label %138

123:                                              ; preds = %119
  %124 = load i32, i32* %25, align 4
  %125 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %126 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [50 x i32], [50 x i32]* %125, i64 0, i64 %128
  store i32 %124, i32* %129, align 4
  %130 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %131 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [50 x i32], [50 x i32]* %130, i64 0, i64 %133
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %123, %119, %114
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %75, !llvm.loop !136

143:                                              ; preds = %75
  %144 = load i32, i32* %6, align 4
  call void @double_atari_chain2_moves(i32 %144, %struct.reading_moves* %20)
  store i32 0, i32* %14, align 4
  br label %145

145:                                              ; preds = %157, %143
  %146 = load i32, i32* %14, align 4
  %147 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %146, %148
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %152 = load i32, i32* %14, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [50 x i32], [50 x i32]* %151, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 5
  store i32 %156, i32* %154, align 4
  br label %157

157:                                              ; preds = %150
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %145, !llvm.loop !137

160:                                              ; preds = %145
  %161 = load i32, i32* %6, align 4
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %163 = call i32 @findlib(i32 %161, i32 4, i32* %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp eq i32 %164, 4
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  br label %174

167:                                              ; preds = %160
  %168 = load i32, i32* %6, align 4
  %169 = sdiv i32 %168, 20
  %170 = sub nsw i32 %169, 1
  %171 = load i32, i32* %6, align 4
  %172 = srem i32 %171, 20
  %173 = sub nsw i32 %172, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 3048, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i64 0, i64 0), i32 %170, i32 %173)
  br label %174

174:                                              ; preds = %167, %166
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %343, %174
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %176, 4
  br i1 %177, label %178, label %346

178:                                              ; preds = %175
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %27, align 4
  %183 = load i32, i32* @stackp, align 4
  %184 = load i32, i32* @backfill_depth, align 4
  %185 = icmp sle i32 %183, %184
  br i1 %185, label %231, label %186

186:                                              ; preds = %178
  %187 = load i32, i32* @stackp, align 4
  %188 = load i32, i32* @depth, align 4
  %189 = icmp sle i32 %187, %188
  br i1 %189, label %190, label %226

190:                                              ; preds = %186
  %191 = load i32, i32* %27, align 4
  %192 = add nsw i32 %191, 20
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %226

199:                                              ; preds = %190
  %200 = load i32, i32* %27, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = load i32, i32* %11, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %226

208:                                              ; preds = %199
  %209 = load i32, i32* %27, align 4
  %210 = sub nsw i32 %209, 20
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = load i32, i32* %11, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %226

217:                                              ; preds = %208
  %218 = load i32, i32* %27, align 4
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = load i32, i32* %11, align 4
  %225 = icmp ne i32 %223, %224
  br i1 %225, label %231, label %226

226:                                              ; preds = %217, %208, %199, %190, %186
  %227 = load i32, i32* %27, align 4
  %228 = load i32, i32* %11, align 4
  %229 = call i32 @is_self_atari(i32 %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %283, label %231

231:                                              ; preds = %226, %217, %178
  br label %232

232:                                              ; preds = %231
  store i32 0, i32* %28, align 4
  br label %233

233:                                              ; preds = %254, %232
  %234 = load i32, i32* %28, align 4
  %235 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %234, %236
  br i1 %237, label %238, label %257

238:                                              ; preds = %233
  %239 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %240 = load i32, i32* %28, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [50 x i32], [50 x i32]* %239, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* %27, align 4
  %245 = icmp eq i32 %243, %244
  br i1 %245, label %246, label %253

246:                                              ; preds = %238
  %247 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %248 = load i32, i32* %28, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [50 x i32], [50 x i32]* %247, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = add nsw i32 %251, 0
  store i32 %252, i32* %250, align 4
  br label %257

253:                                              ; preds = %238
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %28, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %28, align 4
  br label %233, !llvm.loop !138

257:                                              ; preds = %246, %233
  %258 = load i32, i32* %28, align 4
  %259 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %262, label %281

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = icmp slt i32 %264, 50
  br i1 %265, label %266, label %281

266:                                              ; preds = %262
  %267 = load i32, i32* %27, align 4
  %268 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %269 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [50 x i32], [50 x i32]* %268, i64 0, i64 %271
  store i32 %267, i32* %272, align 4
  %273 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %274 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [50 x i32], [50 x i32]* %273, i64 0, i64 %276
  store i32 0, i32* %277, align 4
  %278 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %266, %262, %257
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282, %226
  %284 = load i32, i32* %6, align 4
  %285 = load i32, i32* %27, align 4
  %286 = call i32 @edge_closing_backfill(i32 %284, i32 %285, i32* %12)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %340

288:                                              ; preds = %283
  br label %289

289:                                              ; preds = %288
  store i32 0, i32* %29, align 4
  br label %290

290:                                              ; preds = %311, %289
  %291 = load i32, i32* %29, align 4
  %292 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %314

295:                                              ; preds = %290
  %296 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %297 = load i32, i32* %29, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [50 x i32], [50 x i32]* %296, i64 0, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %12, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %295
  %304 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %305 = load i32, i32* %29, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [50 x i32], [50 x i32]* %304, i64 0, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 10
  store i32 %309, i32* %307, align 4
  br label %314

310:                                              ; preds = %295
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %29, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %29, align 4
  br label %290, !llvm.loop !139

314:                                              ; preds = %303, %290
  %315 = load i32, i32* %29, align 4
  %316 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %315, %317
  br i1 %318, label %319, label %338

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %321 = load i32, i32* %320, align 4
  %322 = icmp slt i32 %321, 50
  br i1 %322, label %323, label %338

323:                                              ; preds = %319
  %324 = load i32, i32* %12, align 4
  %325 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %326 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %327 = load i32, i32* %326, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [50 x i32], [50 x i32]* %325, i64 0, i64 %328
  store i32 %324, i32* %329, align 4
  %330 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 1
  %331 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [50 x i32], [50 x i32]* %330, i64 0, i64 %333
  store i32 10, i32* %334, align 4
  %335 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %335, align 4
  br label %338

338:                                              ; preds = %323, %319, %314
  br label %339

339:                                              ; preds = %338
  br label %340

340:                                              ; preds = %339, %283
  %341 = load i32, i32* %6, align 4
  %342 = load i32, i32* %27, align 4
  call void @edge_block_moves(i32 %341, i32 %342, %struct.reading_moves* %20)
  br label %343

343:                                              ; preds = %340
  %344 = load i32, i32* %14, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %14, align 4
  br label %175, !llvm.loop !140

346:                                              ; preds = %175
  %347 = load i32, i32* %6, align 4
  %348 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %349 = load i32, i32* %15, align 4
  %350 = load i32, i32* %11, align 4
  call void @propose_edge_moves(i32 %347, i32* %348, i32 %349, %struct.reading_moves* %20, i32 %350)
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* %11, align 4
  %353 = load i8*, i8** %23, align 8
  call void @order_moves(i32 %351, %struct.reading_moves* %20, i32 %352, i8* %353, i32 0)
  store i32 0, i32* %14, align 4
  br label %354

354:                                              ; preds = %445, %346
  %355 = load i32, i32* %14, align 4
  %356 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 2
  %357 = load i32, i32* %356, align 4
  %358 = icmp slt i32 %355, %357
  br i1 %358, label %359, label %448

359:                                              ; preds = %354
  %360 = load i32, i32* @stackp, align 4
  %361 = load i32, i32* @branch_depth, align 4
  %362 = icmp sge i32 %360, %361
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  %364 = load i32, i32* %14, align 4
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  br label %448

367:                                              ; preds = %363, %359
  %368 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %20, i32 0, i32 0
  %369 = load i32, i32* %14, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [50 x i32], [50 x i32]* %368, i64 0, i64 %370
  %372 = load i32, i32* %371, align 4
  store i32 %372, i32* %12, align 4
  %373 = load i32, i32* %12, align 4
  %374 = load i32, i32* %11, align 4
  %375 = load i32, i32* %6, align 4
  %376 = load i32, i32* %8, align 4
  %377 = load i32, i32* %9, align 4
  %378 = call i32 @komaster_trymove(i32 %373, i32 %374, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.120, i64 0, i64 0), i32 %375, i32 %376, i32 %377, i32* %30, i32* %31, i32* %32, i32 0)
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %444

380:                                              ; preds = %367
  %381 = load i32, i32* %32, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %428, label %383

383:                                              ; preds = %380
  %384 = load i32, i32* %6, align 4
  %385 = load i32, i32* %30, align 4
  %386 = load i32, i32* %31, align 4
  %387 = call i32 @do_find_defense(i32 %384, i32* null, i32 %385, i32 %386)
  store i32 %387, i32* %19, align 4
  %388 = load i32, i32* %19, align 4
  %389 = icmp ne i32 %388, 5
  br i1 %389, label %390, label %426

390:                                              ; preds = %383
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* %30, align 4
  %393 = load i32, i32* %31, align 4
  %394 = call i32 @do_attack(i32 %391, i32* null, i32 %392, i32 %393)
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %426

396:                                              ; preds = %390
  call void @popgo()
  br label %397

397:                                              ; preds = %396
  %398 = load i32, i32* %19, align 4
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %400, label %414

400:                                              ; preds = %397
  %401 = load i32*, i32** %7, align 8
  %402 = icmp ne i32* %401, null
  br i1 %402, label %403, label %406

403:                                              ; preds = %400
  %404 = load i32, i32* %12, align 4
  %405 = load i32*, i32** %7, align 8
  store i32 %404, i32* %405, align 4
  br label %406

406:                                              ; preds = %403, %400
  %407 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %408 = icmp ne %struct.SGFTree_t* %407, null
  br i1 %408, label %409, label %413

409:                                              ; preds = %406
  %410 = load i8*, i8** %23, align 8
  %411 = load i32, i32* %24, align 4
  %412 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %410, i32 %411, i32 %412, i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.98, i64 0, i64 0))
  br label %413

413:                                              ; preds = %409, %406
  store i32 5, i32* %5, align 4
  br label %517

414:                                              ; preds = %397
  %415 = load i32, i32* %19, align 4
  %416 = sub nsw i32 5, %415
  %417 = load i32, i32* %22, align 4
  %418 = icmp sgt i32 %416, %417
  br i1 %418, label %419, label %423

419:                                              ; preds = %414
  %420 = load i32, i32* %12, align 4
  store i32 %420, i32* %21, align 4
  %421 = load i32, i32* %19, align 4
  %422 = sub nsw i32 5, %421
  store i32 %422, i32* %22, align 4
  br label %423

423:                                              ; preds = %419, %414
  br label %424

424:                                              ; preds = %423
  br label %425

425:                                              ; preds = %424
  br label %427

426:                                              ; preds = %390, %383
  call void @popgo()
  br label %427

427:                                              ; preds = %426, %425
  br label %443

428:                                              ; preds = %380
  %429 = load i32, i32* %6, align 4
  %430 = load i32, i32* %30, align 4
  %431 = load i32, i32* %31, align 4
  %432 = call i32 @do_find_defense(i32 %429, i32* null, i32 %430, i32 %431)
  %433 = icmp ne i32 %432, 5
  br i1 %433, label %434, label %442

434:                                              ; preds = %428
  %435 = load i32, i32* %6, align 4
  %436 = load i32, i32* %30, align 4
  %437 = load i32, i32* %31, align 4
  %438 = call i32 @do_attack(i32 %435, i32* null, i32 %436, i32 %437)
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %434
  %441 = load i32, i32* %12, align 4
  store i32 %441, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %442

442:                                              ; preds = %440, %434, %428
  call void @popgo()
  br label %443

443:                                              ; preds = %442, %427
  br label %444

444:                                              ; preds = %443, %367
  br label %445

445:                                              ; preds = %444
  %446 = load i32, i32* %14, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %14, align 4
  br label %354, !llvm.loop !141

448:                                              ; preds = %366, %354
  %449 = load i32, i32* @stackp, align 4
  %450 = load i32, i32* @backfill_depth, align 4
  %451 = icmp sle i32 %449, %450
  br i1 %451, label %452, label %489

452:                                              ; preds = %448
  %453 = load i32, i32* %6, align 4
  %454 = load i32, i32* %8, align 4
  %455 = load i32, i32* %9, align 4
  %456 = call i32 @find_cap(i32 %453, i32* %12, i32 %454, i32 %455)
  store i32 %456, i32* %33, align 4
  br label %457

457:                                              ; preds = %452
  %458 = load i32, i32* %33, align 4
  %459 = sub nsw i32 5, %458
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %475

461:                                              ; preds = %457
  %462 = load i32*, i32** %7, align 8
  %463 = icmp ne i32* %462, null
  br i1 %463, label %464, label %467

464:                                              ; preds = %461
  %465 = load i32, i32* %12, align 4
  %466 = load i32*, i32** %7, align 8
  store i32 %465, i32* %466, align 4
  br label %467

467:                                              ; preds = %464, %461
  %468 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %469 = icmp ne %struct.SGFTree_t* %468, null
  br i1 %469, label %470, label %474

470:                                              ; preds = %467
  %471 = load i8*, i8** %23, align 8
  %472 = load i32, i32* %24, align 4
  %473 = load i32, i32* %12, align 4
  call void @sgf_trace(i8* %471, i32 %472, i32 %473, i32 5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i64 0, i64 0))
  br label %474

474:                                              ; preds = %470, %467
  store i32 5, i32* %5, align 4
  br label %517

475:                                              ; preds = %457
  %476 = load i32, i32* %33, align 4
  %477 = sub nsw i32 5, %476
  %478 = sub nsw i32 5, %477
  %479 = load i32, i32* %22, align 4
  %480 = icmp sgt i32 %478, %479
  br i1 %480, label %481, label %486

481:                                              ; preds = %475
  %482 = load i32, i32* %12, align 4
  store i32 %482, i32* %21, align 4
  %483 = load i32, i32* %33, align 4
  %484 = sub nsw i32 5, %483
  %485 = sub nsw i32 5, %484
  store i32 %485, i32* %22, align 4
  br label %486

486:                                              ; preds = %481, %475
  br label %487

487:                                              ; preds = %486
  br label %488

488:                                              ; preds = %487
  br label %489

489:                                              ; preds = %488, %448
  br label %490

490:                                              ; preds = %489
  %491 = load i32, i32* %22, align 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %508

493:                                              ; preds = %490
  %494 = load i32*, i32** %7, align 8
  %495 = icmp ne i32* %494, null
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = load i32, i32* %21, align 4
  %498 = load i32*, i32** %7, align 8
  store i32 %497, i32* %498, align 4
  br label %499

499:                                              ; preds = %496, %493
  %500 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %501 = icmp ne %struct.SGFTree_t* %500, null
  br i1 %501, label %502, label %507

502:                                              ; preds = %499
  %503 = load i8*, i8** %23, align 8
  %504 = load i32, i32* %24, align 4
  %505 = load i32, i32* %21, align 4
  %506 = load i32, i32* %22, align 4
  call void @sgf_trace(i8* %503, i32 %504, i32 %505, i32 %506, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %507

507:                                              ; preds = %502, %499
  br label %515

508:                                              ; preds = %490
  %509 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %510 = icmp ne %struct.SGFTree_t* %509, null
  br i1 %510, label %511, label %514

511:                                              ; preds = %508
  %512 = load i8*, i8** %23, align 8
  %513 = load i32, i32* %24, align 4
  call void @sgf_trace(i8* %512, i32 %513, i32 0, i32 0, i8* null)
  br label %514

514:                                              ; preds = %511, %508
  br label %515

515:                                              ; preds = %514, %507
  %516 = load i32, i32* %22, align 4
  store i32 %516, i32* %5, align 4
  br label %517

517:                                              ; preds = %70, %413, %474, %515
  %518 = load i32, i32* %5, align 4
  ret i32 %518
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edge_block_moves(i32 %0, i32 %1, %struct.reading_moves* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.reading_moves*, align 8
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
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.reading_moves* %2, %struct.reading_moves** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %216, %3
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %219

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %17, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %216

44:                                               ; preds = %30
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %17, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %44
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %17, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @same_string(i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54, %44
  br label %219

62:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %63

63:                                               ; preds = %212, %62
  %64 = load i32, i32* %10, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %215

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %67, 1
  %69 = srem i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %78

75:                                               ; preds = %66
  %76 = load i32, i32* %18, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %75, %66
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %18, align 4
  %81 = add nsw i32 %79, %80
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %84, %85
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %106, label %94

94:                                               ; preds = %78
  %95 = load i32, i32* %12, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @countlib(i32 %103)
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %94, %78
  br label %212

107:                                              ; preds = %102
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %18, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %111, %112
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %114, %115
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %18, align 4
  %119 = sub nsw i32 %117, %118
  store i32 %119, i32* %16, align 4
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp ne i32 %124, 3
  br i1 %125, label %127, label %126

126:                                              ; preds = %107
  br label %212

127:                                              ; preds = %107
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %211

134:                                              ; preds = %127
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %211

141:                                              ; preds = %134
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %143
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %211

149:                                              ; preds = %141
  br label %150

150:                                              ; preds = %149
  store i32 0, i32* %19, align 4
  br label %151

151:                                              ; preds = %175, %150
  %152 = load i32, i32* %19, align 4
  %153 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %154 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp slt i32 %152, %155
  br i1 %156, label %157, label %178

157:                                              ; preds = %151
  %158 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %159 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %158, i32 0, i32 0
  %160 = load i32, i32* %19, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [50 x i32], [50 x i32]* %159, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %157
  %167 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %168 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %167, i32 0, i32 1
  %169 = load i32, i32* %19, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [50 x i32], [50 x i32]* %168, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, 30
  store i32 %173, i32* %171, align 4
  br label %178

174:                                              ; preds = %157
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %19, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %19, align 4
  br label %151, !llvm.loop !142

178:                                              ; preds = %166, %151
  %179 = load i32, i32* %19, align 4
  %180 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %181 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %179, %182
  br i1 %183, label %184, label %209

184:                                              ; preds = %178
  %185 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %186 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp slt i32 %187, 50
  br i1 %188, label %189, label %209

189:                                              ; preds = %184
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %192 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %191, i32 0, i32 0
  %193 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %194 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [50 x i32], [50 x i32]* %192, i64 0, i64 %196
  store i32 %190, i32* %197, align 4
  %198 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %199 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %198, i32 0, i32 1
  %200 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %201 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [50 x i32], [50 x i32]* %199, i64 0, i64 %203
  store i32 30, i32* %204, align 4
  %205 = load %struct.reading_moves*, %struct.reading_moves** %6, align 8
  %206 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 4
  br label %209

209:                                              ; preds = %189, %184, %178
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210, %141, %134, %127
  br label %212

212:                                              ; preds = %211, %126, %106
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %63, !llvm.loop !143

215:                                              ; preds = %63
  br label %216

216:                                              ; preds = %215, %43
  %217 = load i32, i32* %9, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %9, align 4
  br label %27, !llvm.loop !144

219:                                              ; preds = %61, %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_cap2(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add nsw i32 %20, 20
  %22 = sub nsw i32 %21, 1
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %26, 20
  %28 = sub nsw i32 %27, 1
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = sub nsw i32 %32, 20
  %34 = add nsw i32 %33, 1
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = add nsw i32 %38, 20
  %40 = add nsw i32 %39, 1
  %41 = icmp ne i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  br label %119

43:                                               ; preds = %36, %30, %24, %6
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 20
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = srem i32 %47, 20
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sdiv i32 %50, 20
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %10, align 4
  %54 = srem i32 %53, 20
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = mul nsw i32 %56, 20
  %58 = add nsw i32 21, %57
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %43
  %67 = load i32, i32* %16, align 4
  %68 = mul nsw i32 %67, 20
  %69 = add nsw i32 21, %68
  %70 = load i32, i32* %15, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32*, i32** %11, align 8
  store i32 %71, i32* %72, align 4
  br label %93

73:                                               ; preds = %43
  %74 = load i32, i32* %14, align 4
  %75 = mul nsw i32 %74, 20
  %76 = add nsw i32 21, %75
  %77 = load i32, i32* %17, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 %85, 20
  %87 = add nsw i32 21, %86
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32*, i32** %11, align 8
  store i32 %89, i32* %90, align 4
  br label %92

91:                                               ; preds = %73
  store i32 0, i32* %7, align 4
  br label %119

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i32*, i32** %11, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = sub nsw i32 3, %100
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %13, align 4
  %105 = call i32 @trymove(i32 %95, i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i64 0, i64 0), i32 %102, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %93
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @do_find_defense(i32 %108, i32* null, i32 %109, i32 %110)
  store i32 %111, i32* %18, align 4
  call void @popgo()
  %112 = load i32, i32* %18, align 4
  switch i32 %112, label %117 [
    i32 0, label %113
    i32 5, label %114
    i32 1, label %115
    i32 4, label %116
  ]

113:                                              ; preds = %107
  store i32 5, i32* %7, align 4
  br label %119

114:                                              ; preds = %107
  store i32 0, i32* %7, align 4
  br label %119

115:                                              ; preds = %107
  store i32 1, i32* %7, align 4
  br label %119

116:                                              ; preds = %107
  store i32 4, i32* %7, align 4
  br label %119

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %93
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %118, %116, %115, %114, %113, %91, %42
  %120 = load i32, i32* %7, align 4
  ret i32 %120
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_attack2(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = sub nsw i32 3, %25
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %113, %5
  %28 = load i32, i32* %18, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %116

30:                                               ; preds = %27
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %18, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @is_suicide(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %112

39:                                               ; preds = %30
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %18, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %47 = call i32 @approxlib(i32 %44, i32 %45, i32 3, i32* %46)
  %48 = icmp eq i32 %47, 2
  br i1 %48, label %49, label %112

49:                                               ; preds = %39
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %18, align 4
  %54 = sub nsw i32 1, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %51, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %15, align 4
  br label %65

62:                                               ; preds = %49
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @is_self_atari(i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %111, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @trymove(i32 %71, i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.106, i64 0, i64 0), i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %111

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @do_find_defense(i32 %79, i32* null, i32 %80, i32 %81)
  store i32 %82, i32* %19, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %83, 5
  br i1 %84, label %85, label %110

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @do_attack(i32 %86, i32* null, i32 %87, i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %85
  %92 = load i32, i32* %19, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  call void @popgo()
  %95 = load i32, i32* %15, align 4
  %96 = load i32*, i32** %9, align 8
  store i32 %95, i32* %96, align 4
  store i32 5, i32* %6, align 4
  br label %124

97:                                               ; preds = %91
  %98 = load i32, i32* %19, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* %19, align 4
  %102 = sub nsw i32 5, %101
  %103 = load i32, i32* %17, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* %15, align 4
  store i32 %106, i32* %16, align 4
  %107 = load i32, i32* %19, align 4
  %108 = sub nsw i32 5, %107
  store i32 %108, i32* %17, align 4
  br label %109

109:                                              ; preds = %105, %100, %97
  br label %110

110:                                              ; preds = %109, %85, %78
  call void @popgo()
  br label %111

111:                                              ; preds = %110, %70, %65
  br label %112

112:                                              ; preds = %111, %39, %30
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  br label %27, !llvm.loop !145

116:                                              ; preds = %27
  %117 = load i32, i32* %17, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = load i32*, i32** %9, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %17, align 4
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %122, %94
  %125 = load i32, i32* %6, align 4
  ret i32 %125
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_attack3(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [2 x i32], align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = sub nsw i32 3, %29
  store i32 %30, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @countlib(i32 %31)
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %5
  br label %36

35:                                               ; preds = %5
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 3326, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i32 -1, i32 -1)
  br label %36

36:                                               ; preds = %35, %34
  store i32 0, i32* %23, align 4
  br label %37

37:                                               ; preds = %221, %36
  %38 = load i32, i32* %23, align 4
  %39 = icmp slt i32 %38, 2
  br i1 %39, label %40, label %224

40:                                               ; preds = %37
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %23, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %21, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %23, align 4
  %48 = sub nsw i32 1, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %22, align 4
  %52 = load i32, i32* %21, align 4
  %53 = load i32, i32* %22, align 4
  %54 = add nsw i32 %53, 20
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %40
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %22, align 4
  %59 = sub nsw i32 %58, 20
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %56, %40
  %62 = load i32, i32* %21, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %21, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %19, align 4
  br label %85

72:                                               ; preds = %61
  %73 = load i32, i32* %21, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %21, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %19, align 4
  br label %84

83:                                               ; preds = %72
  br label %221

84:                                               ; preds = %80
  br label %85

85:                                               ; preds = %84, %69
  br label %123

86:                                               ; preds = %56
  %87 = load i32, i32* %21, align 4
  %88 = load i32, i32* %22, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %21, align 4
  %93 = load i32, i32* %22, align 4
  %94 = add nsw i32 %93, 1
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %121

96:                                               ; preds = %91, %86
  %97 = load i32, i32* %21, align 4
  %98 = add nsw i32 %97, 20
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load i32, i32* %21, align 4
  %106 = add nsw i32 %105, 20
  store i32 %106, i32* %19, align 4
  br label %120

107:                                              ; preds = %96
  %108 = load i32, i32* %21, align 4
  %109 = sub nsw i32 %108, 20
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %107
  %116 = load i32, i32* %21, align 4
  %117 = sub nsw i32 %116, 20
  store i32 %117, i32* %19, align 4
  br label %119

118:                                              ; preds = %107
  br label %221

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119, %104
  br label %122

121:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %232

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122, %85
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @is_self_atari(i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %123
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @trymove(i32 %129, i32 %130, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.107, i64 0, i64 0), i32 %131, i32 %132, i32 %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %128, %123
  br label %221

137:                                              ; preds = %128
  %138 = load i32, i32* %19, align 4
  %139 = call i32 @countlib(i32 %138)
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %141, label %188

141:                                              ; preds = %137
  %142 = load i32, i32* %19, align 4
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %144 = call i32 @findlib(i32 %142, i32 2, i32* %143)
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %21, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %20, align 4
  br label %155

152:                                              ; preds = %141
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %20, align 4
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @is_self_atari(i32 %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %187, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %20, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @trymove(i32 %161, i32 %162, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.108, i64 0, i64 0), i32 %163, i32 %164, i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %187

168:                                              ; preds = %160
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @do_attack(i32 %169, i32* null, i32 %170, i32 %171)
  store i32 %172, i32* %14, align 4
  %173 = load i32, i32* %14, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %168
  call void @popgo()
  call void @popgo()
  br label %221

176:                                              ; preds = %168
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 5
  br i1 %178, label %179, label %186

179:                                              ; preds = %176
  %180 = load i32, i32* %14, align 4
  %181 = load i32, i32* %17, align 4
  %182 = icmp sgt i32 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = load i32, i32* %19, align 4
  store i32 %184, i32* %16, align 4
  %185 = load i32, i32* %14, align 4
  store i32 %185, i32* %17, align 4
  br label %186

186:                                              ; preds = %183, %179, %176
  call void @popgo()
  br label %187

187:                                              ; preds = %186, %160, %155
  br label %188

188:                                              ; preds = %187, %137
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @do_find_defense(i32 %189, i32* null, i32 %190, i32 %191)
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 5
  br i1 %194, label %195, label %220

195:                                              ; preds = %188
  %196 = load i32, i32* %7, align 4
  %197 = load i32, i32* %10, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @do_attack(i32 %196, i32* null, i32 %197, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %195
  %202 = load i32, i32* %15, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  call void @popgo()
  %205 = load i32, i32* %19, align 4
  %206 = load i32*, i32** %9, align 8
  store i32 %205, i32* %206, align 4
  store i32 5, i32* %6, align 4
  br label %232

207:                                              ; preds = %201
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %207
  %211 = load i32, i32* %15, align 4
  %212 = sub nsw i32 5, %211
  %213 = load i32, i32* %17, align 4
  %214 = icmp sgt i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load i32, i32* %19, align 4
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %15, align 4
  %218 = sub nsw i32 5, %217
  store i32 %218, i32* %17, align 4
  br label %219

219:                                              ; preds = %215, %210, %207
  br label %220

220:                                              ; preds = %219, %195, %188
  call void @popgo()
  br label %221

221:                                              ; preds = %220, %175, %136, %118, %83
  %222 = load i32, i32* %23, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %23, align 4
  br label %37, !llvm.loop !146

224:                                              ; preds = %37
  %225 = load i32, i32* %17, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %16, align 4
  %229 = load i32*, i32** %9, align 8
  store i32 %228, i32* %229, align 4
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %17, align 4
  store i32 %231, i32* %6, align 4
  br label %232

232:                                              ; preds = %230, %204, %121
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @special_attack4(i32 %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [160 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca [160 x i32], align 16
  %21 = alloca [2 x i32], align 4
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
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sub nsw i32 3, %37
  store i32 %38, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %23, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @countlib(i32 %39)
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  br label %44

43:                                               ; preds = %5
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 3426, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i32 -1, i32 -1)
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32*, i32** %8, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @is_self_atari(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %44
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @is_self_atari(i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51, %44
  store i32 0, i32* %6, align 4
  br label %214

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = getelementptr inbounds [160 x i32], [160 x i32]* %18, i64 0, i64 0
  %62 = call i32 @chainlinks2(i32 %60, i32* %61, i32 2)
  store i32 %62, i32* %17, align 4
  store i32 0, i32* %29, align 4
  br label %63

63:                                               ; preds = %203, %59
  %64 = load i32, i32* %29, align 4
  %65 = icmp slt i32 %64, 2
  br i1 %65, label %66, label %206

66:                                               ; preds = %63
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %29, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %22, align 4
  store i32 0, i32* %30, align 4
  br label %72

72:                                               ; preds = %90, %66
  %73 = load i32, i32* %30, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %30, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [160 x i32], [160 x i32]* %18, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @liberty_of_string(i32 %77, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load i32, i32* %30, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [160 x i32], [160 x i32]* %18, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %23, align 4
  br label %93

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %30, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %30, align 4
  br label %72, !llvm.loop !147

93:                                               ; preds = %84, %72
  %94 = load i32, i32* %30, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %203

98:                                               ; preds = %93
  %99 = load i32, i32* %23, align 4
  %100 = getelementptr inbounds [160 x i32], [160 x i32]* %20, i64 0, i64 0
  %101 = call i32 @chainlinks2(i32 %99, i32* %100, i32 2)
  store i32 %101, i32* %19, align 4
  store i32 0, i32* %30, align 4
  br label %102

102:                                              ; preds = %199, %98
  %103 = load i32, i32* %30, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %202

106:                                              ; preds = %102
  %107 = load i32, i32* %30, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [160 x i32], [160 x i32]* %20, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* %24, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @same_string(i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %199

116:                                              ; preds = %106
  %117 = load i32, i32* %24, align 4
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %119 = call i32 @findlib(i32 %117, i32 2, i32* %118)
  store i32 0, i32* %31, align 4
  br label %120

120:                                              ; preds = %195, %116
  %121 = load i32, i32* %31, align 4
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %123, label %198

123:                                              ; preds = %120
  %124 = load i32, i32* %31, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %31, align 4
  %129 = sub nsw i32 1, %128
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %26, align 4
  %133 = load i32, i32* %25, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 @is_self_atari(i32 %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %123
  br label %195

138:                                              ; preds = %123
  %139 = load i32, i32* %26, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32 @approxlib(i32 %139, i32 %140, i32 4, i32* null)
  store i32 %141, i32* %28, align 4
  %142 = load i32, i32* %28, align 4
  %143 = icmp sgt i32 %142, 3
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  br label %195

145:                                              ; preds = %138
  %146 = load i32, i32* %25, align 4
  %147 = load i32, i32* %13, align 4
  %148 = call i32 @approxlib(i32 %146, i32 %147, i32 3, i32* null)
  store i32 %148, i32* %27, align 4
  %149 = load i32, i32* %28, align 4
  %150 = load i32, i32* %27, align 4
  %151 = icmp sgt i32 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %195

153:                                              ; preds = %145
  %154 = load i32, i32* %25, align 4
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* %7, align 4
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @trymove(i32 %154, i32 %155, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.109, i64 0, i64 0), i32 %156, i32 %157, i32 %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %194

161:                                              ; preds = %153
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @do_find_defense(i32 %162, i32* null, i32 %163, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 5
  br i1 %167, label %168, label %193

168:                                              ; preds = %161
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @do_attack(i32 %169, i32* null, i32 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %193

174:                                              ; preds = %168
  %175 = load i32, i32* %14, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  call void @popgo()
  %178 = load i32, i32* %25, align 4
  %179 = load i32*, i32** %9, align 8
  store i32 %178, i32* %179, align 4
  store i32 5, i32* %6, align 4
  br label %214

180:                                              ; preds = %174
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %180
  %184 = load i32, i32* %14, align 4
  %185 = sub nsw i32 5, %184
  %186 = load i32, i32* %16, align 4
  %187 = icmp sgt i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* %25, align 4
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %14, align 4
  %191 = sub nsw i32 5, %190
  store i32 %191, i32* %16, align 4
  br label %192

192:                                              ; preds = %188, %183, %180
  br label %193

193:                                              ; preds = %192, %168, %161
  call void @popgo()
  br label %194

194:                                              ; preds = %193, %153
  br label %195

195:                                              ; preds = %194, %152, %144, %137
  %196 = load i32, i32* %31, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %31, align 4
  br label %120, !llvm.loop !148

198:                                              ; preds = %120
  br label %199

199:                                              ; preds = %198, %115
  %200 = load i32, i32* %30, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %30, align 4
  br label %102, !llvm.loop !149

202:                                              ; preds = %102
  br label %203

203:                                              ; preds = %202, %97
  %204 = load i32, i32* %29, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %29, align 4
  br label %63, !llvm.loop !150

206:                                              ; preds = %63
  %207 = load i32, i32* %16, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %206
  %210 = load i32, i32* %15, align 4
  %211 = load i32*, i32** %9, align 8
  store i32 %210, i32* %211, align 4
  br label %212

212:                                              ; preds = %209, %206
  %213 = load i32, i32* %16, align 4
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %212, %177, %58
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edge_closing_backfill(i32 %0, i32 %1, i32* %2) #0 {
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
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 3, %22
  store i32 %23, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %207, %3
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %210

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  %34 = srem i32 %33, 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %15, align 4
  %40 = sub nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %47

46:                                               ; preds = %27
  br label %207

47:                                               ; preds = %27
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %211

58:                                               ; preds = %47
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %16, align 4
  %61 = add nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %16, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 3
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76, %67
  br label %120

87:                                               ; preds = %76, %58
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %16, align 4
  %90 = sub nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %118

96:                                               ; preds = %87
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 3
  br i1 %104, label %105, label %115

105:                                              ; preds = %96
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %16, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %105, %96
  %116 = load i32, i32* %16, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %16, align 4
  br label %119

118:                                              ; preds = %105, %87
  store i32 0, i32* %4, align 4
  br label %211

119:                                              ; preds = %115
  br label %120

120:                                              ; preds = %119, %86
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %15, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* %16, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %120
  store i32 0, i32* %4, align 4
  br label %211

133:                                              ; preds = %120
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %134, %135
  %137 = load i32, i32* %16, align 4
  %138 = mul nsw i32 2, %137
  %139 = add nsw i32 %136, %138
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 3
  br i1 %145, label %147, label %146

146:                                              ; preds = %133
  store i32 0, i32* %4, align 4
  br label %211

147:                                              ; preds = %133
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %16, align 4
  %150 = mul nsw i32 2, %149
  %151 = add nsw i32 %148, %150
  store i32 %151, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %162

159:                                              ; preds = %147
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %174

162:                                              ; preds = %147
  %163 = load i32, i32* %11, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load i32, i32* %9, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %162
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %14, align 4
  br label %173

173:                                              ; preds = %170, %162
  br label %174

174:                                              ; preds = %173, %159
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = load i32, i32* %8, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %185

182:                                              ; preds = %174
  %183 = load i32, i32* %13, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %13, align 4
  br label %197

185:                                              ; preds = %174
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %187
  %189 = load i8, i8* %188, align 1
  %190 = zext i8 %189 to i32
  %191 = load i32, i32* %9, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %185
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %14, align 4
  br label %196

196:                                              ; preds = %193, %185
  br label %197

197:                                              ; preds = %196, %182
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* %13, align 4
  %200 = icmp sgt i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %197
  store i32 0, i32* %4, align 4
  br label %211

202:                                              ; preds = %197
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %16, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32*, i32** %7, align 8
  store i32 %205, i32* %206, align 4
  store i32 5, i32* %4, align 4
  br label %211

207:                                              ; preds = %46
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %24, !llvm.loop !151

210:                                              ; preds = %24
  store i32 0, i32* %4, align 4
  br label %211

211:                                              ; preds = %210, %202, %201, %146, %132, %118, %57
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_cap(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %22 = call i32 @findlib(i32 %20, i32 4, i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 4
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %88

29:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  br label %30

30:                                               ; preds = %77, %29
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %30
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %16, align 4
  br label %38

38:                                               ; preds = %73, %35
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load i32, i32* %15, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %16, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @find_cap2(i32 %51, i32 %52, i32 %53, i32* %14, i32 %54, i32 %55)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp eq i32 %57, 5
  br i1 %58, label %59, label %62

59:                                               ; preds = %42
  %60 = load i32, i32* %14, align 4
  %61 = load i32*, i32** %7, align 8
  store i32 %60, i32* %61, align 4
  store i32 5, i32* %5, align 4
  br label %88

62:                                               ; preds = %42
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 5
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %18, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %19, align 4
  store i32 %71, i32* %18, align 4
  br label %72

72:                                               ; preds = %69, %65, %62
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %16, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %16, align 4
  br label %38, !llvm.loop !152

76:                                               ; preds = %38
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %15, align 4
  br label %30, !llvm.loop !153

80:                                               ; preds = %30
  %81 = load i32, i32* %18, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %17, align 4
  %85 = load i32*, i32** %7, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %18, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %59, %28
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @draw_back(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [160 x i32], align 16
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 0
  %20 = call i32 @chainlinks2(i32 %18, i32* %19, i32 2)
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %212, %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %215

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [160 x i32], [160 x i32]* %13, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %31 = call i32 @findlib(i32 %29, i32 2, i32* %30)
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %208, %25
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 2
  br i1 %34, label %35, label %211

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @liberty_of_string(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %207, label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 20
  %49 = icmp ult i32 %48, 421
  br i1 %49, label %50, label %70

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 20
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %59, 3
  br i1 %60, label %61, label %70

61:                                               ; preds = %50
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 20
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @liberty_of_string(i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %151, label %70

70:                                               ; preds = %61, %50, %43
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  %76 = icmp ult i32 %75, 421
  br i1 %76, label %77, label %97

77:                                               ; preds = %70
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %88, label %97

88:                                               ; preds = %77
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @liberty_of_string(i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %151, label %97

97:                                               ; preds = %88, %77, %70
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 20
  %103 = icmp ult i32 %102, 421
  br i1 %103, label %104, label %124

104:                                              ; preds = %97
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %108, 20
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 3
  br i1 %114, label %115, label %124

115:                                              ; preds = %104
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = sub nsw i32 %119, 20
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @liberty_of_string(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %151, label %124

124:                                              ; preds = %115, %104, %97
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  %130 = icmp ult i32 %129, 421
  br i1 %130, label %131, label %207

131:                                              ; preds = %124
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp ne i32 %140, 3
  br i1 %141, label %142, label %207

142:                                              ; preds = %131
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @liberty_of_string(i32 %147, i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %207

151:                                              ; preds = %142, %115, %88, %61
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = sub nsw i32 3, %160
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @trymove(i32 %155, i32 %161, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i64 0, i64 0), i32 %162, i32 %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %151
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @do_find_defense(i32 %168, i32* null, i32 %169, i32 %170)
  store i32 %171, i32* %17, align 4
  %172 = load i32, i32* %17, align 4
  %173 = icmp ne i32 %172, 5
  br i1 %173, label %174, label %205

174:                                              ; preds = %167
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @do_attack(i32 %175, i32* null, i32 %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %205

180:                                              ; preds = %174
  %181 = load i32, i32* %17, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  call void @popgo()
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %7, align 8
  store i32 %187, i32* %188, align 4
  store i32 5, i32* %5, align 4
  br label %223

189:                                              ; preds = %180
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %189
  %193 = load i32, i32* %17, align 4
  %194 = sub nsw i32 5, %193
  %195 = load i32, i32* %16, align 4
  %196 = icmp sgt i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %15, align 4
  %202 = load i32, i32* %17, align 4
  %203 = sub nsw i32 5, %202
  store i32 %203, i32* %16, align 4
  br label %204

204:                                              ; preds = %197, %192, %189
  br label %205

205:                                              ; preds = %204, %174, %167
  call void @popgo()
  br label %206

206:                                              ; preds = %205, %151
  br label %207

207:                                              ; preds = %206, %142, %131, %124, %35
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %32, !llvm.loop !154

211:                                              ; preds = %32
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %10, align 4
  br label %21, !llvm.loop !155

215:                                              ; preds = %21
  %216 = load i32, i32* %16, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32, i32* %15, align 4
  %220 = load i32*, i32** %7, align 8
  store i32 %219, i32* %220, align 4
  br label %221

221:                                              ; preds = %218, %215
  %222 = load i32, i32* %16, align 4
  store i32 %222, i32* %5, align 4
  br label %223

223:                                              ; preds = %221, %183
  %224 = load i32, i32* %5, align 4
  ret i32 %224
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_ladder_defend(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.reading_moves, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i64 0, i64 0), i8** %17, align 8
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* @reading_node_counter, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @reading_node_counter, align 4
  %32 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %46, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %47

46:                                               ; preds = %39, %4
  br label %48

47:                                               ; preds = %39
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4784, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i64 0, i64 0), i32 -1, i32 -1)
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @countlib(i32 %49)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %54, 20
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* %6, align 4
  %58 = srem i32 %57, 20
  %59 = sub nsw i32 %58, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 4785, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i64 0, i64 0), i32 %56, i32 %59)
  br label %60

60:                                               ; preds = %53, %52
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @findlib(i32 %61, i32 1, i32* %12)
  %63 = load i32, i32* %12, align 4
  %64 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 0
  %65 = getelementptr inbounds [50 x i32], [50 x i32]* %64, i64 0, i64 0
  store i32 %63, i32* %65, align 4
  %66 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 1
  %67 = getelementptr inbounds [50 x i32], [50 x i32]* %66, i64 0, i64 0
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  call void @break_chain_moves(i32 %69, %struct.reading_moves* %13)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i8*, i8** %17, align 8
  call void @order_moves(i32 %70, %struct.reading_moves* %13, i32 %71, i8* %72, i32 0)
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %151, %60
  %74 = load i32, i32* %16, align 4
  %75 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %154

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.reading_moves, %struct.reading_moves* %13, i32 0, i32 0
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [50 x i32], [50 x i32]* %79, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @komaster_trymove(i32 %84, i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.123, i64 0, i64 0), i32 %86, i32 %87, i32 %88, i32* %19, i32* %20, i32* %21, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %150

94:                                               ; preds = %78
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @countlib(i32 %95)
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %23, align 4
  %98 = icmp sgt i32 %97, 2
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 0, i32* %22, align 4
  br label %110

100:                                              ; preds = %94
  %101 = load i32, i32* %23, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 5, i32* %22, align 4
  br label %109

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %20, align 4
  %108 = call i32 @simple_ladder_attack(i32 %105, i32* null, i32 %106, i32 %107)
  store i32 %108, i32* %22, align 4
  br label %109

109:                                              ; preds = %104, %103
  br label %110

110:                                              ; preds = %109, %99
  call void @popgo()
  %111 = load i32, i32* %21, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %143, label %113

113:                                              ; preds = %110
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %22, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %114
  %118 = load i32*, i32** %7, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i32, i32* %11, align 4
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %125 = icmp ne %struct.SGFTree_t* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i8*, i8** %17, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %11, align 4
  call void @sgf_trace(i8* %127, i32 %128, i32 %129, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.124, i64 0, i64 0))
  br label %130

130:                                              ; preds = %126, %123
  store i32 5, i32* %5, align 4
  br label %182

131:                                              ; preds = %114
  %132 = load i32, i32* %22, align 4
  %133 = sub nsw i32 5, %132
  %134 = load i32, i32* %15, align 4
  %135 = icmp sgt i32 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %22, align 4
  %139 = sub nsw i32 5, %138
  store i32 %139, i32* %15, align 4
  br label %140

140:                                              ; preds = %136, %131
  br label %141

141:                                              ; preds = %140
  br label %142

142:                                              ; preds = %141
  br label %149

143:                                              ; preds = %110
  %144 = load i32, i32* %22, align 4
  %145 = icmp ne i32 %144, 5
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* %11, align 4
  store i32 %147, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %148

148:                                              ; preds = %146, %143
  br label %149

149:                                              ; preds = %148, %142
  br label %150

150:                                              ; preds = %149, %78
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %73, !llvm.loop !156

154:                                              ; preds = %73
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %15, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %173

158:                                              ; preds = %155
  %159 = load i32*, i32** %7, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load i32, i32* %14, align 4
  %163 = load i32*, i32** %7, align 8
  store i32 %162, i32* %163, align 4
  br label %164

164:                                              ; preds = %161, %158
  %165 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %166 = icmp ne %struct.SGFTree_t* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i8*, i8** %17, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %14, align 4
  %171 = load i32, i32* %15, align 4
  call void @sgf_trace(i8* %168, i32 %169, i32 %170, i32 %171, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0))
  br label %172

172:                                              ; preds = %167, %164
  br label %180

173:                                              ; preds = %155
  %174 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %175 = icmp ne %struct.SGFTree_t* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i8*, i8** %17, align 8
  %178 = load i32, i32* %18, align 4
  call void @sgf_trace(i8* %177, i32 %178, i32 0, i32 0, i8* null)
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %172
  %181 = load i32, i32* %15, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %130, %180
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
!87 = distinct !{!87, !5}
!88 = distinct !{!88, !5}
!89 = distinct !{!89, !5}
!90 = distinct !{!90, !5}
!91 = distinct !{!91, !5}
!92 = distinct !{!92, !5}
!93 = distinct !{!93, !5}
!94 = distinct !{!94, !5}
!95 = distinct !{!95, !5}
!96 = distinct !{!96, !5}
!97 = distinct !{!97, !5}
!98 = distinct !{!98, !5}
!99 = distinct !{!99, !5}
!100 = distinct !{!100, !5}
!101 = distinct !{!101, !5}
!102 = distinct !{!102, !5}
!103 = distinct !{!103, !5}
!104 = distinct !{!104, !5}
!105 = distinct !{!105, !5}
!106 = distinct !{!106, !5}
!107 = distinct !{!107, !5}
!108 = distinct !{!108, !5}
!109 = distinct !{!109, !5}
!110 = distinct !{!110, !5}
!111 = distinct !{!111, !5}
!112 = distinct !{!112, !5}
!113 = distinct !{!113, !5}
!114 = distinct !{!114, !5}
!115 = distinct !{!115, !5}
!116 = distinct !{!116, !5}
!117 = distinct !{!117, !5}
!118 = distinct !{!118, !5}
!119 = distinct !{!119, !5}
!120 = distinct !{!120, !5}
!121 = distinct !{!121, !5}
!122 = distinct !{!122, !5}
!123 = distinct !{!123, !5}
!124 = distinct !{!124, !5}
!125 = distinct !{!125, !5}
!126 = distinct !{!126, !5}
!127 = distinct !{!127, !5}
!128 = distinct !{!128, !5}
!129 = distinct !{!129, !5}
!130 = distinct !{!130, !5}
!131 = distinct !{!131, !5}
!132 = distinct !{!132, !5}
!133 = distinct !{!133, !5}
!134 = distinct !{!134, !5}
!135 = distinct !{!135, !5}
!136 = distinct !{!136, !5}
!137 = distinct !{!137, !5}
!138 = distinct !{!138, !5}
!139 = distinct !{!139, !5}
!140 = distinct !{!140, !5}
!141 = distinct !{!141, !5}
!142 = distinct !{!142, !5}
!143 = distinct !{!143, !5}
!144 = distinct !{!144, !5}
!145 = distinct !{!145, !5}
!146 = distinct !{!146, !5}
!147 = distinct !{!147, !5}
!148 = distinct !{!148, !5}
!149 = distinct !{!149, !5}
!150 = distinct !{!150, !5}
!151 = distinct !{!151, !5}
!152 = distinct !{!152, !5}
!153 = distinct !{!153, !5}
!154 = distinct !{!154, !5}
!155 = distinct !{!155, !5}
!156 = distinct !{!156, !5}
