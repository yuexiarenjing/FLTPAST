; ModuleID = 'sgffile.c'
source_filename = "sgffile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@outfilename = external dso_local global [128 x i8], align 16
@board_size = external dso_local global i32, align 4
@board = external dso_local global [421 x i8], align 16
@output_flags = external dso_local global i32, align 4
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@.str = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@potential_moves = external dso_local global [19 x [19 x float]], align 16
@.str.2 = private unnamed_addr constant [3 x i8] c"<1\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Value of move: %d\00", align 1
@sgffile_begindump.local_tree = internal global %struct.SGFTree_t zeroinitializer, align 8
@sgf_dumptree = external dso_local global %struct.SGFTree_t*, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"sgffile.c\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"sgf_dumptree == ((void*)0)\00", align 1
@komi = external dso_local global float, align 4
@black_captured = external dso_local global i32, align 4
@white_captured = external dso_local global i32, align 4
@random_seed = external dso_local global i32, align 4
@level = external dso_local global i32, align 4
@chinese_rules = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"GNU Go %s load and print\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"GN\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"PL\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"IL\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"tree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgffile_add_debuginfo(%struct.SGFNode_t* %0, i32 %1) #0 {
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [24 x i8], align 16
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %122

11:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %105, %11
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @board_size, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %108

16:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %101, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @board_size, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %104

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = mul nsw i32 %22, 20
  %24 = add nsw i32 21, %23
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %21
  %33 = load i32, i32* @output_flags, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 20
  %39 = add nsw i32 21, %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  switch i32 %45, label %56 [
    i32 0, label %46
    i32 2, label %51
  ]

46:                                               ; preds = %36
  %47 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %56

51:                                               ; preds = %36
  %52 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %36, %51, %46
  br label %57

57:                                               ; preds = %56, %32, %21
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %59
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [19 x float], [19 x float]* %60, i64 0, i64 %62
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = fcmp ogt double %65, 0.000000e+00
  br i1 %66, label %67, label %100

67:                                               ; preds = %57
  %68 = load i32, i32* @output_flags, align 4
  %69 = and i32 %68, 2
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %73
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [19 x float], [19 x float]* %74, i64 0, i64 %76
  %78 = load float, float* %77, align 4
  %79 = fpext float %78 to double
  %80 = fcmp olt double %79, 1.000000e+00
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t* %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  br label %99

86:                                               ; preds = %71
  %87 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %89
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [19 x float], [19 x float]* %90, i64 0, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fptosi float %94 to i32
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call %struct.SGFNode_t* @sgfLabelInt(%struct.SGFNode_t* %87, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %86, %81
  br label %100

100:                                              ; preds = %99, %67, %57
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %17, !llvm.loop !4

104:                                              ; preds = %17
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %12, !llvm.loop !6

108:                                              ; preds = %12
  %109 = load i32, i32* %4, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load i32, i32* @output_flags, align 4
  %113 = and i32 %112, 2
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %117) #3
  %119 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %120 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %121 = call %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t* %119, i8* %120)
  br label %122

122:                                              ; preds = %10, %115, %111, %108
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t*, i8*, i32, i32) #1

declare dso_local %struct.SGFNode_t* @sgfLabelInt(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgffile_output(%struct.SGFTree_t* %0) #0 {
  %2 = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %2, align 8
  %3 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %4 = icmp ne i8 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %7 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %6, i32 0, i32 0
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %9 = call i32 @writesgf(%struct.SGFNode_t* %8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @writesgf(%struct.SGFNode_t*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgffile_begindump(%struct.SGFTree_t* %0) #0 {
  %2 = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %2, align 8
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %4 = icmp eq %struct.SGFTree_t* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 118, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 -1)
  br label %7

7:                                                ; preds = %6, %5
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %9 = icmp eq %struct.SGFTree_t* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store %struct.SGFTree_t* @sgffile_begindump.local_tree, %struct.SGFTree_t** @sgf_dumptree, align 8
  br label %13

11:                                               ; preds = %7
  %12 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  store %struct.SGFTree_t* %12, %struct.SGFTree_t** @sgf_dumptree, align 8
  br label %13

13:                                               ; preds = %11, %10
  %14 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgftree_clear(%struct.SGFTree_t* %14)
  %15 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %16 = load i32, i32* @board_size, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %15, i32 %16, float 0.000000e+00)
  %17 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  call void @sgffile_printboard(%struct.SGFTree_t* %17)
  ret void
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local void @sgftree_clear(%struct.SGFTree_t*) #1

declare dso_local void @sgftreeCreateHeaderNode(%struct.SGFTree_t*, i32, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgffile_printboard(%struct.SGFTree_t* %0) #0 {
  %2 = alloca %struct.SGFTree_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %2, align 8
  %6 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %7 = icmp ne %struct.SGFTree_t* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 -1, i32 -1)
  br label %10

10:                                               ; preds = %9, %8
  %11 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %12 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %11, i32 0, i32 1
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %14 = call %struct.SGFNode_t* @sgfAddChild(%struct.SGFNode_t* %13)
  store %struct.SGFNode_t* %14, %struct.SGFNode_t** %5, align 8
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %45, %10
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @board_size, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %48

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %41, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @board_size, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i32, i32* %3, align 4
  %26 = mul nsw i32 %25, 20
  %27 = add nsw i32 21, %26
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %36, i32 1, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %24
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %20, !llvm.loop !7

44:                                               ; preds = %20
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %15, !llvm.loop !8

48:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %79, %48
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @board_size, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %82

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %75, %53
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @board_size, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = mul nsw i32 %59, 20
  %61 = add nsw i32 21, %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %70, i32 2, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %58
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %54, !llvm.loop !9

78:                                               ; preds = %54
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %49, !llvm.loop !10

82:                                               ; preds = %49
  %83 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %84 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  call void @sgftreeSetLastNode(%struct.SGFTree_t* %83, %struct.SGFNode_t* %84)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgffile_enddump(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = icmp ne i8* %3, null
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = load i8*, i8** %2, align 8
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %5
  %11 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %12 = icmp ne %struct.SGFTree_t* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %15 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %14, i32 0, i32 0
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %15, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @writesgf(%struct.SGFNode_t* %16, i8* %17)
  %19 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %20 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %19, i32 0, i32 0
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %20, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %21)
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  br label %22

22:                                               ; preds = %13, %10, %5, %1
  ret void
}

declare dso_local void @sgfFreeNode(%struct.SGFNode_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgffile_printsgf(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.SGFTree_t, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca [128 x i8], align 16
  %10 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load float, float* @komi, align 4
  %12 = load i32, i32* @black_captured, align 4
  %13 = sitofp i32 %12 to float
  %14 = fadd float %11, %13
  %15 = load i32, i32* @white_captured, align 4
  %16 = sitofp i32 %15 to float
  %17 = fsub float %14, %16
  store float %17, float* %10, align 4
  call void @sgftree_clear(%struct.SGFTree_t* %5)
  %18 = load i32, i32* @board_size, align 4
  %19 = load float, float* %10, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %5, i32 %18, float %19)
  %20 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 0
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %20, align 8
  %22 = load i32, i32* @random_seed, align 4
  %23 = load float, float* %10, align 4
  %24 = load i32, i32* @level, align 4
  %25 = load i32, i32* @chinese_rules, align 4
  call void @sgf_write_header(%struct.SGFNode_t* %21, i32 1, i32 %22, float %23, i32 %24, i32 %25)
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %27 = call i8* @gg_version()
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %26, i64 128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %27)
  %28 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 0
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %28, align 8
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %30)
  call void @sgffile_printboard(%struct.SGFTree_t* %5)
  %31 = load i32, i32* %3, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %87

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 1
  %35 = load %struct.SGFNode_t*, %struct.SGFNode_t** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 1
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0)
  call void @sgfAddProperty(%struct.SGFNode_t* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %39)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %83, %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @board_size, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %86

44:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %79, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @board_size, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 20
  %52 = add nsw i32 21, %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  %62 = mul nsw i32 %61, 20
  %63 = add nsw i32 21, %62
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @is_legal(i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %60
  %70 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 97, %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 97, %73
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %70, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %72, i32 %74)
  %75 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 1
  %76 = load %struct.SGFNode_t*, %struct.SGFNode_t** %75, align 8
  %77 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %77)
  br label %78

78:                                               ; preds = %69, %60, %49
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %45, !llvm.loop !11

82:                                               ; preds = %45
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %40, !llvm.loop !12

86:                                               ; preds = %40
  br label %87

87:                                               ; preds = %86, %2
  %88 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 0
  %89 = load %struct.SGFNode_t*, %struct.SGFNode_t** %88, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @writesgf(%struct.SGFNode_t* %89, i8* %90)
  ret void
}

declare dso_local void @sgf_write_header(%struct.SGFNode_t*, i32, i32, float, i32, i32) #1

declare dso_local void @gg_snprintf(i8*, i64, i8*, ...) #1

declare dso_local i8* @gg_version() #1

declare dso_local void @sgfOverwriteProperty(%struct.SGFNode_t*, i8*, i8*) #1

declare dso_local void @sgfAddProperty(%struct.SGFNode_t*, i8*, i8*) #1

declare dso_local i32 @is_legal(i32, i32) #1

declare dso_local %struct.SGFNode_t* @sgfAddChild(%struct.SGFNode_t*) #1

declare dso_local %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t*, i32, i32, i32) #1

declare dso_local void @sgftreeSetLastNode(%struct.SGFTree_t*, %struct.SGFNode_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgffile_recordboard(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %6 = icmp ne %struct.SGFNode_t* %5, null
  br i1 %6, label %7, label %42

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %38, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @board_size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %34, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @board_size, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %18, 20
  %20 = add nsw i32 21, %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %29, i32 2, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %17
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %13, !llvm.loop !13

37:                                               ; preds = %13
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %8, !llvm.loop !14

41:                                               ; preds = %8
  br label %42

42:                                               ; preds = %41, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
