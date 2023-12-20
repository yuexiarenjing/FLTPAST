; ModuleID = 'worm.c'
source_filename = "worm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.influence_data = type opaque
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque

@stackp = external dso_local global i32, align 4
@.str = private unnamed_addr constant [7 x i8] c"worm.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@board = external dso_local global [421 x i8], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str.2 = private unnamed_addr constant [28 x i8] c"worm[pos].liberties == lib1\00", align 1
@delta = external dso_local global [8 x i32], align 16
@.str.3 = private unnamed_addr constant [37 x i8] c"board[pos2 + delta[k]] == board[pos]\00", align 1
@debug = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Worm at %1m has w1 %1m and w2 %1m, cutstone %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"make_worms\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"trying %1m\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"adding point of attack of %1m at %1m with code %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"adding point of defense of %1m at %1m with code %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"lunch found for %1m at %1m\0A\00", align 1
@disable_threat_computation = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"Worm %1m identified as inessential.\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"change_attack: %1m %1m %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[pos])\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"safe_stones[ii] == 0\00", align 1
@initial_black_influence = external dso_local global %struct.influence_data, align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"initial black influence\00", align 1
@initial_white_influence = external dso_local global %struct.influence_data, align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"initial white influence\00", align 1
@board_size = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [25 x i8] c"There is no worm at %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"*** worm at %1m:\0A\00", align 1
@.str.18 = private unnamed_addr constant [54 x i8] c"color: %s; origin: %1m; size: %d; effective size: %f\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"White\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"Black\00", align 1
@.str.21 = private unnamed_addr constant [58 x i8] c"liberties: %d order 2 liberties:%d order 3:%d order 4:%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"no attack point, \00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"attack point(s):\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c" %1m: %s\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"\0A;\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"no defense point, \00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"defense point(s):\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"no attack threat point, \00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"attack threat point(s):\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"no defense threat point, \00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"defense threat point(s):\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"lunch at %1m\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"cutstone: %d, cutstone2: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"genus: %d, \00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"inessential: YES, \00", align 1
@.str.37 = private unnamed_addr constant [18 x i8] c"inessential: NO, \00", align 1
@.str.38 = private unnamed_addr constant [19 x i8] c"invincible: YES, \0A\00", align 1
@.str.39 = private unnamed_addr constant [18 x i8] c"invincible: NO, \0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"unconditional status ALIVE\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c"unconditional status DEAD\0A\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"unconditional status WHITE_BORDER\0A\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"unconditional status BLACK_BORDER\0A\00", align 1
@.str.44 = private unnamed_addr constant [30 x i8] c"unconditional status UNKNOWN\0A\00", align 1
@close_worms = external dso_local global [400 x [4 x i32]], align 16
@number_close_worms = external dso_local global [400 x i32], align 16
@close_black_worms = external dso_local global [400 x [4 x i32]], align 16
@number_close_black_worms = external dso_local global [400 x i32], align 16
@close_white_worms = external dso_local global [400 x [4 x i32]], align 16
@number_close_white_worms = external dso_local global [400 x i32], align 16
@do_compute_effective_worm_sizes.worms = internal global [400 x [36 x i32]] zeroinitializer, align 16
@.str.45 = private unnamed_addr constant [31 x i8] c"nworms[pos] < 2*(board_size-1)\00", align 1
@find_worm_attacks_and_defenses.libs = internal global [241 x i32] zeroinitializer, align 16
@verbose = external dso_local global i32, align 4
@.str.46 = private unnamed_addr constant [27 x i8] c"considering attack of %1m\0A\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"worm at %1m can be attacked at %1m\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"considering defense of %1m\0A\00", align 1
@.str.49 = private unnamed_addr constant [36 x i8] c"worm at %1m can be defended at %1m\0A\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"worm at %1m can be defended at %1m with code %d\0A\00", align 1
@attpat_db = external dso_local global %struct.pattern_db, align 8
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@.str.51 = private unnamed_addr constant [48 x i8] c"Attack pattern %s+%d rejected by helper at %1m\0A\00", align 1
@.str.52 = private unnamed_addr constant [16 x i8] c"attack_callback\00", align 1
@.str.53 = private unnamed_addr constant [62 x i8] c"Attack pattern %s+%d found attack on %1m at %1m with code %d\0A\00", align 1
@defpat_db = external dso_local global %struct.pattern_db, align 8
@.str.54 = private unnamed_addr constant [49 x i8] c"Defense pattern %s+%d rejected by helper at %1m\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"defense_callback\00", align 1
@.str.56 = private unnamed_addr constant [64 x i8] c"Defense pattern %s+%d found defense of %1m at %1m with code %d\0A\00", align 1
@find_worm_threats.libs = internal global [241 x i32] zeroinitializer, align 16
@.str.57 = private unnamed_addr constant [17 x i8] c"threaten defense\00", align 1
@.str.58 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[str])\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"(board[str] != 3)\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"str == worm[str].origin\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(str)\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"IS_STONE(worm[str].color)\00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"edge != ((void*)0)\00", align 1
@.str.65 = private unnamed_addr constant [125 x i8] c"border_color == 0 && ((pos == 0 && stones_on_board(2 | 1) == 0) || (pos != 0 && stones_on_board(2 | 1) == countstones(pos)))\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"mx[pos] == 0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_worms() #0 {
  %1 = alloca i32, align 4
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
  %12 = alloca [400 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  call void @build_worms()
  %22 = call i32 @stones_on_board(i32 3)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %0
  br label %1041

25:                                               ; preds = %0
  call void @compute_effective_worm_sizes()
  call void @compute_unconditional_status()
  call void @find_worm_attacks_and_defenses()
  %26 = load i32, i32* @stackp, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %30

29:                                               ; preds = %25
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 108, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %30

30:                                               ; preds = %29, %28
  store i32 21, i32* %1, align 4
  br label %31

31:                                               ; preds = %90, %30
  %32 = load i32, i32* %1, align 4
  %33 = icmp slt i32 %32, 400
  br i1 %33, label %34, label %93

34:                                               ; preds = %31
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %89

48:                                               ; preds = %41, %34
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @is_worm_origin(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %89

53:                                               ; preds = %48
  %54 = load i32, i32* %1, align 4
  call void @ping_cave(i32 %54, i32* %2, i32* %3, i32* %4, i32* %5)
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %2, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %64

63:                                               ; preds = %53
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 116, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %64

64:                                               ; preds = %63, %62
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %1, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %68, i32 0, i32 5
  store i32 %65, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %73, i32 0, i32 6
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %78, i32 0, i32 7
  store i32 %75, i32* %79, align 4
  %80 = load i32, i32* %1, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %82, i32 0, i32 9
  store i32 0, i32* %83, align 4
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %85
  %87 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %86, i32 0, i32 10
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* %1, align 4
  call void @propagate_worm(i32 %88)
  br label %89

89:                                               ; preds = %64, %48, %41
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %1, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %1, align 4
  br label %31, !llvm.loop !4

93:                                               ; preds = %31
  %94 = load i32, i32* @stackp, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %98

97:                                               ; preds = %93
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %98

98:                                               ; preds = %97, %96
  store i32 21, i32* %1, align 4
  br label %99

99:                                               ; preds = %258, %98
  %100 = load i32, i32* %1, align 4
  %101 = icmp slt i32 %100, 400
  br i1 %101, label %102, label %261

102:                                              ; preds = %99
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %1, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %121

116:                                              ; preds = %109, %102
  %117 = load i32, i32* %1, align 4
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @is_worm_origin(i32 %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %116, %109
  br label %258

122:                                              ; preds = %116
  store i32 21, i32* %9, align 4
  br label %123

123:                                              ; preds = %221, %122
  %124 = load i32, i32* %9, align 4
  %125 = icmp slt i32 %124, 400
  br i1 %125, label %126, label %224

126:                                              ; preds = %123
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = load i32, i32* %1, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = sub nsw i32 3, %136
  %138 = icmp ne i32 %131, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %126
  br label %221

140:                                              ; preds = %126
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %217, %140
  %142 = load i32, i32* %8, align 4
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %144, label %220

144:                                              ; preds = %141
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %145, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp ne i32 %154, 3
  br i1 %155, label %156, label %169

156:                                              ; preds = %144
  %157 = load i32, i32* %9, align 4
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %157, %161
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %163
  %165 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %1, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %156, %144
  br label %217

170:                                              ; preds = %156
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %171, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = load i32, i32* %1, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  %186 = icmp eq i32 %180, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %170
  br label %195

188:                                              ; preds = %170
  %189 = load i32, i32* %1, align 4
  %190 = sdiv i32 %189, 20
  %191 = sub nsw i32 %190, 1
  %192 = load i32, i32* %1, align 4
  %193 = srem i32 %192, 20
  %194 = sub nsw i32 %193, 1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 202, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %191, i32 %194)
  br label %195

195:                                              ; preds = %188, %187
  %196 = load i32, i32* %6, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i32, i32* %9, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %200
  %202 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %6, align 4
  br label %216

204:                                              ; preds = %195
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @is_same_worm(i32 %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %215, label %209

209:                                              ; preds = %204
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %211
  %213 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %209, %204
  br label %216

216:                                              ; preds = %215, %198
  br label %217

217:                                              ; preds = %216, %169
  %218 = load i32, i32* %8, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %8, align 4
  br label %141, !llvm.loop !6

220:                                              ; preds = %141
  br label %221

221:                                              ; preds = %220, %139
  %222 = load i32, i32* %9, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %9, align 4
  br label %123, !llvm.loop !7

224:                                              ; preds = %123
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %224
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %229
  %231 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %230, i32 0, i32 9
  store i32 2, i32* %231, align 4
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i32 @count_common_libs(i32 %232, i32 %233)
  %235 = icmp sgt i32 %234, 0
  br i1 %235, label %236, label %241

236:                                              ; preds = %227
  %237 = load i32, i32* %1, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %238
  %240 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %239, i32 0, i32 9
  store i32 1, i32* %240, align 4
  br label %241

241:                                              ; preds = %236, %227
  %242 = load i32, i32* @debug, align 4
  %243 = and i32 %242, 1024
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %246, label %245

245:                                              ; preds = %241
  br label %256

246:                                              ; preds = %241
  %247 = load i32, i32* %1, align 4
  %248 = load i32, i32* %6, align 4
  %249 = load i32, i32* %7, align 4
  %250 = load i32, i32* %1, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %251
  %253 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %247, i32 %248, i32 %249, i32 %254)
  br label %256

256:                                              ; preds = %246, %245
  br label %257

257:                                              ; preds = %256, %224
  br label %258

258:                                              ; preds = %257, %121
  %259 = load i32, i32* %1, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %1, align 4
  br label %99, !llvm.loop !8

261:                                              ; preds = %99
  %262 = load i32, i32* @stackp, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  br label %266

265:                                              ; preds = %261
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 232, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %266

266:                                              ; preds = %265, %264
  store i32 21, i32* %1, align 4
  br label %267

267:                                              ; preds = %298, %266
  %268 = load i32, i32* %1, align 4
  %269 = icmp slt i32 %268, 400
  br i1 %269, label %270, label %301

270:                                              ; preds = %267
  %271 = load i32, i32* %1, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = icmp eq i32 %275, 1
  br i1 %276, label %284, label %277

277:                                              ; preds = %270
  %278 = load i32, i32* %1, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp eq i32 %282, 2
  br i1 %283, label %284, label %297

284:                                              ; preds = %277, %270
  %285 = load i32, i32* %1, align 4
  %286 = load i32, i32* %1, align 4
  %287 = call i32 @is_worm_origin(i32 %285, i32 %286)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %284
  %290 = load i32, i32* %1, align 4
  %291 = call i32 @genus(i32 %290)
  %292 = load i32, i32* %1, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %293
  %295 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %294, i32 0, i32 11
  store i32 %291, i32* %295, align 4
  %296 = load i32, i32* %1, align 4
  call void @propagate_worm(i32 %296)
  br label %297

297:                                              ; preds = %289, %284, %277
  br label %298

298:                                              ; preds = %297
  %299 = load i32, i32* %1, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %1, align 4
  br label %267, !llvm.loop !9

301:                                              ; preds = %267
  %302 = load i32, i32* @stackp, align 4
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  br label %306

305:                                              ; preds = %301
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 241, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %306

306:                                              ; preds = %305, %304
  %307 = load i32, i32* @stackp, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  br label %311

310:                                              ; preds = %306
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 244, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %311

311:                                              ; preds = %310, %309
  %312 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 0
  %313 = bitcast i32* %312 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %313, i8 0, i64 1600, i1 false)
  store i32 21, i32* %11, align 4
  br label %314

314:                                              ; preds = %366, %311
  %315 = load i32, i32* %11, align 4
  %316 = icmp slt i32 %315, 400
  br i1 %316, label %317, label %369

317:                                              ; preds = %314
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp eq i32 %322, 1
  br i1 %323, label %331, label %324

324:                                              ; preds = %317
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  %330 = icmp eq i32 %329, 2
  br i1 %330, label %331, label %365

331:                                              ; preds = %324, %317
  %332 = load i32, i32* %11, align 4
  %333 = load i32, i32* %11, align 4
  %334 = call i32 @is_worm_origin(i32 %332, i32 %333)
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %365

336:                                              ; preds = %331
  %337 = load i32, i32* %11, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  store i32 %341, i32* %10, align 4
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* %11, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %344
  %346 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %345, i32 0, i32 17
  %347 = getelementptr inbounds [10 x i32], [10 x i32]* %346, i64 0, i64 0
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = or i32 %351, %342
  store i32 %352, i32* %350, align 4
  %353 = load i32, i32* %10, align 4
  %354 = sub nsw i32 3, %353
  %355 = load i32, i32* %11, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %356
  %358 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %357, i32 0, i32 15
  %359 = getelementptr inbounds [10 x i32], [10 x i32]* %358, i64 0, i64 0
  %360 = load i32, i32* %359, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %363, %354
  store i32 %364, i32* %362, align 4
  br label %365

365:                                              ; preds = %336, %331, %324
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %11, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %11, align 4
  br label %314, !llvm.loop !10

369:                                              ; preds = %314
  store i32 21, i32* %1, align 4
  br label %370

370:                                              ; preds = %634, %369
  %371 = load i32, i32* %1, align 4
  %372 = icmp slt i32 %371, 400
  br i1 %372, label %373, label %637

373:                                              ; preds = %370
  %374 = load i32, i32* %1, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %375
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp ne i32 %378, 3
  br i1 %379, label %381, label %380

380:                                              ; preds = %373
  br label %634

381:                                              ; preds = %373
  store i32 1, i32* %10, align 4
  br label %382

382:                                              ; preds = %630, %381
  %383 = load i32, i32* %10, align 4
  %384 = icmp sle i32 %383, 2
  br i1 %384, label %385, label %633

385:                                              ; preds = %382
  %386 = load i32, i32* %1, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [400 x i32], [400 x i32]* %12, i64 0, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %10, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %394, label %393

393:                                              ; preds = %385
  br label %630

394:                                              ; preds = %385
  %395 = load i32, i32* %1, align 4
  %396 = load i32, i32* %10, align 4
  %397 = call i32 @trymove(i32 %395, i32 %396, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %394
  br label %630

400:                                              ; preds = %394
  %401 = load i32, i32* @debug, align 4
  %402 = and i32 %401, 1024
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %405, label %404

404:                                              ; preds = %400
  br label %408

405:                                              ; preds = %400
  %406 = load i32, i32* %1, align 4
  %407 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %406)
  br label %408

408:                                              ; preds = %405, %404
  call void @increase_depth_values()
  store i32 21, i32* %11, align 4
  br label %409

409:                                              ; preds = %626, %408
  %410 = load i32, i32* %11, align 4
  %411 = icmp slt i32 %410, 400
  br i1 %411, label %412, label %629

412:                                              ; preds = %409
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %414
  %416 = load i8, i8* %415, align 1
  %417 = zext i8 %416 to i32
  %418 = icmp eq i32 %417, 1
  br i1 %418, label %426, label %419

419:                                              ; preds = %412
  %420 = load i32, i32* %11, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %421
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp eq i32 %424, 2
  br i1 %425, label %426, label %431

426:                                              ; preds = %419, %412
  %427 = load i32, i32* %11, align 4
  %428 = load i32, i32* %11, align 4
  %429 = call i32 @is_worm_origin(i32 %427, i32 %428)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %432, label %431

431:                                              ; preds = %426, %419
  br label %626

432:                                              ; preds = %426
  %433 = load i32, i32* %11, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %434
  %436 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* %10, align 4
  %439 = sub nsw i32 3, %438
  %440 = icmp eq i32 %437, %439
  br i1 %440, label %441, label %528

441:                                              ; preds = %432
  %442 = load i32, i32* %11, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %443
  %445 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %444, i32 0, i32 16
  %446 = getelementptr inbounds [10 x i32], [10 x i32]* %445, i64 0, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %528

449:                                              ; preds = %441
  %450 = load i32, i32* %11, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %451
  %453 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %452, i32 0, i32 18
  %454 = getelementptr inbounds [10 x i32], [10 x i32]* %453, i64 0, i64 0
  %455 = load i32, i32* %454, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %528

457:                                              ; preds = %449
  %458 = load i32, i32* %11, align 4
  %459 = call i32 @find_defense(i32 %458, i32* null)
  store i32 %459, i32* %13, align 4
  %460 = load i32, i32* %13, align 4
  %461 = load i32, i32* %11, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %462
  %464 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %463, i32 0, i32 18
  %465 = getelementptr inbounds [10 x i32], [10 x i32]* %464, i64 0, i64 0
  %466 = load i32, i32* %465, align 4
  %467 = icmp slt i32 %460, %466
  br i1 %467, label %468, label %527

468:                                              ; preds = %457
  store i32 1, i32* %14, align 4
  %469 = load i32, i32* %11, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %470
  %472 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %471, i32 0, i32 18
  %473 = getelementptr inbounds [10 x i32], [10 x i32]* %472, i64 0, i64 0
  %474 = load i32, i32* %473, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %507

476:                                              ; preds = %468
  %477 = load i32, i32* %11, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %478
  %480 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %479, i32 0, i32 17
  %481 = getelementptr inbounds [10 x i32], [10 x i32]* %480, i64 0, i64 0
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* %10, align 4
  %484 = sub nsw i32 3, %483
  %485 = call i32 @trymove(i32 %482, i32 %484, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %507

487:                                              ; preds = %476
  %488 = load i32, i32* %11, align 4
  %489 = call i32 @attack(i32 %488, i32* null)
  %490 = sub nsw i32 5, %489
  store i32 %490, i32* %15, align 4
  %491 = load i32, i32* %15, align 4
  %492 = load i32, i32* %13, align 4
  %493 = icmp sgt i32 %491, %492
  br i1 %493, label %494, label %506

494:                                              ; preds = %487
  %495 = load i32, i32* %15, align 4
  store i32 %495, i32* %13, align 4
  %496 = load i32, i32* %13, align 4
  %497 = load i32, i32* %11, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %498
  %500 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %499, i32 0, i32 18
  %501 = getelementptr inbounds [10 x i32], [10 x i32]* %500, i64 0, i64 0
  %502 = load i32, i32* %501, align 4
  %503 = icmp sge i32 %496, %502
  br i1 %503, label %504, label %505

504:                                              ; preds = %494
  store i32 0, i32* %14, align 4
  br label %505

505:                                              ; preds = %504, %494
  br label %506

506:                                              ; preds = %505, %487
  call void @popgo()
  br label %507

507:                                              ; preds = %506, %476, %468
  %508 = load i32, i32* %14, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %526

510:                                              ; preds = %507
  %511 = load i32, i32* @debug, align 4
  %512 = and i32 %511, 1024
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %515, label %514

514:                                              ; preds = %510
  br label %521

515:                                              ; preds = %510
  %516 = load i32, i32* %11, align 4
  %517 = load i32, i32* %1, align 4
  %518 = load i32, i32* %13, align 4
  %519 = sub nsw i32 5, %518
  %520 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %516, i32 %517, i32 %519)
  br label %521

521:                                              ; preds = %515, %514
  %522 = load i32, i32* %11, align 4
  %523 = load i32, i32* %1, align 4
  %524 = load i32, i32* %13, align 4
  %525 = sub nsw i32 5, %524
  call void @change_attack(i32 %522, i32 %523, i32 %525)
  br label %526

526:                                              ; preds = %521, %507
  br label %527

527:                                              ; preds = %526, %457
  br label %625

528:                                              ; preds = %449, %441, %432
  %529 = load i32, i32* %11, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %530
  %532 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = load i32, i32* %10, align 4
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %536, label %624

536:                                              ; preds = %528
  %537 = load i32, i32* %11, align 4
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %538
  %540 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %539, i32 0, i32 16
  %541 = getelementptr inbounds [10 x i32], [10 x i32]* %540, i64 0, i64 0
  %542 = load i32, i32* %541, align 4
  %543 = icmp ne i32 %542, 0
  br i1 %543, label %544, label %624

544:                                              ; preds = %536
  %545 = load i32, i32* %11, align 4
  %546 = call i32 @attack(i32 %545, i32* null)
  store i32 %546, i32* %16, align 4
  %547 = load i32, i32* %16, align 4
  %548 = load i32, i32* %11, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %549
  %551 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %550, i32 0, i32 16
  %552 = getelementptr inbounds [10 x i32], [10 x i32]* %551, i64 0, i64 0
  %553 = load i32, i32* %552, align 4
  %554 = icmp slt i32 %547, %553
  br i1 %554, label %555, label %623

555:                                              ; preds = %544
  store i32 1, i32* %17, align 4
  %556 = load i32, i32* %11, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %557
  %559 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %558, i32 0, i32 16
  %560 = getelementptr inbounds [10 x i32], [10 x i32]* %559, i64 0, i64 0
  %561 = load i32, i32* %560, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %603

563:                                              ; preds = %555
  %564 = load i32, i32* %11, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %565
  %567 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %566, i32 0, i32 15
  %568 = getelementptr inbounds [10 x i32], [10 x i32]* %567, i64 0, i64 0
  %569 = load i32, i32* %568, align 4
  %570 = load i32, i32* %10, align 4
  %571 = sub nsw i32 3, %570
  %572 = call i32 @trymove(i32 %569, i32 %571, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %603

574:                                              ; preds = %563
  %575 = load i32, i32* %11, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %576
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i32
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %581, label %582

581:                                              ; preds = %574
  store i32 5, i32* %18, align 4
  br label %586

582:                                              ; preds = %574
  %583 = load i32, i32* %11, align 4
  %584 = call i32 @find_defense(i32 %583, i32* null)
  %585 = sub nsw i32 5, %584
  store i32 %585, i32* %18, align 4
  br label %586

586:                                              ; preds = %582, %581
  %587 = load i32, i32* %18, align 4
  %588 = load i32, i32* %16, align 4
  %589 = icmp sgt i32 %587, %588
  br i1 %589, label %590, label %602

590:                                              ; preds = %586
  %591 = load i32, i32* %18, align 4
  store i32 %591, i32* %16, align 4
  %592 = load i32, i32* %16, align 4
  %593 = load i32, i32* %11, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %594
  %596 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %595, i32 0, i32 16
  %597 = getelementptr inbounds [10 x i32], [10 x i32]* %596, i64 0, i64 0
  %598 = load i32, i32* %597, align 4
  %599 = icmp sge i32 %592, %598
  br i1 %599, label %600, label %601

600:                                              ; preds = %590
  store i32 0, i32* %17, align 4
  br label %601

601:                                              ; preds = %600, %590
  br label %602

602:                                              ; preds = %601, %586
  call void @popgo()
  br label %603

603:                                              ; preds = %602, %563, %555
  %604 = load i32, i32* %17, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %622

606:                                              ; preds = %603
  %607 = load i32, i32* @debug, align 4
  %608 = and i32 %607, 1024
  %609 = icmp ne i32 %608, 0
  br i1 %609, label %611, label %610

610:                                              ; preds = %606
  br label %617

611:                                              ; preds = %606
  %612 = load i32, i32* %11, align 4
  %613 = load i32, i32* %1, align 4
  %614 = load i32, i32* %16, align 4
  %615 = sub nsw i32 5, %614
  %616 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %612, i32 %613, i32 %615)
  br label %617

617:                                              ; preds = %611, %610
  %618 = load i32, i32* %11, align 4
  %619 = load i32, i32* %1, align 4
  %620 = load i32, i32* %16, align 4
  %621 = sub nsw i32 5, %620
  call void @change_defense(i32 %618, i32 %619, i32 %621)
  br label %622

622:                                              ; preds = %617, %603
  br label %623

623:                                              ; preds = %622, %544
  br label %624

624:                                              ; preds = %623, %536, %528
  br label %625

625:                                              ; preds = %624, %527
  br label %626

626:                                              ; preds = %625, %431
  %627 = load i32, i32* %11, align 4
  %628 = add nsw i32 %627, 1
  store i32 %628, i32* %11, align 4
  br label %409, !llvm.loop !11

629:                                              ; preds = %409
  call void @decrease_depth_values()
  call void @popgo()
  br label %630

630:                                              ; preds = %629, %399, %393
  %631 = load i32, i32* %10, align 4
  %632 = add nsw i32 %631, 1
  store i32 %632, i32* %10, align 4
  br label %382, !llvm.loop !12

633:                                              ; preds = %382
  br label %634

634:                                              ; preds = %633, %380
  %635 = load i32, i32* %1, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %1, align 4
  br label %370, !llvm.loop !13

637:                                              ; preds = %370
  %638 = load i32, i32* @stackp, align 4
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %640, label %641

640:                                              ; preds = %637
  br label %642

641:                                              ; preds = %637
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 382, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %642

642:                                              ; preds = %641, %640
  store i32 21, i32* %1, align 4
  br label %643

643:                                              ; preds = %759, %642
  %644 = load i32, i32* %1, align 4
  %645 = icmp slt i32 %644, 400
  br i1 %645, label %646, label %762

646:                                              ; preds = %643
  %647 = load i32, i32* %1, align 4
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %648
  %650 = load i8, i8* %649, align 1
  %651 = zext i8 %650 to i32
  %652 = icmp eq i32 %651, 1
  br i1 %652, label %660, label %653

653:                                              ; preds = %646
  %654 = load i32, i32* %1, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %655
  %657 = load i8, i8* %656, align 1
  %658 = zext i8 %657 to i32
  %659 = icmp eq i32 %658, 2
  br i1 %659, label %660, label %758

660:                                              ; preds = %653, %646
  %661 = load i32, i32* %1, align 4
  %662 = add nsw i32 %661, 20
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %663
  %665 = load i8, i8* %664, align 1
  %666 = zext i8 %665 to i32
  %667 = icmp eq i32 %666, 1
  br i1 %667, label %676, label %668

668:                                              ; preds = %660
  %669 = load i32, i32* %1, align 4
  %670 = add nsw i32 %669, 20
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %671
  %673 = load i8, i8* %672, align 1
  %674 = zext i8 %673 to i32
  %675 = icmp eq i32 %674, 2
  br i1 %675, label %676, label %758

676:                                              ; preds = %668, %660
  %677 = load i32, i32* %1, align 4
  %678 = load i32, i32* %1, align 4
  %679 = add nsw i32 %678, 20
  %680 = call i32 @is_same_worm(i32 %677, i32 %679)
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %758, label %682

682:                                              ; preds = %676
  %683 = load i32, i32* %1, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %684
  %686 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %685, i32 0, i32 16
  %687 = getelementptr inbounds [10 x i32], [10 x i32]* %686, i64 0, i64 0
  %688 = load i32, i32* %687, align 4
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %757

690:                                              ; preds = %682
  %691 = load i32, i32* %1, align 4
  %692 = add nsw i32 %691, 20
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %693
  %695 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %694, i32 0, i32 16
  %696 = getelementptr inbounds [10 x i32], [10 x i32]* %695, i64 0, i64 0
  %697 = load i32, i32* %696, align 4
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %757

699:                                              ; preds = %690
  %700 = load i32, i32* %1, align 4
  %701 = sext i32 %700 to i64
  %702 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %701
  %703 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %702, i32 0, i32 18
  %704 = getelementptr inbounds [10 x i32], [10 x i32]* %703, i64 0, i64 0
  %705 = load i32, i32* %704, align 4
  %706 = icmp eq i32 %705, 0
  br i1 %706, label %707, label %727

707:                                              ; preds = %699
  %708 = load i32, i32* %1, align 4
  %709 = add nsw i32 %708, 20
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %710
  %712 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %711, i32 0, i32 15
  %713 = getelementptr inbounds [10 x i32], [10 x i32]* %712, i64 0, i64 0
  %714 = load i32, i32* %713, align 4
  %715 = load i32, i32* %1, align 4
  %716 = call i32 @does_defend(i32 %714, i32 %715)
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %727

718:                                              ; preds = %707
  %719 = load i32, i32* %1, align 4
  %720 = load i32, i32* %1, align 4
  %721 = add nsw i32 %720, 20
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %722
  %724 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %723, i32 0, i32 15
  %725 = getelementptr inbounds [10 x i32], [10 x i32]* %724, i64 0, i64 0
  %726 = load i32, i32* %725, align 4
  call void @change_defense(i32 %719, i32 %726, i32 5)
  br label %727

727:                                              ; preds = %718, %707, %699
  %728 = load i32, i32* %1, align 4
  %729 = add nsw i32 %728, 20
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %730
  %732 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %731, i32 0, i32 18
  %733 = getelementptr inbounds [10 x i32], [10 x i32]* %732, i64 0, i64 0
  %734 = load i32, i32* %733, align 4
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %756

736:                                              ; preds = %727
  %737 = load i32, i32* %1, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %738
  %740 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %739, i32 0, i32 15
  %741 = getelementptr inbounds [10 x i32], [10 x i32]* %740, i64 0, i64 0
  %742 = load i32, i32* %741, align 4
  %743 = load i32, i32* %1, align 4
  %744 = add nsw i32 %743, 20
  %745 = call i32 @does_defend(i32 %742, i32 %744)
  %746 = icmp ne i32 %745, 0
  br i1 %746, label %747, label %756

747:                                              ; preds = %736
  %748 = load i32, i32* %1, align 4
  %749 = add nsw i32 %748, 20
  %750 = load i32, i32* %1, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %751
  %753 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %752, i32 0, i32 15
  %754 = getelementptr inbounds [10 x i32], [10 x i32]* %753, i64 0, i64 0
  %755 = load i32, i32* %754, align 4
  call void @change_defense(i32 %749, i32 %755, i32 5)
  br label %756

756:                                              ; preds = %747, %736, %727
  br label %757

757:                                              ; preds = %756, %690, %682
  br label %758

758:                                              ; preds = %757, %676, %668, %653
  br label %759

759:                                              ; preds = %758
  %760 = load i32, i32* %1, align 4
  %761 = add nsw i32 %760, 1
  store i32 %761, i32* %1, align 4
  br label %643, !llvm.loop !14

762:                                              ; preds = %643
  store i32 21, i32* %1, align 4
  br label %763

763:                                              ; preds = %879, %762
  %764 = load i32, i32* %1, align 4
  %765 = icmp slt i32 %764, 400
  br i1 %765, label %766, label %882

766:                                              ; preds = %763
  %767 = load i32, i32* %1, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %768
  %770 = load i8, i8* %769, align 1
  %771 = zext i8 %770 to i32
  %772 = icmp eq i32 %771, 1
  br i1 %772, label %780, label %773

773:                                              ; preds = %766
  %774 = load i32, i32* %1, align 4
  %775 = sext i32 %774 to i64
  %776 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %775
  %777 = load i8, i8* %776, align 1
  %778 = zext i8 %777 to i32
  %779 = icmp eq i32 %778, 2
  br i1 %779, label %780, label %878

780:                                              ; preds = %773, %766
  %781 = load i32, i32* %1, align 4
  %782 = add nsw i32 %781, 1
  %783 = sext i32 %782 to i64
  %784 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %783
  %785 = load i8, i8* %784, align 1
  %786 = zext i8 %785 to i32
  %787 = icmp eq i32 %786, 1
  br i1 %787, label %796, label %788

788:                                              ; preds = %780
  %789 = load i32, i32* %1, align 4
  %790 = add nsw i32 %789, 1
  %791 = sext i32 %790 to i64
  %792 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %791
  %793 = load i8, i8* %792, align 1
  %794 = zext i8 %793 to i32
  %795 = icmp eq i32 %794, 2
  br i1 %795, label %796, label %878

796:                                              ; preds = %788, %780
  %797 = load i32, i32* %1, align 4
  %798 = load i32, i32* %1, align 4
  %799 = add nsw i32 %798, 1
  %800 = call i32 @is_same_worm(i32 %797, i32 %799)
  %801 = icmp ne i32 %800, 0
  br i1 %801, label %878, label %802

802:                                              ; preds = %796
  %803 = load i32, i32* %1, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %804
  %806 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %805, i32 0, i32 16
  %807 = getelementptr inbounds [10 x i32], [10 x i32]* %806, i64 0, i64 0
  %808 = load i32, i32* %807, align 4
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %810, label %877

810:                                              ; preds = %802
  %811 = load i32, i32* %1, align 4
  %812 = add nsw i32 %811, 1
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %813
  %815 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %814, i32 0, i32 16
  %816 = getelementptr inbounds [10 x i32], [10 x i32]* %815, i64 0, i64 0
  %817 = load i32, i32* %816, align 4
  %818 = icmp ne i32 %817, 0
  br i1 %818, label %819, label %877

819:                                              ; preds = %810
  %820 = load i32, i32* %1, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %821
  %823 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %822, i32 0, i32 18
  %824 = getelementptr inbounds [10 x i32], [10 x i32]* %823, i64 0, i64 0
  %825 = load i32, i32* %824, align 4
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %847

827:                                              ; preds = %819
  %828 = load i32, i32* %1, align 4
  %829 = add nsw i32 %828, 1
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %830
  %832 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %831, i32 0, i32 15
  %833 = getelementptr inbounds [10 x i32], [10 x i32]* %832, i64 0, i64 0
  %834 = load i32, i32* %833, align 4
  %835 = load i32, i32* %1, align 4
  %836 = call i32 @does_defend(i32 %834, i32 %835)
  %837 = icmp ne i32 %836, 0
  br i1 %837, label %838, label %847

838:                                              ; preds = %827
  %839 = load i32, i32* %1, align 4
  %840 = load i32, i32* %1, align 4
  %841 = add nsw i32 %840, 1
  %842 = sext i32 %841 to i64
  %843 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %842
  %844 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %843, i32 0, i32 15
  %845 = getelementptr inbounds [10 x i32], [10 x i32]* %844, i64 0, i64 0
  %846 = load i32, i32* %845, align 4
  call void @change_defense(i32 %839, i32 %846, i32 5)
  br label %847

847:                                              ; preds = %838, %827, %819
  %848 = load i32, i32* %1, align 4
  %849 = add nsw i32 %848, 1
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %850
  %852 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %851, i32 0, i32 18
  %853 = getelementptr inbounds [10 x i32], [10 x i32]* %852, i64 0, i64 0
  %854 = load i32, i32* %853, align 4
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %856, label %876

856:                                              ; preds = %847
  %857 = load i32, i32* %1, align 4
  %858 = sext i32 %857 to i64
  %859 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %858
  %860 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %859, i32 0, i32 15
  %861 = getelementptr inbounds [10 x i32], [10 x i32]* %860, i64 0, i64 0
  %862 = load i32, i32* %861, align 4
  %863 = load i32, i32* %1, align 4
  %864 = add nsw i32 %863, 1
  %865 = call i32 @does_defend(i32 %862, i32 %864)
  %866 = icmp ne i32 %865, 0
  br i1 %866, label %867, label %876

867:                                              ; preds = %856
  %868 = load i32, i32* %1, align 4
  %869 = add nsw i32 %868, 1
  %870 = load i32, i32* %1, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %871
  %873 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %872, i32 0, i32 15
  %874 = getelementptr inbounds [10 x i32], [10 x i32]* %873, i64 0, i64 0
  %875 = load i32, i32* %874, align 4
  call void @change_defense(i32 %869, i32 %875, i32 5)
  br label %876

876:                                              ; preds = %867, %856, %847
  br label %877

877:                                              ; preds = %876, %810, %802
  br label %878

878:                                              ; preds = %877, %796, %788, %773
  br label %879

879:                                              ; preds = %878
  %880 = load i32, i32* %1, align 4
  %881 = add nsw i32 %880, 1
  store i32 %881, i32* %1, align 4
  br label %763, !llvm.loop !15

882:                                              ; preds = %763
  %883 = load i32, i32* @stackp, align 4
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %885, label %886

885:                                              ; preds = %882
  br label %887

886:                                              ; preds = %882
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 443, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %887

887:                                              ; preds = %886, %885
  store i32 21, i32* %1, align 4
  br label %888

888:                                              ; preds = %953, %887
  %889 = load i32, i32* %1, align 4
  %890 = icmp slt i32 %889, 400
  br i1 %890, label %891, label %956

891:                                              ; preds = %888
  %892 = load i32, i32* %1, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %893
  %895 = load i8, i8* %894, align 1
  %896 = zext i8 %895 to i32
  %897 = icmp eq i32 %896, 1
  br i1 %897, label %905, label %898

898:                                              ; preds = %891
  %899 = load i32, i32* %1, align 4
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %900
  %902 = load i8, i8* %901, align 1
  %903 = zext i8 %902 to i32
  %904 = icmp eq i32 %903, 2
  br i1 %904, label %905, label %910

905:                                              ; preds = %898, %891
  %906 = load i32, i32* %1, align 4
  %907 = load i32, i32* %1, align 4
  %908 = call i32 @is_worm_origin(i32 %906, i32 %907)
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %911, label %910

910:                                              ; preds = %905, %898
  br label %953

911:                                              ; preds = %905
  %912 = load i32, i32* %1, align 4
  %913 = call i32 @find_lunch(i32 %912, i32* %19)
  %914 = icmp ne i32 %913, 0
  br i1 %914, label %915, label %946

915:                                              ; preds = %911
  %916 = load i32, i32* %19, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %917
  %919 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %918, i32 0, i32 16
  %920 = getelementptr inbounds [10 x i32], [10 x i32]* %919, i64 0, i64 0
  %921 = load i32, i32* %920, align 4
  %922 = icmp eq i32 %921, 5
  br i1 %922, label %931, label %923

923:                                              ; preds = %915
  %924 = load i32, i32* %19, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %925
  %927 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %926, i32 0, i32 16
  %928 = getelementptr inbounds [10 x i32], [10 x i32]* %927, i64 0, i64 0
  %929 = load i32, i32* %928, align 4
  %930 = icmp eq i32 %929, 4
  br i1 %930, label %931, label %946

931:                                              ; preds = %923, %915
  %932 = load i32, i32* @debug, align 4
  %933 = and i32 %932, 1024
  %934 = icmp ne i32 %933, 0
  br i1 %934, label %936, label %935

935:                                              ; preds = %931
  br label %940

936:                                              ; preds = %931
  %937 = load i32, i32* %1, align 4
  %938 = load i32, i32* %19, align 4
  %939 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %937, i32 %938)
  br label %940

940:                                              ; preds = %936, %935
  %941 = load i32, i32* %19, align 4
  %942 = load i32, i32* %1, align 4
  %943 = sext i32 %942 to i64
  %944 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %943
  %945 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %944, i32 0, i32 8
  store i32 %941, i32* %945, align 4
  br label %951

946:                                              ; preds = %923, %911
  %947 = load i32, i32* %1, align 4
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %948
  %950 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %949, i32 0, i32 8
  store i32 0, i32* %950, align 4
  br label %951

951:                                              ; preds = %946, %940
  %952 = load i32, i32* %1, align 4
  call void @propagate_worm(i32 %952)
  br label %953

953:                                              ; preds = %951, %910
  %954 = load i32, i32* %1, align 4
  %955 = add nsw i32 %954, 1
  store i32 %955, i32* %1, align 4
  br label %888, !llvm.loop !16

956:                                              ; preds = %888
  %957 = load i32, i32* @disable_threat_computation, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %960, label %959

959:                                              ; preds = %956
  call void @find_worm_threats()
  br label %960

960:                                              ; preds = %959, %956
  store i32 21, i32* %1, align 4
  br label %961

961:                                              ; preds = %1038, %960
  %962 = load i32, i32* %1, align 4
  %963 = icmp slt i32 %962, 400
  br i1 %963, label %964, label %1041

964:                                              ; preds = %961
  %965 = load i32, i32* %1, align 4
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %966
  %968 = load i8, i8* %967, align 1
  %969 = zext i8 %968 to i32
  %970 = icmp eq i32 %969, 1
  br i1 %970, label %978, label %971

971:                                              ; preds = %964
  %972 = load i32, i32* %1, align 4
  %973 = sext i32 %972 to i64
  %974 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %973
  %975 = load i8, i8* %974, align 1
  %976 = zext i8 %975 to i32
  %977 = icmp eq i32 %976, 2
  br i1 %977, label %978, label %1037

978:                                              ; preds = %971, %964
  %979 = load i32, i32* %1, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %980
  %982 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %981, i32 0, i32 3
  %983 = load i32, i32* %982, align 4
  %984 = load i32, i32* %1, align 4
  %985 = icmp eq i32 %983, %984
  br i1 %985, label %986, label %1037

986:                                              ; preds = %978
  %987 = load i32, i32* %1, align 4
  %988 = sext i32 %987 to i64
  %989 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %988
  %990 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %989, i32 0, i32 11
  %991 = load i32, i32* %990, align 4
  %992 = icmp eq i32 %991, 0
  br i1 %992, label %993, label %1037

993:                                              ; preds = %986
  %994 = load i32, i32* %1, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %995
  %997 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %996, i32 0, i32 5
  %998 = load i32, i32* %997, align 4
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1037

1000:                                             ; preds = %993
  %1001 = load i32, i32* %1, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1002
  %1004 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1003, i32 0, i32 9
  %1005 = load i32, i32* %1004, align 4
  %1006 = icmp ne i32 %1005, 0
  br i1 %1006, label %1037, label %1007

1007:                                             ; preds = %1000
  %1008 = load i32, i32* %1, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1009
  %1011 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1010, i32 0, i32 8
  %1012 = load i32, i32* %1011, align 4
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %1037

1014:                                             ; preds = %1007
  %1015 = load i32, i32* %1, align 4
  %1016 = call i32 @examine_cavity(i32 %1015, i32* %20)
  store i32 %1016, i32* %21, align 4
  %1017 = load i32, i32* %21, align 4
  %1018 = icmp ne i32 %1017, 3
  br i1 %1018, label %1019, label %1036

1019:                                             ; preds = %1014
  %1020 = load i32, i32* %20, align 4
  %1021 = icmp slt i32 %1020, 3
  br i1 %1021, label %1022, label %1036

1022:                                             ; preds = %1019
  %1023 = load i32, i32* @debug, align 4
  %1024 = and i32 %1023, 1024
  %1025 = icmp ne i32 %1024, 0
  br i1 %1025, label %1027, label %1026

1026:                                             ; preds = %1022
  br label %1030

1027:                                             ; preds = %1022
  %1028 = load i32, i32* %1, align 4
  %1029 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %1028)
  br label %1030

1030:                                             ; preds = %1027, %1026
  %1031 = load i32, i32* %1, align 4
  %1032 = sext i32 %1031 to i64
  %1033 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1032
  %1034 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1033, i32 0, i32 12
  store i32 1, i32* %1034, align 4
  %1035 = load i32, i32* %1, align 4
  call void @propagate_worm(i32 %1035)
  br label %1036

1036:                                             ; preds = %1030, %1019, %1014
  br label %1037

1037:                                             ; preds = %1036, %1007, %1000, %993, %986, %978, %971
  br label %1038

1038:                                             ; preds = %1037
  %1039 = load i32, i32* %1, align 4
  %1040 = add nsw i32 %1039, 1
  store i32 %1040, i32* %1, align 4
  br label %961, !llvm.loop !17

1041:                                             ; preds = %24, %961
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_worms() #0 {
  %1 = alloca i32, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([400 x %struct.worm_data]* @worm to i8*), i8 0, i64 152000, i1 false)
  store i32 21, i32* %1, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 400
  br i1 %4, label %5, label %21

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %17

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %15, i32 0, i32 3
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %12, %5
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %1, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %2, !llvm.loop !18

21:                                               ; preds = %2
  store i32 21, i32* %1, align 4
  br label %22

22:                                               ; preds = %99, %21
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 400
  br i1 %24, label %25, label %102

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32, %25
  br label %99

40:                                               ; preds = %32
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %1, align 4
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %53, i32 0, i32 3
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %57, i32 0, i32 12
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %1, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %61, i32 0, i32 13
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %65, i32 0, i32 14
  store i32 3, i32* %66, align 4
  %67 = load i32, i32* %1, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %69, i32 0, i32 2
  store float 0.000000e+00, float* %70, align 4
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %84, label %77

77:                                               ; preds = %40
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %98

84:                                               ; preds = %77, %40
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @countlib(i32 %85)
  %87 = load i32, i32* %1, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %89, i32 0, i32 4
  store i32 %86, i32* %90, align 4
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @countstones(i32 %91)
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %1, align 4
  call void @propagate_worm(i32 %97)
  br label %98

98:                                               ; preds = %84, %77
  br label %99

99:                                               ; preds = %98, %39
  %100 = load i32, i32* %1, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %1, align 4
  br label %22, !llvm.loop !19

102:                                              ; preds = %22
  ret void
}

declare dso_local i32 @stones_on_board(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_effective_worm_sizes() #0 {
  call void @do_compute_effective_worm_sizes(i32 3, [4 x i32]* getelementptr inbounds ([400 x [4 x i32]], [400 x [4 x i32]]* @close_worms, i64 0, i64 0), i32* getelementptr inbounds ([400 x i32], [400 x i32]* @number_close_worms, i64 0, i64 0), i32 3)
  call void @do_compute_effective_worm_sizes(i32 2, [4 x i32]* getelementptr inbounds ([400 x [4 x i32]], [400 x [4 x i32]]* @close_black_worms, i64 0, i64 0), i32* getelementptr inbounds ([400 x i32], [400 x i32]* @number_close_black_worms, i64 0, i64 0), i32 5)
  call void @do_compute_effective_worm_sizes(i32 1, [4 x i32]* getelementptr inbounds ([400 x [4 x i32]], [400 x [4 x i32]]* @close_white_worms, i64 0, i64 0), i32* getelementptr inbounds ([400 x i32], [400 x i32]* @number_close_white_worms, i64 0, i64 0), i32 5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_unconditional_status() #0 {
  %1 = alloca [400 x i32], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  br label %5

5:                                                ; preds = %86, %0
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 2
  br i1 %7, label %8, label %89

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sub nsw i32 3, %9
  store i32 %10, i32* %4, align 4
  %11 = getelementptr inbounds [400 x i32], [400 x i32]* %1, i64 0, i64 0
  %12 = load i32, i32* %3, align 4
  call void @unconditional_life(i32* %11, i32 %12)
  store i32 21, i32* %2, align 4
  br label %13

13:                                               ; preds = %82, %8
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 400
  br i1 %15, label %16, label %85

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ne i32 %21, 3
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x i32], [400 x i32]* %1, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %16
  br label %82

30:                                               ; preds = %23
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %41, i32 0, i32 14
  store i32 1, i32* %42, align 4
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x i32], [400 x i32]* %1, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %51, i32 0, i32 13
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %38
  br label %81

54:                                               ; preds = %30
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %67, i32 0, i32 14
  store i32 4, i32* %68, align 4
  br label %74

69:                                               ; preds = %61
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %72, i32 0, i32 14
  store i32 5, i32* %73, align 4
  br label %74

74:                                               ; preds = %69, %64
  br label %80

75:                                               ; preds = %54
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %78, i32 0, i32 14
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %75, %74
  br label %81

81:                                               ; preds = %80, %53
  br label %82

82:                                               ; preds = %81, %29
  %83 = load i32, i32* %2, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %2, align 4
  br label %13, !llvm.loop !20

85:                                               ; preds = %13
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %5, !llvm.loop !21

89:                                               ; preds = %5
  %90 = load i32, i32* @stackp, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %94

93:                                               ; preds = %89
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 722, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %94

94:                                               ; preds = %93, %92
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_worm_attacks_and_defenses() #0 {
  %1 = alloca i32, align 4
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
  store i32 21, i32* %1, align 4
  br label %12

12:                                               ; preds = %98, %0
  %13 = load i32, i32* %1, align 4
  %14 = icmp slt i32 %13, 400
  br i1 %14, label %15, label %101

15:                                               ; preds = %12
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %34

29:                                               ; preds = %22, %15
  %30 = load i32, i32* %1, align 4
  %31 = load i32, i32* %1, align 4
  %32 = call i32 @is_worm_origin(i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %22
  br label %98

35:                                               ; preds = %29
  %36 = load i32, i32* @verbose, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %1, align 4
  %41 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.46, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %38
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %75, %42
  %44 = load i32, i32* %2, align 4
  %45 = icmp slt i32 %44, 10
  br i1 %45, label %46, label %78

46:                                               ; preds = %43
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %49, i32 0, i32 16
  %51 = load i32, i32* %2, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %50, i64 0, i64 %52
  store i32 0, i32* %53, align 4
  %54 = load i32, i32* %1, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %56, i32 0, i32 15
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [10 x i32], [10 x i32]* %57, i64 0, i64 %59
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %63, i32 0, i32 18
  %65 = load i32, i32* %2, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %64, i64 0, i64 %66
  store i32 0, i32* %67, align 4
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %70, i32 0, i32 17
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %71, i64 0, i64 %73
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %46
  %76 = load i32, i32* %2, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %2, align 4
  br label %43, !llvm.loop !22

78:                                               ; preds = %43
  %79 = load i32, i32* %1, align 4
  call void @propagate_worm(i32 %79)
  %80 = load i32, i32* %1, align 4
  %81 = call i32 @attack(i32 %80, i32* %5)
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %78
  %85 = load i32, i32* @debug, align 4
  %86 = and i32 %85, 1024
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %93

89:                                               ; preds = %84
  %90 = load i32, i32* %1, align 4
  %91 = load i32, i32* %5, align 4
  %92 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0), i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %89, %88
  %94 = load i32, i32* %1, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* %3, align 4
  call void @change_attack(i32 %94, i32 %95, i32 %96)
  br label %97

97:                                               ; preds = %93, %78
  br label %98

98:                                               ; preds = %97, %34
  %99 = load i32, i32* %1, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %1, align 4
  br label %12, !llvm.loop !23

101:                                              ; preds = %12
  %102 = load i32, i32* @stackp, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %106

105:                                              ; preds = %101
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 764, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %106

106:                                              ; preds = %105, %104
  call void @find_attack_patterns()
  %107 = load i32, i32* @stackp, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %111

110:                                              ; preds = %106
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 768, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %111

111:                                              ; preds = %110, %109
  store i32 21, i32* %1, align 4
  br label %112

112:                                              ; preds = %216, %111
  %113 = load i32, i32* %1, align 4
  %114 = icmp slt i32 %113, 400
  br i1 %114, label %115, label %219

115:                                              ; preds = %112
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %129, label %122

122:                                              ; preds = %115
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 2
  br i1 %128, label %129, label %134

129:                                              ; preds = %122, %115
  %130 = load i32, i32* %1, align 4
  %131 = load i32, i32* %1, align 4
  %132 = call i32 @is_worm_origin(i32 %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %129, %122
  br label %216

135:                                              ; preds = %129
  %136 = load i32, i32* %1, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %138, i32 0, i32 16
  %140 = getelementptr inbounds [10 x i32], [10 x i32]* %139, i64 0, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %215

143:                                              ; preds = %135
  %144 = load i32, i32* @verbose, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %150

147:                                              ; preds = %143
  %148 = load i32, i32* %1, align 4
  %149 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %147, %146
  %151 = load i32, i32* %1, align 4
  %152 = call i32 @find_defense(i32 %151, i32* %6)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %150
  %156 = load i32, i32* @verbose, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  br label %163

159:                                              ; preds = %155
  %160 = load i32, i32* %1, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.49, i64 0, i64 0), i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %158
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %163
  %167 = load i32, i32* %1, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %4, align 4
  call void @change_defense(i32 %167, i32 %168, i32 %169)
  br label %170

170:                                              ; preds = %166, %163
  br label %214

171:                                              ; preds = %150
  %172 = load i32, i32* %1, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %174, i32 0, i32 15
  %176 = getelementptr inbounds [10 x i32], [10 x i32]* %175, i64 0, i64 0
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* %5, align 4
  %179 = load i32, i32* %1, align 4
  %180 = call i32 @liberty_of_string(i32 %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %213, label %182

182:                                              ; preds = %171
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* %1, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @trymove(i32 %183, i32 %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %212

191:                                              ; preds = %182
  %192 = load i32, i32* %1, align 4
  %193 = call i32 @attack(i32 %192, i32* null)
  store i32 %193, i32* %10, align 4
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 5
  br i1 %195, label %196, label %211

196:                                              ; preds = %191
  %197 = load i32, i32* %1, align 4
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* %10, align 4
  %200 = sub nsw i32 5, %199
  call void @change_defense(i32 %197, i32 %198, i32 %200)
  %201 = load i32, i32* @verbose, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %204, label %203

203:                                              ; preds = %196
  br label %210

204:                                              ; preds = %196
  %205 = load i32, i32* %1, align 4
  %206 = load i32, i32* %5, align 4
  %207 = load i32, i32* %10, align 4
  %208 = sub nsw i32 5, %207
  %209 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i64 0, i64 0), i32 %205, i32 %206, i32 %208)
  br label %210

210:                                              ; preds = %204, %203
  br label %211

211:                                              ; preds = %210, %191
  call void @popgo()
  br label %212

212:                                              ; preds = %211, %182
  br label %213

213:                                              ; preds = %212, %171
  br label %214

214:                                              ; preds = %213, %170
  br label %215

215:                                              ; preds = %214, %135
  br label %216

216:                                              ; preds = %215, %134
  %217 = load i32, i32* %1, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %1, align 4
  br label %112, !llvm.loop !24

219:                                              ; preds = %112
  %220 = load i32, i32* @stackp, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %219
  br label %224

223:                                              ; preds = %219
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 804, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %224

224:                                              ; preds = %223, %222
  call void @find_defense_patterns()
  %225 = load i32, i32* @stackp, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %224
  br label %229

228:                                              ; preds = %224
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 808, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %229

229:                                              ; preds = %228, %227
  store i32 21, i32* %1, align 4
  br label %230

230:                                              ; preds = %352, %229
  %231 = load i32, i32* %1, align 4
  %232 = icmp slt i32 %231, 400
  br i1 %232, label %233, label %355

233:                                              ; preds = %230
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  store i32 %238, i32* %8, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp eq i32 %239, 1
  br i1 %240, label %244, label %241

241:                                              ; preds = %233
  %242 = load i32, i32* %8, align 4
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %249

244:                                              ; preds = %241, %233
  %245 = load i32, i32* %1, align 4
  %246 = load i32, i32* %1, align 4
  %247 = call i32 @is_worm_origin(i32 %245, i32 %246)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %244, %241
  br label %352

250:                                              ; preds = %244
  %251 = load i32, i32* %8, align 4
  %252 = sub nsw i32 3, %251
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %1, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %254
  %256 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %255, i32 0, i32 16
  %257 = getelementptr inbounds [10 x i32], [10 x i32]* %256, i64 0, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %261

260:                                              ; preds = %250
  br label %352

261:                                              ; preds = %250
  %262 = load i32, i32* %1, align 4
  %263 = call i32 @findlib(i32 %262, i32 241, i32* getelementptr inbounds ([241 x i32], [241 x i32]* @find_worm_attacks_and_defenses.libs, i64 0, i64 0))
  store i32 %263, i32* %7, align 4
  store i32 0, i32* %2, align 4
  br label %264

264:                                              ; preds = %348, %261
  %265 = load i32, i32* %2, align 4
  %266 = load i32, i32* %7, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %351

268:                                              ; preds = %264
  %269 = load i32, i32* %2, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds [241 x i32], [241 x i32]* @find_worm_attacks_and_defenses.libs, i64 0, i64 %270
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %1, align 4
  %275 = call i32 @attack_move_known(i32 %273, i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %316, label %277

277:                                              ; preds = %268
  %278 = load i32, i32* %11, align 4
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %1, align 4
  %281 = call i32 @trymove(i32 %278, i32 %279, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %280, i32 0, i32 0)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %315

283:                                              ; preds = %277
  %284 = load i32, i32* %1, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %294, label %290

290:                                              ; preds = %283
  %291 = load i32, i32* %1, align 4
  %292 = call i32 @attack(i32 %291, i32* null)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %314

294:                                              ; preds = %290, %283
  %295 = load i32, i32* %1, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %296
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %294
  store i32 0, i32* %4, align 4
  br label %305

302:                                              ; preds = %294
  %303 = load i32, i32* %1, align 4
  %304 = call i32 @find_defense(i32 %303, i32* null)
  store i32 %304, i32* %4, align 4
  br label %305

305:                                              ; preds = %302, %301
  %306 = load i32, i32* %4, align 4
  %307 = icmp ne i32 %306, 5
  br i1 %307, label %308, label %313

308:                                              ; preds = %305
  %309 = load i32, i32* %1, align 4
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* %4, align 4
  %312 = sub nsw i32 5, %311
  call void @change_attack(i32 %309, i32 %310, i32 %312)
  br label %313

313:                                              ; preds = %308, %305
  br label %314

314:                                              ; preds = %313, %290
  call void @popgo()
  br label %315

315:                                              ; preds = %314, %277
  br label %316

316:                                              ; preds = %315, %268
  %317 = load i32, i32* %11, align 4
  %318 = load i32, i32* %1, align 4
  %319 = call i32 @defense_move_known(i32 %317, i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %347, label %321

321:                                              ; preds = %316
  %322 = load i32, i32* %1, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %323
  %325 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %324, i32 0, i32 18
  %326 = getelementptr inbounds [10 x i32], [10 x i32]* %325, i64 0, i64 0
  %327 = load i32, i32* %326, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %346

329:                                              ; preds = %321
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %8, align 4
  %332 = call i32 @trymove(i32 %330, i32 %331, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 0, i32 0, i32 0)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %345

334:                                              ; preds = %329
  %335 = load i32, i32* %1, align 4
  %336 = call i32 @attack(i32 %335, i32* null)
  store i32 %336, i32* %3, align 4
  %337 = load i32, i32* %3, align 4
  %338 = icmp ne i32 %337, 5
  br i1 %338, label %339, label %344

339:                                              ; preds = %334
  %340 = load i32, i32* %1, align 4
  %341 = load i32, i32* %11, align 4
  %342 = load i32, i32* %3, align 4
  %343 = sub nsw i32 5, %342
  call void @change_defense(i32 %340, i32 %341, i32 %343)
  br label %344

344:                                              ; preds = %339, %334
  call void @popgo()
  br label %345

345:                                              ; preds = %344, %329
  br label %346

346:                                              ; preds = %345, %321
  br label %347

347:                                              ; preds = %346, %316
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %2, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %2, align 4
  br label %264, !llvm.loop !25

351:                                              ; preds = %264
  br label %352

352:                                              ; preds = %351, %260, %249
  %353 = load i32, i32* %1, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %1, align 4
  br label %230, !llvm.loop !26

355:                                              ; preds = %230
  %356 = load i32, i32* @stackp, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %359

358:                                              ; preds = %355
  br label %360

359:                                              ; preds = %355
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 860, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %360

360:                                              ; preds = %359, %358
  ret void
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_worm_origin(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ping_cave(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [241 x i32], align 16
  %14 = alloca [400 x i32], align 16
  %15 = alloca [400 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = sub nsw i32 3, %23
  store i32 %24, i32* %17, align 4
  %25 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 0
  %26 = bitcast i32* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 1600, i1 false)
  %27 = load i32, i32* %6, align 4
  %28 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 0
  %29 = call i32 @findlib(i32 %27, i32 241, i32* %28)
  %30 = load i32*, i32** %7, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %43, %5
  %32 = load i32, i32* %12, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %32, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [241 x i32], [241 x i32]* %13, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 %41
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %12, align 4
  br label %31, !llvm.loop !27

46:                                               ; preds = %31
  store i32 21, i32* %11, align 4
  br label %47

47:                                               ; preds = %136, %46
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 400
  br i1 %49, label %50, label %139

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %57, label %135

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %135

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 20
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp ne i32 %69, 3
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 20
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* %17, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %71, %63
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %81, 20
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 3
  br i1 %87, label %88, label %131

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = sub nsw i32 %89, 20
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = load i32, i32* %17, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %131, label %97

97:                                               ; preds = %88, %71
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 3
  br i1 %104, label %105, label %114

105:                                              ; preds = %97
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %17, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %135

114:                                              ; preds = %105, %97
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 3
  br i1 %121, label %122, label %131

122:                                              ; preds = %114
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i32, i32* %17, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %122, %114, %88, %80
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 %133
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %122, %105, %57, %50
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %47, !llvm.loop !28

139:                                              ; preds = %47
  %140 = load i32*, i32** %8, align 8
  store i32 0, i32* %140, align 4
  %141 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  %142 = bitcast i32* %141 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %142, i8 0, i64 1600, i1 false)
  %143 = load i32, i32* %6, align 4
  %144 = load i32*, i32** %8, align 8
  %145 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 0
  %146 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  %147 = load i32, i32* %16, align 4
  call void @ping_recurse(i32 %143, i32* %144, i32* %145, i32* %146, i32 %147)
  %148 = load i32*, i32** %9, align 8
  store i32 0, i32* %148, align 4
  %149 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  %150 = bitcast i32* %149 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %150, i8 0, i64 1600, i1 false)
  %151 = load i32, i32* %6, align 4
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 0
  %154 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  %155 = load i32, i32* %16, align 4
  call void @ping_recurse(i32 %151, i32* %152, i32* %153, i32* %154, i32 %155)
  %156 = load i32*, i32** %10, align 8
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  %158 = bitcast i32* %157 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %158, i8 0, i64 1600, i1 false)
  %159 = load i32, i32* %6, align 4
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds [400 x i32], [400 x i32]* %15, i64 0, i64 0
  %162 = getelementptr inbounds [400 x i32], [400 x i32]* %14, i64 0, i64 0
  %163 = load i32, i32* %16, align 4
  call void @ping_recurse(i32 %159, i32* %160, i32* %161, i32* %162, i32 %163)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @propagate_worm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [361 x i32], align 16
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @stackp, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1174, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %24, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* %2, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %10
  br label %32

25:                                               ; preds = %17
  %26 = load i32, i32* %2, align 4
  %27 = sdiv i32 %26, 20
  %28 = sub nsw i32 %27, 1
  %29 = load i32, i32* %2, align 4
  %30 = srem i32 %29, 20
  %31 = sub nsw i32 %30, 1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1175, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %28, i32 %31)
  br label %32

32:                                               ; preds = %25, %24
  %33 = load i32, i32* %2, align 4
  %34 = getelementptr inbounds [361 x i32], [361 x i32]* %5, i64 0, i64 0
  %35 = call i32 @findstones(i32 %33, i32 361, i32* %34)
  store i32 %35, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %60, %32
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %63

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [361 x i32], [361 x i32]* %5, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %40
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [361 x i32], [361 x i32]* %5, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %52
  %54 = load i32, i32* %2, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %55
  %57 = bitcast %struct.worm_data* %53 to i8*
  %58 = bitcast %struct.worm_data* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 380, i1 false)
  br label %59

59:                                               ; preds = %47, %40
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %36, !llvm.loop !29

63:                                               ; preds = %36
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_same_worm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %6
  %8 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %9, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @count_common_libs(i32, i32) #1

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [400 x i32], align 16
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %5, align 4
  %6 = getelementptr inbounds [400 x i32], [400 x i32]* %4, i64 0, i64 0
  %7 = bitcast i32* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 1600, i1 false)
  store i32 21, i32* %3, align 4
  br label %8

8:                                                ; preds = %43, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 400
  br i1 %10, label %11, label %46

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %42

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [400 x i32], [400 x i32]* %4, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @is_same_worm(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %3, align 4
  %39 = getelementptr inbounds [400 x i32], [400 x i32]* %4, i64 0, i64 0
  call void @markcomponent(i32 %37, i32 %38, i32* %39)
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %36, %31, %18, %11
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %8, !llvm.loop !30

46:                                               ; preds = %8
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare dso_local void @increase_depth_values() #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local void @popgo() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_attack(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @debug, align 4
  %13 = and i32 %12, 1024
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %16, %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %27, i32 0, i32 15
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %32, i32 0, i32 16
  %34 = getelementptr inbounds [10 x i32], [10 x i32]* %33, i64 0, i64 0
  call void @change_tactical_point(i32 %22, i32 %23, i32 %24, i32* %29, i32* %34)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_defense(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %17, i32 0, i32 17
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %22, i32 0, i32 18
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  call void @change_tactical_point(i32 %12, i32 %13, i32 %14, i32* %19, i32* %24)
  ret void
}

declare dso_local void @decrease_depth_values() #1

declare dso_local i32 @does_defend(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_lunch(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %2
  br label %30

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = sdiv i32 %24, 20
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %4, align 4
  %28 = srem i32 %27, 20
  %29 = sub nsw i32 %28, 1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 962, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.58, i64 0, i64 0), i32 %26, i32 %29)
  br label %30

30:                                               ; preds = %23, %22
  %31 = load i32, i32* @stackp, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = sdiv i32 %35, 20
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %4, align 4
  %39 = srem i32 %38, 20
  %40 = sub nsw i32 %39, 1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 963, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %40)
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i32*, i32** %5, align 8
  store i32 0, i32* %42, align 4
  store i32 21, i32* %6, align 4
  br label %43

43:                                               ; preds = %151, %41
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 400
  br i1 %45, label %46, label %154

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = sub nsw i32 3, %56
  %58 = icmp ne i32 %51, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  br label %151

60:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %147, %60
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 8
  br i1 %63, label %64, label %150

64:                                               ; preds = %61
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %65, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp ne i32 %75, 3
  br i1 %76, label %77, label %146

77:                                               ; preds = %64
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @is_same_worm(i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %146

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %85, i32 0, i32 16
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %86, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %145

90:                                               ; preds = %82
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @is_ko_point(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %145, label %94

94:                                               ; preds = %90
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %137, label %98

98:                                               ; preds = %94
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %100
  %102 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %107, i32 0, i32 9
  %109 = load i32, i32* %108, align 4
  %110 = icmp sgt i32 %103, %109
  br i1 %110, label %137, label %111

111:                                              ; preds = %98
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %5, align 8
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %120, i32 0, i32 9
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %116, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %111
  %125 = load i32, i32* %6, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %132
  %134 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %129, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %124, %98, %94
  %138 = load i32, i32* %6, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  br label %144

144:                                              ; preds = %137, %124, %111
  br label %145

145:                                              ; preds = %144, %90, %82
  br label %150

146:                                              ; preds = %77, %64
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %61, !llvm.loop !31

150:                                              ; preds = %145, %61
  br label %151

151:                                              ; preds = %150, %59
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %6, align 4
  br label %43, !llvm.loop !32

154:                                              ; preds = %43
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  store i32 1, i32* %3, align 4
  br label %160

159:                                              ; preds = %154
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %158
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_worm_threats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 21, i32* %1, align 4
  br label %11

11:                                               ; preds = %172, %0
  %12 = load i32, i32* %1, align 4
  %13 = icmp slt i32 %12, 400
  br i1 %13, label %14, label %175

14:                                               ; preds = %11
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %25, label %30

25:                                               ; preds = %22, %14
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @is_worm_origin(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25, %22
  br label %172

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 3, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %36, i32 0, i32 16
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %37, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %31
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %45, i32 0, i32 19
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %46, i64 0, i64 0
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %50, i32 0, i32 20
  %52 = getelementptr inbounds [10 x i32], [10 x i32]* %51, i64 0, i64 0
  %53 = call i32 @attack_threats(i32 %42, i32 10, i32* %47, i32* %52)
  br label %54

54:                                               ; preds = %41, %31
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %57, i32 0, i32 16
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %58, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %171

62:                                               ; preds = %54
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %65, i32 0, i32 18
  %67 = getelementptr inbounds [10 x i32], [10 x i32]* %66, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %171

70:                                               ; preds = %62
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @findlib(i32 %71, i32 241, i32* getelementptr inbounds ([241 x i32], [241 x i32]* @find_worm_threats.libs, i64 0, i64 0))
  store i32 %72, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %167, %70
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %170

77:                                               ; preds = %73
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [241 x i32], [241 x i32]* @find_worm_threats.libs, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @trymove(i32 %82, i32 %83, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 0, i32 0, i32 0)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %77
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @attack(i32 %87, i32* null)
  %89 = icmp eq i32 %88, 5
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @find_defense(i32 %91, i32* null)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* %1, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  call void @change_defense_threat(i32 %96, i32 %97, i32 %98)
  br label %99

99:                                               ; preds = %95, %90
  br label %100

100:                                              ; preds = %99, %86
  call void @popgo()
  br label %101

101:                                              ; preds = %100, %77
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %163, %101
  %103 = load i32, i32* %4, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %166

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [241 x i32], [241 x i32]* @find_worm_threats.libs, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %109, %113
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp ne i32 %119, 3
  br i1 %120, label %121, label %140

121:                                              ; preds = %105
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %140, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp eq i32 %133, 2
  br i1 %134, label %140, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %1, align 4
  %138 = call i32 @liberty_of_string(i32 %136, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %128, %121, %105
  br label %163

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %1, align 4
  %145 = call i32 @trymove(i32 %142, i32 %143, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i64 0, i64 0), i32 %144, i32 0, i32 0)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load i32, i32* %1, align 4
  %149 = call i32 @attack(i32 %148, i32* null)
  %150 = icmp eq i32 %149, 5
  br i1 %150, label %151, label %161

151:                                              ; preds = %147
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @find_defense(i32 %152, i32* null)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i32, i32* %1, align 4
  %158 = load i32, i32* %9, align 4
  %159 = load i32, i32* %10, align 4
  call void @change_defense_threat(i32 %157, i32 %158, i32 %159)
  br label %160

160:                                              ; preds = %156, %151
  br label %161

161:                                              ; preds = %160, %147
  call void @popgo()
  br label %162

162:                                              ; preds = %161, %141
  br label %163

163:                                              ; preds = %162, %140
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %4, align 4
  br label %102, !llvm.loop !33

166:                                              ; preds = %102
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %73, !llvm.loop !34

170:                                              ; preds = %73
  br label %171

171:                                              ; preds = %170, %62, %54
  br label %172

172:                                              ; preds = %171, %30
  %173 = load i32, i32* %1, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %1, align 4
  br label %11, !llvm.loop !35

175:                                              ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @examine_cavity(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [400 x i32], align 16
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %9, 421
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %26

19:                                               ; preds = %11, %2
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %4, align 4
  %24 = srem i32 %23, 20
  %25 = sub nsw i32 %24, 1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1433, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.63, i64 0, i64 0), i32 %22, i32 %25)
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32*, i32** %5, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %31

30:                                               ; preds = %26
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1434, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0), i32 -1, i32 -1)
  br label %31

31:                                               ; preds = %30, %29
  %32 = getelementptr inbounds [400 x i32], [400 x i32]* %7, i64 0, i64 0
  %33 = bitcast i32* %32 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %33, i8 0, i64 1600, i1 false)
  %34 = load i32*, i32** %5, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %48, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %41, %31
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @find_origin(i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32, i32* %4, align 4
  %53 = getelementptr inbounds [400 x i32], [400 x i32]* %7, i64 0, i64 0
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %8, align 4
  call void @cavity_recurse(i32 %52, i32* %53, i32* %6, i32* %54, i32 %55)
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 3, i32* %3, align 4
  br label %87

59:                                               ; preds = %51
  %60 = load i32, i32* %6, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 5, i32* %3, align 4
  br label %87

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 4, i32* %3, align 4
  br label %87

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call i32 @stones_on_board(i32 3)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = call i32 @stones_on_board(i32 3)
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @countstones(i32 %81)
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79, %73
  br label %86

85:                                               ; preds = %79, %76, %67
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1462, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.65, i64 0, i64 0), i32 -1, i32 -1)
  br label %86

86:                                               ; preds = %85, %84
  store i32 3, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %66, %62, %58
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @change_tactical_point(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %19

18:                                               ; preds = %5
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1152, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i64 0, i64 0), i32 -1, i32 -1)
  br label %19

19:                                               ; preds = %18, %17
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %20, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %29

28:                                               ; preds = %19
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.60, i64 0, i64 0), i32 -1, i32 -1)
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32*, i32** %10, align 8
  call void @movelist_change_point(i32 %30, i32 %31, i32 10, i32* %32, i32* %33)
  %34 = load i32, i32* %6, align 4
  call void @propagate_worm2(i32 %34)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_defense_threat(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %17, i32 0, i32 21
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %22, i32 0, i32 22
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  call void @change_tactical_point(i32 %12, i32 %13, i32 %14, i32* %19, i32* %24)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @change_attack_threat(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %17, i32 0, i32 19
  %19 = getelementptr inbounds [10 x i32], [10 x i32]* %18, i64 0, i64 0
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %22, i32 0, i32 20
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  call void @change_tactical_point(i32 %12, i32 %13, i32 %14, i32* %19, i32* %24)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attack_move_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %8, i32 0, i32 15
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %13, i32 0, i32 16
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %16 = call i32 @movelist_move_known(i32 %5, i32 10, i32* %10, i32* %15)
  ret i32 %16
}

declare dso_local i32 @movelist_move_known(i32, i32, i32*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defense_move_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %8, i32 0, i32 17
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %13, i32 0, i32 18
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %16 = call i32 @movelist_move_known(i32 %5, i32 10, i32* %10, i32* %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attack_threat_move_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %8, i32 0, i32 19
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %13, i32 0, i32 20
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %16 = call i32 @movelist_move_known(i32 %5, i32 10, i32* %10, i32* %15)
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @defense_threat_move_known(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %8, i32 0, i32 21
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %9, i64 0, i64 0
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %12
  %14 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %13, i32 0, i32 22
  %15 = getelementptr inbounds [10 x i32], [10 x i32]* %14, i64 0, i64 0
  %16 = call i32 @movelist_move_known(i32 %5, i32 10, i32* %10, i32* %15)
  ret i32 %16
}

declare dso_local i32 @findstones(i32, i32, i32*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @worm_reasons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 21, i32* %3, align 4
  br label %5

5:                                                ; preds = %177, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 400
  br i1 %7, label %8, label %180

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %8
  br label %177

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @is_worm_origin(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %177

29:                                               ; preds = %23
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %2, align 4
  %36 = sub nsw i32 3, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %103

38:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %99, %38
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 10
  br i1 %41, label %42, label %102

42:                                               ; preds = %39
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %45, i32 0, i32 16
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %46, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %55, i32 0, i32 15
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [10 x i32], [10 x i32]* %56, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %63
  %65 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %64, i32 0, i32 16
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [10 x i32], [10 x i32]* %65, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  call void @add_attack_move(i32 %60, i32 %61, i32 %69)
  br label %70

70:                                               ; preds = %52, %42
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %73, i32 0, i32 20
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %74, i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %70
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %83, i32 0, i32 19
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [10 x i32], [10 x i32]* %84, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %92, i32 0, i32 20
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [10 x i32], [10 x i32]* %93, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  call void @add_attack_threat_move(i32 %88, i32 %89, i32 %97)
  br label %98

98:                                               ; preds = %80, %70
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %39, !llvm.loop !36

102:                                              ; preds = %39
  br label %103

103:                                              ; preds = %102, %29
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %2, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %176

111:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %172, %111
  %113 = load i32, i32* %4, align 4
  %114 = icmp slt i32 %113, 10
  br i1 %114, label %115, label %175

115:                                              ; preds = %112
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %118, i32 0, i32 18
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [10 x i32], [10 x i32]* %119, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %143

125:                                              ; preds = %115
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %127
  %129 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %128, i32 0, i32 17
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [10 x i32], [10 x i32]* %129, i64 0, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %3, align 4
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %137, i32 0, i32 18
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %138, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  call void @add_defense_move(i32 %133, i32 %134, i32 %142)
  br label %143

143:                                              ; preds = %125, %115
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %146, i32 0, i32 22
  %148 = load i32, i32* %4, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* %147, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %171

153:                                              ; preds = %143
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %155
  %157 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %156, i32 0, i32 21
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [10 x i32], [10 x i32]* %157, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %3, align 4
  %163 = load i32, i32* %3, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %164
  %166 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %165, i32 0, i32 22
  %167 = load i32, i32* %4, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [10 x i32], [10 x i32]* %166, i64 0, i64 %168
  %170 = load i32, i32* %169, align 4
  call void @add_defense_threat_move(i32 %161, i32 %162, i32 %170)
  br label %171

171:                                              ; preds = %153, %143
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %4, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %4, align 4
  br label %112, !llvm.loop !37

175:                                              ; preds = %112
  br label %176

176:                                              ; preds = %175, %103
  br label %177

177:                                              ; preds = %176, %28, %22
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  br label %5, !llvm.loop !38

180:                                              ; preds = %5
  ret void
}

declare dso_local void @add_attack_move(i32, i32, i32) #1

declare dso_local void @add_attack_threat_move(i32, i32, i32) #1

declare dso_local void @add_defense_move(i32, i32, i32) #1

declare dso_local void @add_defense_threat_move(i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_lively_stones(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %6, i8 0, i64 400, i1 false)
  store i32 21, i32* %5, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 400
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  br label %26

19:                                               ; preds = %10
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 20
  %25 = sub nsw i32 %24, 1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1683, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %22, i32 %25)
  br label %26

26:                                               ; preds = %19, %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %7, !llvm.loop !39

30:                                               ; preds = %7
  store i32 21, i32* %5, align 4
  br label %31

31:                                               ; preds = %85, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 400
  br i1 %33, label %34, label %88

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %84

48:                                               ; preds = %41, %34
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %48
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %59, i32 0, i32 16
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = load i32, i32* %3, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %64
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %75, i32 0, i32 18
  %77 = getelementptr inbounds [10 x i32], [10 x i32]* %76, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %72, %56
  %81 = load i32, i32* %5, align 4
  %82 = load i8*, i8** %4, align 8
  call void @mark_string(i32 %81, i8* %82, i8 signext 1)
  br label %83

83:                                               ; preds = %80, %72, %64
  br label %84

84:                                               ; preds = %83, %48, %41
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %31, !llvm.loop !40

88:                                               ; preds = %31
  ret void
}

declare dso_local void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_worm_influence() #0 {
  %1 = alloca [400 x i8], align 16
  %2 = getelementptr inbounds [400 x i8], [400 x i8]* %1, i64 0, i64 0
  call void @get_lively_stones(i32 2, i8* %2)
  %3 = getelementptr inbounds [400 x i8], [400 x i8]* %1, i64 0, i64 0
  call void @compute_influence(i32 2, i8* %3, float* null, %struct.influence_data* @initial_black_influence, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %4 = getelementptr inbounds [400 x i8], [400 x i8]* %1, i64 0, i64 0
  call void @get_lively_stones(i32 1, i8* %4)
  %5 = getelementptr inbounds [400 x i8], [400 x i8]* %1, i64 0, i64 0
  call void @compute_influence(i32 1, i8* %5, float* null, %struct.influence_data* @initial_white_influence, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local void @compute_influence(i32, i8*, float*, %struct.influence_data*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ascii_report_worm(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @board_size, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @string_to_location(i32 %5, i8* %6, i32* %3, i32* %4)
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  call void @report_worm(i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @string_to_location(i32, i8*, i32*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_worm(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = mul nsw i32 %7, 20
  %9 = add nsw i32 21, %8
  %10 = load i32, i32* %4, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %19)
  br label %371

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %44, i32 0, i32 2
  %46 = load float, float* %45, align 4
  %47 = fpext float %46 to double
  %48 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.18, i64 0, i64 0), i8* %31, i32 %36, i32 %41, double %47)
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.21, i64 0, i64 0), i32 %53, i32 %58, i32 %63, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %72, i32 0, i32 15
  %74 = getelementptr inbounds [10 x i32], [10 x i32]* %73, i64 0, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %21
  %78 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  br label %119

79:                                               ; preds = %21
  %80 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %96, %79
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %84, i32 0, i32 15
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %85, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %117

91:                                               ; preds = %81
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %99, i32 0, i32 15
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [10 x i32], [10 x i32]* %100, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %107, i32 0, i32 16
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [10 x i32], [10 x i32]* %108, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @result_to_string(i32 %112)
  %114 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %104, i8* %113)
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %81, !llvm.loop !41

117:                                              ; preds = %81
  %118 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %77
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %122, i32 0, i32 17
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* %123, i64 0, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %119
  %128 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0))
  br label %169

129:                                              ; preds = %119
  %130 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %146, %129
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %133
  %135 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %134, i32 0, i32 17
  %136 = load i32, i32* %6, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [10 x i32], [10 x i32]* %135, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %167

141:                                              ; preds = %131
  %142 = load i32, i32* %6, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %141
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %149, i32 0, i32 17
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [10 x i32], [10 x i32]* %150, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %5, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %156
  %158 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %157, i32 0, i32 18
  %159 = load i32, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [10 x i32], [10 x i32]* %158, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @result_to_string(i32 %162)
  %164 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %154, i8* %163)
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %131, !llvm.loop !42

167:                                              ; preds = %131
  %168 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %169

169:                                              ; preds = %167, %127
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %171
  %173 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %172, i32 0, i32 19
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %173, i64 0, i64 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %169
  %178 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  br label %219

179:                                              ; preds = %169
  %180 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %196, %179
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %184, i32 0, i32 19
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [10 x i32], [10 x i32]* %185, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %217

191:                                              ; preds = %181
  %192 = load i32, i32* %6, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %191
  %197 = load i32, i32* %5, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %198
  %200 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %199, i32 0, i32 19
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [10 x i32], [10 x i32]* %200, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %5, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %207, i32 0, i32 20
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [10 x i32], [10 x i32]* %208, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @result_to_string(i32 %212)
  %214 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %204, i8* %213)
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %181, !llvm.loop !43

217:                                              ; preds = %181
  %218 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %177
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %221
  %223 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %222, i32 0, i32 21
  %224 = getelementptr inbounds [10 x i32], [10 x i32]* %223, i64 0, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.31, i64 0, i64 0))
  br label %269

229:                                              ; preds = %219
  %230 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %231

231:                                              ; preds = %246, %229
  %232 = load i32, i32* %5, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %234, i32 0, i32 21
  %236 = load i32, i32* %6, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [10 x i32], [10 x i32]* %235, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %267

241:                                              ; preds = %231
  %242 = load i32, i32* %6, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  br label %246

246:                                              ; preds = %244, %241
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %248
  %250 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %249, i32 0, i32 21
  %251 = load i32, i32* %6, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [10 x i32], [10 x i32]* %250, i64 0, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %5, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %256
  %258 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %257, i32 0, i32 22
  %259 = load i32, i32* %6, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [10 x i32], [10 x i32]* %258, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @result_to_string(i32 %262)
  %264 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %254, i8* %263)
  %265 = load i32, i32* %6, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %6, align 4
  br label %231, !llvm.loop !44

267:                                              ; preds = %231
  %268 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0))
  br label %269

269:                                              ; preds = %267, %227
  %270 = load i32, i32* %5, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %271
  %273 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %272, i32 0, i32 8
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %269
  %277 = load i32, i32* %5, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %278
  %280 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %279, i32 0, i32 8
  %281 = load i32, i32* %280, align 4
  %282 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i64 0, i64 0), i32 %281)
  br label %283

283:                                              ; preds = %276, %269
  %284 = load i32, i32* %5, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %286, i32 0, i32 9
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %290
  %292 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %291, i32 0, i32 10
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0), i32 %288, i32 %293)
  %295 = load i32, i32* %5, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %297, i32 0, i32 11
  %299 = load i32, i32* %298, align 4
  %300 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* %5, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %302
  %304 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %303, i32 0, i32 12
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %283
  %308 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  br label %311

309:                                              ; preds = %283
  %310 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.37, i64 0, i64 0))
  br label %311

311:                                              ; preds = %309, %307
  %312 = load i32, i32* %5, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %313
  %315 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %314, i32 0, i32 13
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %320

318:                                              ; preds = %311
  %319 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.38, i64 0, i64 0))
  br label %322

320:                                              ; preds = %311
  %321 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.39, i64 0, i64 0))
  br label %322

322:                                              ; preds = %320, %318
  %323 = load i32, i32* %5, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %324
  %326 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %325, i32 0, i32 14
  %327 = load i32, i32* %326, align 4
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %331

329:                                              ; preds = %322
  %330 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i64 0, i64 0))
  br label %371

331:                                              ; preds = %322
  %332 = load i32, i32* %5, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %333
  %335 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %334, i32 0, i32 14
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %340

338:                                              ; preds = %331
  %339 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0))
  br label %370

340:                                              ; preds = %331
  %341 = load i32, i32* %5, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %342
  %344 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %343, i32 0, i32 14
  %345 = load i32, i32* %344, align 4
  %346 = icmp eq i32 %345, 4
  br i1 %346, label %347, label %349

347:                                              ; preds = %340
  %348 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.42, i64 0, i64 0))
  br label %369

349:                                              ; preds = %340
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %351
  %353 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %352, i32 0, i32 14
  %354 = load i32, i32* %353, align 4
  %355 = icmp eq i32 %354, 5
  br i1 %355, label %356, label %358

356:                                              ; preds = %349
  %357 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.43, i64 0, i64 0))
  br label %368

358:                                              ; preds = %349
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %360
  %362 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %361, i32 0, i32 14
  %363 = load i32, i32* %362, align 4
  %364 = icmp eq i32 %363, 3
  br i1 %364, label %365, label %367

365:                                              ; preds = %358
  %366 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.44, i64 0, i64 0))
  br label %367

367:                                              ; preds = %365, %358
  br label %368

368:                                              ; preds = %367, %356
  br label %369

369:                                              ; preds = %368, %347
  br label %370

370:                                              ; preds = %369, %338
  br label %371

371:                                              ; preds = %18, %370, %329
  ret void
}

declare dso_local i8* @result_to_string(i32) #1

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @countstones(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_compute_effective_worm_sizes(i32 %0, [4 x i32]* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32]*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [400 x i32], align 16
  %11 = alloca [400 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store [4 x i32]* %1, [4 x i32]** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 21, i32* %9, align 4
  br label %20

20:                                               ; preds = %83, %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 400
  br i1 %22, label %23, label %86

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ne i32 %28, 3
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  br label %83

31:                                               ; preds = %23
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %45, %31
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* @board_size, align 4
  %35 = sub nsw i32 %34, 1
  %36 = mul nsw i32 2, %35
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i64 0, i64 %40
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [36 x i32], [36 x i32]* %41, i64 0, i64 %43
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %14, align 4
  br label %32, !llvm.loop !45

48:                                               ; preds = %32
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %50
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %48
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %62
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i64 0, i64 %70
  %72 = getelementptr inbounds [36 x i32], [36 x i32]* %71, i64 0, i64 0
  store i32 %68, i32* %72, align 16
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %82

78:                                               ; preds = %48
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %80
  store i32 -1, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %60
  br label %83

83:                                               ; preds = %82, %30
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %20, !llvm.loop !46

86:                                               ; preds = %20
  store i32 0, i32* %13, align 4
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %231, %86
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sle i32 %91, %92
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i1 [ false, %87 ], [ %93, %90 ]
  br i1 %95, label %96, label %232

96:                                               ; preds = %94
  store i32 0, i32* %12, align 4
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  store i32 21, i32* %9, align 4
  br label %99

99:                                               ; preds = %228, %96
  %100 = load i32, i32* %9, align 4
  %101 = icmp slt i32 %100, 400
  br i1 %101, label %102, label %231

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %107, 3
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, -1
  br i1 %114, label %115, label %116

115:                                              ; preds = %109, %102
  br label %228

116:                                              ; preds = %109
  store i32 0, i32* %16, align 4
  br label %117

117:                                              ; preds = %224, %116
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %118, 4
  br i1 %119, label %120, label %227

120:                                              ; preds = %117
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %121, %125
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 3
  br i1 %132, label %133, label %223

133:                                              ; preds = %120
  %134 = load i32, i32* %17, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 %138, 1
  %140 = icmp eq i32 %137, %139
  br i1 %140, label %141, label %223

141:                                              ; preds = %133
  store i32 1, i32* %12, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [400 x i32], [400 x i32]* %10, i64 0, i64 %144
  store i32 %142, i32* %145, align 4
  store i32 0, i32* %14, align 4
  br label %146

146:                                              ; preds = %219, %141
  %147 = load i32, i32* %14, align 4
  %148 = load i32, i32* %17, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %147, %151
  br i1 %152, label %153, label %222

153:                                              ; preds = %146
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %154

154:                                              ; preds = %179, %153
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %155, %159
  br i1 %160, label %161, label %182

161:                                              ; preds = %154
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i64 0, i64 %163
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [36 x i32], [36 x i32]* %164, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i64 0, i64 %170
  %172 = load i32, i32* %14, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [36 x i32], [36 x i32]* %171, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %168, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %161
  store i32 1, i32* %18, align 4
  br label %182

178:                                              ; preds = %161
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %15, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %15, align 4
  br label %154, !llvm.loop !47

182:                                              ; preds = %177, %154
  %183 = load i32, i32* %18, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %218, label %185

185:                                              ; preds = %182
  %186 = load i32, i32* %9, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @board_size, align 4
  %191 = sub nsw i32 %190, 1
  %192 = mul nsw i32 2, %191
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  br label %196

195:                                              ; preds = %185
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 636, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i64 0, i64 0), i32 -1, i32 -1)
  br label %196

196:                                              ; preds = %195, %194
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i64 0, i64 %198
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [36 x i32], [36 x i32]* %199, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %9, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i64 0, i64 %205
  %207 = load i32, i32* %9, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [36 x i32], [36 x i32]* %206, i64 0, i64 %211
  store i32 %203, i32* %212, align 4
  %213 = load i32, i32* %9, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %196, %182
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %14, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %14, align 4
  br label %146, !llvm.loop !48

222:                                              ; preds = %146
  br label %223

223:                                              ; preds = %222, %133, %120
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %16, align 4
  br label %117, !llvm.loop !49

227:                                              ; preds = %117
  br label %228

228:                                              ; preds = %227, %115
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %99, !llvm.loop !50

231:                                              ; preds = %99
  br label %87, !llvm.loop !51

232:                                              ; preds = %94
  %233 = load i32, i32* %5, align 4
  %234 = icmp eq i32 %233, 3
  br i1 %234, label %235, label %331

235:                                              ; preds = %232
  store i32 21, i32* %9, align 4
  br label %236

236:                                              ; preds = %298, %235
  %237 = load i32, i32* %9, align 4
  %238 = icmp slt i32 %237, 400
  br i1 %238, label %239, label %301

239:                                              ; preds = %236
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp ne i32 %244, 3
  br i1 %245, label %247, label %246

246:                                              ; preds = %239
  br label %298

247:                                              ; preds = %239
  store i32 0, i32* %14, align 4
  br label %248

248:                                              ; preds = %294, %247
  %249 = load i32, i32* %14, align 4
  %250 = load i32, i32* %9, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %249, %253
  br i1 %254, label %255, label %297

255:                                              ; preds = %248
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i64 0, i64 %257
  %259 = load i32, i32* %14, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [36 x i32], [36 x i32]* %258, i64 0, i64 %260
  %262 = load i32, i32* %261, align 4
  store i32 %262, i32* %19, align 4
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %284

269:                                              ; preds = %255
  %270 = load i32, i32* %9, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = sitofp i32 %273 to double
  %275 = fdiv double 5.000000e-01, %274
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %277
  %279 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %278, i32 0, i32 2
  %280 = load float, float* %279, align 4
  %281 = fpext float %280 to double
  %282 = fadd double %281, %275
  %283 = fptrunc double %282 to float
  store float %283, float* %279, align 4
  br label %293

284:                                              ; preds = %255
  %285 = load i32, i32* %19, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %286
  %288 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %287, i32 0, i32 2
  %289 = load float, float* %288, align 4
  %290 = fpext float %289 to double
  %291 = fadd double %290, 1.000000e+00
  %292 = fptrunc double %291 to float
  store float %292, float* %288, align 4
  br label %293

293:                                              ; preds = %284, %269
  br label %294

294:                                              ; preds = %293
  %295 = load i32, i32* %14, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %14, align 4
  br label %248, !llvm.loop !52

297:                                              ; preds = %248
  br label %298

298:                                              ; preds = %297, %246
  %299 = load i32, i32* %9, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %9, align 4
  br label %236, !llvm.loop !53

301:                                              ; preds = %236
  store i32 21, i32* %9, align 4
  br label %302

302:                                              ; preds = %327, %301
  %303 = load i32, i32* %9, align 4
  %304 = icmp slt i32 %303, 400
  br i1 %304, label %305, label %330

305:                                              ; preds = %302
  %306 = load i32, i32* %9, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %319, label %312

312:                                              ; preds = %305
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %314
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = icmp eq i32 %317, 2
  br i1 %318, label %319, label %326

319:                                              ; preds = %312, %305
  %320 = load i32, i32* %9, align 4
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @is_worm_origin(i32 %320, i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %319
  %325 = load i32, i32* %9, align 4
  call void @propagate_worm(i32 %325)
  br label %326

326:                                              ; preds = %324, %319, %312
  br label %327

327:                                              ; preds = %326
  %328 = load i32, i32* %9, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %9, align 4
  br label %302, !llvm.loop !54

330:                                              ; preds = %302
  br label %331

331:                                              ; preds = %330, %232
  store i32 21, i32* %9, align 4
  br label %332

332:                                              ; preds = %391, %331
  %333 = load i32, i32* %9, align 4
  %334 = icmp slt i32 %333, 400
  br i1 %334, label %335, label %394

335:                                              ; preds = %332
  %336 = load i32, i32* %9, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp ne i32 %340, 3
  br i1 %341, label %343, label %342

342:                                              ; preds = %335
  br label %391

343:                                              ; preds = %335
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp sgt i32 %347, 4
  br i1 %348, label %349, label %354

349:                                              ; preds = %343
  %350 = load i32*, i32** %7, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %350, i64 %352
  store i32 0, i32* %353, align 4
  br label %363

354:                                              ; preds = %343
  %355 = load i32, i32* %9, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = load i32*, i32** %7, align 8
  %360 = load i32, i32* %9, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  store i32 %358, i32* %362, align 4
  br label %363

363:                                              ; preds = %354, %349
  store i32 0, i32* %14, align 4
  br label %364

364:                                              ; preds = %387, %363
  %365 = load i32, i32* %14, align 4
  %366 = load i32*, i32** %7, align 8
  %367 = load i32, i32* %9, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i32, i32* %366, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = icmp slt i32 %365, %370
  br i1 %371, label %372, label %390

372:                                              ; preds = %364
  %373 = load i32, i32* %9, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [400 x [36 x i32]], [400 x [36 x i32]]* @do_compute_effective_worm_sizes.worms, i64 0, i64 %374
  %376 = load i32, i32* %14, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [36 x i32], [36 x i32]* %375, i64 0, i64 %377
  %379 = load i32, i32* %378, align 4
  %380 = load [4 x i32]*, [4 x i32]** %6, align 8
  %381 = load i32, i32* %9, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [4 x i32], [4 x i32]* %380, i64 %382
  %384 = load i32, i32* %14, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [4 x i32], [4 x i32]* %383, i64 0, i64 %385
  store i32 %379, i32* %386, align 4
  br label %387

387:                                              ; preds = %372
  %388 = load i32, i32* %14, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %14, align 4
  br label %364, !llvm.loop !55

390:                                              ; preds = %364
  br label %391

391:                                              ; preds = %390, %342
  %392 = load i32, i32* %9, align 4
  %393 = add nsw i32 %392, 1
  store i32 %393, i32* %9, align 4
  br label %332, !llvm.loop !56

394:                                              ; preds = %332
  ret void
}

declare dso_local void @unconditional_life(i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_attack_patterns() #0 {
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @attack_callback, i32 7, %struct.pattern_db* @attpat_db, i8* null, i8* null)
  ret void
}

declare dso_local i32 @liberty_of_string(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_defense_patterns() #0 {
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @defense_callback, i32 6, %struct.pattern_db* @defpat_db, i8* null, i8* null)
  ret void
}

declare dso_local i32 @findlib(i32, i32, i32*) #1

declare dso_local void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @attack_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
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
  %28 = load %struct.pattern*, %struct.pattern** %8, align 8
  %29 = getelementptr inbounds %struct.pattern, %struct.pattern* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %5
  %34 = load %struct.pattern*, %struct.pattern** %8, align 8
  %35 = getelementptr inbounds %struct.pattern, %struct.pattern* %34, i32 0, i32 22
  %36 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 %36(i32 %37, i32 %38, i32 %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %183

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.pattern*, %struct.pattern** %8, align 8
  %46 = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 21
  %47 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load %struct.pattern*, %struct.pattern** %8, align 8
  %51 = getelementptr inbounds %struct.pattern, %struct.pattern* %50, i32 0, i32 21
  %52 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %51, align 8
  %53 = load %struct.pattern*, %struct.pattern** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 %52(%struct.pattern* %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @debug, align 4
  %61 = and i32 %60, 1024
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %71

64:                                               ; preds = %59
  %65 = load %struct.pattern*, %struct.pattern** %8, align 8
  %66 = getelementptr inbounds %struct.pattern, %struct.pattern* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.51, i64 0, i64 0), i8* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %63
  br label %183

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %44
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %180, %73
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.pattern*, %struct.pattern** %8, align 8
  %77 = getelementptr inbounds %struct.pattern, %struct.pattern* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %183

80:                                               ; preds = %74
  %81 = load %struct.pattern*, %struct.pattern** %8, align 8
  %82 = getelementptr inbounds %struct.pattern, %struct.pattern* %81, i32 0, i32 0
  %83 = load %struct.patval*, %struct.patval** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.patval, %struct.patval* %83, i64 %85
  %87 = getelementptr inbounds %struct.patval, %struct.patval* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %179

90:                                               ; preds = %80
  %91 = load %struct.pattern*, %struct.pattern** %8, align 8
  %92 = getelementptr inbounds %struct.pattern, %struct.pattern* %91, i32 0, i32 0
  %93 = load %struct.patval*, %struct.patval** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.patval, %struct.patval* %93, i64 %95
  %97 = getelementptr inbounds %struct.patval, %struct.patval* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %99
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %100, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @countlib(i32 %112)
  %114 = icmp sgt i32 %113, 4
  br i1 %114, label %115, label %116

115:                                              ; preds = %90
  br label %180

116:                                              ; preds = %90
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @attack_move_known(i32 %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  br label %180

122:                                              ; preds = %116
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 @trymove(i32 %123, i32 %124, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.52, i64 0, i64 0), i32 %125, i32 0, i32 0)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %178

128:                                              ; preds = %122
  %129 = load i32, i32* %14, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  br label %144

135:                                              ; preds = %128
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @attack(i32 %136, i32* null)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  store i32 5, i32* %15, align 4
  br label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @find_defense(i32 %141, i32* null)
  store i32 %142, i32* %15, align 4
  br label %143

143:                                              ; preds = %140, %139
  br label %144

144:                                              ; preds = %143, %134
  call void @popgo()
  %145 = load i32, i32* %15, align 4
  %146 = icmp ne i32 %145, 5
  br i1 %146, label %147, label %177

147:                                              ; preds = %144
  %148 = load i32, i32* %15, align 4
  %149 = sub nsw i32 5, %148
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %152, i32 0, i32 16
  %154 = getelementptr inbounds [10 x i32], [10 x i32]* %153, i64 0, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp sge i32 %149, %155
  br i1 %156, label %157, label %177

157:                                              ; preds = %147
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %15, align 4
  %161 = sub nsw i32 5, %160
  call void @change_attack(i32 %158, i32 %159, i32 %161)
  %162 = load i32, i32* @debug, align 4
  %163 = and i32 %162, 1024
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %157
  br label %176

166:                                              ; preds = %157
  %167 = load %struct.pattern*, %struct.pattern** %8, align 8
  %168 = getelementptr inbounds %struct.pattern, %struct.pattern* %167, i32 0, i32 3
  %169 = load i8*, i8** %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %15, align 4
  %174 = sub nsw i32 5, %173
  %175 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.53, i64 0, i64 0), i8* %169, i32 %170, i32 %171, i32 %172, i32 %174)
  br label %176

176:                                              ; preds = %166, %165
  br label %177

177:                                              ; preds = %176, %147, %144
  br label %178

178:                                              ; preds = %177, %122
  br label %179

179:                                              ; preds = %178, %80
  br label %180

180:                                              ; preds = %179, %121, %115
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %74, !llvm.loop !57

183:                                              ; preds = %42, %71, %74
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @defense_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
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
  %28 = load %struct.pattern*, %struct.pattern** %8, align 8
  %29 = getelementptr inbounds %struct.pattern, %struct.pattern* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %5
  %34 = load %struct.pattern*, %struct.pattern** %8, align 8
  %35 = getelementptr inbounds %struct.pattern, %struct.pattern* %34, i32 0, i32 22
  %36 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 %36(i32 %37, i32 %38, i32 %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %168

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.pattern*, %struct.pattern** %8, align 8
  %46 = getelementptr inbounds %struct.pattern, %struct.pattern* %45, i32 0, i32 21
  %47 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %46, align 8
  %48 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %47, null
  br i1 %48, label %49, label %73

49:                                               ; preds = %44
  %50 = load %struct.pattern*, %struct.pattern** %8, align 8
  %51 = getelementptr inbounds %struct.pattern, %struct.pattern* %50, i32 0, i32 21
  %52 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %51, align 8
  %53 = load %struct.pattern*, %struct.pattern** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 %52(%struct.pattern* %53, i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %72, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @debug, align 4
  %61 = and i32 %60, 1024
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  br label %71

64:                                               ; preds = %59
  %65 = load %struct.pattern*, %struct.pattern** %8, align 8
  %66 = getelementptr inbounds %struct.pattern, %struct.pattern* %65, i32 0, i32 3
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.54, i64 0, i64 0), i8* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %63
  br label %168

72:                                               ; preds = %49
  br label %73

73:                                               ; preds = %72, %44
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %165, %73
  %75 = load i32, i32* %12, align 4
  %76 = load %struct.pattern*, %struct.pattern** %8, align 8
  %77 = getelementptr inbounds %struct.pattern, %struct.pattern* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %168

80:                                               ; preds = %74
  %81 = load %struct.pattern*, %struct.pattern** %8, align 8
  %82 = getelementptr inbounds %struct.pattern, %struct.pattern* %81, i32 0, i32 0
  %83 = load %struct.patval*, %struct.patval** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.patval, %struct.patval* %83, i64 %85
  %87 = getelementptr inbounds %struct.patval, %struct.patval* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %164

90:                                               ; preds = %80
  %91 = load %struct.pattern*, %struct.pattern** %8, align 8
  %92 = getelementptr inbounds %struct.pattern, %struct.pattern* %91, i32 0, i32 0
  %93 = load %struct.patval*, %struct.patval** %92, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.patval, %struct.patval* %93, i64 %95
  %97 = getelementptr inbounds %struct.patval, %struct.patval* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %99
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %100, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %104, %105
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %108
  %110 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %113
  %115 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %114, i32 0, i32 16
  %116 = getelementptr inbounds [10 x i32], [10 x i32]* %115, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %90
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %14, align 4
  %122 = call i32 @defense_move_known(i32 %120, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119, %90
  br label %165

125:                                              ; preds = %119
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @trymove(i32 %126, i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0), i32 %128, i32 0, i32 0)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %163

131:                                              ; preds = %125
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @attack(i32 %132, i32* null)
  store i32 %133, i32* %15, align 4
  call void @popgo()
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* %14, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %137, i32 0, i32 16
  %139 = getelementptr inbounds [10 x i32], [10 x i32]* %138, i64 0, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %134, %140
  br i1 %141, label %142, label %162

142:                                              ; preds = %131
  %143 = load i32, i32* %14, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %15, align 4
  %146 = sub nsw i32 5, %145
  call void @change_defense(i32 %143, i32 %144, i32 %146)
  %147 = load i32, i32* @debug, align 4
  %148 = and i32 %147, 1024
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %142
  br label %161

151:                                              ; preds = %142
  %152 = load %struct.pattern*, %struct.pattern** %8, align 8
  %153 = getelementptr inbounds %struct.pattern, %struct.pattern* %152, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 5, %158
  %160 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.56, i64 0, i64 0), i8* %154, i32 %155, i32 %156, i32 %157, i32 %159)
  br label %161

161:                                              ; preds = %151, %150
  br label %162

162:                                              ; preds = %161, %131
  br label %163

163:                                              ; preds = %162, %125
  br label %164

164:                                              ; preds = %163, %80
  br label %165

165:                                              ; preds = %164, %124
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %74, !llvm.loop !58

168:                                              ; preds = %42, %71, %74
  ret void
}

declare dso_local i32 @attack_threats(i32, i32, i32*, i32*) #1

declare dso_local i32 @is_ko_point(i32) #1

declare dso_local void @movelist_change_point(i32, i32, i32, i32*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propagate_worm2(i32 %0) #0 {
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
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1194, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0), i32 %17, i32 %20)
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %21
  br label %43

36:                                               ; preds = %28
  %37 = load i32, i32* %2, align 4
  %38 = sdiv i32 %37, 20
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %2, align 4
  %41 = srem i32 %40, 20
  %42 = sub nsw i32 %41, 1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1195, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i64 0, i64 0), i32 %39, i32 %42)
  br label %43

43:                                               ; preds = %36, %35
  store i32 21, i32* %3, align 4
  br label %44

44:                                               ; preds = %74, %43
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 400
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %52, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %47
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %2, align 4
  %62 = call i32 @is_same_worm(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %66
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %69
  %71 = bitcast %struct.worm_data* %67 to i8*
  %72 = bitcast %struct.worm_data* %70 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %71, i8* align 4 %72, i64 380, i1 false)
  br label %73

73:                                               ; preds = %64, %59, %47
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %44, !llvm.loop !59

77:                                               ; preds = %44
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ping_recurse(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 1, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %67, %5
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %70

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %22, %26
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %66

34:                                               ; preds = %21
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %41
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 3, %50
  %52 = call i32 @touching(i32 %49, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 1, i32* %61, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %54, %48, %41, %34, %21
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %18, !llvm.loop !60

70:                                               ; preds = %18
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @is_ko_point(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %124, label %74

74:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %75

75:                                               ; preds = %120, %74
  %76 = load i32, i32* %11, align 4
  %77 = icmp slt i32 %76, 4
  br i1 %77, label %78, label %123

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %79, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 3
  br i1 %90, label %91, label %119

91:                                               ; preds = %78
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %91
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %113, label %105

105:                                              ; preds = %98
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = load i32, i32* %10, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105, %98
  %114 = load i32, i32* %13, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %10, align 4
  call void @ping_recurse(i32 %114, i32* %115, i32* %116, i32* %117, i32 %118)
  br label %119

119:                                              ; preds = %113, %105, %91, %78
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %75, !llvm.loop !61

123:                                              ; preds = %75
  br label %124

124:                                              ; preds = %123, %70
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @touching(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = add nsw i32 %5, 20
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 20
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %40, label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %37, %38
  br label %40

40:                                               ; preds = %31, %22, %13, %2
  %41 = phi i1 [ true, %22 ], [ true, %13 ], [ true, %2 ], [ %39, %31 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @markcomponent(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  store i32 1, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %53, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %16, label %56

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %17, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %52

29:                                               ; preds = %16
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @is_same_worm(i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %43, %36
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32*, i32** %6, align 8
  call void @markcomponent(i32 %49, i32 %50, i32* %51)
  br label %52

52:                                               ; preds = %48, %43, %29, %16
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %13, !llvm.loop !62

56:                                               ; preds = %13
  ret void
}

declare dso_local i32 @find_origin(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cavity_recurse(i32 %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %28

21:                                               ; preds = %5
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 20
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %6, align 4
  %26 = srem i32 %25, 20
  %27 = sub nsw i32 %26, 1
  call void @abortgo(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1490, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i32 %24, i32 %27)
  br label %28

28:                                               ; preds = %21, %20
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 1, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @is_edge_vertex(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %43, %36, %28
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %107, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %110

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %52, %56
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %62, 3
  br i1 %63, label %64, label %106

64:                                               ; preds = %51
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %106, label %71

71:                                               ; preds = %64
  store i32 0, i32* %13, align 4
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  store i32 1, i32* %13, align 4
  br label %87

79:                                               ; preds = %71
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @find_origin(i32 %81)
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  store i32 1, i32* %13, align 4
  br label %86

85:                                               ; preds = %79
  store i32 0, i32* %13, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %78
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %105

99:                                               ; preds = %87
  %100 = load i32, i32* %12, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32*, i32** %8, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %10, align 4
  call void @cavity_recurse(i32 %100, i32* %101, i32* %102, i32* %103, i32 %104)
  br label %105

105:                                              ; preds = %99, %90
  br label %106

106:                                              ; preds = %105, %64, %51
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %48, !llvm.loop !63

110:                                              ; preds = %48
  ret void
}

declare dso_local i32 @is_edge_vertex(i32) #1

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
