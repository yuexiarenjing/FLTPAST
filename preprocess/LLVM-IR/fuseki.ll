; ModuleID = 'fuseki.c'
source_filename = "fuseki.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fullboard_pattern = type { %struct.patval*, i32, i8*, i32, float }
%struct.patval = type { i32, i32 }

@board_size = external dso_local global i32, align 4
@disable_fuseki = external dso_local global i32, align 4
@fusekidb = external dso_local global i32, align 4
@horizontally_symmetric = internal global i32 0, align 4
@vertically_symmetric = internal global i32 0, align 4
@diagonally_symmetric = internal global i32 0, align 4
@board = external dso_local global [421 x i8], align 16
@fuseki9 = external dso_local global [0 x %struct.fullboard_pattern], align 8
@fuseki13 = external dso_local global [0 x %struct.fullboard_pattern], align 8
@fuseki19 = external dso_local global [0 x %struct.fullboard_pattern], align 8
@num_fuseki_moves = internal global i32 0, align 4
@fuseki_total_value = internal global i32 0, align 4
@fuseki_value = internal global [361 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"fuseki.c\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"k < num_fuseki_moves\00", align 1
@fuseki_moves = internal global [361 x i32] zeroinitializer, align 16
@verbose = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"Fuseki database move at %1m with relative weight %d, pattern %s+%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Fuseki Player suggests %1m with value %d\0A\00", align 1
@small_board = internal global [8 x i32] [i32 50, i32 18, i32 17, i32 15, i32 0, i32 0, i32 0, i32 0], align 16
@medium_board = internal global [8 x i32] [i32 30, i32 20, i32 20, i32 22, i32 2, i32 2, i32 2, i32 2], align 16
@large_board = internal global [8 x i32] [i32 15, i32 15, i32 15, i32 35, i32 5, i32 5, i32 5, i32 5], align 16
@corners = internal global [8 x [2 x i32]] [[2 x i32] [i32 3, i32 3], [2 x i32] [i32 3, i32 4], [2 x i32] [i32 4, i32 3], [2 x i32] [i32 4, i32 4], [2 x i32] [i32 5, i32 3], [2 x i32] [i32 3, i32 5], [2 x i32] [i32 5, i32 4], [2 x i32] [i32 4, i32 5]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuseki(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %3, align 4
  store i32 -1, i32* %4, align 4
  %8 = load i32, i32* @board_size, align 4
  %9 = mul nsw i32 25, %8
  %10 = sdiv i32 %9, 19
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @disable_fuseki, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %142

14:                                               ; preds = %1
  call void @set_symmetries()
  %15 = load i32, i32* @fusekidb, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @search_fuseki_database(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %142

22:                                               ; preds = %17, %14
  %23 = load i32, i32* @board_size, align 4
  %24 = icmp eq i32 %23, 9
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @stones_on_board(i32 %26)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 5, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %25, %22
  %31 = load i32, i32* @board_size, align 4
  %32 = icmp sle i32 %31, 11
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i32, i32* @board_size, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 %36, 2
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 2
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %40, 2
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 2
  %44 = call i32 @openregion(i32 %37, i32 %39, i32 %41, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 20
  %49 = add nsw i32 21, %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %2, align 4
  call void @announce_move(i32 %51, i32 45, i32 %52)
  br label %53

53:                                               ; preds = %46, %33
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i32, i32* @board_size, align 4
  %56 = icmp slt i32 %55, 9
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %142

58:                                               ; preds = %54
  %59 = load i32, i32* @board_size, align 4
  %60 = icmp sge i32 %59, 18
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 8, i32* %5, align 4
  br label %70

62:                                               ; preds = %58
  %63 = load i32, i32* @board_size, align 4
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 5, i32* %5, align 4
  br label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @board_size, align 4
  %68 = sdiv i32 %67, 2
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %65
  br label %70

70:                                               ; preds = %69, %61
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* @board_size, align 4
  %74 = load i32, i32* %5, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* @board_size, align 4
  %77 = sub nsw i32 %76, 1
  %78 = call i32 @openregion(i32 0, i32 %72, i32 %75, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %70
  call void @choose_corner_move(i32 1, i32* %3, i32* %4)
  %81 = load i32, i32* %3, align 4
  %82 = mul nsw i32 %81, 20
  %83 = add nsw i32 21, %82
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %2, align 4
  call void @announce_move(i32 %85, i32 %86, i32 %87)
  br label %88

88:                                               ; preds = %80, %70
  %89 = load i32, i32* @board_size, align 4
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* @board_size, align 4
  %93 = sub nsw i32 %92, 1
  %94 = load i32, i32* %5, align 4
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @openregion(i32 %91, i32 %93, i32 0, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %106

98:                                               ; preds = %88
  call void @choose_corner_move(i32 2, i32* %3, i32* %4)
  %99 = load i32, i32* %3, align 4
  %100 = mul nsw i32 %99, 20
  %101 = add nsw i32 21, %100
  %102 = load i32, i32* %4, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %2, align 4
  call void @announce_move(i32 %103, i32 %104, i32 %105)
  br label %106

106:                                              ; preds = %98, %88
  %107 = load i32, i32* @board_size, align 4
  %108 = load i32, i32* %5, align 4
  %109 = sub nsw i32 %107, %108
  %110 = load i32, i32* @board_size, align 4
  %111 = sub nsw i32 %110, 1
  %112 = load i32, i32* @board_size, align 4
  %113 = load i32, i32* %5, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* @board_size, align 4
  %116 = sub nsw i32 %115, 1
  %117 = call i32 @openregion(i32 %109, i32 %111, i32 %114, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %106
  call void @choose_corner_move(i32 3, i32* %3, i32* %4)
  %120 = load i32, i32* %3, align 4
  %121 = mul nsw i32 %120, 20
  %122 = add nsw i32 21, %121
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %2, align 4
  call void @announce_move(i32 %124, i32 %125, i32 %126)
  br label %127

127:                                              ; preds = %119, %106
  %128 = load i32, i32* %5, align 4
  %129 = sub nsw i32 %128, 1
  %130 = load i32, i32* %5, align 4
  %131 = sub nsw i32 %130, 1
  %132 = call i32 @openregion(i32 0, i32 %129, i32 0, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  call void @choose_corner_move(i32 0, i32* %3, i32* %4)
  %135 = load i32, i32* %3, align 4
  %136 = mul nsw i32 %135, 20
  %137 = add nsw i32 21, %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %2, align 4
  call void @announce_move(i32 %139, i32 %140, i32 %141)
  br label %142

142:                                              ; preds = %13, %21, %57, %134, %127
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_symmetries() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 1, i32* @horizontally_symmetric, align 4
  store i32 1, i32* @vertically_symmetric, align 4
  store i32 1, i32* @diagonally_symmetric, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %105, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @board_size, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = load i32, i32* @vertically_symmetric, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* @horizontally_symmetric, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* @diagonally_symmetric, align 4
  %15 = icmp ne i32 %14, 0
  br label %16

16:                                               ; preds = %13, %10, %7
  %17 = phi i1 [ true, %10 ], [ true, %7 ], [ %15, %13 ]
  br label %18

18:                                               ; preds = %16, %3
  %19 = phi i1 [ false, %3 ], [ %17, %16 ]
  br i1 %19, label %20, label %108

20:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %101, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @board_size, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %104

25:                                               ; preds = %21
  %26 = load i32, i32* %1, align 4
  %27 = mul nsw i32 %26, 20
  %28 = add nsw i32 21, %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %1, align 4
  %36 = mul nsw i32 %35, 20
  %37 = add nsw i32 21, %36
  %38 = load i32, i32* @board_size, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %2, align 4
  %41 = sub nsw i32 %39, %40
  %42 = add nsw i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %34, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %25
  store i32 0, i32* @horizontally_symmetric, align 4
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* %1, align 4
  %51 = mul nsw i32 %50, 20
  %52 = add nsw i32 21, %51
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = load i32, i32* @board_size, align 4
  %60 = sub nsw i32 %59, 1
  %61 = load i32, i32* %1, align 4
  %62 = sub nsw i32 %60, %61
  %63 = mul nsw i32 %62, 20
  %64 = add nsw i32 21, %63
  %65 = load i32, i32* %2, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %58, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %49
  store i32 0, i32* @vertically_symmetric, align 4
  br label %73

73:                                               ; preds = %72, %49
  %74 = load i32, i32* %1, align 4
  %75 = mul nsw i32 %74, 20
  %76 = add nsw i32 21, %75
  %77 = load i32, i32* %2, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = load i32, i32* @board_size, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %2, align 4
  %86 = sub nsw i32 %84, %85
  %87 = mul nsw i32 %86, 20
  %88 = add nsw i32 21, %87
  %89 = load i32, i32* @board_size, align 4
  %90 = sub nsw i32 %89, 1
  %91 = load i32, i32* %1, align 4
  %92 = sub nsw i32 %90, %91
  %93 = add nsw i32 %88, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = icmp ne i32 %82, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %73
  store i32 0, i32* @diagonally_symmetric, align 4
  br label %100

100:                                              ; preds = %99, %73
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %21, !llvm.loop !4

104:                                              ; preds = %21
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %1, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %1, align 4
  br label %3, !llvm.loop !6

108:                                              ; preds = %18
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_fuseki_database(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fullboard_pattern*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @stones_on_board(i32 3)
  %9 = icmp sgt i32 %8, 19
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

11:                                               ; preds = %1
  %12 = load i32, i32* @board_size, align 4
  %13 = icmp eq i32 %12, 9
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store %struct.fullboard_pattern* getelementptr inbounds ([0 x %struct.fullboard_pattern], [0 x %struct.fullboard_pattern]* @fuseki9, i64 0, i64 0), %struct.fullboard_pattern** %4, align 8
  br label %26

15:                                               ; preds = %11
  %16 = load i32, i32* @board_size, align 4
  %17 = icmp eq i32 %16, 13
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store %struct.fullboard_pattern* getelementptr inbounds ([0 x %struct.fullboard_pattern], [0 x %struct.fullboard_pattern]* @fuseki13, i64 0, i64 0), %struct.fullboard_pattern** %4, align 8
  br label %25

19:                                               ; preds = %15
  %20 = load i32, i32* @board_size, align 4
  %21 = icmp eq i32 %20, 19
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store %struct.fullboard_pattern* getelementptr inbounds ([0 x %struct.fullboard_pattern], [0 x %struct.fullboard_pattern]* @fuseki19, i64 0, i64 0), %struct.fullboard_pattern** %4, align 8
  br label %24

23:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %90

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24, %18
  br label %26

26:                                               ; preds = %25, %14
  store i32 0, i32* @num_fuseki_moves, align 4
  store i32 0, i32* @fuseki_total_value, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %4, align 8
  call void @fullboard_matchpat(void (i32, %struct.fullboard_pattern*, i32)* @fuseki_callback, i32 %27, %struct.fullboard_pattern* %28)
  %29 = load i32, i32* @num_fuseki_moves, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %90

32:                                               ; preds = %26
  %33 = load i32, i32* getelementptr inbounds ([361 x i32], [361 x i32]* @fuseki_value, i64 0, i64 0), align 16
  store i32 %33, i32* %7, align 4
  %34 = call i32 @gg_rand()
  %35 = load i32, i32* @fuseki_total_value, align 4
  %36 = srem i32 %34, %35
  store i32 %36, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %61, %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @num_fuseki_moves, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_value, i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %46, 5
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %64

50:                                               ; preds = %41
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_value, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %64

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %37, !llvm.loop !7

64:                                               ; preds = %59, %49, %37
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @num_fuseki_moves, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %70

69:                                               ; preds = %64
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_moves, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %3, align 4
  call void @announce_move(i32 %74, i32 75, i32 %75)
  store i32 0, i32* %6, align 4
  br label %76

76:                                               ; preds = %86, %70
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @num_fuseki_moves, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_moves, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @set_minimum_move_value(i32 %84, float 7.400000e+01)
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %76, !llvm.loop !8

89:                                               ; preds = %76
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %31, %23, %10
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @stones_on_board(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openregion(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @openregion(i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %64

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @openregion(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %64

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %60, %31
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %56, %37
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sle i32 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %44, 20
  %46 = add nsw i32 21, %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %64

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %39, !llvm.loop !9

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %33, !llvm.loop !10

63:                                               ; preds = %33
  store i32 1, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %54, %25, %15
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @announce_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %128

16:                                               ; preds = %3
  %17 = load i32, i32* @horizontally_symmetric, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sdiv i32 %20, 20
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = srem i32 %23, 20
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = mul nsw i32 2, %26
  %28 = load i32, i32* @board_size, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 1
  %34 = zext i1 %33 to i32
  %35 = xor i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %19
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 20
  %40 = add nsw i32 21, %39
  %41 = load i32, i32* @board_size, align 4
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %37, %19
  br label %47

47:                                               ; preds = %46, %16
  %48 = load i32, i32* @vertically_symmetric, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %47
  %51 = load i32, i32* %4, align 4
  %52 = sdiv i32 %51, 20
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %4, align 4
  %55 = srem i32 %54, 20
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = mul nsw i32 2, %57
  %59 = load i32, i32* @board_size, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp sgt i32 %58, %60
  %62 = zext i1 %61 to i32
  %63 = load i32, i32* %6, align 4
  %64 = icmp eq i32 %63, 1
  %65 = zext i1 %64 to i32
  %66 = xor i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %50
  %69 = load i32, i32* @board_size, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 %70, %71
  %73 = mul nsw i32 %72, 20
  %74 = add nsw i32 21, %73
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %68, %50
  br label %78

78:                                               ; preds = %77, %47
  %79 = load i32, i32* @diagonally_symmetric, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = sdiv i32 %82, 20
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %4, align 4
  %86 = srem i32 %85, 20
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* @board_size, align 4
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* %8, align 4
  %91 = sub nsw i32 %89, %90
  %92 = load i32, i32* %7, align 4
  %93 = icmp sgt i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 1
  %97 = zext i1 %96 to i32
  %98 = xor i32 %94, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %112

100:                                              ; preds = %81
  %101 = load i32, i32* @board_size, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 %102, %103
  %105 = mul nsw i32 %104, 20
  %106 = add nsw i32 21, %105
  %107 = load i32, i32* @board_size, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %7, align 4
  %110 = sub nsw i32 %108, %109
  %111 = add nsw i32 %106, %110
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %100, %81
  br label %113

113:                                              ; preds = %112, %78
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = sitofp i32 %115 to float
  %117 = call i32 @set_minimum_move_value(i32 %114, float %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load i32, i32* @verbose, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  br label %127

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %122
  br label %128

128:                                              ; preds = %15, %127, %113
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @choose_corner_move(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* @board_size, align 4
  %12 = icmp sle i32 %11, 11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @small_board, i64 0, i64 0), i32** %7, align 8
  br label %20

14:                                               ; preds = %3
  %15 = load i32, i32* @board_size, align 4
  %16 = icmp sle i32 %15, 15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @medium_board, i64 0, i64 0), i32** %7, align 8
  br label %19

18:                                               ; preds = %14
  store i32* getelementptr inbounds ([8 x i32], [8 x i32]* @large_board, i64 0, i64 0), i32** %7, align 8
  br label %19

19:                                               ; preds = %18, %17
  br label %20

20:                                               ; preds = %19, %13
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %32, %20
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %21, !llvm.loop !11

35:                                               ; preds = %21
  %36 = call i32 @gg_rand()
  %37 = load i32, i32* %8, align 4
  %38 = srem i32 %36, %37
  store i32 %38, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %54, %35
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 8
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %57

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %39, !llvm.loop !12

57:                                               ; preds = %52, %39
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @corners, i64 0, i64 %59
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* @corners, i64 0, i64 %65
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %66, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %4, align 4
  switch i32 %70, label %111 [
    i32 0, label %71
    i32 1, label %80
    i32 2, label %90
    i32 3, label %100
  ]

71:                                               ; preds = %57
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 1
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i32*, i32** %6, align 8
  store i32 %78, i32* %79, align 4
  br label %111

80:                                               ; preds = %57
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32*, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32, i32* @board_size, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %85, %87
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  br label %111

90:                                               ; preds = %57
  %91 = load i32, i32* @board_size, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %92, align 4
  %94 = sub nsw i32 %91, %93
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %111

100:                                              ; preds = %57
  %101 = load i32, i32* @board_size, align 4
  %102 = load i32*, i32** %5, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sub nsw i32 %101, %103
  %105 = load i32*, i32** %5, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @board_size, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %106, %108
  %110 = load i32*, i32** %6, align 8
  store i32 %109, i32* %110, align 4
  br label %111

111:                                              ; preds = %57, %100, %90, %80, %71
  ret void
}

declare dso_local void @fullboard_matchpat(void (i32, %struct.fullboard_pattern*, i32)*, i32, %struct.fullboard_pattern*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fuseki_callback(i32 %0, %struct.fullboard_pattern* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fullboard_pattern*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fullboard_pattern* %1, %struct.fullboard_pattern** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @verbose, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %21

10:                                               ; preds = %3
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %5, align 8
  %13 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %12, i32 0, i32 4
  %14 = load float, float* %13, align 4
  %15 = fptosi float %14 to i32
  %16 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %5, align 8
  %17 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i32 %11, i32 %15, i8* %18, i32 %19)
  br label %21

21:                                               ; preds = %10, %9
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @num_fuseki_moves, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_moves, i64 0, i64 %24
  store i32 %22, i32* %25, align 4
  %26 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %5, align 8
  %27 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %26, i32 0, i32 4
  %28 = load float, float* %27, align 4
  %29 = fptosi float %28 to i32
  %30 = load i32, i32* @num_fuseki_moves, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [361 x i32], [361 x i32]* @fuseki_value, i64 0, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %5, align 8
  %34 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %33, i32 0, i32 4
  %35 = load float, float* %34, align 4
  %36 = load i32, i32* @fuseki_total_value, align 4
  %37 = sitofp i32 %36 to float
  %38 = fadd float %37, %35
  %39 = fptosi float %38 to i32
  store i32 %39, i32* @fuseki_total_value, align 4
  %40 = load i32, i32* @num_fuseki_moves, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* @num_fuseki_moves, align 4
  ret void
}

declare dso_local i32 @gg_rand() #1

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @set_minimum_move_value(i32, float) #1

declare dso_local i32 @gprintf(i8*, ...) #1

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
!12 = distinct !{!12, !5}
