; ModuleID = 'owl.c'
source_filename = "owl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.local_owl_data = type { [400 x i8], [400 x i8], [400 x i8], i32, [400 x %struct.eye_data], [400 x %struct.half_eye_data], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [400 x i8], i32, [400 x i8], i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.owl_move_data = type { i32, i32, i8*, i32, i32, i32 }
%struct.matched_patterns_list_data = type { i32, i32, i32, i32, i32, %struct.matched_pattern_data* }
%struct.matched_pattern_data = type { i32, i32, %struct.pattern* }
%struct.read_result_t = type { i32, i32, %struct.read_result_t* }

@board = external dso_local global [421 x i8], align 16
@.str = private unnamed_addr constant [6 x i8] c"owl.c\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"board[apos] == (1+2-(board[bpos]))\00", align 1
@count_variations = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"owl_analyze_semeai: %1m vs. %1m\0A\00", align 1
@local_owl_node_counter = internal global i32 0, align 4
@stackp = external dso_local global i32, align 4
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@result_certain = internal global i32 0, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@debug = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"owl_attack %1m\0A\00", align 1
@owl_goal_worm = internal global [15 x i32] zeroinitializer, align 16
@goal_worms_computed = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"owl_attack %1m, result %d %1m (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"owl_threaten_attack %1m\0A\00", align 1
@owl_attackpat_db = external dso_local global %struct.pattern_db, align 8
@current_owl_data = internal global %struct.local_owl_data* null, align 8
@.str.7 = private unnamed_addr constant [71 x i8] c"owl_threaten_attack %1m %1m %1m, result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@owl_defend.owl = internal global %struct.local_owl_data* null, align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"owl_defend %1m\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"owl_defend %1m, result %d %1m (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"owl_threaten_defense %1m\0A\00", align 1
@owl_defendpat_db = external dso_local global %struct.pattern_db, align 8
@.str.11 = private unnamed_addr constant [72 x i8] c"owl_threaten_defense %1m %1m %1m, result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.12 = private unnamed_addr constant [75 x i8] c"%oList size %d. %d Patterns in list, %d have been used, ordered up to %d.\0A\00", align 1
@.str.13 = private unnamed_addr constant [47 x i8] c"%o  Pattern %s (orient. %d) at %1m, value %f.\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"%o%1m (%d)  \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"owl: %1m defends %1m with loss at move %d\0A\00", align 1
@movenum = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [33 x i8] c"owl: %1m defends %1m at move %d\0A\00", align 1
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@.str.18 = private unnamed_addr constant [57 x i8] c"owl: %1m attacks %1m at move %d, but the attacker dies.\0A\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"owl: %1m attacks %1m with gain at move %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"owl: %1m attacks %1m at move %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [45 x i8] c"owl: %1m threatens to defend %1m at move %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"owl: %1m prevents a threat against %1m at move %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [35 x i8] c"owl: %1m threatens %1m at move %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"owl: %1m defends %1m against possible loss at move %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"owl: %1m defends the uncertain dragon at %1m at move %d\0A\00", align 1
@.str.26 = private unnamed_addr constant [62 x i8] c"owl: %1m might defend the uncertain dragon at %1m at move %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"owl_does_defend %1m %1m(%1m)\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"owl_does_defend\00", align 1
@.str.29 = private unnamed_addr constant [68 x i8] c"owl_does_defend %1m %1m(%1m), result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"owl_confirm_safety %1m %1m(%1m)\0A\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"owl_confirm_safety\00", align 1
@.str.32 = private unnamed_addr constant [75 x i8] c"owl_confirm_safety %1m %1m(%1m), result %d %1m (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"owl_does_attack %1m %1m(%1m)\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"owl_does_attack\00", align 1
@.str.35 = private unnamed_addr constant [68 x i8] c"owl_does_attack %1m %1m(%1m), result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"board[target2] == color\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"owl_connection_defends %1m %1m %1m\0A\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"owl_connection_defends\00", align 1
@.str.39 = private unnamed_addr constant [68 x i8] c"owl_conn_defends %1m %1m %1m, result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@other_owl_data = internal global %struct.local_owl_data* null, align 8
@board_size = external dso_local global i32, align 4
@level = external dso_local global i32, align 4
@.str.41 = private unnamed_addr constant [59 x i8] c"owl_substantial %1m, result %d (%d, %d nodes, %f seconds)\0A\00", align 1
@deltai = external dso_local global [8 x i32], align 16
@deltaj = external dso_local global [8 x i32], align 16
@delta = external dso_local global [8 x i32], align 16
@.str.42 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[pos])\00", align 1
@global_owl_node_counter = internal global i32 0, align 4
@sgf_dumptree = external dso_local global %struct.SGFTree_t*, align 8
@.str.43 = private unnamed_addr constant [22 x i8] c"do_owl_analyze_semeai\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"board[apos] == owla->color\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"board[bpos] == owlb->color\00", align 1
@owl_branch_depth = external dso_local global i32, align 4
@hashflags = external dso_local global i32, align 4
@.str.46 = private unnamed_addr constant [36 x i8] c"%oVariation %d: %1m ALIVE (cached)\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"%oVariation %d: %1m DEAD (cached)\0A\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"%oVariation %d: %1m ALIVE_IN_SEKI (cached)\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"other == board[bpos]\00", align 1
@matches_found = internal global i32 0, align 4
@found_matches = internal global [400 x i8] zeroinitializer, align 16
@owl_vital_apat_db = external dso_local global %struct.pattern_db, align 8
@.str.51 = private unnamed_addr constant [21 x i8] c"Two eyes versus none\00", align 1
@.str.52 = private unnamed_addr constant [20 x i8] c"Two eyes versus one\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"Two eyes or escape versus none\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"Two eyes or escape versus one\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"Both live\00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"You live, I die\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"vital defensive move\00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"tactical win found\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"safe outside liberty\00", align 1
@.str.60 = private unnamed_addr constant [17 x i8] c"backfilling move\00", align 1
@.str.61 = private unnamed_addr constant [20 x i8] c"safe common liberty\00", align 1
@semeai_variations = external dso_local global i32, align 4
@.str.62 = private unnamed_addr constant [5 x i8] c"Seki\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"No move found\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"Inessential string found at %1m.\0A\00", align 1
@.str.65 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"vital move\00", align 1
@.str.67 = private unnamed_addr constant [19 x i8] c"marginal eye space\00", align 1
@.str.68 = private unnamed_addr constant [64 x i8] c"%s at %1m, score %d (eye at %1m, value %s, pessimistic_min %d)\0A\00", align 1
@.str.69 = private unnamed_addr constant [44 x i8] c"vital point looked stupid, moved it to %1m\0A\00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"ne < num_eyes - num_lunch\00", align 1
@.str.71 = private unnamed_addr constant [38 x i8] c"save lunch at %1m with %1m, score %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [11 x i8] c"save lunch\00", align 1
@.str.73 = private unnamed_addr constant [37 x i8] c"eat lunch at %1m with %1m, score %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"eat lunch\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"Moved defense of lunch %1m from %1m to %1m.\0A\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"Moved attack of lunch %1m from %1m to %1m.\0A\00", align 1
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@allpats = external dso_local global i32, align 4
@.str.77 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"  asking helper to consider '%s'+%d at %1m\0A\00", align 1
@.str.79 = private unnamed_addr constant [43 x i8] c"helper likes pattern '%s' value %d at %1m\0A\00", align 1
@.str.80 = private unnamed_addr constant [44 x i8] c"  helper does not like pattern '%s' at %1m\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Pattern %s found at %1m with value %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"owl_safe_move\00", align 1
@.str.83 = private unnamed_addr constant [17 x i8] c"board[move] == 0\00", align 1
@backfill_depth = external dso_local global i32, align 4
@.str.84 = private unnamed_addr constant [29 x i8] c"find_semeai_backfilling_move\00", align 1
@owl_stack_pointer = internal global i32 0, align 4
@owl_stack_size = internal global i32 0, align 4
@owl_stack = internal global %struct.local_owl_data* null, align 8
@.str.85 = private unnamed_addr constant [29 x i8] c"*owla == &(owl_stack[num_a])\00", align 1
@.str.86 = private unnamed_addr constant [29 x i8] c"*owlb == &(owl_stack[num_b])\00", align 1
@.str.87 = private unnamed_addr constant [24 x i8] c"owl_stack != ((void*)0)\00", align 1
@.str.88 = private unnamed_addr constant [44 x i8] c"&owl_stack[(*owl)->number_in_stack] == *owl\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"owl_attack\00", align 1
@.str.90 = private unnamed_addr constant [31 x i8] c"%oVariation %d: DEAD (cached)\0A\00", align 1
@.str.91 = private unnamed_addr constant [32 x i8] c"%oVariation %d: ALIVE (cached)\0A\00", align 1
@experimental_owl_ext = external dso_local global i32, align 4
@.str.92 = private unnamed_addr constant [28 x i8] c"%oVariation %d: ALIVE (%s)\0A\00", align 1
@.str.93 = private unnamed_addr constant [46 x i8] c"%oVariation %d: DEAD (Winning owl_attackpat)\0A\00", align 1
@.str.94 = private unnamed_addr constant [23 x i8] c"winning attack pattern\00", align 1
@owl_distrust_depth = external dso_local global i32, align 4
@.str.95 = private unnamed_addr constant [16 x i8] c"tactical attack\00", align 1
@.str.96 = private unnamed_addr constant [35 x i8] c"%oVariation %d: DEAD (no defense)\0A\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"no defense\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"defense move\00", align 1
@.str.99 = private unnamed_addr constant [24 x i8] c"defense move (backfill)\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"k == 0\00", align 1
@.str.101 = private unnamed_addr constant [47 x i8] c"%oVariation %d: ALIVE (multiple forced moves)\0A\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"multiple forced moves\00", align 1
@.str.103 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(mpos)\00", align 1
@white_captured = external dso_local global i32, align 4
@black_captured = external dso_local global i32, align 4
@.str.104 = private unnamed_addr constant [44 x i8] c"Trying %C %1m. Escape = %d. Current stack: \00", align 1
@.str.105 = private unnamed_addr constant [29 x i8] c"all original stones captured\00", align 1
@.str.106 = private unnamed_addr constant [17 x i8] c"attack effective\00", align 1
@.str.107 = private unnamed_addr constant [21 x i8] c"%s)\0A  (%d variations\00", align 1
@.str.108 = private unnamed_addr constant [37 x i8] c"all original stones captured with ko\00", align 1
@.str.109 = private unnamed_addr constant [22 x i8] c"attack effective - ko\00", align 1
@.str.110 = private unnamed_addr constant [28 x i8] c"attack effective (gain) - E\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"attack effective (ko) - E\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"attack failed)\0A  (%d variations\00", align 1
@owl_reading_depth = external dso_local global i32, align 4
@.str.113 = private unnamed_addr constant [55 x i8] c"%oVariation %d: ALIVE (maximum reading depth reached)\0A\00", align 1
@.str.114 = private unnamed_addr constant [26 x i8] c"max reading depth reached\00", align 1
@owl_node_limit = external dso_local global i32, align 4
@.str.115 = private unnamed_addr constant [48 x i8] c"%oVariation %d: ALIVE (owl node limit reached)\0A\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"owl node limit reached\00", align 1
@.str.117 = private unnamed_addr constant [33 x i8] c"owl: eyemin=%d matches_found=%d\0A\00", align 1
@.str.118 = private unnamed_addr constant [22 x i8] c"2 or more secure eyes\00", align 1
@.str.119 = private unnamed_addr constant [26 x i8] c"1 secure eye, likely >= 4\00", align 1
@.str.120 = private unnamed_addr constant [27 x i8] c"getting deep, looks lively\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"owl_defend\00", align 1
@.str.122 = private unnamed_addr constant [33 x i8] c"%oVariation %d: ALIVE (escaped)\0A\00", align 1
@.str.123 = private unnamed_addr constant [8 x i8] c"escaped\00", align 1
@.str.124 = private unnamed_addr constant [47 x i8] c"%oVariation %d: ALIVE (Winning owl_defendpat)\0A\00", align 1
@.str.125 = private unnamed_addr constant [24 x i8] c"winning defense pattern\00", align 1
@.str.126 = private unnamed_addr constant [40 x i8] c"Found tactical defense for %1m at %1m.\0A\00", align 1
@.str.127 = private unnamed_addr constant [17 x i8] c"tactical_defense\00", align 1
@.str.128 = private unnamed_addr constant [36 x i8] c"defense effective)\0A  (%d variations\00", align 1
@.str.129 = private unnamed_addr constant [29 x i8] c"defense effective (loss) - B\00", align 1
@.str.130 = private unnamed_addr constant [27 x i8] c"defense effective (ko) - B\00", align 1
@.str.131 = private unnamed_addr constant [20 x i8] c"genus probably >= 2\00", align 1
@.str.132 = private unnamed_addr constant [44 x i8] c"defense failed - genus %d)\0A  (%d variations\00", align 1
@.str.133 = private unnamed_addr constant [19 x i8] c"!list->initialized\00", align 1
@.str.134 = private unnamed_addr constant [33 x i8] c"list->pattern_list != ((void*)0)\00", align 1
@.str.135 = private unnamed_addr constant [49 x i8] c"Remaining valid (but unused) patterns at stack: \00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(move)\00", align 1
@.str.137 = private unnamed_addr constant [6 x i8] c"k < 3\00", align 1
@.str.138 = private unnamed_addr constant [38 x i8] c"Additionally pattern %s found at %1m\0A\00", align 1
@.str.139 = private unnamed_addr constant [40 x i8] c"bpos == NO_MOVE || board[bpos] == color\00", align 1
@.str.140 = private unnamed_addr constant [35 x i8] c"owla->color == (1+2-(owlb->color))\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"IS_STONE(board[lunch])\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"Owl escape values:\0A\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"%o%d\00", align 1
@.str.144 = private unnamed_addr constant [4 x i8] c"%o\0A\00", align 1
@experimental_semeai = external dso_local global i32, align 4
@.str.145 = private unnamed_addr constant [19 x i8] c"flag != ((void*)0)\00", align 1
@dragon_goal_worms = internal global [240 x [15 x i32]] zeroinitializer, align 16
@.str.146 = private unnamed_addr constant [19 x i8] c"wpos != ((void*)0)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @owl_analyze_semeai(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.local_owl_data*, align 8
  %15 = alloca %struct.local_owl_data*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = sub nsw i32 3, %25
  %27 = icmp eq i32 %20, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %6
  br label %30

29:                                               ; preds = %6
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 258, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %30

30:                                               ; preds = %29, %28
  store i32 1, i32* @count_variations, align 4
  %31 = load i32, i32* @verbose, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  call void @init_owl(%struct.local_owl_data** %14, i32 %42, i32 0, i32 0, i32 1)
  %43 = load i32, i32* %8, align 4
  call void @init_owl(%struct.local_owl_data** %15, i32 %43, i32 0, i32 0, i32 0)
  %44 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %45 = load %struct.local_owl_data*, %struct.local_owl_data** %15, align 8
  call void @owl_make_domains(%struct.local_owl_data* %44, %struct.local_owl_data* %45)
  br label %51

46:                                               ; preds = %38
  call void @reduced_init_owl(%struct.local_owl_data** %14, i32 1)
  call void @reduced_init_owl(%struct.local_owl_data** %15, i32 0)
  store i32 0, i32* @local_owl_node_counter, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  call void @owl_mark_worm(i32 %47, i32 0, %struct.local_owl_data* %48)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.local_owl_data*, %struct.local_owl_data** %15, align 8
  call void @owl_mark_worm(i32 %49, i32 0, %struct.local_owl_data* %50)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* @stackp, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %13, align 4
  br label %76

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %13, align 4
  br label %75

64:                                               ; preds = %55
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %67, i32 0, i32 16
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %13, align 4
  br label %74

73:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %71
  br label %75

75:                                               ; preds = %74, %62
  br label %76

76:                                               ; preds = %75, %54
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %80 = load %struct.local_owl_data*, %struct.local_owl_data** %15, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %11, align 8
  %84 = load i32, i32* %12, align 4
  call void @do_owl_analyze_semeai(i32 %77, i32 %78, %struct.local_owl_data* %79, %struct.local_owl_data* %80, i32 0, i32* %81, i32* %82, i32* %83, i32 0, i32 %84)
  ret void
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_owl(%struct.local_owl_data** %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.local_owl_data**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.local_owl_data** %0, %struct.local_owl_data*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.local_owl_data**, %struct.local_owl_data*** %6, align 8
  %12 = load i32, i32* %10, align 4
  call void @reduced_init_owl(%struct.local_owl_data** %11, i32 %12)
  store i32 0, i32* @local_owl_node_counter, align 4
  %13 = load %struct.local_owl_data**, %struct.local_owl_data*** %6, align 8
  %14 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %15 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %14, i32 0, i32 12
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.local_owl_data**, %struct.local_owl_data*** %6, align 8
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** %18, align 8
  call void @owl_mark_dragon(i32 %16, i32 %17, %struct.local_owl_data* %19)
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.local_owl_data**, %struct.local_owl_data*** %6, align 8
  %25 = load %struct.local_owl_data*, %struct.local_owl_data** %24, align 8
  call void @owl_update_goal(i32 %23, i32 1, %struct.local_owl_data* %25, i32 0)
  br label %26

26:                                               ; preds = %22, %5
  %27 = load %struct.local_owl_data**, %struct.local_owl_data*** %6, align 8
  %28 = load %struct.local_owl_data*, %struct.local_owl_data** %27, align 8
  call void @compute_owl_escape_values(%struct.local_owl_data* %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_make_domains(%struct.local_owl_data* %0, %struct.local_owl_data* %1) #0 {
  %3 = alloca %struct.local_owl_data*, align 8
  %4 = alloca %struct.local_owl_data*, align 8
  %5 = alloca %struct.eye_data*, align 8
  %6 = alloca %struct.eye_data*, align 8
  store %struct.local_owl_data* %0, %struct.local_owl_data** %3, align 8
  store %struct.local_owl_data* %1, %struct.local_owl_data** %4, align 8
  store %struct.eye_data* null, %struct.eye_data** %5, align 8
  store %struct.eye_data* null, %struct.eye_data** %6, align 8
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  store %struct.local_owl_data* %7, %struct.local_owl_data** @current_owl_data, align 8
  %8 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  store %struct.local_owl_data* %8, %struct.local_owl_data** @other_owl_data, align 8
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  %10 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %9, i32 0, i32 12
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %14)
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  %17 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  %22 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %21, i32 0, i32 4
  %23 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %22, i64 0, i64 0
  store %struct.eye_data* %23, %struct.eye_data** %5, align 8
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  %26 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %25, i32 0, i32 4
  %27 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %26, i64 0, i64 0
  store %struct.eye_data* %27, %struct.eye_data** %6, align 8
  br label %28

28:                                               ; preds = %24, %20
  %29 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %30 = icmp ne %struct.local_owl_data* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  %33 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %36 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 3, %37
  %39 = icmp eq i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %42

41:                                               ; preds = %31
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4368, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.140, i64 0, i64 0), i32 -1, i32 -1)
  br label %42

42:                                               ; preds = %41, %40
  %43 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %44 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %48)
  br label %49

49:                                               ; preds = %47, %42
  %50 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %51 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %56 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %55, i32 0, i32 4
  %57 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %56, i64 0, i64 0
  store %struct.eye_data* %57, %struct.eye_data** %5, align 8
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %60 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %59, i32 0, i32 4
  %61 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %60, i64 0, i64 0
  store %struct.eye_data* %61, %struct.eye_data** %6, align 8
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %28
  %64 = load %struct.eye_data*, %struct.eye_data** %5, align 8
  %65 = load %struct.eye_data*, %struct.eye_data** %6, align 8
  call void @make_domains(%struct.eye_data* %64, %struct.eye_data* %65, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reduced_init_owl(%struct.local_owl_data** %0, i32 %1) #0 {
  %3 = alloca %struct.local_owl_data**, align 8
  %4 = alloca i32, align 4
  store %struct.local_owl_data** %0, %struct.local_owl_data*** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @owl_stack_size, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = load i32, i32* @experimental_semeai, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %7
  %11 = load i32, i32* @owl_reading_depth, align 4
  %12 = add nsw i32 %11, 2
  %13 = icmp slt i32 %12, 28
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @owl_reading_depth, align 4
  %17 = add nsw i32 %16, 2
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ 28, %14 ], [ %17, %15 ]
  store i32 %19, i32* @owl_stack_size, align 4
  br label %23

20:                                               ; preds = %7
  %21 = load i32, i32* @owl_reading_depth, align 4
  %22 = add nsw i32 %21, 2
  store i32 %22, i32* @owl_stack_size, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* @owl_stack_size, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 35816
  %27 = call noalias align 16 i8* @malloc(i64 %26) #5
  %28 = bitcast i8* %27 to %struct.local_owl_data*
  store %struct.local_owl_data* %28, %struct.local_owl_data** @owl_stack, align 8
  %29 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %30 = icmp ne %struct.local_owl_data* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %33

32:                                               ; preds = %23
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4991, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i64 0, i64 0), i32 -1, i32 -1)
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  store i32 0, i32* @owl_stack_pointer, align 4
  %38 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %39 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %38, i64 0
  %40 = load %struct.local_owl_data**, %struct.local_owl_data*** %3, align 8
  store %struct.local_owl_data* %39, %struct.local_owl_data** %40, align 8
  br label %49

41:                                               ; preds = %34
  %42 = load i32, i32* @owl_stack_pointer, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @owl_stack_pointer, align 4
  %44 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %45 = load i32, i32* @owl_stack_pointer, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %44, i64 %46
  %48 = load %struct.local_owl_data**, %struct.local_owl_data*** %3, align 8
  store %struct.local_owl_data* %47, %struct.local_owl_data** %48, align 8
  br label %49

49:                                               ; preds = %41, %37
  %50 = load i32, i32* @owl_stack_pointer, align 4
  %51 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %52 = load i32, i32* @owl_stack_pointer, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %51, i64 %53
  %55 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %54, i32 0, i32 15
  store i32 %50, i32* %55, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_mark_worm(i32 %0, i32 %1, %struct.local_owl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.local_owl_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.local_owl_data* %2, %struct.local_owl_data** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %3
  br label %32

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, 20
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %5, align 4
  %30 = srem i32 %29, 20
  %31 = sub nsw i32 %30, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 3355, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.139, i64 0, i64 0), i32 %28, i32 %31)
  br label %32

32:                                               ; preds = %25, %24
  store i32 21, i32* %7, align 4
  br label %33

33:                                               ; preds = %67, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 400
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @is_same_worm(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @is_same_worm(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %43
  %54 = load %struct.local_owl_data*, %struct.local_owl_data** %6, align 8
  %55 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [400 x i8], [400 x i8]* %55, i64 0, i64 %57
  store i8 1, i8* %58, align 1
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.local_owl_data*, %struct.local_owl_data** %6, align 8
  %61 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [400 x i8], [400 x i8]* %61, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %33, !llvm.loop !4

70:                                               ; preds = %33
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.local_owl_data*, %struct.local_owl_data** %6, align 8
  %73 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_owl_analyze_semeai(i32 %0, i32 %1, %struct.local_owl_data* %2, %struct.local_owl_data* %3, i32 %4, i32* %5, i32* %6, i32* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.local_owl_data*, align 8
  %14 = alloca %struct.local_owl_data*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca [3 x %struct.owl_move_data], align 16
  %24 = alloca [3 x %struct.owl_move_data], align 16
  %25 = alloca [3 x %struct.owl_move_data], align 16
  %26 = alloca [3 x %struct.owl_move_data], align 16
  %27 = alloca %struct.matched_patterns_list_data, align 8
  %28 = alloca %struct.matched_patterns_list_data, align 8
  %29 = alloca [6 x %struct.owl_move_data], align 16
  %30 = alloca %struct.owl_move_data, align 8
  %31 = alloca %struct.owl_move_data, align 8
  %32 = alloca %struct.owl_move_data, align 8
  %33 = alloca [400 x i8], align 16
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca [400 x i8], align 16
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca %struct.SGFTree_t*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca %struct.read_result_t*, align 8
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i8*, align 8
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca %struct.eyevalue, align 1
  %60 = alloca %struct.eyevalue, align 1
  %61 = alloca i32, align 4
  %62 = alloca [400 x i32], align 16
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store %struct.local_owl_data* %2, %struct.local_owl_data** %13, align 8
  store %struct.local_owl_data* %3, %struct.local_owl_data** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %21, align 4
  %73 = sub nsw i32 3, %72
  store i32 %73, i32* %22, align 4
  store i32 0, i32* %34, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  store i32 0, i32* %37, align 4
  store i32 0, i32* %38, align 4
  %74 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %74, %struct.SGFTree_t** %44, align 8
  %75 = load i32, i32* @count_variations, align 4
  store i32 %75, i32* %45, align 4
  store i32 3, i32* %47, align 4
  store i32 3, i32* %48, align 4
  store i32 0, i32* %49, align 4
  store i32 3, i32* %50, align 4
  store i32 3, i32* %51, align 4
  store i32 -1, i32* %52, align 4
  %76 = load i32, i32* @count_variations, align 4
  %77 = sub nsw i32 %76, 1
  store i32 %77, i32* %54, align 4
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.43, i64 0, i64 0), i8** %56, align 8
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %57, align 4
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %58, align 4
  %80 = load i32*, i32** %18, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %10
  store i32* %55, i32** %18, align 8
  br label %83

83:                                               ; preds = %82, %10
  %84 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %27, i32 0, i32 0
  store i32 0, i32* %84, align 8
  %85 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %28, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load i32, i32* @global_owl_node_counter, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @global_owl_node_counter, align 4
  %88 = load i32, i32* @local_owl_node_counter, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* @local_owl_node_counter, align 4
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %96 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %83
  br label %101

100:                                              ; preds = %83
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 356, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i64 0, i64 0), i32 -1, i32 -1)
  br label %101

101:                                              ; preds = %100, %99
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %108 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %113

112:                                              ; preds = %101
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 357, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.45, i64 0, i64 0), i32 -1, i32 -1)
  br label %113

113:                                              ; preds = %112, %111
  %114 = load i32, i32* @stackp, align 4
  %115 = load i32, i32* @owl_branch_depth, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %275

117:                                              ; preds = %113
  %118 = load i32, i32* @hashflags, align 4
  %119 = and i32 %118, 1024
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %275

121:                                              ; preds = %117
  %122 = load i32, i32* %19, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %275, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %275

127:                                              ; preds = %124
  %128 = call i32 @get_read_result2(i32 2, i32 0, i32 0, i32* %11, i32* %12, %struct.read_result_t** %53)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %274

130:                                              ; preds = %127
  %131 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %132 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = lshr i32 %133, 24
  %135 = and i32 %134, 15
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %130
  %138 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %139 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = lshr i32 %140, 10
  %142 = and i32 %141, 1023
  %143 = load i32*, i32** %18, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %137, %130
  %145 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %146 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = lshr i32 %147, 24
  %149 = and i32 %148, 15
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %151, label %160

151:                                              ; preds = %144
  %152 = load i32, i32* @verbose, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %151
  br label %159

155:                                              ; preds = %151
  %156 = load i32, i32* %54, align 4
  %157 = load i32, i32* %11, align 4
  %158 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i64 0, i64 0), i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %154
  br label %194

160:                                              ; preds = %144
  %161 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %162 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = lshr i32 %163, 24
  %165 = and i32 %164, 15
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %160
  %168 = load i32, i32* @verbose, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %167
  br label %175

171:                                              ; preds = %167
  %172 = load i32, i32* %54, align 4
  %173 = load i32, i32* %11, align 4
  %174 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %170
  br label %193

176:                                              ; preds = %160
  %177 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %178 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = lshr i32 %179, 24
  %181 = and i32 %180, 15
  %182 = icmp eq i32 %181, 7
  br i1 %182, label %183, label %192

183:                                              ; preds = %176
  %184 = load i32, i32* @verbose, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %183
  br label %191

187:                                              ; preds = %183
  %188 = load i32, i32* %54, align 4
  %189 = load i32, i32* %11, align 4
  %190 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %187, %186
  br label %192

192:                                              ; preds = %191, %176
  br label %193

193:                                              ; preds = %192, %175
  br label %194

194:                                              ; preds = %193, %159
  %195 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %196 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = lshr i32 %197, 20
  %199 = and i32 %198, 15
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = load i32, i32* @verbose, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %201
  br label %209

205:                                              ; preds = %201
  %206 = load i32, i32* %54, align 4
  %207 = load i32, i32* %12, align 4
  %208 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.46, i64 0, i64 0), i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %204
  br label %244

210:                                              ; preds = %194
  %211 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %212 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = lshr i32 %213, 20
  %215 = and i32 %214, 15
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %210
  %218 = load i32, i32* @verbose, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %217
  br label %225

221:                                              ; preds = %217
  %222 = load i32, i32* %54, align 4
  %223 = load i32, i32* %12, align 4
  %224 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.47, i64 0, i64 0), i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %221, %220
  br label %243

226:                                              ; preds = %210
  %227 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %228 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = lshr i32 %229, 20
  %231 = and i32 %230, 15
  %232 = icmp eq i32 %231, 7
  br i1 %232, label %233, label %242

233:                                              ; preds = %226
  %234 = load i32, i32* @verbose, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %233
  br label %241

237:                                              ; preds = %233
  %238 = load i32, i32* %54, align 4
  %239 = load i32, i32* %12, align 4
  %240 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.48, i64 0, i64 0), i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %237, %236
  br label %242

242:                                              ; preds = %241, %226
  br label %243

243:                                              ; preds = %242, %225
  br label %244

244:                                              ; preds = %243, %209
  %245 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %246 = icmp ne %struct.SGFTree_t* %245, null
  br i1 %246, label %247, label %261

247:                                              ; preds = %244
  %248 = load i8*, i8** %56, align 8
  %249 = load i32, i32* %57, align 4
  %250 = load i32, i32* %58, align 4
  %251 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %252 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = lshr i32 %253, 10
  %255 = and i32 %254, 1023
  %256 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %257 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = lshr i32 %258, 24
  %260 = and i32 %259, 15
  call void @sgf_trace2(i8* %248, i32 %249, i32 %250, i32 %255, i32 %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0))
  br label %261

261:                                              ; preds = %247, %244
  %262 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %263 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = lshr i32 %264, 24
  %266 = and i32 %265, 15
  %267 = load i32*, i32** %16, align 8
  store i32 %266, i32* %267, align 4
  %268 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %269 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = lshr i32 %270, 20
  %272 = and i32 %271, 15
  %273 = load i32*, i32** %17, align 8
  store i32 %272, i32* %273, align 4
  br label %1894

274:                                              ; preds = %127
  br label %276

275:                                              ; preds = %124, %121, %117, %113
  store %struct.read_result_t* null, %struct.read_result_t** %53, align 8
  br label %276

276:                                              ; preds = %275, %274
  %277 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %30, i32 0, i32 0
  store i32 0, i32* %277, align 8
  %278 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %31, i32 0, i32 0
  store i32 0, i32* %278, align 8
  %279 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %32, i32 0, i32 0
  store i32 0, i32* %279, align 8
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  store i32 0, i32* %40, align 4
  br label %280

280:                                              ; preds = %300, %276
  %281 = load i32, i32* %40, align 4
  %282 = icmp slt i32 %281, 6
  br i1 %282, label %283, label %303

283:                                              ; preds = %280
  %284 = load i32, i32* %40, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %286, i32 0, i32 0
  store i32 0, i32* %287, align 16
  %288 = load i32, i32* %40, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %289
  %291 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %290, i32 0, i32 1
  store i32 -1, i32* %291, align 4
  %292 = load i32, i32* %40, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %293
  %295 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %294, i32 0, i32 2
  store i8* null, i8** %295, align 8
  %296 = load i32, i32* %40, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %297
  %299 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %298, i32 0, i32 3
  store i32 2, i32* %299, align 16
  br label %300

300:                                              ; preds = %283
  %301 = load i32, i32* %40, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %40, align 4
  br label %280, !llvm.loop !6

303:                                              ; preds = %280
  %304 = load i32, i32* %22, align 4
  %305 = load i32, i32* %12, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = icmp eq i32 %304, %309
  br i1 %310, label %311, label %312

311:                                              ; preds = %303
  br label %313

312:                                              ; preds = %303
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 412, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0), i32 -1, i32 -1)
  br label %313

313:                                              ; preds = %312, %311
  %314 = getelementptr inbounds [400 x i8], [400 x i8]* %39, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %314, i8 0, i64 400, i1 false)
  %315 = load i32, i32* %20, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %1219

317:                                              ; preds = %313
  %318 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %318)
  %319 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %319)
  store i32 0, i32* %40, align 4
  br label %320

320:                                              ; preds = %352, %317
  %321 = load i32, i32* %40, align 4
  %322 = icmp slt i32 %321, 10
  br i1 %322, label %323, label %355

323:                                              ; preds = %320
  %324 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %325 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %324, i32 0, i32 6
  %326 = load i32, i32* %40, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [10 x i32], [10 x i32]* %325, i64 0, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %351

331:                                              ; preds = %323
  %332 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %333 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %332, i32 0, i32 0
  %334 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %335 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %334, i32 0, i32 6
  %336 = load i32, i32* %40, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [10 x i32], [10 x i32]* %335, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [400 x i8], [400 x i8]* %333, i64 0, i64 %340
  %342 = load i8, i8* %341, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %331
  %346 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %347 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %346, i32 0, i32 6
  %348 = load i32, i32* %40, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [10 x i32], [10 x i32]* %347, i64 0, i64 %349
  store i32 0, i32* %350, align 4
  br label %351

351:                                              ; preds = %345, %331, %323
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %40, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %40, align 4
  br label %320, !llvm.loop !7

355:                                              ; preds = %320
  %356 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %357 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %358 = load i32, i32* %15, align 4
  %359 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 0
  call void @owl_determine_life(%struct.local_owl_data* %356, %struct.local_owl_data* %357, i32 %358, i32 1, %struct.owl_move_data* %359, %struct.eyevalue* %59, i32* null, i32* null)
  %360 = load i32, i32* @level, align 4
  %361 = icmp sge i32 %360, 9
  br i1 %361, label %362, label %389

362:                                              ; preds = %355
  %363 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  store %struct.local_owl_data* %363, %struct.local_owl_data** @current_owl_data, align 8
  store i32 0, i32* @matches_found, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([400 x i8], [400 x i8]* @found_matches, i64 0, i64 0), i8 0, i64 400, i1 false)
  %364 = load i32, i32* %22, align 4
  %365 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 0
  %366 = bitcast %struct.owl_move_data* %365 to i8*
  %367 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %368 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %367, i32 0, i32 0
  %369 = getelementptr inbounds [400 x i8], [400 x i8]* %368, i64 0, i64 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @owl_shapes_callback, i32 %364, %struct.pattern_db* @owl_vital_apat_db, i8* %366, i8* %369)
  %370 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %59, i32 0, i32 1
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i32
  %373 = load i32, i32* @matches_found, align 4
  %374 = icmp sgt i32 %372, %373
  br i1 %374, label %375, label %382

375:                                              ; preds = %362
  %376 = load i32, i32* @matches_found, align 4
  %377 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %59, i32 0, i32 1
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = sub nsw i32 %379, %376
  %381 = trunc i32 %380 to i8
  store i8 %381, i8* %377, align 1
  br label %388

382:                                              ; preds = %362
  %383 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %59, i32 0, i32 1
  %384 = load i8, i8* %383, align 1
  %385 = zext i8 %384 to i32
  %386 = sub nsw i32 %385, 0
  %387 = trunc i32 %386 to i8
  store i8 %387, i8* %383, align 1
  br label %388

388:                                              ; preds = %382, %375
  br label %389

389:                                              ; preds = %388, %355
  %390 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %391 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %392 = load i32, i32* %15, align 4
  %393 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 0
  call void @owl_determine_life(%struct.local_owl_data* %390, %struct.local_owl_data* %391, i32 %392, i32 1, %struct.owl_move_data* %393, %struct.eyevalue* %60, i32* null, i32* null)
  %394 = load i32, i32* @level, align 4
  %395 = icmp sge i32 %394, 9
  br i1 %395, label %396, label %419

396:                                              ; preds = %389
  %397 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  store %struct.local_owl_data* %397, %struct.local_owl_data** @current_owl_data, align 8
  store i32 0, i32* @matches_found, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([400 x i8], [400 x i8]* @found_matches, i64 0, i64 0), i8 0, i64 400, i1 false)
  %398 = load i32, i32* %22, align 4
  %399 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 0
  %400 = bitcast %struct.owl_move_data* %399 to i8*
  %401 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %402 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %401, i32 0, i32 0
  %403 = getelementptr inbounds [400 x i8], [400 x i8]* %402, i64 0, i64 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @owl_shapes_callback, i32 %398, %struct.pattern_db* @owl_vital_apat_db, i8* %400, i8* %403)
  %404 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %60, i32 0, i32 1
  %405 = load i8, i8* %404, align 1
  %406 = zext i8 %405 to i32
  %407 = load i32, i32* @matches_found, align 4
  %408 = icmp sgt i32 %406, %407
  br i1 %408, label %409, label %416

409:                                              ; preds = %396
  %410 = load i32, i32* @matches_found, align 4
  %411 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %60, i32 0, i32 1
  %412 = load i8, i8* %411, align 1
  %413 = zext i8 %412 to i32
  %414 = sub nsw i32 %413, %410
  %415 = trunc i32 %414 to i8
  store i8 %415, i8* %411, align 1
  br label %418

416:                                              ; preds = %396
  %417 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %60, i32 0, i32 1
  store i8 0, i8* %417, align 1
  br label %418

418:                                              ; preds = %416, %409
  br label %419

419:                                              ; preds = %418, %389
  %420 = call i32 @min_eyes(%struct.eyevalue* %59)
  %421 = icmp sge i32 %420, 2
  br i1 %421, label %422, label %469

422:                                              ; preds = %419
  %423 = call i32 @max_eyes(%struct.eyevalue* %60)
  %424 = icmp slt i32 %423, 2
  br i1 %424, label %425, label %469

425:                                              ; preds = %422
  %426 = load i32*, i32** %16, align 8
  store i32 1, i32* %426, align 4
  %427 = load i32*, i32** %17, align 8
  store i32 0, i32* %427, align 4
  %428 = load i32*, i32** %18, align 8
  store i32 0, i32* %428, align 4
  %429 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %429, %struct.SGFTree_t** @sgf_dumptree, align 8
  %430 = load i32, i32* %45, align 4
  store i32 %430, i32* @count_variations, align 4
  %431 = call i32 @max_eyes(%struct.eyevalue* %60)
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %441

433:                                              ; preds = %425
  %434 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %435 = icmp ne %struct.SGFTree_t* %434, null
  br i1 %435, label %436, label %440

436:                                              ; preds = %433
  %437 = load i8*, i8** %56, align 8
  %438 = load i32, i32* %57, align 4
  %439 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %437, i32 %438, i32 %439, i32 0, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0))
  br label %440

440:                                              ; preds = %436, %433
  br label %449

441:                                              ; preds = %425
  %442 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %443 = icmp ne %struct.SGFTree_t* %442, null
  br i1 %443, label %444, label %448

444:                                              ; preds = %441
  %445 = load i8*, i8** %56, align 8
  %446 = load i32, i32* %57, align 4
  %447 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %445, i32 %446, i32 %447, i32 0, i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.52, i64 0, i64 0))
  br label %448

448:                                              ; preds = %444, %441
  br label %449

449:                                              ; preds = %448, %440
  br label %450

450:                                              ; preds = %449
  %451 = load i32*, i32** %18, align 8
  %452 = icmp ne i32* %451, null
  br i1 %452, label %453, label %455

453:                                              ; preds = %450
  %454 = load i32*, i32** %18, align 8
  store i32 0, i32* %454, align 4
  br label %455

455:                                              ; preds = %453, %450
  %456 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %457 = icmp ne %struct.read_result_t* %456, null
  br i1 %457, label %458, label %467

458:                                              ; preds = %455
  %459 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %460 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = and i32 %461, 1023
  %463 = or i32 %462, 536870912
  %464 = or i32 %463, 16777216
  %465 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %466 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %465, i32 0, i32 1
  store i32 %464, i32* %466, align 4
  br label %467

467:                                              ; preds = %458, %455
  br label %1894

468:                                              ; No predecessors!
  br label %469

469:                                              ; preds = %468, %422, %419
  %470 = call i32 @min_eyes(%struct.eyevalue* %59)
  %471 = icmp sge i32 %470, 2
  br i1 %471, label %479, label %472

472:                                              ; preds = %469
  %473 = load i32, i32* @stackp, align 4
  %474 = icmp sgt i32 %473, 2
  br i1 %474, label %475, label %632

475:                                              ; preds = %472
  %476 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %477 = call i32 @owl_escape_route(%struct.local_owl_data* %476)
  %478 = icmp sge i32 %477, 5
  br i1 %478, label %479, label %632

479:                                              ; preds = %475, %469
  %480 = call i32 @max_eyes(%struct.eyevalue* %60)
  %481 = icmp slt i32 %480, 2
  br i1 %481, label %482, label %526

482:                                              ; preds = %479
  %483 = load i32*, i32** %16, align 8
  store i32 1, i32* %483, align 4
  %484 = load i32*, i32** %17, align 8
  store i32 0, i32* %484, align 4
  %485 = load i32*, i32** %18, align 8
  store i32 0, i32* %485, align 4
  %486 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %486, %struct.SGFTree_t** @sgf_dumptree, align 8
  %487 = load i32, i32* %45, align 4
  store i32 %487, i32* @count_variations, align 4
  %488 = call i32 @max_eyes(%struct.eyevalue* %60)
  %489 = icmp eq i32 %488, 0
  br i1 %489, label %490, label %498

490:                                              ; preds = %482
  %491 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %492 = icmp ne %struct.SGFTree_t* %491, null
  br i1 %492, label %493, label %497

493:                                              ; preds = %490
  %494 = load i8*, i8** %56, align 8
  %495 = load i32, i32* %57, align 4
  %496 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %494, i32 %495, i32 %496, i32 0, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0))
  br label %497

497:                                              ; preds = %493, %490
  br label %506

498:                                              ; preds = %482
  %499 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %500 = icmp ne %struct.SGFTree_t* %499, null
  br i1 %500, label %501, label %505

501:                                              ; preds = %498
  %502 = load i8*, i8** %56, align 8
  %503 = load i32, i32* %57, align 4
  %504 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %502, i32 %503, i32 %504, i32 0, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0))
  br label %505

505:                                              ; preds = %501, %498
  br label %506

506:                                              ; preds = %505, %497
  br label %507

507:                                              ; preds = %506
  %508 = load i32*, i32** %18, align 8
  %509 = icmp ne i32* %508, null
  br i1 %509, label %510, label %512

510:                                              ; preds = %507
  %511 = load i32*, i32** %18, align 8
  store i32 0, i32* %511, align 4
  br label %512

512:                                              ; preds = %510, %507
  %513 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %514 = icmp ne %struct.read_result_t* %513, null
  br i1 %514, label %515, label %524

515:                                              ; preds = %512
  %516 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %517 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = and i32 %518, 1023
  %520 = or i32 %519, 536870912
  %521 = or i32 %520, 16777216
  %522 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %523 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %522, i32 0, i32 1
  store i32 %521, i32* %523, align 4
  br label %524

524:                                              ; preds = %515, %512
  br label %1894

525:                                              ; No predecessors!
  br label %631

526:                                              ; preds = %479
  %527 = call i32 @min_eyes(%struct.eyevalue* %60)
  %528 = icmp sge i32 %527, 2
  br i1 %528, label %529, label %562

529:                                              ; preds = %526
  %530 = load i32*, i32** %16, align 8
  store i32 1, i32* %530, align 4
  %531 = load i32*, i32** %17, align 8
  store i32 1, i32* %531, align 4
  %532 = load i32*, i32** %18, align 8
  store i32 0, i32* %532, align 4
  %533 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %533, %struct.SGFTree_t** @sgf_dumptree, align 8
  %534 = load i32, i32* %45, align 4
  store i32 %534, i32* @count_variations, align 4
  %535 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %536 = icmp ne %struct.SGFTree_t* %535, null
  br i1 %536, label %537, label %541

537:                                              ; preds = %529
  %538 = load i8*, i8** %56, align 8
  %539 = load i32, i32* %57, align 4
  %540 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %538, i32 %539, i32 %540, i32 0, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0))
  br label %541

541:                                              ; preds = %537, %529
  br label %542

542:                                              ; preds = %541
  %543 = load i32*, i32** %18, align 8
  %544 = icmp ne i32* %543, null
  br i1 %544, label %545, label %547

545:                                              ; preds = %542
  %546 = load i32*, i32** %18, align 8
  store i32 0, i32* %546, align 4
  br label %547

547:                                              ; preds = %545, %542
  %548 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %549 = icmp ne %struct.read_result_t* %548, null
  br i1 %549, label %550, label %560

550:                                              ; preds = %547
  %551 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %552 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = and i32 %553, 1023
  %555 = or i32 %554, 536870912
  %556 = or i32 %555, 16777216
  %557 = or i32 %556, 1048576
  %558 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %559 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %558, i32 0, i32 1
  store i32 %557, i32* %559, align 4
  br label %560

560:                                              ; preds = %550, %547
  br label %1894

561:                                              ; No predecessors!
  br label %630

562:                                              ; preds = %526
  %563 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 0
  %564 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %563, i32 0, i32 0
  %565 = load i32, i32* %564, align 16
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %629

567:                                              ; preds = %562
  %568 = load i32*, i32** %16, align 8
  store i32 1, i32* %568, align 4
  %569 = load i32*, i32** %17, align 8
  store i32 0, i32* %569, align 4
  %570 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 0
  %571 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %570, i32 0, i32 0
  %572 = load i32, i32* %571, align 16
  %573 = load i32*, i32** %18, align 8
  store i32 %572, i32* %573, align 4
  %574 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %574, %struct.SGFTree_t** @sgf_dumptree, align 8
  %575 = load i32, i32* %45, align 4
  store i32 %575, i32* @count_variations, align 4
  %576 = call i32 @min_eyes(%struct.eyevalue* %60)
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %578, label %589

578:                                              ; preds = %567
  %579 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %580 = icmp ne %struct.SGFTree_t* %579, null
  br i1 %580, label %581, label %588

581:                                              ; preds = %578
  %582 = load i8*, i8** %56, align 8
  %583 = load i32, i32* %57, align 4
  %584 = load i32, i32* %58, align 4
  %585 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 0
  %586 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 16
  call void @sgf_trace2(i8* %582, i32 %583, i32 %584, i32 %587, i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.53, i64 0, i64 0))
  br label %588

588:                                              ; preds = %581, %578
  br label %600

589:                                              ; preds = %567
  %590 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %591 = icmp ne %struct.SGFTree_t* %590, null
  br i1 %591, label %592, label %599

592:                                              ; preds = %589
  %593 = load i8*, i8** %56, align 8
  %594 = load i32, i32* %57, align 4
  %595 = load i32, i32* %58, align 4
  %596 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 0
  %597 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %596, i32 0, i32 0
  %598 = load i32, i32* %597, align 16
  call void @sgf_trace2(i8* %593, i32 %594, i32 %595, i32 %598, i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.54, i64 0, i64 0))
  br label %599

599:                                              ; preds = %592, %589
  br label %600

600:                                              ; preds = %599, %588
  br label %601

601:                                              ; preds = %600
  %602 = load i32*, i32** %18, align 8
  %603 = icmp ne i32* %602, null
  br i1 %603, label %604, label %609

604:                                              ; preds = %601
  %605 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 0
  %606 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 16
  %608 = load i32*, i32** %18, align 8
  store i32 %607, i32* %608, align 4
  br label %609

609:                                              ; preds = %604, %601
  %610 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %611 = icmp ne %struct.read_result_t* %610, null
  br i1 %611, label %612, label %627

612:                                              ; preds = %609
  %613 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %614 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  %616 = and i32 %615, 1023
  %617 = or i32 %616, 536870912
  %618 = or i32 %617, 16777216
  %619 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 0
  %620 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %619, i32 0, i32 0
  %621 = load i32, i32* %620, align 16
  %622 = and i32 %621, 1023
  %623 = shl i32 %622, 10
  %624 = or i32 %618, %623
  %625 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %626 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %625, i32 0, i32 1
  store i32 %624, i32* %626, align 4
  br label %627

627:                                              ; preds = %612, %609
  br label %1894

628:                                              ; No predecessors!
  br label %629

629:                                              ; preds = %628, %562
  br label %630

630:                                              ; preds = %629, %561
  br label %631

631:                                              ; preds = %630, %525
  br label %632

632:                                              ; preds = %631, %475, %472
  %633 = call i32 @min_eyes(%struct.eyevalue* %60)
  %634 = icmp sge i32 %633, 2
  br i1 %634, label %639, label %635

635:                                              ; preds = %632
  %636 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %637 = call i32 @owl_escape_route(%struct.local_owl_data* %636)
  %638 = icmp sge i32 %637, 5
  br i1 %638, label %639, label %761

639:                                              ; preds = %635, %632
  %640 = call i32 @max_eyes(%struct.eyevalue* %59)
  %641 = icmp slt i32 %640, 2
  br i1 %641, label %642, label %669

642:                                              ; preds = %639
  %643 = load i32*, i32** %16, align 8
  store i32 0, i32* %643, align 4
  %644 = load i32*, i32** %17, align 8
  store i32 1, i32* %644, align 4
  %645 = load i32*, i32** %18, align 8
  store i32 0, i32* %645, align 4
  %646 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %646, %struct.SGFTree_t** @sgf_dumptree, align 8
  %647 = load i32, i32* %45, align 4
  store i32 %647, i32* @count_variations, align 4
  %648 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %649 = icmp ne %struct.SGFTree_t* %648, null
  br i1 %649, label %650, label %654

650:                                              ; preds = %642
  %651 = load i8*, i8** %56, align 8
  %652 = load i32, i32* %57, align 4
  %653 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %651, i32 %652, i32 %653, i32 0, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.56, i64 0, i64 0))
  br label %654

654:                                              ; preds = %650, %642
  br label %655

655:                                              ; preds = %654
  %656 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %657 = icmp ne %struct.read_result_t* %656, null
  br i1 %657, label %658, label %667

658:                                              ; preds = %655
  %659 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %660 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %659, i32 0, i32 1
  %661 = load i32, i32* %660, align 4
  %662 = and i32 %661, 1023
  %663 = or i32 %662, 536870912
  %664 = or i32 %663, 1048576
  %665 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %666 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %665, i32 0, i32 1
  store i32 %664, i32* %666, align 4
  br label %667

667:                                              ; preds = %658, %655
  br label %1894

668:                                              ; No predecessors!
  br label %760

669:                                              ; preds = %639
  %670 = call i32 @min_eyes(%struct.eyevalue* %59)
  %671 = icmp sge i32 %670, 2
  br i1 %671, label %672, label %705

672:                                              ; preds = %669
  %673 = load i32*, i32** %16, align 8
  store i32 1, i32* %673, align 4
  %674 = load i32*, i32** %17, align 8
  store i32 1, i32* %674, align 4
  %675 = load i32*, i32** %18, align 8
  store i32 0, i32* %675, align 4
  %676 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %676, %struct.SGFTree_t** @sgf_dumptree, align 8
  %677 = load i32, i32* %45, align 4
  store i32 %677, i32* @count_variations, align 4
  %678 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %679 = icmp ne %struct.SGFTree_t* %678, null
  br i1 %679, label %680, label %684

680:                                              ; preds = %672
  %681 = load i8*, i8** %56, align 8
  %682 = load i32, i32* %57, align 4
  %683 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %681, i32 %682, i32 %683, i32 0, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0))
  br label %684

684:                                              ; preds = %680, %672
  br label %685

685:                                              ; preds = %684
  %686 = load i32*, i32** %18, align 8
  %687 = icmp ne i32* %686, null
  br i1 %687, label %688, label %690

688:                                              ; preds = %685
  %689 = load i32*, i32** %18, align 8
  store i32 0, i32* %689, align 4
  br label %690

690:                                              ; preds = %688, %685
  %691 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %692 = icmp ne %struct.read_result_t* %691, null
  br i1 %692, label %693, label %703

693:                                              ; preds = %690
  %694 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %695 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %694, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = and i32 %696, 1023
  %698 = or i32 %697, 536870912
  %699 = or i32 %698, 16777216
  %700 = or i32 %699, 1048576
  %701 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %702 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %701, i32 0, i32 1
  store i32 %700, i32* %702, align 4
  br label %703

703:                                              ; preds = %693, %690
  br label %1894

704:                                              ; No predecessors!
  br label %759

705:                                              ; preds = %669
  %706 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 0
  %707 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %706, i32 0, i32 0
  %708 = load i32, i32* %707, align 16
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %710, label %758

710:                                              ; preds = %705
  %711 = load i32*, i32** %16, align 8
  store i32 1, i32* %711, align 4
  %712 = load i32*, i32** %17, align 8
  store i32 1, i32* %712, align 4
  %713 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 0
  %714 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %713, i32 0, i32 0
  %715 = load i32, i32* %714, align 16
  %716 = load i32*, i32** %18, align 8
  store i32 %715, i32* %716, align 4
  %717 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %717, %struct.SGFTree_t** @sgf_dumptree, align 8
  %718 = load i32, i32* %45, align 4
  store i32 %718, i32* @count_variations, align 4
  %719 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %720 = icmp ne %struct.SGFTree_t* %719, null
  br i1 %720, label %721, label %728

721:                                              ; preds = %710
  %722 = load i8*, i8** %56, align 8
  %723 = load i32, i32* %57, align 4
  %724 = load i32, i32* %58, align 4
  %725 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 0
  %726 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %725, i32 0, i32 0
  %727 = load i32, i32* %726, align 16
  call void @sgf_trace2(i8* %722, i32 %723, i32 %724, i32 %727, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i64 0, i64 0))
  br label %728

728:                                              ; preds = %721, %710
  br label %729

729:                                              ; preds = %728
  %730 = load i32*, i32** %18, align 8
  %731 = icmp ne i32* %730, null
  br i1 %731, label %732, label %737

732:                                              ; preds = %729
  %733 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 0
  %734 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %733, i32 0, i32 0
  %735 = load i32, i32* %734, align 16
  %736 = load i32*, i32** %18, align 8
  store i32 %735, i32* %736, align 4
  br label %737

737:                                              ; preds = %732, %729
  %738 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %739 = icmp ne %struct.read_result_t* %738, null
  br i1 %739, label %740, label %756

740:                                              ; preds = %737
  %741 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %742 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %741, i32 0, i32 1
  %743 = load i32, i32* %742, align 4
  %744 = and i32 %743, 1023
  %745 = or i32 %744, 536870912
  %746 = or i32 %745, 16777216
  %747 = or i32 %746, 1048576
  %748 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 0
  %749 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %748, i32 0, i32 0
  %750 = load i32, i32* %749, align 16
  %751 = and i32 %750, 1023
  %752 = shl i32 %751, 10
  %753 = or i32 %747, %752
  %754 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %755 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %754, i32 0, i32 1
  store i32 %753, i32* %755, align 4
  br label %756

756:                                              ; preds = %740, %737
  br label %1894

757:                                              ; No predecessors!
  br label %758

758:                                              ; preds = %757, %705
  br label %759

759:                                              ; preds = %758, %704
  br label %760

760:                                              ; preds = %759, %668
  br label %761

761:                                              ; preds = %760, %635
  %762 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 0
  %763 = load i32, i32* %21, align 4
  %764 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %28, %struct.owl_move_data* %762, i32 %763, %struct.local_owl_data* %764, %struct.pattern_db* @owl_defendpat_db)
  store i32 0, i32* %40, align 4
  br label %765

765:                                              ; preds = %775, %761
  %766 = load i32, i32* %40, align 4
  %767 = icmp slt i32 %766, 2
  br i1 %767, label %768, label %778

768:                                              ; preds = %765
  %769 = load i32, i32* %21, align 4
  %770 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 0
  %771 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %28, i32 %769, %struct.owl_move_data* %770, i32 1)
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %774, label %773

773:                                              ; preds = %768
  br label %778

774:                                              ; preds = %768
  br label %775

775:                                              ; preds = %774
  %776 = load i32, i32* %40, align 4
  %777 = add nsw i32 %776, 1
  store i32 %777, i32* %40, align 4
  br label %765, !llvm.loop !8

778:                                              ; preds = %773, %765
  %779 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 0
  %780 = load i32, i32* %21, align 4
  %781 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %27, %struct.owl_move_data* %779, i32 %780, %struct.local_owl_data* %781, %struct.pattern_db* @owl_attackpat_db)
  store i32 0, i32* %40, align 4
  br label %782

782:                                              ; preds = %792, %778
  %783 = load i32, i32* %40, align 4
  %784 = icmp slt i32 %783, 2
  br i1 %784, label %785, label %795

785:                                              ; preds = %782
  %786 = load i32, i32* %21, align 4
  %787 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 0
  %788 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %27, i32 %786, %struct.owl_move_data* %787, i32 1)
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %791, label %790

790:                                              ; preds = %785
  br label %795

791:                                              ; preds = %785
  br label %792

792:                                              ; preds = %791
  %793 = load i32, i32* %40, align 4
  %794 = add nsw i32 %793, 1
  store i32 %794, i32* %40, align 4
  br label %782, !llvm.loop !9

795:                                              ; preds = %790, %782
  store i32 0, i32* %40, align 4
  br label %796

796:                                              ; preds = %889, %795
  %797 = load i32, i32* %40, align 4
  %798 = icmp slt i32 %797, 2
  br i1 %798, label %799, label %806

799:                                              ; preds = %796
  %800 = load i32, i32* %40, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %801
  %803 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %802, i32 0, i32 0
  %804 = load i32, i32* %803, align 16
  %805 = icmp ne i32 %804, 0
  br label %806

806:                                              ; preds = %799, %796
  %807 = phi i1 [ false, %796 ], [ %805, %799 ]
  br i1 %807, label %808, label %892

808:                                              ; preds = %806
  %809 = load i32, i32* %40, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %810
  %812 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %811, i32 0, i32 0
  %813 = load i32, i32* %812, align 16
  %814 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %815 = call i32 @liberty_of_goal(i32 %813, %struct.local_owl_data* %814)
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %817, label %851

817:                                              ; preds = %808
  %818 = load i32, i32* %40, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %819
  %821 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %820, i32 0, i32 0
  %822 = load i32, i32* %821, align 16
  %823 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %824 = call i32 @liberty_of_goal(i32 %822, %struct.local_owl_data* %823)
  %825 = icmp ne i32 %824, 0
  br i1 %825, label %838, label %826

826:                                              ; preds = %817
  %827 = load i32, i32* %40, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %828
  %830 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %829, i32 0, i32 0
  %831 = load i32, i32* %830, align 16
  %832 = load i32, i32* %21, align 4
  %833 = call i32 @safe_move(i32 %831, i32 %832)
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %835, label %836

835:                                              ; preds = %826
  store i32 1, i32* %34, align 4
  br label %837

836:                                              ; preds = %826
  store i32 1, i32* %35, align 4
  br label %837

837:                                              ; preds = %836, %835
  br label %850

838:                                              ; preds = %817
  %839 = load i32, i32* %40, align 4
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %840
  %842 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %841, i32 0, i32 0
  %843 = load i32, i32* %842, align 16
  %844 = load i32, i32* %21, align 4
  %845 = call i32 @safe_move(i32 %843, i32 %844)
  %846 = icmp ne i32 %845, 0
  br i1 %846, label %847, label %848

847:                                              ; preds = %838
  store i32 1, i32* %36, align 4
  br label %849

848:                                              ; preds = %838
  store i32 1, i32* %37, align 4
  br label %849

849:                                              ; preds = %848, %847
  br label %850

850:                                              ; preds = %849, %837
  br label %851

851:                                              ; preds = %850, %808
  %852 = load i32, i32* %40, align 4
  %853 = sext i32 %852 to i64
  %854 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %853
  %855 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %854, i32 0, i32 0
  %856 = load i32, i32* %855, align 16
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [400 x i8], [400 x i8]* %39, i64 0, i64 %857
  store i8 1, i8* %858, align 1
  %859 = load i32, i32* %40, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %860
  %862 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %861, i32 0, i32 0
  %863 = load i32, i32* %862, align 16
  %864 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %865 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %866 = load i32, i32* %40, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %867
  %869 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %868, i32 0, i32 1
  %870 = load i32, i32* %869, align 4
  %871 = call i32 @semeai_move_value(i32 %863, %struct.local_owl_data* %864, %struct.local_owl_data* %865, i32 %870)
  store i32 %871, i32* %46, align 4
  %872 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %873 = load i32, i32* %40, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %874
  %876 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %875, i32 0, i32 0
  %877 = load i32, i32* %876, align 16
  %878 = load i32, i32* %46, align 4
  %879 = load i32, i32* %40, align 4
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %880
  %882 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %881, i32 0, i32 3
  %883 = load i32, i32* %882, align 16
  %884 = load i32, i32* %40, align 4
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %23, i64 0, i64 %885
  %887 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %886, i32 0, i32 4
  %888 = load i32, i32* %887, align 4
  call void @owl_add_move(%struct.owl_move_data* %872, i32 %877, i32 %878, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.57, i64 0, i64 0), i32 %883, i32 %888, i32 0)
  br label %889

889:                                              ; preds = %851
  %890 = load i32, i32* %40, align 4
  %891 = add nsw i32 %890, 1
  store i32 %891, i32* %40, align 4
  br label %796, !llvm.loop !10

892:                                              ; preds = %806
  store i32 0, i32* %40, align 4
  br label %893

893:                                              ; preds = %998, %892
  %894 = load i32, i32* %40, align 4
  %895 = icmp slt i32 %894, 2
  br i1 %895, label %896, label %903

896:                                              ; preds = %893
  %897 = load i32, i32* %40, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %898
  %900 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %899, i32 0, i32 0
  %901 = load i32, i32* %900, align 16
  %902 = icmp ne i32 %901, 0
  br label %903

903:                                              ; preds = %896, %893
  %904 = phi i1 [ false, %893 ], [ %902, %896 ]
  br i1 %904, label %905, label %1001

905:                                              ; preds = %903
  %906 = load i32, i32* %40, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %907
  %909 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %908, i32 0, i32 0
  %910 = load i32, i32* %909, align 16
  %911 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %912 = call i32 @liberty_of_goal(i32 %910, %struct.local_owl_data* %911)
  %913 = icmp ne i32 %912, 0
  br i1 %913, label %914, label %948

914:                                              ; preds = %905
  %915 = load i32, i32* %40, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %916
  %918 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %917, i32 0, i32 0
  %919 = load i32, i32* %918, align 16
  %920 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %921 = call i32 @liberty_of_goal(i32 %919, %struct.local_owl_data* %920)
  %922 = icmp ne i32 %921, 0
  br i1 %922, label %935, label %923

923:                                              ; preds = %914
  %924 = load i32, i32* %40, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %925
  %927 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %926, i32 0, i32 0
  %928 = load i32, i32* %927, align 16
  %929 = load i32, i32* %21, align 4
  %930 = call i32 @safe_move(i32 %928, i32 %929)
  %931 = icmp ne i32 %930, 0
  br i1 %931, label %932, label %933

932:                                              ; preds = %923
  store i32 1, i32* %34, align 4
  br label %934

933:                                              ; preds = %923
  store i32 1, i32* %35, align 4
  br label %934

934:                                              ; preds = %933, %932
  br label %947

935:                                              ; preds = %914
  %936 = load i32, i32* %40, align 4
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %937
  %939 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %938, i32 0, i32 0
  %940 = load i32, i32* %939, align 16
  %941 = load i32, i32* %21, align 4
  %942 = call i32 @safe_move(i32 %940, i32 %941)
  %943 = icmp ne i32 %942, 0
  br i1 %943, label %944, label %945

944:                                              ; preds = %935
  store i32 1, i32* %36, align 4
  br label %946

945:                                              ; preds = %935
  store i32 1, i32* %37, align 4
  br label %946

946:                                              ; preds = %945, %944
  br label %947

947:                                              ; preds = %946, %934
  br label %948

948:                                              ; preds = %947, %905
  %949 = load i32, i32* %40, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %950
  %952 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %951, i32 0, i32 0
  %953 = load i32, i32* %952, align 16
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds [400 x i8], [400 x i8]* %39, i64 0, i64 %954
  store i8 1, i8* %955, align 1
  %956 = load i32, i32* %40, align 4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %957
  %959 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %958, i32 0, i32 0
  %960 = load i32, i32* %959, align 16
  %961 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %962 = call i32 @liberty_of_goal(i32 %960, %struct.local_owl_data* %961)
  %963 = icmp ne i32 %962, 0
  br i1 %963, label %964, label %965

964:                                              ; preds = %948
  store i32 2, i32* %43, align 4
  br label %966

965:                                              ; preds = %948
  store i32 0, i32* %43, align 4
  br label %966

966:                                              ; preds = %965, %964
  %967 = load i32, i32* %40, align 4
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %968
  %970 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %969, i32 0, i32 0
  %971 = load i32, i32* %970, align 16
  %972 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %973 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %974 = load i32, i32* %40, align 4
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %975
  %977 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %976, i32 0, i32 1
  %978 = load i32, i32* %977, align 4
  %979 = call i32 @semeai_move_value(i32 %971, %struct.local_owl_data* %972, %struct.local_owl_data* %973, i32 %978)
  store i32 %979, i32* %46, align 4
  %980 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %981 = load i32, i32* %40, align 4
  %982 = sext i32 %981 to i64
  %983 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %982
  %984 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %983, i32 0, i32 0
  %985 = load i32, i32* %984, align 16
  %986 = load i32, i32* %46, align 4
  %987 = load i32, i32* %40, align 4
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %988
  %990 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %989, i32 0, i32 2
  %991 = load i8*, i8** %990, align 8
  %992 = load i32, i32* %43, align 4
  %993 = load i32, i32* %40, align 4
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %24, i64 0, i64 %994
  %996 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %995, i32 0, i32 4
  %997 = load i32, i32* %996, align 4
  call void @owl_add_move(%struct.owl_move_data* %980, i32 %985, i32 %986, i8* %991, i32 %992, i32 %997, i32 0)
  br label %998

998:                                              ; preds = %966
  %999 = load i32, i32* %40, align 4
  %1000 = add nsw i32 %999, 1
  store i32 %1000, i32* %40, align 4
  br label %893, !llvm.loop !11

1001:                                             ; preds = %903
  store i32 0, i32* %40, align 4
  br label %1002

1002:                                             ; preds = %1100, %1001
  %1003 = load i32, i32* %40, align 4
  %1004 = icmp slt i32 %1003, 2
  br i1 %1004, label %1005, label %1012

1005:                                             ; preds = %1002
  %1006 = load i32, i32* %40, align 4
  %1007 = sext i32 %1006 to i64
  %1008 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1007
  %1009 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1008, i32 0, i32 0
  %1010 = load i32, i32* %1009, align 16
  %1011 = icmp ne i32 %1010, 0
  br label %1012

1012:                                             ; preds = %1005, %1002
  %1013 = phi i1 [ false, %1002 ], [ %1011, %1005 ]
  br i1 %1013, label %1014, label %1103

1014:                                             ; preds = %1012
  %1015 = load i32, i32* %40, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1016
  %1018 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1017, i32 0, i32 0
  %1019 = load i32, i32* %1018, align 16
  %1020 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1021 = call i32 @liberty_of_goal(i32 %1019, %struct.local_owl_data* %1020)
  %1022 = icmp ne i32 %1021, 0
  br i1 %1022, label %1023, label %1057

1023:                                             ; preds = %1014
  %1024 = load i32, i32* %40, align 4
  %1025 = sext i32 %1024 to i64
  %1026 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1025
  %1027 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1026, i32 0, i32 0
  %1028 = load i32, i32* %1027, align 16
  %1029 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1030 = call i32 @liberty_of_goal(i32 %1028, %struct.local_owl_data* %1029)
  %1031 = icmp ne i32 %1030, 0
  br i1 %1031, label %1044, label %1032

1032:                                             ; preds = %1023
  %1033 = load i32, i32* %40, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1034
  %1036 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1035, i32 0, i32 0
  %1037 = load i32, i32* %1036, align 16
  %1038 = load i32, i32* %21, align 4
  %1039 = call i32 @safe_move(i32 %1037, i32 %1038)
  %1040 = icmp ne i32 %1039, 0
  br i1 %1040, label %1041, label %1042

1041:                                             ; preds = %1032
  store i32 1, i32* %34, align 4
  br label %1043

1042:                                             ; preds = %1032
  store i32 1, i32* %35, align 4
  br label %1043

1043:                                             ; preds = %1042, %1041
  br label %1056

1044:                                             ; preds = %1023
  %1045 = load i32, i32* %40, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1046
  %1048 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1047, i32 0, i32 0
  %1049 = load i32, i32* %1048, align 16
  %1050 = load i32, i32* %21, align 4
  %1051 = call i32 @safe_move(i32 %1049, i32 %1050)
  %1052 = icmp ne i32 %1051, 0
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1044
  store i32 1, i32* %36, align 4
  br label %1055

1054:                                             ; preds = %1044
  store i32 1, i32* %37, align 4
  br label %1055

1055:                                             ; preds = %1054, %1053
  br label %1056

1056:                                             ; preds = %1055, %1043
  br label %1057

1057:                                             ; preds = %1056, %1014
  %1058 = load i32, i32* %40, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1059
  %1061 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1060, i32 0, i32 0
  %1062 = load i32, i32* %1061, align 16
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds [400 x i8], [400 x i8]* %39, i64 0, i64 %1063
  store i8 1, i8* %1064, align 1
  %1065 = load i32, i32* %40, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1066
  %1068 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1067, i32 0, i32 0
  %1069 = load i32, i32* %1068, align 16
  %1070 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1071 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1072 = load i32, i32* %40, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1073
  %1075 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1074, i32 0, i32 1
  %1076 = load i32, i32* %1075, align 4
  %1077 = call i32 @semeai_move_value(i32 %1069, %struct.local_owl_data* %1070, %struct.local_owl_data* %1071, i32 %1076)
  store i32 %1077, i32* %46, align 4
  %1078 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %1079 = load i32, i32* %40, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1080
  %1082 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1081, i32 0, i32 0
  %1083 = load i32, i32* %1082, align 16
  %1084 = load i32, i32* %46, align 4
  %1085 = load i32, i32* %40, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1086
  %1088 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1087, i32 0, i32 2
  %1089 = load i8*, i8** %1088, align 8
  %1090 = load i32, i32* %40, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1091
  %1093 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1092, i32 0, i32 3
  %1094 = load i32, i32* %1093, align 16
  %1095 = load i32, i32* %40, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %25, i64 0, i64 %1096
  %1098 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1097, i32 0, i32 4
  %1099 = load i32, i32* %1098, align 4
  call void @owl_add_move(%struct.owl_move_data* %1078, i32 %1083, i32 %1084, i8* %1089, i32 %1094, i32 %1099, i32 0)
  br label %1100

1100:                                             ; preds = %1057
  %1101 = load i32, i32* %40, align 4
  %1102 = add nsw i32 %1101, 1
  store i32 %1102, i32* %40, align 4
  br label %1002, !llvm.loop !12

1103:                                             ; preds = %1012
  store i32 0, i32* %40, align 4
  br label %1104

1104:                                             ; preds = %1209, %1103
  %1105 = load i32, i32* %40, align 4
  %1106 = icmp slt i32 %1105, 2
  br i1 %1106, label %1107, label %1114

1107:                                             ; preds = %1104
  %1108 = load i32, i32* %40, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1109
  %1111 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1110, i32 0, i32 0
  %1112 = load i32, i32* %1111, align 16
  %1113 = icmp ne i32 %1112, 0
  br label %1114

1114:                                             ; preds = %1107, %1104
  %1115 = phi i1 [ false, %1104 ], [ %1113, %1107 ]
  br i1 %1115, label %1116, label %1212

1116:                                             ; preds = %1114
  %1117 = load i32, i32* %40, align 4
  %1118 = sext i32 %1117 to i64
  %1119 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1118
  %1120 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1119, i32 0, i32 0
  %1121 = load i32, i32* %1120, align 16
  %1122 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1123 = call i32 @liberty_of_goal(i32 %1121, %struct.local_owl_data* %1122)
  %1124 = icmp ne i32 %1123, 0
  br i1 %1124, label %1125, label %1159

1125:                                             ; preds = %1116
  %1126 = load i32, i32* %40, align 4
  %1127 = sext i32 %1126 to i64
  %1128 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1127
  %1129 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1128, i32 0, i32 0
  %1130 = load i32, i32* %1129, align 16
  %1131 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1132 = call i32 @liberty_of_goal(i32 %1130, %struct.local_owl_data* %1131)
  %1133 = icmp ne i32 %1132, 0
  br i1 %1133, label %1146, label %1134

1134:                                             ; preds = %1125
  %1135 = load i32, i32* %40, align 4
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1136
  %1138 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1137, i32 0, i32 0
  %1139 = load i32, i32* %1138, align 16
  %1140 = load i32, i32* %21, align 4
  %1141 = call i32 @safe_move(i32 %1139, i32 %1140)
  %1142 = icmp ne i32 %1141, 0
  br i1 %1142, label %1143, label %1144

1143:                                             ; preds = %1134
  store i32 1, i32* %34, align 4
  br label %1145

1144:                                             ; preds = %1134
  store i32 1, i32* %35, align 4
  br label %1145

1145:                                             ; preds = %1144, %1143
  br label %1158

1146:                                             ; preds = %1125
  %1147 = load i32, i32* %40, align 4
  %1148 = sext i32 %1147 to i64
  %1149 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1148
  %1150 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1149, i32 0, i32 0
  %1151 = load i32, i32* %1150, align 16
  %1152 = load i32, i32* %21, align 4
  %1153 = call i32 @safe_move(i32 %1151, i32 %1152)
  %1154 = icmp ne i32 %1153, 0
  br i1 %1154, label %1155, label %1156

1155:                                             ; preds = %1146
  store i32 1, i32* %36, align 4
  br label %1157

1156:                                             ; preds = %1146
  store i32 1, i32* %37, align 4
  br label %1157

1157:                                             ; preds = %1156, %1155
  br label %1158

1158:                                             ; preds = %1157, %1145
  br label %1159

1159:                                             ; preds = %1158, %1116
  %1160 = load i32, i32* %40, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1161
  %1163 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1162, i32 0, i32 0
  %1164 = load i32, i32* %1163, align 16
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds [400 x i8], [400 x i8]* %39, i64 0, i64 %1165
  store i8 1, i8* %1166, align 1
  %1167 = load i32, i32* %40, align 4
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1168
  %1170 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1169, i32 0, i32 0
  %1171 = load i32, i32* %1170, align 16
  %1172 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1173 = call i32 @liberty_of_goal(i32 %1171, %struct.local_owl_data* %1172)
  %1174 = icmp ne i32 %1173, 0
  br i1 %1174, label %1175, label %1176

1175:                                             ; preds = %1159
  store i32 2, i32* %43, align 4
  br label %1177

1176:                                             ; preds = %1159
  store i32 0, i32* %43, align 4
  br label %1177

1177:                                             ; preds = %1176, %1175
  %1178 = load i32, i32* %40, align 4
  %1179 = sext i32 %1178 to i64
  %1180 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1179
  %1181 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1180, i32 0, i32 0
  %1182 = load i32, i32* %1181, align 16
  %1183 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1184 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1185 = load i32, i32* %40, align 4
  %1186 = sext i32 %1185 to i64
  %1187 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1186
  %1188 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1187, i32 0, i32 1
  %1189 = load i32, i32* %1188, align 4
  %1190 = call i32 @semeai_move_value(i32 %1182, %struct.local_owl_data* %1183, %struct.local_owl_data* %1184, i32 %1189)
  store i32 %1190, i32* %46, align 4
  %1191 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %1192 = load i32, i32* %40, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1193
  %1195 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1194, i32 0, i32 0
  %1196 = load i32, i32* %1195, align 16
  %1197 = load i32, i32* %46, align 4
  %1198 = load i32, i32* %40, align 4
  %1199 = sext i32 %1198 to i64
  %1200 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1199
  %1201 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1200, i32 0, i32 2
  %1202 = load i8*, i8** %1201, align 8
  %1203 = load i32, i32* %43, align 4
  %1204 = load i32, i32* %40, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %26, i64 0, i64 %1205
  %1207 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1206, i32 0, i32 4
  %1208 = load i32, i32* %1207, align 4
  call void @owl_add_move(%struct.owl_move_data* %1191, i32 %1196, i32 %1197, i8* %1202, i32 %1203, i32 %1208, i32 0)
  br label %1209

1209:                                             ; preds = %1177
  %1210 = load i32, i32* %40, align 4
  %1211 = add nsw i32 %1210, 1
  store i32 %1211, i32* %40, align 4
  br label %1104, !llvm.loop !13

1212:                                             ; preds = %1114
  %1213 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %1214 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1213, i32 0, i32 0
  %1215 = load i32, i32* %1214, align 16
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1217, label %1218

1217:                                             ; preds = %1212
  store i32 0, i32* %20, align 4
  br label %1218

1218:                                             ; preds = %1217, %1212
  br label %1219

1219:                                             ; preds = %1218, %313
  %1220 = load i32, i32* %34, align 4
  %1221 = icmp ne i32 %1220, 0
  br i1 %1221, label %1323, label %1222

1222:                                             ; preds = %1219
  %1223 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %1224 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1223, i32 0, i32 1
  %1225 = load i32, i32* %1224, align 4
  %1226 = icmp slt i32 %1225, 100
  br i1 %1226, label %1227, label %1323

1227:                                             ; preds = %1222
  store i32 0, i32* %41, align 4
  br label %1228

1228:                                             ; preds = %1319, %1227
  %1229 = load i32, i32* %34, align 4
  %1230 = icmp ne i32 %1229, 0
  br i1 %1230, label %1235, label %1231

1231:                                             ; preds = %1228
  %1232 = load i32, i32* %41, align 4
  %1233 = load i32, i32* @board_size, align 4
  %1234 = icmp slt i32 %1232, %1233
  br label %1235

1235:                                             ; preds = %1231, %1228
  %1236 = phi i1 [ false, %1228 ], [ %1234, %1231 ]
  br i1 %1236, label %1237, label %1322

1237:                                             ; preds = %1235
  store i32 0, i32* %42, align 4
  br label %1238

1238:                                             ; preds = %1315, %1237
  %1239 = load i32, i32* %34, align 4
  %1240 = icmp ne i32 %1239, 0
  br i1 %1240, label %1245, label %1241

1241:                                             ; preds = %1238
  %1242 = load i32, i32* %42, align 4
  %1243 = load i32, i32* @board_size, align 4
  %1244 = icmp slt i32 %1242, %1243
  br label %1245

1245:                                             ; preds = %1241, %1238
  %1246 = phi i1 [ false, %1238 ], [ %1244, %1241 ]
  br i1 %1246, label %1247, label %1318

1247:                                             ; preds = %1245
  %1248 = load i32, i32* %41, align 4
  %1249 = mul nsw i32 %1248, 20
  %1250 = add nsw i32 21, %1249
  %1251 = load i32, i32* %42, align 4
  %1252 = add nsw i32 %1250, %1251
  store i32 %1252, i32* %61, align 4
  %1253 = load i32, i32* %61, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1254
  %1256 = load i8, i8* %1255, align 1
  %1257 = zext i8 %1256 to i32
  %1258 = icmp eq i32 %1257, 0
  br i1 %1258, label %1259, label %1314

1259:                                             ; preds = %1247
  %1260 = load i32, i32* %61, align 4
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds [400 x i8], [400 x i8]* %39, i64 0, i64 %1261
  %1263 = load i8, i8* %1262, align 1
  %1264 = icmp ne i8 %1263, 0
  br i1 %1264, label %1314, label %1265

1265:                                             ; preds = %1259
  %1266 = load i32, i32* %61, align 4
  %1267 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1268 = call i32 @liberty_of_goal(i32 %1266, %struct.local_owl_data* %1267)
  %1269 = icmp ne i32 %1268, 0
  br i1 %1269, label %1270, label %1313

1270:                                             ; preds = %1265
  %1271 = load i32, i32* %61, align 4
  %1272 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1273 = call i32 @liberty_of_goal(i32 %1271, %struct.local_owl_data* %1272)
  %1274 = icmp ne i32 %1273, 0
  br i1 %1274, label %1302, label %1275

1275:                                             ; preds = %1270
  %1276 = load i32, i32* %61, align 4
  %1277 = load i32, i32* %21, align 4
  %1278 = call i32 @safe_move(i32 %1276, i32 %1277)
  %1279 = icmp ne i32 %1278, 0
  br i1 %1279, label %1280, label %1283

1280:                                             ; preds = %1275
  store i32 1, i32* %34, align 4
  %1281 = load i32, i32* %61, align 4
  %1282 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %30, i32 0, i32 0
  store i32 %1281, i32* %1282, align 8
  br label %1301

1283:                                             ; preds = %1275
  %1284 = load i32, i32* %34, align 4
  %1285 = icmp ne i32 %1284, 0
  br i1 %1285, label %1300, label %1286

1286:                                             ; preds = %1283
  %1287 = load i32, i32* %38, align 4
  %1288 = icmp ne i32 %1287, 0
  br i1 %1288, label %1299, label %1289

1289:                                             ; preds = %1286
  %1290 = load i32, i32* %12, align 4
  %1291 = load i32, i32* %61, align 4
  %1292 = call i32 @find_semeai_backfilling_move(i32 %1290, i32 %1291)
  %1293 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %32, i32 0, i32 0
  store i32 %1292, i32* %1293, align 8
  %1294 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %32, i32 0, i32 0
  %1295 = load i32, i32* %1294, align 8
  %1296 = icmp ne i32 %1295, 0
  br i1 %1296, label %1297, label %1298

1297:                                             ; preds = %1289
  store i32 1, i32* %38, align 4
  br label %1298

1298:                                             ; preds = %1297, %1289
  br label %1299

1299:                                             ; preds = %1298, %1286
  br label %1300

1300:                                             ; preds = %1299, %1283
  br label %1301

1301:                                             ; preds = %1300, %1280
  br label %1312

1302:                                             ; preds = %1270
  %1303 = load i32, i32* %61, align 4
  %1304 = load i32, i32* %21, align 4
  %1305 = call i32 @safe_move(i32 %1303, i32 %1304)
  %1306 = icmp ne i32 %1305, 0
  br i1 %1306, label %1307, label %1310

1307:                                             ; preds = %1302
  store i32 1, i32* %36, align 4
  %1308 = load i32, i32* %61, align 4
  %1309 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %31, i32 0, i32 0
  store i32 %1308, i32* %1309, align 8
  br label %1311

1310:                                             ; preds = %1302
  store i32 1, i32* %37, align 4
  br label %1311

1311:                                             ; preds = %1310, %1307
  br label %1312

1312:                                             ; preds = %1311, %1301
  br label %1313

1313:                                             ; preds = %1312, %1265
  br label %1314

1314:                                             ; preds = %1313, %1259, %1247
  br label %1315

1315:                                             ; preds = %1314
  %1316 = load i32, i32* %42, align 4
  %1317 = add nsw i32 %1316, 1
  store i32 %1317, i32* %42, align 4
  br label %1238, !llvm.loop !14

1318:                                             ; preds = %1245
  br label %1319

1319:                                             ; preds = %1318
  %1320 = load i32, i32* %41, align 4
  %1321 = add nsw i32 %1320, 1
  store i32 %1321, i32* %41, align 4
  br label %1228, !llvm.loop !15

1322:                                             ; preds = %1235
  br label %1323

1323:                                             ; preds = %1322, %1222, %1219
  %1324 = getelementptr inbounds [400 x i32], [400 x i32]* %62, i64 0, i64 0
  %1325 = bitcast i32* %1324 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %1325, i8 0, i64 1600, i1 false)
  store i32 0, i32* %41, align 4
  br label %1326

1326:                                             ; preds = %1497, %1323
  %1327 = load i32, i32* %41, align 4
  %1328 = load i32, i32* @board_size, align 4
  %1329 = icmp slt i32 %1327, %1328
  br i1 %1329, label %1330, label %1500

1330:                                             ; preds = %1326
  store i32 0, i32* %42, align 4
  br label %1331

1331:                                             ; preds = %1493, %1330
  %1332 = load i32, i32* %42, align 4
  %1333 = load i32, i32* @board_size, align 4
  %1334 = icmp slt i32 %1332, %1333
  br i1 %1334, label %1335, label %1496

1335:                                             ; preds = %1331
  %1336 = load i32, i32* %41, align 4
  %1337 = mul nsw i32 %1336, 20
  %1338 = add nsw i32 21, %1337
  %1339 = load i32, i32* %42, align 4
  %1340 = add nsw i32 %1338, %1339
  store i32 %1340, i32* %65, align 4
  %1341 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1342 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1341, i32 0, i32 0
  %1343 = load i32, i32* %65, align 4
  %1344 = sext i32 %1343 to i64
  %1345 = getelementptr inbounds [400 x i8], [400 x i8]* %1342, i64 0, i64 %1344
  %1346 = load i8, i8* %1345, align 1
  %1347 = sext i8 %1346 to i32
  %1348 = icmp ne i32 %1347, 0
  br i1 %1348, label %1349, label %1492

1349:                                             ; preds = %1335
  %1350 = load i32, i32* %65, align 4
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1351
  %1353 = load i8, i8* %1352, align 1
  %1354 = zext i8 %1353 to i32
  %1355 = load i32, i32* %22, align 4
  %1356 = icmp eq i32 %1354, %1355
  br i1 %1356, label %1357, label %1492

1357:                                             ; preds = %1349
  %1358 = load i32, i32* %65, align 4
  %1359 = call i32 @find_origin(i32 %1358)
  store i32 %1359, i32* %63, align 4
  %1360 = load i32, i32* %63, align 4
  %1361 = sext i32 %1360 to i64
  %1362 = getelementptr inbounds [400 x i32], [400 x i32]* %62, i64 0, i64 %1361
  %1363 = load i32, i32* %1362, align 4
  %1364 = icmp ne i32 %1363, 0
  br i1 %1364, label %1491, label %1365

1365:                                             ; preds = %1357
  %1366 = load i32, i32* %65, align 4
  %1367 = add nsw i32 %1366, 20
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1368
  %1370 = load i8, i8* %1369, align 1
  %1371 = zext i8 %1370 to i32
  %1372 = icmp ne i32 %1371, 3
  br i1 %1372, label %1373, label %1383

1373:                                             ; preds = %1365
  %1374 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1375 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1374, i32 0, i32 0
  %1376 = load i32, i32* %65, align 4
  %1377 = add nsw i32 %1376, 20
  %1378 = sext i32 %1377 to i64
  %1379 = getelementptr inbounds [400 x i8], [400 x i8]* %1375, i64 0, i64 %1378
  %1380 = load i8, i8* %1379, align 1
  %1381 = sext i8 %1380 to i32
  %1382 = icmp ne i32 %1381, 0
  br i1 %1382, label %1437, label %1383

1383:                                             ; preds = %1373, %1365
  %1384 = load i32, i32* %65, align 4
  %1385 = sub nsw i32 %1384, 1
  %1386 = sext i32 %1385 to i64
  %1387 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1386
  %1388 = load i8, i8* %1387, align 1
  %1389 = zext i8 %1388 to i32
  %1390 = icmp ne i32 %1389, 3
  br i1 %1390, label %1391, label %1401

1391:                                             ; preds = %1383
  %1392 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1393 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1392, i32 0, i32 0
  %1394 = load i32, i32* %65, align 4
  %1395 = sub nsw i32 %1394, 1
  %1396 = sext i32 %1395 to i64
  %1397 = getelementptr inbounds [400 x i8], [400 x i8]* %1393, i64 0, i64 %1396
  %1398 = load i8, i8* %1397, align 1
  %1399 = sext i8 %1398 to i32
  %1400 = icmp ne i32 %1399, 0
  br i1 %1400, label %1437, label %1401

1401:                                             ; preds = %1391, %1383
  %1402 = load i32, i32* %65, align 4
  %1403 = sub nsw i32 %1402, 20
  %1404 = sext i32 %1403 to i64
  %1405 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1404
  %1406 = load i8, i8* %1405, align 1
  %1407 = zext i8 %1406 to i32
  %1408 = icmp ne i32 %1407, 3
  br i1 %1408, label %1409, label %1419

1409:                                             ; preds = %1401
  %1410 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1411 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1410, i32 0, i32 0
  %1412 = load i32, i32* %65, align 4
  %1413 = sub nsw i32 %1412, 20
  %1414 = sext i32 %1413 to i64
  %1415 = getelementptr inbounds [400 x i8], [400 x i8]* %1411, i64 0, i64 %1414
  %1416 = load i8, i8* %1415, align 1
  %1417 = sext i8 %1416 to i32
  %1418 = icmp ne i32 %1417, 0
  br i1 %1418, label %1437, label %1419

1419:                                             ; preds = %1409, %1401
  %1420 = load i32, i32* %65, align 4
  %1421 = add nsw i32 %1420, 1
  %1422 = sext i32 %1421 to i64
  %1423 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1422
  %1424 = load i8, i8* %1423, align 1
  %1425 = zext i8 %1424 to i32
  %1426 = icmp ne i32 %1425, 3
  br i1 %1426, label %1427, label %1491

1427:                                             ; preds = %1419
  %1428 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1429 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1428, i32 0, i32 0
  %1430 = load i32, i32* %65, align 4
  %1431 = add nsw i32 %1430, 1
  %1432 = sext i32 %1431 to i64
  %1433 = getelementptr inbounds [400 x i8], [400 x i8]* %1429, i64 0, i64 %1432
  %1434 = load i8, i8* %1433, align 1
  %1435 = sext i8 %1434 to i32
  %1436 = icmp ne i32 %1435, 0
  br i1 %1436, label %1437, label %1491

1437:                                             ; preds = %1427, %1409, %1391, %1373
  %1438 = load i32, i32* %63, align 4
  %1439 = call i32 @countlib(i32 %1438)
  %1440 = icmp slt i32 %1439, 3
  br i1 %1440, label %1441, label %1486

1441:                                             ; preds = %1437
  %1442 = load i32, i32* %63, align 4
  %1443 = call i32 @attack(i32 %1442, i32* %64)
  %1444 = icmp ne i32 %1443, 0
  br i1 %1444, label %1445, label %1486

1445:                                             ; preds = %1441
  %1446 = load i32*, i32** %16, align 8
  store i32 1, i32* %1446, align 4
  %1447 = load i32*, i32** %17, align 8
  store i32 0, i32* %1447, align 4
  %1448 = load i32, i32* %64, align 4
  %1449 = load i32*, i32** %18, align 8
  store i32 %1448, i32* %1449, align 4
  %1450 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %1450, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1451 = load i32, i32* %45, align 4
  store i32 %1451, i32* @count_variations, align 4
  %1452 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1453 = icmp ne %struct.SGFTree_t* %1452, null
  br i1 %1453, label %1454, label %1459

1454:                                             ; preds = %1445
  %1455 = load i8*, i8** %56, align 8
  %1456 = load i32, i32* %57, align 4
  %1457 = load i32, i32* %58, align 4
  %1458 = load i32, i32* %64, align 4
  call void @sgf_trace2(i8* %1455, i32 %1456, i32 %1457, i32 %1458, i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.58, i64 0, i64 0))
  br label %1459

1459:                                             ; preds = %1454, %1445
  %1460 = load i32, i32* %21, align 4
  call void @close_pattern_list(i32 %1460, %struct.matched_patterns_list_data* %28)
  %1461 = load i32, i32* %21, align 4
  call void @close_pattern_list(i32 %1461, %struct.matched_patterns_list_data* %27)
  br label %1462

1462:                                             ; preds = %1459
  %1463 = load i32*, i32** %18, align 8
  %1464 = icmp ne i32* %1463, null
  br i1 %1464, label %1465, label %1468

1465:                                             ; preds = %1462
  %1466 = load i32, i32* %64, align 4
  %1467 = load i32*, i32** %18, align 8
  store i32 %1466, i32* %1467, align 4
  br label %1468

1468:                                             ; preds = %1465, %1462
  %1469 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1470 = icmp ne %struct.read_result_t* %1469, null
  br i1 %1470, label %1471, label %1484

1471:                                             ; preds = %1468
  %1472 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1473 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1472, i32 0, i32 1
  %1474 = load i32, i32* %1473, align 4
  %1475 = and i32 %1474, 1023
  %1476 = or i32 %1475, 536870912
  %1477 = or i32 %1476, 16777216
  %1478 = load i32, i32* %64, align 4
  %1479 = and i32 %1478, 1023
  %1480 = shl i32 %1479, 10
  %1481 = or i32 %1477, %1480
  %1482 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1483 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1482, i32 0, i32 1
  store i32 %1481, i32* %1483, align 4
  br label %1484

1484:                                             ; preds = %1471, %1468
  br label %1894

1485:                                             ; No predecessors!
  br label %1490

1486:                                             ; preds = %1441, %1437
  %1487 = load i32, i32* %63, align 4
  %1488 = sext i32 %1487 to i64
  %1489 = getelementptr inbounds [400 x i32], [400 x i32]* %62, i64 0, i64 %1488
  store i32 1, i32* %1489, align 4
  br label %1490

1490:                                             ; preds = %1486, %1485
  br label %1491

1491:                                             ; preds = %1490, %1427, %1419, %1357
  br label %1492

1492:                                             ; preds = %1491, %1349, %1335
  br label %1493

1493:                                             ; preds = %1492
  %1494 = load i32, i32* %42, align 4
  %1495 = add nsw i32 %1494, 1
  store i32 %1495, i32* %42, align 4
  br label %1331, !llvm.loop !16

1496:                                             ; preds = %1331
  br label %1497

1497:                                             ; preds = %1496
  %1498 = load i32, i32* %41, align 4
  %1499 = add nsw i32 %1498, 1
  store i32 %1499, i32* %41, align 4
  br label %1326, !llvm.loop !17

1500:                                             ; preds = %1326
  %1501 = load i32, i32* %34, align 4
  %1502 = icmp ne i32 %1501, 0
  br i1 %1502, label %1503, label %1517

1503:                                             ; preds = %1500
  %1504 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %30, i32 0, i32 0
  %1505 = load i32, i32* %1504, align 8
  %1506 = icmp ne i32 %1505, 0
  br i1 %1506, label %1507, label %1517

1507:                                             ; preds = %1503
  %1508 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %30, i32 0, i32 0
  %1509 = load i32, i32* %1508, align 8
  %1510 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1511 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1512 = call i32 @semeai_move_value(i32 %1509, %struct.local_owl_data* %1510, %struct.local_owl_data* %1511, i32 50)
  store i32 %1512, i32* %46, align 4
  %1513 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %1514 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %30, i32 0, i32 0
  %1515 = load i32, i32* %1514, align 8
  %1516 = load i32, i32* %46, align 4
  call void @owl_add_move(%struct.owl_move_data* %1513, i32 %1515, i32 %1516, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i64 0, i64 0), i32 0, i32 0, i32 0)
  br label %1553

1517:                                             ; preds = %1503, %1500
  %1518 = load i32, i32* %38, align 4
  %1519 = icmp ne i32 %1518, 0
  br i1 %1519, label %1520, label %1534

1520:                                             ; preds = %1517
  %1521 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %32, i32 0, i32 0
  %1522 = load i32, i32* %1521, align 8
  %1523 = icmp ne i32 %1522, 0
  br i1 %1523, label %1524, label %1534

1524:                                             ; preds = %1520
  %1525 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %32, i32 0, i32 0
  %1526 = load i32, i32* %1525, align 8
  %1527 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1528 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1529 = call i32 @semeai_move_value(i32 %1526, %struct.local_owl_data* %1527, %struct.local_owl_data* %1528, i32 50)
  store i32 %1529, i32* %46, align 4
  %1530 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %1531 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %32, i32 0, i32 0
  %1532 = load i32, i32* %1531, align 8
  %1533 = load i32, i32* %46, align 4
  call void @owl_add_move(%struct.owl_move_data* %1530, i32 %1532, i32 %1533, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.60, i64 0, i64 0), i32 0, i32 0, i32 0)
  br label %1552

1534:                                             ; preds = %1520, %1517
  %1535 = load i32, i32* %36, align 4
  %1536 = icmp ne i32 %1535, 0
  br i1 %1536, label %1537, label %1551

1537:                                             ; preds = %1534
  %1538 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %31, i32 0, i32 0
  %1539 = load i32, i32* %1538, align 8
  %1540 = icmp ne i32 %1539, 0
  br i1 %1540, label %1541, label %1551

1541:                                             ; preds = %1537
  %1542 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %31, i32 0, i32 0
  %1543 = load i32, i32* %1542, align 8
  %1544 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1545 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1546 = call i32 @semeai_move_value(i32 %1543, %struct.local_owl_data* %1544, %struct.local_owl_data* %1545, i32 10)
  store i32 %1546, i32* %46, align 4
  %1547 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 0
  %1548 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %31, i32 0, i32 0
  %1549 = load i32, i32* %1548, align 8
  %1550 = load i32, i32* %46, align 4
  call void @owl_add_move(%struct.owl_move_data* %1547, i32 %1549, i32 %1550, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.61, i64 0, i64 0), i32 1, i32 0, i32 0)
  br label %1551

1551:                                             ; preds = %1541, %1537, %1534
  br label %1552

1552:                                             ; preds = %1551, %1524
  br label %1553

1553:                                             ; preds = %1552, %1507
  %1554 = load %struct.SGFTree_t*, %struct.SGFTree_t** %44, align 8
  store %struct.SGFTree_t* %1554, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1555 = load i32, i32* %45, align 4
  store i32 %1555, i32* @count_variations, align 4
  store i32 0, i32* %40, align 4
  br label %1556

1556:                                             ; preds = %1742, %1553
  %1557 = load i32, i32* %40, align 4
  %1558 = icmp slt i32 %1557, 6
  br i1 %1558, label %1559, label %1745

1559:                                             ; preds = %1556
  %1560 = load i32, i32* %40, align 4
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %1561
  %1563 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1562, i32 0, i32 0
  %1564 = load i32, i32* %1563, align 16
  store i32 %1564, i32* %66, align 4
  %1565 = load i32, i32* %40, align 4
  %1566 = icmp sgt i32 %1565, 2
  br i1 %1566, label %1579, label %1567

1567:                                             ; preds = %1559
  %1568 = load i32, i32* @stackp, align 4
  %1569 = icmp sgt i32 %1568, 6
  br i1 %1569, label %1570, label %1573

1570:                                             ; preds = %1567
  %1571 = load i32, i32* %40, align 4
  %1572 = icmp sgt i32 %1571, 1
  br i1 %1572, label %1579, label %1573

1573:                                             ; preds = %1570, %1567
  %1574 = load i32, i32* @stackp, align 4
  %1575 = icmp sgt i32 %1574, 12
  br i1 %1575, label %1576, label %1580

1576:                                             ; preds = %1573
  %1577 = load i32, i32* %40, align 4
  %1578 = icmp sgt i32 %1577, 0
  br i1 %1578, label %1579, label %1580

1579:                                             ; preds = %1576, %1570, %1559
  br label %1742

1580:                                             ; preds = %1576, %1573
  %1581 = load i32, i32* %66, align 4
  %1582 = icmp ne i32 %1581, 0
  br i1 %1582, label %1583, label %1741

1583:                                             ; preds = %1580
  %1584 = load i32, i32* @count_variations, align 4
  %1585 = load i32, i32* @semeai_variations, align 4
  %1586 = icmp slt i32 %1584, %1585
  br i1 %1586, label %1587, label %1741

1587:                                             ; preds = %1583
  %1588 = load i32, i32* @stackp, align 4
  %1589 = icmp slt i32 %1588, 100
  br i1 %1589, label %1590, label %1741

1590:                                             ; preds = %1587
  %1591 = load i32, i32* %66, align 4
  %1592 = load i32, i32* %21, align 4
  %1593 = load i32, i32* %40, align 4
  %1594 = sext i32 %1593 to i64
  %1595 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %1594
  %1596 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1595, i32 0, i32 2
  %1597 = load i8*, i8** %1596, align 8
  %1598 = load i32, i32* %11, align 4
  %1599 = load i32, i32* %12, align 4
  %1600 = load i32, i32* %20, align 4
  %1601 = load i32, i32* %40, align 4
  %1602 = sext i32 %1601 to i64
  %1603 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %1602
  %1604 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1603, i32 0, i32 1
  %1605 = load i32, i32* %1604, align 4
  %1606 = call i32 @semeai_trymove(i32 %1591, i32 %1592, i8* %1597, i32 %1598, i32 %1599, i32 %1600, i32 %1605)
  %1607 = icmp ne i32 %1606, 0
  br i1 %1607, label %1608, label %1741

1608:                                             ; preds = %1590
  %1609 = load i32, i32* @debug, align 4
  %1610 = and i32 %1609, 64
  %1611 = icmp ne i32 %1610, 0
  br i1 %1611, label %1612, label %1616

1612:                                             ; preds = %1608
  %1613 = load i32, i32* @verbose, align 4
  %1614 = icmp ne i32 %1613, 0
  br i1 %1614, label %1615, label %1616

1615:                                             ; preds = %1612
  call void @dump_stack()
  br label %1616

1616:                                             ; preds = %1615, %1612, %1608
  %1617 = load i32, i32* %12, align 4
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1618
  %1620 = load i8, i8* %1619, align 1
  %1621 = zext i8 %1620 to i32
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1623, label %1624

1623:                                             ; preds = %1616
  store i32 0, i32* %51, align 4
  store i32 1, i32* %50, align 4
  br label %1666

1624:                                             ; preds = %1616
  %1625 = load i32, i32* %20, align 4
  %1626 = icmp ne i32 %1625, 0
  br i1 %1626, label %1627, label %1631

1627:                                             ; preds = %1624
  %1628 = load i32, i32* @stackp, align 4
  %1629 = icmp sle i32 %1628, 13
  br i1 %1629, label %1630, label %1631

1630:                                             ; preds = %1627
  call void @push_owl(%struct.local_owl_data** %13, %struct.local_owl_data** %14)
  br label %1636

1631:                                             ; preds = %1627, %1624
  %1632 = getelementptr inbounds [400 x i8], [400 x i8]* %33, i64 0, i64 0
  %1633 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1634 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1633, i32 0, i32 0
  %1635 = getelementptr inbounds [400 x i8], [400 x i8]* %1634, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1632, i8* align 4 %1635, i64 400, i1 false)
  br label %1636

1636:                                             ; preds = %1631, %1630
  %1637 = load i32, i32* %66, align 4
  %1638 = load i32, i32* %40, align 4
  %1639 = sext i32 %1638 to i64
  %1640 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %1639
  %1641 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1640, i32 0, i32 3
  %1642 = load i32, i32* %1641, align 16
  %1643 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  call void @owl_update_goal(i32 %1637, i32 %1642, %struct.local_owl_data* %1643, i32 1)
  %1644 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1645 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1644, i32 0, i32 12
  store i32 0, i32* %1645, align 4
  %1646 = load i32, i32* %66, align 4
  %1647 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  call void @owl_update_boundary_marks(i32 %1646, %struct.local_owl_data* %1647)
  %1648 = load i32, i32* %12, align 4
  %1649 = load i32, i32* %11, align 4
  %1650 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1651 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1652 = load i32, i32* %15, align 4
  %1653 = load i32, i32* %20, align 4
  call void @do_owl_analyze_semeai(i32 %1648, i32 %1649, %struct.local_owl_data* %1650, %struct.local_owl_data* %1651, i32 %1652, i32* %51, i32* %50, i32* null, i32 0, i32 %1653)
  %1654 = load i32, i32* %20, align 4
  %1655 = icmp ne i32 %1654, 0
  br i1 %1655, label %1656, label %1660

1656:                                             ; preds = %1636
  %1657 = load i32, i32* @stackp, align 4
  %1658 = icmp sle i32 %1657, 13
  br i1 %1658, label %1659, label %1660

1659:                                             ; preds = %1656
  call void @pop_owl(%struct.local_owl_data** %14)
  call void @pop_owl(%struct.local_owl_data** %13)
  br label %1665

1660:                                             ; preds = %1656, %1636
  %1661 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1662 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %1661, i32 0, i32 0
  %1663 = getelementptr inbounds [400 x i8], [400 x i8]* %1662, i64 0, i64 0
  %1664 = getelementptr inbounds [400 x i8], [400 x i8]* %33, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1663, i8* align 16 %1664, i64 400, i1 false)
  br label %1665

1665:                                             ; preds = %1660, %1659
  br label %1666

1666:                                             ; preds = %1665, %1623
  call void @popgo()
  %1667 = load i32, i32* %51, align 4
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1669, label %1716

1669:                                             ; preds = %1666
  %1670 = load i32, i32* %50, align 4
  %1671 = icmp eq i32 %1670, 1
  br i1 %1671, label %1672, label %1716

1672:                                             ; preds = %1669
  %1673 = load i32*, i32** %16, align 8
  store i32 1, i32* %1673, align 4
  %1674 = load i32*, i32** %17, align 8
  store i32 0, i32* %1674, align 4
  %1675 = load i32, i32* %66, align 4
  %1676 = load i32*, i32** %18, align 8
  store i32 %1675, i32* %1676, align 4
  %1677 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1678 = icmp ne %struct.SGFTree_t* %1677, null
  br i1 %1678, label %1679, label %1689

1679:                                             ; preds = %1672
  %1680 = load i8*, i8** %56, align 8
  %1681 = load i32, i32* %57, align 4
  %1682 = load i32, i32* %58, align 4
  %1683 = load i32, i32* %66, align 4
  %1684 = load i32, i32* %40, align 4
  %1685 = sext i32 %1684 to i64
  %1686 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %1685
  %1687 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1686, i32 0, i32 2
  %1688 = load i8*, i8** %1687, align 8
  call void @sgf_trace2(i8* %1680, i32 %1681, i32 %1682, i32 %1683, i32 1, i8* %1688)
  br label %1689

1689:                                             ; preds = %1679, %1672
  %1690 = load i32, i32* %21, align 4
  call void @close_pattern_list(i32 %1690, %struct.matched_patterns_list_data* %28)
  %1691 = load i32, i32* %21, align 4
  call void @close_pattern_list(i32 %1691, %struct.matched_patterns_list_data* %27)
  br label %1692

1692:                                             ; preds = %1689
  %1693 = load i32*, i32** %18, align 8
  %1694 = icmp ne i32* %1693, null
  br i1 %1694, label %1695, label %1698

1695:                                             ; preds = %1692
  %1696 = load i32, i32* %66, align 4
  %1697 = load i32*, i32** %18, align 8
  store i32 %1696, i32* %1697, align 4
  br label %1698

1698:                                             ; preds = %1695, %1692
  %1699 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1700 = icmp ne %struct.read_result_t* %1699, null
  br i1 %1700, label %1701, label %1714

1701:                                             ; preds = %1698
  %1702 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1703 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1702, i32 0, i32 1
  %1704 = load i32, i32* %1703, align 4
  %1705 = and i32 %1704, 1023
  %1706 = or i32 %1705, 536870912
  %1707 = or i32 %1706, 16777216
  %1708 = load i32, i32* %66, align 4
  %1709 = and i32 %1708, 1023
  %1710 = shl i32 %1709, 10
  %1711 = or i32 %1707, %1710
  %1712 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1713 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1712, i32 0, i32 1
  store i32 %1711, i32* %1713, align 4
  br label %1714

1714:                                             ; preds = %1701, %1698
  br label %1894

1715:                                             ; No predecessors!
  br label %1716

1716:                                             ; preds = %1715, %1669, %1666
  %1717 = load i32, i32* %50, align 4
  %1718 = icmp eq i32 %1717, 7
  br i1 %1718, label %1719, label %1728

1719:                                             ; preds = %1716
  %1720 = load i32, i32* %51, align 4
  %1721 = icmp eq i32 %1720, 7
  br i1 %1721, label %1722, label %1728

1722:                                             ; preds = %1719
  %1723 = load i32, i32* %47, align 4
  %1724 = icmp ne i32 %1723, 1
  br i1 %1724, label %1725, label %1728

1725:                                             ; preds = %1722
  store i32 7, i32* %47, align 4
  store i32 7, i32* %48, align 4
  %1726 = load i32, i32* %66, align 4
  store i32 %1726, i32* %49, align 4
  %1727 = load i32, i32* %40, align 4
  store i32 %1727, i32* %52, align 4
  br label %1728

1728:                                             ; preds = %1725, %1722, %1719, %1716
  %1729 = load i32, i32* %50, align 4
  %1730 = icmp eq i32 %1729, 0
  br i1 %1730, label %1731, label %1740

1731:                                             ; preds = %1728
  %1732 = load i32, i32* %51, align 4
  %1733 = icmp eq i32 %1732, 1
  br i1 %1733, label %1734, label %1740

1734:                                             ; preds = %1731
  %1735 = load i32, i32* %47, align 4
  %1736 = icmp eq i32 %1735, 3
  br i1 %1736, label %1737, label %1740

1737:                                             ; preds = %1734
  store i32 0, i32* %47, align 4
  store i32 1, i32* %48, align 4
  %1738 = load i32, i32* %66, align 4
  store i32 %1738, i32* %49, align 4
  %1739 = load i32, i32* %40, align 4
  store i32 %1739, i32* %52, align 4
  br label %1740

1740:                                             ; preds = %1737, %1734, %1731, %1728
  br label %1741

1741:                                             ; preds = %1740, %1590, %1587, %1583, %1580
  br label %1742

1742:                                             ; preds = %1741, %1579
  %1743 = load i32, i32* %40, align 4
  %1744 = add nsw i32 %1743, 1
  store i32 %1744, i32* %40, align 4
  br label %1556, !llvm.loop !18

1745:                                             ; preds = %1556
  %1746 = load i32, i32* %21, align 4
  call void @close_pattern_list(i32 %1746, %struct.matched_patterns_list_data* %28)
  %1747 = load i32, i32* %21, align 4
  call void @close_pattern_list(i32 %1747, %struct.matched_patterns_list_data* %27)
  %1748 = load i32, i32* %47, align 4
  %1749 = icmp eq i32 %1748, 3
  br i1 %1749, label %1750, label %1784

1750:                                             ; preds = %1745
  %1751 = load i32, i32* %19, align 4
  %1752 = icmp eq i32 %1751, 1
  br i1 %1752, label %1753, label %1784

1753:                                             ; preds = %1750
  %1754 = load i32*, i32** %16, align 8
  store i32 7, i32* %1754, align 4
  %1755 = load i32*, i32** %17, align 8
  store i32 7, i32* %1755, align 4
  %1756 = load i32*, i32** %18, align 8
  store i32 0, i32* %1756, align 4
  %1757 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1758 = icmp ne %struct.SGFTree_t* %1757, null
  br i1 %1758, label %1759, label %1763

1759:                                             ; preds = %1753
  %1760 = load i8*, i8** %56, align 8
  %1761 = load i32, i32* %57, align 4
  %1762 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %1760, i32 %1761, i32 %1762, i32 0, i32 7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0))
  br label %1763

1763:                                             ; preds = %1759, %1753
  br label %1764

1764:                                             ; preds = %1763
  %1765 = load i32*, i32** %18, align 8
  %1766 = icmp ne i32* %1765, null
  br i1 %1766, label %1767, label %1769

1767:                                             ; preds = %1764
  %1768 = load i32*, i32** %18, align 8
  store i32 0, i32* %1768, align 4
  br label %1769

1769:                                             ; preds = %1767, %1764
  %1770 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1771 = icmp ne %struct.read_result_t* %1770, null
  br i1 %1771, label %1772, label %1782

1772:                                             ; preds = %1769
  %1773 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1774 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1773, i32 0, i32 1
  %1775 = load i32, i32* %1774, align 4
  %1776 = and i32 %1775, 1023
  %1777 = or i32 %1776, 536870912
  %1778 = or i32 %1777, 117440512
  %1779 = or i32 %1778, 7340032
  %1780 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1781 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1780, i32 0, i32 1
  store i32 %1779, i32* %1781, align 4
  br label %1782

1782:                                             ; preds = %1772, %1769
  br label %1894

1783:                                             ; No predecessors!
  br label %1784

1784:                                             ; preds = %1783, %1750, %1745
  %1785 = load i32, i32* %47, align 4
  %1786 = icmp eq i32 %1785, 3
  br i1 %1786, label %1787, label %1836

1787:                                             ; preds = %1784
  %1788 = load i32, i32* %12, align 4
  %1789 = load i32, i32* %11, align 4
  %1790 = load %struct.local_owl_data*, %struct.local_owl_data** %14, align 8
  %1791 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %1792 = load i32, i32* %15, align 4
  %1793 = load i32*, i32** %17, align 8
  %1794 = load i32*, i32** %16, align 8
  %1795 = load i32, i32* %20, align 4
  call void @do_owl_analyze_semeai(i32 %1788, i32 %1789, %struct.local_owl_data* %1790, %struct.local_owl_data* %1791, i32 %1792, i32* %1793, i32* %1794, i32* null, i32 1, i32 %1795)
  %1796 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1797 = icmp ne %struct.SGFTree_t* %1796, null
  br i1 %1797, label %1798, label %1802

1798:                                             ; preds = %1787
  %1799 = load i8*, i8** %56, align 8
  %1800 = load i32, i32* %57, align 4
  %1801 = load i32, i32* %58, align 4
  call void @sgf_trace2(i8* %1799, i32 %1800, i32 %1801, i32 0, i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i64 0, i64 0))
  br label %1802

1802:                                             ; preds = %1798, %1787
  %1803 = load i32*, i32** %18, align 8
  store i32 0, i32* %1803, align 4
  br label %1804

1804:                                             ; preds = %1802
  %1805 = load i32*, i32** %16, align 8
  %1806 = load i32, i32* %1805, align 4
  %1807 = icmp ne i32 %1806, 0
  br i1 %1807, label %1808, label %1813

1808:                                             ; preds = %1804
  %1809 = load i32*, i32** %18, align 8
  %1810 = icmp ne i32* %1809, null
  br i1 %1810, label %1811, label %1813

1811:                                             ; preds = %1808
  %1812 = load i32*, i32** %18, align 8
  store i32 0, i32* %1812, align 4
  br label %1813

1813:                                             ; preds = %1811, %1808, %1804
  %1814 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1815 = icmp ne %struct.read_result_t* %1814, null
  br i1 %1815, label %1816, label %1834

1816:                                             ; preds = %1813
  %1817 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1818 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1817, i32 0, i32 1
  %1819 = load i32, i32* %1818, align 4
  %1820 = and i32 %1819, 1023
  %1821 = or i32 %1820, 536870912
  %1822 = load i32*, i32** %16, align 8
  %1823 = load i32, i32* %1822, align 4
  %1824 = and i32 %1823, 15
  %1825 = shl i32 %1824, 24
  %1826 = or i32 %1821, %1825
  %1827 = load i32*, i32** %17, align 8
  %1828 = load i32, i32* %1827, align 4
  %1829 = and i32 %1828, 15
  %1830 = shl i32 %1829, 20
  %1831 = or i32 %1826, %1830
  %1832 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1833 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1832, i32 0, i32 1
  store i32 %1831, i32* %1833, align 4
  br label %1834

1834:                                             ; preds = %1816, %1813
  br label %1894

1835:                                             ; No predecessors!
  br label %1836

1836:                                             ; preds = %1835, %1784
  %1837 = load i32, i32* %47, align 4
  %1838 = load i32*, i32** %16, align 8
  store i32 %1837, i32* %1838, align 4
  %1839 = load i32, i32* %48, align 4
  %1840 = load i32*, i32** %17, align 8
  store i32 %1839, i32* %1840, align 4
  %1841 = load i32, i32* %47, align 4
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %1843, label %1844

1843:                                             ; preds = %1836
  store i32 0, i32* %49, align 4
  br label %1844

1844:                                             ; preds = %1843, %1836
  %1845 = load i32, i32* %49, align 4
  %1846 = load i32*, i32** %18, align 8
  store i32 %1845, i32* %1846, align 4
  %1847 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1848 = icmp ne %struct.SGFTree_t* %1847, null
  br i1 %1848, label %1849, label %1860

1849:                                             ; preds = %1844
  %1850 = load i8*, i8** %56, align 8
  %1851 = load i32, i32* %57, align 4
  %1852 = load i32, i32* %58, align 4
  %1853 = load i32, i32* %49, align 4
  %1854 = load i32, i32* %47, align 4
  %1855 = load i32, i32* %52, align 4
  %1856 = sext i32 %1855 to i64
  %1857 = getelementptr inbounds [6 x %struct.owl_move_data], [6 x %struct.owl_move_data]* %29, i64 0, i64 %1856
  %1858 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %1857, i32 0, i32 2
  %1859 = load i8*, i8** %1858, align 8
  call void @sgf_trace2(i8* %1850, i32 %1851, i32 %1852, i32 %1853, i32 %1854, i8* %1859)
  br label %1860

1860:                                             ; preds = %1849, %1844
  br label %1861

1861:                                             ; preds = %1860
  %1862 = load i32, i32* %47, align 4
  %1863 = icmp ne i32 %1862, 0
  br i1 %1863, label %1864, label %1870

1864:                                             ; preds = %1861
  %1865 = load i32*, i32** %18, align 8
  %1866 = icmp ne i32* %1865, null
  br i1 %1866, label %1867, label %1870

1867:                                             ; preds = %1864
  %1868 = load i32, i32* %49, align 4
  %1869 = load i32*, i32** %18, align 8
  store i32 %1868, i32* %1869, align 4
  br label %1870

1870:                                             ; preds = %1867, %1864, %1861
  %1871 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1872 = icmp ne %struct.read_result_t* %1871, null
  br i1 %1872, label %1873, label %1893

1873:                                             ; preds = %1870
  %1874 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1875 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1874, i32 0, i32 1
  %1876 = load i32, i32* %1875, align 4
  %1877 = and i32 %1876, 1023
  %1878 = or i32 %1877, 536870912
  %1879 = load i32, i32* %47, align 4
  %1880 = and i32 %1879, 15
  %1881 = shl i32 %1880, 24
  %1882 = or i32 %1878, %1881
  %1883 = load i32, i32* %48, align 4
  %1884 = and i32 %1883, 15
  %1885 = shl i32 %1884, 20
  %1886 = or i32 %1882, %1885
  %1887 = load i32, i32* %49, align 4
  %1888 = and i32 %1887, 1023
  %1889 = shl i32 %1888, 10
  %1890 = or i32 %1886, %1889
  %1891 = load %struct.read_result_t*, %struct.read_result_t** %53, align 8
  %1892 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1891, i32 0, i32 1
  store i32 %1890, i32* %1892, align 4
  br label %1893

1893:                                             ; preds = %1873, %1870
  br label %1894

1894:                                             ; preds = %261, %467, %524, %560, %627, %667, %703, %756, %1484, %1714, %1782, %1834, %1893
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_attack(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_owl_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = call i32 @get_reading_node_counter()
  store i32 %18, i32* %12, align 4
  store double 0.000000e+00, double* %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 15, i32* %17, align 4
  store i32 1, i32* @result_certain, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %21, i32 0, i32 14
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** %7, align 8
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32*, i32** %8, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %35
  store i32 1, i32* %5, align 4
  br label %124

41:                                               ; preds = %4
  %42 = load i32, i32* %6, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @search_persistent_owl_cache(i32 0, i32 %42, i32 0, i32 0, i32* %10, i32* %43, i32* %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %5, align 4
  br label %124

50:                                               ; preds = %41
  %51 = load i32, i32* @debug, align 4
  %52 = and i32 %51, 4096
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call double @gg_cputime()
  store double %55, double* %13, align 8
  br label %56

56:                                               ; preds = %54, %50
  %57 = load i32, i32* @verbose, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i32, i32* %6, align 4
  call void @init_owl(%struct.local_owl_data** %11, i32 %64, i32 0, i32 0, i32 1)
  %65 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  call void @owl_make_domains(%struct.local_owl_data* %65, %struct.local_owl_data* null)
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %68 = load i32*, i32** %9, align 8
  call void @prepare_goal_list(i32 %66, %struct.local_owl_data* %67, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32* @goal_worms_computed, i32* %68, i32 1)
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %71 = call i32 @do_owl_attack(i32 %69, i32* %15, i32* %17, %struct.local_owl_data* %70, i32 0, i32 0, i32 0)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %17, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %16, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32 %72)
  %73 = call i32 @get_reading_node_counter()
  %74 = load i32, i32* %12, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* @debug, align 4
  %77 = and i32 %76, 4096
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %63
  br label %90

80:                                               ; preds = %63
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @local_owl_node_counter, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call double @gg_cputime()
  %87 = load double, double* %13, align 8
  %88 = fsub double %86, %87
  %89 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i32 %81, i32 %82, i32 %83, i32 %84, i32 %85, double %88)
  br label %90

90:                                               ; preds = %80, %79
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* @result_certain, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %98 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds [400 x i8], [400 x i8]* %98, i64 0, i64 0
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  call void @store_persistent_owl_cache(i32 0, i32 %91, i32 0, i32 0, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i8* %99, i32 %104)
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %90
  %108 = load i32, i32* %15, align 4
  %109 = load i32*, i32** %7, align 8
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %90
  %111 = load i32*, i32** %9, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32, i32* %16, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  br label %116

116:                                              ; preds = %113, %110
  %117 = load i32*, i32** %8, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* @result_certain, align 4
  %121 = load i32*, i32** %8, align 8
  store i32 %120, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %48, %40
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @get_reading_node_counter() #1

declare dso_local i32 @search_persistent_owl_cache(i32, i32, i32, i32, i32*, i32*, i32*, i32*) #1

declare dso_local double @gg_cputime() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_goal_list(i32 %0, %struct.local_owl_data* %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.local_owl_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.local_owl_data* %1, %struct.local_owl_data** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32*, i32** %10, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %17

16:                                               ; preds = %6
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5163, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i64 0, i64 0), i32 -1, i32 -1)
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32*, i32** %11, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %40

20:                                               ; preds = %17
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load %struct.local_owl_data*, %struct.local_owl_data** %8, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @list_goal_worms(%struct.local_owl_data* %24, i32* %25)
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [240 x [15 x i32]], [240 x [15 x i32]]* @dragon_goal_worms, i64 0, i64 %33
  %35 = getelementptr inbounds [15 x i32], [15 x i32]* %34, i64 0, i64 0
  %36 = bitcast i32* %35 to i8*
  %37 = load i32*, i32** %9, align 8
  %38 = bitcast i32* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %38, i64 60, i1 false)
  %39 = load i32*, i32** %10, align 8
  store i32 1, i32* %39, align 4
  br label %42

40:                                               ; preds = %17
  %41 = load i32*, i32** %10, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %27
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_owl_attack(i32 %0, i32* %1, i32* %2, %struct.local_owl_data* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.local_owl_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x %struct.owl_move_data], align 16
  %19 = alloca [3 x %struct.owl_move_data], align 16
  %20 = alloca %struct.owl_move_data*, align 8
  %21 = alloca %struct.matched_patterns_list_data, align 8
  %22 = alloca [400 x i8], align 16
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.eyevalue, align 1
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.read_result_t*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.SGFTree_t*, align 8
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i8*, align 8
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
  %58 = alloca i8*, align 8
  %59 = alloca [192 x i8], align 16
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca [128 x i8], align 16
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.local_owl_data* %3, %struct.local_owl_data** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sub nsw i32 3, %70
  store i32 %71, i32* %17, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %26, align 4
  store i32 15, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 -1, i32* %29, align 4
  store i32 -1, i32* %30, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %34, align 8
  %72 = load i32, i32* @count_variations, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %35, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i64 0, i64 0), i8** %36, align 8
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %37, align 4
  %75 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %21, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* @stackp, align 4
  %77 = load i32, i32* @owl_branch_depth, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %176

79:                                               ; preds = %7
  %80 = load i32, i32* @hashflags, align 4
  %81 = and i32 %80, 256
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %176

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @get_read_result(i32 0, i32 %84, i32 %85, i32* %9, %struct.read_result_t** %34)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %175

88:                                               ; preds = %83
  %89 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %90 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = lshr i32 %91, 24
  %93 = and i32 %92, 15
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %88
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %100 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = lshr i32 %101, 10
  %103 = and i32 %102, 1023
  %104 = load i32*, i32** %10, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %98, %95
  br label %106

106:                                              ; preds = %105, %88
  %107 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %108 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = lshr i32 %109, 24
  %111 = and i32 %110, 15
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %130

113:                                              ; preds = %106
  %114 = load i32*, i32** %11, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32, i32* @goal_worms_computed, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %121 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = lshr i32 %122, 20
  %124 = and i32 %123, 15
  %125 = load i32*, i32** %11, align 8
  store i32 %124, i32* %125, align 4
  br label %128

126:                                              ; preds = %116
  %127 = load i32*, i32** %11, align 8
  store i32 15, i32* %127, align 4
  br label %128

128:                                              ; preds = %126, %119
  br label %129

129:                                              ; preds = %128, %113
  br label %130

130:                                              ; preds = %129, %106
  %131 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %132 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = lshr i32 %133, 24
  %135 = and i32 %134, 15
  %136 = icmp eq i32 %135, 5
  br i1 %136, label %137, label %145

137:                                              ; preds = %130
  %138 = load i32, i32* @verbose, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %35, align 4
  %143 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.90, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %140
  br label %153

145:                                              ; preds = %130
  %146 = load i32, i32* @verbose, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  br label %152

149:                                              ; preds = %145
  %150 = load i32, i32* %35, align 4
  %151 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %148
  br label %153

153:                                              ; preds = %152, %144
  %154 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %155 = icmp ne %struct.SGFTree_t* %154, null
  br i1 %155, label %156, label %169

156:                                              ; preds = %153
  %157 = load i8*, i8** %36, align 8
  %158 = load i32, i32* %37, align 4
  %159 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %160 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = lshr i32 %161, 10
  %163 = and i32 %162, 1023
  %164 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %165 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = lshr i32 %166, 24
  %168 = and i32 %167, 15
  call void @sgf_trace(i8* %157, i32 %158, i32 %163, i32 %168, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0))
  br label %169

169:                                              ; preds = %156, %153
  %170 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %171 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = lshr i32 %172, 24
  %174 = and i32 %173, 15
  store i32 %174, i32* %8, align 4
  br label %1187

175:                                              ; preds = %83
  br label %176

176:                                              ; preds = %175, %79, %7
  %177 = load i32, i32* %35, align 4
  %178 = call i32 @reading_limit_reached(i8** %32, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %201

180:                                              ; preds = %176
  %181 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %182 = icmp ne %struct.SGFTree_t* %181, null
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i8*, i8** %36, align 8
  %185 = load i32, i32* %37, align 4
  %186 = load i8*, i8** %32, align 8
  call void @sgf_trace(i8* %184, i32 %185, i32 0, i32 0, i8* %186)
  br label %187

187:                                              ; preds = %183, %180
  br label %188

188:                                              ; preds = %187
  %189 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %190 = icmp ne %struct.read_result_t* %189, null
  br i1 %190, label %191, label %199

191:                                              ; preds = %188
  %192 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %193 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, 1023
  %196 = or i32 %195, 536870912
  %197 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %198 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %191, %188
  store i32 0, i32* %8, align 4
  br label %1187

200:                                              ; No predecessors!
  br label %201

201:                                              ; preds = %200, %176
  %202 = getelementptr inbounds [400 x i8], [400 x i8]* %22, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %202, i8 0, i64 400, i1 false)
  %203 = load i32, i32* @global_owl_node_counter, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* @global_owl_node_counter, align 4
  %205 = load i32, i32* @local_owl_node_counter, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* @local_owl_node_counter, align 4
  %207 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  store %struct.local_owl_data* %207, %struct.local_owl_data** @current_owl_data, align 8
  %208 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %209 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %208, i32 0, i32 13
  %210 = getelementptr inbounds [400 x i8], [400 x i8]* %209, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %210, i8 0, i64 400, i1 false)
  %211 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %212 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %18, i64 0, i64 0
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @owl_estimate_life(%struct.local_owl_data* %211, %struct.owl_move_data* %212, i8** %32, i32 %213, i32 1, %struct.eyevalue* %31, i32* %29, i32* %30)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %369

216:                                              ; preds = %201
  store i32 0, i32* %38, align 4
  store i32 0, i32* %39, align 4
  %217 = load i32, i32* @experimental_owl_ext, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %293

219:                                              ; preds = %216
  %220 = load i32, i32* @goal_worms_computed, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %293

222:                                              ; preds = %219
  store i32 0, i32* %40, align 4
  store i32 15, i32* %27, align 4
  store i32 0, i32* %25, align 4
  br label %223

223:                                              ; preds = %273, %222
  %224 = load i32, i32* %25, align 4
  %225 = icmp slt i32 %224, 15
  br i1 %225, label %226, label %276

226:                                              ; preds = %223
  %227 = load i32, i32* %25, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  br label %276

233:                                              ; preds = %226
  %234 = load i32, i32* %25, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = zext i8 %240 to i32
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %250, label %243

243:                                              ; preds = %233
  %244 = load i32, i32* %25, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @countlib(i32 %247)
  %249 = icmp sgt i32 %248, 1
  br i1 %249, label %250, label %251

250:                                              ; preds = %243, %233
  br label %273

251:                                              ; preds = %243
  %252 = load i32, i32* %25, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %256
  %258 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %40, align 4
  %261 = icmp sgt i32 %259, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %251
  %263 = load i32, i32* %25, align 4
  store i32 %263, i32* %27, align 4
  %264 = load i32, i32* %25, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %268
  %270 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %40, align 4
  br label %272

272:                                              ; preds = %262, %251
  br label %273

273:                                              ; preds = %272, %250
  %274 = load i32, i32* %25, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %25, align 4
  br label %223, !llvm.loop !19

276:                                              ; preds = %232, %223
  %277 = load i32, i32* %27, align 4
  %278 = icmp ne i32 %277, 15
  br i1 %278, label %279, label %292

279:                                              ; preds = %276
  %280 = load i32, i32* %40, align 4
  %281 = icmp sge i32 %280, 3
  br i1 %281, label %282, label %292

282:                                              ; preds = %279
  store i32 3, i32* %38, align 4
  %283 = load i32, i32* %27, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %287
  %289 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %288, i32 0, i32 3
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @findlib(i32 %290, i32 1, i32* %39)
  br label %292

292:                                              ; preds = %282, %279, %276
  br label %293

293:                                              ; preds = %292, %219, %216
  %294 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %295 = icmp ne %struct.SGFTree_t* %294, null
  br i1 %295, label %296, label %301

296:                                              ; preds = %293
  %297 = load i8*, i8** %36, align 8
  %298 = load i32, i32* %37, align 4
  %299 = load i32, i32* %38, align 4
  %300 = load i8*, i8** %32, align 8
  call void @sgf_trace(i8* %297, i32 %298, i32 0, i32 %299, i8* %300)
  br label %301

301:                                              ; preds = %296, %293
  %302 = load i32, i32* @verbose, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %301
  br label %309

305:                                              ; preds = %301
  %306 = load i32, i32* %35, align 4
  %307 = load i8*, i8** %32, align 8
  %308 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i64 0, i64 0), i32 %306, i8* %307)
  br label %309

309:                                              ; preds = %305, %304
  %310 = load i32, i32* %38, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %326

312:                                              ; preds = %309
  br label %313

313:                                              ; preds = %312
  %314 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %315 = icmp ne %struct.read_result_t* %314, null
  br i1 %315, label %316, label %324

316:                                              ; preds = %313
  %317 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %318 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = and i32 %319, 1023
  %321 = or i32 %320, 536870912
  %322 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %323 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 4
  br label %324

324:                                              ; preds = %316, %313
  store i32 0, i32* %8, align 4
  br label %1187

325:                                              ; No predecessors!
  br label %368

326:                                              ; preds = %309
  %327 = load i32*, i32** %11, align 8
  %328 = icmp ne i32* %327, null
  br i1 %328, label %329, label %332

329:                                              ; preds = %326
  %330 = load i32, i32* %27, align 4
  %331 = load i32*, i32** %11, align 8
  store i32 %330, i32* %331, align 4
  br label %332

332:                                              ; preds = %329, %326
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %38, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %333
  %337 = load i32*, i32** %10, align 8
  %338 = icmp ne i32* %337, null
  br i1 %338, label %339, label %342

339:                                              ; preds = %336
  %340 = load i32, i32* %39, align 4
  %341 = load i32*, i32** %10, align 8
  store i32 %340, i32* %341, align 4
  br label %342

342:                                              ; preds = %339, %336, %333
  %343 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %344 = icmp ne %struct.read_result_t* %343, null
  br i1 %344, label %345, label %365

345:                                              ; preds = %342
  %346 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %347 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = and i32 %348, 1023
  %350 = or i32 %349, 536870912
  %351 = load i32, i32* %38, align 4
  %352 = and i32 %351, 15
  %353 = shl i32 %352, 24
  %354 = or i32 %350, %353
  %355 = load i32, i32* %27, align 4
  %356 = and i32 %355, 15
  %357 = shl i32 %356, 20
  %358 = or i32 %354, %357
  %359 = load i32, i32* %39, align 4
  %360 = and i32 %359, 1023
  %361 = shl i32 %360, 10
  %362 = or i32 %358, %361
  %363 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %364 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %363, i32 0, i32 1
  store i32 %362, i32* %364, align 4
  br label %365

365:                                              ; preds = %345, %342
  %366 = load i32, i32* %38, align 4
  store i32 %366, i32* %8, align 4
  br label %1187

367:                                              ; No predecessors!
  br label %368

368:                                              ; preds = %367, %325
  br label %369

369:                                              ; preds = %368, %201
  store i32 0, i32* %24, align 4
  br label %370

370:                                              ; preds = %1057, %369
  %371 = load i32, i32* %24, align 4
  %372 = icmp slt i32 %371, 6
  br i1 %372, label %373, label %1060

373:                                              ; preds = %370
  store %struct.owl_move_data* null, %struct.owl_move_data** %20, align 8
  store i32 1, i32* %33, align 4
  %374 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  store %struct.local_owl_data* %374, %struct.local_owl_data** @current_owl_data, align 8
  %375 = load i32, i32* %24, align 4
  switch i32 %375, label %606 [
    i32 1, label %376
    i32 0, label %454
    i32 2, label %454
    i32 3, label %484
    i32 5, label %484
    i32 4, label %507
  ]

376:                                              ; preds = %373
  %377 = load i32, i32* @stackp, align 4
  %378 = load i32, i32* @owl_branch_depth, align 4
  %379 = icmp sgt i32 %377, %378
  br i1 %379, label %380, label %384

380:                                              ; preds = %376
  %381 = load i32, i32* %23, align 4
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %380
  br label %1057

384:                                              ; preds = %380, %376
  %385 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %386 = load i32, i32* %17, align 4
  %387 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %21, %struct.owl_move_data* %385, i32 %386, %struct.local_owl_data* %387, %struct.pattern_db* @owl_attackpat_db)
  %388 = load i32, i32* %17, align 4
  %389 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %390 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %21, i32 %388, %struct.owl_move_data* %389, i32 100)
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %452

392:                                              ; preds = %384
  %393 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %394 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 16
  %396 = load i32, i32* %17, align 4
  %397 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %398 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %397, i32 0, i32 2
  %399 = load i8*, i8** %398, align 8
  %400 = load i32, i32* %9, align 4
  %401 = load i32, i32* %13, align 4
  %402 = load i32, i32* %14, align 4
  %403 = call i32 @trymove(i32 %395, i32 %396, i8* %399, i32 %400, i32 %401, i32 %402)
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %406

405:                                              ; preds = %392
  call void @popgo()
  br label %406

406:                                              ; preds = %405, %392
  %407 = load i32, i32* @verbose, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %410, label %409

409:                                              ; preds = %406
  br label %413

410:                                              ; preds = %406
  %411 = load i32, i32* %35, align 4
  %412 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.93, i64 0, i64 0), i32 %411)
  br label %413

413:                                              ; preds = %410, %409
  %414 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %415 = icmp ne %struct.SGFTree_t* %414, null
  br i1 %415, label %416, label %422

416:                                              ; preds = %413
  %417 = load i8*, i8** %36, align 8
  %418 = load i32, i32* %37, align 4
  %419 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %420 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 16
  call void @sgf_trace(i8* %417, i32 %418, i32 %421, i32 5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.94, i64 0, i64 0))
  br label %422

422:                                              ; preds = %416, %413
  %423 = load i32, i32* %17, align 4
  call void @close_pattern_list(i32 %423, %struct.matched_patterns_list_data* %21)
  br label %424

424:                                              ; preds = %422
  %425 = load i32*, i32** %10, align 8
  %426 = icmp ne i32* %425, null
  br i1 %426, label %427, label %432

427:                                              ; preds = %424
  %428 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %429 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 16
  %431 = load i32*, i32** %10, align 8
  store i32 %430, i32* %431, align 4
  br label %432

432:                                              ; preds = %427, %424
  %433 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %434 = icmp ne %struct.read_result_t* %433, null
  br i1 %434, label %435, label %450

435:                                              ; preds = %432
  %436 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %437 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = and i32 %438, 1023
  %440 = or i32 %439, 536870912
  %441 = or i32 %440, 83886080
  %442 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %443 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 16
  %445 = and i32 %444, 1023
  %446 = shl i32 %445, 10
  %447 = or i32 %441, %446
  %448 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %449 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %448, i32 0, i32 1
  store i32 %447, i32* %449, align 4
  br label %450

450:                                              ; preds = %435, %432
  store i32 5, i32* %8, align 4
  br label %1187

451:                                              ; No predecessors!
  br label %452

452:                                              ; preds = %451, %384
  %453 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  store %struct.owl_move_data* %453, %struct.owl_move_data** %20, align 8
  br label %606

454:                                              ; preds = %373, %373
  %455 = load i32, i32* @stackp, align 4
  %456 = load i32, i32* @owl_branch_depth, align 4
  %457 = icmp sgt i32 %455, %456
  br i1 %457, label %458, label %462

458:                                              ; preds = %454
  %459 = load i32, i32* %23, align 4
  %460 = icmp sgt i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %458
  br label %1057

462:                                              ; preds = %458, %454
  %463 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %18, i64 0, i64 0
  store %struct.owl_move_data* %463, %struct.owl_move_data** %20, align 8
  %464 = load i32, i32* %24, align 4
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %470, label %466

466:                                              ; preds = %462
  %467 = load i32, i32* @stackp, align 4
  %468 = load i32, i32* @owl_distrust_depth, align 4
  %469 = icmp sgt i32 %467, %468
  br i1 %469, label %470, label %476

470:                                              ; preds = %466, %462
  %471 = load i32, i32* @stackp, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %470
  store i32 70, i32* %33, align 4
  br label %475

474:                                              ; preds = %470
  store i32 45, i32* %33, align 4
  br label %475

475:                                              ; preds = %474, %473
  br label %476

476:                                              ; preds = %475, %466
  %477 = load i32, i32* %30, align 4
  %478 = icmp slt i32 %477, 2
  br i1 %478, label %479, label %483

479:                                              ; preds = %476
  %480 = load i32, i32* @stackp, align 4
  %481 = icmp sgt i32 %480, 2
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  store i32 99, i32* %33, align 4
  br label %483

483:                                              ; preds = %482, %479, %476
  br label %606

484:                                              ; preds = %373, %373
  %485 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %485, %struct.SGFTree_t** %43, align 8
  %486 = load i32, i32* @count_variations, align 4
  store i32 %486, i32* %44, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %487 = load i32, i32* %9, align 4
  %488 = call i32 @attack(i32 %487, i32* %41)
  store i32 %488, i32* %42, align 4
  %489 = load i32, i32* %42, align 4
  %490 = icmp eq i32 %489, 5
  br i1 %490, label %500, label %491

491:                                              ; preds = %484
  %492 = load i32, i32* %42, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %504

494:                                              ; preds = %491
  %495 = call i32 @min_eyes(%struct.eyevalue* %31)
  %496 = icmp sge i32 %495, 2
  br i1 %496, label %500, label %497

497:                                              ; preds = %494
  %498 = load i32, i32* %24, align 4
  %499 = icmp eq i32 %498, 5
  br i1 %499, label %500, label %504

500:                                              ; preds = %497, %494, %484
  %501 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %502 = load i32, i32* %41, align 4
  call void @set_single_owl_move(%struct.owl_move_data* %501, i32 %502, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.95, i64 0, i64 0))
  %503 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  store %struct.owl_move_data* %503, %struct.owl_move_data** %20, align 8
  br label %504

504:                                              ; preds = %500, %497, %491
  %505 = load %struct.SGFTree_t*, %struct.SGFTree_t** %43, align 8
  store %struct.SGFTree_t* %505, %struct.SGFTree_t** @sgf_dumptree, align 8
  %506 = load i32, i32* %44, align 4
  store i32 %506, i32* @count_variations, align 4
  br label %606

507:                                              ; preds = %373
  %508 = load i32, i32* %23, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %510, label %605

510:                                              ; preds = %507
  %511 = load i32, i32* %9, align 4
  %512 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %513 = load i32, i32* %13, align 4
  %514 = load i32, i32* %14, align 4
  %515 = load i32, i32* %15, align 4
  %516 = call i32 @do_owl_defend(i32 %511, i32* %45, i32* null, %struct.local_owl_data* %512, i32 %513, i32 %514, i32 %515)
  store i32 %516, i32* %46, align 4
  %517 = load i32, i32* %46, align 4
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %553

519:                                              ; preds = %510
  %520 = load i32, i32* @verbose, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %523, label %522

522:                                              ; preds = %519
  br label %526

523:                                              ; preds = %519
  %524 = load i32, i32* %35, align 4
  %525 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.96, i64 0, i64 0), i32 %524)
  br label %526

526:                                              ; preds = %523, %522
  %527 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %528 = icmp ne %struct.SGFTree_t* %527, null
  br i1 %528, label %529, label %532

529:                                              ; preds = %526
  %530 = load i8*, i8** %36, align 8
  %531 = load i32, i32* %37, align 4
  call void @sgf_trace(i8* %530, i32 %531, i32 0, i32 5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.97, i64 0, i64 0))
  br label %532

532:                                              ; preds = %529, %526
  %533 = load i32, i32* %17, align 4
  call void @close_pattern_list(i32 %533, %struct.matched_patterns_list_data* %21)
  br label %534

534:                                              ; preds = %532
  %535 = load i32*, i32** %10, align 8
  %536 = icmp ne i32* %535, null
  br i1 %536, label %537, label %539

537:                                              ; preds = %534
  %538 = load i32*, i32** %10, align 8
  store i32 0, i32* %538, align 4
  br label %539

539:                                              ; preds = %537, %534
  %540 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %541 = icmp ne %struct.read_result_t* %540, null
  br i1 %541, label %542, label %551

542:                                              ; preds = %539
  %543 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %544 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = and i32 %545, 1023
  %547 = or i32 %546, 536870912
  %548 = or i32 %547, 83886080
  %549 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %550 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %549, i32 0, i32 1
  store i32 %548, i32* %550, align 4
  br label %551

551:                                              ; preds = %542, %539
  store i32 5, i32* %8, align 4
  br label %1187

552:                                              ; No predecessors!
  br label %604

553:                                              ; preds = %510
  %554 = load i32, i32* %45, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %556, label %603

556:                                              ; preds = %553
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i64 0, i64 0), i8** %47, align 8
  %557 = load i32, i32* %45, align 4
  %558 = load i32, i32* %17, align 4
  %559 = call i32 @is_suicide(i32 %557, i32 %558)
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %594

561:                                              ; preds = %556
  store i32 0, i32* %25, align 4
  br label %562

562:                                              ; preds = %590, %561
  %563 = load i32, i32* %25, align 4
  %564 = icmp slt i32 %563, 4
  br i1 %564, label %565, label %593

565:                                              ; preds = %562
  %566 = load i32, i32* %45, align 4
  %567 = load i32, i32* %25, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = add nsw i32 %566, %570
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %572
  %574 = load i8, i8* %573, align 1
  %575 = zext i8 %574 to i32
  %576 = load i32, i32* %17, align 4
  %577 = icmp eq i32 %575, %576
  br i1 %577, label %578, label %589

578:                                              ; preds = %565
  %579 = load i32, i32* %45, align 4
  %580 = load i32, i32* %25, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %581
  %583 = load i32, i32* %582, align 4
  %584 = add nsw i32 %579, %583
  %585 = call i32 @find_defense(i32 %584, i32* %48)
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %578
  %588 = load i32, i32* %48, align 4
  store i32 %588, i32* %45, align 4
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.99, i64 0, i64 0), i8** %47, align 8
  br label %593

589:                                              ; preds = %578, %565
  br label %590

590:                                              ; preds = %589
  %591 = load i32, i32* %25, align 4
  %592 = add nsw i32 %591, 1
  store i32 %592, i32* %25, align 4
  br label %562, !llvm.loop !20

593:                                              ; preds = %587, %562
  br label %594

594:                                              ; preds = %593, %556
  %595 = load i32, i32* %45, align 4
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %602

597:                                              ; preds = %594
  %598 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %599 = load i32, i32* %45, align 4
  %600 = load i8*, i8** %47, align 8
  call void @set_single_owl_move(%struct.owl_move_data* %598, i32 %599, i8* %600)
  %601 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  store %struct.owl_move_data* %601, %struct.owl_move_data** %20, align 8
  br label %602

602:                                              ; preds = %597, %594
  br label %603

603:                                              ; preds = %602, %553
  br label %604

604:                                              ; preds = %603, %552
  br label %605

605:                                              ; preds = %604, %507
  br label %606

606:                                              ; preds = %373, %605, %504, %483, %452
  %607 = load %struct.owl_move_data*, %struct.owl_move_data** %20, align 8
  %608 = icmp ne %struct.owl_move_data* %607, null
  br i1 %608, label %610, label %609

609:                                              ; preds = %606
  br label %1057

610:                                              ; preds = %606
  store i32 0, i32* %25, align 4
  br label %611

611:                                              ; preds = %1053, %610
  %612 = load i32, i32* %25, align 4
  %613 = icmp slt i32 %612, 3
  br i1 %613, label %614, label %1056

614:                                              ; preds = %611
  store i32 -1, i32* %50, align 4
  store i32 0, i32* %53, align 4
  store i32 15, i32* %55, align 4
  %615 = load i32, i32* @stackp, align 4
  %616 = load i32, i32* @owl_branch_depth, align 4
  %617 = icmp sgt i32 %615, %616
  br i1 %617, label %618, label %622

618:                                              ; preds = %614
  %619 = load i32, i32* %25, align 4
  %620 = icmp sgt i32 %619, 0
  br i1 %620, label %621, label %622

621:                                              ; preds = %618
  br label %1056

622:                                              ; preds = %618, %614
  %623 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  store %struct.local_owl_data* %623, %struct.local_owl_data** @current_owl_data, align 8
  %624 = load i32, i32* %24, align 4
  %625 = icmp eq i32 %624, 1
  br i1 %625, label %626, label %681

626:                                              ; preds = %622
  %627 = load i32, i32* %17, align 4
  %628 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %629 = load i32, i32* %33, align 4
  %630 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %21, i32 %627, %struct.owl_move_data* %628, i32 %629)
  %631 = icmp ne i32 %630, 0
  br i1 %631, label %633, label %632

632:                                              ; preds = %626
  br label %1056

633:                                              ; preds = %626
  %634 = load %struct.owl_move_data*, %struct.owl_move_data** %20, align 8
  %635 = load i32, i32* %25, align 4
  %636 = sext i32 %635 to i64
  %637 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %634, i64 %636
  %638 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %637, i32 0, i32 1
  %639 = load i32, i32* %638, align 4
  %640 = icmp eq i32 %639, 99
  br i1 %640, label %641, label %680

641:                                              ; preds = %633
  %642 = load i32, i32* %25, align 4
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %644, label %645

644:                                              ; preds = %641
  br label %646

645:                                              ; preds = %641
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1450, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i64 0, i64 0), i32 -1, i32 -1)
  br label %646

646:                                              ; preds = %645, %644
  %647 = load i32, i32* %17, align 4
  %648 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %19, i64 0, i64 0
  %649 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %21, i32 %647, %struct.owl_move_data* %648, i32 99)
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %679

651:                                              ; preds = %646
  %652 = load i32, i32* @verbose, align 4
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %655, label %654

654:                                              ; preds = %651
  br label %658

655:                                              ; preds = %651
  %656 = load i32, i32* %35, align 4
  %657 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.101, i64 0, i64 0), i32 %656)
  br label %658

658:                                              ; preds = %655, %654
  %659 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %660 = icmp ne %struct.SGFTree_t* %659, null
  br i1 %660, label %661, label %664

661:                                              ; preds = %658
  %662 = load i8*, i8** %36, align 8
  %663 = load i32, i32* %37, align 4
  call void @sgf_trace(i8* %662, i32 %663, i32 0, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.102, i64 0, i64 0))
  br label %664

664:                                              ; preds = %661, %658
  %665 = load i32, i32* %17, align 4
  call void @close_pattern_list(i32 %665, %struct.matched_patterns_list_data* %21)
  br label %666

666:                                              ; preds = %664
  %667 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %668 = icmp ne %struct.read_result_t* %667, null
  br i1 %668, label %669, label %677

669:                                              ; preds = %666
  %670 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %671 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %670, i32 0, i32 1
  %672 = load i32, i32* %671, align 4
  %673 = and i32 %672, 1023
  %674 = or i32 %673, 536870912
  %675 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %676 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %675, i32 0, i32 1
  store i32 %674, i32* %676, align 4
  br label %677

677:                                              ; preds = %669, %666
  store i32 0, i32* %8, align 4
  br label %1187

678:                                              ; No predecessors!
  br label %679

679:                                              ; preds = %678, %646
  store i32 99, i32* %33, align 4
  br label %680

680:                                              ; preds = %679, %633
  br label %692

681:                                              ; preds = %622
  %682 = load %struct.owl_move_data*, %struct.owl_move_data** %20, align 8
  %683 = load i32, i32* %25, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %682, i64 %684
  %686 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %685, i32 0, i32 1
  %687 = load i32, i32* %686, align 4
  %688 = load i32, i32* %33, align 4
  %689 = icmp slt i32 %687, %688
  br i1 %689, label %690, label %691

690:                                              ; preds = %681
  br label %1056

691:                                              ; preds = %681
  br label %692

692:                                              ; preds = %691, %680
  %693 = load %struct.owl_move_data*, %struct.owl_move_data** %20, align 8
  %694 = load i32, i32* %25, align 4
  %695 = sext i32 %694 to i64
  %696 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %693, i64 %695
  %697 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 8
  store i32 %698, i32* %49, align 4
  %699 = load i32, i32* %49, align 4
  %700 = icmp ult i32 %699, 421
  br i1 %700, label %701, label %709

701:                                              ; preds = %692
  %702 = load i32, i32* %49, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %703
  %705 = load i8, i8* %704, align 1
  %706 = zext i8 %705 to i32
  %707 = icmp ne i32 %706, 3
  br i1 %707, label %708, label %709

708:                                              ; preds = %701
  br label %716

709:                                              ; preds = %701, %692
  %710 = load i32, i32* %49, align 4
  %711 = sdiv i32 %710, 20
  %712 = sub nsw i32 %711, 1
  %713 = load i32, i32* %49, align 4
  %714 = srem i32 %713, 20
  %715 = sub nsw i32 %714, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1467, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i64 0, i64 0), i32 %712, i32 %715)
  br label %716

716:                                              ; preds = %709, %708
  %717 = load i32, i32* %49, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [400 x i8], [400 x i8]* %22, i64 0, i64 %718
  %720 = load i8, i8* %719, align 1
  %721 = icmp ne i8 %720, 0
  br i1 %721, label %722, label %723

722:                                              ; preds = %716
  br label %1053

723:                                              ; preds = %716
  %724 = load i32, i32* %16, align 4
  %725 = icmp eq i32 %724, 1
  br i1 %725, label %726, label %728

726:                                              ; preds = %723
  %727 = load i32, i32* @white_captured, align 4
  br label %730

728:                                              ; preds = %723
  %729 = load i32, i32* @black_captured, align 4
  br label %730

730:                                              ; preds = %728, %726
  %731 = phi i32 [ %727, %726 ], [ %729, %728 ]
  store i32 %731, i32* %54, align 4
  %732 = load i32, i32* %49, align 4
  %733 = load i32, i32* %17, align 4
  %734 = load %struct.owl_move_data*, %struct.owl_move_data** %20, align 8
  %735 = load i32, i32* %25, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %734, i64 %736
  %738 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %737, i32 0, i32 2
  %739 = load i8*, i8** %738, align 8
  %740 = load i32, i32* %9, align 4
  %741 = load i32, i32* %13, align 4
  %742 = load i32, i32* %14, align 4
  %743 = load i32, i32* %28, align 4
  %744 = icmp eq i32 %743, 0
  %745 = zext i1 %744 to i32
  %746 = call i32 @komaster_trymove(i32 %732, i32 %733, i8* %739, i32 %740, i32 %741, i32 %742, i32* %51, i32* %52, i32* %50, i32 %745)
  %747 = icmp ne i32 %746, 0
  br i1 %747, label %749, label %748

748:                                              ; preds = %730
  br label %1053

749:                                              ; preds = %730
  %750 = load i32, i32* %16, align 4
  %751 = icmp eq i32 %750, 1
  br i1 %751, label %752, label %754

752:                                              ; preds = %749
  %753 = load i32, i32* @white_captured, align 4
  br label %756

754:                                              ; preds = %749
  %755 = load i32, i32* @black_captured, align 4
  br label %756

756:                                              ; preds = %754, %752
  %757 = phi i32 [ %753, %752 ], [ %755, %754 ]
  %758 = load i32, i32* %54, align 4
  %759 = sub nsw i32 %757, %758
  store i32 %759, i32* %54, align 4
  %760 = load i32, i32* @verbose, align 4
  %761 = icmp ne i32 %760, 0
  br i1 %761, label %763, label %762

762:                                              ; preds = %756
  br label %768

763:                                              ; preds = %756
  %764 = load i32, i32* %17, align 4
  %765 = load i32, i32* %49, align 4
  %766 = load i32, i32* %15, align 4
  %767 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.104, i64 0, i64 0), i32 %764, i32 %765, i32 %766)
  br label %768

768:                                              ; preds = %763, %762
  %769 = load i32, i32* @verbose, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %772

771:                                              ; preds = %768
  call void @dump_stack()
  br label %772

772:                                              ; preds = %771, %768
  call void @push_owl(%struct.local_owl_data** %12, %struct.local_owl_data** null)
  %773 = load i32, i32* %49, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds [400 x i8], [400 x i8]* %22, i64 0, i64 %774
  store i8 1, i8* %775, align 1
  %776 = load i32, i32* %23, align 4
  %777 = add nsw i32 %776, 1
  store i32 %777, i32* %23, align 4
  %778 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %779 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %778, i32 0, i32 12
  store i32 0, i32* %779, align 4
  %780 = load i32, i32* %49, align 4
  %781 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  call void @owl_update_boundary_marks(i32 %780, %struct.local_owl_data* %781)
  %782 = load i32, i32* %9, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %783
  %785 = load i8, i8* %784, align 1
  %786 = zext i8 %785 to i32
  %787 = icmp eq i32 %786, 1
  br i1 %787, label %795, label %788

788:                                              ; preds = %772
  %789 = load i32, i32* %9, align 4
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %790
  %792 = load i8, i8* %791, align 1
  %793 = zext i8 %792 to i32
  %794 = icmp eq i32 %793, 2
  br i1 %794, label %795, label %797

795:                                              ; preds = %788, %772
  %796 = load i32, i32* %9, align 4
  store i32 %796, i32* %53, align 4
  br label %826

797:                                              ; preds = %788
  store i32 0, i32* %53, align 4
  store i32 21, i32* %57, align 4
  br label %798

798:                                              ; preds = %822, %797
  %799 = load i32, i32* %57, align 4
  %800 = icmp slt i32 %799, 400
  br i1 %800, label %801, label %825

801:                                              ; preds = %798
  %802 = load i32, i32* %57, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %803
  %805 = load i8, i8* %804, align 1
  %806 = zext i8 %805 to i32
  %807 = load i32, i32* %16, align 4
  %808 = icmp eq i32 %806, %807
  br i1 %808, label %809, label %821

809:                                              ; preds = %801
  %810 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %811 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %810, i32 0, i32 0
  %812 = load i32, i32* %57, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds [400 x i8], [400 x i8]* %811, i64 0, i64 %813
  %815 = load i8, i8* %814, align 1
  %816 = sext i8 %815 to i32
  %817 = icmp eq i32 %816, 1
  br i1 %817, label %818, label %821

818:                                              ; preds = %809
  %819 = load i32, i32* %57, align 4
  %820 = call i32 @find_origin(i32 %819)
  store i32 %820, i32* %53, align 4
  br label %825

821:                                              ; preds = %809, %801
  br label %822

822:                                              ; preds = %821
  %823 = load i32, i32* %57, align 4
  %824 = add nsw i32 %823, 1
  store i32 %824, i32* %57, align 4
  br label %798, !llvm.loop !21

825:                                              ; preds = %818, %798
  br label %826

826:                                              ; preds = %825, %795
  %827 = load i32, i32* %53, align 4
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %830

829:                                              ; preds = %826
  store i32 0, i32* %56, align 4
  br label %837

830:                                              ; preds = %826
  %831 = load i32, i32* %53, align 4
  %832 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %833 = load i32, i32* %51, align 4
  %834 = load i32, i32* %52, align 4
  %835 = load i32, i32* %15, align 4
  %836 = call i32 @do_owl_defend(i32 %831, i32* null, i32* %55, %struct.local_owl_data* %832, i32 %833, i32 %834, i32 %835)
  store i32 %836, i32* %56, align 4
  br label %837

837:                                              ; preds = %830, %829
  %838 = load i32, i32* %50, align 4
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %1025, label %840

840:                                              ; preds = %837
  %841 = load i32, i32* %56, align 4
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %843, label %892

843:                                              ; preds = %840
  call void @pop_owl(%struct.local_owl_data** %12)
  call void @popgo()
  %844 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %845 = icmp ne %struct.SGFTree_t* %844, null
  br i1 %845, label %846, label %866

846:                                              ; preds = %843
  %847 = load i32, i32* %53, align 4
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %849, label %850

849:                                              ; preds = %846
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.105, i64 0, i64 0), i8** %58, align 8
  br label %851

850:                                              ; preds = %846
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.106, i64 0, i64 0), i8** %58, align 8
  br label %851

851:                                              ; preds = %850, %849
  %852 = getelementptr inbounds [192 x i8], [192 x i8]* %59, i64 0, i64 0
  %853 = load i8*, i8** %58, align 8
  %854 = load i32, i32* @count_variations, align 4
  %855 = load i32, i32* %35, align 4
  %856 = sub nsw i32 %854, %855
  %857 = call i32 (i8*, i8*, ...) @sprintf(i8* %852, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.107, i64 0, i64 0), i8* %853, i32 %856) #5
  %858 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %859 = icmp ne %struct.SGFTree_t* %858, null
  br i1 %859, label %860, label %865

860:                                              ; preds = %851
  %861 = load i8*, i8** %36, align 8
  %862 = load i32, i32* %37, align 4
  %863 = load i32, i32* %49, align 4
  %864 = getelementptr inbounds [192 x i8], [192 x i8]* %59, i64 0, i64 0
  call void @sgf_trace(i8* %861, i32 %862, i32 %863, i32 5, i8* %864)
  br label %865

865:                                              ; preds = %860, %851
  br label %866

866:                                              ; preds = %865, %843
  %867 = load i32, i32* %17, align 4
  call void @close_pattern_list(i32 %867, %struct.matched_patterns_list_data* %21)
  br label %868

868:                                              ; preds = %866
  %869 = load i32*, i32** %10, align 8
  %870 = icmp ne i32* %869, null
  br i1 %870, label %871, label %874

871:                                              ; preds = %868
  %872 = load i32, i32* %49, align 4
  %873 = load i32*, i32** %10, align 8
  store i32 %872, i32* %873, align 4
  br label %874

874:                                              ; preds = %871, %868
  %875 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %876 = icmp ne %struct.read_result_t* %875, null
  br i1 %876, label %877, label %890

877:                                              ; preds = %874
  %878 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %879 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %878, i32 0, i32 1
  %880 = load i32, i32* %879, align 4
  %881 = and i32 %880, 1023
  %882 = or i32 %881, 536870912
  %883 = or i32 %882, 83886080
  %884 = load i32, i32* %49, align 4
  %885 = and i32 %884, 1023
  %886 = shl i32 %885, 10
  %887 = or i32 %883, %886
  %888 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %889 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %888, i32 0, i32 1
  store i32 %887, i32* %889, align 4
  br label %890

890:                                              ; preds = %877, %874
  store i32 5, i32* %8, align 4
  br label %1187

891:                                              ; No predecessors!
  br label %1012

892:                                              ; preds = %840
  %893 = load i32, i32* @experimental_owl_ext, align 4
  %894 = icmp ne i32 %893, 0
  br i1 %894, label %895, label %922

895:                                              ; preds = %892
  %896 = load i32, i32* %56, align 4
  %897 = icmp eq i32 %896, 2
  br i1 %897, label %898, label %922

898:                                              ; preds = %895
  %899 = load i32, i32* %27, align 4
  %900 = icmp eq i32 %899, 15
  br i1 %900, label %919, label %901

901:                                              ; preds = %898
  %902 = load i32, i32* %55, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %903
  %905 = load i32, i32* %904, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %906
  %908 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %907, i32 0, i32 1
  %909 = load i32, i32* %908, align 4
  %910 = load i32, i32* %27, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %911
  %913 = load i32, i32* %912, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %914
  %916 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %915, i32 0, i32 1
  %917 = load i32, i32* %916, align 4
  %918 = icmp sgt i32 %909, %917
  br i1 %918, label %919, label %921

919:                                              ; preds = %901, %898
  %920 = load i32, i32* %55, align 4
  store i32 %920, i32* %27, align 4
  br label %921

921:                                              ; preds = %919, %901
  br label %1011

922:                                              ; preds = %895, %892
  %923 = load i32, i32* @experimental_owl_ext, align 4
  %924 = icmp ne i32 %923, 0
  br i1 %924, label %925, label %1010

925:                                              ; preds = %922
  %926 = load i32, i32* @goal_worms_computed, align 4
  %927 = icmp ne i32 %926, 0
  br i1 %927, label %928, label %1010

928:                                              ; preds = %925
  %929 = load i32, i32* %54, align 4
  %930 = icmp sge i32 %929, 3
  br i1 %930, label %931, label %1010

931:                                              ; preds = %928
  store i32 15, i32* %60, align 4
  store i32 0, i32* %61, align 4
  store i32 0, i32* %62, align 4
  br label %932

932:                                              ; preds = %978, %931
  %933 = load i32, i32* %62, align 4
  %934 = icmp slt i32 %933, 15
  br i1 %934, label %935, label %981

935:                                              ; preds = %932
  %936 = load i32, i32* %62, align 4
  %937 = sext i32 %936 to i64
  %938 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %937
  %939 = load i32, i32* %938, align 4
  %940 = icmp eq i32 %939, 0
  br i1 %940, label %941, label %942

941:                                              ; preds = %935
  br label %981

942:                                              ; preds = %935
  %943 = load i32, i32* %62, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %944
  %946 = load i32, i32* %945, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %947
  %949 = load i8, i8* %948, align 1
  %950 = zext i8 %949 to i32
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %952, label %977

952:                                              ; preds = %942
  %953 = load i32, i32* %61, align 4
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %966, label %955

955:                                              ; preds = %952
  %956 = load i32, i32* %62, align 4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %957
  %959 = load i32, i32* %958, align 4
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %960
  %962 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %961, i32 0, i32 1
  %963 = load i32, i32* %962, align 4
  %964 = load i32, i32* %61, align 4
  %965 = icmp sgt i32 %963, %964
  br i1 %965, label %966, label %976

966:                                              ; preds = %955, %952
  %967 = load i32, i32* %62, align 4
  store i32 %967, i32* %60, align 4
  %968 = load i32, i32* %62, align 4
  %969 = sext i32 %968 to i64
  %970 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %969
  %971 = load i32, i32* %970, align 4
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %972
  %974 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %973, i32 0, i32 1
  %975 = load i32, i32* %974, align 4
  store i32 %975, i32* %61, align 4
  br label %976

976:                                              ; preds = %966, %955
  br label %977

977:                                              ; preds = %976, %942
  br label %978

978:                                              ; preds = %977
  %979 = load i32, i32* %62, align 4
  %980 = add nsw i32 %979, 1
  store i32 %980, i32* %62, align 4
  br label %932, !llvm.loop !22

981:                                              ; preds = %941, %932
  %982 = load i32, i32* %60, align 4
  %983 = icmp ne i32 %982, 15
  br i1 %983, label %984, label %1009

984:                                              ; preds = %981
  %985 = load i32, i32* %28, align 4
  %986 = icmp sgt i32 3, %985
  br i1 %986, label %987, label %989

987:                                              ; preds = %984
  store i32 2, i32* %56, align 4
  %988 = load i32, i32* %60, align 4
  store i32 %988, i32* %27, align 4
  br label %1008

989:                                              ; preds = %984
  %990 = load i32, i32* %28, align 4
  %991 = icmp eq i32 3, %990
  br i1 %991, label %992, label %1007

992:                                              ; preds = %989
  %993 = load i32, i32* %27, align 4
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds [15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 %994
  %996 = load i32, i32* %995, align 4
  store i32 %996, i32* %63, align 4
  %997 = load i32, i32* %61, align 4
  %998 = load i32, i32* %63, align 4
  %999 = sext i32 %998 to i64
  %1000 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %999
  %1001 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1000, i32 0, i32 1
  %1002 = load i32, i32* %1001, align 4
  %1003 = icmp sgt i32 %997, %1002
  br i1 %1003, label %1004, label %1006

1004:                                             ; preds = %992
  %1005 = load i32, i32* %60, align 4
  store i32 %1005, i32* %27, align 4
  br label %1006

1006:                                             ; preds = %1004, %992
  br label %1007

1007:                                             ; preds = %1006, %989
  br label %1008

1008:                                             ; preds = %1007, %987
  br label %1009

1009:                                             ; preds = %1008, %981
  br label %1010

1010:                                             ; preds = %1009, %928, %925, %922
  br label %1011

1011:                                             ; preds = %1010, %921
  br label %1012

1012:                                             ; preds = %1011, %891
  %1013 = load i32, i32* %56, align 4
  %1014 = icmp ne i32 %1013, 0
  br i1 %1014, label %1015, label %1024

1015:                                             ; preds = %1012
  %1016 = load i32, i32* %56, align 4
  %1017 = sub nsw i32 5, %1016
  %1018 = load i32, i32* %28, align 4
  %1019 = icmp sgt i32 %1017, %1018
  br i1 %1019, label %1020, label %1024

1020:                                             ; preds = %1015
  %1021 = load i32, i32* %49, align 4
  store i32 %1021, i32* %26, align 4
  %1022 = load i32, i32* %56, align 4
  %1023 = sub nsw i32 5, %1022
  store i32 %1023, i32* %28, align 4
  br label %1024

1024:                                             ; preds = %1020, %1015, %1012
  br label %1052

1025:                                             ; preds = %837
  %1026 = load i32, i32* %56, align 4
  %1027 = icmp ne i32 %1026, 5
  br i1 %1027, label %1028, label %1051

1028:                                             ; preds = %1025
  %1029 = load i32, i32* %49, align 4
  %1030 = icmp eq i32 %1029, 0
  br i1 %1030, label %1031, label %1039

1031:                                             ; preds = %1028
  %1032 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1033 = icmp ne %struct.SGFTree_t* %1032, null
  br i1 %1033, label %1034, label %1038

1034:                                             ; preds = %1031
  %1035 = load i8*, i8** %36, align 8
  %1036 = load i32, i32* %37, align 4
  %1037 = load i32, i32* %49, align 4
  call void @sgf_trace(i8* %1035, i32 %1036, i32 %1037, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.108, i64 0, i64 0))
  br label %1038

1038:                                             ; preds = %1034, %1031
  br label %1047

1039:                                             ; preds = %1028
  %1040 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1041 = icmp ne %struct.SGFTree_t* %1040, null
  br i1 %1041, label %1042, label %1046

1042:                                             ; preds = %1039
  %1043 = load i8*, i8** %36, align 8
  %1044 = load i32, i32* %37, align 4
  %1045 = load i32, i32* %49, align 4
  call void @sgf_trace(i8* %1043, i32 %1044, i32 %1045, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.109, i64 0, i64 0))
  br label %1046

1046:                                             ; preds = %1042, %1039
  br label %1047

1047:                                             ; preds = %1046, %1038
  %1048 = load i32, i32* %49, align 4
  store i32 %1048, i32* %26, align 4
  store i32 1, i32* %28, align 4
  %1049 = load i32, i32* %23, align 4
  %1050 = add nsw i32 %1049, -1
  store i32 %1050, i32* %23, align 4
  br label %1051

1051:                                             ; preds = %1047, %1025
  br label %1052

1052:                                             ; preds = %1051, %1024
  call void @pop_owl(%struct.local_owl_data** %12)
  call void @popgo()
  br label %1053

1053:                                             ; preds = %1052, %748, %722
  %1054 = load i32, i32* %25, align 4
  %1055 = add nsw i32 %1054, 1
  store i32 %1055, i32* %25, align 4
  br label %611, !llvm.loop !23

1056:                                             ; preds = %690, %632, %621, %611
  br label %1057

1057:                                             ; preds = %1056, %609, %461, %383
  %1058 = load i32, i32* %24, align 4
  %1059 = add nsw i32 %1058, 1
  store i32 %1059, i32* %24, align 4
  br label %370, !llvm.loop !24

1060:                                             ; preds = %370
  %1061 = load i32, i32* %17, align 4
  call void @close_pattern_list(i32 %1061, %struct.matched_patterns_list_data* %21)
  %1062 = load i32, i32* %28, align 4
  %1063 = icmp ne i32 %1062, 0
  br i1 %1063, label %1064, label %1158

1064:                                             ; preds = %1060
  %1065 = load i32, i32* %28, align 4
  %1066 = icmp eq i32 %1065, 3
  br i1 %1066, label %1067, label %1117

1067:                                             ; preds = %1064
  %1068 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1069 = icmp ne %struct.SGFTree_t* %1068, null
  br i1 %1069, label %1070, label %1075

1070:                                             ; preds = %1067
  %1071 = load i8*, i8** %36, align 8
  %1072 = load i32, i32* %37, align 4
  %1073 = load i32, i32* %26, align 4
  %1074 = load i32, i32* %28, align 4
  call void @sgf_trace(i8* %1071, i32 %1072, i32 %1073, i32 %1074, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.110, i64 0, i64 0))
  br label %1075

1075:                                             ; preds = %1070, %1067
  %1076 = load i32*, i32** %11, align 8
  %1077 = icmp ne i32* %1076, null
  br i1 %1077, label %1078, label %1081

1078:                                             ; preds = %1075
  %1079 = load i32, i32* %27, align 4
  %1080 = load i32*, i32** %11, align 8
  store i32 %1079, i32* %1080, align 4
  br label %1081

1081:                                             ; preds = %1078, %1075
  br label %1082

1082:                                             ; preds = %1081
  %1083 = load i32, i32* %28, align 4
  %1084 = icmp ne i32 %1083, 0
  br i1 %1084, label %1085, label %1091

1085:                                             ; preds = %1082
  %1086 = load i32*, i32** %10, align 8
  %1087 = icmp ne i32* %1086, null
  br i1 %1087, label %1088, label %1091

1088:                                             ; preds = %1085
  %1089 = load i32, i32* %26, align 4
  %1090 = load i32*, i32** %10, align 8
  store i32 %1089, i32* %1090, align 4
  br label %1091

1091:                                             ; preds = %1088, %1085, %1082
  %1092 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1093 = icmp ne %struct.read_result_t* %1092, null
  br i1 %1093, label %1094, label %1114

1094:                                             ; preds = %1091
  %1095 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1096 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1095, i32 0, i32 1
  %1097 = load i32, i32* %1096, align 4
  %1098 = and i32 %1097, 1023
  %1099 = or i32 %1098, 536870912
  %1100 = load i32, i32* %28, align 4
  %1101 = and i32 %1100, 15
  %1102 = shl i32 %1101, 24
  %1103 = or i32 %1099, %1102
  %1104 = load i32, i32* %27, align 4
  %1105 = and i32 %1104, 15
  %1106 = shl i32 %1105, 20
  %1107 = or i32 %1103, %1106
  %1108 = load i32, i32* %26, align 4
  %1109 = and i32 %1108, 1023
  %1110 = shl i32 %1109, 10
  %1111 = or i32 %1107, %1110
  %1112 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1113 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1112, i32 0, i32 1
  store i32 %1111, i32* %1113, align 4
  br label %1114

1114:                                             ; preds = %1094, %1091
  %1115 = load i32, i32* %28, align 4
  store i32 %1115, i32* %8, align 4
  br label %1187

1116:                                             ; No predecessors!
  br label %1157

1117:                                             ; preds = %1064
  %1118 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1119 = icmp ne %struct.SGFTree_t* %1118, null
  br i1 %1119, label %1120, label %1125

1120:                                             ; preds = %1117
  %1121 = load i8*, i8** %36, align 8
  %1122 = load i32, i32* %37, align 4
  %1123 = load i32, i32* %26, align 4
  %1124 = load i32, i32* %28, align 4
  call void @sgf_trace(i8* %1121, i32 %1122, i32 %1123, i32 %1124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.111, i64 0, i64 0))
  br label %1125

1125:                                             ; preds = %1120, %1117
  br label %1126

1126:                                             ; preds = %1125
  %1127 = load i32, i32* %28, align 4
  %1128 = icmp ne i32 %1127, 0
  br i1 %1128, label %1129, label %1135

1129:                                             ; preds = %1126
  %1130 = load i32*, i32** %10, align 8
  %1131 = icmp ne i32* %1130, null
  br i1 %1131, label %1132, label %1135

1132:                                             ; preds = %1129
  %1133 = load i32, i32* %26, align 4
  %1134 = load i32*, i32** %10, align 8
  store i32 %1133, i32* %1134, align 4
  br label %1135

1135:                                             ; preds = %1132, %1129, %1126
  %1136 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1137 = icmp ne %struct.read_result_t* %1136, null
  br i1 %1137, label %1138, label %1154

1138:                                             ; preds = %1135
  %1139 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1140 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1139, i32 0, i32 1
  %1141 = load i32, i32* %1140, align 4
  %1142 = and i32 %1141, 1023
  %1143 = or i32 %1142, 536870912
  %1144 = load i32, i32* %28, align 4
  %1145 = and i32 %1144, 15
  %1146 = shl i32 %1145, 24
  %1147 = or i32 %1143, %1146
  %1148 = load i32, i32* %26, align 4
  %1149 = and i32 %1148, 1023
  %1150 = shl i32 %1149, 10
  %1151 = or i32 %1147, %1150
  %1152 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1153 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1152, i32 0, i32 1
  store i32 %1151, i32* %1153, align 4
  br label %1154

1154:                                             ; preds = %1138, %1135
  %1155 = load i32, i32* %28, align 4
  store i32 %1155, i32* %8, align 4
  br label %1187

1156:                                             ; No predecessors!
  br label %1157

1157:                                             ; preds = %1156, %1116
  br label %1158

1158:                                             ; preds = %1157, %1060
  %1159 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1160 = icmp ne %struct.SGFTree_t* %1159, null
  br i1 %1160, label %1161, label %1174

1161:                                             ; preds = %1158
  %1162 = getelementptr inbounds [128 x i8], [128 x i8]* %64, i64 0, i64 0
  %1163 = load i32, i32* @count_variations, align 4
  %1164 = load i32, i32* %35, align 4
  %1165 = sub nsw i32 %1163, %1164
  %1166 = call i32 (i8*, i8*, ...) @sprintf(i8* %1162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.112, i64 0, i64 0), i32 %1165) #5
  %1167 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1168 = icmp ne %struct.SGFTree_t* %1167, null
  br i1 %1168, label %1169, label %1173

1169:                                             ; preds = %1161
  %1170 = load i8*, i8** %36, align 8
  %1171 = load i32, i32* %37, align 4
  %1172 = getelementptr inbounds [128 x i8], [128 x i8]* %64, i64 0, i64 0
  call void @sgf_trace(i8* %1170, i32 %1171, i32 0, i32 0, i8* %1172)
  br label %1173

1173:                                             ; preds = %1169, %1161
  br label %1174

1174:                                             ; preds = %1173, %1158
  br label %1175

1175:                                             ; preds = %1174
  %1176 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1177 = icmp ne %struct.read_result_t* %1176, null
  br i1 %1177, label %1178, label %1186

1178:                                             ; preds = %1175
  %1179 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1180 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1179, i32 0, i32 1
  %1181 = load i32, i32* %1180, align 4
  %1182 = and i32 %1181, 1023
  %1183 = or i32 %1182, 536870912
  %1184 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %1185 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %1184, i32 0, i32 1
  store i32 %1183, i32* %1185, align 4
  br label %1186

1186:                                             ; preds = %1178, %1175
  store i32 0, i32* %8, align 4
  br label %1187

1187:                                             ; preds = %169, %199, %324, %365, %450, %551, %677, %890, %1114, %1154, %1186
  %1188 = load i32, i32* %8, align 4
  ret i32 %1188
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_goal_list(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %13

12:                                               ; preds = %4
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5183, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i64 0, i64 0), i32 -1, i32 -1)
  br label %13

13:                                               ; preds = %12, %11
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %18

17:                                               ; preds = %13
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5184, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i64 0, i64 0), i32 -1, i32 -1)
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32*, i32** %5, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 15
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  store i32 0, i32* %23, align 4
  br label %31

24:                                               ; preds = %18
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %22
  ret void
}

declare dso_local void @store_persistent_owl_cache(i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_threaten_attack(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [3 x %struct.owl_move_data], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_owl_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [400 x i8], align 16
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.matched_patterns_list_data, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = sub nsw i32 3, %27
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %29 = call i32 @get_reading_node_counter()
  store i32 %29, i32* %13, align 4
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %30 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %19, i32 0, i32 0
  store i32 0, i32* %30, align 8
  store i32 1, i32* @result_certain, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @search_persistent_owl_cache(i32 2, i32 %31, i32 0, i32 0, i32* %12, i32* %32, i32* %33, i32* null)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %4, align 4
  br label %242

38:                                               ; preds = %3
  %39 = load i32, i32* @debug, align 4
  %40 = and i32 %39, 4096
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call double @gg_cputime()
  store double %43, double* %15, align 8
  br label %44

44:                                               ; preds = %42, %38
  %45 = load i32, i32* @stackp, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %49

48:                                               ; preds = %44
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1658, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 -1)
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i32, i32* @verbose, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %49
  br label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %5, align 4
  call void @init_owl(%struct.local_owl_data** %11, i32 %57, i32 0, i32 0, i32 1)
  %58 = getelementptr inbounds [400 x i8], [400 x i8]* %14, i64 0, i64 0
  %59 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %60 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %59, i32 0, i32 1
  %61 = getelementptr inbounds [400 x i8], [400 x i8]* %60, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %58, i8* align 4 %61, i64 400, i1 false)
  %62 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  call void @owl_make_domains(%struct.local_owl_data* %62, %struct.local_owl_data* null)
  %63 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 0
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %19, %struct.owl_move_data* %63, i32 %64, %struct.local_owl_data* %65, %struct.pattern_db* @owl_attackpat_db)
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %187, %56
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 3
  br i1 %68, label %69, label %190

69:                                               ; preds = %66
  %70 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  store %struct.local_owl_data* %70, %struct.local_owl_data** @current_owl_data, align 8
  %71 = load i32, i32* %10, align 4
  %72 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 0
  %73 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %19, i32 %71, %struct.owl_move_data* %72, i32 1)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %190

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 16
  store i32 %81, i32* %20, align 4
  %82 = load i32, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %185

84:                                               ; preds = %76
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %185

91:                                               ; preds = %84
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @trymove(i32 %92, i32 %93, i8* %98, i32 %99, i32 0, i32 0)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %184

102:                                              ; preds = %91
  store i32 0, i32* %22, align 4
  %103 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %104 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %103, i32 0, i32 12
  store i32 0, i32* %104, align 4
  %105 = load i32, i32* %20, align 4
  %106 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  call void @owl_update_boundary_marks(i32 %105, %struct.local_owl_data* %106)
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %162

113:                                              ; preds = %102
  store i32 21, i32* %21, align 4
  br label %114

114:                                              ; preds = %144, %113
  %115 = load i32, i32* %21, align 4
  %116 = icmp slt i32 %115, 400
  br i1 %116, label %117, label %147

117:                                              ; preds = %114
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %131, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %143

131:                                              ; preds = %124, %117
  %132 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %133 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %132, i32 0, i32 0
  %134 = load i32, i32* %21, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [400 x i8], [400 x i8]* %133, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32, i32* %21, align 4
  %142 = call i32 @find_origin(i32 %141)
  store i32 %142, i32* %22, align 4
  br label %147

143:                                              ; preds = %131, %124
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %21, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %21, align 4
  br label %114, !llvm.loop !25

147:                                              ; preds = %140, %114
  %148 = load i32, i32* %22, align 4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %22, align 4
  %152 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %153 = call i32 @do_owl_attack(i32 %151, i32* null, i32* null, %struct.local_owl_data* %152, i32 0, i32 0, i32 0)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150, %147
  call void @popgo()
  %156 = load i32, i32* @stackp, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %160

159:                                              ; preds = %155
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1696, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 -1)
  br label %160

160:                                              ; preds = %159, %158
  store i32 1, i32* %12, align 4
  br label %190

161:                                              ; preds = %150
  br label %179

162:                                              ; preds = %102
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %165 = call i32 @do_owl_attack(i32 %163, i32* %18, i32* null, %struct.local_owl_data* %164, i32 0, i32 0, i32 0)
  %166 = icmp eq i32 %165, 5
  br i1 %166, label %167, label %178

167:                                              ; preds = %162
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %169
  %171 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 16
  store i32 %172, i32* %17, align 4
  call void @popgo()
  %173 = load i32, i32* @stackp, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %167
  br label %177

176:                                              ; preds = %167
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1705, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 -1)
  br label %177

177:                                              ; preds = %176, %175
  store i32 1, i32* %12, align 4
  br label %190

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178, %161
  call void @popgo()
  %180 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %181 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %180, i32 0, i32 1
  %182 = getelementptr inbounds [400 x i8], [400 x i8]* %181, i64 0, i64 0
  %183 = getelementptr inbounds [400 x i8], [400 x i8]* %14, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %182, i8* align 16 %183, i64 400, i1 false)
  br label %184

184:                                              ; preds = %179, %91
  br label %185

185:                                              ; preds = %184, %84, %76
  br label %186

186:                                              ; preds = %185
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %9, align 4
  br label %66, !llvm.loop !26

190:                                              ; preds = %177, %160, %75, %66
  %191 = call i32 @get_reading_node_counter()
  %192 = load i32, i32* %13, align 4
  %193 = sub nsw i32 %191, %192
  store i32 %193, i32* %16, align 4
  %194 = load i32, i32* @stackp, align 4
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %198

197:                                              ; preds = %190
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1715, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 -1)
  br label %198

198:                                              ; preds = %197, %196
  %199 = load i32, i32* @debug, align 4
  %200 = and i32 %199, 4096
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %198
  br label %214

203:                                              ; preds = %198
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %18, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @local_owl_node_counter, align 4
  %209 = load i32, i32* %16, align 4
  %210 = call double @gg_cputime()
  %211 = load double, double* %15, align 8
  %212 = fsub double %210, %211
  %213 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.7, i64 0, i64 0), i32 %204, i32 %205, i32 %206, i32 %207, i32 %208, i32 %209, double %212)
  br label %214

214:                                              ; preds = %203, %202
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* %12, align 4
  %217 = load i32, i32* %17, align 4
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %16, align 4
  %220 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %221 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %220, i32 0, i32 0
  %222 = getelementptr inbounds [400 x i8], [400 x i8]* %221, i64 0, i64 0
  %223 = load i32, i32* %5, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %224
  %226 = load i8, i8* %225, align 1
  %227 = zext i8 %226 to i32
  call void @store_persistent_owl_cache(i32 2, i32 %215, i32 0, i32 0, i32 %216, i32 %217, i32 %218, i32 0, i32 %219, i8* %222, i32 %227)
  %228 = load i32*, i32** %6, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %214
  %231 = load i32, i32* %17, align 4
  %232 = load i32*, i32** %6, align 8
  store i32 %231, i32* %232, align 4
  br label %233

233:                                              ; preds = %230, %214
  %234 = load i32*, i32** %7, align 8
  %235 = icmp ne i32* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32, i32* %18, align 4
  %238 = load i32*, i32** %7, align 8
  store i32 %237, i32* %238, align 4
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i32, i32* %10, align 4
  call void @close_pattern_list(i32 %240, %struct.matched_patterns_list_data* %19)
  %241 = load i32, i32* %12, align 4
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %239, %36
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_shapes(%struct.matched_patterns_list_data* %0, %struct.owl_move_data* %1, i32 %2, %struct.local_owl_data* %3, %struct.pattern_db* %4) #0 {
  %6 = alloca %struct.matched_patterns_list_data*, align 8
  %7 = alloca %struct.owl_move_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.local_owl_data*, align 8
  %10 = alloca %struct.pattern_db*, align 8
  %11 = alloca %struct.SGFTree_t*, align 8
  %12 = alloca i32, align 4
  store %struct.matched_patterns_list_data* %0, %struct.matched_patterns_list_data** %6, align 8
  store %struct.owl_move_data* %1, %struct.owl_move_data** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.local_owl_data* %3, %struct.local_owl_data** %9, align 8
  store %struct.pattern_db* %4, %struct.pattern_db** %10, align 8
  %13 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %13, %struct.SGFTree_t** %11, align 8
  %14 = load i32, i32* @count_variations, align 4
  store i32 %14, i32* %12, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %15 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  store %struct.local_owl_data* %15, %struct.local_owl_data** @current_owl_data, align 8
  %16 = load %struct.owl_move_data*, %struct.owl_move_data** %7, align 8
  call void @clear_owl_move_data(%struct.owl_move_data* %16)
  %17 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %18 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %17, i32 0, i32 13
  %19 = getelementptr inbounds [400 x i8], [400 x i8]* %18, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 400, i1 false)
  %20 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  call void @init_pattern_list(%struct.matched_patterns_list_data* %20)
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.pattern_db*, %struct.pattern_db** %10, align 8
  %23 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %24 = bitcast %struct.matched_patterns_list_data* %23 to i8*
  %25 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %26 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @collect_owl_shapes_callbacks, i32 %21, %struct.pattern_db* %22, i8* %24, i8* %27)
  %28 = load %struct.SGFTree_t*, %struct.SGFTree_t** %11, align 8
  store %struct.SGFTree_t* %28, %struct.SGFTree_t** @sgf_dumptree, align 8
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* @count_variations, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %0, i32 %1, %struct.owl_move_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.matched_patterns_list_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.owl_move_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.matched_pattern_data, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.SGFTree_t*, align 8
  %18 = alloca i32, align 4
  %19 = alloca float, align 4
  %20 = alloca %struct.pattern*, align 8
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  %23 = alloca %struct.pattern*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.matched_patterns_list_data* %0, %struct.matched_patterns_list_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.owl_move_data* %2, %struct.owl_move_data** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %26 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %26, %struct.SGFTree_t** %17, align 8
  %27 = load i32, i32* @count_variations, align 4
  store i32 %27, i32* %18, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %28 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %29 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %467, %4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %34 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %470

37:                                               ; preds = %31
  %38 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %39 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %38, i32 0, i32 5
  %40 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %40, i64 %42
  %44 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %43, i32 0, i32 2
  %45 = load %struct.pattern*, %struct.pattern** %44, align 8
  %46 = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 13
  %47 = load float, float* %46, align 4
  store float %47, float* %19, align 4
  %48 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %49 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %48, i32 0, i32 5
  %50 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %50, i64 %52
  %54 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %53, i32 0, i32 2
  %55 = load %struct.pattern*, %struct.pattern** %54, align 8
  store %struct.pattern* %55, %struct.pattern** %20, align 8
  %56 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %57 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %56, i32 0, i32 5
  %58 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %58, i64 %60
  %62 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %21, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %66 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %176

69:                                               ; preds = %37
  %70 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %71 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %168, %69
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %171

78:                                               ; preds = %74
  %79 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %80 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %79, i32 0, i32 5
  %81 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %80, align 8
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %81, i64 %83
  %85 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %84, i32 0, i32 2
  %86 = load %struct.pattern*, %struct.pattern** %85, align 8
  %87 = getelementptr inbounds %struct.pattern, %struct.pattern* %86, i32 0, i32 13
  %88 = load float, float* %87, align 4
  store float %88, float* %22, align 4
  store %struct.pattern* null, %struct.pattern** %23, align 8
  store i32 0, i32* %24, align 4
  %89 = load float, float* %22, align 4
  %90 = load float, float* %19, align 4
  %91 = fcmp oge float %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %78
  %93 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %94 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %93, i32 0, i32 5
  %95 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %95, i64 %97
  %99 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %98, i32 0, i32 2
  %100 = load %struct.pattern*, %struct.pattern** %99, align 8
  store %struct.pattern* %100, %struct.pattern** %23, align 8
  %101 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %102 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %101, i32 0, i32 5
  %103 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %103, i64 %105
  %107 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  store i32 %108, i32* %24, align 4
  br label %109

109:                                              ; preds = %92, %78
  %110 = load float, float* %22, align 4
  %111 = load float, float* %19, align 4
  %112 = fcmp ogt float %110, %111
  br i1 %112, label %133, label %113

113:                                              ; preds = %109
  %114 = load float, float* %22, align 4
  %115 = load float, float* %19, align 4
  %116 = fcmp oeq float %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load %struct.pattern*, %struct.pattern** %23, align 8
  %119 = load %struct.pattern*, %struct.pattern** %20, align 8
  %120 = icmp ult %struct.pattern* %118, %119
  br i1 %120, label %133, label %121

121:                                              ; preds = %117, %113
  %122 = load float, float* %22, align 4
  %123 = load float, float* %19, align 4
  %124 = fcmp oeq float %122, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %121
  %126 = load %struct.pattern*, %struct.pattern** %23, align 8
  %127 = load %struct.pattern*, %struct.pattern** %20, align 8
  %128 = icmp eq %struct.pattern* %126, %127
  br i1 %128, label %129, label %167

129:                                              ; preds = %125
  %130 = load i32, i32* %24, align 4
  %131 = load i32, i32* %21, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %133, label %167

133:                                              ; preds = %129, %117, %109
  %134 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %135 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %134, i32 0, i32 5
  %136 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %135, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %136, i64 %138
  %140 = bitcast %struct.matched_pattern_data* %15 to i8*
  %141 = bitcast %struct.matched_pattern_data* %139 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %140, i8* align 8 %141, i64 16, i1 false)
  %142 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %143 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %142, i32 0, i32 5
  %144 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %144, i64 %146
  %148 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %149 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %148, i32 0, i32 5
  %150 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %150, i64 %152
  %154 = bitcast %struct.matched_pattern_data* %147 to i8*
  %155 = bitcast %struct.matched_pattern_data* %153 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %154, i8* align 8 %155, i64 16, i1 false)
  %156 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %157 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %156, i32 0, i32 5
  %158 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %158, i64 %160
  %162 = bitcast %struct.matched_pattern_data* %161 to i8*
  %163 = bitcast %struct.matched_pattern_data* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %162, i8* align 8 %163, i64 16, i1 false)
  %164 = load float, float* %22, align 4
  store float %164, float* %19, align 4
  %165 = load %struct.pattern*, %struct.pattern** %23, align 8
  store %struct.pattern* %165, %struct.pattern** %20, align 8
  %166 = load i32, i32* %24, align 4
  store i32 %166, i32* %21, align 4
  br label %167

167:                                              ; preds = %133, %129, %125, %121
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %11, align 4
  br label %74, !llvm.loop !27

171:                                              ; preds = %74
  %172 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %173 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %171, %37
  %177 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %178 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %177, i32 0, i32 5
  %179 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %178, align 8
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %179, i64 %181
  %183 = bitcast %struct.matched_pattern_data* %15 to i8*
  %184 = bitcast %struct.matched_pattern_data* %182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 8 %184, i64 16, i1 false)
  %185 = load float, float* %19, align 4
  %186 = load i32, i32* %9, align 4
  %187 = sitofp i32 %186 to float
  %188 = fcmp olt float %185, %187
  br i1 %188, label %189, label %199

189:                                              ; preds = %176
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  %192 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %193 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %192, i32 0, i32 3
  store i32 %191, i32* %193, align 4
  %194 = load i32, i32* %10, align 4
  %195 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %196 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load %struct.SGFTree_t*, %struct.SGFTree_t** %17, align 8
  store %struct.SGFTree_t* %197, %struct.SGFTree_t** @sgf_dumptree, align 8
  %198 = load i32, i32* %18, align 4
  store i32 %198, i32* @count_variations, align 4
  store i32 0, i32* %5, align 4
  br label %482

199:                                              ; preds = %176
  %200 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp ult i32 %202, 421
  br i1 %203, label %204, label %212

204:                                              ; preds = %199
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp ne i32 %209, 3
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %219

212:                                              ; preds = %204, %199
  %213 = load i32, i32* %14, align 4
  %214 = sdiv i32 %213, 20
  %215 = sub nsw i32 %214, 1
  %216 = load i32, i32* %14, align 4
  %217 = srem i32 %216, 20
  %218 = sub nsw i32 %217, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 3098, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i64 0, i64 0), i32 %215, i32 %218)
  br label %219

219:                                              ; preds = %212, %211
  store i32 0, i32* %12, align 4
  br label %220

220:                                              ; preds = %242, %219
  %221 = load i32, i32* %12, align 4
  %222 = icmp slt i32 %221, 3
  br i1 %222, label %223, label %245

223:                                              ; preds = %220
  %224 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %224, i64 %226
  %228 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %240, label %232

232:                                              ; preds = %223
  %233 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %234 = load i32, i32* %12, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %233, i64 %235
  %237 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp sle i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %232, %223
  br label %245

241:                                              ; preds = %232
  br label %242

242:                                              ; preds = %241
  %243 = load i32, i32* %12, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %12, align 4
  br label %220, !llvm.loop !28

245:                                              ; preds = %240, %220
  %246 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %247 = load i32, i32* %12, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %246, i64 %248
  %250 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %245
  br label %467

255:                                              ; preds = %245
  %256 = load i32, i32* %12, align 4
  %257 = icmp slt i32 %256, 3
  br i1 %257, label %258, label %259

258:                                              ; preds = %255
  br label %260

259:                                              ; preds = %255
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 3105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.137, i64 0, i64 0), i32 -1, i32 -1)
  br label %260

260:                                              ; preds = %259, %258
  %261 = load i32, i32* %14, align 4
  %262 = load i32, i32* %7, align 4
  %263 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i32 0, i32 2
  %264 = load %struct.pattern*, %struct.pattern** %263, align 8
  %265 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @check_pattern_hard(i32 %261, i32 %262, %struct.pattern* %264, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %466

269:                                              ; preds = %260
  %270 = load i32, i32* %14, align 4
  %271 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %271, i64 %273
  %275 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %274, i32 0, i32 0
  store i32 %270, i32* %275, align 8
  %276 = load float, float* %19, align 4
  %277 = fptosi float %276 to i32
  %278 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %279 = load i32, i32* %12, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %278, i64 %280
  %282 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %281, i32 0, i32 1
  store i32 %277, i32* %282, align 4
  %283 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i32 0, i32 2
  %284 = load %struct.pattern*, %struct.pattern** %283, align 8
  %285 = getelementptr inbounds %struct.pattern, %struct.pattern* %284, i32 0, i32 3
  %286 = load i8*, i8** %285, align 8
  %287 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %287, i64 %289
  %291 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %290, i32 0, i32 2
  store i8* %286, i8** %291, align 8
  store i32 1, i32* %16, align 4
  %292 = load i32, i32* @verbose, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %269
  br label %308

295:                                              ; preds = %269
  %296 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i32 0, i32 2
  %297 = load %struct.pattern*, %struct.pattern** %296, align 8
  %298 = getelementptr inbounds %struct.pattern, %struct.pattern* %297, i32 0, i32 3
  %299 = load i8*, i8** %298, align 8
  %300 = load i32, i32* %14, align 4
  %301 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %301, i64 %303
  %305 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i64 0, i64 0), i8* %299, i32 %300, i32 %306)
  br label %308

308:                                              ; preds = %295, %294
  %309 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i32 0, i32 2
  %310 = load %struct.pattern*, %struct.pattern** %309, align 8
  %311 = getelementptr inbounds %struct.pattern, %struct.pattern* %310, i32 0, i32 12
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, 512
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %321

315:                                              ; preds = %308
  %316 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %317 = load i32, i32* %12, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %316, i64 %318
  %320 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %319, i32 0, i32 3
  store i32 0, i32* %320, align 8
  br label %446

321:                                              ; preds = %308
  %322 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i32 0, i32 2
  %323 = load %struct.pattern*, %struct.pattern** %322, align 8
  %324 = getelementptr inbounds %struct.pattern, %struct.pattern* %323, i32 0, i32 12
  %325 = load i32, i32* %324, align 8
  %326 = and i32 %325, 2048
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %439

328:                                              ; preds = %321
  store i32 1, i32* %25, align 4
  %329 = load i32, i32* %10, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %13, align 4
  br label %331

331:                                              ; preds = %429, %328
  %332 = load i32, i32* %13, align 4
  %333 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %334 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = icmp slt i32 %332, %335
  br i1 %336, label %337, label %432

337:                                              ; preds = %331
  %338 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %339 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %338, i32 0, i32 5
  %340 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %339, align 8
  %341 = load i32, i32* %13, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %340, i64 %342
  %344 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %14, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %428

348:                                              ; preds = %337
  %349 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %350 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %349, i32 0, i32 5
  %351 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %350, align 8
  %352 = load i32, i32* %13, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %351, i64 %353
  %355 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %354, i32 0, i32 2
  %356 = load %struct.pattern*, %struct.pattern** %355, align 8
  %357 = getelementptr inbounds %struct.pattern, %struct.pattern* %356, i32 0, i32 12
  %358 = load i32, i32* %357, align 8
  %359 = and i32 %358, 512
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %374, label %361

361:                                              ; preds = %348
  %362 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %363 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %362, i32 0, i32 5
  %364 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %363, align 8
  %365 = load i32, i32* %13, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %364, i64 %366
  %368 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %367, i32 0, i32 2
  %369 = load %struct.pattern*, %struct.pattern** %368, align 8
  %370 = getelementptr inbounds %struct.pattern, %struct.pattern* %369, i32 0, i32 12
  %371 = load i32, i32* %370, align 8
  %372 = and i32 %371, 2048
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %428, label %374

374:                                              ; preds = %361, %348
  %375 = load i32, i32* %14, align 4
  %376 = load i32, i32* %7, align 4
  %377 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %378 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %377, i32 0, i32 5
  %379 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %378, align 8
  %380 = load i32, i32* %13, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %379, i64 %381
  %383 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %382, i32 0, i32 2
  %384 = load %struct.pattern*, %struct.pattern** %383, align 8
  %385 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %386 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %385, i32 0, i32 5
  %387 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %386, align 8
  %388 = load i32, i32* %13, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %387, i64 %389
  %391 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %390, i32 0, i32 1
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @check_pattern_hard(i32 %375, i32 %376, %struct.pattern* %384, i32 %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %428

395:                                              ; preds = %374
  %396 = load i32, i32* @verbose, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %399, label %398

398:                                              ; preds = %395
  br label %412

399:                                              ; preds = %395
  %400 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %401 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %400, i32 0, i32 5
  %402 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %401, align 8
  %403 = load i32, i32* %13, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %402, i64 %404
  %406 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %405, i32 0, i32 2
  %407 = load %struct.pattern*, %struct.pattern** %406, align 8
  %408 = getelementptr inbounds %struct.pattern, %struct.pattern* %407, i32 0, i32 3
  %409 = load i8*, i8** %408, align 8
  %410 = load i32, i32* %14, align 4
  %411 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.138, i64 0, i64 0), i8* %409, i32 %410)
  br label %412

412:                                              ; preds = %399, %398
  %413 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %414 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %413, i32 0, i32 5
  %415 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %414, align 8
  %416 = load i32, i32* %13, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %415, i64 %417
  %419 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %418, i32 0, i32 2
  %420 = load %struct.pattern*, %struct.pattern** %419, align 8
  %421 = getelementptr inbounds %struct.pattern, %struct.pattern* %420, i32 0, i32 12
  %422 = load i32, i32* %421, align 8
  %423 = and i32 %422, 512
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %426

425:                                              ; preds = %412
  store i32 0, i32* %25, align 4
  br label %427

426:                                              ; preds = %412
  store i32 2, i32* %25, align 4
  br label %427

427:                                              ; preds = %426, %425
  br label %432

428:                                              ; preds = %374, %361, %337
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %13, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %13, align 4
  br label %331, !llvm.loop !29

432:                                              ; preds = %427, %331
  %433 = load i32, i32* %25, align 4
  %434 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %435 = load i32, i32* %12, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %434, i64 %436
  %438 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %437, i32 0, i32 3
  store i32 %433, i32* %438, align 8
  br label %445

439:                                              ; preds = %321
  %440 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %441 = load i32, i32* %12, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %440, i64 %442
  %444 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %443, i32 0, i32 3
  store i32 2, i32* %444, align 8
  br label %445

445:                                              ; preds = %439, %432
  br label %446

446:                                              ; preds = %445, %315
  %447 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %15, i32 0, i32 2
  %448 = load %struct.pattern*, %struct.pattern** %447, align 8
  %449 = getelementptr inbounds %struct.pattern, %struct.pattern* %448, i32 0, i32 12
  %450 = load i32, i32* %449, align 8
  %451 = and i32 %450, 8192
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %459

453:                                              ; preds = %446
  %454 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %455 = load i32, i32* %12, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %454, i64 %456
  %458 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %457, i32 0, i32 4
  store i32 1, i32* %458, align 4
  br label %465

459:                                              ; preds = %446
  %460 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %461 = load i32, i32* %12, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %460, i64 %462
  %464 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %463, i32 0, i32 4
  store i32 0, i32* %464, align 4
  br label %465

465:                                              ; preds = %459, %453
  br label %470

466:                                              ; preds = %260
  br label %467

467:                                              ; preds = %466, %254
  %468 = load i32, i32* %10, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %10, align 4
  br label %31, !llvm.loop !30

470:                                              ; preds = %465, %31
  %471 = load %struct.SGFTree_t*, %struct.SGFTree_t** %17, align 8
  store %struct.SGFTree_t* %471, %struct.SGFTree_t** @sgf_dumptree, align 8
  %472 = load i32, i32* %18, align 4
  store i32 %472, i32* @count_variations, align 4
  %473 = load i32, i32* %10, align 4
  %474 = add nsw i32 %473, 1
  %475 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %476 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %475, i32 0, i32 3
  store i32 %474, i32* %476, align 4
  %477 = load i32, i32* %10, align 4
  %478 = add nsw i32 %477, 1
  %479 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %6, align 8
  %480 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %479, i32 0, i32 2
  store i32 %478, i32* %480, align 8
  %481 = load i32, i32* %16, align 4
  store i32 %481, i32* %5, align 4
  br label %482

482:                                              ; preds = %470, %189
  %483 = load i32, i32* %5, align 4
  ret i32 %483
}

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_update_boundary_marks(i32 %0, %struct.local_owl_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.local_owl_data*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.local_owl_data* %1, %struct.local_owl_data** %4, align 8
  store i8 0, i8* %5, align 1
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %80, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 4
  br i1 %11, label %12, label %83

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %13, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp ne i32 %23, 3
  br i1 %24, label %25, label %43

25:                                               ; preds = %12
  %26 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %27 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %26, i32 0, i32 1
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* %5, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %25
  %37 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %38 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %37, i32 0, i32 1
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x i8], [400 x i8]* %38, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %5, align 1
  br label %43

43:                                               ; preds = %36, %25, %12
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %50 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %79

53:                                               ; preds = %43
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %60 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = icmp eq i32 %58, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %53
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %66, i32 0, i32 16
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %72 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %71, i32 0, i32 0
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x i8], [400 x i8]* %72, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %70
  store i8 2, i8* %5, align 1
  br label %79

79:                                               ; preds = %78, %70, %63, %53, %43
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %9, !llvm.loop !31

83:                                               ; preds = %9
  %84 = load i8, i8* %5, align 1
  %85 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %86 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %85, i32 0, i32 1
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [400 x i8], [400 x i8]* %86, i64 0, i64 %88
  store i8 %84, i8* %89, align 1
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %129, %83
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %132

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %94, %98
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %104, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %93
  %112 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %113 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %112, i32 0, i32 1
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [400 x i8], [400 x i8]* %113, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* %5, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %111
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %125 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %124, i32 0, i32 1
  %126 = getelementptr inbounds [400 x i8], [400 x i8]* %125, i64 0, i64 0
  %127 = load i8, i8* %5, align 1
  call void @mark_string(i32 %123, i8* %126, i8 signext %127)
  br label %128

128:                                              ; preds = %122, %111, %93
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %90, !llvm.loop !32

132:                                              ; preds = %90
  ret void
}

declare dso_local i32 @find_origin(i32) #1

declare dso_local void @popgo() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_pattern_list(i32 %0, %struct.matched_patterns_list_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.matched_patterns_list_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFTree_t*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.matched_patterns_list_data* %1, %struct.matched_patterns_list_data** %4, align 8
  %9 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %10 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %117

13:                                               ; preds = %2
  %14 = load i32, i32* @allpats, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %112

16:                                               ; preds = %13
  %17 = load i32, i32* @verbose, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %112

19:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %20 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %20, %struct.SGFTree_t** %7, align 8
  %21 = load i32, i32* @count_variations, align 4
  store i32 %21, i32* %8, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %22 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %23 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %106, %19
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %28 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %109

31:                                               ; preds = %25
  %32 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %33 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %32, i32 0, i32 5
  %34 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %34, i64 %36
  %38 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %42 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %41, i32 0, i32 5
  %43 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %43, i64 %45
  %47 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %46, i32 0, i32 2
  %48 = load %struct.pattern*, %struct.pattern** %47, align 8
  %49 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %50 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %49, i32 0, i32 5
  %51 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %51, i64 %53
  %55 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @check_pattern_hard(i32 %39, i32 %40, %struct.pattern* %48, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %105

59:                                               ; preds = %31
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %69, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* @verbose, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %68

66:                                               ; preds = %62
  %67 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.135, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %65
  call void @dump_stack()
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* @verbose, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %69
  br label %104

73:                                               ; preds = %69
  %74 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %75 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %74, i32 0, i32 5
  %76 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %76, i64 %78
  %80 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %79, i32 0, i32 2
  %81 = load %struct.pattern*, %struct.pattern** %80, align 8
  %82 = getelementptr inbounds %struct.pattern, %struct.pattern* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %85 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %84, i32 0, i32 5
  %86 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %86, i64 %88
  %90 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %93 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %92, i32 0, i32 5
  %94 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %94, i64 %96
  %98 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %97, i32 0, i32 2
  %99 = load %struct.pattern*, %struct.pattern** %98, align 8
  %100 = getelementptr inbounds %struct.pattern, %struct.pattern* %99, i32 0, i32 13
  %101 = load float, float* %100, align 4
  %102 = fptosi float %101 to i32
  %103 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i64 0, i64 0), i8* %83, i32 %91, i32 %102)
  br label %104

104:                                              ; preds = %73, %72
  br label %105

105:                                              ; preds = %104, %31
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %25, !llvm.loop !33

109:                                              ; preds = %25
  %110 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  store %struct.SGFTree_t* %110, %struct.SGFTree_t** @sgf_dumptree, align 8
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* @count_variations, align 4
  br label %112

112:                                              ; preds = %109, %16, %13
  %113 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %114 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %113, i32 0, i32 5
  %115 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %114, align 8
  %116 = bitcast %struct.matched_pattern_data* %115 to i8*
  call void @free(i8* %116) #5
  br label %117

117:                                              ; preds = %112, %2
  %118 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %4, align 8
  %119 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %118, i32 0, i32 1
  store i32 -1, i32* %119, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_defend(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = call i32 @get_reading_node_counter()
  store i32 %17, i32* %11, align 4
  store double 0.000000e+00, double* %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 15, i32* %16, align 4
  store i32 1, i32* @result_certain, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %108

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @search_persistent_owl_cache(i32 1, i32 %26, i32 0, i32 0, i32* %10, i32* %27, i32* %28, i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %108

34:                                               ; preds = %25
  %35 = load i32, i32* @debug, align 4
  %36 = and i32 %35, 4096
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = call double @gg_cputime()
  store double %39, double* %12, align 8
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* @verbose, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %44, %43
  %48 = load i32, i32* %6, align 4
  call void @init_owl(%struct.local_owl_data** @owl_defend.owl, i32 %48, i32 0, i32 0, i32 1)
  %49 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_defend.owl, align 8
  call void @owl_make_domains(%struct.local_owl_data* %49, %struct.local_owl_data* null)
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_defend.owl, align 8
  %52 = load i32*, i32** %9, align 8
  call void @prepare_goal_list(i32 %50, %struct.local_owl_data* %51, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32* @goal_worms_computed, i32* %52, i32 1)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_defend.owl, align 8
  %55 = call i32 @do_owl_defend(i32 %53, i32* %14, i32* %16, %struct.local_owl_data* %54, i32 0, i32 0, i32 0)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %16, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %15, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32 %56)
  %57 = call i32 @get_reading_node_counter()
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %57, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* @debug, align 4
  %61 = and i32 %60, 4096
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %47
  br label %74

64:                                               ; preds = %47
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @local_owl_node_counter, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call double @gg_cputime()
  %71 = load double, double* %12, align 8
  %72 = fsub double %70, %71
  %73 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.9, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, double %72)
  br label %74

74:                                               ; preds = %64, %63
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* @result_certain, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_defend.owl, align 8
  %82 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds [400 x i8], [400 x i8]* %82, i64 0, i64 0
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  call void @store_persistent_owl_cache(i32 1, i32 %75, i32 0, i32 0, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i8* %83, i32 %88)
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %74
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %7, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %74
  %95 = load i32*, i32** %9, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* %15, align 4
  %99 = load i32*, i32** %9, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32*, i32** %8, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* @result_certain, align 4
  %105 = load i32*, i32** %8, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %32, %24
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_owl_defend(i32 %0, i32* %1, i32* %2, %struct.local_owl_data* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.local_owl_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [3 x %struct.owl_move_data], align 16
  %18 = alloca [3 x %struct.owl_move_data], align 16
  %19 = alloca %struct.owl_move_data*, align 8
  %20 = alloca %struct.matched_patterns_list_data, align 8
  %21 = alloca [400 x i8], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.eyevalue, align 1
  %31 = alloca i32, align 4
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.read_result_t*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.SGFTree_t*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca [192 x i8], align 16
  %50 = alloca [196 x i8], align 16
  %51 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store %struct.local_owl_data* %3, %struct.local_owl_data** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  store i32 %56, i32* %16, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i32 15, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 -1, i32* %28, align 4
  store i32 -1, i32* %29, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %34, align 8
  %57 = load i32, i32* @count_variations, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %35, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.121, i64 0, i64 0), i8** %36, align 8
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %37, align 4
  %60 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %20, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load i32, i32* @stackp, align 4
  %62 = load i32, i32* @owl_branch_depth, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %168

64:                                               ; preds = %7
  %65 = load i32, i32* @hashflags, align 4
  %66 = and i32 %65, 512
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %168

68:                                               ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @get_read_result(i32 1, i32 %69, i32 %70, i32* %9, %struct.read_result_t** %34)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %167

73:                                               ; preds = %68
  %74 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %75 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = lshr i32 %76, 24
  %78 = and i32 %77, 15
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %73
  %81 = load i32*, i32** %10, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %90

83:                                               ; preds = %80
  %84 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %85 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = lshr i32 %86, 10
  %88 = and i32 %87, 1023
  %89 = load i32*, i32** %10, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %83, %80
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %93 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = lshr i32 %94, 24
  %96 = and i32 %95, 15
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %115

98:                                               ; preds = %91
  %99 = load i32*, i32** %11, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %114

101:                                              ; preds = %98
  %102 = load i32, i32* @goal_worms_computed, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %106 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = lshr i32 %107, 20
  %109 = and i32 %108, 15
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  br label %113

111:                                              ; preds = %101
  %112 = load i32*, i32** %11, align 8
  store i32 15, i32* %112, align 4
  br label %113

113:                                              ; preds = %111, %104
  br label %114

114:                                              ; preds = %113, %98
  br label %115

115:                                              ; preds = %114, %91
  %116 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %117 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = lshr i32 %118, 24
  %120 = and i32 %119, 15
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %124 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = lshr i32 %125, 24
  %127 = and i32 %126, 15
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %137

129:                                              ; preds = %122, %115
  %130 = load i32, i32* @verbose, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %35, align 4
  %135 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.91, i64 0, i64 0), i32 %134)
  br label %136

136:                                              ; preds = %133, %132
  br label %145

137:                                              ; preds = %122
  %138 = load i32, i32* @verbose, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %144

141:                                              ; preds = %137
  %142 = load i32, i32* %35, align 4
  %143 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.90, i64 0, i64 0), i32 %142)
  br label %144

144:                                              ; preds = %141, %140
  br label %145

145:                                              ; preds = %144, %136
  %146 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %147 = icmp ne %struct.SGFTree_t* %146, null
  br i1 %147, label %148, label %161

148:                                              ; preds = %145
  %149 = load i8*, i8** %36, align 8
  %150 = load i32, i32* %37, align 4
  %151 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %152 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = lshr i32 %153, 10
  %155 = and i32 %154, 1023
  %156 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %157 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = lshr i32 %158, 24
  %160 = and i32 %159, 15
  call void @sgf_trace(i8* %149, i32 %150, i32 %155, i32 %160, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i64 0, i64 0))
  br label %161

161:                                              ; preds = %148, %145
  %162 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %163 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = lshr i32 %164, 24
  %166 = and i32 %165, 15
  store i32 %166, i32* %8, align 4
  br label %872

167:                                              ; preds = %68
  br label %168

168:                                              ; preds = %167, %64, %7
  %169 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %170 = call i32 @owl_escape_route(%struct.local_owl_data* %169)
  store i32 %170, i32* %31, align 4
  %171 = load i32, i32* @stackp, align 4
  %172 = icmp sgt i32 %171, 2
  br i1 %172, label %173, label %209

173:                                              ; preds = %168
  %174 = load i32, i32* %31, align 4
  %175 = icmp sge i32 %174, 5
  br i1 %175, label %176, label %209

176:                                              ; preds = %173
  %177 = load i32, i32* @verbose, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  br label %183

180:                                              ; preds = %176
  %181 = load i32, i32* %35, align 4
  %182 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.122, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %180, %179
  %184 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %185 = icmp ne %struct.SGFTree_t* %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i8*, i8** %36, align 8
  %188 = load i32, i32* %37, align 4
  call void @sgf_trace(i8* %187, i32 %188, i32 0, i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.123, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186, %183
  br label %190

190:                                              ; preds = %189
  %191 = load i32*, i32** %10, align 8
  %192 = icmp ne i32* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load i32*, i32** %10, align 8
  store i32 0, i32* %194, align 4
  br label %195

195:                                              ; preds = %193, %190
  %196 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %197 = icmp ne %struct.read_result_t* %196, null
  br i1 %197, label %198, label %207

198:                                              ; preds = %195
  %199 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %200 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = and i32 %201, 1023
  %203 = or i32 %202, 536870912
  %204 = or i32 %203, 83886080
  %205 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %206 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %198, %195
  store i32 5, i32* %8, align 4
  br label %872

208:                                              ; No predecessors!
  br label %209

209:                                              ; preds = %208, %173, %168
  %210 = load i32, i32* %35, align 4
  %211 = call i32 @reading_limit_reached(i8** %32, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %240

213:                                              ; preds = %209
  %214 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %215 = icmp ne %struct.SGFTree_t* %214, null
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  %217 = load i8*, i8** %36, align 8
  %218 = load i32, i32* %37, align 4
  %219 = load i8*, i8** %32, align 8
  call void @sgf_trace(i8* %217, i32 %218, i32 0, i32 5, i8* %219)
  br label %220

220:                                              ; preds = %216, %213
  br label %221

221:                                              ; preds = %220
  %222 = load i32*, i32** %10, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = load i32*, i32** %10, align 8
  store i32 0, i32* %225, align 4
  br label %226

226:                                              ; preds = %224, %221
  %227 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %228 = icmp ne %struct.read_result_t* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %231 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = and i32 %232, 1023
  %234 = or i32 %233, 536870912
  %235 = or i32 %234, 83886080
  %236 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %237 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %229, %226
  store i32 5, i32* %8, align 4
  br label %872

239:                                              ; No predecessors!
  br label %240

240:                                              ; preds = %239, %209
  %241 = getelementptr inbounds [400 x i8], [400 x i8]* %21, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %241, i8 0, i64 400, i1 false)
  %242 = load i32, i32* @local_owl_node_counter, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* @local_owl_node_counter, align 4
  %244 = load i32, i32* @global_owl_node_counter, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* @global_owl_node_counter, align 4
  %246 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  store %struct.local_owl_data* %246, %struct.local_owl_data** @current_owl_data, align 8
  %247 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %248 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %247, i32 0, i32 13
  %249 = getelementptr inbounds [400 x i8], [400 x i8]* %248, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %249, i8 0, i64 400, i1 false)
  %250 = load i32, i32* %15, align 4
  %251 = icmp slt i32 %250, 3
  br i1 %251, label %252, label %294

252:                                              ; preds = %240
  %253 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %254 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %18, i64 0, i64 0
  %255 = load i32, i32* %13, align 4
  %256 = call i32 @owl_estimate_life(%struct.local_owl_data* %253, %struct.owl_move_data* %254, i8** %32, i32 %255, i32 0, %struct.eyevalue* %30, i32* %28, i32* %29)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %293

258:                                              ; preds = %252
  %259 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %260 = icmp ne %struct.SGFTree_t* %259, null
  br i1 %260, label %261, label %265

261:                                              ; preds = %258
  %262 = load i8*, i8** %36, align 8
  %263 = load i32, i32* %37, align 4
  %264 = load i8*, i8** %32, align 8
  call void @sgf_trace(i8* %262, i32 %263, i32 0, i32 5, i8* %264)
  br label %265

265:                                              ; preds = %261, %258
  %266 = load i32, i32* @verbose, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %269, label %268

268:                                              ; preds = %265
  br label %273

269:                                              ; preds = %265
  %270 = load i32, i32* %35, align 4
  %271 = load i8*, i8** %32, align 8
  %272 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.92, i64 0, i64 0), i32 %270, i8* %271)
  br label %273

273:                                              ; preds = %269, %268
  br label %274

274:                                              ; preds = %273
  %275 = load i32*, i32** %10, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i32*, i32** %10, align 8
  store i32 0, i32* %278, align 4
  br label %279

279:                                              ; preds = %277, %274
  %280 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %281 = icmp ne %struct.read_result_t* %280, null
  br i1 %281, label %282, label %291

282:                                              ; preds = %279
  %283 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %284 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = and i32 %285, 1023
  %287 = or i32 %286, 536870912
  %288 = or i32 %287, 83886080
  %289 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %290 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  br label %291

291:                                              ; preds = %282, %279
  store i32 5, i32* %8, align 4
  br label %872

292:                                              ; No predecessors!
  br label %293

293:                                              ; preds = %292, %252
  br label %299

294:                                              ; preds = %240
  %295 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %18, i64 0, i64 0
  %296 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %295, i32 0, i32 0
  store i32 0, i32* %296, align 16
  %297 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %18, i64 0, i64 0
  %298 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %297, i32 0, i32 1
  store i32 -1, i32* %298, align 4
  call void @set_eyevalue(%struct.eyevalue* %30, i32 0, i32 0, i32 0, i32 0)
  br label %299

299:                                              ; preds = %294, %293
  store i32 0, i32* %23, align 4
  br label %300

300:                                              ; preds = %705, %299
  %301 = load i32, i32* %23, align 4
  %302 = icmp slt i32 %301, 4
  br i1 %302, label %303, label %708

303:                                              ; preds = %300
  store %struct.owl_move_data* null, %struct.owl_move_data** %19, align 8
  store i32 1, i32* %33, align 4
  %304 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  store %struct.local_owl_data* %304, %struct.local_owl_data** @current_owl_data, align 8
  %305 = load i32, i32* %23, align 4
  switch i32 %305, label %492 [
    i32 1, label %306
    i32 0, label %384
    i32 2, label %384
    i32 3, label %428
  ]

306:                                              ; preds = %303
  %307 = load i32, i32* @stackp, align 4
  %308 = load i32, i32* @owl_branch_depth, align 4
  %309 = icmp sgt i32 %307, %308
  br i1 %309, label %310, label %314

310:                                              ; preds = %306
  %311 = load i32, i32* %22, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %705

314:                                              ; preds = %310, %306
  %315 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %316 = load i32, i32* %16, align 4
  %317 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %20, %struct.owl_move_data* %315, i32 %316, %struct.local_owl_data* %317, %struct.pattern_db* @owl_defendpat_db)
  %318 = load i32, i32* %16, align 4
  %319 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %320 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %20, i32 %318, %struct.owl_move_data* %319, i32 100)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %382

322:                                              ; preds = %314
  %323 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %324 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 16
  %326 = load i32, i32* %16, align 4
  %327 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %328 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %327, i32 0, i32 2
  %329 = load i8*, i8** %328, align 8
  %330 = load i32, i32* %9, align 4
  %331 = load i32, i32* %13, align 4
  %332 = load i32, i32* %14, align 4
  %333 = call i32 @trymove(i32 %325, i32 %326, i8* %329, i32 %330, i32 %331, i32 %332)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %322
  call void @popgo()
  br label %336

336:                                              ; preds = %335, %322
  %337 = load i32, i32* @verbose, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %336
  br label %343

340:                                              ; preds = %336
  %341 = load i32, i32* %35, align 4
  %342 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.124, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %340, %339
  %344 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %345 = icmp ne %struct.SGFTree_t* %344, null
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load i8*, i8** %36, align 8
  %348 = load i32, i32* %37, align 4
  %349 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %350 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 16
  call void @sgf_trace(i8* %347, i32 %348, i32 %351, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.125, i64 0, i64 0))
  br label %352

352:                                              ; preds = %346, %343
  %353 = load i32, i32* %16, align 4
  call void @close_pattern_list(i32 %353, %struct.matched_patterns_list_data* %20)
  br label %354

354:                                              ; preds = %352
  %355 = load i32*, i32** %10, align 8
  %356 = icmp ne i32* %355, null
  br i1 %356, label %357, label %362

357:                                              ; preds = %354
  %358 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %359 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 16
  %361 = load i32*, i32** %10, align 8
  store i32 %360, i32* %361, align 4
  br label %362

362:                                              ; preds = %357, %354
  %363 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %364 = icmp ne %struct.read_result_t* %363, null
  br i1 %364, label %365, label %380

365:                                              ; preds = %362
  %366 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %367 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 1023
  %370 = or i32 %369, 536870912
  %371 = or i32 %370, 83886080
  %372 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %373 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 16
  %375 = and i32 %374, 1023
  %376 = shl i32 %375, 10
  %377 = or i32 %371, %376
  %378 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %379 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 4
  br label %380

380:                                              ; preds = %365, %362
  store i32 5, i32* %8, align 4
  br label %872

381:                                              ; No predecessors!
  br label %382

382:                                              ; preds = %381, %314
  %383 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  store %struct.owl_move_data* %383, %struct.owl_move_data** %19, align 8
  br label %492

384:                                              ; preds = %303, %303
  %385 = load i32, i32* @stackp, align 4
  %386 = load i32, i32* @owl_branch_depth, align 4
  %387 = icmp sgt i32 %385, %386
  br i1 %387, label %388, label %392

388:                                              ; preds = %384
  %389 = load i32, i32* %22, align 4
  %390 = icmp sgt i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %388
  br label %705

392:                                              ; preds = %388, %384
  %393 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %18, i64 0, i64 0
  store %struct.owl_move_data* %393, %struct.owl_move_data** %19, align 8
  %394 = load i32, i32* %23, align 4
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %400, label %396

396:                                              ; preds = %392
  %397 = load i32, i32* @stackp, align 4
  %398 = load i32, i32* @owl_distrust_depth, align 4
  %399 = icmp sgt i32 %397, %398
  br i1 %399, label %400, label %420

400:                                              ; preds = %396, %392
  %401 = load i32, i32* @stackp, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  store i32 70, i32* %33, align 4
  br label %419

404:                                              ; preds = %400
  %405 = load i32, i32* %28, align 4
  %406 = call i32 @min_eyes(%struct.eyevalue* %30)
  %407 = add nsw i32 %405, %406
  %408 = icmp sgt i32 %407, 3
  br i1 %408, label %409, label %410

409:                                              ; preds = %404
  store i32 25, i32* %33, align 4
  br label %418

410:                                              ; preds = %404
  %411 = load i32, i32* %28, align 4
  %412 = call i32 @min_eyes(%struct.eyevalue* %30)
  %413 = add nsw i32 %411, %412
  %414 = icmp sge i32 %413, 3
  br i1 %414, label %415, label %416

415:                                              ; preds = %410
  store i32 35, i32* %33, align 4
  br label %417

416:                                              ; preds = %410
  store i32 45, i32* %33, align 4
  br label %417

417:                                              ; preds = %416, %415
  br label %418

418:                                              ; preds = %417, %409
  br label %419

419:                                              ; preds = %418, %403
  br label %420

420:                                              ; preds = %419, %396
  %421 = load i32, i32* %29, align 4
  %422 = icmp slt i32 %421, 2
  br i1 %422, label %423, label %427

423:                                              ; preds = %420
  %424 = load i32, i32* @stackp, align 4
  %425 = icmp sgt i32 %424, 2
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  store i32 99, i32* %33, align 4
  br label %427

427:                                              ; preds = %426, %423, %420
  br label %492

428:                                              ; preds = %303
  store i32 0, i32* %38, align 4
  store i32 21, i32* %24, align 4
  br label %429

429:                                              ; preds = %450, %428
  %430 = load i32, i32* %24, align 4
  %431 = icmp slt i32 %430, 400
  br i1 %431, label %432, label %453

432:                                              ; preds = %429
  %433 = load i32, i32* %24, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %434
  %436 = load i8, i8* %435, align 1
  %437 = zext i8 %436 to i32
  %438 = icmp ne i32 %437, 3
  br i1 %438, label %439, label %449

439:                                              ; preds = %432
  %440 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %441 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %440, i32 0, i32 0
  %442 = load i32, i32* %24, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [400 x i8], [400 x i8]* %441, i64 0, i64 %443
  %445 = load i8, i8* %444, align 1
  %446 = sext i8 %445 to i32
  %447 = load i32, i32* %38, align 4
  %448 = add nsw i32 %447, %446
  store i32 %448, i32* %38, align 4
  br label %449

449:                                              ; preds = %439, %432
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %24, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %24, align 4
  br label %429, !llvm.loop !34

453:                                              ; preds = %429
  %454 = load i32, i32* %38, align 4
  %455 = icmp slt i32 %454, 5
  br i1 %455, label %456, label %487

456:                                              ; preds = %453
  %457 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %457, %struct.SGFTree_t** %40, align 8
  %458 = load i32, i32* @count_variations, align 4
  store i32 %458, i32* %41, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %459 = load i32, i32* %9, align 4
  %460 = call i32 @attack_and_defend(i32 %459, i32* null, i32* null, i32* null, i32* %39)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %462, label %484

462:                                              ; preds = %456
  %463 = load i32, i32* %39, align 4
  %464 = load i32, i32* %16, align 4
  %465 = call i32 @approxlib(i32 %463, i32 %464, i32 2, i32* null)
  %466 = icmp sgt i32 %465, 1
  br i1 %466, label %472, label %467

467:                                              ; preds = %462
  %468 = load i32, i32* %39, align 4
  %469 = load i32, i32* %16, align 4
  %470 = call i32 @does_capture_something(i32 %468, i32 %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %484

472:                                              ; preds = %467, %462
  %473 = load i32, i32* @verbose, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %476, label %475

475:                                              ; preds = %472
  br label %480

476:                                              ; preds = %472
  %477 = load i32, i32* %9, align 4
  %478 = load i32, i32* %39, align 4
  %479 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.126, i64 0, i64 0), i32 %477, i32 %478)
  br label %480

480:                                              ; preds = %476, %475
  %481 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %482 = load i32, i32* %39, align 4
  call void @set_single_owl_move(%struct.owl_move_data* %481, i32 %482, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.127, i64 0, i64 0))
  %483 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  store %struct.owl_move_data* %483, %struct.owl_move_data** %19, align 8
  br label %484

484:                                              ; preds = %480, %467, %456
  %485 = load %struct.SGFTree_t*, %struct.SGFTree_t** %40, align 8
  store %struct.SGFTree_t* %485, %struct.SGFTree_t** @sgf_dumptree, align 8
  %486 = load i32, i32* %41, align 4
  store i32 %486, i32* @count_variations, align 4
  br label %487

487:                                              ; preds = %484, %453
  %488 = load %struct.owl_move_data*, %struct.owl_move_data** %19, align 8
  %489 = icmp ne %struct.owl_move_data* %488, null
  br i1 %489, label %491, label %490

490:                                              ; preds = %487
  br label %705

491:                                              ; preds = %487
  br label %492

492:                                              ; preds = %491, %303, %427, %382
  store i32 0, i32* %24, align 4
  br label %493

493:                                              ; preds = %701, %492
  %494 = load i32, i32* %24, align 4
  %495 = icmp slt i32 %494, 3
  br i1 %495, label %496, label %704

496:                                              ; preds = %493
  store i32 -1, i32* %45, align 4
  store i32 15, i32* %47, align 4
  %497 = load i32, i32* @stackp, align 4
  %498 = load i32, i32* @owl_branch_depth, align 4
  %499 = icmp sgt i32 %497, %498
  br i1 %499, label %500, label %504

500:                                              ; preds = %496
  %501 = load i32, i32* %24, align 4
  %502 = icmp sgt i32 %501, 0
  br i1 %502, label %503, label %504

503:                                              ; preds = %500
  br label %704

504:                                              ; preds = %500, %496
  %505 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  store %struct.local_owl_data* %505, %struct.local_owl_data** @current_owl_data, align 8
  %506 = load i32, i32* %23, align 4
  %507 = icmp eq i32 %506, 1
  br i1 %507, label %508, label %516

508:                                              ; preds = %504
  %509 = load i32, i32* %16, align 4
  %510 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %17, i64 0, i64 0
  %511 = load i32, i32* %33, align 4
  %512 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %20, i32 %509, %struct.owl_move_data* %510, i32 %511)
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %515, label %514

514:                                              ; preds = %508
  br label %704

515:                                              ; preds = %508
  br label %527

516:                                              ; preds = %504
  %517 = load %struct.owl_move_data*, %struct.owl_move_data** %19, align 8
  %518 = load i32, i32* %24, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %517, i64 %519
  %521 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %520, i32 0, i32 1
  %522 = load i32, i32* %521, align 4
  %523 = load i32, i32* %33, align 4
  %524 = icmp slt i32 %522, %523
  br i1 %524, label %525, label %526

525:                                              ; preds = %516
  br label %704

526:                                              ; preds = %516
  br label %527

527:                                              ; preds = %526, %515
  %528 = load %struct.owl_move_data*, %struct.owl_move_data** %19, align 8
  %529 = load i32, i32* %24, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %528, i64 %530
  %532 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  store i32 %533, i32* %42, align 4
  %534 = load i32, i32* %42, align 4
  %535 = icmp ult i32 %534, 421
  br i1 %535, label %536, label %544

536:                                              ; preds = %527
  %537 = load i32, i32* %42, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %538
  %540 = load i8, i8* %539, align 1
  %541 = zext i8 %540 to i32
  %542 = icmp ne i32 %541, 3
  br i1 %542, label %543, label %544

543:                                              ; preds = %536
  br label %551

544:                                              ; preds = %536, %527
  %545 = load i32, i32* %42, align 4
  %546 = sdiv i32 %545, 20
  %547 = sub nsw i32 %546, 1
  %548 = load i32, i32* %42, align 4
  %549 = srem i32 %548, 20
  %550 = sub nsw i32 %549, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 2044, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.103, i64 0, i64 0), i32 %547, i32 %550)
  br label %551

551:                                              ; preds = %544, %543
  %552 = load i32, i32* %42, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [400 x i8], [400 x i8]* %21, i64 0, i64 %553
  %555 = load i8, i8* %554, align 1
  %556 = icmp ne i8 %555, 0
  br i1 %556, label %557, label %558

557:                                              ; preds = %551
  br label %701

558:                                              ; preds = %551
  %559 = load i32, i32* %42, align 4
  %560 = load i32, i32* %16, align 4
  %561 = load %struct.owl_move_data*, %struct.owl_move_data** %19, align 8
  %562 = load i32, i32* %24, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %561, i64 %563
  %565 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %564, i32 0, i32 2
  %566 = load i8*, i8** %565, align 8
  %567 = load i32, i32* %9, align 4
  %568 = load i32, i32* %13, align 4
  %569 = load i32, i32* %14, align 4
  %570 = load i32, i32* %27, align 4
  %571 = icmp eq i32 %570, 0
  %572 = zext i1 %571 to i32
  %573 = call i32 @komaster_trymove(i32 %559, i32 %560, i8* %566, i32 %567, i32 %568, i32 %569, i32* %43, i32* %44, i32* %45, i32 %572)
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %576, label %575

575:                                              ; preds = %558
  br label %701

576:                                              ; preds = %558
  %577 = load i32, i32* %15, align 4
  store i32 %577, i32* %46, align 4
  %578 = load %struct.owl_move_data*, %struct.owl_move_data** %19, align 8
  %579 = load i32, i32* %24, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %578, i64 %580
  %582 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %581, i32 0, i32 4
  %583 = load i32, i32* %582, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %588

585:                                              ; preds = %576
  %586 = load i32, i32* %46, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %46, align 4
  br label %588

588:                                              ; preds = %585, %576
  %589 = load i32, i32* @verbose, align 4
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %592, label %591

591:                                              ; preds = %588
  br label %597

592:                                              ; preds = %588
  %593 = load i32, i32* %16, align 4
  %594 = load i32, i32* %42, align 4
  %595 = load i32, i32* %15, align 4
  %596 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.104, i64 0, i64 0), i32 %593, i32 %594, i32 %595)
  br label %597

597:                                              ; preds = %592, %591
  %598 = load i32, i32* @verbose, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %601

600:                                              ; preds = %597
  call void @dump_stack()
  br label %601

601:                                              ; preds = %600, %597
  call void @push_owl(%struct.local_owl_data** %12, %struct.local_owl_data** null)
  %602 = load i32, i32* %42, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [400 x i8], [400 x i8]* %21, i64 0, i64 %603
  store i8 1, i8* %604, align 1
  %605 = load i32, i32* %22, align 4
  %606 = add nsw i32 %605, 1
  store i32 %606, i32* %22, align 4
  %607 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %608 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %607, i32 0, i32 12
  store i32 0, i32* %608, align 4
  %609 = load i32, i32* %42, align 4
  %610 = load %struct.owl_move_data*, %struct.owl_move_data** %19, align 8
  %611 = load i32, i32* %24, align 4
  %612 = sext i32 %611 to i64
  %613 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %610, i64 %612
  %614 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %613, i32 0, i32 3
  %615 = load i32, i32* %614, align 8
  %616 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  call void @owl_update_goal(i32 %609, i32 %615, %struct.local_owl_data* %616, i32 0)
  %617 = load i32, i32* %45, align 4
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %689, label %619

619:                                              ; preds = %601
  %620 = load i32, i32* %9, align 4
  %621 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %622 = load i32, i32* %43, align 4
  %623 = load i32, i32* %44, align 4
  %624 = load i32, i32* %46, align 4
  %625 = call i32 @do_owl_attack(i32 %620, i32* null, i32* %47, %struct.local_owl_data* %621, i32 %622, i32 %623, i32 %624)
  store i32 %625, i32* %48, align 4
  %626 = load i32, i32* %48, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %671, label %628

628:                                              ; preds = %619
  call void @pop_owl(%struct.local_owl_data** %12)
  call void @popgo()
  %629 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %630 = icmp ne %struct.SGFTree_t* %629, null
  br i1 %630, label %631, label %645

631:                                              ; preds = %628
  %632 = getelementptr inbounds [192 x i8], [192 x i8]* %49, i64 0, i64 0
  %633 = load i32, i32* @count_variations, align 4
  %634 = load i32, i32* %35, align 4
  %635 = sub nsw i32 %633, %634
  %636 = call i32 (i8*, i8*, ...) @sprintf(i8* %632, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.128, i64 0, i64 0), i32 %635) #5
  %637 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %638 = icmp ne %struct.SGFTree_t* %637, null
  br i1 %638, label %639, label %644

639:                                              ; preds = %631
  %640 = load i8*, i8** %36, align 8
  %641 = load i32, i32* %37, align 4
  %642 = load i32, i32* %42, align 4
  %643 = getelementptr inbounds [192 x i8], [192 x i8]* %49, i64 0, i64 0
  call void @sgf_trace(i8* %640, i32 %641, i32 %642, i32 5, i8* %643)
  br label %644

644:                                              ; preds = %639, %631
  br label %645

645:                                              ; preds = %644, %628
  %646 = load i32, i32* %16, align 4
  call void @close_pattern_list(i32 %646, %struct.matched_patterns_list_data* %20)
  br label %647

647:                                              ; preds = %645
  %648 = load i32*, i32** %10, align 8
  %649 = icmp ne i32* %648, null
  br i1 %649, label %650, label %653

650:                                              ; preds = %647
  %651 = load i32, i32* %42, align 4
  %652 = load i32*, i32** %10, align 8
  store i32 %651, i32* %652, align 4
  br label %653

653:                                              ; preds = %650, %647
  %654 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %655 = icmp ne %struct.read_result_t* %654, null
  br i1 %655, label %656, label %669

656:                                              ; preds = %653
  %657 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %658 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %657, i32 0, i32 1
  %659 = load i32, i32* %658, align 4
  %660 = and i32 %659, 1023
  %661 = or i32 %660, 536870912
  %662 = or i32 %661, 83886080
  %663 = load i32, i32* %42, align 4
  %664 = and i32 %663, 1023
  %665 = shl i32 %664, 10
  %666 = or i32 %662, %665
  %667 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %668 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %667, i32 0, i32 1
  store i32 %666, i32* %668, align 4
  br label %669

669:                                              ; preds = %656, %653
  store i32 5, i32* %8, align 4
  br label %872

670:                                              ; No predecessors!
  br label %671

671:                                              ; preds = %670, %619
  %672 = load i32, i32* %48, align 4
  %673 = icmp eq i32 %672, 3
  br i1 %673, label %674, label %676

674:                                              ; preds = %671
  %675 = load i32, i32* %47, align 4
  store i32 %675, i32* %26, align 4
  br label %676

676:                                              ; preds = %674, %671
  %677 = load i32, i32* %48, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %688

679:                                              ; preds = %676
  %680 = load i32, i32* %48, align 4
  %681 = sub nsw i32 5, %680
  %682 = load i32, i32* %27, align 4
  %683 = icmp sgt i32 %681, %682
  br i1 %683, label %684, label %688

684:                                              ; preds = %679
  %685 = load i32, i32* %42, align 4
  store i32 %685, i32* %25, align 4
  %686 = load i32, i32* %48, align 4
  %687 = sub nsw i32 5, %686
  store i32 %687, i32* %27, align 4
  br label %688

688:                                              ; preds = %684, %679, %676
  br label %700

689:                                              ; preds = %601
  %690 = load i32, i32* %9, align 4
  %691 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %692 = load i32, i32* %43, align 4
  %693 = load i32, i32* %44, align 4
  %694 = load i32, i32* %46, align 4
  %695 = call i32 @do_owl_attack(i32 %690, i32* null, i32* null, %struct.local_owl_data* %691, i32 %692, i32 %693, i32 %694)
  %696 = icmp ne i32 %695, 5
  br i1 %696, label %697, label %699

697:                                              ; preds = %689
  %698 = load i32, i32* %42, align 4
  store i32 %698, i32* %25, align 4
  store i32 1, i32* %27, align 4
  br label %699

699:                                              ; preds = %697, %689
  br label %700

700:                                              ; preds = %699, %688
  call void @pop_owl(%struct.local_owl_data** %12)
  call void @popgo()
  br label %701

701:                                              ; preds = %700, %575, %557
  %702 = load i32, i32* %24, align 4
  %703 = add nsw i32 %702, 1
  store i32 %703, i32* %24, align 4
  br label %493, !llvm.loop !35

704:                                              ; preds = %525, %514, %503, %493
  br label %705

705:                                              ; preds = %704, %490, %391, %313
  %706 = load i32, i32* %23, align 4
  %707 = add nsw i32 %706, 1
  store i32 %707, i32* %23, align 4
  br label %300, !llvm.loop !36

708:                                              ; preds = %300
  %709 = load i32, i32* %16, align 4
  call void @close_pattern_list(i32 %709, %struct.matched_patterns_list_data* %20)
  %710 = load i32, i32* %27, align 4
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %806

712:                                              ; preds = %708
  %713 = load i32, i32* %27, align 4
  %714 = icmp eq i32 %713, 2
  br i1 %714, label %715, label %765

715:                                              ; preds = %712
  %716 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %717 = icmp ne %struct.SGFTree_t* %716, null
  br i1 %717, label %718, label %723

718:                                              ; preds = %715
  %719 = load i8*, i8** %36, align 8
  %720 = load i32, i32* %37, align 4
  %721 = load i32, i32* %25, align 4
  %722 = load i32, i32* %27, align 4
  call void @sgf_trace(i8* %719, i32 %720, i32 %721, i32 %722, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.129, i64 0, i64 0))
  br label %723

723:                                              ; preds = %718, %715
  %724 = load i32*, i32** %11, align 8
  %725 = icmp ne i32* %724, null
  br i1 %725, label %726, label %729

726:                                              ; preds = %723
  %727 = load i32, i32* %26, align 4
  %728 = load i32*, i32** %11, align 8
  store i32 %727, i32* %728, align 4
  br label %729

729:                                              ; preds = %726, %723
  br label %730

730:                                              ; preds = %729
  %731 = load i32, i32* %27, align 4
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %733, label %739

733:                                              ; preds = %730
  %734 = load i32*, i32** %10, align 8
  %735 = icmp ne i32* %734, null
  br i1 %735, label %736, label %739

736:                                              ; preds = %733
  %737 = load i32, i32* %25, align 4
  %738 = load i32*, i32** %10, align 8
  store i32 %737, i32* %738, align 4
  br label %739

739:                                              ; preds = %736, %733, %730
  %740 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %741 = icmp ne %struct.read_result_t* %740, null
  br i1 %741, label %742, label %762

742:                                              ; preds = %739
  %743 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %744 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %743, i32 0, i32 1
  %745 = load i32, i32* %744, align 4
  %746 = and i32 %745, 1023
  %747 = or i32 %746, 536870912
  %748 = load i32, i32* %27, align 4
  %749 = and i32 %748, 15
  %750 = shl i32 %749, 24
  %751 = or i32 %747, %750
  %752 = load i32, i32* %26, align 4
  %753 = and i32 %752, 15
  %754 = shl i32 %753, 20
  %755 = or i32 %751, %754
  %756 = load i32, i32* %25, align 4
  %757 = and i32 %756, 1023
  %758 = shl i32 %757, 10
  %759 = or i32 %755, %758
  %760 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %761 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %760, i32 0, i32 1
  store i32 %759, i32* %761, align 4
  br label %762

762:                                              ; preds = %742, %739
  %763 = load i32, i32* %27, align 4
  store i32 %763, i32* %8, align 4
  br label %872

764:                                              ; No predecessors!
  br label %805

765:                                              ; preds = %712
  %766 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %767 = icmp ne %struct.SGFTree_t* %766, null
  br i1 %767, label %768, label %773

768:                                              ; preds = %765
  %769 = load i8*, i8** %36, align 8
  %770 = load i32, i32* %37, align 4
  %771 = load i32, i32* %25, align 4
  %772 = load i32, i32* %27, align 4
  call void @sgf_trace(i8* %769, i32 %770, i32 %771, i32 %772, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.130, i64 0, i64 0))
  br label %773

773:                                              ; preds = %768, %765
  br label %774

774:                                              ; preds = %773
  %775 = load i32, i32* %27, align 4
  %776 = icmp ne i32 %775, 0
  br i1 %776, label %777, label %783

777:                                              ; preds = %774
  %778 = load i32*, i32** %10, align 8
  %779 = icmp ne i32* %778, null
  br i1 %779, label %780, label %783

780:                                              ; preds = %777
  %781 = load i32, i32* %25, align 4
  %782 = load i32*, i32** %10, align 8
  store i32 %781, i32* %782, align 4
  br label %783

783:                                              ; preds = %780, %777, %774
  %784 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %785 = icmp ne %struct.read_result_t* %784, null
  br i1 %785, label %786, label %802

786:                                              ; preds = %783
  %787 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %788 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %787, i32 0, i32 1
  %789 = load i32, i32* %788, align 4
  %790 = and i32 %789, 1023
  %791 = or i32 %790, 536870912
  %792 = load i32, i32* %27, align 4
  %793 = and i32 %792, 15
  %794 = shl i32 %793, 24
  %795 = or i32 %791, %794
  %796 = load i32, i32* %25, align 4
  %797 = and i32 %796, 1023
  %798 = shl i32 %797, 10
  %799 = or i32 %795, %798
  %800 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %801 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %800, i32 0, i32 1
  store i32 %799, i32* %801, align 4
  br label %802

802:                                              ; preds = %786, %783
  %803 = load i32, i32* %27, align 4
  store i32 %803, i32* %8, align 4
  br label %872

804:                                              ; No predecessors!
  br label %805

805:                                              ; preds = %804, %764
  br label %806

806:                                              ; preds = %805, %708
  %807 = load i32, i32* %22, align 4
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %838

809:                                              ; preds = %806
  %810 = call i32 @min_eyes(%struct.eyevalue* %30)
  %811 = icmp sge i32 %810, 2
  br i1 %811, label %812, label %838

812:                                              ; preds = %809
  %813 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %814 = icmp ne %struct.SGFTree_t* %813, null
  br i1 %814, label %815, label %818

815:                                              ; preds = %812
  %816 = load i8*, i8** %36, align 8
  %817 = load i32, i32* %37, align 4
  call void @sgf_trace(i8* %816, i32 %817, i32 0, i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.131, i64 0, i64 0))
  br label %818

818:                                              ; preds = %815, %812
  br label %819

819:                                              ; preds = %818
  %820 = load i32*, i32** %10, align 8
  %821 = icmp ne i32* %820, null
  br i1 %821, label %822, label %824

822:                                              ; preds = %819
  %823 = load i32*, i32** %10, align 8
  store i32 0, i32* %823, align 4
  br label %824

824:                                              ; preds = %822, %819
  %825 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %826 = icmp ne %struct.read_result_t* %825, null
  br i1 %826, label %827, label %836

827:                                              ; preds = %824
  %828 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %829 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %828, i32 0, i32 1
  %830 = load i32, i32* %829, align 4
  %831 = and i32 %830, 1023
  %832 = or i32 %831, 536870912
  %833 = or i32 %832, 83886080
  %834 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %835 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %834, i32 0, i32 1
  store i32 %833, i32* %835, align 4
  br label %836

836:                                              ; preds = %827, %824
  store i32 5, i32* %8, align 4
  br label %872

837:                                              ; No predecessors!
  br label %838

838:                                              ; preds = %837, %809, %806
  %839 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %840 = icmp ne %struct.SGFTree_t* %839, null
  br i1 %840, label %841, label %859

841:                                              ; preds = %838
  %842 = load i32, i32* %28, align 4
  %843 = icmp eq i32 %842, 1
  %844 = zext i1 %843 to i64
  %845 = select i1 %843, i32 1, i32 0
  store i32 %845, i32* %51, align 4
  %846 = getelementptr inbounds [196 x i8], [196 x i8]* %50, i64 0, i64 0
  %847 = load i32, i32* %51, align 4
  %848 = load i32, i32* @count_variations, align 4
  %849 = load i32, i32* %35, align 4
  %850 = sub nsw i32 %848, %849
  %851 = call i32 (i8*, i8*, ...) @sprintf(i8* %846, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.132, i64 0, i64 0), i32 %847, i32 %850) #5
  %852 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %853 = icmp ne %struct.SGFTree_t* %852, null
  br i1 %853, label %854, label %858

854:                                              ; preds = %841
  %855 = load i8*, i8** %36, align 8
  %856 = load i32, i32* %37, align 4
  %857 = getelementptr inbounds [196 x i8], [196 x i8]* %50, i64 0, i64 0
  call void @sgf_trace(i8* %855, i32 %856, i32 0, i32 0, i8* %857)
  br label %858

858:                                              ; preds = %854, %841
  br label %859

859:                                              ; preds = %858, %838
  br label %860

860:                                              ; preds = %859
  %861 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %862 = icmp ne %struct.read_result_t* %861, null
  br i1 %862, label %863, label %871

863:                                              ; preds = %860
  %864 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %865 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %864, i32 0, i32 1
  %866 = load i32, i32* %865, align 4
  %867 = and i32 %866, 1023
  %868 = or i32 %867, 536870912
  %869 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %870 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %869, i32 0, i32 1
  store i32 %868, i32* %870, align 4
  br label %871

871:                                              ; preds = %863, %860
  store i32 0, i32* %8, align 4
  br label %872

872:                                              ; preds = %161, %207, %238, %291, %380, %669, %762, %802, %836, %871
  %873 = load i32, i32* %8, align 4
  ret i32 %873
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_threaten_defense(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [3 x %struct.owl_move_data], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.local_owl_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [400 x i8], align 16
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.matched_patterns_list_data, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = call i32 @get_reading_node_counter()
  store i32 %25, i32* %13, align 4
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %26 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %19, i32 0, i32 0
  store i32 0, i32* %26, align 8
  store i32 1, i32* @result_certain, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %29, i32 0, i32 14
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %210

34:                                               ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @search_persistent_owl_cache(i32 3, i32 %35, i32 0, i32 0, i32* %11, i32* %36, i32* %37, i32* null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %210

42:                                               ; preds = %34
  %43 = load i32, i32* @debug, align 4
  %44 = and i32 %43, 4096
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call double @gg_cputime()
  store double %47, double* %15, align 8
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* @verbose, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  br label %55

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %5, align 4
  call void @init_owl(%struct.local_owl_data** %12, i32 %56, i32 0, i32 0, i32 1)
  %57 = getelementptr inbounds [400 x i8], [400 x i8]* %14, i64 0, i64 0
  %58 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %59 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds [400 x i8], [400 x i8]* %59, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %57, i8* align 4 %60, i64 400, i1 false)
  %61 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  call void @owl_make_domains(%struct.local_owl_data* %61, %struct.local_owl_data* null)
  %62 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 0
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  call void @owl_shapes(%struct.matched_patterns_list_data* %19, %struct.owl_move_data* %62, i32 %63, %struct.local_owl_data* %64, %struct.pattern_db* @owl_defendpat_db)
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %155, %55
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 3
  br i1 %67, label %68, label %158

68:                                               ; preds = %65
  %69 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  store %struct.local_owl_data* %69, %struct.local_owl_data** @current_owl_data, align 8
  %70 = load i32, i32* %10, align 4
  %71 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 0
  %72 = call i32 @get_next_move_from_list(%struct.matched_patterns_list_data* %19, i32 %70, %struct.owl_move_data* %71, i32 1)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %158

75:                                               ; preds = %68
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 16
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %153

82:                                               ; preds = %75
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %153

89:                                               ; preds = %82
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 16
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @trymove(i32 %94, i32 %95, i8* %100, i32 %101, i32 0, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %152

104:                                              ; preds = %89
  %105 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %106 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %105, i32 0, i32 12
  store i32 0, i32* %106, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 16
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 16
  %117 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  call void @owl_update_goal(i32 %111, i32 %116, %struct.local_owl_data* %117, i32 0)
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %120 = call i32 @do_owl_defend(i32 %118, i32* %18, i32* null, %struct.local_owl_data* %119, i32 0, i32 0, i32 0)
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %146

122:                                              ; preds = %104
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %8, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 16
  store i32 %127, i32* %17, align 4
  call void @popgo()
  %128 = load i32, i32* %18, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %122
  %131 = load i32, i32* %18, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %144, label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %145

144:                                              ; preds = %137, %130
  store i32 0, i32* %18, align 4
  br label %145

145:                                              ; preds = %144, %137, %122
  store i32 5, i32* %11, align 4
  br label %158

146:                                              ; preds = %104
  call void @popgo()
  br label %147

147:                                              ; preds = %146
  %148 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %149 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %148, i32 0, i32 0
  %150 = getelementptr inbounds [400 x i8], [400 x i8]* %149, i64 0, i64 0
  %151 = getelementptr inbounds [400 x i8], [400 x i8]* %14, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %150, i8* align 16 %151, i64 400, i1 false)
  br label %152

152:                                              ; preds = %147, %89
  br label %153

153:                                              ; preds = %152, %82, %75
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %9, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %9, align 4
  br label %65, !llvm.loop !37

158:                                              ; preds = %145, %74, %65
  %159 = call i32 @get_reading_node_counter()
  %160 = load i32, i32* %13, align 4
  %161 = sub nsw i32 %159, %160
  store i32 %161, i32* %16, align 4
  %162 = load i32, i32* @stackp, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %166

165:                                              ; preds = %158
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 2206, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 -1)
  br label %166

166:                                              ; preds = %165, %164
  %167 = load i32, i32* @debug, align 4
  %168 = and i32 %167, 4096
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %171, label %170

170:                                              ; preds = %166
  br label %182

171:                                              ; preds = %166
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* %17, align 4
  %174 = load i32, i32* %18, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @local_owl_node_counter, align 4
  %177 = load i32, i32* %16, align 4
  %178 = call double @gg_cputime()
  %179 = load double, double* %15, align 8
  %180 = fsub double %178, %179
  %181 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.11, i64 0, i64 0), i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, i32 %177, double %180)
  br label %182

182:                                              ; preds = %171, %170
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %189 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %188, i32 0, i32 0
  %190 = getelementptr inbounds [400 x i8], [400 x i8]* %189, i64 0, i64 0
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  call void @store_persistent_owl_cache(i32 3, i32 %183, i32 0, i32 0, i32 %184, i32 %185, i32 %186, i32 0, i32 %187, i8* %190, i32 %195)
  %196 = load i32*, i32** %6, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %182
  %199 = load i32, i32* %17, align 4
  %200 = load i32*, i32** %6, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %182
  %202 = load i32*, i32** %7, align 8
  %203 = icmp ne i32* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = load i32, i32* %18, align 4
  %206 = load i32*, i32** %7, align 8
  store i32 %205, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32, i32* %10, align 4
  call void @close_pattern_list(i32 %208, %struct.matched_patterns_list_data* %19)
  %209 = load i32, i32* %11, align 4
  store i32 %209, i32* %4, align 4
  br label %210

210:                                              ; preds = %207, %40, %33
  %211 = load i32, i32* %4, align 4
  ret i32 %211
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_update_goal(i32 %0, i32 %1, %struct.local_owl_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_owl_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [361 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.SGFTree_t*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.local_owl_data* %2, %struct.local_owl_data** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %12, align 4
  %15 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %15, %struct.SGFTree_t** %13, align 8
  %16 = load i32, i32* @count_variations, align 4
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %91

20:                                               ; preds = %4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 0
  call void @find_superstring_conservative(i32 %24, i32* %10, i32* %25)
  br label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 0
  call void @find_superstring(i32 %27, i32* %10, i32* %28)
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.SGFTree_t*, %struct.SGFTree_t** %13, align 8
  store %struct.SGFTree_t* %30, %struct.SGFTree_t** @sgf_dumptree, align 8
  %31 = load i32, i32* %14, align 4
  store i32 %31, i32* @count_variations, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %57

34:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.local_owl_data*, %struct.local_owl_data** %7, align 8
  %41 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %40, i32 0, i32 0
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x i8], [400 x i8]* %41, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  store i32 1, i32* %12, align 4
  br label %56

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %35, !llvm.loop !38

56:                                               ; preds = %51, %35
  br label %57

57:                                               ; preds = %56, %29
  %58 = load i32, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %91

60:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %87, %60
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = load %struct.local_owl_data*, %struct.local_owl_data** %7, align 8
  %67 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %66, i32 0, i32 0
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x i8], [400 x i8]* %67, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.local_owl_data*, %struct.local_owl_data** %7, align 8
  %79 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %78, i32 0, i32 0
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [400 x i8], [400 x i8]* %79, i64 0, i64 %84
  store i8 2, i8* %85, align 1
  br label %86

86:                                               ; preds = %77, %65
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %61, !llvm.loop !39

90:                                               ; preds = %61
  br label %91

91:                                               ; preds = %19, %90, %57
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_pattern_list(%struct.matched_patterns_list_data* %0) #0 {
  %2 = alloca %struct.matched_patterns_list_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.matched_pattern_data*, align 8
  store %struct.matched_patterns_list_data* %0, %struct.matched_patterns_list_data** %2, align 8
  %5 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %6 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %58

10:                                               ; preds = %1
  %11 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %12 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %15 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %18 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %21 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.12, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22)
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %55, %10
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %27 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %24
  %31 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %32 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %31, i32 0, i32 5
  %33 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %33, i64 %35
  store %struct.matched_pattern_data* %36, %struct.matched_pattern_data** %4, align 8
  %37 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %4, align 8
  %38 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %37, i32 0, i32 2
  %39 = load %struct.pattern*, %struct.pattern** %38, align 8
  %40 = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %4, align 8
  %43 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %4, align 8
  %46 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %4, align 8
  %49 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %48, i32 0, i32 2
  %50 = load %struct.pattern*, %struct.pattern** %49, align 8
  %51 = getelementptr inbounds %struct.pattern, %struct.pattern* %50, i32 0, i32 13
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  %54 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0), i8* %41, i32 %44, i32 %47, double %53)
  br label %55

55:                                               ; preds = %30
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %24, !llvm.loop !40

58:                                               ; preds = %9, %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goaldump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 21, i32* %3, align 4
  br label %4

4:                                                ; preds = %32, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 400
  br i1 %6, label %7, label %35

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %31

14:                                               ; preds = %7
  %15 = load i8*, i8** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = load i32, i32* %3, align 4
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %23, i32 %29)
  br label %31

31:                                               ; preds = %22, %14, %7
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %4, !llvm.loop !41

35:                                               ; preds = %4
  %36 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @owl_reasons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 21, i32* %3, align 4
  br label %11

11:                                               ; preds = %826, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 400
  br i1 %13, label %14, label %829

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 3
  br i1 %20, label %21, label %36

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %21, %14
  br label %826

37:                                               ; preds = %28
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %40, i32 0, i32 16
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %310

44:                                               ; preds = %37
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %310

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %2, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %129

59:                                               ; preds = %51
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %128

66:                                               ; preds = %59
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %69, i32 0, i32 13
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 2
  br i1 %72, label %73, label %100

73:                                               ; preds = %66
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %75
  %77 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %76, i32 0, i32 12
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %82, i32 0, i32 18
  %84 = load i32, i32* %83, align 4
  call void @add_loss_move(i32 %78, i32 %79, i32 %84)
  %85 = load i32, i32* @debug, align 4
  %86 = and i32 %85, 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %73
  br label %99

89:                                               ; preds = %73
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @movenum, align 4
  %97 = add nsw i32 %96, 1
  %98 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %94, i32 %95, i32 %97)
  br label %99

99:                                               ; preds = %89, %88
  br label %127

100:                                              ; preds = %66
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %103, i32 0, i32 12
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %3, align 4
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %109, i32 0, i32 13
  %111 = load i32, i32* %110, align 4
  call void @add_owl_defense_move(i32 %105, i32 %106, i32 %111)
  %112 = load i32, i32* @debug, align 4
  %113 = and i32 %112, 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %100
  br label %126

116:                                              ; preds = %100
  %117 = load i32, i32* %3, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %118
  %120 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %119, i32 0, i32 12
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @movenum, align 4
  %124 = add nsw i32 %123, 1
  %125 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %121, i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %116, %115
  br label %127

127:                                              ; preds = %126, %99
  br label %128

128:                                              ; preds = %127, %59
  br label %309

129:                                              ; preds = %51
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %137, i32 0, i32 4
  %139 = load float, float* %138, align 4
  %140 = fcmp olt float %139, 8.000000e+00
  br i1 %140, label %141, label %263

141:                                              ; preds = %129
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %226, %141
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %145 = load i32, i32* %3, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %144, i64 %150
  %152 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %143, %153
  br i1 %154, label %155, label %229

155:                                              ; preds = %142
  %156 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %158
  %160 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %156, i64 %162
  %164 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %163, i32 0, i32 1
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [10 x i32], [10 x i32]* %164, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %10, align 4
  %169 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %169, i64 %171
  %173 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %175
  %177 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %2, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %225

181:                                              ; preds = %155
  %182 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %183 = load i32, i32* %10, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %182, i64 %184
  %186 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %188
  %190 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %189, i32 0, i32 16
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %194

193:                                              ; preds = %181
  store i32 1, i32* %9, align 4
  br label %229

194:                                              ; preds = %181
  %195 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %195, i64 %197
  %199 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %201
  %203 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %5, align 4
  %206 = icmp sgt i32 %204, %205
  br i1 %206, label %207, label %224

207:                                              ; preds = %194
  %208 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %209 = load i32, i32* %10, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %208, i64 %210
  %212 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %7, align 4
  %214 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %214, i64 %216
  %218 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %207, %194
  br label %225

225:                                              ; preds = %224, %155
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %6, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %6, align 4
  br label %142, !llvm.loop !42

229:                                              ; preds = %193, %142
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i32 1, i32* %9, align 4
  br label %233

233:                                              ; preds = %232, %229
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %262, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* %7, align 4
  %239 = call i32 @owl_does_defend(i32 %237, i32 %238, i32* %8)
  %240 = icmp ne i32 %239, 5
  br i1 %240, label %241, label %262

241:                                              ; preds = %236
  %242 = load i32, i32* @debug, align 4
  %243 = and i32 %242, 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  br label %252

246:                                              ; preds = %241
  %247 = load i32, i32* %4, align 4
  %248 = load i32, i32* %3, align 4
  %249 = load i32, i32* @movenum, align 4
  %250 = add nsw i32 %249, 1
  %251 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.18, i64 0, i64 0), i32 %247, i32 %248, i32 %250)
  br label %252

252:                                              ; preds = %246, %245
  %253 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %254 = load i32, i32* %3, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %253, i64 %259
  %261 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %260, i32 0, i32 6
  store i32 5, i32* %261, align 4
  br label %826

262:                                              ; preds = %236, %233
  br label %263

263:                                              ; preds = %262, %129
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 3
  br i1 %269, label %270, label %289

270:                                              ; preds = %263
  %271 = load i32, i32* %4, align 4
  %272 = load i32, i32* %3, align 4
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %274
  %276 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %275, i32 0, i32 17
  %277 = load i32, i32* %276, align 4
  call void @add_gain_move(i32 %271, i32 %272, i32 %277)
  %278 = load i32, i32* @debug, align 4
  %279 = and i32 %278, 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %282, label %281

281:                                              ; preds = %270
  br label %288

282:                                              ; preds = %270
  %283 = load i32, i32* %4, align 4
  %284 = load i32, i32* %3, align 4
  %285 = load i32, i32* @movenum, align 4
  %286 = add nsw i32 %285, 1
  %287 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i32 %283, i32 %284, i32 %286)
  br label %288

288:                                              ; preds = %282, %281
  br label %308

289:                                              ; preds = %263
  %290 = load i32, i32* %4, align 4
  %291 = load i32, i32* %3, align 4
  %292 = load i32, i32* %3, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %293
  %295 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %294, i32 0, i32 9
  %296 = load i32, i32* %295, align 4
  call void @add_owl_attack_move(i32 %290, i32 %291, i32 %296)
  %297 = load i32, i32* @debug, align 4
  %298 = and i32 %297, 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %301, label %300

300:                                              ; preds = %289
  br label %307

301:                                              ; preds = %289
  %302 = load i32, i32* %4, align 4
  %303 = load i32, i32* %3, align 4
  %304 = load i32, i32* @movenum, align 4
  %305 = add nsw i32 %304, 1
  %306 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.20, i64 0, i64 0), i32 %302, i32 %303, i32 %305)
  br label %307

307:                                              ; preds = %301, %300
  br label %308

308:                                              ; preds = %307, %288
  br label %309

309:                                              ; preds = %308, %128
  br label %825

310:                                              ; preds = %44, %37
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %312
  %314 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %313, i32 0, i32 7
  %315 = load i32, i32* %314, align 4
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %453

317:                                              ; preds = %310
  %318 = load i32, i32* %3, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %319
  %321 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %320, i32 0, i32 6
  %322 = load i32, i32* %321, align 4
  %323 = icmp eq i32 %322, 12
  br i1 %323, label %324, label %453

324:                                              ; preds = %317
  %325 = load i32, i32* %3, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  %330 = load i32, i32* %2, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %361

332:                                              ; preds = %324
  %333 = load i32, i32* %3, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %334
  %336 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %335, i32 0, i32 12
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %361

339:                                              ; preds = %332
  %340 = load i32, i32* %3, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %341
  %343 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %342, i32 0, i32 12
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* %3, align 4
  call void @add_owl_defense_threat_move(i32 %344, i32 %345, i32 5)
  %346 = load i32, i32* @debug, align 4
  %347 = and i32 %346, 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %339
  br label %360

350:                                              ; preds = %339
  %351 = load i32, i32* %3, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %352
  %354 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %353, i32 0, i32 12
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* %3, align 4
  %357 = load i32, i32* @movenum, align 4
  %358 = add nsw i32 %357, 1
  %359 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %355, i32 %356, i32 %358)
  br label %360

360:                                              ; preds = %350, %349
  br label %361

361:                                              ; preds = %360, %332, %324
  %362 = load i32, i32* %3, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %363
  %365 = load i8, i8* %364, align 1
  %366 = zext i8 %365 to i32
  %367 = load i32, i32* %2, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %407

369:                                              ; preds = %361
  %370 = load i32, i32* %3, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %371
  %373 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %372, i32 0, i32 15
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %407

376:                                              ; preds = %369
  %377 = load i32, i32* %3, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %378
  %380 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %379, i32 0, i32 15
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* %2, align 4
  %383 = call i32 @is_legal(i32 %381, i32 %382)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %407

385:                                              ; preds = %376
  %386 = load i32, i32* %3, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %387
  %389 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %388, i32 0, i32 15
  %390 = load i32, i32* %389, align 4
  %391 = load i32, i32* %3, align 4
  call void @add_owl_defense_threat_move(i32 %390, i32 %391, i32 5)
  %392 = load i32, i32* @debug, align 4
  %393 = and i32 %392, 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %385
  br label %406

396:                                              ; preds = %385
  %397 = load i32, i32* %3, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %398
  %400 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %399, i32 0, i32 15
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %3, align 4
  %403 = load i32, i32* @movenum, align 4
  %404 = add nsw i32 %403, 1
  %405 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.21, i64 0, i64 0), i32 %401, i32 %402, i32 %404)
  br label %406

406:                                              ; preds = %396, %395
  br label %407

407:                                              ; preds = %406, %376, %369, %361
  %408 = load i32, i32* %3, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %409
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  %413 = load i32, i32* %2, align 4
  %414 = sub nsw i32 3, %413
  %415 = icmp eq i32 %412, %414
  br i1 %415, label %416, label %452

416:                                              ; preds = %407
  %417 = load i32, i32* %3, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %418
  %420 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %419, i32 0, i32 6
  %421 = load i32, i32* %420, align 4
  %422 = icmp eq i32 %421, 12
  br i1 %422, label %423, label %452

423:                                              ; preds = %416
  %424 = load i32, i32* %3, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %425
  %427 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %426, i32 0, i32 8
  %428 = load i32, i32* %427, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %452

430:                                              ; preds = %423
  %431 = load i32, i32* %3, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %432
  %434 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %433, i32 0, i32 8
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* %3, align 4
  call void @add_owl_prevent_threat_move(i32 %435, i32 %436)
  %437 = load i32, i32* @debug, align 4
  %438 = and i32 %437, 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %441, label %440

440:                                              ; preds = %430
  br label %451

441:                                              ; preds = %430
  %442 = load i32, i32* %3, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %443
  %445 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %444, i32 0, i32 8
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %3, align 4
  %448 = load i32, i32* @movenum, align 4
  %449 = add nsw i32 %448, 1
  %450 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0), i32 %446, i32 %447, i32 %449)
  br label %451

451:                                              ; preds = %441, %440
  br label %452

452:                                              ; preds = %451, %423, %416, %407
  br label %824

453:                                              ; preds = %317, %310
  %454 = load i32, i32* %3, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %455
  %457 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %456, i32 0, i32 7
  %458 = load i32, i32* %457, align 4
  %459 = icmp eq i32 %458, 1
  br i1 %459, label %460, label %766

460:                                              ; preds = %453
  %461 = load i32, i32* %3, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %462
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i32
  %466 = load i32, i32* %2, align 4
  %467 = sub nsw i32 3, %466
  %468 = icmp eq i32 %465, %467
  br i1 %468, label %469, label %544

469:                                              ; preds = %460
  %470 = load i32, i32* %3, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %471
  %473 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %472, i32 0, i32 6
  %474 = load i32, i32* %473, align 4
  %475 = icmp eq i32 %474, 11
  br i1 %475, label %476, label %544

476:                                              ; preds = %469
  %477 = load i32, i32* %3, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %478
  %480 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %479, i32 0, i32 8
  %481 = load i32, i32* %480, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %505

483:                                              ; preds = %476
  %484 = load i32, i32* %3, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %485
  %487 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %486, i32 0, i32 8
  %488 = load i32, i32* %487, align 4
  %489 = load i32, i32* %3, align 4
  call void @add_owl_attack_threat_move(i32 %488, i32 %489, i32 5)
  %490 = load i32, i32* @debug, align 4
  %491 = and i32 %490, 4
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %494, label %493

493:                                              ; preds = %483
  br label %504

494:                                              ; preds = %483
  %495 = load i32, i32* %3, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %496
  %498 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %497, i32 0, i32 8
  %499 = load i32, i32* %498, align 4
  %500 = load i32, i32* %3, align 4
  %501 = load i32, i32* @movenum, align 4
  %502 = add nsw i32 %501, 1
  %503 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i32 %499, i32 %500, i32 %502)
  br label %504

504:                                              ; preds = %494, %493
  br label %505

505:                                              ; preds = %504, %476
  %506 = load i32, i32* %3, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %507
  %509 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %508, i32 0, i32 11
  %510 = load i32, i32* %509, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %543

512:                                              ; preds = %505
  %513 = load i32, i32* %3, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %514
  %516 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %515, i32 0, i32 11
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* %2, align 4
  %519 = call i32 @is_legal(i32 %517, i32 %518)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %543

521:                                              ; preds = %512
  %522 = load i32, i32* %3, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %523
  %525 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %524, i32 0, i32 11
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* %3, align 4
  call void @add_owl_attack_threat_move(i32 %526, i32 %527, i32 5)
  %528 = load i32, i32* @debug, align 4
  %529 = and i32 %528, 4
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %532, label %531

531:                                              ; preds = %521
  br label %542

532:                                              ; preds = %521
  %533 = load i32, i32* %3, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %534
  %536 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %535, i32 0, i32 11
  %537 = load i32, i32* %536, align 4
  %538 = load i32, i32* %3, align 4
  %539 = load i32, i32* @movenum, align 4
  %540 = add nsw i32 %539, 1
  %541 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.23, i64 0, i64 0), i32 %537, i32 %538, i32 %540)
  br label %542

542:                                              ; preds = %532, %531
  br label %543

543:                                              ; preds = %542, %512, %505
  br label %765

544:                                              ; preds = %469, %460
  %545 = load i32, i32* %3, align 4
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %546
  %548 = load i8, i8* %547, align 1
  %549 = zext i8 %548 to i32
  %550 = load i32, i32* %2, align 4
  %551 = sub nsw i32 3, %550
  %552 = icmp eq i32 %549, %551
  br i1 %552, label %553, label %594

553:                                              ; preds = %544
  %554 = load i32, i32* %3, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %555
  %557 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %556, i32 0, i32 8
  %558 = load i32, i32* %557, align 4
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %594

560:                                              ; preds = %553
  %561 = load i32, i32* %3, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %562
  %564 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %563, i32 0, i32 9
  %565 = load i32, i32* %564, align 4
  %566 = icmp eq i32 %565, 3
  br i1 %566, label %567, label %594

567:                                              ; preds = %560
  %568 = load i32, i32* %3, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %569
  %571 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %570, i32 0, i32 8
  %572 = load i32, i32* %571, align 4
  %573 = load i32, i32* %3, align 4
  %574 = load i32, i32* %3, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %575
  %577 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %576, i32 0, i32 17
  %578 = load i32, i32* %577, align 4
  call void @add_gain_move(i32 %572, i32 %573, i32 %578)
  %579 = load i32, i32* @debug, align 4
  %580 = and i32 %579, 4
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %583, label %582

582:                                              ; preds = %567
  br label %593

583:                                              ; preds = %567
  %584 = load i32, i32* %3, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %585
  %587 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %586, i32 0, i32 8
  %588 = load i32, i32* %587, align 4
  %589 = load i32, i32* %3, align 4
  %590 = load i32, i32* @movenum, align 4
  %591 = add nsw i32 %590, 1
  %592 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0), i32 %588, i32 %589, i32 %591)
  br label %593

593:                                              ; preds = %583, %582
  br label %764

594:                                              ; preds = %560, %553, %544
  %595 = load i32, i32* %3, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %596
  %598 = load i8, i8* %597, align 1
  %599 = zext i8 %598 to i32
  %600 = load i32, i32* %2, align 4
  %601 = icmp eq i32 %599, %600
  br i1 %601, label %602, label %643

602:                                              ; preds = %594
  %603 = load i32, i32* %3, align 4
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %604
  %606 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %605, i32 0, i32 12
  %607 = load i32, i32* %606, align 4
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %609, label %643

609:                                              ; preds = %602
  %610 = load i32, i32* %3, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %611
  %613 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %612, i32 0, i32 13
  %614 = load i32, i32* %613, align 4
  %615 = icmp eq i32 %614, 2
  br i1 %615, label %616, label %643

616:                                              ; preds = %609
  %617 = load i32, i32* %3, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %618
  %620 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %619, i32 0, i32 12
  %621 = load i32, i32* %620, align 4
  %622 = load i32, i32* %3, align 4
  %623 = load i32, i32* %3, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %624
  %626 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %625, i32 0, i32 18
  %627 = load i32, i32* %626, align 4
  call void @add_loss_move(i32 %621, i32 %622, i32 %627)
  %628 = load i32, i32* @debug, align 4
  %629 = and i32 %628, 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %632, label %631

631:                                              ; preds = %616
  br label %642

632:                                              ; preds = %616
  %633 = load i32, i32* %3, align 4
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %634
  %636 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %635, i32 0, i32 12
  %637 = load i32, i32* %636, align 4
  %638 = load i32, i32* %3, align 4
  %639 = load i32, i32* @movenum, align 4
  %640 = add nsw i32 %639, 1
  %641 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %637, i32 %638, i32 %640)
  br label %642

642:                                              ; preds = %632, %631
  br label %763

643:                                              ; preds = %609, %602, %594
  %644 = load i32, i32* %3, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %645
  %647 = load i8, i8* %646, align 1
  %648 = zext i8 %647 to i32
  %649 = load i32, i32* %2, align 4
  %650 = icmp eq i32 %648, %649
  br i1 %650, label %651, label %706

651:                                              ; preds = %643
  %652 = load i32, i32* %3, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %653
  %655 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %654, i32 0, i32 8
  %656 = load i32, i32* %655, align 4
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %706

658:                                              ; preds = %651
  %659 = load i32, i32* %3, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %660
  %662 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %661, i32 0, i32 9
  %663 = load i32, i32* %662, align 4
  %664 = icmp eq i32 %663, 3
  br i1 %664, label %665, label %706

665:                                              ; preds = %658
  %666 = load i32, i32* %3, align 4
  %667 = sext i32 %666 to i64
  %668 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %667
  %669 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %668, i32 0, i32 13
  %670 = load i32, i32* %669, align 4
  %671 = icmp eq i32 %670, 5
  br i1 %671, label %672, label %706

672:                                              ; preds = %665
  %673 = load i32, i32* %3, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %674
  %676 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %675, i32 0, i32 12
  %677 = load i32, i32* %676, align 4
  %678 = icmp ne i32 %677, 0
  br i1 %678, label %679, label %706

679:                                              ; preds = %672
  %680 = load i32, i32* %3, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %681
  %683 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %682, i32 0, i32 12
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* %3, align 4
  %686 = load i32, i32* %3, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %687
  %689 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %688, i32 0, i32 13
  %690 = load i32, i32* %689, align 4
  call void @add_owl_defense_move(i32 %684, i32 %685, i32 %690)
  %691 = load i32, i32* @debug, align 4
  %692 = and i32 %691, 4
  %693 = icmp ne i32 %692, 0
  br i1 %693, label %695, label %694

694:                                              ; preds = %679
  br label %705

695:                                              ; preds = %679
  %696 = load i32, i32* %3, align 4
  %697 = sext i32 %696 to i64
  %698 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %697
  %699 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %698, i32 0, i32 12
  %700 = load i32, i32* %699, align 4
  %701 = load i32, i32* %3, align 4
  %702 = load i32, i32* @movenum, align 4
  %703 = add nsw i32 %702, 1
  %704 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i64 0, i64 0), i32 %700, i32 %701, i32 %703)
  br label %705

705:                                              ; preds = %695, %694
  br label %762

706:                                              ; preds = %672, %665, %658, %651, %643
  %707 = load i32, i32* %3, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %708
  %710 = load i8, i8* %709, align 1
  %711 = zext i8 %710 to i32
  %712 = load i32, i32* %2, align 4
  %713 = icmp eq i32 %711, %712
  br i1 %713, label %714, label %761

714:                                              ; preds = %706
  %715 = load i32, i32* %3, align 4
  %716 = sext i32 %715 to i64
  %717 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %716
  %718 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %717, i32 0, i32 10
  %719 = load i32, i32* %718, align 4
  %720 = icmp ne i32 %719, 0
  br i1 %720, label %761, label %721

721:                                              ; preds = %714
  %722 = load i32, i32* %3, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %723
  %725 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %724, i32 0, i32 14
  %726 = load i32, i32* %725, align 4
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %728, label %761

728:                                              ; preds = %721
  %729 = load i32, i32* %3, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %730
  %732 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %731, i32 0, i32 12
  %733 = load i32, i32* %732, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %734
  %736 = load i8, i8* %735, align 1
  %737 = zext i8 %736 to i32
  %738 = icmp ne i32 %737, 3
  br i1 %738, label %739, label %761

739:                                              ; preds = %728
  %740 = load i32, i32* %3, align 4
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %741
  %743 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %742, i32 0, i32 12
  %744 = load i32, i32* %743, align 4
  %745 = load i32, i32* %3, align 4
  call void @add_owl_uncertain_defense_move(i32 %744, i32 %745)
  %746 = load i32, i32* @debug, align 4
  %747 = and i32 %746, 4
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %750, label %749

749:                                              ; preds = %739
  br label %760

750:                                              ; preds = %739
  %751 = load i32, i32* %3, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %752
  %754 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %753, i32 0, i32 12
  %755 = load i32, i32* %754, align 4
  %756 = load i32, i32* %3, align 4
  %757 = load i32, i32* @movenum, align 4
  %758 = add nsw i32 %757, 1
  %759 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i64 0, i64 0), i32 %755, i32 %756, i32 %758)
  br label %760

760:                                              ; preds = %750, %749
  br label %761

761:                                              ; preds = %760, %728, %721, %714, %706
  br label %762

762:                                              ; preds = %761, %705
  br label %763

763:                                              ; preds = %762, %642
  br label %764

764:                                              ; preds = %763, %593
  br label %765

765:                                              ; preds = %764, %543
  br label %823

766:                                              ; preds = %453
  %767 = load i32, i32* %3, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %768
  %770 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %769, i32 0, i32 7
  %771 = load i32, i32* %770, align 4
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %822

773:                                              ; preds = %766
  %774 = load i32, i32* %3, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %775
  %777 = load i8, i8* %776, align 1
  %778 = zext i8 %777 to i32
  %779 = load i32, i32* %2, align 4
  %780 = sub nsw i32 3, %779
  %781 = icmp eq i32 %778, %780
  br i1 %781, label %782, label %822

782:                                              ; preds = %773
  %783 = load i32, i32* %3, align 4
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %784
  %786 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %785, i32 0, i32 10
  %787 = load i32, i32* %786, align 4
  %788 = icmp ne i32 %787, 0
  br i1 %788, label %822, label %789

789:                                              ; preds = %782
  %790 = load i32, i32* %3, align 4
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %791
  %793 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %792, i32 0, i32 8
  %794 = load i32, i32* %793, align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %795
  %797 = load i8, i8* %796, align 1
  %798 = zext i8 %797 to i32
  %799 = icmp ne i32 %798, 3
  br i1 %799, label %800, label %822

800:                                              ; preds = %789
  %801 = load i32, i32* %3, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %802
  %804 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %803, i32 0, i32 8
  %805 = load i32, i32* %804, align 4
  %806 = load i32, i32* %3, align 4
  call void @add_owl_uncertain_defense_move(i32 %805, i32 %806)
  %807 = load i32, i32* @debug, align 4
  %808 = and i32 %807, 4
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %811, label %810

810:                                              ; preds = %800
  br label %821

811:                                              ; preds = %800
  %812 = load i32, i32* %3, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %813
  %815 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %814, i32 0, i32 8
  %816 = load i32, i32* %815, align 4
  %817 = load i32, i32* %3, align 4
  %818 = load i32, i32* @movenum, align 4
  %819 = add nsw i32 %818, 1
  %820 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.26, i64 0, i64 0), i32 %816, i32 %817, i32 %819)
  br label %821

821:                                              ; preds = %811, %810
  br label %822

822:                                              ; preds = %821, %789, %782, %773, %766
  br label %823

823:                                              ; preds = %822, %765
  br label %824

824:                                              ; preds = %823, %452
  br label %825

825:                                              ; preds = %824, %309
  br label %826

826:                                              ; preds = %825, %252, %36
  %827 = load i32, i32* %3, align 4
  %828 = add nsw i32 %827, 1
  store i32 %828, i32* %3, align 4
  br label %11, !llvm.loop !43

829:                                              ; preds = %11
  ret void
}

declare dso_local void @add_loss_move(i32, i32, i32) #1

declare dso_local void @add_owl_defense_move(i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_does_defend(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.local_owl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %23 = call i32 @get_reading_node_counter()
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %15, align 4
  store i32 15, i32* %16, align 4
  store double 0.000000e+00, double* %17, align 8
  %24 = load i32, i32* @debug, align 4
  %25 = and i32 %24, 4096
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = call double @gg_cputime()
  store double %28, double* %17, align 8
  br label %29

29:                                               ; preds = %27, %3
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %126

37:                                               ; preds = %29
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* @verbose, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %51

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %13, align 4
  %50 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @search_persistent_owl_cache(i32 4, i32 %52, i32 %53, i32 0, i32* %9, i32* %54, i32* null, i32* null)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %126

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @trymove(i32 %60, i32 %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0), i32 %62, i32 0, i32 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %85

65:                                               ; preds = %59
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @search_persistent_owl_cache(i32 0, i32 %66, i32 0, i32 0, i32* %9, i32* null, i32* %67, i32* null)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  call void @popgo()
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 5, %71
  store i32 %72, i32* %4, align 4
  br label %126

73:                                               ; preds = %65
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  call void @init_owl(%struct.local_owl_data** %10, i32 %74, i32 0, i32 %75, i32 1)
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %78 = load i32*, i32** %7, align 8
  call void @prepare_goal_list(i32 %76, %struct.local_owl_data* %77, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32* @goal_worms_computed, i32* %78, i32 0)
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %81 = call i32 @do_owl_attack(i32 %79, i32* null, i32* %16, %struct.local_owl_data* %80, i32 0, i32 0, i32 0)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %16, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %15, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32 %82)
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 5, %83
  store i32 %84, i32* %9, align 4
  call void @popgo()
  br label %86

85:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %126

86:                                               ; preds = %73
  %87 = call i32 @get_reading_node_counter()
  %88 = load i32, i32* %11, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* @debug, align 4
  %91 = and i32 %90, 4096
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %105

94:                                               ; preds = %86
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @local_owl_node_counter, align 4
  %100 = load i32, i32* %12, align 4
  %101 = call double @gg_cputime()
  %102 = load double, double* %17, align 8
  %103 = fsub double %101, %102
  %104 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.29, i64 0, i64 0), i32 %95, i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, double %103)
  br label %105

105:                                              ; preds = %94, %93
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %112 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %111, i32 0, i32 0
  %113 = getelementptr inbounds [400 x i8], [400 x i8]* %112, i64 0, i64 0
  %114 = load i32, i32* %6, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  call void @store_persistent_owl_cache(i32 4, i32 %106, i32 %107, i32 0, i32 %108, i32 %109, i32 0, i32 0, i32 %110, i8* %113, i32 %118)
  %119 = load i32*, i32** %7, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %105
  %122 = load i32, i32* %15, align 4
  %123 = load i32*, i32** %7, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %105
  %125 = load i32, i32* %9, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %85, %70, %57, %36
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local void @add_gain_move(i32, i32, i32) #1

declare dso_local void @add_owl_attack_move(i32, i32, i32) #1

declare dso_local void @add_owl_defense_threat_move(i32, i32, i32) #1

declare dso_local i32 @is_legal(i32, i32) #1

declare dso_local void @add_owl_prevent_threat_move(i32, i32) #1

declare dso_local void @add_owl_attack_threat_move(i32, i32, i32) #1

declare dso_local void @add_owl_uncertain_defense_move(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_confirm_safety(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.local_owl_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %26 = call i32 @get_reading_node_counter()
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store double 0.000000e+00, double* %17, align 8
  store i32 0, i32* %19, align 4
  store i32 15, i32* %20, align 4
  %27 = load i32, i32* @debug, align 4
  %28 = and i32 %27, 4096
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = call double @gg_cputime()
  store double %31, double* %17, align 8
  br label %32

32:                                               ; preds = %30, %4
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %152

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @verbose, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %54

49:                                               ; preds = %40
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.30, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %48
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @search_persistent_owl_cache(i32 8, i32 %55, i32 %56, i32 0, i32* %11, i32* %57, i32* %58, i32* null)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %152

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @trymove(i32 %64, i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i64 0, i64 0), i32 %66, i32 0, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %103

69:                                               ; preds = %63
  %70 = load i32, i32* %15, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 @search_persistent_owl_cache(i32 0, i32 %70, i32 0, i32 0, i32* %11, i32* %71, i32* %72, i32* null)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %69
  call void @popgo()
  %76 = load i32, i32* %11, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 5, i32* %5, align 4
  br label %152

79:                                               ; preds = %75
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 2, i32* %5, align 4
  br label %152

83:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %152

84:                                               ; preds = %69
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  call void @init_owl(%struct.local_owl_data** %12, i32 %85, i32 0, i32 %86, i32 1)
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %89 = load i32*, i32** %9, align 8
  call void @prepare_goal_list(i32 %87, %struct.local_owl_data* %88, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32* @goal_worms_computed, i32* %89, i32 0)
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %92 = call i32 @do_owl_attack(i32 %90, i32* %16, i32* %20, %struct.local_owl_data* %91, i32 0, i32 0, i32 0)
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %20, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %19, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32 %93)
  %94 = load i32, i32* %18, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  store i32 5, i32* %11, align 4
  br label %102

97:                                               ; preds = %84
  %98 = load i32, i32* %18, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  store i32 2, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %97
  br label %102

102:                                              ; preds = %101, %96
  call void @popgo()
  br label %104

103:                                              ; preds = %63
  store i32 0, i32* %5, align 4
  br label %152

104:                                              ; preds = %102
  %105 = call i32 @get_reading_node_counter()
  %106 = load i32, i32* %13, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* @debug, align 4
  %109 = and i32 %108, 4096
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %104
  br label %124

112:                                              ; preds = %104
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %15, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @local_owl_node_counter, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call double @gg_cputime()
  %121 = load double, double* %17, align 8
  %122 = fsub double %120, %121
  %123 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.32, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, double %122)
  br label %124

124:                                              ; preds = %112, %111
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.local_owl_data*, %struct.local_owl_data** %12, align 8
  %132 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %131, i32 0, i32 0
  %133 = getelementptr inbounds [400 x i8], [400 x i8]* %132, i64 0, i64 0
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  call void @store_persistent_owl_cache(i32 8, i32 %125, i32 %126, i32 0, i32 %127, i32 %128, i32 %129, i32 0, i32 %130, i8* %133, i32 %138)
  %139 = load i32*, i32** %8, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %144

141:                                              ; preds = %124
  %142 = load i32, i32* %16, align 4
  %143 = load i32*, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %124
  %145 = load i32*, i32** %9, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32, i32* %19, align 4
  %149 = load i32*, i32** %9, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %11, align 4
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %150, %103, %83, %82, %78, %61, %39
  %153 = load i32, i32* %5, align 4
  ret i32 %153
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_does_attack(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.local_owl_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = sub nsw i32 3, %24
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %26 = call i32 @get_reading_node_counter()
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 15, i32* %17, align 4
  store double 0.000000e+00, double* %18, align 8
  %27 = load i32, i32* @debug, align 4
  %28 = and i32 %27, 4096
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = call double @gg_cputime()
  store double %31, double* %18, align 8
  br label %32

32:                                               ; preds = %30, %3
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %35, i32 0, i32 14
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %141

40:                                               ; preds = %32
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* @verbose, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %54

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %14, align 4
  %53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %48
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @search_persistent_owl_cache(i32 5, i32 %55, i32 %56, i32 0, i32* %10, i32* %57, i32* null, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %141

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  call void @init_owl(%struct.local_owl_data** %11, i32 %63, i32 0, i32 0, i32 1)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @trymove(i32 %64, i32 %65, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 %66, i32 0, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @search_persistent_owl_cache(i32 1, i32 %70, i32 0, i32 0, i32* %10, i32* null, i32* %71, i32* null)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  call void @popgo()
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 5, %75
  store i32 %76, i32* %4, align 4
  br label %141

77:                                               ; preds = %69
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  call void @owl_update_boundary_marks(i32 %78, %struct.local_owl_data* %79)
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  store i32 0, i32* %15, align 4
  br label %95

87:                                               ; preds = %77
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %90 = load i32*, i32** %7, align 8
  call void @prepare_goal_list(i32 %88, %struct.local_owl_data* %89, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32* @goal_worms_computed, i32* %90, i32 0)
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %93 = call i32 @do_owl_defend(i32 %91, i32* null, i32* %17, %struct.local_owl_data* %92, i32 0, i32 0, i32 0)
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %17, align 4
  call void @finish_goal_list(i32* @goal_worms_computed, i32* %16, i32* getelementptr inbounds ([15 x i32], [15 x i32]* @owl_goal_worm, i64 0, i64 0), i32 %94)
  br label %95

95:                                               ; preds = %87, %86
  %96 = load i32, i32* %15, align 4
  %97 = sub nsw i32 5, %96
  store i32 %97, i32* %10, align 4
  %98 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %99 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %98, i32 0, i32 12
  store i32 0, i32* %99, align 4
  call void @popgo()
  br label %101

100:                                              ; preds = %62
  store i32 0, i32* %4, align 4
  br label %141

101:                                              ; preds = %95
  %102 = call i32 @get_reading_node_counter()
  %103 = load i32, i32* %12, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* @debug, align 4
  %106 = and i32 %105, 4096
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %120

109:                                              ; preds = %101
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @local_owl_node_counter, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call double @gg_cputime()
  %117 = load double, double* %18, align 8
  %118 = fsub double %116, %117
  %119 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.35, i64 0, i64 0), i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115, double %118)
  br label %120

120:                                              ; preds = %109, %108
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.local_owl_data*, %struct.local_owl_data** %11, align 8
  %127 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds [400 x i8], [400 x i8]* %127, i64 0, i64 0
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  call void @store_persistent_owl_cache(i32 5, i32 %121, i32 %122, i32 0, i32 %123, i32 %124, i32 0, i32 0, i32 %125, i8* %128, i32 %133)
  %134 = load i32*, i32** %7, align 8
  %135 = icmp ne i32* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %120
  %137 = load i32, i32* %16, align 4
  %138 = load i32*, i32** %7, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %120
  %140 = load i32, i32* %10, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %100, %74, %60, %39
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_connection_defends(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.local_owl_data*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = call i32 @get_reading_node_counter()
  store i32 %19, i32* %10, align 4
  store double 0.000000e+00, double* %12, align 8
  %20 = load i32, i32* @debug, align 4
  %21 = and i32 %20, 4096
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = call double @gg_cputime()
  store double %24, double* %12, align 8
  br label %25

25:                                               ; preds = %23, %3
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, i32* %8, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  br label %35

34:                                               ; preds = %25
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4006, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.36, i64 0, i64 0), i32 -1, i32 -1)
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* @verbose, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0), i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %38
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %47, i32 0, i32 14
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %117

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %55, i32 0, i32 14
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %117

60:                                               ; preds = %52
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @search_persistent_owl_cache(i32 6, i32 %61, i32 %62, i32 %63, i32* %9, i32* null, i32* null, i32* null)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %9, align 4
  store i32 %67, i32* %4, align 4
  br label %117

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  call void @init_owl(%struct.local_owl_data** %13, i32 %69, i32 %70, i32 0, i32 1)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @trymove(i32 %71, i32 %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.38, i64 0, i64 0), i32 %73, i32 0, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  call void @owl_update_goal(i32 %77, i32 1, %struct.local_owl_data* %78, i32 0)
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %81 = call i32 @do_owl_attack(i32 %79, i32* null, i32* null, %struct.local_owl_data* %80, i32 0, i32 0, i32 0)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  store i32 5, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %76
  %85 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %86 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %85, i32 0, i32 12
  store i32 0, i32* %86, align 4
  call void @popgo()
  br label %87

87:                                               ; preds = %84, %68
  %88 = call i32 @get_reading_node_counter()
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* @debug, align 4
  %92 = and i32 %91, 4096
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %87
  br label %106

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @local_owl_node_counter, align 4
  %101 = load i32, i32* %11, align 4
  %102 = call double @gg_cputime()
  %103 = load double, double* %12, align 8
  %104 = fsub double %102, %103
  %105 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.39, i64 0, i64 0), i32 %96, i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, double %104)
  br label %106

106:                                              ; preds = %95, %94
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %113 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %112, i32 0, i32 0
  %114 = getelementptr inbounds [400 x i8], [400 x i8]* %113, i64 0, i64 0
  %115 = load i32, i32* %8, align 4
  call void @store_persistent_owl_cache(i32 6, i32 %107, i32 %108, i32 %109, i32 %110, i32 0, i32 0, i32 0, i32 %111, i8* %114, i32 %115)
  %116 = load i32, i32* %9, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %106, %66, %59, %51
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_lively(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ult i32 %6, 421
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %23

16:                                               ; preds = %8, %1
  %17 = load i32, i32* %3, align 4
  %18 = sdiv i32 %17, 20
  %19 = sub nsw i32 %18, 1
  %20 = load i32, i32* %3, align 4
  %21 = srem i32 %20, 20
  %22 = sub nsw i32 %21, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4390, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %19, i32 %22)
  br label %23

23:                                               ; preds = %16, %15
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %108

31:                                               ; preds = %23
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @find_origin(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load %struct.local_owl_data*, %struct.local_owl_data** @other_owl_data, align 8
  %35 = icmp ne %struct.local_owl_data* %34, null
  br i1 %35, label %36, label %72

36:                                               ; preds = %31
  %37 = load %struct.local_owl_data*, %struct.local_owl_data** @other_owl_data, align 8
  %38 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %37, i32 0, i32 0
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x i8], [400 x i8]* %38, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = icmp ne i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %108

45:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 10
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.local_owl_data*, %struct.local_owl_data** @other_owl_data, align 8
  %51 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %50, i32 0, i32 6
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %51, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load %struct.local_owl_data*, %struct.local_owl_data** @other_owl_data, align 8
  %60 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %59, i32 0, i32 10
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [10 x i32], [10 x i32]* %60, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %108

67:                                               ; preds = %58, %49
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %46, !llvm.loop !44

71:                                               ; preds = %46
  br label %72

72:                                               ; preds = %71, %31
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %95, %72
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 10
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %78 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %77, i32 0, i32 6
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [10 x i32], [10 x i32]* %78, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %94

85:                                               ; preds = %76
  %86 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %87 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %86, i32 0, i32 10
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [10 x i32], [10 x i32]* %87, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %108

94:                                               ; preds = %85, %76
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %73, !llvm.loop !45

98:                                               ; preds = %73
  %99 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %100 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %99, i32 0, i32 11
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x i8], [400 x i8]* %100, i64 0, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %108

107:                                              ; preds = %98
  store i32 1, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %106, %93, %66, %44, %30
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_substantial(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [11 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca %struct.local_owl_data*, align 8
  %14 = alloca [160 x i32], align 16
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %18 = call i32 @findlib(i32 %16, i32 11, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = call i32 @get_reading_node_counter()
  store i32 %19, i32* %9, align 4
  store double 0.000000e+00, double* %12, align 8
  %20 = load i32, i32* @debug, align 4
  %21 = and i32 %20, 4096
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call double @gg_cputime()
  store double %24, double* %12, align 8
  br label %25

25:                                               ; preds = %23, %1
  call void @reduced_init_owl(%struct.local_owl_data** %13, i32 1)
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = sub nsw i32 3, %30
  %32 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %33 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  store i32 0, i32* @local_owl_node_counter, align 4
  %34 = load i32, i32* @stackp, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %38

37:                                               ; preds = %25
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4484, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 -1)
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @countstones(i32 %39)
  %41 = icmp sgt i32 %40, 6
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %272

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = icmp sgt i32 %44, 10
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %272

47:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @board_size, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %48
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @board_size, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %53
  %58 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %59 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %58, i32 0, i32 0
  %60 = load i32, i32* %5, align 4
  %61 = mul nsw i32 %60, 20
  %62 = add nsw i32 21, %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x i8], [400 x i8]* %59, i64 0, i64 %65
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %53, !llvm.loop !46

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %48, !llvm.loop !47

74:                                               ; preds = %48
  %75 = load i32, i32* %3, align 4
  %76 = getelementptr inbounds [160 x i32], [160 x i32]* %14, i64 0, i64 0
  %77 = call i32 @chainlinks(i32 %75, i32* %76)
  store i32 %77, i32* %15, align 4
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %134, %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %137

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [160 x i32], [160 x i32]* %14, i64 0, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %88, i32 0, i32 16
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 1, i32* %2, align 4
  br label %272

93:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %130, %93
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @board_size, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %133

98:                                               ; preds = %94
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %126, %98
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @board_size, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %129

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = mul nsw i32 %104, 20
  %106 = add nsw i32 21, %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [160 x i32], [160 x i32]* %14, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @is_same_dragon(i32 %108, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %103
  %116 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %117 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %116, i32 0, i32 0
  %118 = load i32, i32* %5, align 4
  %119 = mul nsw i32 %118, 20
  %120 = add nsw i32 21, %119
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [400 x i8], [400 x i8]* %117, i64 0, i64 %123
  store i8 1, i8* %124, align 1
  br label %125

125:                                              ; preds = %115, %103
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %99, !llvm.loop !48

129:                                              ; preds = %99
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %94, !llvm.loop !49

133:                                              ; preds = %94
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %4, align 4
  br label %78, !llvm.loop !50

137:                                              ; preds = %78
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @search_persistent_owl_cache(i32 7, i32 %138, i32 0, i32 0, i32* %11, i32* null, i32* null, i32* null)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %137
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %2, align 4
  br label %272

143:                                              ; preds = %137
  store i32 0, i32* %4, align 4
  br label %144

144:                                              ; preds = %220, %143
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %8, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %223

148:                                              ; preds = %144
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %154 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @trymove(i32 %152, i32 %155, i8* null, i32 0, i32 0, i32 0)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %148
  %159 = load i32, i32* @level, align 4
  %160 = icmp sge i32 %159, 10
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  call void @increase_depth_values()
  br label %162

162:                                              ; preds = %161, %158
  %163 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %164 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %163, i32 0, i32 0
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [400 x i8], [400 x i8]* %164, i64 0, i64 %169
  store i8 1, i8* %170, align 1
  br label %219

171:                                              ; preds = %148
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* %8, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %176, label %208

176:                                              ; preds = %171
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %183 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @trymove(i32 %181, i32 %184, i8* null, i32 0, i32 0, i32 0)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %208

187:                                              ; preds = %176
  %188 = load i32, i32* @level, align 4
  %189 = icmp sge i32 %188, 10
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  call void @increase_depth_values()
  br label %191

191:                                              ; preds = %190, %187
  %192 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %193 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %192, i32 0, i32 0
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [400 x i8], [400 x i8]* %193, i64 0, i64 %198
  store i8 1, i8* %199, align 1
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %4, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %206
  store i32 %203, i32* %207, align 4
  br label %218

208:                                              ; preds = %176, %171
  br label %209

209:                                              ; preds = %216, %208
  %210 = load i32, i32* @stackp, align 4
  %211 = icmp sgt i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i32, i32* @level, align 4
  %214 = icmp sge i32 %213, 10
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  call void @decrease_depth_values()
  br label %216

216:                                              ; preds = %215, %212
  call void @popgo()
  br label %209, !llvm.loop !51

217:                                              ; preds = %209
  store i32 0, i32* %2, align 4
  br label %272

218:                                              ; preds = %191
  br label %219

219:                                              ; preds = %218, %162
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %4, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %4, align 4
  br label %144, !llvm.loop !52

223:                                              ; preds = %144
  %224 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  call void @compute_owl_escape_values(%struct.local_owl_data* %224)
  %225 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  call void @owl_mark_boundary(%struct.local_owl_data* %225)
  %226 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %227 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %226, i32 0, i32 12
  store i32 0, i32* %227, align 4
  %228 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %229 = load i32, i32* %228, align 16
  %230 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %231 = call i32 @do_owl_attack(i32 %229, i32* null, i32* null, %struct.local_owl_data* %230, i32 0, i32 0, i32 0)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %223
  store i32 0, i32* %11, align 4
  br label %235

234:                                              ; preds = %223
  store i32 1, i32* %11, align 4
  br label %235

235:                                              ; preds = %234, %233
  br label %236

236:                                              ; preds = %243, %235
  %237 = load i32, i32* @stackp, align 4
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %236
  %240 = load i32, i32* @level, align 4
  %241 = icmp sge i32 %240, 10
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  call void @decrease_depth_values()
  br label %243

243:                                              ; preds = %242, %239
  call void @popgo()
  br label %236, !llvm.loop !53

244:                                              ; preds = %236
  %245 = call i32 @get_reading_node_counter()
  %246 = load i32, i32* %9, align 4
  %247 = sub nsw i32 %245, %246
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* @debug, align 4
  %249 = and i32 %248, 4096
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %244
  br label %261

252:                                              ; preds = %244
  %253 = load i32, i32* %3, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* @local_owl_node_counter, align 4
  %256 = load i32, i32* %10, align 4
  %257 = call double @gg_cputime()
  %258 = load double, double* %12, align 8
  %259 = fsub double %257, %258
  %260 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.41, i64 0, i64 0), i32 %253, i32 %254, i32 %255, i32 %256, double %259)
  br label %261

261:                                              ; preds = %252, %251
  %262 = load i32, i32* %3, align 4
  %263 = load i32, i32* %11, align 4
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %266 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %265, i32 0, i32 0
  %267 = getelementptr inbounds [400 x i8], [400 x i8]* %266, i64 0, i64 0
  %268 = load %struct.local_owl_data*, %struct.local_owl_data** %13, align 8
  %269 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 4
  call void @store_persistent_owl_cache(i32 7, i32 %262, i32 0, i32 0, i32 %263, i32 0, i32 0, i32 0, i32 %264, i8* %267, i32 %270)
  %271 = load i32, i32* %11, align 4
  store i32 %271, i32* %2, align 4
  br label %272

272:                                              ; preds = %261, %217, %141, %92, %46, %42
  %273 = load i32, i32* %2, align 4
  ret i32 %273
}

declare dso_local i32 @findlib(i32, i32, i32*) #1

declare dso_local i32 @countstones(i32) #1

declare dso_local i32 @chainlinks(i32, i32*) #1

declare dso_local i32 @is_same_dragon(i32, i32) #1

declare dso_local void @increase_depth_values() #1

declare dso_local void @decrease_depth_values() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_owl_escape_values(%struct.local_owl_data* %0) #0 {
  %2 = alloca %struct.local_owl_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [400 x i8], align 16
  store %struct.local_owl_data* %0, %struct.local_owl_data** %2, align 8
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %8 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = sub nsw i32 3, %9
  %11 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 0
  call void @get_lively_stones(i32 %10, i8* %11)
  %12 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %13 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 0
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %17 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %16, i32 0, i32 2
  %18 = getelementptr inbounds [400 x i8], [400 x i8]* %17, i64 0, i64 0
  call void @compute_escape_influence(i32 %14, i8* %15, float* null, i8* %18)
  %19 = load i32, i32* @debug, align 4
  %20 = and i32 %19, 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %25

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.142, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %22
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %128, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @board_size, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %131

30:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %117, %30
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @board_size, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %120

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = mul nsw i32 %36, 20
  %38 = add nsw i32 21, %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %47 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %102

50:                                               ; preds = %35
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %59 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %58, i32 0, i32 2
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x i8], [400 x i8]* %59, i64 0, i64 %61
  store i8 6, i8* %62, align 1
  br label %101

63:                                               ; preds = %50
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 3
  br i1 %69, label %70, label %100

70:                                               ; preds = %63
  %71 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %71, i64 %77
  %79 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %78, i32 0, i32 9
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 5
  br i1 %81, label %94, label %82

82:                                               ; preds = %70
  %83 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %83, i64 %89
  %91 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 5
  br i1 %93, label %94, label %100

94:                                               ; preds = %82, %70
  %95 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %96 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %95, i32 0, i32 2
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [400 x i8], [400 x i8]* %96, i64 0, i64 %98
  store i8 4, i8* %99, align 1
  br label %100

100:                                              ; preds = %94, %82, %63
  br label %101

101:                                              ; preds = %100, %57
  br label %102

102:                                              ; preds = %101, %35
  %103 = load i32, i32* @debug, align 4
  %104 = and i32 %103, 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %116

107:                                              ; preds = %102
  %108 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %109 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %108, i32 0, i32 2
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [400 x i8], [400 x i8]* %109, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.143, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %107, %106
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %31, !llvm.loop !54

120:                                              ; preds = %31
  %121 = load i32, i32* @debug, align 4
  %122 = and i32 %121, 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  br label %127

125:                                              ; preds = %120
  %126 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.144, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %124
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %4, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %4, align 4
  br label %26, !llvm.loop !55

131:                                              ; preds = %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_mark_boundary(%struct.local_owl_data* %0) #0 {
  %2 = alloca %struct.local_owl_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.local_owl_data* %0, %struct.local_owl_data** %2, align 8
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %10 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 3, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %14 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %13, i32 0, i32 1
  %15 = getelementptr inbounds [400 x i8], [400 x i8]* %14, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 400, i1 false)
  store i32 21, i32* %3, align 4
  br label %16

16:                                               ; preds = %76, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 400
  br i1 %18, label %19, label %79

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %75

27:                                               ; preds = %19
  %28 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %29 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %28, i32 0, i32 1
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [400 x i8], [400 x i8]* %29, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %75, label %35

35:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %71, %35
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 8
  br i1 %38, label %39, label %74

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %40, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 3
  br i1 %50, label %51, label %70

51:                                               ; preds = %39
  %52 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %53 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %52, i32 0, i32 0
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %54, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [400 x i8], [400 x i8]* %53, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %51
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %68 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds [400 x i8], [400 x i8]* %68, i64 0, i64 0
  call void @mark_string(i32 %66, i8* %69, i8 signext 1)
  br label %74

70:                                               ; preds = %51, %39
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %36, !llvm.loop !56

74:                                               ; preds = %65, %36
  br label %75

75:                                               ; preds = %74, %27, %19
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %16, !llvm.loop !57

79:                                               ; preds = %16
  store i32 21, i32* %3, align 4
  br label %80

80:                                               ; preds = %157, %79
  %81 = load i32, i32* %3, align 4
  %82 = icmp slt i32 %81, 400
  br i1 %82, label %83, label %160

83:                                               ; preds = %80
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %156

91:                                               ; preds = %83
  %92 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %93 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %92, i32 0, i32 1
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [400 x i8], [400 x i8]* %93, i64 0, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %156

100:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %152, %100
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %155

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %105, %109
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %117 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %151

120:                                              ; preds = %104
  %121 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %122 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %121, i32 0, i32 0
  %123 = load i32, i32* %6, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [400 x i8], [400 x i8]* %122, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %151, label %128

128:                                              ; preds = %120
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @countstones(i32 %136)
  %138 = icmp sgt i32 %137, 2
  br i1 %138, label %146, label %139

139:                                              ; preds = %135, %128
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %151

146:                                              ; preds = %139, %135
  %147 = load i32, i32* %3, align 4
  %148 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %149 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %148, i32 0, i32 1
  %150 = getelementptr inbounds [400 x i8], [400 x i8]* %149, i64 0, i64 0
  call void @mark_string(i32 %147, i8* %150, i8 signext 2)
  br label %155

151:                                              ; preds = %139, %120, %104
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %101, !llvm.loop !58

155:                                              ; preds = %146, %101
  br label %156

156:                                              ; preds = %155, %91, %83
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %3, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %3, align 4
  br label %80, !llvm.loop !59

160:                                              ; preds = %80
  store i32 21, i32* %3, align 4
  br label %161

161:                                              ; preds = %273, %160
  %162 = load i32, i32* %3, align 4
  %163 = icmp slt i32 %162, 400
  br i1 %163, label %164, label %276

164:                                              ; preds = %161
  %165 = load i32, i32* %3, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = load i32, i32* %4, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %272

172:                                              ; preds = %164
  %173 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %174 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %173, i32 0, i32 1
  %175 = load i32, i32* %3, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [400 x i8], [400 x i8]* %174, i64 0, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %272

181:                                              ; preds = %172
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %184, i32 0, i32 16
  %186 = getelementptr inbounds [10 x i32], [10 x i32]* %185, i64 0, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %181
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %3, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %194, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %189
  br label %273

202:                                              ; preds = %189, %181
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %204
  %206 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %273

210:                                              ; preds = %202
  store i32 0, i32* %5, align 4
  br label %211

211:                                              ; preds = %268, %210
  %212 = load i32, i32* %5, align 4
  %213 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %214 = load i32, i32* %3, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %213, i64 %219
  %221 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 4
  %223 = icmp slt i32 %212, %222
  br i1 %223, label %224, label %271

224:                                              ; preds = %211
  %225 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %227
  %229 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %225, i64 %231
  %233 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %232, i32 0, i32 1
  %234 = load i32, i32* %5, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [10 x i32], [10 x i32]* %233, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %7, align 4
  %238 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %238, i64 %240
  %242 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  store i32 %243, i32* %8, align 4
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %245
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %250 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = icmp eq i32 %248, %251
  br i1 %252, label %253, label %267

253:                                              ; preds = %224
  %254 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %255 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %254, i32 0, i32 0
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [400 x i8], [400 x i8]* %255, i64 0, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = icmp ne i8 %259, 0
  br i1 %260, label %267, label %261

261:                                              ; preds = %253
  %262 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %263 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %262, i32 0, i32 1
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [400 x i8], [400 x i8]* %263, i64 0, i64 %265
  store i8 2, i8* %266, align 1
  br label %271

267:                                              ; preds = %253, %224
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %5, align 4
  br label %211, !llvm.loop !60

271:                                              ; preds = %261, %211
  br label %272

272:                                              ; preds = %271, %172, %164
  br label %273

273:                                              ; preds = %272, %209, %201
  %274 = load i32, i32* %3, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %3, align 4
  br label %161, !llvm.loop !61

276:                                              ; preds = %161
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @obvious_false_eye(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sdiv i32 %11, 20
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = srem i32 %14, 20
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 4, i32* %7, align 4
  br label %17

17:                                               ; preds = %100, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %103

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* @board_size, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @board_size, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %34, %20
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @board_size, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @board_size, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42, %38
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %42, %34
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @board_size, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @board_size, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %57, %51
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %99

66:                                               ; preds = %57
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %67, %68
  %70 = mul nsw i32 %69, 20
  %71 = add nsw i32 21, %70
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 3, %80
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %66
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %84, %85
  %87 = mul nsw i32 %86, 20
  %88 = add nsw i32 21, %87
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = add nsw i32 %88, %91
  %93 = call i32 @attack(i32 %92, i32* null)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %95, %83, %66
  br label %99

99:                                               ; preds = %98, %63
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %17, !llvm.loop !62

103:                                              ; preds = %17
  %104 = load i32, i32* %8, align 4
  %105 = icmp sge i32 %104, 4
  %106 = zext i1 %105 to i32
  ret i32 %106
}

declare dso_local i32 @attack(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_topological_eye(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %9 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %8, i32 0, i32 5
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %9, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %12, i32 0, i32 0
  %14 = load float, float* %13, align 4
  store float %14, float* %6, align 4
  %15 = load float, float* %6, align 4
  %16 = fpext float %15 to double
  %17 = fcmp ogt double %16, 2.000000e+00
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load float, float* %6, align 4
  %20 = fpext float %19 to double
  %21 = fcmp olt double %20, 4.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 3, i32* %3, align 4
  br label %35

23:                                               ; preds = %18, %2
  %24 = load float, float* %6, align 4
  %25 = fpext float %24 to double
  %26 = fcmp ole double %25, 2.000000e+00
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load float, float* %6, align 4
  %29 = fpext float %28 to double
  %30 = fadd double %29, 0x3FEFAE147AE147AE
  %31 = fptosi double %30 to i32
  store i32 %31, i32* %3, align 4
  br label %35

32:                                               ; preds = %23
  %33 = load float, float* %6, align 4
  %34 = fptosi float %33 to i32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %27, %22
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vital_chain(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  call void @sniff_lunch(i32 %6, i32* %3, i32* %4, i32* %5, %struct.local_owl_data* %7)
  %8 = load i32, i32* %5, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sniff_lunch(i32 %0, i32* %1, i32* %2, i32* %3, %struct.local_owl_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.local_owl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [241 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.local_owl_data* %4, %struct.local_owl_data** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = sub nsw i32 3, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %37, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %5
  br label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  %40 = sdiv i32 %39, 20
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %6, align 4
  %43 = srem i32 %42, 20
  %44 = sub nsw i32 %43, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4615, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.141, i64 0, i64 0), i32 %41, i32 %44)
  br label %45

45:                                               ; preds = %38, %37
  %46 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %47 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %46, i32 0, i32 1
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [400 x i8], [400 x i8]* %47, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32*, i32** %7, align 8
  store i32 2, i32* %55, align 4
  %56 = load i32*, i32** %8, align 8
  store i32 2, i32* %56, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 2, i32* %57, align 4
  br label %226

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 0
  %61 = call i32 @findlib(i32 %59, i32 241, i32* %60)
  store i32 %61, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %136, %58
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %139

66:                                               ; preds = %62
  %67 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %68 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %67, i32 0, i32 2
  %69 = load i32, i32* %15, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [400 x i8], [400 x i8]* %68, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %135

78:                                               ; preds = %66
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @is_self_atari(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %135, label %86

86:                                               ; preds = %78
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %124, %86
  %88 = load i32, i32* %16, align 4
  %89 = icmp slt i32 %88, 8
  br i1 %89, label %90, label %127

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %16, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %94, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 3
  br i1 %104, label %105, label %123

105:                                              ; preds = %90
  %106 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %107 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %106, i32 0, i32 0
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %111, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [400 x i8], [400 x i8]* %107, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %105
  br label %127

123:                                              ; preds = %105, %90
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %87, !llvm.loop !63

127:                                              ; preds = %122, %87
  %128 = load i32, i32* %16, align 4
  %129 = icmp eq i32 %128, 8
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load i32*, i32** %7, align 8
  store i32 2, i32* %131, align 4
  %132 = load i32*, i32** %8, align 8
  store i32 2, i32* %132, align 4
  %133 = load i32*, i32** %9, align 8
  store i32 2, i32* %133, align 4
  br label %226

134:                                              ; preds = %127
  br label %135

135:                                              ; preds = %134, %78, %66
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %62, !llvm.loop !64

139:                                              ; preds = %62
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @countstones(i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp sgt i32 %142, 6
  br i1 %143, label %144, label %148

144:                                              ; preds = %139
  %145 = load i32*, i32** %7, align 8
  store i32 2, i32* %145, align 4
  %146 = load i32*, i32** %8, align 8
  store i32 2, i32* %146, align 4
  %147 = load i32*, i32** %9, align 8
  store i32 2, i32* %147, align 4
  br label %226

148:                                              ; preds = %139
  %149 = load i32, i32* %12, align 4
  %150 = icmp sgt i32 %149, 4
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load i32*, i32** %7, align 8
  store i32 1, i32* %152, align 4
  %153 = load i32*, i32** %8, align 8
  store i32 2, i32* %153, align 4
  %154 = load i32*, i32** %9, align 8
  store i32 2, i32* %154, align 4
  br label %226

155:                                              ; preds = %148
  %156 = load i32, i32* %12, align 4
  %157 = icmp sgt i32 %156, 2
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32*, i32** %7, align 8
  store i32 0, i32* %159, align 4
  %160 = load i32*, i32** %8, align 8
  store i32 1, i32* %160, align 4
  %161 = load i32*, i32** %9, align 8
  store i32 2, i32* %161, align 4
  br label %218

162:                                              ; preds = %155
  %163 = load i32, i32* %12, align 4
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %199

165:                                              ; preds = %162
  %166 = load i32, i32* %6, align 4
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %168 = call i32 @findstones(i32 %166, i32 2, i32* %167)
  %169 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @obvious_false_eye(i32 %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %165
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @obvious_false_eye(i32 %176, i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %194

180:                                              ; preds = %174, %165
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @one_two_point(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %180
  %186 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @one_two_point(i32 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = load i32*, i32** %7, align 8
  store i32 0, i32* %191, align 4
  %192 = load i32*, i32** %8, align 8
  store i32 0, i32* %192, align 4
  %193 = load i32*, i32** %9, align 8
  store i32 0, i32* %193, align 4
  br label %198

194:                                              ; preds = %185, %180, %174
  %195 = load i32*, i32** %7, align 8
  store i32 0, i32* %195, align 4
  %196 = load i32*, i32** %8, align 8
  store i32 1, i32* %196, align 4
  %197 = load i32*, i32** %9, align 8
  store i32 2, i32* %197, align 4
  br label %198

198:                                              ; preds = %194, %190
  br label %217

199:                                              ; preds = %162
  %200 = load i32, i32* %12, align 4
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %216

202:                                              ; preds = %199
  %203 = load i32, i32* %6, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i32 @obvious_false_eye(i32 %203, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = load i32*, i32** %7, align 8
  store i32 0, i32* %208, align 4
  %209 = load i32*, i32** %8, align 8
  store i32 1, i32* %209, align 4
  %210 = load i32*, i32** %9, align 8
  store i32 1, i32* %210, align 4
  br label %215

211:                                              ; preds = %202
  %212 = load i32*, i32** %7, align 8
  store i32 0, i32* %212, align 4
  %213 = load i32*, i32** %8, align 8
  store i32 0, i32* %213, align 4
  %214 = load i32*, i32** %9, align 8
  store i32 0, i32* %214, align 4
  br label %215

215:                                              ; preds = %211, %207
  br label %216

216:                                              ; preds = %215, %199
  br label %217

217:                                              ; preds = %216, %198
  br label %218

218:                                              ; preds = %217, %158
  br label %219

219:                                              ; preds = %218
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %6, align 4
  %222 = load i32*, i32** %7, align 8
  %223 = load i32*, i32** %8, align 8
  %224 = load i32*, i32** %9, align 8
  %225 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  call void @eat_lunch_escape_bonus(i32 %221, i32* %222, i32* %223, i32* %224, %struct.local_owl_data* %225)
  br label %226

226:                                              ; preds = %220, %151, %144, %130, %54
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_escape_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ult i32 %5, 421
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  br label %22

15:                                               ; preds = %7, %1
  %16 = load i32, i32* %3, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %3, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4858, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  %23 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %24 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %23, i32 0, i32 0
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x i8], [400 x i8]* %24, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 -10, i32* %2, align 4
  br label %82

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %70, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %73

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %43, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %54, label %69

54:                                               ; preds = %42
  %55 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %56 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %55, i32 0, i32 0
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %57, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [400 x i8], [400 x i8]* %56, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32 -10, i32* %2, align 4
  br label %82

69:                                               ; preds = %54, %42
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %39, !llvm.loop !65

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73, %31
  %75 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %76 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %75, i32 0, i32 2
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [400 x i8], [400 x i8]* %76, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %74, %68, %30
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_goal_dragon(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %4 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i32 0, i32 0
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [400 x i8], [400 x i8]* %4, i64 0, i64 %6
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i32
  ret i32 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_eyespace(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 421
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %21

14:                                               ; preds = %6, %1
  %15 = load i32, i32* %2, align 4
  %16 = sdiv i32 %15, 20
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %2, align 4
  %19 = srem i32 %18, 20
  %20 = sub nsw i32 %19, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4886, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %17, i32 %20)
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %23 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %22, i32 0, i32 4
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %23, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %58

35:                                               ; preds = %21
  %36 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %37 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %36, i32 0, i32 4
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %37, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %44 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %35
  %50 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %51 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %50, i32 0, i32 4
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %51, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %54, i32 0, i32 4
  %56 = call i32 @max_eyes(%struct.eyevalue* %55)
  %57 = icmp sgt i32 %56, 0
  br label %58

58:                                               ; preds = %49, %35, %21
  %59 = phi i1 [ false, %35 ], [ false, %21 ], [ %57, %49 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

declare dso_local i32 @max_eyes(%struct.eyevalue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_big_eyespace(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 421
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %21

14:                                               ; preds = %6, %1
  %15 = load i32, i32* %2, align 4
  %16 = sdiv i32 %15, 20
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %2, align 4
  %19 = srem i32 %18, 20
  %20 = sub nsw i32 %19, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4904, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %17, i32 %20)
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %23 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %22, i32 0, i32 4
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %23, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %58

35:                                               ; preds = %21
  %36 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %37 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %36, i32 0, i32 4
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %37, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %44 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 4
  %47 = sub nsw i32 %46, 1
  %48 = icmp eq i32 %42, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %35
  %50 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %51 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %50, i32 0, i32 4
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %51, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %54, i32 0, i32 4
  %56 = call i32 @max_eyes(%struct.eyevalue* %55)
  %57 = icmp sge i32 %56, 2
  br label %58

58:                                               ; preds = %49, %35, %21
  %59 = phi i1 [ false, %35 ], [ false, %21 ], [ %57, %49 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_proper_eye(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ult i32 %3, 421
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %20

13:                                               ; preds = %5, %1
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 %14, 20
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %2, align 4
  %18 = srem i32 %17, 20
  %19 = sub nsw i32 %18, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4921, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %16, i32 %19)
  br label %20

20:                                               ; preds = %13, %12
  %21 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %22 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %21, i32 0, i32 4
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %22, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %29 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 4
  %32 = sub nsw i32 %31, 1
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %20
  %35 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %36 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %35, i32 0, i32 4
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %36, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %39, i32 0, i32 7
  %41 = load i8, i8* %40, align 4
  %42 = icmp ne i8 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %34, %20
  %45 = phi i1 [ false, %20 ], [ %43, %34 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_eye_size(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ult i32 %4, 421
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %21

14:                                               ; preds = %6, %1
  %15 = load i32, i32* %2, align 4
  %16 = sdiv i32 %15, 20
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %2, align 4
  %19 = srem i32 %18, 20
  %20 = sub nsw i32 %19, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4936, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %17, i32 %20)
  br label %21

21:                                               ; preds = %14, %13
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %23 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %22, i32 0, i32 4
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %23, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  %29 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %30 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %29, i32 0, i32 4
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %30, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %37 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %36, i32 0, i32 4
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %37, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = sub nsw i32 %35, %42
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_strong_dragon(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ult i32 %3, 421
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  br label %20

13:                                               ; preds = %5, %1
  %14 = load i32, i32* %2, align 4
  %15 = sdiv i32 %14, 20
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %2, align 4
  %18 = srem i32 %17, 20
  %19 = sub nsw i32 %18, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4958, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0), i32 %16, i32 %19)
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %34, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %20
  br label %42

35:                                               ; preds = %27
  %36 = load i32, i32* %2, align 4
  %37 = sdiv i32 %36, 20
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* %2, align 4
  %40 = srem i32 %39, 20
  %41 = sub nsw i32 %40, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4959, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i64 0, i64 0), i32 %38, i32 %41)
  br label %42

42:                                               ; preds = %35, %34
  %43 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %44 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %43, i32 0, i32 0
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x i8], [400 x i8]* %44, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %74, label %50

50:                                               ; preds = %42
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %55, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %64 = load i32, i32* %2, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %63, i64 %69
  %71 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %70, i32 0, i32 10
  %72 = call i32 @min_eyes(%struct.eyevalue* %71)
  %73 = icmp sge i32 %72, 2
  br label %74

74:                                               ; preds = %62, %50, %42
  %75 = phi i1 [ false, %50 ], [ false, %42 ], [ %73, %62 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

declare dso_local i32 @min_eyes(%struct.eyevalue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_owl_node_counter() #0 {
  store i32 0, i32* @global_owl_node_counter, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_owl_node_counter() #0 {
  %1 = load i32, i32* @global_owl_node_counter, align 4
  ret i32 %1
}

declare dso_local i32 @get_read_result2(i32, i32, i32, i32*, i32*, %struct.read_result_t**) #1

declare dso_local void @sgf_trace2(i8*, i32, i32, i32, i32, i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_find_lunches(%struct.local_owl_data* %0) #0 {
  %2 = alloca %struct.local_owl_data*, align 8
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
  %15 = alloca [400 x i8], align 16
  %16 = alloca %struct.SGFTree_t*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [160 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca [361 x i32], align 16
  %24 = alloca i32, align 4
  %25 = alloca [241 x i32], align 16
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca [400 x i32], align 16
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.local_owl_data* %0, %struct.local_owl_data** %2, align 8
  store i32 0, i32* %6, align 4
  %35 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %36 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sub nsw i32 3, %38
  store i32 %39, i32* %14, align 4
  %40 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %40, %struct.SGFTree_t** %16, align 8
  %41 = load i32, i32* @count_variations, align 4
  store i32 %41, i32* %17, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %51, %1
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 10
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %47 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %46, i32 0, i32 6
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %47, i64 0, i64 %49
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %42, !llvm.loop !66

54:                                               ; preds = %42
  %55 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %56 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %55, i32 0, i32 11
  %57 = getelementptr inbounds [400 x i8], [400 x i8]* %56, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 4 %57, i8 0, i64 400, i1 false)
  %58 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %58, i8 0, i64 400, i1 false)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %429, %54
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @board_size, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %432

63:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %425, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @board_size, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %428

68:                                               ; preds = %64
  %69 = load i32, i32* %3, align 4
  %70 = mul nsw i32 %69, 20
  %71 = add nsw i32 21, %70
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %18, align 4
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = load i32, i32* %13, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %424

81:                                               ; preds = %68
  %82 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %83 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %82, i32 0, i32 0
  %84 = load i32, i32* %18, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [400 x i8], [400 x i8]* %83, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %424

90:                                               ; preds = %81
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %420, %90
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %423

94:                                               ; preds = %91
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 4
  br i1 %100, label %101, label %113

101:                                              ; preds = %94
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %19, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %101
  %111 = load i32, i32* %19, align 4
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %19, align 4
  br label %113

113:                                              ; preds = %110, %101, %94
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %420

124:                                              ; preds = %113
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %125, %126
  %128 = call i32 @find_origin(i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %420

135:                                              ; preds = %124
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 %137
  store i8 1, i8* %138, align 1
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @attack_and_defend(i32 %139, i32* %9, i32* %10, i32* %11, i32* %12)
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %194

143:                                              ; preds = %135
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %146 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %145, i32 0, i32 6
  %147 = load i32, i32* %6, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [10 x i32], [10 x i32]* %146, i64 0, i64 %148
  store i32 %144, i32* %149, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %152 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %151, i32 0, i32 7
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [10 x i32], [10 x i32]* %152, i64 0, i64 %154
  store i32 %150, i32* %155, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %158 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %157, i32 0, i32 8
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [10 x i32], [10 x i32]* %158, i64 0, i64 %160
  store i32 %156, i32* %161, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %164 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %163, i32 0, i32 9
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [10 x i32], [10 x i32]* %164, i64 0, i64 %166
  store i32 %162, i32* %167, align 4
  %168 = load i32, i32* %11, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %143
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %173 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %172, i32 0, i32 10
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [10 x i32], [10 x i32]* %173, i64 0, i64 %175
  store i32 %171, i32* %176, align 4
  br label %183

177:                                              ; preds = %143
  %178 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %179 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %178, i32 0, i32 10
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [10 x i32], [10 x i32]* %179, i64 0, i64 %181
  store i32 0, i32* %182, align 4
  br label %183

183:                                              ; preds = %177, %170
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp eq i32 %186, 10
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load %struct.SGFTree_t*, %struct.SGFTree_t** %16, align 8
  store %struct.SGFTree_t* %189, %struct.SGFTree_t** @sgf_dumptree, align 8
  %190 = load i32, i32* %17, align 4
  store i32 %190, i32* @count_variations, align 4
  %191 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %192 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %191, i32 0, i32 12
  store i32 1, i32* %192, align 4
  br label %437

193:                                              ; preds = %183
  br label %419

194:                                              ; preds = %135
  %195 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %196 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %195, i32 0, i32 11
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [400 x i8], [400 x i8]* %196, i64 0, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = icmp ne i8 %200, 0
  br i1 %201, label %418, label %202

202:                                              ; preds = %194
  store i32 0, i32* %27, align 4
  %203 = load i32, i32* %8, align 4
  %204 = getelementptr inbounds [160 x i32], [160 x i32]* %21, i64 0, i64 0
  %205 = call i32 @chainlinks(i32 %203, i32* %204)
  store i32 %205, i32* %20, align 4
  store i32 0, i32* %26, align 4
  br label %206

206:                                              ; preds = %230, %202
  %207 = load i32, i32* %26, align 4
  %208 = load i32, i32* %20, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %233

210:                                              ; preds = %206
  %211 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %212 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %211, i32 0, i32 0
  %213 = load i32, i32* %26, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [160 x i32], [160 x i32]* %21, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [400 x i8], [400 x i8]* %212, i64 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = icmp ne i8 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %210
  %222 = load i32, i32* %26, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [160 x i32], [160 x i32]* %21, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @attack(i32 %225, i32* null)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %221, %210
  store i32 1, i32* %27, align 4
  br label %233

229:                                              ; preds = %221
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %26, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %26, align 4
  br label %206, !llvm.loop !67

233:                                              ; preds = %228, %206
  %234 = load i32, i32* %27, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %420

237:                                              ; preds = %233
  %238 = load i32, i32* %8, align 4
  %239 = getelementptr inbounds [361 x i32], [361 x i32]* %23, i64 0, i64 0
  %240 = getelementptr inbounds [241 x i32], [241 x i32]* %25, i64 0, i64 0
  call void @find_superstring_stones_and_liberties(i32 %238, i32* %22, i32* %239, i32* %24, i32* %240, i32 0)
  %241 = getelementptr inbounds [400 x i32], [400 x i32]* %28, i64 0, i64 0
  %242 = bitcast i32* %241 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %242, i8 0, i64 1600, i1 false)
  store i32 0, i32* %26, align 4
  br label %243

243:                                              ; preds = %254, %237
  %244 = load i32, i32* %26, align 4
  %245 = load i32, i32* %22, align 4
  %246 = icmp slt i32 %244, %245
  br i1 %246, label %247, label %257

247:                                              ; preds = %243
  %248 = load i32, i32* %26, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [361 x i32], [361 x i32]* %23, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [400 x i32], [400 x i32]* %28, i64 0, i64 %252
  store i32 1, i32* %253, align 4
  br label %254

254:                                              ; preds = %247
  %255 = load i32, i32* %26, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %26, align 4
  br label %243, !llvm.loop !68

257:                                              ; preds = %243
  store i32 0, i32* %26, align 4
  br label %258

258:                                              ; preds = %386, %257
  %259 = load i32, i32* %26, align 4
  %260 = load i32, i32* %24, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %389

262:                                              ; preds = %258
  %263 = load i32, i32* %26, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [241 x i32], [241 x i32]* %25, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  store i32 %266, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  br label %267

267:                                              ; preds = %326, %262
  %268 = load i32, i32* %31, align 4
  %269 = icmp slt i32 %268, 4
  br i1 %269, label %270, label %329

270:                                              ; preds = %267
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %31, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %271, %275
  store i32 %276, i32* %32, align 4
  %277 = load i32, i32* %32, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %278
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = icmp ne i32 %281, 3
  br i1 %282, label %284, label %283

283:                                              ; preds = %270
  br label %326

284:                                              ; preds = %270
  %285 = load i32, i32* %32, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = load i32, i32* %13, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %309

292:                                              ; preds = %284
  %293 = load i32, i32* %32, align 4
  %294 = call i32 @attack(i32 %293, i32* null)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %292
  store i32 1, i32* %27, align 4
  br label %329

297:                                              ; preds = %292
  %298 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %299 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %298, i32 0, i32 0
  %300 = load i32, i32* %32, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [400 x i8], [400 x i8]* %299, i64 0, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = icmp ne i8 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  store i32 1, i32* %30, align 4
  br label %307

306:                                              ; preds = %297
  store i32 1, i32* %27, align 4
  br label %329

307:                                              ; preds = %305
  br label %308

308:                                              ; preds = %307
  br label %325

309:                                              ; preds = %284
  %310 = load i32, i32* %32, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %311
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  %315 = load i32, i32* %14, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %324

317:                                              ; preds = %309
  %318 = load i32, i32* %32, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [400 x i32], [400 x i32]* %28, i64 0, i64 %319
  %321 = load i32, i32* %320, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %324, label %323

323:                                              ; preds = %317
  store i32 1, i32* %27, align 4
  br label %329

324:                                              ; preds = %317, %309
  br label %325

325:                                              ; preds = %324, %308
  br label %326

326:                                              ; preds = %325, %283
  %327 = load i32, i32* %31, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %31, align 4
  br label %267, !llvm.loop !69

329:                                              ; preds = %323, %306, %296, %267
  %330 = load i32, i32* %30, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %381, label %332

332:                                              ; preds = %329
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  store i32 4, i32* %31, align 4
  br label %333

333:                                              ; preds = %369, %332
  %334 = load i32, i32* %31, align 4
  %335 = icmp slt i32 %334, 8
  br i1 %335, label %336, label %372

336:                                              ; preds = %333
  %337 = load i32, i32* %29, align 4
  %338 = load i32, i32* %31, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = add nsw i32 %337, %341
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %343
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = icmp ne i32 %346, 3
  br i1 %347, label %351, label %348

348:                                              ; preds = %336
  %349 = load i32, i32* %33, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %33, align 4
  br label %368

351:                                              ; preds = %336
  %352 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %353 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %352, i32 0, i32 0
  %354 = load i32, i32* %29, align 4
  %355 = load i32, i32* %31, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = add nsw i32 %354, %358
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [400 x i8], [400 x i8]* %353, i64 0, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = icmp ne i8 %362, 0
  br i1 %363, label %364, label %367

364:                                              ; preds = %351
  %365 = load i32, i32* %34, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %34, align 4
  br label %367

367:                                              ; preds = %364, %351
  br label %368

368:                                              ; preds = %367, %348
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %31, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %31, align 4
  br label %333, !llvm.loop !70

372:                                              ; preds = %333
  %373 = load i32, i32* %34, align 4
  %374 = load i32, i32* %33, align 4
  %375 = icmp sge i32 %374, 2
  %376 = zext i1 %375 to i32
  %377 = add nsw i32 %373, %376
  %378 = icmp slt i32 %377, 2
  br i1 %378, label %379, label %380

379:                                              ; preds = %372
  store i32 1, i32* %27, align 4
  br label %380

380:                                              ; preds = %379, %372
  br label %381

381:                                              ; preds = %380, %329
  %382 = load i32, i32* %27, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  br label %389

385:                                              ; preds = %381
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %26, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %26, align 4
  br label %258, !llvm.loop !71

389:                                              ; preds = %384, %258
  %390 = load i32, i32* %27, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %417, label %392

392:                                              ; preds = %389
  %393 = load i32, i32* @verbose, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %396, label %395

395:                                              ; preds = %392
  br label %399

396:                                              ; preds = %392
  %397 = load i32, i32* %8, align 4
  %398 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.64, i64 0, i64 0), i32 %397)
  br label %399

399:                                              ; preds = %396, %395
  store i32 0, i32* %26, align 4
  br label %400

400:                                              ; preds = %413, %399
  %401 = load i32, i32* %26, align 4
  %402 = load i32, i32* %22, align 4
  %403 = icmp slt i32 %401, %402
  br i1 %403, label %404, label %416

404:                                              ; preds = %400
  %405 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %406 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %405, i32 0, i32 11
  %407 = load i32, i32* %26, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [361 x i32], [361 x i32]* %23, i64 0, i64 %408
  %410 = load i32, i32* %409, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [400 x i8], [400 x i8]* %406, i64 0, i64 %411
  store i8 1, i8* %412, align 1
  br label %413

413:                                              ; preds = %404
  %414 = load i32, i32* %26, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %26, align 4
  br label %400, !llvm.loop !72

416:                                              ; preds = %400
  br label %417

417:                                              ; preds = %416, %389
  br label %418

418:                                              ; preds = %417, %194
  br label %419

419:                                              ; preds = %418, %193
  br label %420

420:                                              ; preds = %419, %236, %134, %123
  %421 = load i32, i32* %5, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %5, align 4
  br label %91, !llvm.loop !73

423:                                              ; preds = %91
  br label %424

424:                                              ; preds = %423, %81, %68
  br label %425

425:                                              ; preds = %424
  %426 = load i32, i32* %4, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %4, align 4
  br label %64, !llvm.loop !74

428:                                              ; preds = %64
  br label %429

429:                                              ; preds = %428
  %430 = load i32, i32* %3, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %3, align 4
  br label %59, !llvm.loop !75

432:                                              ; preds = %59
  %433 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %434 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %433, i32 0, i32 12
  store i32 1, i32* %434, align 4
  %435 = load %struct.SGFTree_t*, %struct.SGFTree_t** %16, align 8
  store %struct.SGFTree_t* %435, %struct.SGFTree_t** @sgf_dumptree, align 8
  %436 = load i32, i32* %17, align 4
  store i32 %436, i32* @count_variations, align 4
  br label %437

437:                                              ; preds = %432, %188
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_determine_life(%struct.local_owl_data* %0, %struct.local_owl_data* %1, i32 %2, i32 %3, %struct.owl_move_data* %4, %struct.eyevalue* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.local_owl_data*, align 8
  %10 = alloca %struct.local_owl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.owl_move_data*, align 8
  %14 = alloca %struct.eyevalue*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.eye_data*, align 8
  %19 = alloca [400 x i8], align 16
  %20 = alloca [400 x i8], align 16
  %21 = alloca [400 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.eyevalue, align 1
  %25 = alloca [200 x %struct.eyevalue], align 16
  %26 = alloca [200 x i32], align 16
  %27 = alloca i32, align 4
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
  %42 = alloca i8*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca %struct.eyevalue, align 1
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  store %struct.local_owl_data* %0, %struct.local_owl_data** %9, align 8
  store %struct.local_owl_data* %1, %struct.local_owl_data** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.owl_move_data* %4, %struct.owl_move_data** %13, align 8
  store %struct.eyevalue* %5, %struct.eyevalue** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %52 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %53 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %17, align 4
  %55 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %56 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %55, i32 0, i32 4
  %57 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* %56, i64 0, i64 0
  store %struct.eye_data* %57, %struct.eye_data** %18, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %58 = load i32, i32* @debug, align 4
  store i32 %58, i32* %37, align 4
  %59 = getelementptr inbounds [400 x i8], [400 x i8]* %19, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %59, i8 0, i64 400, i1 false)
  %60 = getelementptr inbounds [400 x i8], [400 x i8]* %20, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 400, i1 false)
  %61 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 0
  %62 = bitcast i32* %61 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %62, i8 0, i64 1600, i1 false)
  %63 = load i32, i32* %11, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %8
  store i32* %22, i32** %15, align 8
  br label %67

67:                                               ; preds = %66, %8
  %68 = load i32*, i32** %16, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  store i32* %23, i32** %16, align 8
  br label %71

71:                                               ; preds = %70, %67
  %72 = load i32*, i32** %15, align 8
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %16, align 8
  store i32 0, i32* %73, align 4
  %74 = load i32, i32* @debug, align 4
  %75 = and i32 %74, 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @debug, align 4
  %79 = and i32 %78, -3
  store i32 %79, i32* @debug, align 4
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  call void @clear_owl_move_data(%struct.owl_move_data* %81)
  %82 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %83 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  call void @owl_find_lunches(%struct.local_owl_data* %87)
  br label %88

88:                                               ; preds = %86, %80
  %89 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %90 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  call void @owl_make_domains(%struct.local_owl_data* %89, %struct.local_owl_data* %90)
  %91 = load i32, i32* %17, align 4
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 4, i32* %34, align 4
  br label %95

94:                                               ; preds = %88
  store i32 5, i32* %34, align 4
  br label %95

95:                                               ; preds = %94, %93
  store i32 0, i32* %30, align 4
  br label %96

96:                                               ; preds = %201, %95
  %97 = load i32, i32* %30, align 4
  %98 = load i32, i32* @board_size, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %204

100:                                              ; preds = %96
  store i32 0, i32* %31, align 4
  br label %101

101:                                              ; preds = %197, %100
  %102 = load i32, i32* %31, align 4
  %103 = load i32, i32* @board_size, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %200

105:                                              ; preds = %101
  %106 = load i32, i32* %30, align 4
  %107 = mul nsw i32 %106, 20
  %108 = add nsw i32 21, %107
  %109 = load i32, i32* %31, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %38, align 4
  %111 = load i32, i32* %38, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = load i32, i32* %17, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %196

118:                                              ; preds = %105
  store i32 0, i32* %32, align 4
  br label %119

119:                                              ; preds = %192, %118
  %120 = load i32, i32* %32, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %122, label %195

122:                                              ; preds = %119
  %123 = load i32, i32* %38, align 4
  %124 = load i32, i32* %32, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %123, %127
  store i32 %128, i32* %39, align 4
  %129 = load i32, i32* %39, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 3
  br i1 %134, label %135, label %191

135:                                              ; preds = %122
  %136 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %137 = load i32, i32* %39, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %136, i64 %138
  %140 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %34, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %191

144:                                              ; preds = %135
  %145 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %146 = load i32, i32* %39, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %145, i64 %147
  %149 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %191

152:                                              ; preds = %144
  %153 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %154 = load i32, i32* %39, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %153, i64 %155
  %157 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %156, i32 0, i32 7
  %158 = load i8, i8* %157, align 4
  %159 = icmp ne i8 %158, 0
  br i1 %159, label %191, label %160

160:                                              ; preds = %152
  %161 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %162 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %161, i32 0, i32 0
  %163 = load i32, i32* %38, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [400 x i8], [400 x i8]* %162, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = icmp ne i8 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %160
  %169 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %170 = load i32, i32* %39, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %169, i64 %171
  %173 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [400 x i8], [400 x i8]* %19, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = add i8 %177, 1
  store i8 %178, i8* %176, align 1
  br label %190

179:                                              ; preds = %160
  %180 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %181 = load i32, i32* %39, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %180, i64 %182
  %184 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [400 x i8], [400 x i8]* %20, i64 0, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = add i8 %188, 1
  store i8 %189, i8* %187, align 1
  br label %190

190:                                              ; preds = %179, %168
  br label %191

191:                                              ; preds = %190, %152, %144, %135, %122
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %32, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %32, align 4
  br label %119, !llvm.loop !76

195:                                              ; preds = %119
  br label %196

196:                                              ; preds = %195, %105
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %31, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %31, align 4
  br label %101, !llvm.loop !77

200:                                              ; preds = %101
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %30, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %30, align 4
  br label %96, !llvm.loop !78

204:                                              ; preds = %96
  store i32 0, i32* %30, align 4
  br label %205

205:                                              ; preds = %239, %204
  %206 = load i32, i32* %30, align 4
  %207 = load i32, i32* @board_size, align 4
  %208 = icmp slt i32 %206, %207
  br i1 %208, label %209, label %242

209:                                              ; preds = %205
  store i32 0, i32* %31, align 4
  br label %210

210:                                              ; preds = %235, %209
  %211 = load i32, i32* %31, align 4
  %212 = load i32, i32* @board_size, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %238

214:                                              ; preds = %210
  %215 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %216 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %215, i32 0, i32 5
  %217 = load i32, i32* %30, align 4
  %218 = mul nsw i32 %217, 20
  %219 = add nsw i32 21, %218
  %220 = load i32, i32* %31, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %216, i64 0, i64 %222
  %224 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %223, i32 0, i32 1
  store i8 0, i8* %224, align 4
  %225 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %226 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %225, i32 0, i32 5
  %227 = load i32, i32* %30, align 4
  %228 = mul nsw i32 %227, 20
  %229 = add nsw i32 21, %228
  %230 = load i32, i32* %31, align 4
  %231 = add nsw i32 %229, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %226, i64 0, i64 %232
  %234 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %233, i32 0, i32 0
  store float 1.000000e+01, float* %234, align 4
  br label %235

235:                                              ; preds = %214
  %236 = load i32, i32* %31, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %31, align 4
  br label %210, !llvm.loop !79

238:                                              ; preds = %210
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %30, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %30, align 4
  br label %205, !llvm.loop !80

242:                                              ; preds = %205
  %243 = load i32, i32* %17, align 4
  %244 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %245 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %246 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %245, i32 0, i32 5
  %247 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %246, i64 0, i64 0
  %248 = getelementptr inbounds [400 x i8], [400 x i8]* %19, i64 0, i64 0
  call void @find_half_and_false_eyes(i32 %243, %struct.eye_data* %244, %struct.half_eye_data* %247, i8* %248)
  %249 = load %struct.eyevalue*, %struct.eyevalue** %14, align 8
  call void @set_eyevalue(%struct.eyevalue* %249, i32 0, i32 0, i32 0, i32 0)
  store i32 0, i32* %30, align 4
  br label %250

250:                                              ; preds = %657, %242
  %251 = load i32, i32* %30, align 4
  %252 = load i32, i32* @board_size, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %660

254:                                              ; preds = %250
  store i32 0, i32* %31, align 4
  br label %255

255:                                              ; preds = %653, %254
  %256 = load i32, i32* %31, align 4
  %257 = load i32, i32* @board_size, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %656

259:                                              ; preds = %255
  %260 = load i32, i32* %30, align 4
  %261 = mul nsw i32 %260, 20
  %262 = add nsw i32 21, %261
  %263 = load i32, i32* %31, align 4
  %264 = add nsw i32 %262, %263
  store i32 %264, i32* %40, align 4
  %265 = load i32, i32* %40, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [400 x i8], [400 x i8]* %19, i64 0, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp sgt i32 %269, 1
  br i1 %270, label %271, label %652

271:                                              ; preds = %259
  %272 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %273 = load i32, i32* %40, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %272, i64 %274
  %276 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %40, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %652

280:                                              ; preds = %271
  store i32 0, i32* %41, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.65, i64 0, i64 0), i8** %42, align 8
  %281 = load i32, i32* %40, align 4
  %282 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %283 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %284 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %283, i32 0, i32 5
  %285 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* %284, i64 0, i64 0
  call void @compute_eyes_pessimistic(i32 %281, %struct.eyevalue* %24, i32* %27, i32* %28, i32* %29, %struct.eye_data* %282, %struct.half_eye_data* %285)
  store i32 0, i32* %43, align 4
  br label %286

286:                                              ; preds = %338, %280
  %287 = load i32, i32* %43, align 4
  %288 = load i32, i32* @board_size, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %341

290:                                              ; preds = %286
  store i32 0, i32* %44, align 4
  br label %291

291:                                              ; preds = %334, %290
  %292 = load i32, i32* %44, align 4
  %293 = load i32, i32* @board_size, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %337

295:                                              ; preds = %291
  %296 = load i32, i32* %43, align 4
  %297 = mul nsw i32 %296, 20
  %298 = add nsw i32 21, %297
  %299 = load i32, i32* %44, align 4
  %300 = add nsw i32 %298, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [400 x i8], [400 x i8]* %19, i64 0, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = sext i8 %303 to i32
  %305 = icmp sgt i32 %304, 1
  br i1 %305, label %306, label %333

306:                                              ; preds = %295
  %307 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %308 = load i32, i32* %43, align 4
  %309 = mul nsw i32 %308, 20
  %310 = add nsw i32 21, %309
  %311 = load i32, i32* %44, align 4
  %312 = add nsw i32 %310, %311
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %307, i64 %313
  %315 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %40, align 4
  %318 = icmp eq i32 %316, %317
  br i1 %318, label %319, label %333

319:                                              ; preds = %306
  %320 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %321 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %320, i32 0, i32 11
  %322 = load i32, i32* %43, align 4
  %323 = mul nsw i32 %322, 20
  %324 = add nsw i32 21, %323
  %325 = load i32, i32* %44, align 4
  %326 = add nsw i32 %324, %325
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [400 x i8], [400 x i8]* %321, i64 0, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %319
  store i32 0, i32* %27, align 4
  br label %333

333:                                              ; preds = %332, %319, %306, %295
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %44, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %44, align 4
  br label %291, !llvm.loop !81

337:                                              ; preds = %291
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %43, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %43, align 4
  br label %286, !llvm.loop !82

341:                                              ; preds = %286
  store i32 0, i32* %43, align 4
  br label %342

342:                                              ; preds = %422, %341
  %343 = load i32, i32* %43, align 4
  %344 = load i32, i32* @board_size, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %425

346:                                              ; preds = %342
  store i32 0, i32* %44, align 4
  br label %347

347:                                              ; preds = %418, %346
  %348 = load i32, i32* %44, align 4
  %349 = load i32, i32* @board_size, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %421

351:                                              ; preds = %347
  %352 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %353 = load i32, i32* %43, align 4
  %354 = mul nsw i32 %353, 20
  %355 = add nsw i32 21, %354
  %356 = load i32, i32* %44, align 4
  %357 = add nsw i32 %355, %356
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %352, i64 %358
  %360 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* %40, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %417

364:                                              ; preds = %351
  %365 = load i32, i32* %43, align 4
  %366 = mul nsw i32 %365, 20
  %367 = add nsw i32 21, %366
  %368 = load i32, i32* %44, align 4
  %369 = add nsw i32 %367, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [400 x i8], [400 x i8]* %19, i64 0, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = sext i8 %372 to i32
  %374 = load i32, i32* %43, align 4
  %375 = mul nsw i32 %374, 20
  %376 = add nsw i32 21, %375
  %377 = load i32, i32* %44, align 4
  %378 = add nsw i32 %376, %377
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds [400 x i8], [400 x i8]* %20, i64 0, i64 %379
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  %383 = icmp slt i32 %373, %382
  br i1 %383, label %416, label %384

384:                                              ; preds = %364
  %385 = load i32, i32* %43, align 4
  %386 = mul nsw i32 %385, 20
  %387 = add nsw i32 21, %386
  %388 = load i32, i32* %44, align 4
  %389 = add nsw i32 %387, %388
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [400 x i8], [400 x i8]* %19, i64 0, i64 %390
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = load i32, i32* %43, align 4
  %395 = mul nsw i32 %394, 20
  %396 = add nsw i32 21, %395
  %397 = load i32, i32* %44, align 4
  %398 = add nsw i32 %396, %397
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [400 x i8], [400 x i8]* %20, i64 0, i64 %399
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  %403 = mul nsw i32 3, %402
  %404 = icmp slt i32 %393, %403
  br i1 %404, label %405, label %417

405:                                              ; preds = %384
  %406 = load i32, i32* %43, align 4
  %407 = mul nsw i32 %406, 20
  %408 = add nsw i32 21, %407
  %409 = load i32, i32* %44, align 4
  %410 = add nsw i32 %408, %409
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [400 x i8], [400 x i8]* %20, i64 0, i64 %411
  %413 = load i8, i8* %412, align 1
  %414 = sext i8 %413 to i32
  %415 = icmp sgt i32 %414, 5
  br i1 %415, label %416, label %417

416:                                              ; preds = %405, %364
  store i32 0, i32* %27, align 4
  br label %417

417:                                              ; preds = %416, %405, %384, %351
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %44, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %44, align 4
  br label %347, !llvm.loop !83

421:                                              ; preds = %347
  br label %422

422:                                              ; preds = %421
  %423 = load i32, i32* %43, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %43, align 4
  br label %342, !llvm.loop !84

425:                                              ; preds = %342
  %426 = load i32, i32* %35, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [200 x i32], [200 x i32]* %26, i64 0, i64 %427
  store i32 0, i32* %428, align 4
  %429 = load i32, i32* %35, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %430
  %432 = bitcast %struct.eyevalue* %431 to i8*
  %433 = bitcast %struct.eyevalue* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %432, i8* align 1 %433, i64 4, i1 false)
  %434 = load i32, i32* %27, align 4
  %435 = load i32*, i32** %15, align 8
  %436 = load i32, i32* %435, align 4
  %437 = add nsw i32 %436, %434
  store i32 %437, i32* %435, align 4
  %438 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %439 = load i32, i32* %40, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %438, i64 %440
  %442 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %441, i32 0, i32 4
  %443 = bitcast %struct.eyevalue* %442 to i8*
  %444 = bitcast %struct.eyevalue* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %443, i8* align 1 %444, i64 4, i1 false)
  %445 = call i32 @eye_move_urgency(%struct.eyevalue* %24)
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %461

447:                                              ; preds = %425
  store i32 50, i32* %41, align 4
  %448 = call i32 @max_eyes(%struct.eyevalue* %24)
  %449 = call i32 @min_eyes(%struct.eyevalue* %24)
  %450 = sub nsw i32 %448, %449
  %451 = icmp eq i32 %450, 2
  br i1 %451, label %452, label %453

452:                                              ; preds = %447
  store i32 70, i32* %41, align 4
  br label %460

453:                                              ; preds = %447
  %454 = call i32 @max_eyes(%struct.eyevalue* %24)
  %455 = load i32, i32* %27, align 4
  %456 = sub nsw i32 %454, %455
  %457 = icmp eq i32 %456, 2
  br i1 %457, label %458, label %459

458:                                              ; preds = %453
  store i32 60, i32* %41, align 4
  br label %459

459:                                              ; preds = %458, %453
  br label %460

460:                                              ; preds = %459, %452
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.66, i64 0, i64 0), i8** %42, align 8
  br label %474

461:                                              ; preds = %425
  %462 = call i32 @max_eyes(%struct.eyevalue* %24)
  %463 = load i32, i32* %27, align 4
  %464 = icmp ne i32 %462, %463
  br i1 %464, label %465, label %473

465:                                              ; preds = %461
  %466 = call i32 @max_eyes(%struct.eyevalue* %24)
  %467 = load i32, i32* %27, align 4
  %468 = sub nsw i32 %466, %467
  %469 = icmp eq i32 %468, 2
  br i1 %469, label %470, label %471

470:                                              ; preds = %465
  store i32 40, i32* %41, align 4
  br label %472

471:                                              ; preds = %465
  store i32 30, i32* %41, align 4
  br label %472

472:                                              ; preds = %471, %470
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.67, i64 0, i64 0), i8** %42, align 8
  br label %473

473:                                              ; preds = %472, %461
  br label %474

474:                                              ; preds = %473, %460
  %475 = load i32, i32* %41, align 4
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %649

477:                                              ; preds = %474
  %478 = load i32, i32* %12, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %546

480:                                              ; preds = %477
  %481 = load i32, i32* %28, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %546

483:                                              ; preds = %480
  %484 = load i32, i32* %28, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = icmp sgt i32 %487, 0
  br i1 %488, label %489, label %500

489:                                              ; preds = %483
  %490 = load i32, i32* %28, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = load i32, i32* %41, align 4
  %495 = add nsw i32 %494, %493
  store i32 %495, i32* %41, align 4
  %496 = load i32, i32* %41, align 4
  %497 = icmp sgt i32 %496, 98
  br i1 %497, label %498, label %499

498:                                              ; preds = %489
  store i32 98, i32* %41, align 4
  br label %499

499:                                              ; preds = %498, %489
  br label %500

500:                                              ; preds = %499, %483
  %501 = load i32, i32* @verbose, align 4
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %504, label %503

503:                                              ; preds = %500
  br label %512

504:                                              ; preds = %500
  %505 = load i8*, i8** %42, align 8
  %506 = load i32, i32* %28, align 4
  %507 = load i32, i32* %41, align 4
  %508 = load i32, i32* %40, align 4
  %509 = call i8* @eyevalue_to_string(%struct.eyevalue* %24)
  %510 = load i32, i32* %27, align 4
  %511 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.68, i64 0, i64 0), i8* %505, i32 %506, i32 %507, i32 %508, i8* %509, i32 %510)
  br label %512

512:                                              ; preds = %504, %503
  %513 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %514 = load i32, i32* %28, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %513, i64 %515
  %517 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %516, i32 0, i32 7
  %518 = load i8, i8* %517, align 4
  %519 = sext i8 %518 to i32
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %533

521:                                              ; preds = %512
  %522 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %523 = call i32 @modify_stupid_eye_vital_point(%struct.local_owl_data* %522, i32* %28, i32 1)
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %533

525:                                              ; preds = %521
  %526 = load i32, i32* @verbose, align 4
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %529, label %528

528:                                              ; preds = %525
  br label %532

529:                                              ; preds = %525
  %530 = load i32, i32* %28, align 4
  %531 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i64 0, i64 0), i32 %530)
  br label %532

532:                                              ; preds = %529, %528
  br label %533

533:                                              ; preds = %532, %521, %512
  %534 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %535 = load i32, i32* %28, align 4
  %536 = load i32, i32* %41, align 4
  %537 = load i8*, i8** %42, align 8
  call void @owl_add_move(%struct.owl_move_data* %534, i32 %535, i32 %536, i8* %537, i32 1, i32 0, i32 0)
  %538 = load i32, i32* %41, align 4
  %539 = load i32, i32* %28, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 %540
  store i32 %538, i32* %541, align 4
  %542 = load i32, i32* %28, align 4
  %543 = load i32, i32* %35, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [200 x i32], [200 x i32]* %26, i64 0, i64 %544
  store i32 %542, i32* %545, align 4
  br label %648

546:                                              ; preds = %480, %477
  %547 = load i32, i32* %12, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %647, label %549

549:                                              ; preds = %546
  %550 = load i32, i32* %29, align 4
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %647

552:                                              ; preds = %549
  %553 = load i32, i32* %29, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %554
  %556 = load i8, i8* %555, align 1
  %557 = zext i8 %556 to i32
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %559, label %647

559:                                              ; preds = %552
  %560 = load i32, i32* %29, align 4
  %561 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %562 = call i32 @liberty_of_goal(i32 %560, %struct.local_owl_data* %561)
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %579

564:                                              ; preds = %559
  %565 = load i32, i32* %29, align 4
  %566 = load i32, i32* %17, align 4
  %567 = call i32 @is_self_atari(i32 %565, i32 %566)
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %579

569:                                              ; preds = %564
  %570 = load i32, i32* %29, align 4
  %571 = load i32, i32* %17, align 4
  %572 = call i32 @is_ko(i32 %570, i32 %571, i32* null)
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %579, label %574

574:                                              ; preds = %569
  %575 = load i32, i32* %29, align 4
  %576 = load i32, i32* %17, align 4
  %577 = call i32 @safe_move(i32 %575, i32 %576)
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %647

579:                                              ; preds = %574, %569, %564, %559
  %580 = load i32, i32* %29, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 %581
  %583 = load i32, i32* %582, align 4
  %584 = icmp sgt i32 %583, 0
  br i1 %584, label %585, label %596

585:                                              ; preds = %579
  %586 = load i32, i32* %29, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = load i32, i32* %41, align 4
  %591 = add nsw i32 %590, %589
  store i32 %591, i32* %41, align 4
  %592 = load i32, i32* %41, align 4
  %593 = icmp sgt i32 %592, 98
  br i1 %593, label %594, label %595

594:                                              ; preds = %585
  store i32 98, i32* %41, align 4
  br label %595

595:                                              ; preds = %594, %585
  br label %596

596:                                              ; preds = %595, %579
  %597 = load i32, i32* @verbose, align 4
  %598 = icmp ne i32 %597, 0
  br i1 %598, label %600, label %599

599:                                              ; preds = %596
  br label %608

600:                                              ; preds = %596
  %601 = load i8*, i8** %42, align 8
  %602 = load i32, i32* %29, align 4
  %603 = load i32, i32* %41, align 4
  %604 = load i32, i32* %40, align 4
  %605 = call i8* @eyevalue_to_string(%struct.eyevalue* %24)
  %606 = load i32, i32* %27, align 4
  %607 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.68, i64 0, i64 0), i8* %601, i32 %602, i32 %603, i32 %604, i8* %605, i32 %606)
  br label %608

608:                                              ; preds = %600, %599
  %609 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %610 = load i32, i32* %29, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %609, i64 %611
  %613 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %612, i32 0, i32 7
  %614 = load i8, i8* %613, align 4
  %615 = sext i8 %614 to i32
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %626, label %617

617:                                              ; preds = %608
  %618 = load %struct.eye_data*, %struct.eye_data** %18, align 8
  %619 = load i32, i32* %29, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %618, i64 %620
  %622 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %621, i32 0, i32 3
  %623 = load i32, i32* %622, align 4
  %624 = load i32, i32* %40, align 4
  %625 = icmp ne i32 %623, %624
  br i1 %625, label %626, label %638

626:                                              ; preds = %617, %608
  %627 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %628 = call i32 @modify_stupid_eye_vital_point(%struct.local_owl_data* %627, i32* %29, i32 0)
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %638

630:                                              ; preds = %626
  %631 = load i32, i32* @verbose, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %634, label %633

633:                                              ; preds = %630
  br label %637

634:                                              ; preds = %630
  %635 = load i32, i32* %29, align 4
  %636 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.69, i64 0, i64 0), i32 %635)
  br label %637

637:                                              ; preds = %634, %633
  br label %638

638:                                              ; preds = %637, %626, %617
  %639 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %640 = load i32, i32* %29, align 4
  %641 = load i32, i32* %41, align 4
  %642 = load i8*, i8** %42, align 8
  call void @owl_add_move(%struct.owl_move_data* %639, i32 %640, i32 %641, i8* %642, i32 1, i32 0, i32 0)
  %643 = load i32, i32* %41, align 4
  %644 = load i32, i32* %29, align 4
  %645 = sext i32 %644 to i64
  %646 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 %645
  store i32 %643, i32* %646, align 4
  br label %647

647:                                              ; preds = %638, %574, %552, %549, %546
  br label %648

648:                                              ; preds = %647, %533
  br label %649

649:                                              ; preds = %648, %474
  %650 = load i32, i32* %35, align 4
  %651 = add nsw i32 %650, 1
  store i32 %651, i32* %35, align 4
  br label %652

652:                                              ; preds = %649, %271, %259
  br label %653

653:                                              ; preds = %652
  %654 = load i32, i32* %31, align 4
  %655 = add nsw i32 %654, 1
  store i32 %655, i32* %31, align 4
  br label %255, !llvm.loop !85

656:                                              ; preds = %255
  br label %657

657:                                              ; preds = %656
  %658 = load i32, i32* %30, align 4
  %659 = add nsw i32 %658, 1
  store i32 %659, i32* %30, align 4
  br label %250, !llvm.loop !86

660:                                              ; preds = %250
  store i32 0, i32* %33, align 4
  br label %661

661:                                              ; preds = %902, %660
  %662 = load i32, i32* %33, align 4
  %663 = icmp slt i32 %662, 10
  br i1 %663, label %664, label %905

664:                                              ; preds = %661
  %665 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %666 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %665, i32 0, i32 6
  %667 = load i32, i32* %33, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [10 x i32], [10 x i32]* %666, i64 0, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %901

672:                                              ; preds = %664
  %673 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %674 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %673, i32 0, i32 10
  %675 = load i32, i32* %33, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [10 x i32], [10 x i32]* %674, i64 0, i64 %676
  %678 = load i32, i32* %677, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %901

680:                                              ; preds = %672
  store i32 0, i32* %45, align 4
  %681 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %682 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %681, i32 0, i32 6
  %683 = load i32, i32* %33, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [10 x i32], [10 x i32]* %682, i64 0, i64 %684
  %686 = load i32, i32* %685, align 4
  %687 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  call void @sniff_lunch(i32 %686, i32* %46, i32* %47, i32* %48, %struct.local_owl_data* %687)
  %688 = load i32, i32* %47, align 4
  %689 = load i32, i32* %47, align 4
  call void @set_eyevalue(%struct.eyevalue* %49, i32 0, i32 0, i32 %688, i32 %689)
  %690 = load i32, i32* %48, align 4
  %691 = load i32*, i32** %16, align 8
  %692 = load i32, i32* %691, align 4
  %693 = add nsw i32 %692, %690
  store i32 %693, i32* %691, align 4
  %694 = load i32, i32* %47, align 4
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %696, label %697

696:                                              ; preds = %680
  store i32 20, i32* %45, align 4
  br label %738

697:                                              ; preds = %680
  %698 = load i32, i32* %47, align 4
  %699 = icmp eq i32 %698, 1
  br i1 %699, label %700, label %712

700:                                              ; preds = %697
  %701 = load i32, i32* %48, align 4
  %702 = icmp eq i32 %701, 1
  br i1 %702, label %703, label %712

703:                                              ; preds = %700
  %704 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %705 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %704, i32 0, i32 6
  %706 = load i32, i32* %33, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds [10 x i32], [10 x i32]* %705, i64 0, i64 %707
  %709 = load i32, i32* %708, align 4
  %710 = call i32 @countstones(i32 %709)
  %711 = add nsw i32 60, %710
  store i32 %711, i32* %45, align 4
  br label %737

712:                                              ; preds = %700, %697
  %713 = load i32, i32* %47, align 4
  %714 = icmp eq i32 %713, 1
  br i1 %714, label %715, label %727

715:                                              ; preds = %712
  %716 = load i32, i32* %48, align 4
  %717 = icmp eq i32 %716, 2
  br i1 %717, label %718, label %727

718:                                              ; preds = %715
  %719 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %720 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %719, i32 0, i32 6
  %721 = load i32, i32* %33, align 4
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [10 x i32], [10 x i32]* %720, i64 0, i64 %722
  %724 = load i32, i32* %723, align 4
  %725 = call i32 @countstones(i32 %724)
  %726 = add nsw i32 70, %725
  store i32 %726, i32* %45, align 4
  br label %736

727:                                              ; preds = %715, %712
  %728 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %729 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %728, i32 0, i32 6
  %730 = load i32, i32* %33, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds [10 x i32], [10 x i32]* %729, i64 0, i64 %731
  %733 = load i32, i32* %732, align 4
  %734 = call i32 @countstones(i32 %733)
  %735 = add nsw i32 75, %734
  store i32 %735, i32* %45, align 4
  br label %736

736:                                              ; preds = %727, %718
  br label %737

737:                                              ; preds = %736, %703
  br label %738

738:                                              ; preds = %737, %696
  %739 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %740 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %739, i32 0, i32 7
  %741 = load i32, i32* %33, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds [10 x i32], [10 x i32]* %740, i64 0, i64 %742
  %744 = load i32, i32* %743, align 4
  %745 = icmp ne i32 %744, 5
  br i1 %745, label %746, label %749

746:                                              ; preds = %738
  %747 = load i32, i32* %45, align 4
  %748 = sub nsw i32 %747, 10
  store i32 %748, i32* %45, align 4
  br label %749

749:                                              ; preds = %746, %738
  %750 = load i32, i32* %45, align 4
  %751 = icmp slt i32 %750, 21
  br i1 %751, label %752, label %770

752:                                              ; preds = %749
  %753 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %754 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %753, i32 0, i32 6
  %755 = load i32, i32* %33, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds [10 x i32], [10 x i32]* %754, i64 0, i64 %756
  %758 = load i32, i32* %757, align 4
  %759 = call i32 @countstones(i32 %758)
  %760 = icmp eq i32 %759, 1
  br i1 %760, label %761, label %770

761:                                              ; preds = %752
  %762 = load i32, i32* %36, align 4
  %763 = add nsw i32 %762, 1
  store i32 %763, i32* %36, align 4
  %764 = load i32, i32* %35, align 4
  %765 = add nsw i32 %764, 1
  store i32 %765, i32* %35, align 4
  %766 = sext i32 %764 to i64
  %767 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %766
  %768 = bitcast %struct.eyevalue* %767 to i8*
  %769 = bitcast %struct.eyevalue* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %768, i8* align 1 %769, i64 4, i1 false)
  br label %902

770:                                              ; preds = %752, %749
  %771 = load i32, i32* %12, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %861

773:                                              ; preds = %770
  %774 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %775 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %774, i32 0, i32 6
  %776 = load i32, i32* %33, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds [10 x i32], [10 x i32]* %775, i64 0, i64 %777
  %779 = load i32, i32* %778, align 4
  %780 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %781 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %780, i32 0, i32 10
  %782 = load i32, i32* %33, align 4
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [10 x i32], [10 x i32]* %781, i64 0, i64 %783
  %785 = load i32, i32* %784, align 4
  %786 = call i32 @improve_lunch_defense(i32 %779, i32 %785)
  store i32 %786, i32* %29, align 4
  %787 = load i32, i32* %29, align 4
  %788 = sext i32 %787 to i64
  %789 = getelementptr inbounds [400 x i32], [400 x i32]* %21, i64 0, i64 %788
  %790 = load i32, i32* %789, align 4
  %791 = icmp ne i32 %790, 0
  br i1 %791, label %792, label %834

792:                                              ; preds = %773
  store i32 0, i32* %50, align 4
  br label %793

793:                                              ; preds = %808, %792
  %794 = load i32, i32* %50, align 4
  %795 = load i32, i32* %35, align 4
  %796 = load i32, i32* %36, align 4
  %797 = sub nsw i32 %795, %796
  %798 = icmp slt i32 %794, %797
  br i1 %798, label %799, label %811

799:                                              ; preds = %793
  %800 = load i32, i32* %50, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds [200 x i32], [200 x i32]* %26, i64 0, i64 %801
  %803 = load i32, i32* %802, align 4
  %804 = load i32, i32* %29, align 4
  %805 = icmp eq i32 %803, %804
  br i1 %805, label %806, label %807

806:                                              ; preds = %799
  br label %811

807:                                              ; preds = %799
  br label %808

808:                                              ; preds = %807
  %809 = load i32, i32* %50, align 4
  %810 = add nsw i32 %809, 1
  store i32 %810, i32* %50, align 4
  br label %793, !llvm.loop !87

811:                                              ; preds = %806, %793
  %812 = load i32, i32* %50, align 4
  %813 = load i32, i32* %35, align 4
  %814 = load i32, i32* %36, align 4
  %815 = sub nsw i32 %813, %814
  %816 = icmp slt i32 %812, %815
  br i1 %816, label %817, label %818

817:                                              ; preds = %811
  br label %819

818:                                              ; preds = %811
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 2659, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i64 0, i64 0), i32 -1, i32 -1)
  br label %819

819:                                              ; preds = %818, %817
  %820 = load i32, i32* %50, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %821
  %823 = load i32, i32* %50, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %824
  call void @add_eyevalues(%struct.eyevalue* %822, %struct.eyevalue* %49, %struct.eyevalue* %825)
  %826 = load i32, i32* %50, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %827
  %829 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %828, i32 0, i32 0
  store i8 0, i8* %829, align 4
  %830 = load i32, i32* %50, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %831
  %833 = getelementptr inbounds %struct.eyevalue, %struct.eyevalue* %832, i32 0, i32 1
  store i8 0, i8* %833, align 1
  br label %843

834:                                              ; preds = %773
  %835 = load i32, i32* %36, align 4
  %836 = add nsw i32 %835, 1
  store i32 %836, i32* %36, align 4
  %837 = load i32, i32* %35, align 4
  %838 = add nsw i32 %837, 1
  store i32 %838, i32* %35, align 4
  %839 = sext i32 %837 to i64
  %840 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %839
  %841 = bitcast %struct.eyevalue* %840 to i8*
  %842 = bitcast %struct.eyevalue* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %841, i8* align 1 %842, i64 4, i1 false)
  br label %843

843:                                              ; preds = %834, %819
  %844 = load i32, i32* @verbose, align 4
  %845 = icmp ne i32 %844, 0
  br i1 %845, label %847, label %846

846:                                              ; preds = %843
  br label %857

847:                                              ; preds = %843
  %848 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %849 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %848, i32 0, i32 6
  %850 = load i32, i32* %33, align 4
  %851 = sext i32 %850 to i64
  %852 = getelementptr inbounds [10 x i32], [10 x i32]* %849, i64 0, i64 %851
  %853 = load i32, i32* %852, align 4
  %854 = load i32, i32* %29, align 4
  %855 = load i32, i32* %45, align 4
  %856 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.71, i64 0, i64 0), i32 %853, i32 %854, i32 %855)
  br label %857

857:                                              ; preds = %847, %846
  %858 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %859 = load i32, i32* %29, align 4
  %860 = load i32, i32* %45, align 4
  call void @owl_add_move(%struct.owl_move_data* %858, i32 %859, i32 %860, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.72, i64 0, i64 0), i32 1, i32 0, i32 0)
  br label %900

861:                                              ; preds = %770
  %862 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %863 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %862, i32 0, i32 6
  %864 = load i32, i32* %33, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [10 x i32], [10 x i32]* %863, i64 0, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %869 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %868, i32 0, i32 8
  %870 = load i32, i32* %33, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds [10 x i32], [10 x i32]* %869, i64 0, i64 %871
  %873 = load i32, i32* %872, align 4
  %874 = call i32 @improve_lunch_attack(i32 %867, i32 %873)
  store i32 %874, i32* %28, align 4
  %875 = load i32, i32* @verbose, align 4
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %878, label %877

877:                                              ; preds = %861
  br label %888

878:                                              ; preds = %861
  %879 = load %struct.local_owl_data*, %struct.local_owl_data** %9, align 8
  %880 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %879, i32 0, i32 6
  %881 = load i32, i32* %33, align 4
  %882 = sext i32 %881 to i64
  %883 = getelementptr inbounds [10 x i32], [10 x i32]* %880, i64 0, i64 %882
  %884 = load i32, i32* %883, align 4
  %885 = load i32, i32* %28, align 4
  %886 = load i32, i32* %45, align 4
  %887 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.73, i64 0, i64 0), i32 %884, i32 %885, i32 %886)
  br label %888

888:                                              ; preds = %878, %877
  %889 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %890 = load i32, i32* %28, align 4
  %891 = load i32, i32* %45, align 4
  call void @owl_add_move(%struct.owl_move_data* %889, i32 %890, i32 %891, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i64 0, i64 0), i32 1, i32 0, i32 0)
  %892 = load i32, i32* %36, align 4
  %893 = add nsw i32 %892, 1
  store i32 %893, i32* %36, align 4
  %894 = load i32, i32* %35, align 4
  %895 = add nsw i32 %894, 1
  store i32 %895, i32* %35, align 4
  %896 = sext i32 %894 to i64
  %897 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %896
  %898 = bitcast %struct.eyevalue* %897 to i8*
  %899 = bitcast %struct.eyevalue* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %898, i8* align 1 %899, i64 4, i1 false)
  br label %900

900:                                              ; preds = %888, %857
  br label %901

901:                                              ; preds = %900, %672, %664
  br label %902

902:                                              ; preds = %901, %761
  %903 = load i32, i32* %33, align 4
  %904 = add nsw i32 %903, 1
  store i32 %904, i32* %33, align 4
  br label %661, !llvm.loop !88

905:                                              ; preds = %661
  store i32 0, i32* %51, align 4
  br label %906

906:                                              ; preds = %918, %905
  %907 = load i32, i32* %51, align 4
  %908 = load i32, i32* %35, align 4
  %909 = load i32, i32* %36, align 4
  %910 = sub nsw i32 %908, %909
  %911 = icmp slt i32 %907, %910
  br i1 %911, label %912, label %921

912:                                              ; preds = %906
  %913 = load %struct.eyevalue*, %struct.eyevalue** %14, align 8
  %914 = load i32, i32* %51, align 4
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %915
  %917 = load %struct.eyevalue*, %struct.eyevalue** %14, align 8
  call void @add_eyevalues(%struct.eyevalue* %913, %struct.eyevalue* %916, %struct.eyevalue* %917)
  br label %918

918:                                              ; preds = %912
  %919 = load i32, i32* %51, align 4
  %920 = add nsw i32 %919, 1
  store i32 %920, i32* %51, align 4
  br label %906, !llvm.loop !89

921:                                              ; preds = %906
  %922 = load %struct.eyevalue*, %struct.eyevalue** %14, align 8
  %923 = call i32 @max_eyes(%struct.eyevalue* %922)
  %924 = load i32*, i32** %16, align 8
  %925 = load i32, i32* %924, align 4
  %926 = add nsw i32 %925, %923
  store i32 %926, i32* %924, align 4
  %927 = load i32, i32* %35, align 4
  %928 = load i32, i32* %36, align 4
  %929 = sub nsw i32 %927, %928
  %930 = icmp sgt i32 %929, 1
  br i1 %930, label %931, label %939

931:                                              ; preds = %921
  %932 = load %struct.eyevalue*, %struct.eyevalue** %14, align 8
  %933 = call i32 @max_eye_threat(%struct.eyevalue* %932)
  %934 = icmp sgt i32 %933, 1
  br i1 %934, label %935, label %939

935:                                              ; preds = %931
  %936 = load i32*, i32** %16, align 8
  %937 = load i32, i32* %936, align 4
  %938 = add nsw i32 %937, 1
  store i32 %938, i32* %936, align 4
  br label %939

939:                                              ; preds = %935, %931, %921
  br label %940

940:                                              ; preds = %950, %939
  %941 = load i32, i32* %51, align 4
  %942 = load i32, i32* %35, align 4
  %943 = icmp slt i32 %941, %942
  br i1 %943, label %944, label %953

944:                                              ; preds = %940
  %945 = load %struct.eyevalue*, %struct.eyevalue** %14, align 8
  %946 = load i32, i32* %51, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [200 x %struct.eyevalue], [200 x %struct.eyevalue]* %25, i64 0, i64 %947
  %949 = load %struct.eyevalue*, %struct.eyevalue** %14, align 8
  call void @add_eyevalues(%struct.eyevalue* %945, %struct.eyevalue* %948, %struct.eyevalue* %949)
  br label %950

950:                                              ; preds = %944
  %951 = load i32, i32* %51, align 4
  %952 = add nsw i32 %951, 1
  store i32 %952, i32* %51, align 4
  br label %940, !llvm.loop !90

953:                                              ; preds = %940
  %954 = load i32, i32* %37, align 4
  store i32 %954, i32* @debug, align 4
  ret void
}

declare dso_local void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_shapes_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.owl_move_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %struct.owl_move_data*
  store %struct.owl_move_data* %20, %struct.owl_move_data** %13, align 8
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
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
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @allpats, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %89, label %34

34:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %71, %34
  %36 = load i32, i32* %17, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %74

38:                                               ; preds = %35
  %39 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %40 = load i32, i32* %17, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %39, i64 %41
  %43 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %74

47:                                               ; preds = %38
  %48 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %48, i64 %50
  %52 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %47
  %57 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %58 = load i32, i32* %17, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %57, i64 %59
  %61 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sitofp i32 %62 to float
  %64 = load %struct.pattern*, %struct.pattern** %8, align 8
  %65 = getelementptr inbounds %struct.pattern, %struct.pattern* %64, i32 0, i32 13
  %66 = load float, float* %65, align 4
  %67 = fcmp oge float %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %56
  br label %240

69:                                               ; preds = %56
  br label %74

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  br label %35, !llvm.loop !91

74:                                               ; preds = %69, %46, %35
  %75 = load i32, i32* %17, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %88

77:                                               ; preds = %74
  %78 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %79 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %78, i64 2
  %80 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to float
  %83 = load %struct.pattern*, %struct.pattern** %8, align 8
  %84 = getelementptr inbounds %struct.pattern, %struct.pattern* %83, i32 0, i32 13
  %85 = load float, float* %84, align 4
  %86 = fcmp oge float %82, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %240

88:                                               ; preds = %77, %74
  br label %89

89:                                               ; preds = %88, %5
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.pattern*, %struct.pattern** %8, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @check_pattern_hard(i32 %90, i32 %91, %struct.pattern* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %89
  br label %240

97:                                               ; preds = %89
  %98 = load %struct.pattern*, %struct.pattern** %8, align 8
  %99 = getelementptr inbounds %struct.pattern, %struct.pattern* %98, i32 0, i32 21
  %100 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %99, align 8
  %101 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %100, null
  br i1 %101, label %102, label %151

102:                                              ; preds = %97
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 3200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i64 0, i64 0), i32 -1, i32 -1)
  %103 = load i32, i32* @debug, align 4
  %104 = and i32 %103, 256
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %114

107:                                              ; preds = %102
  %108 = load %struct.pattern*, %struct.pattern** %8, align 8
  %109 = getelementptr inbounds %struct.pattern, %struct.pattern* %108, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.78, i64 0, i64 0), i8* %110, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %107, %106
  %115 = load %struct.pattern*, %struct.pattern** %8, align 8
  %116 = getelementptr inbounds %struct.pattern, %struct.pattern* %115, i32 0, i32 21
  %117 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %116, align 8
  %118 = load %struct.pattern*, %struct.pattern** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %7, align 4
  %122 = call i32 %117(%struct.pattern* %118, i32 %119, i32 %120, i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %114
  %126 = load i32, i32* @debug, align 4
  %127 = and i32 %126, 256
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  br label %137

130:                                              ; preds = %125
  %131 = load %struct.pattern*, %struct.pattern** %8, align 8
  %132 = getelementptr inbounds %struct.pattern, %struct.pattern* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.79, i64 0, i64 0), i8* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %130, %129
  br label %150

138:                                              ; preds = %114
  %139 = load i32, i32* @debug, align 4
  %140 = and i32 %139, 256
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %138
  br label %149

143:                                              ; preds = %138
  %144 = load %struct.pattern*, %struct.pattern** %8, align 8
  %145 = getelementptr inbounds %struct.pattern, %struct.pattern* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.80, i64 0, i64 0), i8* %146, i32 %147)
  br label %149

149:                                              ; preds = %143, %142
  br label %240

150:                                              ; preds = %137
  br label %156

151:                                              ; preds = %97
  %152 = load %struct.pattern*, %struct.pattern** %8, align 8
  %153 = getelementptr inbounds %struct.pattern, %struct.pattern* %152, i32 0, i32 13
  %154 = load float, float* %153, align 4
  %155 = fptosi float %154 to i32
  store i32 %155, i32* %11, align 4
  br label %156

156:                                              ; preds = %151, %150
  %157 = load i32, i32* @verbose, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %156
  br label %167

160:                                              ; preds = %156
  %161 = load %struct.pattern*, %struct.pattern** %8, align 8
  %162 = getelementptr inbounds %struct.pattern, %struct.pattern* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %11, align 4
  %166 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.81, i64 0, i64 0), i8* %163, i32 %164, i32 %165)
  br label %167

167:                                              ; preds = %160, %159
  %168 = load %struct.pattern*, %struct.pattern** %8, align 8
  %169 = getelementptr inbounds %struct.pattern, %struct.pattern* %168, i32 0, i32 12
  %170 = load i32, i32* %169, align 8
  %171 = and i32 %170, 512
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 0, i32* %14, align 4
  br label %183

174:                                              ; preds = %167
  %175 = load %struct.pattern*, %struct.pattern** %8, align 8
  %176 = getelementptr inbounds %struct.pattern, %struct.pattern* %175, i32 0, i32 12
  %177 = load i32, i32* %176, align 8
  %178 = and i32 %177, 2048
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store i32 1, i32* %14, align 4
  br label %182

181:                                              ; preds = %174
  store i32 2, i32* %14, align 4
  br label %182

182:                                              ; preds = %181, %180
  br label %183

183:                                              ; preds = %182, %173
  %184 = load %struct.pattern*, %struct.pattern** %8, align 8
  %185 = getelementptr inbounds %struct.pattern, %struct.pattern* %184, i32 0, i32 12
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, 8192
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %183
  store i32 1, i32* %15, align 4
  br label %191

190:                                              ; preds = %183
  store i32 0, i32* %15, align 4
  br label %191

191:                                              ; preds = %190, %189
  %192 = load i32, i32* %12, align 4
  store i32 %192, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %193

193:                                              ; preds = %227, %191
  %194 = load i32, i32* %18, align 4
  %195 = load %struct.pattern*, %struct.pattern** %8, align 8
  %196 = getelementptr inbounds %struct.pattern, %struct.pattern* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = icmp slt i32 %194, %197
  br i1 %198, label %199, label %230

199:                                              ; preds = %193
  %200 = load %struct.pattern*, %struct.pattern** %8, align 8
  %201 = getelementptr inbounds %struct.pattern, %struct.pattern* %200, i32 0, i32 0
  %202 = load %struct.patval*, %struct.patval** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.patval, %struct.patval* %202, i64 %204
  %206 = getelementptr inbounds %struct.patval, %struct.patval* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp eq i32 %207, 7
  br i1 %208, label %209, label %226

209:                                              ; preds = %199
  %210 = load %struct.pattern*, %struct.pattern** %8, align 8
  %211 = getelementptr inbounds %struct.pattern, %struct.pattern* %210, i32 0, i32 0
  %212 = load %struct.patval*, %struct.patval** %211, align 8
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.patval, %struct.patval* %212, i64 %214
  %216 = getelementptr inbounds %struct.patval, %struct.patval* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %218
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [8 x i32], [8 x i32]* %219, i64 0, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* %6, align 4
  %225 = add nsw i32 %223, %224
  store i32 %225, i32* %16, align 4
  br label %226

226:                                              ; preds = %209, %199
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %18, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %18, align 4
  br label %193, !llvm.loop !92

230:                                              ; preds = %193
  %231 = load %struct.owl_move_data*, %struct.owl_move_data** %13, align 8
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.pattern*, %struct.pattern** %8, align 8
  %235 = getelementptr inbounds %struct.pattern, %struct.pattern* %234, i32 0, i32 3
  %236 = load i8*, i8** %235, align 8
  %237 = load i32, i32* %14, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %16, align 4
  call void @owl_add_move(%struct.owl_move_data* %231, i32 %232, i32 %233, i8* %236, i32 %237, i32 %238, i32 %239)
  br label %240

240:                                              ; preds = %230, %149, %96, %87, %68
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_escape_route(%struct.local_owl_data* %0) #0 {
  %2 = alloca %struct.local_owl_data*, align 8
  store %struct.local_owl_data* %0, %struct.local_owl_data** %2, align 8
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %4 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i32 0, i32 0
  %5 = getelementptr inbounds [400 x i8], [400 x i8]* %4, i64 0, i64 0
  %6 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %7 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.local_owl_data*, %struct.local_owl_data** %2, align 8
  %10 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %9, i32 0, i32 2
  %11 = getelementptr inbounds [400 x i8], [400 x i8]* %10, i64 0, i64 0
  %12 = call i32 @dragon_escape(i8* %5, i32 %8, i8* %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liberty_of_goal(i32 %0, %struct.local_owl_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.local_owl_data*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.local_owl_data* %1, %struct.local_owl_data** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = add nsw i32 %6, 20
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.local_owl_data*, %struct.local_owl_data** %5, align 8
  %15 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 20
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x i8], [400 x i8]* %15, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %77, label %23

23:                                               ; preds = %13, %2
  %24 = load i32, i32* %4, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.local_owl_data*, %struct.local_owl_data** %5, align 8
  %33 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %32, i32 0, i32 0
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x i8], [400 x i8]* %33, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %77, label %41

41:                                               ; preds = %31, %23
  %42 = load i32, i32* %4, align 4
  %43 = sub nsw i32 %42, 20
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp ne i32 %47, 3
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = load %struct.local_owl_data*, %struct.local_owl_data** %5, align 8
  %51 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = sub nsw i32 %52, 20
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [400 x i8], [400 x i8]* %51, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %77, label %59

59:                                               ; preds = %49, %41
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 3
  br i1 %66, label %67, label %78

67:                                               ; preds = %59
  %68 = load %struct.local_owl_data*, %struct.local_owl_data** %5, align 8
  %69 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %68, i32 0, i32 0
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x i8], [400 x i8]* %69, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67, %49, %31, %13
  store i32 1, i32* %3, align 4
  br label %79

78:                                               ; preds = %67, %59
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @safe_move(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @semeai_move_value(i32 %0, %struct.local_owl_data* %1, %struct.local_owl_data* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_owl_data*, align 8
  %8 = alloca %struct.local_owl_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.local_owl_data* %1, %struct.local_owl_data** %7, align 8
  store %struct.local_owl_data* %2, %struct.local_owl_data** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.local_owl_data*, %struct.local_owl_data** %7, align 8
  %17 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @verbose, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %28

27:                                               ; preds = %4
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 929, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.83, i64 0, i64 0), i32 -1, i32 -1)
  br label %28

28:                                               ; preds = %27, %26
  store i32 0, i32* @verbose, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @safe_move(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %168

33:                                               ; preds = %28
  store i32 21, i32* %10, align 4
  br label %34

34:                                               ; preds = %88, %33
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 400
  br i1 %36, label %37, label %91

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %87

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %87

51:                                               ; preds = %44
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @find_origin(i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %88

58:                                               ; preds = %51
  %59 = load %struct.local_owl_data*, %struct.local_owl_data** %7, align 8
  %60 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %59, i32 0, i32 0
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x i8], [400 x i8]* %60, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %58
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @countlib(i32 %67)
  %69 = mul nsw i32 75, %68
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %66, %58
  %73 = load %struct.local_owl_data*, %struct.local_owl_data** %8, align 8
  %74 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %73, i32 0, i32 0
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [400 x i8], [400 x i8]* %74, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @countlib(i32 %81)
  %83 = mul nsw i32 100, %82
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %86

86:                                               ; preds = %80, %72
  br label %87

87:                                               ; preds = %86, %44, %37
  br label %88

88:                                               ; preds = %87, %57
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %34, !llvm.loop !93

91:                                               ; preds = %34
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @trymove(i32 %92, i32 %93, i8* null, i32 0, i32 0, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* @verbose, align 4
  store i32 0, i32* %5, align 4
  br label %176

98:                                               ; preds = %91
  store i32 21, i32* %10, align 4
  br label %99

99:                                               ; preds = %163, %98
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 400
  br i1 %101, label %102, label %166

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %107, 3
  br i1 %108, label %109, label %162

109:                                              ; preds = %102
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %162

116:                                              ; preds = %109
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @find_origin(i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  br label %163

123:                                              ; preds = %116
  %124 = load %struct.local_owl_data*, %struct.local_owl_data** %7, align 8
  %125 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %124, i32 0, i32 0
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [400 x i8], [400 x i8]* %125, i64 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.local_owl_data*, %struct.local_owl_data** %7, align 8
  %139 = call i32 @liberty_of_goal(i32 %137, %struct.local_owl_data* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136, %123
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @countlib(i32 %142)
  %144 = mul nsw i32 75, %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, %144
  store i32 %146, i32* %11, align 4
  br label %147

147:                                              ; preds = %141, %136, %132
  %148 = load %struct.local_owl_data*, %struct.local_owl_data** %8, align 8
  %149 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %148, i32 0, i32 0
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x i8], [400 x i8]* %149, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = icmp ne i8 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @countlib(i32 %156)
  %158 = mul nsw i32 100, %157
  %159 = load i32, i32* %11, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %155, %147
  br label %162

162:                                              ; preds = %161, %109, %102
  br label %163

163:                                              ; preds = %162, %122
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %99, !llvm.loop !94

166:                                              ; preds = %99
  call void @popgo()
  %167 = load i32, i32* %13, align 4
  store i32 %167, i32* @verbose, align 4
  br label %168

168:                                              ; preds = %166, %28
  %169 = load i32, i32* %11, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 0, i32* %11, align 4
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %173, %174
  store i32 %175, i32* %5, align 4
  br label %176

176:                                              ; preds = %172, %96
  %177 = load i32, i32* %5, align 4
  ret i32 %177
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_add_move(%struct.owl_move_data* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.owl_move_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.owl_move_data* %0, %struct.owl_move_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [400 x i8], [400 x i8]* @found_matches, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x i8], [400 x i8]* @found_matches, i64 0, i64 %23
  store i8 1, i8* %24, align 1
  %25 = load i32, i32* @matches_found, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @matches_found, align 4
  br label %27

27:                                               ; preds = %21, %7
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %76, %27
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 3
  br i1 %30, label %31, label %79

31:                                               ; preds = %28
  %32 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %32, i64 %34
  %36 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %79

40:                                               ; preds = %31
  %41 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %42 = load i32, i32* %15, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %41, i64 %43
  %45 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %40
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %51, i64 %53
  %55 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %50, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %60, i64 %62
  %64 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %63, i32 0, i32 3
  store i32 %59, i32* %64, align 8
  br label %65

65:                                               ; preds = %58, %49
  %66 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %66, i64 %68
  %70 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %65
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %73, %65
  br label %79

75:                                               ; preds = %40
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %28, !llvm.loop !95

79:                                               ; preds = %74, %39, %28
  %80 = load i32, i32* %15, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %83, i64 %85
  %87 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %169

92:                                               ; preds = %82, %79
  br label %93

93:                                               ; preds = %166, %92
  %94 = load i32, i32* %15, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %169

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %101, i64 %104
  %106 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp sle i32 %100, %107
  br i1 %108, label %109, label %150

109:                                              ; preds = %99, %96
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %110, 3
  br i1 %111, label %112, label %149

112:                                              ; preds = %109
  %113 = load i32, i32* %9, align 4
  %114 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %114, i64 %116
  %118 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %117, i32 0, i32 0
  store i32 %113, i32* %118, align 8
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %121 = load i32, i32* %15, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %120, i64 %122
  %124 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %123, i32 0, i32 1
  store i32 %119, i32* %124, align 4
  %125 = load i8*, i8** %11, align 8
  %126 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %126, i64 %128
  %130 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %129, i32 0, i32 2
  store i8* %125, i8** %130, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %132, i64 %134
  %136 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %135, i32 0, i32 3
  store i32 %131, i32* %136, align 8
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %138, i64 %140
  %142 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %141, i32 0, i32 4
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %144, i64 %146
  %148 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %147, i32 0, i32 5
  store i32 %143, i32* %148, align 8
  br label %149

149:                                              ; preds = %112, %109
  br label %169

150:                                              ; preds = %99
  %151 = load i32, i32* %15, align 4
  %152 = icmp slt i32 %151, 3
  br i1 %152, label %153, label %165

153:                                              ; preds = %150
  %154 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %155 = load i32, i32* %15, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %154, i64 %156
  %158 = load %struct.owl_move_data*, %struct.owl_move_data** %8, align 8
  %159 = load i32, i32* %15, align 4
  %160 = sub nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %158, i64 %161
  %163 = bitcast %struct.owl_move_data* %157 to i8*
  %164 = bitcast %struct.owl_move_data* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 32, i1 false)
  br label %165

165:                                              ; preds = %153, %150
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, -1
  store i32 %168, i32* %15, align 4
  br label %93, !llvm.loop !96

169:                                              ; preds = %91, %149, %93
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_semeai_backfilling_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sub nsw i32 3, %15
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load i32, i32* @stackp, align 4
  %18 = load i32, i32* @backfill_depth, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @safe_move(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %3, align 4
  br label %72

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @is_self_atari(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @approxlib(i32 %34, i32 %35, i32 1, i32* %9)
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @trymove(i32 %39, i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.84, i64 0, i64 0), i32 %41, i32 0, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @safe_move(i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %8, align 4
  br label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @find_semeai_backfilling_move(i32 %52, i32 %53)
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %51, %49
  call void @popgo()
  br label %56

56:                                               ; preds = %55, %38, %33
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 3
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @safe_move(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %64, %57
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %71, %69, %26, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @semeai_trymove(i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local void @dump_stack() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @push_owl(%struct.local_owl_data** %0, %struct.local_owl_data** %1) #0 {
  %3 = alloca %struct.local_owl_data**, align 8
  %4 = alloca %struct.local_owl_data**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_owl_data*, align 8
  store %struct.local_owl_data** %0, %struct.local_owl_data*** %3, align 8
  store %struct.local_owl_data** %1, %struct.local_owl_data*** %4, align 8
  %8 = load i32, i32* @owl_stack_pointer, align 4
  %9 = load i32, i32* @owl_stack_size, align 4
  %10 = sub nsw i32 %9, 1
  %11 = icmp eq i32 %8, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @owl_stack_pointer, align 4
  %14 = load i32, i32* @owl_stack_size, align 4
  %15 = sub nsw i32 %14, 2
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %82

17:                                               ; preds = %12
  %18 = load %struct.local_owl_data**, %struct.local_owl_data*** %4, align 8
  %19 = icmp ne %struct.local_owl_data** %18, null
  br i1 %19, label %20, label %82

20:                                               ; preds = %17, %2
  %21 = load %struct.local_owl_data**, %struct.local_owl_data*** %3, align 8
  %22 = load %struct.local_owl_data*, %struct.local_owl_data** %21, align 8
  %23 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %25 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  store %struct.local_owl_data* %25, %struct.local_owl_data** %7, align 8
  %26 = load %struct.local_owl_data**, %struct.local_owl_data*** %3, align 8
  %27 = load %struct.local_owl_data*, %struct.local_owl_data** %26, align 8
  %28 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %28, i64 %30
  %32 = icmp eq %struct.local_owl_data* %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %20
  br label %35

34:                                               ; preds = %20
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5075, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i64 0, i64 0), i32 -1, i32 -1)
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.local_owl_data**, %struct.local_owl_data*** %4, align 8
  %37 = icmp ne %struct.local_owl_data** %36, null
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.local_owl_data**, %struct.local_owl_data*** %4, align 8
  %40 = load %struct.local_owl_data*, %struct.local_owl_data** %39, align 8
  %41 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %40, i32 0, i32 15
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.local_owl_data**, %struct.local_owl_data*** %4, align 8
  %44 = load %struct.local_owl_data*, %struct.local_owl_data** %43, align 8
  %45 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %45, i64 %47
  %49 = icmp eq %struct.local_owl_data* %44, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %52

51:                                               ; preds = %38
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5078, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.86, i64 0, i64 0), i32 -1, i32 -1)
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* @owl_stack_size, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* @owl_stack_size, align 4
  %56 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %57 = bitcast %struct.local_owl_data* %56 to i8*
  %58 = load i32, i32* @owl_stack_size, align 4
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 35816
  %61 = call align 16 i8* @realloc(i8* %57, i64 %60) #5
  %62 = bitcast i8* %61 to %struct.local_owl_data*
  store %struct.local_owl_data* %62, %struct.local_owl_data** @owl_stack, align 8
  %63 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %64 = icmp ne %struct.local_owl_data* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %67

66:                                               ; preds = %53
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5088, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.87, i64 0, i64 0), i32 -1, i32 -1)
  br label %67

67:                                               ; preds = %66, %65
  %68 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %68, i64 %70
  %72 = load %struct.local_owl_data**, %struct.local_owl_data*** %3, align 8
  store %struct.local_owl_data* %71, %struct.local_owl_data** %72, align 8
  %73 = load %struct.local_owl_data**, %struct.local_owl_data*** %4, align 8
  %74 = icmp ne %struct.local_owl_data** %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %67
  %76 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %76, i64 %78
  %80 = load %struct.local_owl_data**, %struct.local_owl_data*** %4, align 8
  store %struct.local_owl_data* %79, %struct.local_owl_data** %80, align 8
  br label %81

81:                                               ; preds = %75, %67
  br label %82

82:                                               ; preds = %81, %17, %12
  %83 = load %struct.local_owl_data**, %struct.local_owl_data*** %3, align 8
  call void @do_push_owl(%struct.local_owl_data** %83)
  %84 = load %struct.local_owl_data**, %struct.local_owl_data*** %4, align 8
  %85 = icmp ne %struct.local_owl_data** %84, null
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load %struct.local_owl_data**, %struct.local_owl_data*** %4, align 8
  call void @do_push_owl(%struct.local_owl_data** %87)
  br label %88

88:                                               ; preds = %86, %82
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pop_owl(%struct.local_owl_data** %0) #0 {
  %2 = alloca %struct.local_owl_data**, align 8
  store %struct.local_owl_data** %0, %struct.local_owl_data*** %2, align 8
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %4 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %5 = load i32, i32* @owl_stack_pointer, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %4, i64 %6
  %8 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i64 %10
  %12 = load %struct.local_owl_data**, %struct.local_owl_data*** %2, align 8
  store %struct.local_owl_data* %11, %struct.local_owl_data** %12, align 8
  %13 = load i32, i32* @owl_stack_pointer, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @owl_stack_pointer, align 4
  ret void
}

declare dso_local i32 @attack_and_defend(i32, i32*, i32*, i32*, i32*) #1

declare dso_local void @find_superstring_stones_and_liberties(i32, i32*, i32*, i32*, i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_owl_move_data(%struct.owl_move_data* %0) #0 {
  %2 = alloca %struct.owl_move_data*, align 8
  %3 = alloca i32, align 4
  store %struct.owl_move_data* %0, %struct.owl_move_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 3
  br i1 %6, label %7, label %36

7:                                                ; preds = %4
  %8 = load %struct.owl_move_data*, %struct.owl_move_data** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %8, i64 %10
  %12 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.owl_move_data*, %struct.owl_move_data** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %13, i64 %15
  %17 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = load %struct.owl_move_data*, %struct.owl_move_data** %2, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %18, i64 %20
  %22 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %21, i32 0, i32 2
  store i8* null, i8** %22, align 8
  %23 = load %struct.owl_move_data*, %struct.owl_move_data** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %23, i64 %25
  %27 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %26, i32 0, i32 3
  store i32 2, i32* %27, align 8
  %28 = load %struct.owl_move_data*, %struct.owl_move_data** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %28, i64 %30
  %32 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %31, i32 0, i32 4
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %7
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4, !llvm.loop !97

36:                                               ; preds = %4
  ret void
}

declare dso_local void @find_half_and_false_eyes(i32, %struct.eye_data*, %struct.half_eye_data*, i8*) #1

declare dso_local void @set_eyevalue(%struct.eyevalue*, i32, i32, i32, i32) #1

declare dso_local void @compute_eyes_pessimistic(i32, %struct.eyevalue*, i32*, i32*, i32*, %struct.eye_data*, %struct.half_eye_data*) #1

declare dso_local i32 @eye_move_urgency(%struct.eyevalue*) #1

declare dso_local i8* @eyevalue_to_string(%struct.eyevalue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modify_stupid_eye_vital_point(%struct.local_owl_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.local_owl_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.local_owl_data* %0, %struct.local_owl_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %109, %3
  %13 = load i32, i32* %10, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %112

15:                                               ; preds = %12
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %109

30:                                               ; preds = %15
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %109

41:                                               ; preds = %30
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  %44 = srem i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %41
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57, %41
  br label %109

68:                                               ; preds = %57
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %8, align 4
  %72 = mul nsw i32 2, %71
  %73 = add nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %103, label %79

79:                                               ; preds = %68
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %79
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %9, align 4
  %97 = sub nsw i32 %95, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %91, %79, %68
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, %104
  store i32 %107, i32* %105, align 4
  store i32 1, i32* %4, align 4
  br label %161

108:                                              ; preds = %91
  br label %109

109:                                              ; preds = %108, %67, %40, %29
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %12, !llvm.loop !98

112:                                              ; preds = %12
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %160, label %115

115:                                              ; preds = %112
  %116 = load i32*, i32** %6, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.local_owl_data*, %struct.local_owl_data** %5, align 8
  %119 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = sub nsw i32 3, %120
  %122 = call i32 @approxlib(i32 %117, i32 %121, i32 1, i32* null)
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %159

124:                                              ; preds = %115
  store i32 4, i32* %10, align 4
  br label %125

125:                                              ; preds = %155, %124
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 8
  br i1 %127, label %128, label %158

128:                                              ; preds = %125
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %130, %134
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load %struct.local_owl_data*, %struct.local_owl_data** %5, align 8
  %142 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 3, %143
  %145 = icmp eq i32 %140, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %128
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @countlib(i32 %147)
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, i32* %11, align 4
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @findlib(i32 %151, i32 1, i32* %152)
  store i32 1, i32* %4, align 4
  br label %161

154:                                              ; preds = %146, %128
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %10, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %10, align 4
  br label %125, !llvm.loop !99

158:                                              ; preds = %125
  br label %159

159:                                              ; preds = %158, %115
  br label %160

160:                                              ; preds = %159, %112
  store i32 0, i32* %4, align 4
  br label %161

161:                                              ; preds = %160, %150, %103
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @is_self_atari(i32, i32) #1

declare dso_local i32 @is_ko(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @improve_lunch_defense(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %78, %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %81

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 3, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %77

34:                                               ; preds = %19
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @countlib(i32 %35)
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %77

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %41 = call i32 @findlib(i32 %39, i32 2, i32* %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  br label %52

49:                                               ; preds = %38
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @accuratelib(i32 %53, i32 %54, i32 241, i32* null)
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @accuratelib(i32 %56, i32 %57, i32 241, i32* null)
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @does_defend(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32, i32* @verbose, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.75, i64 0, i64 0), i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %68
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %3, align 4
  br label %83

76:                                               ; preds = %60, %52
  br label %77

77:                                               ; preds = %76, %34, %19
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %16, !llvm.loop !100

81:                                               ; preds = %16
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %74
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local void @add_eyevalues(%struct.eyevalue*, %struct.eyevalue*, %struct.eyevalue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @improve_lunch_attack(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = sub nsw i32 3, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @safe_move(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %73

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %68, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %71

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %27, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %26
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @attack(i32 %41, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @find_defense(i32 %45, i32* %7)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @does_attack(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load i32, i32* @verbose, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %65

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.76, i64 0, i64 0), i32 %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %51, %48, %44, %40, %26
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %23, !llvm.loop !101

71:                                               ; preds = %23
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %65, %20
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @max_eye_threat(%struct.eyevalue*) #1

declare dso_local i32 @approxlib(i32, i32, i32, i32*) #1

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

declare dso_local i32 @does_defend(i32, i32) #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local i32 @does_attack(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pattern_hard(i32 %0, i32 %1, %struct.pattern* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.pattern*, %struct.pattern** %8, align 8
  %13 = getelementptr inbounds %struct.pattern, %struct.pattern* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 16
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %4
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %19 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %18, i32 0, i32 13
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x i8], [400 x i8]* %19, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %27 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %26, i32 0, i32 13
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x i8], [400 x i8]* %27, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %118

35:                                               ; preds = %25
  store i32 1, i32* %11, align 4
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %17
  br label %38

38:                                               ; preds = %37, %4
  %39 = load %struct.pattern*, %struct.pattern** %8, align 8
  %40 = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 20
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.pattern*, %struct.pattern** %8, align 8
  %46 = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 24
  %47 = load float, float* %46, align 4
  %48 = fpext float %47 to double
  %49 = fcmp olt double %48, 4.500000e-01
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.pattern*, %struct.pattern** %8, align 8
  %52 = getelementptr inbounds %struct.pattern, %struct.pattern* %51, i32 0, i32 22
  %53 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 %53(i32 %54, i32 %55, i32 %56, i32 0)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %118

60:                                               ; preds = %50
  store i32 1, i32* %10, align 4
  br label %61

61:                                               ; preds = %60, %44, %38
  %62 = load %struct.pattern*, %struct.pattern** %8, align 8
  %63 = getelementptr inbounds %struct.pattern, %struct.pattern* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 16
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @owl_safe_move(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %118

76:                                               ; preds = %70
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @is_legal(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %118

82:                                               ; preds = %76
  br label %83

83:                                               ; preds = %82, %67, %61
  %84 = load %struct.pattern*, %struct.pattern** %8, align 8
  %85 = getelementptr inbounds %struct.pattern, %struct.pattern* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = sub nsw i32 3, %91
  %93 = call i32 @safe_move(i32 %90, i32 %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  store i32 0, i32* %5, align 4
  br label %118

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %83
  %98 = load %struct.pattern*, %struct.pattern** %8, align 8
  %99 = getelementptr inbounds %struct.pattern, %struct.pattern* %98, i32 0, i32 20
  %100 = load i32, i32* %99, align 8
  %101 = and i32 %100, 1
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %97
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %103
  %107 = load %struct.pattern*, %struct.pattern** %8, align 8
  %108 = getelementptr inbounds %struct.pattern, %struct.pattern* %107, i32 0, i32 22
  %109 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 %109(i32 %110, i32 %111, i32 %112, i32 0)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %106
  store i32 0, i32* %5, align 4
  br label %118

116:                                              ; preds = %106
  br label %117

117:                                              ; preds = %116, %103, %97
  store i32 1, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %115, %95, %81, %75, %59, %34
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_safe_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @trymove(i32 %7, i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i64 0, i64 0), i32 0, i32 0, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @attack(i32 %12, i32* null)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 5
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %6, align 4
  br label %18

17:                                               ; preds = %11
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %20 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %19, i32 0, i32 12
  store i32 0, i32* %20, align 4
  call void @popgo()
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  %24 = trunc i32 %23 to i8
  %25 = load %struct.local_owl_data*, %struct.local_owl_data** @current_owl_data, align 8
  %26 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %25, i32 0, i32 13
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [400 x i8], [400 x i8]* %26, i64 0, i64 %28
  store i8 %24, i8* %29, align 1
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @dragon_escape(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_push_owl(%struct.local_owl_data** %0) #0 {
  %2 = alloca %struct.local_owl_data**, align 8
  store %struct.local_owl_data** %0, %struct.local_owl_data*** %2, align 8
  %3 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %4 = load %struct.local_owl_data**, %struct.local_owl_data*** %2, align 8
  %5 = load %struct.local_owl_data*, %struct.local_owl_data** %4, align 8
  %6 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %5, i32 0, i32 15
  %7 = load i32, i32* %6, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %3, i64 %8
  %10 = load %struct.local_owl_data**, %struct.local_owl_data*** %2, align 8
  %11 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %12 = icmp eq %struct.local_owl_data* %9, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5039, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.88, i64 0, i64 0), i32 -1, i32 -1)
  br label %15

15:                                               ; preds = %14, %13
  %16 = load i32, i32* @owl_stack_pointer, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* @owl_stack_pointer, align 4
  %18 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %19 = load i32, i32* @owl_stack_pointer, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %18, i64 %20
  %22 = load %struct.local_owl_data**, %struct.local_owl_data*** %2, align 8
  %23 = load %struct.local_owl_data*, %struct.local_owl_data** %22, align 8
  %24 = bitcast %struct.local_owl_data* %21 to i8*
  %25 = bitcast %struct.local_owl_data* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 35816, i1 false)
  %26 = load i32, i32* @owl_stack_pointer, align 4
  %27 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %28 = load i32, i32* @owl_stack_pointer, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %27, i64 %29
  %31 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %30, i32 0, i32 15
  store i32 %26, i32* %31, align 4
  %32 = load %struct.local_owl_data**, %struct.local_owl_data*** %2, align 8
  %33 = load %struct.local_owl_data*, %struct.local_owl_data** %32, align 8
  %34 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %33, i32 0, i32 15
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %37 = load i32, i32* @owl_stack_pointer, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %36, i64 %38
  %40 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %39, i32 0, i32 14
  store i32 %35, i32* %40, align 4
  %41 = load %struct.local_owl_data*, %struct.local_owl_data** @owl_stack, align 8
  %42 = load i32, i32* @owl_stack_pointer, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %41, i64 %43
  %45 = load %struct.local_owl_data**, %struct.local_owl_data*** %2, align 8
  store %struct.local_owl_data* %44, %struct.local_owl_data** %45, align 8
  ret void
}

declare dso_local i32 @get_read_result(i32, i32, i32, i32*, %struct.read_result_t**) #1

declare dso_local void @sgf_trace(i8*, i32, i32, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reading_limit_reached(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @stackp, align 4
  %7 = load i32, i32* @owl_reading_depth, align 4
  %8 = icmp sgt i32 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* @verbose, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.113, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %12
  %17 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.114, i64 0, i64 0), i8** %17, align 8
  store i32 1, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load i32, i32* @local_owl_node_counter, align 4
  %20 = load i32, i32* @owl_node_limit, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  store i32 0, i32* @result_certain, align 4
  %23 = load i32, i32* @verbose, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.115, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %26, %25
  %30 = load i8**, i8*** %4, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.116, i64 0, i64 0), i8** %30, align 8
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %29, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_estimate_life(%struct.local_owl_data* %0, %struct.owl_move_data* %1, i8** %2, i32 %3, i32 %4, %struct.eyevalue* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.local_owl_data*, align 8
  %11 = alloca %struct.owl_move_data*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.eyevalue*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.SGFTree_t*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [3 x %struct.owl_move_data], align 16
  %21 = alloca i32, align 4
  store %struct.local_owl_data* %0, %struct.local_owl_data** %10, align 8
  store %struct.owl_move_data* %1, %struct.owl_move_data** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store %struct.eyevalue* %5, %struct.eyevalue** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %22, %struct.SGFTree_t** %18, align 8
  %23 = load i32, i32* @count_variations, align 4
  store i32 %23, i32* %19, align 4
  %24 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %25 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 3, %26
  store i32 %27, i32* %21, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %28 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load %struct.owl_move_data*, %struct.owl_move_data** %11, align 8
  %32 = load %struct.eyevalue*, %struct.eyevalue** %15, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = load i32*, i32** %17, align 8
  call void @owl_determine_life(%struct.local_owl_data* %28, %struct.local_owl_data* null, i32 %29, i32 %30, %struct.owl_move_data* %31, %struct.eyevalue* %32, i32* %33, i32* %34)
  store i32 0, i32* @matches_found, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([400 x i8], [400 x i8]* @found_matches, i64 0, i64 0), i8 0, i64 400, i1 false)
  %35 = load i32, i32* @level, align 4
  %36 = icmp sge i32 %35, 9
  br i1 %36, label %37, label %61

37:                                               ; preds = %8
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %20, i64 0, i64 0
  call void @clear_owl_move_data(%struct.owl_move_data* %41)
  %42 = load i32, i32* %21, align 4
  %43 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %20, i64 0, i64 0
  %44 = bitcast %struct.owl_move_data* %43 to i8*
  %45 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %46 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds [400 x i8], [400 x i8]* %46, i64 0, i64 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @owl_shapes_callback, i32 %42, %struct.pattern_db* @owl_vital_apat_db, i8* %44, i8* %47)
  br label %60

48:                                               ; preds = %37
  %49 = load %struct.eyevalue*, %struct.eyevalue** %15, align 8
  %50 = call i32 @max_eyes(%struct.eyevalue* %49)
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i32, i32* %21, align 4
  %54 = load %struct.owl_move_data*, %struct.owl_move_data** %11, align 8
  %55 = bitcast %struct.owl_move_data* %54 to i8*
  %56 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %57 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %56, i32 0, i32 0
  %58 = getelementptr inbounds [400 x i8], [400 x i8]* %57, i64 0, i64 0
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @owl_shapes_callback, i32 %53, %struct.pattern_db* @owl_vital_apat_db, i8* %55, i8* %58)
  br label %59

59:                                               ; preds = %52, %48
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60, %8
  %62 = load i32, i32* @debug, align 4
  %63 = and i32 %62, 2
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %61
  %66 = load i32, i32* @debug, align 4
  %67 = and i32 %66, 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32*, i32** %16, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @matches_found, align 4
  %73 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.117, i64 0, i64 0), i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %65, %61
  %75 = load i32*, i32** %16, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @matches_found, align 4
  %78 = icmp sge i32 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* @matches_found, align 4
  %81 = load i32*, i32** %16, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, %80
  store i32 %83, i32* %81, align 4
  br label %86

84:                                               ; preds = %74
  %85 = load i32*, i32** %16, align 8
  store i32 0, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %79
  %87 = load %struct.SGFTree_t*, %struct.SGFTree_t** %18, align 8
  store %struct.SGFTree_t* %87, %struct.SGFTree_t** @sgf_dumptree, align 8
  %88 = load i32, i32* %19, align 4
  store i32 %88, i32* @count_variations, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 2
  br i1 %91, label %111, label %92

92:                                               ; preds = %86
  %93 = load i32*, i32** %16, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.eyevalue*, %struct.eyevalue** %15, align 8
  %98 = call i32 @min_eyes(%struct.eyevalue* %97)
  %99 = icmp sge i32 %98, 4
  br i1 %99, label %111, label %100

100:                                              ; preds = %96, %92
  %101 = load i32, i32* @stackp, align 4
  %102 = load i32, i32* @owl_distrust_depth, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %144

104:                                              ; preds = %100
  %105 = load %struct.eyevalue*, %struct.eyevalue** %15, align 8
  %106 = call i32 @min_eyes(%struct.eyevalue* %105)
  %107 = icmp sge i32 %106, 2
  br i1 %107, label %108, label %144

108:                                              ; preds = %104
  %109 = load i32, i32* @matches_found, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %144, label %111

111:                                              ; preds = %108, %96, %86
  %112 = load i32*, i32** %16, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp sge i32 %113, 2
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.118, i64 0, i64 0), i8** %116, align 8
  br label %143

117:                                              ; preds = %111
  %118 = load i32*, i32** %16, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %127

121:                                              ; preds = %117
  %122 = load %struct.eyevalue*, %struct.eyevalue** %15, align 8
  %123 = call i32 @min_eyes(%struct.eyevalue* %122)
  %124 = icmp sge i32 %123, 4
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.119, i64 0, i64 0), i8** %126, align 8
  br label %142

127:                                              ; preds = %121, %117
  %128 = load i32, i32* @stackp, align 4
  %129 = load i32, i32* @owl_distrust_depth, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.eyevalue*, %struct.eyevalue** %15, align 8
  %133 = call i32 @min_eyes(%struct.eyevalue* %132)
  %134 = icmp sge i32 %133, 2
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i32, i32* @matches_found, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %135
  %139 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.120, i64 0, i64 0), i8** %139, align 8
  br label %141

140:                                              ; preds = %135, %131, %127
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 2289, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.77, i64 0, i64 0), i32 -1, i32 -1)
  br label %141

141:                                              ; preds = %140, %138
  br label %142

142:                                              ; preds = %141, %125
  br label %143

143:                                              ; preds = %142, %115
  store i32 1, i32* %9, align 4
  br label %183

144:                                              ; preds = %108, %104, %100
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %182, label %147

147:                                              ; preds = %144
  %148 = load i32*, i32** %16, align 8
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @matches_found, align 4
  %151 = add nsw i32 %149, %150
  %152 = icmp sge i32 %151, 2
  br i1 %152, label %171, label %153

153:                                              ; preds = %147
  %154 = load i32*, i32** %16, align 8
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @matches_found, align 4
  %157 = add nsw i32 %155, %156
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = load %struct.eyevalue*, %struct.eyevalue** %15, align 8
  %161 = call i32 @min_eyes(%struct.eyevalue* %160)
  %162 = icmp sge i32 %161, 4
  br i1 %162, label %171, label %163

163:                                              ; preds = %159, %153
  %164 = load i32, i32* @stackp, align 4
  %165 = load i32, i32* @owl_distrust_depth, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load %struct.eyevalue*, %struct.eyevalue** %15, align 8
  %169 = call i32 @min_eyes(%struct.eyevalue* %168)
  %170 = icmp sge i32 %169, 2
  br i1 %170, label %171, label %182

171:                                              ; preds = %167, %159, %147
  %172 = load %struct.owl_move_data*, %struct.owl_move_data** %11, align 8
  %173 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %20, i64 0, i64 0
  %174 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %20, i64 0, i64 0
  %177 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [3 x %struct.owl_move_data], [3 x %struct.owl_move_data]* %20, i64 0, i64 0
  %180 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  call void @owl_add_move(%struct.owl_move_data* %172, i32 %175, i32 %178, i8* %181, i32 2, i32 0, i32 0)
  br label %182

182:                                              ; preds = %171, %167, %163, %144
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %182, %143
  %184 = load i32, i32* %9, align 4
  ret i32 %184
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_single_owl_move(%struct.owl_move_data* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.owl_move_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.owl_move_data* %0, %struct.owl_move_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.owl_move_data*, %struct.owl_move_data** %4, align 8
  %9 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %8, i64 0
  %10 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.owl_move_data*, %struct.owl_move_data** %4, align 8
  %12 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %11, i64 0
  %13 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %12, i32 0, i32 1
  store i32 25, i32* %13, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.owl_move_data*, %struct.owl_move_data** %4, align 8
  %16 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %15, i64 0
  %17 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %16, i32 0, i32 2
  store i8* %14, i8** %17, align 8
  %18 = load %struct.owl_move_data*, %struct.owl_move_data** %4, align 8
  %19 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %18, i64 0
  %20 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %19, i32 0, i32 3
  store i32 1, i32* %20, align 8
  %21 = load %struct.owl_move_data*, %struct.owl_move_data** %4, align 8
  %22 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %21, i64 0
  %23 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %22, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = load %struct.owl_move_data*, %struct.owl_move_data** %4, align 8
  %25 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %24, i64 1
  %26 = getelementptr inbounds %struct.owl_move_data, %struct.owl_move_data* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  ret void
}

declare dso_local i32 @is_suicide(i32, i32) #1

declare dso_local i32 @komaster_trymove(i32, i32, i8*, i32, i32, i32, i32*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

declare dso_local i32 @does_capture_something(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pattern_list(%struct.matched_patterns_list_data* %0) #0 {
  %2 = alloca %struct.matched_patterns_list_data*, align 8
  store %struct.matched_patterns_list_data* %0, %struct.matched_patterns_list_data** %2, align 8
  %3 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %4 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %3, i32 0, i32 1
  store i32 0, i32* %4, align 4
  %5 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %6 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %5, i32 0, i32 2
  store i32 0, i32* %6, align 8
  %7 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %8 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %7, i32 0, i32 3
  store i32 0, i32* %8, align 4
  %9 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %10 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %15

14:                                               ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 2910, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.133, i64 0, i64 0), i32 -1, i32 -1)
  br label %15

15:                                               ; preds = %14, %13
  %16 = call noalias align 16 i8* @malloc(i64 3200) #5
  %17 = bitcast i8* %16 to %struct.matched_pattern_data*
  %18 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %19 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %18, i32 0, i32 5
  store %struct.matched_pattern_data* %17, %struct.matched_pattern_data** %19, align 8
  %20 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %21 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %20, i32 0, i32 5
  %22 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %21, align 8
  %23 = icmp ne %struct.matched_pattern_data* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %26

25:                                               ; preds = %15
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 2914, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.134, i64 0, i64 0), i32 -1, i32 -1)
  br label %26

26:                                               ; preds = %25, %24
  %27 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %28 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %27, i32 0, i32 4
  store i32 200, i32* %28, align 8
  %29 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %2, align 8
  %30 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @collect_owl_shapes_callbacks(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.matched_patterns_list_data*, align 8
  %12 = alloca %struct.matched_pattern_data*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = bitcast i8* %13 to %struct.matched_patterns_list_data*
  store %struct.matched_patterns_list_data* %14, %struct.matched_patterns_list_data** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %17 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %20 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %5
  %24 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %25 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 100
  store i32 %27, i32* %25, align 8
  %28 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %29 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %28, i32 0, i32 5
  %30 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %29, align 8
  %31 = bitcast %struct.matched_pattern_data* %30 to i8*
  %32 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %33 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 16
  %37 = call align 16 i8* @realloc(i8* %31, i64 %36) #5
  %38 = bitcast i8* %37 to %struct.matched_pattern_data*
  %39 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %40 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %39, i32 0, i32 5
  store %struct.matched_pattern_data* %38, %struct.matched_pattern_data** %40, align 8
  br label %41

41:                                               ; preds = %23, %5
  %42 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %43 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %42, i32 0, i32 5
  %44 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %43, align 8
  %45 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %46 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %44, i64 %48
  store %struct.matched_pattern_data* %49, %struct.matched_pattern_data** %12, align 8
  %50 = load %struct.pattern*, %struct.pattern** %8, align 8
  %51 = getelementptr inbounds %struct.pattern, %struct.pattern* %50, i32 0, i32 11
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %53
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* %54, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %58, %59
  %61 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %12, align 8
  %62 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pattern*, %struct.pattern** %8, align 8
  %64 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %12, align 8
  %65 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %64, i32 0, i32 2
  store %struct.pattern* %63, %struct.pattern** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.matched_pattern_data*, %struct.matched_pattern_data** %12, align 8
  %68 = getelementptr inbounds %struct.matched_pattern_data, %struct.matched_pattern_data* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.matched_patterns_list_data*, %struct.matched_patterns_list_data** %11, align 8
  %70 = getelementptr inbounds %struct.matched_patterns_list_data, %struct.matched_patterns_list_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

declare dso_local i32 @is_same_worm(i32, i32) #1

declare dso_local void @find_superstring_conservative(i32, i32*, i32*) #1

declare dso_local void @find_superstring(i32, i32*, i32*) #1

declare dso_local void @mark_string(i32, i8*, i8 signext) #1

declare dso_local void @make_domains(%struct.eye_data*, %struct.eye_data*, i32) #1

declare dso_local i32 @findstones(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @one_two_point(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sdiv i32 %6, 20
  %8 = sub nsw i32 %7, 1
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = srem i32 %9, 20
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @board_size, align 4
  %17 = sub nsw i32 %16, 1
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @board_size, align 4
  %25 = sub nsw i32 %24, 1
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22, %19, %14, %1
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %43, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @board_size, align 4
  %33 = sub nsw i32 %32, 2
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @board_size, align 4
  %41 = sub nsw i32 %40, 2
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38, %35, %30, %27
  store i32 1, i32* %2, align 4
  br label %45

44:                                               ; preds = %38, %22
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %43
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eat_lunch_escape_bonus(i32 %0, i32* %1, i32* %2, i32* %3, %struct.local_owl_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.local_owl_data*, align 8
  %11 = alloca [160 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [400 x i8], align 16
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.local_owl_data* %4, %struct.local_owl_data** %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @is_ko_point(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %132

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 0
  %26 = call i32 @chainlinks(i32 %24, i32* %25)
  store i32 %26, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %46, %23
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %27
  %32 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %33 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %32, i32 0, i32 0
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x i8], [400 x i8]* %33, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* %13, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %27, !llvm.loop !102

49:                                               ; preds = %27
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %132

52:                                               ; preds = %49
  %53 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %54 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds [400 x i8], [400 x i8]* %54, i64 0, i64 0
  %56 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %57 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %60 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %59, i32 0, i32 2
  %61 = getelementptr inbounds [400 x i8], [400 x i8]* %60, i64 0, i64 0
  %62 = call i32 @dragon_escape(i8* %55, i32 %58, i8* %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 5
  br i1 %64, label %65, label %131

65:                                               ; preds = %52
  %66 = getelementptr inbounds [400 x i8], [400 x i8]* %17, i64 0, i64 0
  %67 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %68 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds [400 x i8], [400 x i8]* %68, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %66, i8* align 4 %69, i64 400, i1 false)
  store i32 0, i32* %14, align 4
  br label %70

70:                                               ; preds = %92, %65
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %76 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %75, i32 0, i32 0
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [400 x i8], [400 x i8]* %76, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = icmp ne i8 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %74
  %86 = load i32, i32* %14, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [400 x i8], [400 x i8]* %17, i64 0, i64 0
  call void @mark_string(i32 %89, i8* %90, i8 signext 2)
  br label %91

91:                                               ; preds = %85, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %14, align 4
  br label %70, !llvm.loop !103

95:                                               ; preds = %70
  %96 = getelementptr inbounds [400 x i8], [400 x i8]* %17, i64 0, i64 0
  %97 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %98 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.local_owl_data*, %struct.local_owl_data** %10, align 8
  %101 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %100, i32 0, i32 2
  %102 = getelementptr inbounds [400 x i8], [400 x i8]* %101, i64 0, i64 0
  %103 = call i32 @dragon_escape(i8* %96, i32 %99, i8* %102)
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %104, %105
  %107 = icmp sge i32 %106, 3
  br i1 %107, label %108, label %130

108:                                              ; preds = %95
  %109 = load i32, i32* %16, align 4
  %110 = icmp sge i32 %109, 8
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %15, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = load i32, i32* %16, align 4
  %116 = icmp sge i32 %115, 5
  br i1 %116, label %117, label %120

117:                                              ; preds = %114, %108
  %118 = load i32*, i32** %8, align 8
  store i32 2, i32* %118, align 4
  %119 = load i32*, i32** %9, align 8
  store i32 2, i32* %119, align 4
  br label %129

120:                                              ; preds = %114, %111
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 2
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %117
  br label %130

130:                                              ; preds = %129, %95
  br label %131

131:                                              ; preds = %130, %52
  br label %132

132:                                              ; preds = %22, %131, %49
  ret void
}

declare dso_local i32 @is_ko_point(i32) #1

declare dso_local void @get_lively_stones(i32, i8*) #1

declare dso_local void @compute_escape_influence(i32, i8*, float*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @owl_mark_dragon(i32 %0, i32 %1, %struct.local_owl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.local_owl_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.local_owl_data* %2, %struct.local_owl_data** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16, %3
  br label %32

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, 20
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %5, align 4
  %30 = srem i32 %29, 20
  %31 = sub nsw i32 %30, 1
  call void @abortgo(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 3330, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.139, i64 0, i64 0), i32 %28, i32 %31)
  br label %32

32:                                               ; preds = %25, %24
  store i32 21, i32* %7, align 4
  br label %33

33:                                               ; preds = %67, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 400
  br i1 %35, label %36, label %70

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @is_same_dragon(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @is_same_dragon(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48, %43
  %54 = load %struct.local_owl_data*, %struct.local_owl_data** %6, align 8
  %55 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %54, i32 0, i32 0
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [400 x i8], [400 x i8]* %55, i64 0, i64 %57
  store i8 1, i8* %58, align 1
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.local_owl_data*, %struct.local_owl_data** %6, align 8
  %61 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [400 x i8], [400 x i8]* %61, i64 0, i64 %63
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %36
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %33, !llvm.loop !104

70:                                               ; preds = %33
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.local_owl_data*, %struct.local_owl_data** %6, align 8
  %73 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.local_owl_data*, %struct.local_owl_data** %6, align 8
  call void @owl_mark_boundary(%struct.local_owl_data* %74)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_goal_worms(%struct.local_owl_data* %0, i32* %1) #0 {
  %3 = alloca %struct.local_owl_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.local_owl_data* %0, %struct.local_owl_data** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %19, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 15
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  br label %11, !llvm.loop !105

22:                                               ; preds = %11
  store i32 21, i32* %5, align 4
  br label %23

23:                                               ; preds = %87, %22
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 400
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 15
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i1 [ false, %23 ], [ %28, %26 ]
  br i1 %30, label %31, label %90

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp ne i32 %36, 3
  br i1 %37, label %38, label %86

38:                                               ; preds = %31
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %38
  %46 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  %47 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %46, i32 0, i32 0
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [400 x i8], [400 x i8]* %47, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %86

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @find_origin(i32 %55)
  store i32 %56, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %71, %54
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %74

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %57, !llvm.loop !106

74:                                               ; preds = %69, %57
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  store i32 %79, i32* %84, align 4
  br label %85

85:                                               ; preds = %78, %74
  br label %86

86:                                               ; preds = %85, %45, %38, %31
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %23, !llvm.loop !107

90:                                               ; preds = %29
  %91 = load i32, i32* %7, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %209

93:                                               ; preds = %90
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %94, 15
  br i1 %95, label %96, label %209

96:                                               ; preds = %93
  %97 = load i32*, i32** %4, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %205, %96
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %102, i64 %108
  %110 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %101, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %100
  %114 = load i32, i32* %7, align 4
  %115 = icmp slt i32 %114, 15
  br label %116

116:                                              ; preds = %113, %100
  %117 = phi i1 [ false, %100 ], [ %115, %113 ]
  br i1 %117, label %118, label %208

118:                                              ; preds = %116
  %119 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %119, i64 %125
  %127 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %126, i32 0, i32 1
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [10 x i32], [10 x i32]* %127, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %10, align 4
  %132 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %132, i64 %134
  %136 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.local_owl_data*, %struct.local_owl_data** %3, align 8
  %143 = getelementptr inbounds %struct.local_owl_data, %struct.local_owl_data* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %118
  br label %205

147:                                              ; preds = %118
  store i32 21, i32* %9, align 4
  br label %148

148:                                              ; preds = %201, %147
  %149 = load i32, i32* %9, align 4
  %150 = icmp slt i32 %149, 400
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %7, align 4
  %153 = icmp slt i32 %152, 15
  br label %154

154:                                              ; preds = %151, %148
  %155 = phi i1 [ false, %148 ], [ %153, %151 ]
  br i1 %155, label %156, label %204

156:                                              ; preds = %154
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp ne i32 %161, 3
  br i1 %162, label %163, label %200

163:                                              ; preds = %156
  %164 = load i32, i32* %9, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %200

170:                                              ; preds = %163
  %171 = load i32, i32* %9, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %9, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %200

178:                                              ; preds = %170
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp sge i32 %183, 3
  br i1 %184, label %185, label %200

185:                                              ; preds = %178
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %200

193:                                              ; preds = %185
  %194 = load i32, i32* %9, align 4
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* %7, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %7, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  store i32 %194, i32* %199, align 4
  br label %200

200:                                              ; preds = %193, %185, %178, %170, %163, %156
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %9, align 4
  br label %148, !llvm.loop !108

204:                                              ; preds = %154
  br label %205

205:                                              ; preds = %204, %146
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %6, align 4
  br label %100, !llvm.loop !109

208:                                              ; preds = %116
  br label %209

209:                                              ; preds = %208, %93, %90
  %210 = load i32, i32* %7, align 4
  ret i32 %210
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
