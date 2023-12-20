; ModuleID = 'helpers.c'
source_filename = "helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.influence_data = type opaque
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, {}*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }

@transformation = external dso_local global [1369 x [8 x i32]], align 16
@board = external dso_local global [421 x i8], align 16
@.str = private unnamed_addr constant [10 x i8] c"helpers.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"board[apos] != EMPTY\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"board[bpos] == acolor\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"board[cpos] == ccolor\00", align 1
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"helper\00", align 1
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@initial_white_influence = external dso_local global %struct.influence_data, align 1
@initial_black_influence = external dso_local global %struct.influence_data, align 1
@doing_scoring = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"...followup value %f\0A\00", align 1
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@.str.6 = private unnamed_addr constant [35 x i8] c"(color == BLACK || color == WHITE)\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"countlib(move) == 2\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"countlib(str) == 2\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"...reverse followup value %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"liberties == 2\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%o...setting min move value of %1m to 0.1\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"((color) == 1 || (color) == 2)\00", align 1
@delta = external dso_local global [8 x i32], align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"epos != 0\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@number_of_dragons = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(move)\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"board[move] == EMPTY\00", align 1
@.str.17 = private unnamed_addr constant [73 x i8] c"board[worma] == OTHER_COLOR(color) && board[wormb] == OTHER_COLOR(color)\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"test_attack_either_move\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @basic_cut_helper(%struct.pattern* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pattern*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pattern*, %struct.pattern** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 3, %39
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %4
  br label %55

48:                                               ; preds = %4
  %49 = load i32, i32* %10, align 4
  %50 = sdiv i32 %49, 20
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %10, align 4
  %53 = srem i32 %52, 20
  %54 = sub nsw i32 %53, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %54)
  br label %55

55:                                               ; preds = %48, %47
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  br label %71

64:                                               ; preds = %55
  %65 = load i32, i32* %11, align 4
  %66 = sdiv i32 %65, 20
  %67 = sub nsw i32 %66, 1
  %68 = load i32, i32* %11, align 4
  %69 = srem i32 %68, 20
  %70 = sub nsw i32 %69, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70)
  br label %71

71:                                               ; preds = %64, %63
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load i32, i32* %14, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %87

80:                                               ; preds = %71
  %81 = load i32, i32* %12, align 4
  %82 = sdiv i32 %81, 20
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %12, align 4
  %85 = srem i32 %84, 20
  %86 = sub nsw i32 %85, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %86)
  br label %87

87:                                               ; preds = %80, %79
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %90, i32 0, i32 16
  %92 = getelementptr inbounds [10 x i32], [10 x i32]* %91, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @is_ko_point(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %95
  store i32 0, i32* %5, align 4
  br label %132

104:                                              ; preds = %99, %87
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @is_ko_point(i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %132

109:                                              ; preds = %104
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @trymove(i32 %110, i32 %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %109
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @attack(i32 %115, i32* null)
  %117 = icmp eq i32 %116, 5
  br i1 %117, label %122, label %118

118:                                              ; preds = %114
  %119 = load i32, i32* %12, align 4
  %120 = call i32 @attack(i32 %119, i32* null)
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %122, label %123

122:                                              ; preds = %118, %114
  call void @popgo()
  store i32 0, i32* %5, align 4
  br label %132

123:                                              ; preds = %118
  call void @popgo()
  br label %125

124:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %132

125:                                              ; preds = %123
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @safe_move(i32 %126, i32 %127)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %132

131:                                              ; preds = %125
  store i32 1, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %130, %124, %122, %108, %103
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @is_ko_point(i32) #1

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local void @popgo() #1

declare dso_local i32 @safe_move(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jump_out_helper(%struct.pattern* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pattern*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.pattern*, %struct.pattern** %6, align 8
  %13 = load i32, i32* %9, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 4
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %10, align 4
  br label %31

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 5
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %23, %15
  %32 = load i32, i32* %9, align 4
  %33 = sub nsw i32 3, %32
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @whose_area(%struct.influence_data* %36, i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %46

45:                                               ; preds = %41, %31
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %44
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @whose_area(%struct.influence_data*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jump_out_far_helper(%struct.pattern* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pattern*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 3, %10
  %12 = icmp eq i32 %11, 1
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @whose_area(%struct.influence_data* %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = sub nsw i32 3, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %4
  %21 = load %struct.pattern*, %struct.pattern** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @jump_out_helper(%struct.pattern* %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %20
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @high_handicap_helper(%struct.pattern* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pattern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.pattern*, %struct.pattern** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @doing_scoring, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 3, %15
  %17 = call i32 @stones_on_board(i32 %16)
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %14, %4
  %20 = phi i1 [ false, %4 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  ret i32 %21
}

declare dso_local i32 @stones_on_board(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reinforce_helper(%struct.pattern* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pattern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.pattern*, %struct.pattern** %5, align 8
  %11 = load i32, i32* @doing_scoring, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = sub nsw i32 3, %14
  %16 = call i32 @lively_dragon_exists(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @safe_move(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %13, %4
  %24 = phi i1 [ false, %13 ], [ false, %4 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local i32 @lively_dragon_exists(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @throw_in_atari_helper(%struct.pattern* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pattern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  store %struct.pattern* %0, %struct.pattern** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 3, %16
  store i32 %17, i32* %14, align 4
  %18 = load %struct.pattern*, %struct.pattern** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %9, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %39 = call i32 @findlib(i32 %37, i32 2, i32* %38)
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  br label %50

47:                                               ; preds = %4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @trymove(i32 %51, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %84

55:                                               ; preds = %50
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @attack(i32 %56, i32* null)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp ne i32 %64, 3
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @attack(i32 %67, i32* null)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %66, %59
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @trymove(i32 %71, i32 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @attack(i32 %76, i32* null)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 1, i32* %13, align 4
  br label %80

80:                                               ; preds = %79, %75
  call void @popgo()
  br label %82

81:                                               ; preds = %70
  store i32 1, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %80
  br label %83

83:                                               ; preds = %82, %66, %55
  call void @popgo()
  br label %84

84:                                               ; preds = %83, %50
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %88, i32 0, i32 2
  %90 = load float, float* %89, align 4
  %91 = fmul float 2.000000e+00, %90
  call void @add_followup_value(i32 %85, float %91)
  %92 = load i32, i32* @verbose, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %84
  br label %104

95:                                               ; preds = %84
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %98, i32 0, i32 2
  %100 = load float, float* %99, align 4
  %101 = fmul float 2.000000e+00, %100
  %102 = fpext float %101 to double
  %103 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), double %102)
  br label %104

104:                                              ; preds = %95, %94
  %105 = load i32, i32* %13, align 4
  ret i32 %105
}

declare dso_local i32 @findlib(i32, i32, i32*) #1

declare dso_local void @add_followup_value(i32, float) #1

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @not_lunch_helper(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  call void @remove_lunch(i32 %14, i32 %15)
  %16 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %16, i64 %22
  %24 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %23, i32 0, i32 12
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %13
  %29 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %29, i64 %35
  %37 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %36, i32 0, i32 12
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %28, %13
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local void @remove_lunch(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @seki_helper(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [160 x i32], align 16
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 0
  %9 = call i32 @chainlinks(i32 %7, i32* %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %20, i32 0, i32 16
  %22 = getelementptr inbounds [10 x i32], [10 x i32]* %21, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %31

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %10, !llvm.loop !4

30:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @chainlinks(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ugly_cutstone_helper(%struct.pattern* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pattern*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.pattern*, %struct.pattern** %5, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cutstone2_helper(%struct.pattern* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pattern*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pattern* %0, %struct.pattern** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.pattern*, %struct.pattern** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %36, i32 0, i32 18
  %38 = getelementptr inbounds [10 x i32], [10 x i32]* %37, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %104

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %45, i32 0, i32 17
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %46, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %13, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = call i32 @trymove(i32 %49, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %103

57:                                               ; preds = %42
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @attack(i32 %64, i32* null)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @attack(i32 %74, i32* null)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = call i32 @safe_move(i32 %78, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %77, %73, %67, %63, %57
  call void @popgo()
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %93, i32 0, i32 10
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  call void @propagate_worm(i32 %101)
  store i32 0, i32* %5, align 4
  br label %104

102:                                              ; preds = %77
  call void @popgo()
  br label %103

103:                                              ; preds = %102, %42
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %103, %86, %41
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local void @propagate_worm(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @edge_double_sente_helper(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %4
  br label %29

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 20
  %25 = sub nsw i32 %24, 1
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 20
  %28 = sub nsw i32 %27, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 367, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %25, i32 %28)
  br label %29

29:                                               ; preds = %22, %21
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @trymove(i32 %30, i32 %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @countlib(i32 %35)
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  %41 = sdiv i32 %40, 20
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %5, align 4
  %44 = srem i32 %43, 20
  %45 = sub nsw i32 %44, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 370, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %42, i32 %45)
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @connect_and_cut_helper(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  call void @popgo()
  br label %51

51:                                               ; preds = %46, %29
  %52 = load i32, i32* %10, align 4
  ret i32 %52
}

declare dso_local i32 @countlib(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_and_cut_helper(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 3, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %4, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %24 = call i32 @findlib(i32 %22, i32 2, i32* %23)
  store i32 %24, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %27, %3
  br label %32

31:                                               ; preds = %27
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 628, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 -1, i32 -1)
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %37

36:                                               ; preds = %32
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 629, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 -1, i32 -1)
  br label %37

37:                                               ; preds = %36, %35
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  br label %48

45:                                               ; preds = %37
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %42
  store i32 0, i32* %14, align 4
  br label %49

49:                                               ; preds = %83, %48
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 4
  br i1 %51, label %52, label %86

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %53, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %66, %70
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @neighbor_of_string(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %65
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %76, %80
  store i32 %81, i32* %8, align 4
  br label %86

82:                                               ; preds = %65, %52
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %49, !llvm.loop !6

86:                                               ; preds = %75, %49
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %91

90:                                               ; preds = %86
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 643, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 -1, i32 -1)
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @trymove(i32 %92, i32 %93, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @trymove(i32 %97, i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %96
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @trymove(i32 %102, i32 %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %101
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %106
  %114 = load i32, i32* %8, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @defend_both(i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120, %113, %106
  store i32 1, i32* %13, align 4
  br label %126

126:                                              ; preds = %125, %120
  call void @popgo()
  br label %127

127:                                              ; preds = %126, %101
  call void @popgo()
  br label %128

128:                                              ; preds = %127, %96
  call void @popgo()
  br label %129

129:                                              ; preds = %128, %91
  %130 = load i32, i32* %13, align 4
  ret i32 %130
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @threaten_to_save_helper(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %8, i32 0, i32 2
  %10 = load float, float* %9, align 4
  %11 = fpext float %10 to double
  %12 = fmul double 2.000000e+00, %11
  %13 = fadd double 2.000000e+00, %12
  %14 = fptrunc double %13 to float
  call void @add_followup_value(i32 %5, float %14)
  %15 = load i32, i32* @verbose, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %28

18:                                               ; preds = %2
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %21, i32 0, i32 2
  %23 = load float, float* %22, align 4
  %24 = fpext float %23 to double
  %25 = fmul double 2.000000e+00, %24
  %26 = fadd double 2.000000e+00, %25
  %27 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), double %26)
  br label %28

28:                                               ; preds = %18, %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @threaten_to_capture_helper(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [160 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 0
  %11 = call i32 @chainlinks2(i32 %9, i32* %10, i32 1)
  store i32 %11, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %37, %2
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %12
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %22, i32 0, i32 18
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @does_defend(i32 %28, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %27
  br label %102

36:                                               ; preds = %27, %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %12, !llvm.loop !7

40:                                               ; preds = %12
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = sub nsw i32 3, %46
  %48 = call i32 @trymove(i32 %41, i32 %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %102

51:                                               ; preds = %40
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @find_defense(i32 %52, i32* %7)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %55
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = call i32 @trymove(i32 %59, i32 %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @attack(i32 %75, i32* null)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %67
  call void @popgo()
  call void @popgo()
  br label %102

79:                                               ; preds = %74
  call void @popgo()
  br label %80

80:                                               ; preds = %79, %58, %55, %51
  call void @popgo()
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %84, i32 0, i32 2
  %86 = load float, float* %85, align 4
  %87 = fpext float %86 to double
  %88 = fmul double 2.000000e+00, %87
  %89 = fptrunc double %88 to float
  call void @add_followup_value(i32 %81, float %89)
  %90 = load i32, i32* @verbose, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  br label %102

93:                                               ; preds = %80
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %96, i32 0, i32 2
  %98 = load float, float* %97, align 4
  %99 = fpext float %98 to double
  %100 = fmul double 2.000000e+00, %99
  %101 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), double %100)
  br label %102

102:                                              ; preds = %35, %50, %78, %93, %92
  ret void
}

declare dso_local i32 @chainlinks2(i32, i32*, i32) #1

declare dso_local i32 @does_defend(i32, i32) #1

declare dso_local i32 @find_defense(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @defend_against_atari_helper(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [160 x i32], align 16
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @countlib(i32 %9)
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = sdiv i32 %14, 20
  %16 = sub nsw i32 %15, 1
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %17, 20
  %19 = sub nsw i32 %18, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 464, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %16, i32 %19)
  br label %20

20:                                               ; preds = %13, %12
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 0
  %23 = call i32 @chainlinks2(i32 %21, i32* %22, i32 1)
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %49, %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %34, i32 0, i32 18
  %36 = getelementptr inbounds [10 x i32], [10 x i32]* %35, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @does_defend(i32 %40, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %39
  br label %101

48:                                               ; preds = %39, %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %24, !llvm.loop !8

52:                                               ; preds = %24
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %55 = call i32 @findlib(i32 %53, i32 2, i32* %54)
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = sub nsw i32 3, %62
  %64 = call i32 @safe_move(i32 %57, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %52
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = sub nsw i32 3, %73
  %75 = call i32 @safe_move(i32 %68, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %66
  br label %101

78:                                               ; preds = %66, %52
  %79 = load i32, i32* @verbose, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %85, i32 0, i32 2
  %87 = load float, float* %86, align 4
  %88 = fpext float %87 to double
  %89 = fmul double 2.000000e+00, %88
  %90 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), double %89)
  br label %91

91:                                               ; preds = %82, %81
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %95, i32 0, i32 2
  %97 = load float, float* %96, align 4
  %98 = fpext float %97 to double
  %99 = fmul double 2.000000e+00, %98
  %100 = fptrunc double %99 to float
  call void @add_reverse_followup_value(i32 %92, float %100)
  br label %101

101:                                              ; preds = %91, %77, %47
  ret void
}

declare dso_local void @add_reverse_followup_value(i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amalgamate_most_valuable_helper(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @is_same_dragon(i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @is_same_dragon(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %19, i32 0, i32 4
  %21 = load float, float* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %24, i32 0, i32 4
  %26 = load float, float* %25, align 4
  %27 = fcmp oge float %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  call void @join_dragons(i32 %29, i32 %30)
  br label %34

31:                                               ; preds = %16
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  call void @join_dragons(i32 %32, i32 %33)
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %11, %3
  ret void
}

declare dso_local i32 @is_same_dragon(i32, i32) #1

declare dso_local void @join_dragons(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finish_ko_helper(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [160 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = getelementptr inbounds [160 x i32], [160 x i32]* %5, i64 0, i64 0
  %11 = call i32 @chainlinks2(i32 %9, i32* %10, i32 1)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %38, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [160 x i32], [160 x i32]* %5, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @countstones(i32 %21)
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @findlib(i32 %25, i32 1, i32* %8)
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = call i32 @is_ko(i32 %27, i32 %32, i32* null)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %42

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %16
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %12, !llvm.loop !9

41:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @countstones(i32) #1

declare dso_local i32 @is_ko(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @squeeze_ko_helper(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %10 = call i32 @findlib(i32 %8, i32 2, i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, 20
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %3, align 4
  %19 = srem i32 %18, 20
  %20 = sub nsw i32 %19, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 547, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %17, i32 %20)
  br label %21

21:                                               ; preds = %14, %13
  store i32 0, i32* %6, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 3, %36
  %38 = call i32 @is_ko(i32 %31, i32 %37, i32* null)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %46

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %22, !llvm.loop !10

45:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @backfill_helper(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sub nsw i32 3, %15
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @trymove(i32 %17, i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @trymove(i32 %22, i32 %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @attack(i32 %27, i32* null)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @find_defense(i32 %31, i32* %9)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @set_minimum_move_value(i32 %35, float 0x3FB99999A0000000)
  %37 = load i32, i32* @verbose, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %40, %39
  br label %44

44:                                               ; preds = %43, %30, %26
  call void @popgo()
  br label %45

45:                                               ; preds = %44, %21
  call void @popgo()
  br label %46

46:                                               ; preds = %45, %3
  ret i32 0
}

declare dso_local i32 @set_minimum_move_value(i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_threatens_attack(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %7
  %9 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %47

21:                                               ; preds = %12, %2
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 11
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %36, %28
  store i32 1, i32* %3, align 4
  br label %47

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %21
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @neighbor_of_string(i32, i32) #1

declare dso_local i32 @defend_both(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @connect_and_cut_helper2(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = sub nsw i32 3, %15
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %4
  br label %24

23:                                               ; preds = %19
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 684, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 -1, i32 -1)
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @trymove(i32 %25, i32 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %119

29:                                               ; preds = %24
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %64, %29
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %67

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %34, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %63

46:                                               ; preds = %33
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %47, %51
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @neighbor_of_string(i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %57, %61
  store i32 %62, i32* %11, align 4
  br label %67

63:                                               ; preds = %46, %33
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %30, !llvm.loop !11

67:                                               ; preds = %56, %30
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  br label %72

71:                                               ; preds = %67
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 695, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i32 -1, i32 -1)
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @trymove(i32 %73, i32 %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %118

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @find_defense(i32 %78, i32* %10)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %77
  call void @popgo()
  call void @popgo()
  store i32 0, i32* %5, align 4
  br label %121

85:                                               ; preds = %81
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @trymove(i32 %86, i32 %87, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %117

90:                                               ; preds = %85
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @trymove(i32 %91, i32 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 0, i32 0)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %116

95:                                               ; preds = %90
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %114, label %102

102:                                              ; preds = %95
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @defend_both(i32 %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109, %102, %95
  store i32 1, i32* %13, align 4
  br label %115

115:                                              ; preds = %114, %109
  call void @popgo()
  br label %116

116:                                              ; preds = %115, %90
  call void @popgo()
  br label %117

117:                                              ; preds = %116, %85
  call void @popgo()
  br label %118

118:                                              ; preds = %117, %72
  call void @popgo()
  br label %119

119:                                              ; preds = %118, %24
  %120 = load i32, i32* %13, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %84
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dragon_weak(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ult i32 %4, 421
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %21

14:                                               ; preds = %6, %1
  %15 = load i32, i32* %3, align 4
  %16 = sdiv i32 %15, 20
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* %3, align 4
  %19 = srem i32 %18, 20
  %20 = sub nsw i32 %19, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 728, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i32 %17, i32 %20)
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @number_of_dragons, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28, %21
  store i32 1, i32* %2, align 4
  br label %51

37:                                               ; preds = %28
  %38 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %38, i64 %44
  %46 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %45, i32 0, i32 7
  %47 = load float, float* %46, align 4
  %48 = fpext float %47 to double
  %49 = fcmp ogt double %48, 4.000100e-01
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %37, %36
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attack_either_move(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ult i32 %9, 421
  br i1 %10, label %11, label %19

11:                                               ; preds = %4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %26

19:                                               ; preds = %11, %4
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 20
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = srem i32 %23, 20
  %25 = sub nsw i32 %24, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 741, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i32 %22, i32 %25)
  br label %26

26:                                               ; preds = %19, %18
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %35, 20
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %5, align 4
  %39 = srem i32 %38, 20
  %40 = sub nsw i32 %39, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 742, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), i32 %37, i32 %40)
  br label %41

41:                                               ; preds = %34, %33
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 3, %47
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %41
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 3, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %67

60:                                               ; preds = %50, %41
  %61 = load i32, i32* %5, align 4
  %62 = sdiv i32 %61, 20
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %5, align 4
  %65 = srem i32 %64, 20
  %66 = sub nsw i32 %65, 1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 744, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.17, i64 0, i64 0), i32 %63, i32 %66)
  br label %67

67:                                               ; preds = %60, %59
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @defend_both(i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %110

73:                                               ; preds = %67
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @trymove(i32 %74, i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i32 %76, i32 0, i32 0)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %110

79:                                               ; preds = %73
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 3, %85
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %108

88:                                               ; preds = %79
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 3, %94
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %88
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @defend_both(i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %8, align 4
  call void @add_either_move(i32 %103, i32 1, i32 %104, i32 1, i32 %105)
  br label %107

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %102
  br label %109

108:                                              ; preds = %88, %79
  br label %109

109:                                              ; preds = %108, %107
  call void @popgo()
  br label %110

110:                                              ; preds = %72, %109, %73
  ret void
}

declare dso_local void @add_either_move(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
