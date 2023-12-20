; ModuleID = 'handicap.c'
source_filename = "handicap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.handicap_match = type { i32, i32, %struct.pattern*, i32 }

@board_size = external dso_local global i32, align 4
@places = internal constant [9 x [2 x i32]] [[2 x i32] [i32 2, i32 -2], [2 x i32] [i32 -2, i32 2], [2 x i32] [i32 2, i32 2], [2 x i32] [i32 -2, i32 -2], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 -2], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 -2, i32 0], [2 x i32] zeroinitializer], align 16
@.str = private unnamed_addr constant [11 x i8] c"handicap.c\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"handicap == 0 || handicap >= 2\00", align 1
@total_handicap_stones = internal global i32 -1, align 4
@remaining_handicap_stones = internal global i32 -1, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"remaining_handicap_stones >= 0\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"total_handicap_stones >= 0\00", align 1
@number_of_matches = internal global i32 0, align 4
@handipat_db = external dso_local global %struct.pattern_db, align 8
@handicap_matches = internal global [40 x %struct.handicap_match] zeroinitializer, align 16
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@.str.4 = private unnamed_addr constant [17 x i8] c"r >= 0 && r < 40\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @place_fixed_handicap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* @board_size, align 4
  %12 = icmp sgt i32 %11, 11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 3, i32 2
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @board_size, align 4
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %130

21:                                               ; preds = %1
  %22 = load i32, i32* @board_size, align 4
  %23 = srem i32 %22, 2
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @board_size, align 4
  %27 = icmp sge i32 %26, 9
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 9, i32* %5, align 4
  br label %35

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @board_size, align 4
  %31 = icmp sge i32 %30, 7
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4, i32* %5, align 4
  br label %34

33:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %28
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %46, 7
  br i1 %47, label %48, label %56

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %49, 20
  %51 = add nsw i32 21, %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  call void @add_stone(i32 %53, i32 2)
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %45
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %125, %56
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %3, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %57
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @places, i64 0, i64 %63
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %64, i64 0, i64 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [9 x [2 x i32]], [9 x [2 x i32]]* @places, i64 0, i64 %68
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %69, i64 0, i64 1
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %74, %61
  %77 = load i32, i32* %9, align 4
  %78 = icmp eq i32 %77, -2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %85, %82
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, -2
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %9, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %10, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %10, align 4
  br label %103

103:                                              ; preds = %101, %98
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %103
  %107 = load i32, i32* @board_size, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %106, %103
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %111
  %115 = load i32, i32* @board_size, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %114, %111
  %120 = load i32, i32* %9, align 4
  %121 = mul nsw i32 %120, 20
  %122 = add nsw i32 21, %121
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %122, %123
  call void @add_stone(i32 %124, i32 2)
  br label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %4, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %4, align 4
  br label %57, !llvm.loop !4

128:                                              ; preds = %57
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %20
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local void @add_stone(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @place_free_handicap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 2
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  br label %12

11:                                               ; preds = %7
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 221, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %76

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* @total_handicap_stones, align 4
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* @remaining_handicap_stones, align 4
  call void @add_stone(i32 21, i32 2)
  %19 = load i32, i32* @board_size, align 4
  %20 = sub nsw i32 %19, 1
  %21 = add nsw i32 21, %20
  call void @add_stone(i32 %21, i32 2)
  %22 = load i32, i32* @board_size, align 4
  %23 = sub nsw i32 %22, 1
  %24 = mul nsw i32 %23, 20
  %25 = add nsw i32 21, %24
  %26 = add nsw i32 %25, 0
  call void @add_stone(i32 %26, i32 2)
  %27 = load i32, i32* @board_size, align 4
  %28 = sub nsw i32 %27, 1
  %29 = mul nsw i32 %28, 20
  %30 = add nsw i32 21, %29
  %31 = load i32, i32* @board_size, align 4
  %32 = sub nsw i32 %31, 1
  %33 = add nsw i32 %30, %32
  call void @add_stone(i32 %33, i32 2)
  br label %34

34:                                               ; preds = %41, %16
  %35 = load i32, i32* @remaining_handicap_stones, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = call i32 @find_free_handicap_pattern()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  br label %42

41:                                               ; preds = %37
  br label %34, !llvm.loop !6

42:                                               ; preds = %40, %34
  call void @remove_stone(i32 21)
  %43 = load i32, i32* @board_size, align 4
  %44 = sub nsw i32 %43, 1
  %45 = add nsw i32 21, %44
  call void @remove_stone(i32 %45)
  %46 = load i32, i32* @board_size, align 4
  %47 = sub nsw i32 %46, 1
  %48 = mul nsw i32 %47, 20
  %49 = add nsw i32 21, %48
  %50 = add nsw i32 %49, 0
  call void @remove_stone(i32 %50)
  %51 = load i32, i32* @board_size, align 4
  %52 = sub nsw i32 %51, 1
  %53 = mul nsw i32 %52, 20
  %54 = add nsw i32 21, %53
  %55 = load i32, i32* @board_size, align 4
  %56 = sub nsw i32 %55, 1
  %57 = add nsw i32 %54, %56
  call void @remove_stone(i32 %57)
  br label %58

58:                                               ; preds = %70, %42
  %59 = load i32, i32* @remaining_handicap_stones, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %58
  %62 = call i32 @genmove_conservative(i32* null, i32* null, i32 2)
  %63 = call i32 @aftermath_genmove(i32* %4, i32 2, i32* null, i32 0)
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  call void @add_stone(i32 %66, i32 2)
  %67 = load i32, i32* @remaining_handicap_stones, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* @remaining_handicap_stones, align 4
  br label %70

69:                                               ; preds = %61
  br label %71

70:                                               ; preds = %65
  br label %58, !llvm.loop !7

71:                                               ; preds = %69, %58
  %72 = load i32, i32* @remaining_handicap_stones, align 4
  %73 = load i32, i32* %3, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %3, align 4
  store i32 -1, i32* @total_handicap_stones, align 4
  store i32 -1, i32* @remaining_handicap_stones, align 4
  %75 = load i32, i32* %3, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %15
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_handicap_pattern() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pattern*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 -1, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* @number_of_matches, align 4
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @free_handicap_callback, i32 2, %struct.pattern_db* @handipat_db, i8* null, i8* null)
  %11 = load i32, i32* @number_of_matches, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %175

14:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %34, %14
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @number_of_matches, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %19
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %19
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %15, !llvm.loop !8

37:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* @number_of_matches, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 %48, 10
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* %2, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  br label %70

56:                                               ; preds = %42
  %57 = load i32, i32* %2, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sub nsw i32 %61, %62
  %64 = add nsw i32 %63, 10
  %65 = shl i32 1, %64
  %66 = load i32, i32* %2, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %67
  %69 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  br label %70

70:                                               ; preds = %56, %51
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %72
  %74 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %70
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %38, !llvm.loop !9

81:                                               ; preds = %38
  %82 = call i32 @gg_rand()
  %83 = load i32, i32* %4, align 4
  %84 = srem i32 %82, %83
  store i32 %84, i32* %5, align 4
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %101, %81
  %86 = load i32, i32* %2, align 4
  %87 = load i32, i32* @number_of_matches, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i32, i32* %2, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %104

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %2, align 4
  br label %85, !llvm.loop !10

104:                                              ; preds = %99, %85
  %105 = load i32, i32* %2, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %112, i32 0, i32 2
  %114 = load %struct.pattern*, %struct.pattern** %113, align 8
  store %struct.pattern* %114, %struct.pattern** %7, align 8
  %115 = load i32, i32* %2, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %116
  %118 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %8, align 4
  %120 = load %struct.pattern*, %struct.pattern** %7, align 8
  %121 = getelementptr inbounds %struct.pattern, %struct.pattern* %120, i32 0, i32 11
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %123
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [8 x i32], [8 x i32]* %124, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %128, %129
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  call void @add_stone(i32 %131, i32 2)
  %132 = load i32, i32* @remaining_handicap_stones, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* @remaining_handicap_stones, align 4
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %171, %104
  %135 = load i32, i32* %2, align 4
  %136 = load %struct.pattern*, %struct.pattern** %7, align 8
  %137 = getelementptr inbounds %struct.pattern, %struct.pattern* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %174

140:                                              ; preds = %134
  %141 = load %struct.pattern*, %struct.pattern** %7, align 8
  %142 = getelementptr inbounds %struct.pattern, %struct.pattern* %141, i32 0, i32 0
  %143 = load %struct.patval*, %struct.patval** %142, align 8
  %144 = load i32, i32* %2, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.patval, %struct.patval* %143, i64 %145
  %147 = getelementptr inbounds %struct.patval, %struct.patval* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 7
  br i1 %149, label %150, label %170

150:                                              ; preds = %140
  %151 = load %struct.pattern*, %struct.pattern** %7, align 8
  %152 = getelementptr inbounds %struct.pattern, %struct.pattern* %151, i32 0, i32 0
  %153 = load %struct.patval*, %struct.patval** %152, align 8
  %154 = load i32, i32* %2, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.patval, %struct.patval* %153, i64 %155
  %157 = getelementptr inbounds %struct.patval, %struct.patval* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %159
  %161 = load i32, i32* %8, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [8 x i32], [8 x i32]* %160, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %164, %165
  store i32 %166, i32* %10, align 4
  %167 = load i32, i32* %10, align 4
  call void @add_stone(i32 %167, i32 2)
  %168 = load i32, i32* @remaining_handicap_stones, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* @remaining_handicap_stones, align 4
  br label %170

170:                                              ; preds = %150, %140
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %2, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %2, align 4
  br label %134, !llvm.loop !11

174:                                              ; preds = %134
  store i32 1, i32* %1, align 4
  br label %175

175:                                              ; preds = %174, %13
  %176 = load i32, i32* %1, align 4
  ret i32 %176
}

declare dso_local void @remove_stone(i32) #1

declare dso_local i32 @genmove_conservative(i32*, i32*, i32) #1

declare dso_local i32 @aftermath_genmove(i32*, i32, i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_handicap_remaining_stones() #0 {
  %1 = load i32, i32* @remaining_handicap_stones, align 4
  %2 = icmp sge i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 414, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 -1, i32 -1)
  br label %5

5:                                                ; preds = %4, %3
  %6 = load i32, i32* @remaining_handicap_stones, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_handicap_total_stones() #0 {
  %1 = load i32, i32* @total_handicap_stones, align 4
  %2 = icmp sge i32 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %5

4:                                                ; preds = %0
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 421, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32 -1)
  br label %5

5:                                                ; preds = %4, %3
  %6 = load i32, i32* @total_handicap_stones, align 4
  ret i32 %6
}

declare dso_local void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_handicap_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
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
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  %16 = load %struct.pattern*, %struct.pattern** %8, align 8
  %17 = getelementptr inbounds %struct.pattern, %struct.pattern* %16, i32 0, i32 11
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %19
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %20, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i8*, i8** %10, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %48, %5
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.pattern*, %struct.pattern** %8, align 8
  %31 = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load %struct.pattern*, %struct.pattern** %8, align 8
  %36 = getelementptr inbounds %struct.pattern, %struct.pattern* %35, i32 0, i32 0
  %37 = load %struct.patval*, %struct.patval** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.patval, %struct.patval* %37, i64 %39
  %41 = getelementptr inbounds %struct.patval, %struct.patval* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 7
  br i1 %43, label %44, label %47

44:                                               ; preds = %34
  %45 = load i32, i32* %13, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %44, %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %28, !llvm.loop !12

51:                                               ; preds = %28
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @remaining_handicap_stones, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %139

56:                                               ; preds = %51
  %57 = load %struct.pattern*, %struct.pattern** %8, align 8
  %58 = getelementptr inbounds %struct.pattern, %struct.pattern* %57, i32 0, i32 20
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %56
  %63 = load %struct.pattern*, %struct.pattern** %8, align 8
  %64 = getelementptr inbounds %struct.pattern, %struct.pattern* %63, i32 0, i32 22
  %65 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 %65(i32 %66, i32 %67, i32 %68, i32 0)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %62
  br label %139

72:                                               ; preds = %62
  br label %73

73:                                               ; preds = %72, %56
  %74 = load i32, i32* @number_of_matches, align 4
  %75 = icmp slt i32 %74, 40
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, i32* @number_of_matches, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* @number_of_matches, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @number_of_matches, align 4
  br label %107

80:                                               ; preds = %73
  %81 = load i32, i32* getelementptr inbounds ([40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 0, i32 0), align 16
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %83

83:                                               ; preds = %103, %80
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* @number_of_matches, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %83
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %87
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %95, %87
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %83, !llvm.loop !13

106:                                              ; preds = %83
  br label %107

107:                                              ; preds = %106, %76
  %108 = load i32, i32* %11, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* %11, align 4
  %112 = icmp slt i32 %111, 40
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  br label %115

114:                                              ; preds = %110, %107
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 -1, i32 -1)
  br label %115

115:                                              ; preds = %114, %113
  %116 = load %struct.pattern*, %struct.pattern** %8, align 8
  %117 = getelementptr inbounds %struct.pattern, %struct.pattern* %116, i32 0, i32 13
  %118 = load float, float* %117, align 4
  %119 = fptosi float %118 to i32
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %122, i32 0, i32 0
  store i32 %119, i32* %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load %struct.pattern*, %struct.pattern** %8, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %132, i32 0, i32 2
  store %struct.pattern* %129, %struct.pattern** %133, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %11, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [40 x %struct.handicap_match], [40 x %struct.handicap_match]* @handicap_matches, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.handicap_match, %struct.handicap_match* %137, i32 0, i32 3
  store i32 %134, i32* %138, align 8
  br label %139

139:                                              ; preds = %115, %71, %55
  ret void
}

declare dso_local i32 @gg_rand() #1

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
!13 = distinct !{!13, !5}
