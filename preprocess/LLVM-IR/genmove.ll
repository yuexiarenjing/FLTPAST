; ModuleID = 'genmove.c'
source_filename = "genmove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hash_data = type { [1 x i64] }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.influence_data = type opaque

@random_seed = external dso_local global i32, align 4
@hashdata = external dso_local global %struct.Hash_data, align 8
@board = external dso_local global [421 x i8], align 16
@board_ko_pos = external dso_local global i32, align 4
@worms_examined = internal global i32 -1, align 4
@initial_influence_examined = internal global i32 -1, align 4
@dragons_examined_without_owl = internal global i32 -1, align 4
@dragons_examined = internal global i32 -1, align 4
@initial_influence2_examined = internal global i32 -1, align 4
@dragons_refinedly_examined = internal global i32 -1, align 4
@level = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@position_number = external dso_local global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"  make worms\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"genmove.c\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"test_gray_border() < 0\00", align 1
@printworms = external dso_local global i32, align 4
@sgf_dumptree = external dso_local global %struct.SGFTree_t*, align 8
@count_variations = external dso_local global i32, align 4
@debug = external dso_local global i32, align 4
@printmoyo = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"retval < 0 || (((unsigned) (move) < ((19 + 2) * (19 + 1) + 1)) && board[move] != 3)\00", align 1
@potential_moves = external dso_local global [19 x [19 x float]], align 16
@stats = external dso_local global %struct.stats_data, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"level = %d\0A\00", align 1
@depth = external dso_local global i32, align 4
@play_mirror_go = external dso_local global i32, align 4
@mirror_stones_limit = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"genmove() recommends mirror move at %1m\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"examine position\00", align 1
@lower_bound = external dso_local global float, align 4
@upper_bound = external dso_local global float, align 4
@showscore = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"\0AScore estimate: %s %f\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"W \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"\0AScore estimate: %s %f to %s %f\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"estimate score\00", align 1
@score = external dso_local global float, align 4
@printboard = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [36 x i8] c"\0A          dragon_status display:\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\0A          eye display:\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"\0A           owl_status display:\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"\0A           matcher_status display:\0A\0A\00", align 1
@stackp = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"shapes\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"combinations\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"Move generation likes %1m with value %f\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"review move reasons\00", align 1
@doing_scoring = external dso_local global i32, align 4
@disable_endgame_patterns = external dso_local global i32, align 4
@.str.21 = private unnamed_addr constant [62 x i8] c"Upon reconsideration move generation likes %1m with value %f\0A\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"move reasons with revised semeai status\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"endgame\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Filling a liberty at %1m\0A\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"fill liberty\00", align 1
@play_out_aftermath = external dso_local global i32, align 4
@capture_all_dead = external dso_local global i32, align 4
@thrashing_dragon = external dso_local global i32, align 4
@.str.26 = private unnamed_addr constant [23 x i8] c"is_legal(*move, color)\00", align 1
@.str.27 = private unnamed_addr constant [23 x i8] c"Aftermath move at %1m\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"aftermath_genmove\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"I pass.\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"genmove() recommends %1m with value %f\0A\00", align 1
@showstatistics = external dso_local global i32, align 4
@.str.31 = private unnamed_addr constant [26 x i8] c"Nodes:                %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Positions entered:    %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Position hits:        %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"Read results entered: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Read result hits:     %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"Hash collisions:      %d\0A\00", align 1
@showtime = external dso_local global i32, align 4
@.str.37 = private unnamed_addr constant [26 x i8] c"TIME to generate move at \00", align 1
@total_time = internal global double 0.000000e+00, align 8
@slowest_time = internal global double 0.000000e+00, align 8
@slowest_move = internal global i32 0, align 4
@movenum = external dso_local global i32, align 4
@slowest_movenum = internal global i32 0, align 4
@.str.38 = private unnamed_addr constant [26 x i8] c"\0ASLOWEST MOVE: %d at %1m \00", align 1
@.str.39 = private unnamed_addr constant [16 x i8] c"(%.2f seconds)\0A\00", align 1
@.str.40 = private unnamed_addr constant [38 x i8] c"\0AAVERAGE TIME: %.2f seconds per move\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"\0ATOTAL TIME: %.2f seconds\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"depth == save_depth\00", align 1
@__const.get_level.filename = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.43 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@board_size = external dso_local global i32, align 4
@.str.45 = private unnamed_addr constant [17 x i8] c"find_mirror_move\00", align 1
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@disable_threat_computation = external dso_local global i32, align 4
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@initial_white_influence = external dso_local global %struct.influence_data, align 1
@initial_black_influence = external dso_local global %struct.influence_data, align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"revised thrashing dragon\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"dragon2 != ((void*)0)\00", align 1
@.str.48 = private unnamed_addr constant [66 x i8] c"revise_semeai: changed status of dragon %1m from DEAD to UNKNOWN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_engine() #0 {
  %1 = load i32, i32* @random_seed, align 4
  call void @gg_srand(i32 %1)
  call void @reading_cache_clear()
  %2 = load i32, i32* @board_ko_pos, align 4
  call void @hashdata_recalc(%struct.Hash_data* @hashdata, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @board, i64 0, i64 0), i32 %2)
  store i32 -1, i32* @worms_examined, align 4
  store i32 -1, i32* @initial_influence_examined, align 4
  store i32 -1, i32* @dragons_examined_without_owl, align 4
  store i32 -1, i32* @dragons_examined, align 4
  store i32 -1, i32* @initial_influence2_examined, align 4
  store i32 -1, i32* @dragons_refinedly_examined, align 4
  call void @clear_move_reasons()
  %3 = load i32, i32* @level, align 4
  call void @set_depth_values(i32 %3)
  ret void
}

declare dso_local void @gg_srand(i32) #1

declare dso_local void @reading_cache_clear() #1

declare dso_local void @hashdata_recalc(%struct.Hash_data*, i8*, i32) #1

declare dso_local void @clear_move_reasons() #1

declare dso_local void @set_depth_values(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @examine_position(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @verbose, align 4
  store i32 %6, i32* %5, align 4
  call void @purge_persistent_reading_cache()
  %7 = load i32, i32* @verbose, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @verbose, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @verbose, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* @verbose, align 4
  br label %15

15:                                               ; preds = %12, %9
  %16 = load i32, i32* @worms_examined, align 4
  %17 = load i32, i32* @position_number, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* @position_number, align 4
  store i32 %20, i32* @worms_examined, align 4
  br i1 true, label %22, label %24

21:                                               ; preds = %15
  br i1 false, label %22, label %24

22:                                               ; preds = %21, %19
  call void @start_timer(i32 0)
  call void @make_worms()
  %23 = call double @time_report(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %24

24:                                               ; preds = %22, %21, %19
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* @verbose, align 4
  %29 = call i32 @test_gray_border()
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %33

32:                                               ; preds = %27
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %33

33:                                               ; preds = %32, %31
  br label %153

34:                                               ; preds = %24
  %35 = call i32 @stones_on_board(i32 3)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %34
  %38 = load i32, i32* @initial_influence_examined, align 4
  %39 = load i32, i32* @position_number, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @position_number, align 4
  store i32 %42, i32* @initial_influence_examined, align 4
  br i1 true, label %44, label %45

43:                                               ; preds = %37
  br i1 false, label %44, label %45

44:                                               ; preds = %43, %41
  call void @compute_worm_influence()
  br label %45

45:                                               ; preds = %44, %43, %41
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* @verbose, align 4
  %50 = call i32 @test_gray_border()
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %54

53:                                               ; preds = %48
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 139, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %54

54:                                               ; preds = %53, %52
  br label %153

55:                                               ; preds = %45
  %56 = load i32, i32* %4, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load i32, i32* @dragons_examined_without_owl, align 4
  %60 = load i32, i32* @position_number, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @position_number, align 4
  store i32 %63, i32* @dragons_examined_without_owl, align 4
  br i1 true, label %65, label %68

64:                                               ; preds = %58
  br i1 false, label %65, label %68

65:                                               ; preds = %64, %62
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %5, align 4
  call void @make_dragons(i32 %66, i32 1, i32 %67)
  br label %68

68:                                               ; preds = %65, %64, %62
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* @verbose, align 4
  %70 = call i32 @test_gray_border()
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %74

73:                                               ; preds = %68
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %74

74:                                               ; preds = %73, %72
  br label %153

75:                                               ; preds = %55
  %76 = load i32, i32* @dragons_examined, align 4
  %77 = load i32, i32* @position_number, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @position_number, align 4
  store i32 %80, i32* @dragons_examined, align 4
  br i1 true, label %82, label %86

81:                                               ; preds = %75
  br i1 false, label %82, label %86

82:                                               ; preds = %81, %79
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* %5, align 4
  call void @make_dragons(i32 %83, i32 0, i32 %84)
  %85 = load i32, i32* @position_number, align 4
  store i32 %85, i32* @dragons_examined_without_owl, align 4
  br label %86

86:                                               ; preds = %82, %81, %79
  %87 = load i32, i32* %4, align 4
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* @verbose, align 4
  %91 = call i32 @test_gray_border()
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  br label %95

94:                                               ; preds = %89
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %95

95:                                               ; preds = %94, %93
  br label %153

96:                                               ; preds = %86
  br label %114

97:                                               ; preds = %34
  %98 = load i32, i32* %4, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 99
  br i1 %105, label %106, label %113

106:                                              ; preds = %103, %100, %97
  call void @initialize_dragon_data()
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* @verbose, align 4
  %108 = call i32 @test_gray_border()
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  br label %112

111:                                              ; preds = %106
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 167, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %112

112:                                              ; preds = %111, %110
  br label %153

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %113, %96
  %115 = load i32, i32* %5, align 4
  store i32 %115, i32* @verbose, align 4
  %116 = load i32, i32* @initial_influence2_examined, align 4
  %117 = load i32, i32* @position_number, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @position_number, align 4
  store i32 %120, i32* @initial_influence2_examined, align 4
  br i1 true, label %122, label %123

121:                                              ; preds = %114
  br i1 false, label %122, label %123

122:                                              ; preds = %121, %119
  call void @compute_dragon_influence()
  br label %123

123:                                              ; preds = %122, %121, %119
  %124 = load i32, i32* %4, align 4
  %125 = icmp eq i32 %124, 6
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = call i32 @test_gray_border()
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  br label %131

130:                                              ; preds = %126
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %131

131:                                              ; preds = %130, %129
  br label %153

132:                                              ; preds = %123
  %133 = load i32, i32* @dragons_refinedly_examined, align 4
  %134 = load i32, i32* @position_number, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = load i32, i32* @position_number, align 4
  store i32 %137, i32* @dragons_refinedly_examined, align 4
  br i1 true, label %139, label %140

138:                                              ; preds = %132
  br i1 false, label %139, label %140

139:                                              ; preds = %138, %136
  call void @compute_refined_dragon_weaknesses()
  br label %140

140:                                              ; preds = %139, %138, %136
  %141 = load i32, i32* %4, align 4
  %142 = icmp eq i32 %141, 7
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = call i32 @test_gray_border()
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %143
  br label %148

147:                                              ; preds = %143
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %148

148:                                              ; preds = %147, %146
  br label %153

149:                                              ; preds = %140
  %150 = load i32, i32* @printworms, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  call void @show_dragons()
  br label %153

153:                                              ; preds = %33, %54, %74, %95, %112, %131, %148, %152, %149
  ret void
}

declare dso_local void @purge_persistent_reading_cache() #1

declare dso_local void @start_timer(i32) #1

declare dso_local void @make_worms() #1

declare dso_local double @time_report(i32, i8*, i32, double) #1

declare dso_local i32 @test_gray_border() #1

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @stones_on_board(i32) #1

declare dso_local void @compute_worm_influence() #1

declare dso_local void @make_dragons(i32, i32, i32) #1

declare dso_local void @initialize_dragon_data() #1

declare dso_local void @compute_dragon_influence() #1

declare dso_local void @compute_refined_dragon_weaknesses() #1

declare dso_local void @show_dragons() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @silent_examine_position(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.SGFTree_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @verbose, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %11, %struct.SGFTree_t** %6, align 8
  %12 = load i32, i32* @count_variations, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @debug, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @printmoyo, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* @verbose, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  store i32 0, i32* @debug, align 4
  store i32 0, i32* @printmoyo, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %4, align 4
  call void @examine_position(i32 %15, i32 %16)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* @verbose, align 4
  %18 = load %struct.SGFTree_t*, %struct.SGFTree_t** %6, align 8
  store %struct.SGFTree_t* %18, %struct.SGFTree_t** @sgf_dumptree, align 8
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* @count_variations, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* @debug, align 4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* @printmoyo, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genmove(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @do_genmove(i32* %7, i32 %9, float 0x3FD99999A0000000, i32* null)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ult i32 %14, 421
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %3
  br label %25

24:                                               ; preds = %16, %13
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 235, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32 -1)
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32*, i32** %4, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 %29, 20
  %31 = sub nsw i32 %30, 1
  %32 = load i32*, i32** %4, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32*, i32** %5, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = srem i32 %37, 20
  %39 = sub nsw i32 %38, 1
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_genmove(i32* %0, i32 %1, float %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store float %2, float* %8, align 4
  store i32* %3, i32** %9, align 8
  call void @start_timer(i32 0)
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([19 x [19 x float]]* @potential_moves to i8*), i8 0, i64 1444, i1 false)
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 4), align 4
  store i32 0, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  store float -1.000000e+00, float* %10, align 4
  %15 = call i32 @get_level(i32* @level)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = load i32, i32* @level, align 4
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %4
  call void @reset_engine()
  %22 = load i32, i32* @depth, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @play_mirror_go, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i32, i32* @mirror_stones_limit, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = call i32 @stones_on_board(i32 3)
  %30 = load i32, i32* @mirror_stones_limit, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28, %25
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @find_mirror_move(i32* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load i32, i32* @verbose, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %40
  store i32 1, i32* %5, align 4
  br label %591

46:                                               ; preds = %32, %28, %21
  call void @start_timer(i32 1)
  %47 = load i32, i32* %7, align 4
  call void @examine_position(i32 %47, i32 99)
  %48 = call double @time_report(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 0, double 1.000000e+00)
  %49 = load i32, i32* @level, align 4
  %50 = icmp sge i32 %49, 8
  br i1 %50, label %51, label %120

51:                                               ; preds = %46
  %52 = call float @estimate_score(float* @lower_bound, float* @upper_bound)
  %53 = load i32, i32* @verbose, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @showscore, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %111

58:                                               ; preds = %55, %51
  %59 = load float, float* @lower_bound, align 4
  %60 = load float, float* @upper_bound, align 4
  %61 = fcmp oeq float %59, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load float, float* @lower_bound, align 4
  %64 = fcmp ogt float %63, 0.000000e+00
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %67 = load float, float* @lower_bound, align 4
  %68 = fcmp olt float %67, 0.000000e+00
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load float, float* @lower_bound, align 4
  %71 = fneg float %70
  br label %74

72:                                               ; preds = %62
  %73 = load float, float* @lower_bound, align 4
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi float [ %71, %69 ], [ %73, %72 ]
  %76 = fpext float %75 to double
  %77 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %66, double %76)
  br label %108

78:                                               ; preds = %58
  %79 = load float, float* @lower_bound, align 4
  %80 = fcmp ogt float %79, 0.000000e+00
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %83 = load float, float* @lower_bound, align 4
  %84 = fcmp olt float %83, 0.000000e+00
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load float, float* @lower_bound, align 4
  %87 = fneg float %86
  br label %90

88:                                               ; preds = %78
  %89 = load float, float* @lower_bound, align 4
  br label %90

90:                                               ; preds = %88, %85
  %91 = phi float [ %87, %85 ], [ %89, %88 ]
  %92 = fpext float %91 to double
  %93 = load float, float* @upper_bound, align 4
  %94 = fcmp ogt float %93, 0.000000e+00
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)
  %97 = load float, float* @upper_bound, align 4
  %98 = fcmp olt float %97, 0.000000e+00
  br i1 %98, label %99, label %102

99:                                               ; preds = %90
  %100 = load float, float* @upper_bound, align 4
  %101 = fneg float %100
  br label %104

102:                                              ; preds = %90
  %103 = load float, float* @upper_bound, align 4
  br label %104

104:                                              ; preds = %102, %99
  %105 = phi float [ %101, %99 ], [ %103, %102 ]
  %106 = fpext float %105 to double
  %107 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %82, double %92, i8* %96, double %106)
  br label %108

108:                                              ; preds = %104, %74
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %110 = call i32 @fflush(%struct._IO_FILE* %109)
  br label %111

111:                                              ; preds = %108, %55
  %112 = call double @time_report(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 0, double 1.000000e+00)
  %113 = load i32, i32* %7, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load float, float* @lower_bound, align 4
  store float %116, float* @score, align 4
  br label %119

117:                                              ; preds = %111
  %118 = load float, float* @upper_bound, align 4
  store float %118, float* @score, align 4
  br label %119

119:                                              ; preds = %117, %115
  br label %121

120:                                              ; preds = %46
  store float 0.000000e+00, float* @score, align 4
  br label %121

121:                                              ; preds = %120, %119
  %122 = load i32, i32* @printmoyo, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  call void @print_moyo()
  br label %125

125:                                              ; preds = %124, %121
  %126 = load i32, i32* @printboard, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = load i32, i32* @printboard, align 4
  %130 = icmp eq i32 %129, 1
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %133 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i32, i32* @printboard, align 4
  %136 = icmp eq i32 %135, 2
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %139 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %138, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* @printboard, align 4
  call void @showboard(i32 %141)
  %142 = load i32, i32* @printboard, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  call void @showboard(i32 3)
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  call void @showboard(i32 4)
  br label %149

149:                                              ; preds = %144, %140
  br label %150

150:                                              ; preds = %149, %125
  %151 = load i32, i32* @stackp, align 4
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %155

154:                                              ; preds = %150
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 386, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %155

155:                                              ; preds = %154, %153
  %156 = load i32, i32* %7, align 4
  call void @worm_reasons(i32 %156)
  %157 = load i32, i32* @verbose, align 4
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* @verbose, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* @verbose, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* @verbose, align 4
  br label %163

163:                                              ; preds = %160, %155
  %164 = load i32, i32* %7, align 4
  call void @owl_reasons(i32 %164)
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* @verbose, align 4
  %166 = load i32, i32* %7, align 4
  call void @fuseki(i32 %166)
  %167 = load i32, i32* @stackp, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %171

170:                                              ; preds = %163
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %171

171:                                              ; preds = %170, %169
  call void @start_timer(i32 1)
  %172 = load i32, i32* %7, align 4
  call void @shapes(i32 %172)
  %173 = call double @time_report(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i32 0, double 1.000000e+00)
  %174 = load i32, i32* @stackp, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %178

177:                                              ; preds = %171
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 410, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %178

178:                                              ; preds = %177, %176
  %179 = load i32, i32* %7, align 4
  call void @combinations(i32 %179)
  %180 = call double @time_report(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i32 0, double 1.000000e+00)
  %181 = load i32, i32* @stackp, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %178
  br label %185

184:                                              ; preds = %178
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 415, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %185

185:                                              ; preds = %184, %183
  %186 = load i32*, i32** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load float, float* %8, align 4
  %189 = load float, float* @lower_bound, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = call i32 @review_move_reasons(i32* %186, float* %10, i32 %187, float %188, float %189, i32* %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %204

193:                                              ; preds = %185
  %194 = load i32, i32* @verbose, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %193
  br label %203

197:                                              ; preds = %193
  %198 = load i32*, i32** %6, align 8
  %199 = load i32, i32* %198, align 4
  %200 = load float, float* %10, align 4
  %201 = fpext float %200 to double
  %202 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %199, double %201)
  br label %203

203:                                              ; preds = %197, %196
  br label %204

204:                                              ; preds = %203, %185
  %205 = load i32, i32* @stackp, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  br label %209

208:                                              ; preds = %204
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 421, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %209

209:                                              ; preds = %208, %207
  %210 = call double @time_report(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 0, double 1.000000e+00)
  %211 = load float, float* %10, align 4
  %212 = fpext float %211 to double
  %213 = fcmp olt double %212, 1.000000e+01
  br i1 %213, label %214, label %249

214:                                              ; preds = %209
  %215 = load i32, i32* @doing_scoring, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %249, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @revise_thrashing_dragon(i32 %218, float 1.500000e+01)
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %247

221:                                              ; preds = %217
  %222 = load i32, i32* %7, align 4
  call void @shapes(i32 %222)
  %223 = load i32, i32* @disable_endgame_patterns, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = load i32, i32* %7, align 4
  call void @endgame_shapes(i32 %226)
  br label %227

227:                                              ; preds = %225, %221
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* %7, align 4
  %230 = load float, float* %8, align 4
  %231 = load float, float* @score, align 4
  %232 = load i32*, i32** %9, align 8
  %233 = call i32 @review_move_reasons(i32* %228, float* %10, i32 %229, float %230, float %231, i32* %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %246

235:                                              ; preds = %227
  %236 = load i32, i32* @verbose, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %235
  br label %245

239:                                              ; preds = %235
  %240 = load i32*, i32** %6, align 8
  %241 = load i32, i32* %240, align 4
  %242 = load float, float* %10, align 4
  %243 = fpext float %242 to double
  %244 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i64 0, i64 0), i32 %241, double %243)
  br label %245

245:                                              ; preds = %239, %238
  br label %246

246:                                              ; preds = %245, %227
  br label %247

247:                                              ; preds = %246, %217
  %248 = call double @time_report(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %249

249:                                              ; preds = %247, %214, %209
  %250 = load float, float* %10, align 4
  %251 = fpext float %250 to double
  %252 = fcmp ole double %251, 6.000000e+00
  br i1 %252, label %253, label %288

253:                                              ; preds = %249
  %254 = load i32, i32* @disable_endgame_patterns, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %288, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* %7, align 4
  call void @endgame_shapes(i32 %257)
  %258 = load i32, i32* @stackp, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  br label %262

261:                                              ; preds = %256
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 445, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %262

262:                                              ; preds = %261, %260
  %263 = load i32*, i32** %6, align 8
  %264 = load i32, i32* %7, align 4
  %265 = load float, float* %8, align 4
  %266 = load float, float* @score, align 4
  %267 = load i32*, i32** %9, align 8
  %268 = call i32 @review_move_reasons(i32* %263, float* %10, i32 %264, float %265, float %266, i32* %267)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %262
  %271 = load i32, i32* @verbose, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %274, label %273

273:                                              ; preds = %270
  br label %280

274:                                              ; preds = %270
  %275 = load i32*, i32** %6, align 8
  %276 = load i32, i32* %275, align 4
  %277 = load float, float* %10, align 4
  %278 = fpext float %277 to double
  %279 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %276, double %278)
  br label %280

280:                                              ; preds = %274, %273
  br label %281

281:                                              ; preds = %280, %262
  %282 = load i32, i32* @stackp, align 4
  %283 = icmp eq i32 %282, 0
  br i1 %283, label %284, label %285

284:                                              ; preds = %281
  br label %286

285:                                              ; preds = %281
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 449, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %286

286:                                              ; preds = %285, %284
  %287 = call double @time_report(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %288

288:                                              ; preds = %286, %253, %249
  %289 = load float, float* %10, align 4
  %290 = fpext float %289 to double
  %291 = fcmp olt double %290, 0.000000e+00
  br i1 %291, label %292, label %324

292:                                              ; preds = %288
  %293 = load i32, i32* %7, align 4
  %294 = call i32 @revise_thrashing_dragon(i32 %293, float 0.000000e+00)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %300, label %296

296:                                              ; preds = %292
  %297 = load i32, i32* %7, align 4
  %298 = call i32 @revise_semeai(i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %322

300:                                              ; preds = %296, %292
  %301 = load i32, i32* %7, align 4
  call void @shapes(i32 %301)
  %302 = load i32, i32* %7, align 4
  call void @endgame_shapes(i32 %302)
  %303 = load i32*, i32** %6, align 8
  %304 = load i32, i32* %7, align 4
  %305 = load float, float* %8, align 4
  %306 = load float, float* @score, align 4
  %307 = load i32*, i32** %9, align 8
  %308 = call i32 @review_move_reasons(i32* %303, float* %10, i32 %304, float %305, float %306, i32* %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %321

310:                                              ; preds = %300
  %311 = load i32, i32* @verbose, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %314, label %313

313:                                              ; preds = %310
  br label %320

314:                                              ; preds = %310
  %315 = load i32*, i32** %6, align 8
  %316 = load i32, i32* %315, align 4
  %317 = load float, float* %10, align 4
  %318 = fpext float %317 to double
  %319 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.21, i64 0, i64 0), i32 %316, double %318)
  br label %320

320:                                              ; preds = %314, %313
  br label %321

321:                                              ; preds = %320, %300
  br label %322

322:                                              ; preds = %321, %296
  %323 = call double @time_report(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %324

324:                                              ; preds = %322, %288
  %325 = load float, float* %10, align 4
  %326 = fpext float %325 to double
  %327 = fcmp olt double %326, 0.000000e+00
  br i1 %327, label %328, label %360

328:                                              ; preds = %324
  %329 = load i32*, i32** %6, align 8
  %330 = load i32, i32* %7, align 4
  %331 = call i32 @fill_liberty(i32* %329, i32 %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %360

333:                                              ; preds = %328
  %334 = load i32*, i32** %9, align 8
  %335 = icmp ne i32* %334, null
  br i1 %335, label %336, label %344

336:                                              ; preds = %333
  %337 = load i32*, i32** %9, align 8
  %338 = load i32*, i32** %6, align 8
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %337, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %360

344:                                              ; preds = %336, %333
  store float 1.000000e+00, float* %10, align 4
  %345 = load i32, i32* @verbose, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %344
  br label %352

348:                                              ; preds = %344
  %349 = load i32*, i32** %6, align 8
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0), i32 %350)
  br label %352

352:                                              ; preds = %348, %347
  %353 = load i32*, i32** %6, align 8
  %354 = load i32, i32* %353, align 4
  %355 = load float, float* %10, align 4
  call void @record_top_move(i32 %354, float %355)
  %356 = load i32*, i32** %6, align 8
  %357 = load i32, i32* %356, align 4
  %358 = load float, float* %10, align 4
  call void @move_considered(i32 %357, float %358)
  %359 = call double @time_report(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %360

360:                                              ; preds = %352, %336, %328, %324
  %361 = load float, float* %10, align 4
  %362 = fpext float %361 to double
  %363 = fcmp olt double %362, 0.000000e+00
  br i1 %363, label %364, label %438

364:                                              ; preds = %360
  %365 = load i32, i32* @doing_scoring, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %438, label %367

367:                                              ; preds = %364
  %368 = load i32, i32* @play_out_aftermath, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %390, label %370

370:                                              ; preds = %367
  %371 = load i32, i32* @capture_all_dead, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %390, label %373

373:                                              ; preds = %370
  %374 = load i32, i32* @thrashing_dragon, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %438

376:                                              ; preds = %373
  %377 = load i32, i32* %7, align 4
  %378 = icmp eq i32 %377, 2
  br i1 %378, label %379, label %383

379:                                              ; preds = %376
  %380 = load float, float* @score, align 4
  %381 = fpext float %380 to double
  %382 = fcmp olt double %381, -1.500000e+01
  br i1 %382, label %390, label %383

383:                                              ; preds = %379, %376
  %384 = load i32, i32* %7, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %438

386:                                              ; preds = %383
  %387 = load float, float* @score, align 4
  %388 = fpext float %387 to double
  %389 = fcmp ogt double %388, 1.500000e+01
  br i1 %389, label %390, label %438

390:                                              ; preds = %386, %379, %370, %367
  %391 = load i32*, i32** %6, align 8
  %392 = load i32, i32* %7, align 4
  %393 = call i32 @aftermath_genmove(i32* %391, i32 %392, i32* null, i32 0)
  %394 = icmp sgt i32 %393, 0
  br i1 %394, label %395, label %438

395:                                              ; preds = %390
  %396 = load i32*, i32** %9, align 8
  %397 = icmp ne i32* %396, null
  br i1 %397, label %398, label %406

398:                                              ; preds = %395
  %399 = load i32*, i32** %9, align 8
  %400 = load i32*, i32** %6, align 8
  %401 = load i32, i32* %400, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32, i32* %399, i64 %402
  %404 = load i32, i32* %403, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %438

406:                                              ; preds = %398, %395
  %407 = load i32*, i32** %6, align 8
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %7, align 4
  %410 = call i32 @is_legal(i32 %408, i32 %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %413

412:                                              ; preds = %406
  br label %422

413:                                              ; preds = %406
  %414 = load i32*, i32** %6, align 8
  %415 = load i32, i32* %414, align 4
  %416 = sdiv i32 %415, 20
  %417 = sub nsw i32 %416, 1
  %418 = load i32*, i32** %6, align 8
  %419 = load i32, i32* %418, align 4
  %420 = srem i32 %419, 20
  %421 = sub nsw i32 %420, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 498, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 %417, i32 %421)
  br label %422

422:                                              ; preds = %413, %412
  store float 1.000000e+00, float* %10, align 4
  %423 = load i32, i32* @verbose, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %422
  br label %430

426:                                              ; preds = %422
  %427 = load i32*, i32** %6, align 8
  %428 = load i32, i32* %427, align 4
  %429 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 %428)
  br label %430

430:                                              ; preds = %426, %425
  %431 = load i32*, i32** %6, align 8
  %432 = load i32, i32* %431, align 4
  %433 = load float, float* %10, align 4
  call void @record_top_move(i32 %432, float %433)
  %434 = load i32*, i32** %6, align 8
  %435 = load i32, i32* %434, align 4
  %436 = load float, float* %10, align 4
  call void @move_considered(i32 %435, float %436)
  %437 = call double @time_report(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %438

438:                                              ; preds = %430, %398, %390, %386, %383, %373, %364, %360
  %439 = load float, float* %10, align 4
  %440 = fpext float %439 to double
  %441 = fcmp olt double %440, 0.000000e+00
  br i1 %441, label %442, label %493

442:                                              ; preds = %438
  %443 = load i32, i32* @doing_scoring, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %493, label %445

445:                                              ; preds = %442
  %446 = load i32, i32* @capture_all_dead, align 4
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %493

448:                                              ; preds = %445
  %449 = load i32*, i32** %6, align 8
  %450 = load i32, i32* %7, align 4
  %451 = call i32 @aftermath_genmove(i32* %449, i32 %450, i32* null, i32 1)
  %452 = icmp sgt i32 %451, 0
  br i1 %452, label %453, label %493

453:                                              ; preds = %448
  %454 = load i32*, i32** %9, align 8
  %455 = icmp ne i32* %454, null
  br i1 %455, label %456, label %464

456:                                              ; preds = %453
  %457 = load i32*, i32** %9, align 8
  %458 = load i32*, i32** %6, align 8
  %459 = load i32, i32* %458, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %457, i64 %460
  %462 = load i32, i32* %461, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %493

464:                                              ; preds = %456, %453
  %465 = load i32*, i32** %6, align 8
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %7, align 4
  %468 = call i32 @is_legal(i32 %466, i32 %467)
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %464
  br label %480

471:                                              ; preds = %464
  %472 = load i32*, i32** %6, align 8
  %473 = load i32, i32* %472, align 4
  %474 = sdiv i32 %473, 20
  %475 = sub nsw i32 %474, 1
  %476 = load i32*, i32** %6, align 8
  %477 = load i32, i32* %476, align 4
  %478 = srem i32 %477, 20
  %479 = sub nsw i32 %478, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 514, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), i32 %475, i32 %479)
  br label %480

480:                                              ; preds = %471, %470
  store float 1.000000e+00, float* %10, align 4
  %481 = load i32, i32* @verbose, align 4
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %484, label %483

483:                                              ; preds = %480
  br label %488

484:                                              ; preds = %480
  %485 = load i32*, i32** %6, align 8
  %486 = load i32, i32* %485, align 4
  %487 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.27, i64 0, i64 0), i32 %486)
  br label %488

488:                                              ; preds = %484, %483
  %489 = load i32*, i32** %6, align 8
  %490 = load i32, i32* %489, align 4
  %491 = load float, float* %10, align 4
  call void @move_considered(i32 %490, float %491)
  %492 = call double @time_report(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %493

493:                                              ; preds = %488, %456, %448, %445, %442, %438
  %494 = load float, float* %10, align 4
  %495 = fpext float %494 to double
  %496 = fcmp olt double %495, 0.000000e+00
  br i1 %496, label %497, label %505

497:                                              ; preds = %493
  %498 = load i32, i32* @verbose, align 4
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %501, label %500

500:                                              ; preds = %497
  br label %503

501:                                              ; preds = %497
  %502 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  br label %503

503:                                              ; preds = %501, %500
  %504 = load i32*, i32** %6, align 8
  store i32 0, i32* %504, align 4
  br label %516

505:                                              ; preds = %493
  %506 = load i32, i32* @verbose, align 4
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %509, label %508

508:                                              ; preds = %505
  br label %515

509:                                              ; preds = %505
  %510 = load i32*, i32** %6, align 8
  %511 = load i32, i32* %510, align 4
  %512 = load float, float* %10, align 4
  %513 = fpext float %512 to double
  %514 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i32 %511, double %513)
  br label %515

515:                                              ; preds = %509, %508
  br label %516

516:                                              ; preds = %515, %503
  %517 = load i32, i32* @showstatistics, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %532

519:                                              ; preds = %516
  %520 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 0), align 4
  %521 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0), i32 %520)
  %522 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  %523 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %522)
  %524 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  %525 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i32 %524)
  %526 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  %527 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i32 %526)
  %528 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 4), align 4
  %529 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i32 %528)
  %530 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %531 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.36, i64 0, i64 0), i32 %530)
  br label %532

532:                                              ; preds = %519, %516
  %533 = load i32, i32* @showtime, align 4
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %572

535:                                              ; preds = %532
  %536 = load i32*, i32** %6, align 8
  %537 = load i32, i32* %536, align 4
  %538 = call double @time_report(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.37, i64 0, i64 0), i32 %537, double 1.000000e+00)
  store double %538, double* %13, align 8
  %539 = load double, double* %13, align 8
  %540 = load double, double* @total_time, align 8
  %541 = fadd double %540, %539
  store double %541, double* @total_time, align 8
  %542 = load double, double* %13, align 8
  %543 = load double, double* @slowest_time, align 8
  %544 = fcmp ogt double %542, %543
  br i1 %544, label %545, label %551

545:                                              ; preds = %535
  %546 = load double, double* %13, align 8
  store double %546, double* @slowest_time, align 8
  %547 = load i32*, i32** %6, align 8
  %548 = load i32, i32* %547, align 4
  store i32 %548, i32* @slowest_move, align 4
  %549 = load i32, i32* @movenum, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* @slowest_movenum, align 4
  br label %551

551:                                              ; preds = %545, %535
  %552 = load i32*, i32** %6, align 8
  %553 = load i32, i32* %552, align 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %571

555:                                              ; preds = %551
  %556 = load i32, i32* @slowest_movenum, align 4
  %557 = load i32, i32* @slowest_move, align 4
  %558 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.38, i64 0, i64 0), i32 %556, i32 %557)
  %559 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %560 = load double, double* @slowest_time, align 8
  %561 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %559, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.39, i64 0, i64 0), double %560)
  %562 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %563 = load double, double* @total_time, align 8
  %564 = load i32, i32* @movenum, align 4
  %565 = sitofp i32 %564 to double
  %566 = fdiv double %563, %565
  %567 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %562, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.40, i64 0, i64 0), double %566)
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %569 = load double, double* @total_time, align 8
  %570 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %568, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0), double %569)
  br label %571

571:                                              ; preds = %555, %551
  br label %572

572:                                              ; preds = %571, %532
  %573 = load i32, i32* @stackp, align 4
  %574 = icmp eq i32 %573, 0
  br i1 %574, label %575, label %576

575:                                              ; preds = %572
  br label %577

576:                                              ; preds = %572
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 561, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32 -1, i32 -1)
  br label %577

577:                                              ; preds = %576, %575
  %578 = call i32 @test_gray_border()
  %579 = icmp slt i32 %578, 0
  br i1 %579, label %580, label %581

580:                                              ; preds = %577
  br label %582

581:                                              ; preds = %577
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 562, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %582

582:                                              ; preds = %581, %580
  %583 = load i32, i32* @depth, align 4
  %584 = load i32, i32* %12, align 4
  %585 = icmp eq i32 %583, %584
  br i1 %585, label %586, label %587

586:                                              ; preds = %582
  br label %588

587:                                              ; preds = %582
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 563, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.42, i64 0, i64 0), i32 -1, i32 -1)
  br label %588

588:                                              ; preds = %587, %586
  %589 = load float, float* %10, align 4
  %590 = fptosi float %589 to i32
  store i32 %590, i32* %5, align 4
  br label %591

591:                                              ; preds = %588, %45
  %592 = load i32, i32* %5, align 4
  ret i32 %592
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genmove_conservative(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @do_genmove(i32* %7, i32 %9, float 0.000000e+00, i32* null)
  store i32 %10, i32* %8, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = sdiv i32 %14, 20
  %16 = sub nsw i32 %15, 1
  %17 = load i32*, i32** %4, align 8
  store i32 %16, i32* %17, align 4
  br label %18

18:                                               ; preds = %13, %3
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genmove_restricted(i32* %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @do_genmove(i32* %9, i32 %11, float 0.000000e+00, i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = sdiv i32 %17, 20
  %19 = sub nsw i32 %18, 1
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %16, %4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = srem i32 %25, 20
  %27 = sub nsw i32 %26, 1
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %10, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_considered(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sdiv i32 %7, 20
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %3, align 4
  %11 = srem i32 %10, 20
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load float, float* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %15
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [19 x float], [19 x float]* %16, i64 0, i64 %18
  %20 = load float, float* %19, align 4
  %21 = fcmp ogt float %13, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %2
  %23 = load float, float* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %25
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [19 x float], [19 x float]* %26, i64 0, i64 %28
  store float %23, float* %29, align 4
  br label %30

30:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_level(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca [6 x i8], align 1
  store i32* %0, i32** %3, align 8
  %7 = bitcast [6 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.get_level.filename, i32 0, i32 0), i64 6, i1 false)
  %8 = getelementptr inbounds [6 x i8], [6 x i8]* %6, i64 0, i64 0
  %9 = call %struct._IO_FILE* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  store %struct._IO_FILE* %9, %struct._IO_FILE** %5, align 8
  %10 = icmp eq %struct._IO_FILE* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %15 = call i8* @fgets(i8* %13, i32 128, %struct._IO_FILE* %14)
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i32* %19) #5
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %25

23:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %22, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_mirror_move(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @get_last_move()
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load i32, i32* @board_size, align 4
  %13 = sub nsw i32 %12, 1
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 20
  %16 = sub nsw i32 %15, 1
  %17 = sub nsw i32 %13, %16
  %18 = mul nsw i32 %17, 20
  %19 = add nsw i32 21, %18
  %20 = load i32, i32* @board_size, align 4
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %6, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  %25 = sub nsw i32 %21, %24
  %26 = add nsw i32 %19, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @test_symmetry_after_move(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %11
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  store i32 1, i32* %3, align 4
  br label %60

34:                                               ; preds = %11
  br label %59

35:                                               ; preds = %2
  store i32 21, i32* %7, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %37, 400
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @test_symmetry_after_move(i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %4, align 8
  store i32 %52, i32* %53, align 4
  store i32 1, i32* %3, align 4
  br label %60

54:                                               ; preds = %46, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %36, !llvm.loop !4

58:                                               ; preds = %36
  br label %59

59:                                               ; preds = %58, %34
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %51, %31
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local float @estimate_score(float*, float*) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

declare dso_local void @print_moyo() #1

declare dso_local void @showboard(i32) #1

declare dso_local void @worm_reasons(i32) #1

declare dso_local void @owl_reasons(i32) #1

declare dso_local void @fuseki(i32) #1

declare dso_local void @shapes(i32) #1

declare dso_local void @combinations(i32) #1

declare dso_local i32 @review_move_reasons(i32*, float*, i32, float, float, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revise_thrashing_dragon(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca [400 x i8], align 16
  %8 = alloca [400 x float], align 16
  store i32 %0, i32* %4, align 4
  store float %1, float* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load float, float* @score, align 4
  %13 = load float, float* %5, align 4
  %14 = fneg float %13
  %15 = fcmp ogt float %12, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load float, float* @score, align 4
  %21 = load float, float* %5, align 4
  %22 = fcmp olt float %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %11
  store i32 0, i32* %3, align 4
  br label %94

24:                                               ; preds = %19, %16
  %25 = load i32, i32* @thrashing_dragon, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %94

32:                                               ; preds = %24
  %33 = load i32, i32* @disable_threat_computation, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* @thrashing_dragon, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load i32, i32* @thrashing_dragon, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %41, i32 0, i32 16
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %35, %32
  store i32 0, i32* %3, align 4
  br label %94

46:                                               ; preds = %38
  store i32 21, i32* %6, align 4
  br label %47

47:                                               ; preds = %68, %46
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 400
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @thrashing_dragon, align 4
  %60 = call i32 @is_same_dragon(i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %65, i32 0, i32 16
  store i32 3, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %57, %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %6, align 4
  br label %47, !llvm.loop !6

71:                                               ; preds = %47
  %72 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %73 = load i32, i32* @thrashing_dragon, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %72, i64 %78
  %80 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %79, i32 0, i32 6
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* %4, align 4
  %82 = sub nsw i32 3, %81
  %83 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %84 = getelementptr inbounds [400 x float], [400 x float]* %8, i64 0, i64 0
  call void @set_strength_data(i32 %82, i8* %83, float* %84)
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 3, %85
  %87 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %88 = getelementptr inbounds [400 x float], [400 x float]* %8, i64 0, i64 0
  %89 = load i32, i32* %4, align 4
  %90 = sub nsw i32 3, %89
  %91 = icmp eq i32 %90, 1
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  call void @compute_influence(i32 %86, i8* %87, float* %88, %struct.influence_data* %93, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0))
  call void @compute_refined_dragon_weaknesses()
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %71, %45, %31, %23
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local void @endgame_shapes(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revise_semeai(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sub nsw i32 3, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %9 = icmp ne %struct.dragon_data2* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %12

11:                                               ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 624, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0), i32 -1, i32 -1)
  br label %12

12:                                               ; preds = %11, %10
  store i32 21, i32* %3, align 4
  br label %13

13:                                               ; preds = %72, %12
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 400
  br i1 %15, label %16, label %75

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %71

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %23
  %32 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %32, i64 %38
  %40 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %46, i32 0, i32 16
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %53, i32 0, i32 16
  store i32 3, i32* %54, align 4
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %3, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %50
  %63 = load i32, i32* @verbose, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %3, align 4
  %68 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.48, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %50
  br label %71

71:                                               ; preds = %70, %43, %31, %23, %16
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %13, !llvm.loop !7

75:                                               ; preds = %13
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @fill_liberty(i32*, i32) #1

declare dso_local void @record_top_move(i32, float) #1

declare dso_local i32 @aftermath_genmove(i32*, i32, i32*, i32) #1

declare dso_local i32 @is_legal(i32, i32) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #1

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

declare dso_local i32 @get_last_move() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_symmetry_after_move(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 1, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @trymove(i32 %16, i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i32 0, i32 0, i32 0)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %78

21:                                               ; preds = %15
  store i32 21, i32* %6, align 4
  br label %22

22:                                               ; preds = %73, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @board_size, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %6, align 4
  %27 = sdiv i32 %26, 20
  %28 = sub nsw i32 %27, 1
  %29 = sub nsw i32 %25, %28
  %30 = mul nsw i32 %29, 20
  %31 = add nsw i32 21, %30
  %32 = load i32, i32* @board_size, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %6, align 4
  %35 = srem i32 %34, 20
  %36 = sub nsw i32 %35, 1
  %37 = sub nsw i32 %33, %36
  %38 = add nsw i32 %31, %37
  %39 = icmp sle i32 %23, %38
  br i1 %39, label %40, label %76

40:                                               ; preds = %22
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @board_size, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load i32, i32* %6, align 4
  %51 = sdiv i32 %50, 20
  %52 = sub nsw i32 %51, 1
  %53 = sub nsw i32 %49, %52
  %54 = mul nsw i32 %53, 20
  %55 = add nsw i32 21, %54
  %56 = load i32, i32* @board_size, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load i32, i32* %6, align 4
  %59 = srem i32 %58, 20
  %60 = sub nsw i32 %59, 1
  %61 = sub nsw i32 %57, %60
  %62 = add nsw i32 %55, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = xor i32 %47, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %76

72:                                               ; preds = %40
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %22, !llvm.loop !8

76:                                               ; preds = %71, %22
  call void @popgo()
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %20, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare dso_local void @popgo() #1

declare dso_local i32 @is_same_dragon(i32, i32) #1

declare dso_local void @set_strength_data(i32, i8*, float*) #1

declare dso_local void @compute_influence(i32, i8*, float*, %struct.influence_data*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
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
