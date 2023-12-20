; ModuleID = 'interface.c'
source_filename = "interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }

@.str = private unnamed_addr constant [12 x i8] c"interface.c\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"5 <= boardsize && boardsize <= 19\00", align 1
@board_size = external dso_local global i32, align 4
@komi = external dso_local global float, align 4
@board = external dso_local global [421 x i8], align 16
@movenum = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Board Size:   %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Handicap      %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Komi:         %.1f\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Move Number:  %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"To Move:      %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Computer player: \00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"White\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"Black\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Both (solo)\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"Nobody\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"HA\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [35 x i8] c" Handicap HA[%d] is unreasonable.\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c" Modify SGF file.\0A\00", align 1
@debug = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [23 x i8] c"Loading until move %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Loading until move at %d,%d (%m)\0A\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"%c%c[%s]\0A\00", align 1
@.str.20 = private unnamed_addr constant [68 x i8] c"WARNING: Move off board or on occupied position found in sgf-file.\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Move at %m ignored, trying to proceed.\0A\00", align 1
@board_ko_pos = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_gnugo() #0 {
  call void @reading_cache_init()
  call void @clear_board()
  call void @transformation_init()
  call void @dfa_match_init()
  ret void
}

declare dso_local void @reading_cache_init() #1

declare dso_local void @clear_board() #1

declare dso_local void @transformation_init() #1

declare dso_local void @dfa_match_init() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_clear_board(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp sle i32 5, %3
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 19
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %10

9:                                                ; preds = %5, %1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* @board_size, align 4
  call void @clear_board()
  ret void
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_set_komi(float %0) #0 {
  %2 = alloca float, align 4
  store float %0, float* %2, align 4
  %3 = load float, float* %2, align 4
  store float %3, float* @komi, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_add_stone(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 %7, 20
  %9 = add nsw i32 21, %8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* %6, align 4
  call void @add_stone(i32 %11, i32 %12)
  ret void
}

declare dso_local void @add_stone(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_remove_stone(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = mul nsw i32 %5, 20
  %7 = add nsw i32 21, %6
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %7, %8
  call void @remove_stone(i32 %9)
  ret void
}

declare dso_local void @remove_stone(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_is_pass(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = mul nsw i32 %5, 20
  %7 = add nsw i32 21, %6
  %8 = load i32, i32* %4, align 4
  %9 = add nsw i32 %7, %8
  %10 = call i32 @is_pass(i32 %9)
  ret i32 %10
}

declare dso_local i32 @is_pass(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_play_move(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 %7, 20
  %9 = add nsw i32 21, %8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* %6, align 4
  call void @play_move(i32 %11, i32 %12)
  ret void
}

declare dso_local void @play_move(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_undo_move(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @undo_move(i32 %3)
  ret i32 %4
}

declare dso_local i32 @undo_move(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_play_sgfnode(%struct.SGFNode_t* %0, i32 %1) #0 {
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %9 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 0
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  store %struct.SGFProperty_t* %10, %struct.SGFProperty_t** %7, align 8
  br label %11

11:                                               ; preds = %67, %2
  %12 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %13 = icmp ne %struct.SGFProperty_t* %12, null
  br i1 %13, label %14, label %71

14:                                               ; preds = %11
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %16 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %15, i32 0, i32 1
  %17 = load i16, i16* %16, align 8
  %18 = sext i16 %17 to i32
  switch i32 %18, label %66 [
    i32 16961, label %19
    i32 22337, label %25
    i32 19536, label %31
    i32 8279, label %50
    i32 8258, label %50
  ]

19:                                               ; preds = %14
  %20 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %21 = load i32, i32* @board_size, align 4
  %22 = call i32 @get_moveXY(%struct.SGFProperty_t* %20, i32* %5, i32* %6, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  call void @gnugo_add_stone(i32 %23, i32 %24, i32 2)
  br label %66

25:                                               ; preds = %14
  %26 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %27 = load i32, i32* @board_size, align 4
  %28 = call i32 @get_moveXY(%struct.SGFProperty_t* %26, i32* %5, i32* %6, i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  call void @gnugo_add_stone(i32 %29, i32 %30, i32 1)
  br label %66

31:                                               ; preds = %14
  %32 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %33 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 119
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %41 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 87
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %31
  store i32 1, i32* %4, align 4
  br label %49

48:                                               ; preds = %39
  store i32 2, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47
  br label %66

50:                                               ; preds = %14, %14
  %51 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %52 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %51, i32 0, i32 1
  %53 = load i16, i16* %52, align 8
  %54 = sext i16 %53 to i32
  %55 = icmp eq i32 %54, 8279
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 2
  store i32 %57, i32* %4, align 4
  %58 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %59 = load i32, i32* @board_size, align 4
  %60 = call i32 @get_moveXY(%struct.SGFProperty_t* %58, i32* %5, i32* %6, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %4, align 4
  call void @gnugo_play_move(i32 %61, i32 %62, i32 %63)
  %64 = load i32, i32* %4, align 4
  %65 = sub nsw i32 3, %64
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %14, %50, %49, %25, %19
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %69 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %68, i32 0, i32 0
  %70 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %69, align 8
  store %struct.SGFProperty_t* %70, %struct.SGFProperty_t** %7, align 8
  br label %11, !llvm.loop !4

71:                                               ; preds = %11
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @get_moveXY(%struct.SGFProperty_t*, i32*, i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_play_sgftree(%struct.SGFNode_t* %0, i32* %1, %struct.SGFNode_t** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.SGFNode_t**, align 8
  %8 = alloca %struct.SGFNode_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.SGFProperty_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.SGFNode_t** %2, %struct.SGFNode_t*** %7, align 8
  store i32 2, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %14)
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  store %struct.SGFNode_t* %15, %struct.SGFNode_t** %8, align 8
  br label %16

16:                                               ; preds = %97, %3
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  %18 = icmp ne %struct.SGFNode_t* %17, null
  br i1 %18, label %19, label %101

19:                                               ; preds = %16
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  %21 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %20, i32 0, i32 0
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %21, align 8
  store %struct.SGFProperty_t* %22, %struct.SGFProperty_t** %10, align 8
  br label %23

23:                                               ; preds = %92, %19
  %24 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %25 = icmp ne %struct.SGFProperty_t* %24, null
  br i1 %25, label %26, label %96

26:                                               ; preds = %23
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %28 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = sext i16 %29 to i32
  switch i32 %30, label %91 [
    i32 16961, label %31
    i32 22337, label %37
    i32 19536, label %43
    i32 8279, label %62
    i32 8258, label %62
  ]

31:                                               ; preds = %26
  %32 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %33 = load i32, i32* @board_size, align 4
  %34 = call i32 @get_moveXY(%struct.SGFProperty_t* %32, i32* %11, i32* %12, i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  call void @gnugo_add_stone(i32 %35, i32 %36, i32 2)
  br label %91

37:                                               ; preds = %26
  %38 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %39 = load i32, i32* @board_size, align 4
  %40 = call i32 @get_moveXY(%struct.SGFProperty_t* %38, i32* %11, i32* %12, i32 %39)
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  call void @gnugo_add_stone(i32 %41, i32 %42, i32 1)
  br label %91

43:                                               ; preds = %26
  %44 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %45 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 119
  br i1 %50, label %59, label %51

51:                                               ; preds = %43
  %52 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %53 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 87
  br i1 %58, label %59, label %60

59:                                               ; preds = %51, %43
  store i32 1, i32* %9, align 4
  br label %61

60:                                               ; preds = %51
  store i32 2, i32* %9, align 4
  br label %61

61:                                               ; preds = %60, %59
  br label %91

62:                                               ; preds = %26, %26
  %63 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %64 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %63, i32 0, i32 1
  %65 = load i16, i16* %64, align 8
  %66 = sext i16 %65 to i32
  %67 = icmp eq i32 %66, 8279
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 1, i32 2
  store i32 %69, i32* %9, align 4
  %70 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %71 = load i32, i32* @board_size, align 4
  %72 = call i32 @get_moveXY(%struct.SGFProperty_t* %70, i32* %11, i32* %12, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %62
  %80 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  %81 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %80, i32 0, i32 1
  %82 = load %struct.SGFNode_t*, %struct.SGFNode_t** %81, align 8
  %83 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %7, align 8
  store %struct.SGFNode_t* %82, %struct.SGFNode_t** %83, align 8
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %105

85:                                               ; preds = %62
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* %9, align 4
  call void @gnugo_play_move(i32 %86, i32 %87, i32 %88)
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 3, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %26, %85, %61, %37, %31
  br label %92

92:                                               ; preds = %91
  %93 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %94 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %93, i32 0, i32 0
  %95 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %94, align 8
  store %struct.SGFProperty_t* %95, %struct.SGFProperty_t** %10, align 8
  br label %23, !llvm.loop !6

96:                                               ; preds = %23
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  %99 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %98, i32 0, i32 2
  %100 = load %struct.SGFNode_t*, %struct.SGFNode_t** %99, align 8
  store %struct.SGFNode_t* %100, %struct.SGFNode_t** %8, align 8
  br label %16, !llvm.loop !7

101:                                              ; preds = %16
  %102 = load i32, i32* %13, align 4
  %103 = load i32*, i32** %6, align 8
  store i32 %102, i32* %103, align 4
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %101, %79
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_is_legal(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 %7, 20
  %9 = add nsw i32 21, %8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @is_legal(i32 %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @is_legal(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_is_suicide(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = mul nsw i32 %7, 20
  %9 = add nsw i32 21, %8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @is_suicide(i32 %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @is_suicide(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_placehand(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @place_fixed_handicap(i32 %3)
  ret i32 %4
}

declare dso_local i32 @place_fixed_handicap(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_recordboard(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  call void @sgffile_recordboard(%struct.SGFNode_t* %3)
  ret void
}

declare dso_local void @sgffile_recordboard(%struct.SGFNode_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_sethand(i32 %0, %struct.SGFNode_t* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @place_fixed_handicap(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgffile_recordboard(%struct.SGFNode_t* %8)
  %9 = load i32, i32* %5, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_genmove(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @genmove(i32* %7, i32* %8, i32 %9)
  ret i32 %10
}

declare dso_local i32 @genmove(i32*, i32*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_attack(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 20
  %13 = add nsw i32 21, %12
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = call i32 @attack(i32 %15, i32* %10)
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = sdiv i32 %20, 20
  %22 = sub nsw i32 %21, 1
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = srem i32 %28, 20
  %30 = sub nsw i32 %29, 1
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @attack(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_find_defense(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = mul nsw i32 %11, 20
  %13 = add nsw i32 21, %12
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = call i32 @find_defense(i32 %15, i32* %10)
  store i32 %16, i32* %9, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = sdiv i32 %20, 20
  %22 = sub nsw i32 %21, 1
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %4
  %25 = load i32*, i32** %8, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = srem i32 %28, 20
  %30 = sub nsw i32 %29, 1
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local i32 @find_defense(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_who_wins(i32 %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %3, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @who_wins(i32 %5, %struct._IO_FILE* %6)
  ret void
}

declare dso_local void @who_wins(i32, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @gnugo_estimate_score(float* %0, float* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  store float* %0, float** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load float*, float** %4, align 8
  %6 = load float*, float** %3, align 8
  %7 = call float @estimate_score(float* %5, float* %6)
  ret float %7
}

declare dso_local float @estimate_score(float*, float*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_examine_position(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  call void @examine_position(i32 %5, i32 %6)
  ret void
}

declare dso_local void @examine_position(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @gnugo_get_komi() #0 {
  %1 = load float, float* @komi, align 4
  ret float %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gnugo_get_board([19 x i32]* %0) #0 {
  %2 = alloca [19 x i32]*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store [19 x i32]* %0, [19 x i32]** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @board_size, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %38

9:                                                ; preds = %5
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @board_size, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 20
  %17 = add nsw i32 21, %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load [19 x i32]*, [19 x i32]** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [19 x i32], [19 x i32]* %24, i64 %26
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [19 x i32], [19 x i32]* %27, i64 0, i64 %29
  store i32 %23, i32* %30, align 4
  br label %31

31:                                               ; preds = %14
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10, !llvm.loop !8

34:                                               ; preds = %10
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %5, !llvm.loop !9

38:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_get_boardsize() #0 {
  %1 = load i32, i32* @board_size, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gnugo_get_move_number() #0 {
  %1 = load i32, i32* @movenum, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gameinfo_clear(%struct.Gameinfo* %0, i32 %1, float %2) #0 {
  %4 = alloca %struct.Gameinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %7 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %8 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %7, i32 0, i32 0
  store i32 0, i32* %8, align 8
  %9 = load i32, i32* %5, align 4
  call void @gnugo_clear_board(i32 %9)
  %10 = load float, float* %6, align 4
  call void @gnugo_set_komi(float %10)
  %11 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %12 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %11, i32 0, i32 1
  store i32 2, i32* %12, align 4
  %13 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %14 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %13, i32 0, i32 2
  call void @sgftree_clear(%struct.SGFTree_t* %14)
  %15 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %16 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %15, i32 0, i32 3
  store i32 1, i32* %16, align 8
  ret void
}

declare dso_local void @sgftree_clear(%struct.SGFTree_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gameinfo_print(%struct.Gameinfo* %0) #0 {
  %2 = alloca %struct.Gameinfo*, align 8
  store %struct.Gameinfo* %0, %struct.Gameinfo** %2, align 8
  %3 = load i32, i32* @board_size, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %3)
  %5 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %6 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %7)
  %9 = load float, float* @komi, align 4
  %10 = fpext float %9 to double
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), double %10)
  %12 = load i32, i32* @movenum, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %12)
  %14 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %15 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @color_to_string(i32 %16)
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %17)
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %20 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %21 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  br label %44

26:                                               ; preds = %1
  %27 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %28 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %43

33:                                               ; preds = %26
  %34 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %35 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %42

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %42, %31
  br label %44

44:                                               ; preds = %43, %24
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @color_to_string(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gameinfo_load_sgfheader(%struct.Gameinfo* %0, %struct.SGFNode_t* %1) #0 {
  %3 = alloca %struct.Gameinfo*, align 8
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %3, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %4, align 8
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %9 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* %5)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 19, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %14 = call i32 @sgfGetFloatProperty(%struct.SGFNode_t* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), float* %7)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store float 5.500000e+00, float* %7, align 4
  br label %17

17:                                               ; preds = %16, %12
  %18 = load i32, i32* %5, align 4
  call void @gnugo_clear_board(i32 %18)
  %19 = load float, float* %7, align 4
  call void @gnugo_set_komi(float %19)
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %21 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32* %6)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %17
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %30 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = icmp sgt i32 %31, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %27
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0), i32 %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  call void @exit(i32 1) #4
  unreachable

46:                                               ; preds = %37
  ret void
}

declare dso_local i32 @sgfGetIntProperty(%struct.SGFNode_t*, i8*, i32*) #1

declare dso_local i32 @sgfGetFloatProperty(%struct.SGFNode_t*, i8*, float*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gameinfo_play_move(%struct.Gameinfo* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.Gameinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  call void @gnugo_play_move(i32 %9, i32 %10, i32 %11)
  %12 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %13 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %12, i32 0, i32 2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* %13, i32 %14, i32 %15, i32 %16)
  %17 = load i32, i32* %8, align 4
  %18 = sub nsw i32 3, %17
  %19 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %20 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local void @sgftreeAddPlay(%struct.SGFTree_t*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo* %0, %struct.SGFTree_t* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.Gameinfo*, align 8
  %7 = alloca %struct.SGFTree_t*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.SGFProperty_t*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %6, align 8
  store %struct.SGFTree_t* %1, %struct.SGFTree_t** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 2, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 9999, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %22 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %23 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %22, i32 0, i32 0
  %24 = load %struct.SGFNode_t*, %struct.SGFNode_t** %23, align 8
  %25 = call i32 @sgfGetFloatProperty(%struct.SGFNode_t* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), float* %12)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %4
  %28 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %29 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store float 5.500000e+00, float* %12, align 4
  br label %34

33:                                               ; preds = %27
  store float 5.000000e-01, float* %12, align 4
  br label %34

34:                                               ; preds = %33, %32
  br label %35

35:                                               ; preds = %34, %4
  %36 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %37 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %36, i32 0, i32 0
  %38 = load %struct.SGFNode_t*, %struct.SGFNode_t** %37, align 8
  %39 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32* %10)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  store i32 19, i32* %10, align 4
  br label %42

42:                                               ; preds = %41, %35
  %43 = load i32, i32* %10, align 4
  call void @gnugo_clear_board(i32 %43)
  %44 = load float, float* %12, align 4
  call void @gnugo_set_komi(float %44)
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %98

47:                                               ; preds = %42
  %48 = load i8*, i8** %8, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sgt i32 %50, 48
  br i1 %51, label %52, label %68

52:                                               ; preds = %47
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sle i32 %55, 57
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i8*, i8** %8, align 8
  %59 = call i32 @atoi(i8* %58) #5
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* @debug, align 4
  %61 = and i32 %60, 128
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  br label %67

64:                                               ; preds = %57
  %65 = load i32, i32* %16, align 4
  %66 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %64, %63
  br label %97

68:                                               ; preds = %52, %47
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = sub nsw i32 %71, 65
  store i32 %72, i32* %15, align 4
  %73 = load i8*, i8** %8, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp sge i32 %75, 73
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load i32, i32* %15, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %15, align 4
  br label %80

80:                                               ; preds = %77, %68
  %81 = load i32, i32* @board_size, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i32 @atoi(i8* %83) #5
  %85 = sub nsw i32 %81, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* @debug, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %80
  br label %96

90:                                               ; preds = %80
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* %15, align 4
  %95 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i32 %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %90, %89
  br label %97

97:                                               ; preds = %96, %67
  br label %98

98:                                               ; preds = %97, %42
  %99 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %100 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %99, i32 0, i32 0
  %101 = load %struct.SGFNode_t*, %struct.SGFNode_t** %100, align 8
  %102 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32* %11)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load i32, i32* %11, align 4
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %110 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %107, %104, %98
  %112 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %113 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %112, i32 0, i32 1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %113, align 8
  br label %114

114:                                              ; preds = %379, %111
  %115 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %116 = call i32 @sgftreeForward(%struct.SGFTree_t* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %380

118:                                              ; preds = %114
  %119 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %120 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %119, i32 0, i32 1
  %121 = load %struct.SGFNode_t*, %struct.SGFNode_t** %120, align 8
  %122 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %121, i32 0, i32 0
  %123 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %122, align 8
  store %struct.SGFProperty_t* %123, %struct.SGFProperty_t** %18, align 8
  br label %124

124:                                              ; preds = %375, %118
  %125 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %126 = icmp ne %struct.SGFProperty_t* %125, null
  br i1 %126, label %127, label %379

127:                                              ; preds = %124
  %128 = load i32, i32* @debug, align 4
  %129 = and i32 %128, 128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %127
  br label %147

132:                                              ; preds = %127
  %133 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %134 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %133, i32 0, i32 1
  %135 = load i16, i16* %134, align 8
  %136 = sext i16 %135 to i32
  %137 = and i32 %136, 255
  %138 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %139 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %138, i32 0, i32 1
  %140 = load i16, i16* %139, align 8
  %141 = sext i16 %140 to i32
  %142 = ashr i32 %141, 8
  %143 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %144 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i32 %137, i32 %142, i8* %145)
  br label %147

147:                                              ; preds = %132, %131
  %148 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %149 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %148, i32 0, i32 1
  %150 = load i16, i16* %149, align 8
  %151 = sext i16 %150 to i32
  switch i32 %151, label %374 [
    i32 16961, label %152
    i32 22337, label %162
    i32 19536, label %172
    i32 8279, label %216
    i32 8258, label %216
    i32 19529, label %315
  ]

152:                                              ; preds = %147
  %153 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %154 = load i32, i32* @board_size, align 4
  %155 = call i32 @get_moveXY(%struct.SGFProperty_t* %153, i32* %19, i32* %20, i32 %154)
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* @board_size, align 4
  %159 = load i32, i32* %9, align 4
  call void @rotate(i32 %156, i32 %157, i32* %19, i32* %20, i32 %158, i32 %159)
  %160 = load i32, i32* %19, align 4
  %161 = load i32, i32* %20, align 4
  call void @gnugo_add_stone(i32 %160, i32 %161, i32 2)
  store i32 1, i32* %17, align 4
  br label %374

162:                                              ; preds = %147
  %163 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %164 = load i32, i32* @board_size, align 4
  %165 = call i32 @get_moveXY(%struct.SGFProperty_t* %163, i32* %19, i32* %20, i32 %164)
  %166 = load i32, i32* %19, align 4
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* @board_size, align 4
  %169 = load i32, i32* %9, align 4
  call void @rotate(i32 %166, i32 %167, i32* %19, i32* %20, i32 %168, i32 %169)
  %170 = load i32, i32* %19, align 4
  %171 = load i32, i32* %20, align 4
  call void @gnugo_add_stone(i32 %170, i32 %171, i32 1)
  store i32 1, i32* %17, align 4
  br label %374

172:                                              ; preds = %147
  %173 = load i32, i32* @movenum, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %189

175:                                              ; preds = %172
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %175
  %179 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %180 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @gnugo_sethand(i32 %181, %struct.SGFNode_t* null)
  %183 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %184 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %183, i32 0, i32 0
  %185 = load %struct.SGFNode_t*, %struct.SGFNode_t** %184, align 8
  %186 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %187 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %185, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %188)
  br label %189

189:                                              ; preds = %178, %175, %172
  %190 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %191 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %190, i32 0, i32 2
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 0
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %195, 119
  br i1 %196, label %213, label %197

197:                                              ; preds = %189
  %198 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %199 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %198, i32 0, i32 2
  %200 = load i8*, i8** %199, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 0
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %203, 87
  br i1 %204, label %213, label %205

205:                                              ; preds = %197
  %206 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %207 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 50
  br i1 %212, label %213, label %214

213:                                              ; preds = %205, %197, %189
  store i32 1, i32* %13, align 4
  br label %215

214:                                              ; preds = %205
  store i32 2, i32* %13, align 4
  br label %215

215:                                              ; preds = %214, %213
  br label %374

216:                                              ; preds = %147, %147
  %217 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %218 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %217, i32 0, i32 1
  %219 = load i16, i16* %218, align 8
  %220 = sext i16 %219 to i32
  %221 = icmp eq i32 %220, 8279
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 1, i32 2
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* @movenum, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %240

226:                                              ; preds = %216
  %227 = load i32, i32* %17, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %240, label %229

229:                                              ; preds = %226
  %230 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %231 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @gnugo_sethand(i32 %232, %struct.SGFNode_t* null)
  %234 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %235 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %234, i32 0, i32 0
  %236 = load %struct.SGFNode_t*, %struct.SGFNode_t** %235, align 8
  %237 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %238 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %239)
  br label %240

240:                                              ; preds = %229, %226, %216
  %241 = load i32, i32* @movenum, align 4
  %242 = load i32, i32* %16, align 4
  %243 = sub nsw i32 %242, 1
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %240
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %248 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %247, i32 0, i32 1
  store i32 %246, i32* %248, align 4
  %249 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %250 = call i32 @sgftreeBack(%struct.SGFTree_t* %249)
  %251 = load i32, i32* %13, align 4
  store i32 %251, i32* %5, align 4
  br label %385

252:                                              ; preds = %240
  %253 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %254 = load i32, i32* @board_size, align 4
  %255 = call i32 @get_moveXY(%struct.SGFProperty_t* %253, i32* %19, i32* %20, i32 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %273

257:                                              ; preds = %252
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* %14, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %272

261:                                              ; preds = %257
  %262 = load i32, i32* %20, align 4
  %263 = load i32, i32* %15, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %272

265:                                              ; preds = %261
  %266 = load i32, i32* %13, align 4
  %267 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %268 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 4
  %269 = load %struct.SGFTree_t*, %struct.SGFTree_t** %7, align 8
  %270 = call i32 @sgftreeBack(%struct.SGFTree_t* %269)
  %271 = load i32, i32* %13, align 4
  store i32 %271, i32* %5, align 4
  br label %385

272:                                              ; preds = %261, %257
  br label %273

273:                                              ; preds = %272, %252
  %274 = load i32, i32* %19, align 4
  %275 = load i32, i32* %20, align 4
  %276 = load i32, i32* @board_size, align 4
  %277 = load i32, i32* %9, align 4
  call void @rotate(i32 %274, i32 %275, i32* %19, i32* %20, i32 %276, i32 %277)
  %278 = load i32, i32* %19, align 4
  %279 = load i32, i32* @board_size, align 4
  %280 = icmp ult i32 %278, %279
  br i1 %280, label %281, label %296

281:                                              ; preds = %273
  %282 = load i32, i32* %20, align 4
  %283 = load i32, i32* @board_size, align 4
  %284 = icmp ult i32 %282, %283
  br i1 %284, label %285, label %296

285:                                              ; preds = %281
  %286 = load i32, i32* %19, align 4
  %287 = mul nsw i32 %286, 20
  %288 = add nsw i32 21, %287
  %289 = load i32, i32* %20, align 4
  %290 = add nsw i32 %288, %289
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %291
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %302, label %296

296:                                              ; preds = %285, %281, %273
  %297 = load i32, i32* %19, align 4
  %298 = icmp eq i32 %297, -1
  br i1 %298, label %299, label %308

299:                                              ; preds = %296
  %300 = load i32, i32* %20, align 4
  %301 = icmp eq i32 %300, -1
  br i1 %301, label %302, label %308

302:                                              ; preds = %299, %285
  %303 = load i32, i32* %19, align 4
  %304 = load i32, i32* %20, align 4
  %305 = load i32, i32* %13, align 4
  call void @gnugo_play_move(i32 %303, i32 %304, i32 %305)
  %306 = load i32, i32* %13, align 4
  %307 = sub nsw i32 3, %306
  store i32 %307, i32* %13, align 4
  br label %314

308:                                              ; preds = %299, %296
  %309 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.20, i64 0, i64 0))
  %310 = load i32, i32* %19, align 4
  %311 = load i32, i32* %20, align 4
  %312 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i32 %310, i32 %311)
  %313 = load i32, i32* %13, align 4
  store i32 %313, i32* %5, align 4
  br label %385

314:                                              ; preds = %302
  br label %374

315:                                              ; preds = %147
  %316 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %317 = load i32, i32* @board_size, align 4
  %318 = call i32 @get_moveXY(%struct.SGFProperty_t* %316, i32* %19, i32* %20, i32 %317)
  %319 = load i32, i32* %19, align 4
  %320 = load i32, i32* %20, align 4
  %321 = load i32, i32* @board_size, align 4
  %322 = load i32, i32* %9, align 4
  call void @rotate(i32 %319, i32 %320, i32* %19, i32* %20, i32 %321, i32 %322)
  %323 = load i32, i32* %19, align 4
  %324 = load i32, i32* @board_size, align 4
  %325 = icmp ult i32 %323, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %315
  %327 = load i32, i32* %20, align 4
  %328 = load i32, i32* @board_size, align 4
  %329 = icmp ult i32 %327, %328
  br i1 %329, label %331, label %330

330:                                              ; preds = %326, %315
  br label %374

331:                                              ; preds = %326
  %332 = load i32, i32* %19, align 4
  %333 = icmp sgt i32 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %331
  %335 = load i32, i32* %19, align 4
  %336 = sub nsw i32 %335, 1
  %337 = mul nsw i32 %336, 20
  %338 = add nsw i32 21, %337
  %339 = load i32, i32* %20, align 4
  %340 = add nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = sub nsw i32 3, %344
  store i32 %345, i32* %21, align 4
  br label %358

346:                                              ; preds = %331
  %347 = load i32, i32* %19, align 4
  %348 = add nsw i32 %347, 1
  %349 = mul nsw i32 %348, 20
  %350 = add nsw i32 21, %349
  %351 = load i32, i32* %20, align 4
  %352 = add nsw i32 %350, %351
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = sub nsw i32 3, %356
  store i32 %357, i32* %21, align 4
  br label %358

358:                                              ; preds = %346, %334
  %359 = load i32, i32* %19, align 4
  %360 = mul nsw i32 %359, 20
  %361 = add nsw i32 21, %360
  %362 = load i32, i32* %20, align 4
  %363 = add nsw i32 %361, %362
  %364 = load i32, i32* %21, align 4
  %365 = call i32 @is_ko(i32 %363, i32 %364, i32* null)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %358
  %368 = load i32, i32* %19, align 4
  %369 = mul nsw i32 %368, 20
  %370 = add nsw i32 21, %369
  %371 = load i32, i32* %20, align 4
  %372 = add nsw i32 %370, %371
  store i32 %372, i32* @board_ko_pos, align 4
  br label %373

373:                                              ; preds = %367, %358
  br label %374

374:                                              ; preds = %147, %373, %330, %314, %215, %162, %152
  br label %375

375:                                              ; preds = %374
  %376 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %18, align 8
  %377 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %376, i32 0, i32 0
  %378 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %377, align 8
  store %struct.SGFProperty_t* %378, %struct.SGFProperty_t** %18, align 8
  br label %124, !llvm.loop !10

379:                                              ; preds = %124
  br label %114, !llvm.loop !11

380:                                              ; preds = %114
  %381 = load i32, i32* %13, align 4
  %382 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %383 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %382, i32 0, i32 1
  store i32 %381, i32* %383, align 4
  %384 = load i32, i32* %13, align 4
  store i32 %384, i32* %5, align 4
  br label %385

385:                                              ; preds = %380, %308, %265, %245
  %386 = load i32, i32* %5, align 4
  ret i32 %386
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local i32 @sgftreeForward(%struct.SGFTree_t*) #1

declare dso_local void @rotate(i32, i32, i32*, i32*, i32, i32) #1

declare dso_local void @sgfOverwritePropertyInt(%struct.SGFNode_t*, i8*, i32) #1

declare dso_local i32 @sgftreeBack(%struct.SGFTree_t*) #1

declare dso_local i32 @is_ko(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gameinfo_play_sgftree(%struct.Gameinfo* %0, %struct.SGFTree_t* %1, i8* %2) #0 {
  %4 = alloca %struct.Gameinfo*, align 8
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca i8*, align 8
  store %struct.Gameinfo* %0, %struct.Gameinfo** %4, align 8
  store %struct.SGFTree_t* %1, %struct.SGFTree_t** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo* %7, %struct.SGFTree_t* %8, i8* %9, i32 0)
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly willreturn }

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
