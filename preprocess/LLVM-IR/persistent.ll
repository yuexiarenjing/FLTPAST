; ModuleID = 'persistent.c'
source_filename = "persistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reading_cache = type { i32, [400 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [5 x i32], [5 x i32] }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.owl_cache = type { i32, [400 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@purge_persistent_reading_cache.last_purge_position_number = internal global i32 -1, align 4
@stackp = external dso_local global i32, align 4
@.str = private unnamed_addr constant [13 x i8] c"persistent.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stackp == 0\00", align 1
@position_number = external dso_local global i32, align 4
@persistent_reading_cache_size = internal global i32 0, align 4
@persistent_reading_cache = internal global [100 x %struct.reading_cache] zeroinitializer, align 16
@board_size = external dso_local global i32, align 4
@board = external dso_local global [421 x i8], align 16
@.str.2 = private unnamed_addr constant [31 x i8] c"purge_persistent_reading_cache\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"entry->result == 0 || entry->move == NO_MOVE || ON_BOARD(entry->move)\00", align 1
@debug = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%o%s %1m = %d %1m, cached (%d nodes) \00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"attack\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"defend\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%o%s %1m = %d, cached (%d nodes) \00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"result == 0 || (move == 0) || ON_BOARD(move)\00", align 1
@movenum = external dso_local global i32, align 4
@depth = external dso_local global i32, align 4
@shadow = external dso_local global [400 x i8], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str.9 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@purge_persistent_owl_cache.last_purge_position_number = internal global i32 -1, align 4
@persistent_owl_cache_size = internal global i32 0, align 4
@persistent_owl_cache = internal global [150 x %struct.owl_cache] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [27 x i8] c"stackp == 0 || stackp == 1\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"persistent owl cache hit: routine %s at %1m result %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Persistent owl cache full.\0A\00", align 1
@delta = external dso_local global [8 x i32], align 16
@.str.13 = private unnamed_addr constant [39 x i8] c"%o Stored result in cache (entry %d):\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"Owl hotspots: %d %1m %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"str == find_origin(str)\00", align 1
@deltai = external dso_local global [8 x i32], align 16
@deltaj = external dso_local global [8 x i32], align 16
@.str.16 = private unnamed_addr constant [24 x i8] c"%omovenum         = %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"%otactical_nodes  = %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"%oroutine         = %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"%o(apos)          = %1m\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"%o(bpos)          = %1m\0A\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"%o(cpos)          = %1m\0A\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"%oresult          = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"%o(move)          = %1m\0A\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"%o(move2)         = %1m\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.25 = private unnamed_addr constant [5 x i8] c"\0A%2d\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"[%c\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"]%c\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"IS_STONE(board[dr])\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @purge_persistent_reading_cache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @stackp, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %11

10:                                               ; preds = %0
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 217, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %11

11:                                               ; preds = %10, %9
  %12 = load i32, i32* @purge_persistent_reading_cache.last_purge_position_number, align 4
  %13 = load i32, i32* @position_number, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %119

16:                                               ; preds = %11
  %17 = load i32, i32* @position_number, align 4
  store i32 %17, i32* @purge_persistent_reading_cache.last_purge_position_number, align 4
  br label %18

18:                                               ; preds = %16
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %116, %18
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @persistent_reading_cache_size, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %119

23:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @board_size, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %77

32:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %73, %32
  %34 = load i32, i32* %2, align 4
  %35 = icmp slt i32 %34, 5
  br i1 %35, label %36, label %76

36:                                               ; preds = %33
  %37 = load i32, i32* %1, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %39, i32 0, i32 10
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %40, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %47, i32 0, i32 11
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %48, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %36
  br label %76

56:                                               ; preds = %36
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @trymove(i32 %64, i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 0, i32 0)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %72

71:                                               ; preds = %63, %56
  store i32 0, i32* %4, align 4
  br label %76

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %2, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %2, align 4
  br label %33, !llvm.loop !4

76:                                               ; preds = %71, %55, %33
  br label %77

77:                                               ; preds = %76, %31
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %83, i32 0, i32 1
  %85 = getelementptr inbounds [400 x i8], [400 x i8]* %84, i64 0, i64 0
  %86 = call i32 @verify_stored_board(i8* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %108, label %88

88:                                               ; preds = %80, %77
  %89 = load i32, i32* %1, align 4
  %90 = load i32, i32* @persistent_reading_cache_size, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %88
  %94 = load i32, i32* %1, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %95
  %97 = load i32, i32* @persistent_reading_cache_size, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %99
  %101 = bitcast %struct.reading_cache* %96 to i8*
  %102 = bitcast %struct.reading_cache* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %101, i8* align 4 %102, i64 476, i1 false)
  br label %103

103:                                              ; preds = %93, %88
  %104 = load i32, i32* %1, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %1, align 4
  %106 = load i32, i32* @persistent_reading_cache_size, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* @persistent_reading_cache_size, align 4
  br label %108

108:                                              ; preds = %103, %80
  br label %109

109:                                              ; preds = %112, %108
  %110 = load i32, i32* %3, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  call void @popgo()
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %3, align 4
  br label %109, !llvm.loop !6

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %1, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %1, align 4
  br label %19, !llvm.loop !7

119:                                              ; preds = %15, %19
  ret void
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_stored_board(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 21, i32* %4, align 4
  br label %5

5:                                                ; preds = %60, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 400
  br i1 %7, label %8, label %63

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 3
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %60

16:                                               ; preds = %8
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %60

25:                                               ; preds = %16
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = and i32 %31, 3
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %64

40:                                               ; preds = %25
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = and i32 %46, 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40
  br label %60

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @countlib(i32 %51)
  %53 = icmp sle i32 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %64

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58
  br label %60

60:                                               ; preds = %59, %49, %24, %15
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %5, !llvm.loop !8

63:                                               ; preds = %5
  store i32 1, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %54, %39
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @popgo() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_persistent_reading_cache() #0 {
  store i32 0, i32* @persistent_reading_cache_size, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_persistent_reading_cache(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.reading_cache*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @find_persistent_reading_cache_entry(i32 %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %120

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %20
  store %struct.reading_cache* %21, %struct.reading_cache** %11, align 8
  %22 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %23 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %26 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %33 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %31, %18
  %37 = load i32*, i32** %9, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %41 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %39, %36
  %45 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %46 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %44
  %50 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %51 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %56 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %54, %49, %44
  br label %75

64:                                               ; preds = %54
  %65 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %66 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %67, 20
  %69 = sub nsw i32 %68, 1
  %70 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %71 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = srem i32 %72, 20
  %74 = sub nsw i32 %73, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %74)
  br label %75

75:                                               ; preds = %64, %63
  %76 = load i32, i32* @debug, align 4
  %77 = and i32 %76, 32768
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %119

79:                                               ; preds = %75
  %80 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %81 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %82, 1000
  br i1 %83, label %84, label %119

84:                                               ; preds = %79
  %85 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %86 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %85, i32 0, i32 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = icmp eq i32 %90, 4
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %96 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %99 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %102 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %93, i32 %94, i32 %97, i32 %100, i32 %103)
  br label %118

105:                                              ; preds = %84
  %106 = load i32, i32* %6, align 4
  %107 = icmp eq i32 %106, 4
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %112 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.reading_cache*, %struct.reading_cache** %11, align 8
  %115 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i8* %109, i32 %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %105, %89
  call void @dump_stack()
  br label %119

119:                                              ; preds = %118, %79, %75
  store i32 1, i32* %5, align 4
  br label %120

120:                                              ; preds = %119, %17
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_persistent_reading_cache_entry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.reading_cache*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @find_origin(i32 %11)
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = load i32, i32* %5, align 4
  %20 = srem i32 %19, 20
  %21 = sub nsw i32 %20, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 284, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i32 %18, i32 %21)
  br label %22

22:                                               ; preds = %15, %14
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %114, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @persistent_reading_cache_size, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %117

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %29
  store %struct.reading_cache* %30, %struct.reading_cache** %8, align 8
  store i32 0, i32* %9, align 4
  %31 = load %struct.reading_cache*, %struct.reading_cache** %8, align 8
  %32 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %56, label %36

36:                                               ; preds = %27
  %37 = load %struct.reading_cache*, %struct.reading_cache** %8, align 8
  %38 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %36
  %43 = load %struct.reading_cache*, %struct.reading_cache** %8, align 8
  %44 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @depth, align 4
  %47 = load i32, i32* @stackp, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %56, label %50

50:                                               ; preds = %42
  %51 = load %struct.reading_cache*, %struct.reading_cache** %8, align 8
  %52 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @board_size, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50, %42, %36, %27
  br label %114

57:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %58

58:                                               ; preds = %95, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 5
  br i1 %60, label %61, label %98

61:                                               ; preds = %58
  %62 = load %struct.reading_cache*, %struct.reading_cache** %8, align 8
  %63 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %62, i32 0, i32 10
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %63, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %93, label %70

70:                                               ; preds = %61
  %71 = load %struct.reading_cache*, %struct.reading_cache** %8, align 8
  %72 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %71, i32 0, i32 1
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x i8], [400 x i8]* %72, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 3
  br i1 %78, label %79, label %94

79:                                               ; preds = %70
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = load %struct.reading_cache*, %struct.reading_cache** %8, align 8
  %86 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %85, i32 0, i32 1
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [400 x i8], [400 x i8]* %86, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %84, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %79, %61
  br label %98

94:                                               ; preds = %79, %70
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %58, !llvm.loop !9

98:                                               ; preds = %93, %58
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 5
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  br label %114

105:                                              ; preds = %101, %98
  %106 = load %struct.reading_cache*, %struct.reading_cache** %8, align 8
  %107 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %106, i32 0, i32 1
  %108 = getelementptr inbounds [400 x i8], [400 x i8]* %107, i64 0, i64 0
  %109 = call i32 @verify_stored_board(i8* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %114

112:                                              ; preds = %105
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %118

114:                                              ; preds = %111, %104, %56
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %23, !llvm.loop !10

117:                                              ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %118

118:                                              ; preds = %117, %112
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local void @dump_stack() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_persistent_reading_cache(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [400 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.reading_cache*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 3
  br i1 %30, label %31, label %32

31:                                               ; preds = %24, %21, %5
  br label %39

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 %33, 20
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %9, align 4
  %37 = srem i32 %36, 20
  %38 = sub nsw i32 %37, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 369, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %35, i32 %38)
  br label %39

39:                                               ; preds = %32, %31
  %40 = load i32, i32* @stackp, align 4
  %41 = icmp sgt i32 %40, 5
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %618

43:                                               ; preds = %39
  %44 = load i32, i32* @persistent_reading_cache_size, align 4
  %45 = icmp eq i32 %44, 100
  br i1 %45, label %46, label %94

46:                                               ; preds = %43
  store i32 -1, i32* %16, align 4
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %17, align 4
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %68, %46
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @persistent_reading_cache_size, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %16, align 4
  br label %67

67:                                               ; preds = %60, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %48, !llvm.loop !11

71:                                               ; preds = %48
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %74, label %92

74:                                               ; preds = %71
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* @persistent_reading_cache_size, align 4
  %77 = sub nsw i32 %76, 1
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %74
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %81
  %83 = load i32, i32* @persistent_reading_cache_size, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %85
  %87 = bitcast %struct.reading_cache* %82 to i8*
  %88 = bitcast %struct.reading_cache* %86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %87, i8* align 4 %88, i64 476, i1 false)
  br label %89

89:                                               ; preds = %79, %74
  %90 = load i32, i32* @persistent_reading_cache_size, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* @persistent_reading_cache_size, align 4
  br label %93

92:                                               ; preds = %71
  br label %618

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %43
  %95 = load i32, i32* @persistent_reading_cache_size, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %96
  store %struct.reading_cache* %97, %struct.reading_cache** %15, align 8
  %98 = load i32, i32* @board_size, align 4
  %99 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %100 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @movenum, align 4
  %102 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %103 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %106 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %109 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @depth, align 4
  %111 = load i32, i32* @stackp, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %114 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %117 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %120 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %123 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %126 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %125, i32 0, i32 9
  store i32 %124, i32* %126, align 4
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %158, %94
  %128 = load i32, i32* %13, align 4
  %129 = icmp slt i32 %128, 5
  br i1 %129, label %130, label %161

130:                                              ; preds = %127
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* @stackp, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = load i32, i32* %13, align 4
  %136 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %137 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %136, i32 0, i32 10
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [5 x i32], [5 x i32]* %137, i64 0, i64 %139
  %141 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %142 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %141, i32 0, i32 11
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %142, i64 0, i64 %144
  call void @get_move_from_stack(i32 %135, i32* %140, i32* %145)
  br label %157

146:                                              ; preds = %130
  %147 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %148 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %147, i32 0, i32 10
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [5 x i32], [5 x i32]* %148, i64 0, i64 %150
  store i32 0, i32* %151, align 4
  %152 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %153 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %152, i32 0, i32 11
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [5 x i32], [5 x i32]* %153, i64 0, i64 %155
  store i32 0, i32* %156, align 4
  br label %157

157:                                              ; preds = %146, %134
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  br label %127, !llvm.loop !12

161:                                              ; preds = %127
  store i32 21, i32* %12, align 4
  br label %162

162:                                              ; preds = %173, %161
  %163 = load i32, i32* %12, align 4
  %164 = icmp slt i32 %163, 400
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [400 x i8], [400 x i8]* @shadow, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %171
  store i8 %169, i8* %172, align 1
  br label %173

173:                                              ; preds = %165
  %174 = load i32, i32* %12, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %12, align 4
  br label %162, !llvm.loop !13

176:                                              ; preds = %162
  %177 = load i32, i32* %7, align 4
  %178 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 0
  call void @mark_string(i32 %177, i8* %178, i8 signext 1)
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %188

184:                                              ; preds = %181
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %186
  store i8 1, i8* %187, align 1
  br label %188

188:                                              ; preds = %184, %181, %176
  store i32 21, i32* %12, align 4
  br label %189

189:                                              ; preds = %295, %188
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 400
  br i1 %191, label %192, label %298

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp ne i32 %197, 3
  br i1 %198, label %200, label %199

199:                                              ; preds = %192
  br label %295

200:                                              ; preds = %192
  %201 = load i32, i32* %12, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %295

208:                                              ; preds = %200
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 20
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp ne i32 %214, 3
  br i1 %215, label %216, label %224

216:                                              ; preds = %208
  %217 = load i32, i32* %12, align 4
  %218 = add nsw i32 %217, 20
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %272, label %224

224:                                              ; preds = %216, %208
  %225 = load i32, i32* %12, align 4
  %226 = sub nsw i32 %225, 1
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 3
  br i1 %231, label %232, label %240

232:                                              ; preds = %224
  %233 = load i32, i32* %12, align 4
  %234 = sub nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %238, 1
  br i1 %239, label %272, label %240

240:                                              ; preds = %232, %224
  %241 = load i32, i32* %12, align 4
  %242 = sub nsw i32 %241, 20
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = icmp ne i32 %246, 3
  br i1 %247, label %248, label %256

248:                                              ; preds = %240
  %249 = load i32, i32* %12, align 4
  %250 = sub nsw i32 %249, 20
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %272, label %256

256:                                              ; preds = %248, %240
  %257 = load i32, i32* %12, align 4
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp ne i32 %262, 3
  br i1 %263, label %264, label %294

264:                                              ; preds = %256
  %265 = load i32, i32* %12, align 4
  %266 = add nsw i32 %265, 1
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %267
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %294

272:                                              ; preds = %264, %248, %232, %216
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %274
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %286, label %279

279:                                              ; preds = %272
  %280 = load i32, i32* %12, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = zext i8 %283 to i32
  %285 = icmp eq i32 %284, 2
  br i1 %285, label %286, label %289

286:                                              ; preds = %279, %272
  %287 = load i32, i32* %12, align 4
  %288 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 0
  call void @mark_string(i32 %287, i8* %288, i8 signext 2)
  br label %293

289:                                              ; preds = %279
  %290 = load i32, i32* %12, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %291
  store i8 2, i8* %292, align 1
  br label %293

293:                                              ; preds = %289, %286
  br label %294

294:                                              ; preds = %293, %264, %256
  br label %295

295:                                              ; preds = %294, %207, %199
  %296 = load i32, i32* %12, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %12, align 4
  br label %189, !llvm.loop !14

298:                                              ; preds = %189
  store i32 21, i32* %12, align 4
  br label %299

299:                                              ; preds = %336, %298
  %300 = load i32, i32* %12, align 4
  %301 = icmp slt i32 %300, 400
  br i1 %301, label %302, label %339

302:                                              ; preds = %299
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = icmp ne i32 %307, 3
  br i1 %308, label %310, label %309

309:                                              ; preds = %302
  br label %336

310:                                              ; preds = %302
  %311 = load i32, i32* %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %324, label %317

317:                                              ; preds = %310
  %318 = load i32, i32* %12, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp eq i32 %322, 2
  br i1 %323, label %324, label %335

324:                                              ; preds = %317, %310
  %325 = load i32, i32* %12, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %326
  %328 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %327, i32 0, i32 13
  %329 = load i32, i32* %328, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %324
  %332 = load i32, i32* %12, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %333
  store i8 0, i8* %334, align 1
  br label %335

335:                                              ; preds = %331, %324, %317
  br label %336

336:                                              ; preds = %335, %309
  %337 = load i32, i32* %12, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %12, align 4
  br label %299, !llvm.loop !15

339:                                              ; preds = %299
  store i32 21, i32* %12, align 4
  br label %340

340:                                              ; preds = %434, %339
  %341 = load i32, i32* %12, align 4
  %342 = icmp slt i32 %341, 400
  br i1 %342, label %343, label %437

343:                                              ; preds = %340
  %344 = load i32, i32* %12, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %345
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = icmp eq i32 %348, 1
  br i1 %349, label %364, label %350

350:                                              ; preds = %343
  %351 = load i32, i32* %12, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = zext i8 %354 to i32
  %356 = icmp eq i32 %355, 2
  br i1 %356, label %364, label %357

357:                                              ; preds = %350
  %358 = load i32, i32* %12, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %359
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %357, %350, %343
  br label %434

365:                                              ; preds = %357
  %366 = load i32, i32* %12, align 4
  %367 = add nsw i32 %366, 20
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i32
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %381

373:                                              ; preds = %365
  %374 = load i32, i32* %12, align 4
  %375 = add nsw i32 %374, 20
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = sext i8 %378 to i32
  %380 = icmp eq i32 %379, 2
  br i1 %380, label %429, label %381

381:                                              ; preds = %373, %365
  %382 = load i32, i32* %12, align 4
  %383 = sub nsw i32 %382, 1
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %384
  %386 = load i8, i8* %385, align 1
  %387 = zext i8 %386 to i32
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %397

389:                                              ; preds = %381
  %390 = load i32, i32* %12, align 4
  %391 = sub nsw i32 %390, 1
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %392
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  %396 = icmp eq i32 %395, 2
  br i1 %396, label %429, label %397

397:                                              ; preds = %389, %381
  %398 = load i32, i32* %12, align 4
  %399 = sub nsw i32 %398, 20
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %400
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %405, label %413

405:                                              ; preds = %397
  %406 = load i32, i32* %12, align 4
  %407 = sub nsw i32 %406, 20
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %408
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i32
  %412 = icmp eq i32 %411, 2
  br i1 %412, label %429, label %413

413:                                              ; preds = %405, %397
  %414 = load i32, i32* %12, align 4
  %415 = add nsw i32 %414, 1
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %416
  %418 = load i8, i8* %417, align 1
  %419 = zext i8 %418 to i32
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %433

421:                                              ; preds = %413
  %422 = load i32, i32* %12, align 4
  %423 = add nsw i32 %422, 1
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %424
  %426 = load i8, i8* %425, align 1
  %427 = sext i8 %426 to i32
  %428 = icmp eq i32 %427, 2
  br i1 %428, label %429, label %433

429:                                              ; preds = %421, %405, %389, %373
  %430 = load i32, i32* %12, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %431
  store i8 3, i8* %432, align 1
  br label %433

433:                                              ; preds = %429, %421, %413
  br label %434

434:                                              ; preds = %433, %364
  %435 = load i32, i32* %12, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %12, align 4
  br label %340, !llvm.loop !16

437:                                              ; preds = %340
  store i32 21, i32* %12, align 4
  br label %438

438:                                              ; preds = %558, %437
  %439 = load i32, i32* %12, align 4
  %440 = icmp slt i32 %439, 400
  br i1 %440, label %441, label %561

441:                                              ; preds = %438
  %442 = load i32, i32* %12, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %443
  %445 = load i8, i8* %444, align 1
  %446 = zext i8 %445 to i32
  %447 = icmp ne i32 %446, 3
  br i1 %447, label %449, label %448

448:                                              ; preds = %441
  br label %558

449:                                              ; preds = %441
  %450 = load i32, i32* %12, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %451
  %453 = load i8, i8* %452, align 1
  %454 = sext i8 %453 to i32
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %449
  br label %558

457:                                              ; preds = %449
  %458 = load i32, i32* %12, align 4
  %459 = add nsw i32 %458, 20
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = zext i8 %462 to i32
  %464 = icmp ne i32 %463, 3
  br i1 %464, label %465, label %481

465:                                              ; preds = %457
  %466 = load i32, i32* %12, align 4
  %467 = add nsw i32 %466, 20
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %468
  %470 = load i8, i8* %469, align 1
  %471 = sext i8 %470 to i32
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %473, label %481

473:                                              ; preds = %465
  %474 = load i32, i32* %12, align 4
  %475 = add nsw i32 %474, 20
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %476
  %478 = load i8, i8* %477, align 1
  %479 = sext i8 %478 to i32
  %480 = icmp slt i32 %479, 4
  br i1 %480, label %553, label %481

481:                                              ; preds = %473, %465, %457
  %482 = load i32, i32* %12, align 4
  %483 = sub nsw i32 %482, 1
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %484
  %486 = load i8, i8* %485, align 1
  %487 = zext i8 %486 to i32
  %488 = icmp ne i32 %487, 3
  br i1 %488, label %489, label %505

489:                                              ; preds = %481
  %490 = load i32, i32* %12, align 4
  %491 = sub nsw i32 %490, 1
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %492
  %494 = load i8, i8* %493, align 1
  %495 = sext i8 %494 to i32
  %496 = icmp sgt i32 %495, 0
  br i1 %496, label %497, label %505

497:                                              ; preds = %489
  %498 = load i32, i32* %12, align 4
  %499 = sub nsw i32 %498, 1
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %500
  %502 = load i8, i8* %501, align 1
  %503 = sext i8 %502 to i32
  %504 = icmp slt i32 %503, 4
  br i1 %504, label %553, label %505

505:                                              ; preds = %497, %489, %481
  %506 = load i32, i32* %12, align 4
  %507 = sub nsw i32 %506, 20
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %508
  %510 = load i8, i8* %509, align 1
  %511 = zext i8 %510 to i32
  %512 = icmp ne i32 %511, 3
  br i1 %512, label %513, label %529

513:                                              ; preds = %505
  %514 = load i32, i32* %12, align 4
  %515 = sub nsw i32 %514, 20
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %516
  %518 = load i8, i8* %517, align 1
  %519 = sext i8 %518 to i32
  %520 = icmp sgt i32 %519, 0
  br i1 %520, label %521, label %529

521:                                              ; preds = %513
  %522 = load i32, i32* %12, align 4
  %523 = sub nsw i32 %522, 20
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %524
  %526 = load i8, i8* %525, align 1
  %527 = sext i8 %526 to i32
  %528 = icmp slt i32 %527, 4
  br i1 %528, label %553, label %529

529:                                              ; preds = %521, %513, %505
  %530 = load i32, i32* %12, align 4
  %531 = add nsw i32 %530, 1
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %532
  %534 = load i8, i8* %533, align 1
  %535 = zext i8 %534 to i32
  %536 = icmp ne i32 %535, 3
  br i1 %536, label %537, label %557

537:                                              ; preds = %529
  %538 = load i32, i32* %12, align 4
  %539 = add nsw i32 %538, 1
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %540
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = icmp sgt i32 %543, 0
  br i1 %544, label %545, label %557

545:                                              ; preds = %537
  %546 = load i32, i32* %12, align 4
  %547 = add nsw i32 %546, 1
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %548
  %550 = load i8, i8* %549, align 1
  %551 = sext i8 %550 to i32
  %552 = icmp slt i32 %551, 4
  br i1 %552, label %553, label %557

553:                                              ; preds = %545, %521, %497, %473
  %554 = load i32, i32* %12, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %555
  store i8 4, i8* %556, align 1
  br label %557

557:                                              ; preds = %553, %545, %537, %529
  br label %558

558:                                              ; preds = %557, %456, %448
  %559 = load i32, i32* %12, align 4
  %560 = add nsw i32 %559, 1
  store i32 %560, i32* %12, align 4
  br label %438, !llvm.loop !17

561:                                              ; preds = %438
  store i32 0, i32* %13, align 4
  br label %562

562:                                              ; preds = %575, %561
  %563 = load i32, i32* %13, align 4
  %564 = load i32, i32* @stackp, align 4
  %565 = icmp slt i32 %563, %564
  br i1 %565, label %566, label %578

566:                                              ; preds = %562
  %567 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %568 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %567, i32 0, i32 10
  %569 = load i32, i32* %13, align 4
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [5 x i32], [5 x i32]* %568, i64 0, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %573
  store i8 5, i8* %574, align 1
  br label %575

575:                                              ; preds = %566
  %576 = load i32, i32* %13, align 4
  %577 = add nsw i32 %576, 1
  store i32 %577, i32* %13, align 4
  br label %562, !llvm.loop !18

578:                                              ; preds = %562
  store i32 21, i32* %12, align 4
  br label %579

579:                                              ; preds = %612, %578
  %580 = load i32, i32* %12, align 4
  %581 = icmp slt i32 %580, 400
  br i1 %581, label %582, label %615

582:                                              ; preds = %579
  %583 = load i32, i32* %12, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %584
  %586 = load i8, i8* %585, align 1
  %587 = zext i8 %586 to i32
  %588 = icmp ne i32 %587, 3
  br i1 %588, label %590, label %589

589:                                              ; preds = %582
  br label %612

590:                                              ; preds = %582
  %591 = load i32, i32* %12, align 4
  %592 = sext i32 %591 to i64
  %593 = getelementptr inbounds [400 x i8], [400 x i8]* %11, i64 0, i64 %592
  %594 = load i8, i8* %593, align 1
  %595 = sext i8 %594 to i32
  %596 = icmp ne i32 %595, 0
  br i1 %596, label %597, label %603

597:                                              ; preds = %590
  %598 = load i32, i32* %12, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %599
  %601 = load i8, i8* %600, align 1
  %602 = zext i8 %601 to i32
  br label %604

603:                                              ; preds = %590
  br label %604

604:                                              ; preds = %603, %597
  %605 = phi i32 [ %602, %597 ], [ 3, %603 ]
  %606 = trunc i32 %605 to i8
  %607 = load %struct.reading_cache*, %struct.reading_cache** %15, align 8
  %608 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %607, i32 0, i32 1
  %609 = load i32, i32* %12, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [400 x i8], [400 x i8]* %608, i64 0, i64 %610
  store i8 %606, i8* %611, align 1
  br label %612

612:                                              ; preds = %604, %589
  %613 = load i32, i32* %12, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %12, align 4
  br label %579, !llvm.loop !19

615:                                              ; preds = %579
  %616 = load i32, i32* @persistent_reading_cache_size, align 4
  %617 = add nsw i32 %616, 1
  store i32 %617, i32* @persistent_reading_cache_size, align 4
  br label %618

618:                                              ; preds = %615, %92, %42
  ret void
}

declare dso_local void @get_move_from_stack(i32, i32*, i32*) #1

declare dso_local void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delete_persistent_reading_cache_entry(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @find_origin(i32 %7)
  %9 = call i32 @find_persistent_reading_cache_entry(i32 %6, i32 %8)
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %13, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %15
  %17 = load i32, i32* @persistent_reading_cache_size, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* @persistent_reading_cache_size, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %19
  %21 = bitcast %struct.reading_cache* %16 to i8*
  %22 = bitcast %struct.reading_cache* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 476, i1 false)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @find_origin(i32 %24)
  %26 = call i32 @find_persistent_reading_cache_entry(i32 %23, i32 %25)
  store i32 %26, i32* %5, align 4
  br label %10, !llvm.loop !20

27:                                               ; preds = %10
  ret void
}

declare dso_local i32 @find_origin(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reading_hotspots(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.reading_cache*, align 8
  %8 = alloca float, align 4
  store float* %0, float** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @board_size, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @board_size, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load float*, float** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = mul nsw i32 %20, 20
  %22 = add nsw i32 21, %21
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds float, float* %19, i64 %25
  store float 0.000000e+00, float* %26, align 4
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %14, !llvm.loop !21

30:                                               ; preds = %14
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %9, !llvm.loop !22

34:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %47, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @persistent_reading_cache_size, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %39
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %35, !llvm.loop !23

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  %52 = icmp sle i32 %51, 100
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %91

54:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %88, %54
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @persistent_reading_cache_size, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [100 x %struct.reading_cache], [100 x %struct.reading_cache]* @persistent_reading_cache, i64 0, i64 %61
  store %struct.reading_cache* %62, %struct.reading_cache** %7, align 8
  %63 = load %struct.reading_cache*, %struct.reading_cache** %7, align 8
  %64 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = sitofp i32 %65 to float
  %67 = load i32, i32* %6, align 4
  %68 = sitofp i32 %67 to float
  %69 = fdiv float %66, %68
  store float %69, float* %8, align 4
  %70 = load %struct.reading_cache*, %struct.reading_cache** %7, align 8
  %71 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 4
  switch i32 %72, label %86 [
    i32 4, label %73
    i32 3, label %73
  ]

73:                                               ; preds = %59, %59
  %74 = load float*, float** %2, align 8
  %75 = load %struct.reading_cache*, %struct.reading_cache** %7, align 8
  %76 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 20
  %79 = sub nsw i32 %78, 1
  %80 = load %struct.reading_cache*, %struct.reading_cache** %7, align 8
  %81 = getelementptr inbounds %struct.reading_cache, %struct.reading_cache* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = srem i32 %82, 20
  %84 = sub nsw i32 %83, 1
  %85 = load float, float* %8, align 4
  call void @mark_string_hotspot_values(float* %74, i32 %79, i32 %84, float %85)
  br label %87

86:                                               ; preds = %59
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 630, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 -1, i32 -1)
  br label %87

87:                                               ; preds = %86, %73
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %55, !llvm.loop !24

91:                                               ; preds = %53, %55
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_string_hotspot_values(float* %0, i32 %1, i32 %2, float %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store float %3, float* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 20
  %16 = add nsw i32 21, %15
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %25

25:                                               ; preds = %68, %24
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 1
  br i1 %27, label %28, label %71

28:                                               ; preds = %25
  store i32 -1, i32* %10, align 4
  br label %29

29:                                               ; preds = %64, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp sle i32 %30, 1
  br i1 %31, label %32, label %67

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = mul nsw i32 %35, 20
  %37 = add nsw i32 21, %36
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = add nsw i32 %37, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %32
  %48 = load float, float* %8, align 4
  %49 = load float*, float** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = mul nsw i32 %52, 20
  %54 = add nsw i32 21, %53
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  %58 = add nsw i32 %54, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %49, i64 %59
  %61 = load float, float* %60, align 4
  %62 = fadd float %61, %48
  store float %62, float* %60, align 4
  br label %63

63:                                               ; preds = %47, %32
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %29, !llvm.loop !25

67:                                               ; preds = %29
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %25, !llvm.loop !26

71:                                               ; preds = %25
  br label %239

72:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %73

73:                                               ; preds = %236, %72
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @board_size, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %239

77:                                               ; preds = %73
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %232, %77
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @board_size, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %235

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = mul nsw i32 %83, 20
  %85 = add nsw i32 21, %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  br label %232

94:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %228, %94
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 8
  br i1 %97, label %98, label %231

98:                                               ; preds = %95
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* @deltai, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* @deltaj, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %12, align 4
  %109 = add nsw i32 %107, %108
  %110 = mul nsw i32 %109, 20
  %111 = add nsw i32 21, %110
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %112, %113
  %115 = add nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %136, label %121

121:                                              ; preds = %98
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %122, %123
  %125 = mul nsw i32 %124, 20
  %126 = add nsw i32 21, %125
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %127, %128
  %130 = add nsw i32 %126, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 2
  br i1 %135, label %136, label %227

136:                                              ; preds = %121, %98
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %137, %138
  %140 = mul nsw i32 %139, 20
  %141 = add nsw i32 21, %140
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %13, align 4
  %144 = add nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = load i32, i32* %6, align 4
  %147 = mul nsw i32 %146, 20
  %148 = add nsw i32 21, %147
  %149 = load i32, i32* %7, align 4
  %150 = add nsw i32 %148, %149
  %151 = call i32 @same_string(i32 %145, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %227

153:                                              ; preds = %136
  %154 = load i32, i32* %11, align 4
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %168

156:                                              ; preds = %153
  %157 = load float, float* %8, align 4
  %158 = load float*, float** %5, align 8
  %159 = load i32, i32* %9, align 4
  %160 = mul nsw i32 %159, 20
  %161 = add nsw i32 21, %160
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds float, float* %158, i64 %164
  %166 = load float, float* %165, align 4
  %167 = fadd float %166, %157
  store float %167, float* %165, align 4
  br label %231

168:                                              ; preds = %153
  %169 = load i32, i32* %9, align 4
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %169, %170
  %172 = mul nsw i32 %171, 20
  %173 = add nsw i32 21, %172
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %214, label %181

181:                                              ; preds = %168
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %182, %183
  %185 = mul nsw i32 %184, 20
  %186 = add nsw i32 21, %185
  %187 = load i32, i32* %10, align 4
  %188 = add nsw i32 %186, %187
  %189 = call i32 @countlib(i32 %188)
  %190 = icmp sle i32 %189, 2
  br i1 %190, label %214, label %191

191:                                              ; preds = %181
  %192 = load i32, i32* %9, align 4
  %193 = mul nsw i32 %192, 20
  %194 = add nsw i32 21, %193
  %195 = load i32, i32* %10, align 4
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %195, %196
  %198 = add nsw i32 %194, %197
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %9, align 4
  %206 = mul nsw i32 %205, 20
  %207 = add nsw i32 21, %206
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %13, align 4
  %210 = add nsw i32 %208, %209
  %211 = add nsw i32 %207, %210
  %212 = call i32 @countlib(i32 %211)
  %213 = icmp sle i32 %212, 2
  br i1 %213, label %214, label %226

214:                                              ; preds = %204, %191, %181, %168
  %215 = load float, float* %8, align 4
  %216 = load float*, float** %5, align 8
  %217 = load i32, i32* %9, align 4
  %218 = mul nsw i32 %217, 20
  %219 = add nsw i32 21, %218
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float, float* %216, i64 %222
  %224 = load float, float* %223, align 4
  %225 = fadd float %224, %215
  store float %225, float* %223, align 4
  br label %226

226:                                              ; preds = %214, %204
  br label %231

227:                                              ; preds = %136, %121
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %11, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %11, align 4
  br label %95, !llvm.loop !27

231:                                              ; preds = %226, %156, %95
  br label %232

232:                                              ; preds = %231, %93
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  br label %78, !llvm.loop !28

235:                                              ; preds = %78
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %73, !llvm.loop !29

239:                                              ; preds = %71, %73
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @purge_persistent_owl_cache() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @stackp, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 651, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %6

6:                                                ; preds = %5, %4
  %7 = load i32, i32* @purge_persistent_owl_cache.last_purge_position_number, align 4
  %8 = load i32, i32* @position_number, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %58

11:                                               ; preds = %6
  %12 = load i32, i32* @position_number, align 4
  store i32 %12, i32* @purge_persistent_owl_cache.last_purge_position_number, align 4
  br label %13

13:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %55, %13
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @persistent_owl_cache_size, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %58

18:                                               ; preds = %14
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %20
  %22 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @board_size, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %29, i32 0, i32 1
  %31 = getelementptr inbounds [400 x i8], [400 x i8]* %30, i64 0, i64 0
  %32 = call i32 @verify_stored_board(i8* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %54, label %34

34:                                               ; preds = %26, %18
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* @persistent_owl_cache_size, align 4
  %37 = sub nsw i32 %36, 1
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %41
  %43 = load i32, i32* @persistent_owl_cache_size, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %45
  %47 = bitcast %struct.owl_cache* %42 to i8*
  %48 = bitcast %struct.owl_cache* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 444, i1 false)
  br label %49

49:                                               ; preds = %39, %34
  %50 = load i32, i32* %1, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* @persistent_owl_cache_size, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* @persistent_owl_cache_size, align 4
  br label %54

54:                                               ; preds = %49, %26
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %1, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %1, align 4
  br label %14, !llvm.loop !30

58:                                               ; preds = %10, %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_persistent_owl_cache() #0 {
  store i32 0, i32* @persistent_owl_cache_size, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_persistent_owl_cache(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load i32, i32* @stackp, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %8
  %22 = load i32, i32* @stackp, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %8
  br label %26

25:                                               ; preds = %21
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 685, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i32 -1, i32 -1)
  br label %26

26:                                               ; preds = %25, %24
  store i32 0, i32* %18, align 4
  br label %27

27:                                               ; preds = %127, %26
  %28 = load i32, i32* %18, align 4
  %29 = load i32, i32* @persistent_owl_cache_size, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %130

31:                                               ; preds = %27
  %32 = load i32, i32* %18, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %126

39:                                               ; preds = %31
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %126

47:                                               ; preds = %39
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %126

55:                                               ; preds = %47
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %126

63:                                               ; preds = %55
  %64 = load i32, i32* %18, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %66, i32 0, i32 1
  %68 = getelementptr inbounds [400 x i8], [400 x i8]* %67, i64 0, i64 0
  %69 = call i32 @verify_stored_board(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %126

71:                                               ; preds = %63
  %72 = load i32, i32* %18, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %14, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %15, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %71
  %81 = load i32, i32* %18, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %15, align 8
  store i32 %85, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %71
  %88 = load i32*, i32** %16, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %16, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %90, %87
  %98 = load i32*, i32** %17, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %17, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %100, %97
  %108 = load i32, i32* @debug, align 4
  %109 = and i32 %108, 2097152
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %107
  br label %125

112:                                              ; preds = %107
  %113 = load i32, i32* %10, align 4
  %114 = call i8* @routine_to_string(i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @result_to_string(i32 %122)
  %124 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0), i8* %114, i32 %115, i32 %116, i32 %117, i8* %123)
  br label %125

125:                                              ; preds = %112, %111
  store i32 1, i32* %9, align 4
  br label %131

126:                                              ; preds = %63, %55, %47, %39, %31
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %18, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %18, align 4
  br label %27, !llvm.loop !31

130:                                              ; preds = %27
  store i32 0, i32* %9, align 4
  br label %131

131:                                              ; preds = %130, %125
  %132 = load i32, i32* %9, align 4
  ret i32 %132
}

declare dso_local i8* @routine_to_string(i32) #1

declare dso_local i8* @result_to_string(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_persistent_owl_cache(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i8* %9, i32 %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [400 x i8], align 16
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [4 x i32], align 16
  %30 = alloca i32, align 4
  %31 = alloca [160 x i32], align 16
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32 %0, i32* %12, align 4
  store i32 %1, i32* %13, align 4
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i8* %9, i8** %21, align 8
  store i32 %10, i32* %22, align 4
  %35 = load i32, i32* %22, align 4
  %36 = sub nsw i32 3, %35
  store i32 %36, i32* %27, align 4
  %37 = load i32, i32* @stackp, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %11
  br label %41

40:                                               ; preds = %11
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 722, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1)
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* @persistent_owl_cache_size, align 4
  %43 = icmp eq i32 %42, 150
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  call void @purge_persistent_owl_cache()
  br label %45

45:                                               ; preds = %44, %41
  %46 = load i32, i32* @persistent_owl_cache_size, align 4
  %47 = icmp eq i32 %46, 150
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load i32, i32* @debug, align 4
  %50 = and i32 %49, 4096
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %52
  br label %515

56:                                               ; preds = %45
  %57 = load i32, i32* @board_size, align 4
  %58 = load i32, i32* @persistent_owl_cache_size, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @persistent_owl_cache_size, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %65, i32 0, i32 4
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @persistent_owl_cache_size, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %70, i32 0, i32 5
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @persistent_owl_cache_size, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %75, i32 0, i32 6
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @persistent_owl_cache_size, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %80, i32 0, i32 7
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @persistent_owl_cache_size, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %85, i32 0, i32 8
  store i32 %82, i32* %86, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* @persistent_owl_cache_size, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %90, i32 0, i32 9
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @persistent_owl_cache_size, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %95, i32 0, i32 10
  store i32 %92, i32* %96, align 4
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @persistent_owl_cache_size, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %100, i32 0, i32 11
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %20, align 4
  %103 = load i32, i32* @persistent_owl_cache_size, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %104
  %106 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %105, i32 0, i32 3
  store i32 %102, i32* %106, align 4
  %107 = load i32, i32* @movenum, align 4
  %108 = load i32, i32* @persistent_owl_cache_size, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %110, i32 0, i32 2
  store i32 %107, i32* %111, align 4
  store i32 21, i32* %24, align 4
  br label %112

112:                                              ; preds = %136, %56
  %113 = load i32, i32* %24, align 4
  %114 = icmp slt i32 %113, 400
  br i1 %114, label %115, label %139

115:                                              ; preds = %112
  %116 = load i32, i32* %24, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ne i32 %120, 3
  br i1 %121, label %122, label %135

122:                                              ; preds = %115
  %123 = load i8*, i8** %21, align 8
  %124 = load i32, i32* %24, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i32
  %131 = trunc i32 %130 to i8
  %132 = load i32, i32* %24, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %133
  store i8 %131, i8* %134, align 1
  br label %135

135:                                              ; preds = %122, %115
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %24, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %24, align 4
  br label %112, !llvm.loop !32

139:                                              ; preds = %112
  %140 = load i32, i32* %17, align 4
  %141 = icmp ult i32 %140, 421
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = icmp ne i32 %147, 3
  br i1 %148, label %149, label %153

149:                                              ; preds = %142
  %150 = load i32, i32* %17, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %151
  store i8 1, i8* %152, align 1
  br label %153

153:                                              ; preds = %149, %142, %139
  %154 = load i32, i32* %18, align 4
  %155 = icmp ult i32 %154, 421
  br i1 %155, label %156, label %167

156:                                              ; preds = %153
  %157 = load i32, i32* %18, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp ne i32 %161, 3
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %165
  store i8 1, i8* %166, align 1
  br label %167

167:                                              ; preds = %163, %156, %153
  store i32 1, i32* %25, align 4
  br label %168

168:                                              ; preds = %292, %167
  %169 = load i32, i32* %25, align 4
  %170 = icmp slt i32 %169, 5
  br i1 %170, label %171, label %295

171:                                              ; preds = %168
  store i32 21, i32* %24, align 4
  br label %172

172:                                              ; preds = %288, %171
  %173 = load i32, i32* %24, align 4
  %174 = icmp slt i32 %173, 400
  br i1 %174, label %175, label %291

175:                                              ; preds = %172
  %176 = load i32, i32* %24, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp ne i32 %180, 3
  br i1 %181, label %182, label %197

182:                                              ; preds = %175
  %183 = load i32, i32* %24, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = load i32, i32* %27, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %197, label %190

190:                                              ; preds = %182
  %191 = load i32, i32* %24, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = sext i8 %194 to i32
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190, %182, %175
  br label %288

198:                                              ; preds = %190
  %199 = load i32, i32* %24, align 4
  %200 = add nsw i32 %199, 20
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = icmp ne i32 %204, 3
  br i1 %205, label %206, label %215

206:                                              ; preds = %198
  %207 = load i32, i32* %24, align 4
  %208 = add nsw i32 %207, 20
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %209
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = load i32, i32* %25, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %266, label %215

215:                                              ; preds = %206, %198
  %216 = load i32, i32* %24, align 4
  %217 = sub nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %218
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp ne i32 %221, 3
  br i1 %222, label %223, label %232

223:                                              ; preds = %215
  %224 = load i32, i32* %24, align 4
  %225 = sub nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %226
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = load i32, i32* %25, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %266, label %232

232:                                              ; preds = %223, %215
  %233 = load i32, i32* %24, align 4
  %234 = sub nsw i32 %233, 20
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %235
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp ne i32 %238, 3
  br i1 %239, label %240, label %249

240:                                              ; preds = %232
  %241 = load i32, i32* %24, align 4
  %242 = sub nsw i32 %241, 20
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = load i32, i32* %25, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %266, label %249

249:                                              ; preds = %240, %232
  %250 = load i32, i32* %24, align 4
  %251 = add nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp ne i32 %255, 3
  br i1 %256, label %257, label %287

257:                                              ; preds = %249
  %258 = load i32, i32* %24, align 4
  %259 = add nsw i32 %258, 1
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %260
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = load i32, i32* %25, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %287

266:                                              ; preds = %257, %240, %223, %206
  %267 = load i32, i32* %24, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %266
  %274 = load i32, i32* %25, align 4
  %275 = add nsw i32 %274, 1
  %276 = trunc i32 %275 to i8
  %277 = load i32, i32* %24, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %278
  store i8 %276, i8* %279, align 1
  br label %286

280:                                              ; preds = %266
  %281 = load i32, i32* %24, align 4
  %282 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 0
  %283 = load i32, i32* %25, align 4
  %284 = add nsw i32 %283, 1
  %285 = trunc i32 %284 to i8
  call void @mark_string(i32 %281, i8* %282, i8 signext %285)
  br label %286

286:                                              ; preds = %280, %273
  br label %287

287:                                              ; preds = %286, %257, %249
  br label %288

288:                                              ; preds = %287, %197
  %289 = load i32, i32* %24, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %24, align 4
  br label %172, !llvm.loop !33

291:                                              ; preds = %172
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %25, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %25, align 4
  br label %168, !llvm.loop !34

295:                                              ; preds = %168
  store i32 21, i32* %24, align 4
  br label %296

296:                                              ; preds = %355, %295
  %297 = load i32, i32* %24, align 4
  %298 = icmp slt i32 %297, 400
  br i1 %298, label %299, label %358

299:                                              ; preds = %296
  %300 = load i32, i32* %24, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %301
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i32
  %305 = load i32, i32* %27, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %314, label %307

307:                                              ; preds = %299
  %308 = load i32, i32* %24, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = sext i8 %311 to i32
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %307, %299
  br label %355

315:                                              ; preds = %307
  store i32 0, i32* %26, align 4
  br label %316

316:                                              ; preds = %351, %315
  %317 = load i32, i32* %26, align 4
  %318 = icmp slt i32 %317, 4
  br i1 %318, label %319, label %354

319:                                              ; preds = %316
  %320 = load i32, i32* %24, align 4
  %321 = load i32, i32* %26, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %320, %324
  store i32 %325, i32* %28, align 4
  %326 = load i32, i32* %28, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp ne i32 %330, 3
  br i1 %331, label %332, label %350

332:                                              ; preds = %319
  %333 = load i32, i32* %28, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = zext i8 %336 to i32
  %338 = load i32, i32* %27, align 4
  %339 = icmp ne i32 %337, %338
  br i1 %339, label %340, label %350

340:                                              ; preds = %332
  %341 = load i32, i32* %28, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %342
  %344 = load i8, i8* %343, align 1
  %345 = sext i8 %344 to i32
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %340
  %348 = load i32, i32* %24, align 4
  %349 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 0
  call void @mark_string(i32 %348, i8* %349, i8 signext 1)
  br label %354

350:                                              ; preds = %340, %332, %319
  br label %351

351:                                              ; preds = %350
  %352 = load i32, i32* %26, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %26, align 4
  br label %316, !llvm.loop !35

354:                                              ; preds = %347, %316
  br label %355

355:                                              ; preds = %354, %314
  %356 = load i32, i32* %24, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %24, align 4
  br label %296, !llvm.loop !36

358:                                              ; preds = %296
  store i32 21, i32* %24, align 4
  br label %359

359:                                              ; preds = %442, %358
  %360 = load i32, i32* %24, align 4
  %361 = icmp slt i32 %360, 400
  br i1 %361, label %362, label %445

362:                                              ; preds = %359
  %363 = load i32, i32* %24, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %364
  %366 = load i8, i8* %365, align 1
  %367 = zext i8 %366 to i32
  %368 = load i32, i32* %27, align 4
  %369 = icmp eq i32 %367, %368
  br i1 %369, label %370, label %441

370:                                              ; preds = %362
  %371 = load i32, i32* %24, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %372
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %441

377:                                              ; preds = %370
  %378 = load i32, i32* %24, align 4
  %379 = call i32 @countlib(i32 %378)
  %380 = icmp slt i32 %379, 5
  br i1 %380, label %381, label %441

381:                                              ; preds = %377
  %382 = load i32, i32* %24, align 4
  %383 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %384 = call i32 @findlib(i32 %382, i32 4, i32* %383)
  store i32 %384, i32* %30, align 4
  store i32 0, i32* %26, align 4
  br label %385

385:                                              ; preds = %396, %381
  %386 = load i32, i32* %26, align 4
  %387 = load i32, i32* %30, align 4
  %388 = icmp slt i32 %386, %387
  br i1 %388, label %389, label %399

389:                                              ; preds = %385
  %390 = load i32, i32* %26, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %394
  store i8 1, i8* %395, align 1
  br label %396

396:                                              ; preds = %389
  %397 = load i32, i32* %26, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %26, align 4
  br label %385, !llvm.loop !37

399:                                              ; preds = %385
  %400 = load i32, i32* %24, align 4
  %401 = getelementptr inbounds [160 x i32], [160 x i32]* %31, i64 0, i64 0
  %402 = call i32 @chainlinks(i32 %400, i32* %401)
  store i32 %402, i32* %32, align 4
  store i32 0, i32* %26, align 4
  br label %403

403:                                              ; preds = %437, %399
  %404 = load i32, i32* %26, align 4
  %405 = load i32, i32* %32, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %440

407:                                              ; preds = %403
  %408 = load i32, i32* %26, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [160 x i32], [160 x i32]* %31, i64 0, i64 %409
  %411 = load i32, i32* %410, align 4
  %412 = call i32 @countlib(i32 %411)
  %413 = icmp sle i32 %412, 3
  br i1 %413, label %414, label %436

414:                                              ; preds = %407
  %415 = load i32, i32* %26, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [160 x i32], [160 x i32]* %31, i64 0, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0
  %420 = call i32 @findlib(i32 %418, i32 3, i32* %419)
  store i32 %420, i32* %30, align 4
  store i32 0, i32* %33, align 4
  br label %421

421:                                              ; preds = %432, %414
  %422 = load i32, i32* %33, align 4
  %423 = load i32, i32* %30, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %421
  %426 = load i32, i32* %33, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %430
  store i8 1, i8* %431, align 1
  br label %432

432:                                              ; preds = %425
  %433 = load i32, i32* %33, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %33, align 4
  br label %421, !llvm.loop !38

435:                                              ; preds = %421
  br label %436

436:                                              ; preds = %435, %407
  br label %437

437:                                              ; preds = %436
  %438 = load i32, i32* %26, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %26, align 4
  br label %403, !llvm.loop !39

440:                                              ; preds = %403
  br label %441

441:                                              ; preds = %440, %377, %370, %362
  br label %442

442:                                              ; preds = %441
  %443 = load i32, i32* %24, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %24, align 4
  br label %359, !llvm.loop !40

445:                                              ; preds = %359
  store i32 21, i32* %24, align 4
  br label %446

446:                                              ; preds = %501, %445
  %447 = load i32, i32* %24, align 4
  %448 = icmp slt i32 %447, 400
  br i1 %448, label %449, label %504

449:                                              ; preds = %446
  %450 = load i32, i32* %24, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %451
  %453 = load i8, i8* %452, align 1
  %454 = zext i8 %453 to i32
  store i32 %454, i32* %34, align 4
  %455 = load i32, i32* %24, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %456
  %458 = load i8, i8* %457, align 1
  %459 = zext i8 %458 to i32
  %460 = icmp ne i32 %459, 3
  br i1 %460, label %462, label %461

461:                                              ; preds = %449
  br label %501

462:                                              ; preds = %449
  %463 = load i32, i32* %24, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [400 x i8], [400 x i8]* %23, i64 0, i64 %464
  %466 = load i8, i8* %465, align 1
  %467 = icmp ne i8 %466, 0
  br i1 %467, label %469, label %468

468:                                              ; preds = %462
  store i32 3, i32* %34, align 4
  br label %491

469:                                              ; preds = %462
  %470 = load i32, i32* %24, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %471
  %473 = load i8, i8* %472, align 1
  %474 = zext i8 %473 to i32
  %475 = icmp eq i32 %474, 1
  br i1 %475, label %483, label %476

476:                                              ; preds = %469
  %477 = load i32, i32* %24, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i32
  %482 = icmp eq i32 %481, 2
  br i1 %482, label %483, label %490

483:                                              ; preds = %476, %469
  %484 = load i32, i32* %24, align 4
  %485 = call i32 @countlib(i32 %484)
  %486 = icmp sgt i32 %485, 4
  br i1 %486, label %487, label %490

487:                                              ; preds = %483
  %488 = load i32, i32* %34, align 4
  %489 = or i32 %488, 4
  store i32 %489, i32* %34, align 4
  br label %490

490:                                              ; preds = %487, %483, %476
  br label %491

491:                                              ; preds = %490, %468
  %492 = load i32, i32* %34, align 4
  %493 = trunc i32 %492 to i8
  %494 = load i32, i32* @persistent_owl_cache_size, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %495
  %497 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %496, i32 0, i32 1
  %498 = load i32, i32* %24, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [400 x i8], [400 x i8]* %497, i64 0, i64 %499
  store i8 %493, i8* %500, align 1
  br label %501

501:                                              ; preds = %491, %461
  %502 = load i32, i32* %24, align 4
  %503 = add nsw i32 %502, 1
  store i32 %503, i32* %24, align 4
  br label %446, !llvm.loop !41

504:                                              ; preds = %446
  %505 = load i32, i32* @debug, align 4
  %506 = and i32 %505, 2097152
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %512

508:                                              ; preds = %504
  %509 = load i32, i32* @persistent_owl_cache_size, align 4
  %510 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0), i32 %509)
  %511 = load i32, i32* @persistent_owl_cache_size, align 4
  call void @print_persistent_owl_cache_entry(i32 %511)
  br label %512

512:                                              ; preds = %508, %504
  %513 = load i32, i32* @persistent_owl_cache_size, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* @persistent_owl_cache_size, align 4
  br label %515

515:                                              ; preds = %512, %55
  ret void
}

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @findlib(i32, i32, i32*) #1

declare dso_local i32 @chainlinks(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_persistent_owl_cache_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.owl_cache*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %5
  store %struct.owl_cache* %6, %struct.owl_cache** %3, align 8
  %7 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %8 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i32 %9)
  %11 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %12 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i32 %13)
  %15 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %16 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @routine_to_string(i32 %17)
  %19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.18, i64 0, i64 0), i8* %18)
  %20 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %21 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0), i32 %22)
  %24 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %25 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %26)
  %28 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %29 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0), i32 %30)
  %32 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %33 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i64 0, i64 0), i32 %34)
  %36 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %37 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.23, i64 0, i64 0), i32 %38)
  %40 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %41 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i64 0, i64 0), i32 %42)
  %44 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %45 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %44, i32 0, i32 1
  %46 = getelementptr inbounds [400 x i8], [400 x i8]* %45, i64 0, i64 0
  %47 = load %struct.owl_cache*, %struct.owl_cache** %3, align 8
  %48 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  call void @draw_active_area(i8* %46, i32 %49)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @owl_hotspots(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [241 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.owl_cache*, align 8
  %10 = alloca float, align 4
  store float* %0, float** %2, align 8
  store i32 0, i32* %8, align 4
  store i32 21, i32* %3, align 4
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 400
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load float*, float** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds float, float* %15, i64 %17
  store float 0.000000e+00, float* %18, align 4
  br label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %11, !llvm.loop !42

22:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %35, %22
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @persistent_owl_cache_size, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %23, !llvm.loop !43

38:                                               ; preds = %23
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 100
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %140

42:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %137, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @persistent_owl_cache_size, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %140

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [150 x %struct.owl_cache], [150 x %struct.owl_cache]* @persistent_owl_cache, i64 0, i64 %49
  store %struct.owl_cache* %50, %struct.owl_cache** %9, align 8
  %51 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %52 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sitofp i32 %53 to float
  %55 = load i32, i32* %8, align 4
  %56 = sitofp i32 %55 to float
  %57 = fdiv float %54, %56
  store float %57, float* %10, align 4
  %58 = load i32, i32* @debug, align 4
  %59 = and i32 %58, 2097152
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %47
  %62 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %63 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %66 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load float, float* %10, align 4
  %69 = fpext float %68 to double
  %70 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i32 %64, i32 %67, double %69)
  br label %71

71:                                               ; preds = %61, %47
  %72 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %73 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %135 [
    i32 0, label %75
    i32 2, label %75
    i32 1, label %75
    i32 3, label %75
    i32 4, label %84
    i32 5, label %84
    i32 8, label %84
    i32 6, label %93
    i32 7, label %110
  ]

75:                                               ; preds = %71, %71, %71, %71
  %76 = load float*, float** %2, align 8
  %77 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %78 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  %80 = load float, float* %10, align 4
  %81 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %82 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %81, i32 0, i32 1
  %83 = getelementptr inbounds [400 x i8], [400 x i8]* %82, i64 0, i64 0
  call void @mark_dragon_hotspot_values(float* %76, i32 %79, float %80, i8* %83)
  br label %136

84:                                               ; preds = %71, %71, %71
  %85 = load float*, float** %2, align 8
  %86 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %87 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = load float, float* %10, align 4
  %90 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %91 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %90, i32 0, i32 1
  %92 = getelementptr inbounds [400 x i8], [400 x i8]* %91, i64 0, i64 0
  call void @mark_dragon_hotspot_values(float* %85, i32 %88, float %89, i8* %92)
  br label %136

93:                                               ; preds = %71
  %94 = load float*, float** %2, align 8
  %95 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %96 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = load float, float* %10, align 4
  %99 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %100 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %99, i32 0, i32 1
  %101 = getelementptr inbounds [400 x i8], [400 x i8]* %100, i64 0, i64 0
  call void @mark_dragon_hotspot_values(float* %94, i32 %97, float %98, i8* %101)
  %102 = load float*, float** %2, align 8
  %103 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %104 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load float, float* %10, align 4
  %107 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %108 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %107, i32 0, i32 1
  %109 = getelementptr inbounds [400 x i8], [400 x i8]* %108, i64 0, i64 0
  call void @mark_dragon_hotspot_values(float* %102, i32 %105, float %106, i8* %109)
  br label %136

110:                                              ; preds = %71
  %111 = load %struct.owl_cache*, %struct.owl_cache** %9, align 8
  %112 = getelementptr inbounds %struct.owl_cache, %struct.owl_cache* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [241 x i32], [241 x i32]* %6, i64 0, i64 0
  %115 = call i32 @findlib(i32 %113, i32 241, i32* %114)
  store i32 %115, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %131, %110
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load float, float* %10, align 4
  %122 = load float*, float** %2, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [241 x i32], [241 x i32]* %6, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds float, float* %122, i64 %127
  %129 = load float, float* %128, align 4
  %130 = fadd float %129, %121
  store float %130, float* %128, align 4
  br label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %116, !llvm.loop !44

134:                                              ; preds = %116
  br label %136

135:                                              ; preds = %71
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 977, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 -1, i32 -1)
  br label %136

136:                                              ; preds = %135, %134, %93, %84, %75
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %43, !llvm.loop !45

140:                                              ; preds = %41, %43
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_dragon_hotspot_values(float* %0, i32 %1, float %2, i8* %3) #0 {
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store float* %0, float** %5, align 8
  store i32 %1, i32* %6, align 4
  store float %2, float* %7, align 4
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %4
  br label %35

28:                                               ; preds = %20
  %29 = load i32, i32* %6, align 4
  %30 = sdiv i32 %29, 20
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %6, align 4
  %33 = srem i32 %32, 20
  %34 = sub nsw i32 %33, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 872, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i32 %31, i32 %34)
  br label %35

35:                                               ; preds = %28, %27
  store i32 21, i32* %9, align 4
  br label %36

36:                                               ; preds = %208, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 400
  br i1 %38, label %39, label %211

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %208

47:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %181, %47
  %49 = load i32, i32* %10, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %184

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %52, %56
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %71, label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %180

71:                                               ; preds = %64, %51
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @is_same_dragon(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %93, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @are_neighbor_dragons(i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %180

81:                                               ; preds = %76
  %82 = load i32, i32* %11, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %86, %91
  br i1 %92, label %93, label %180

93:                                               ; preds = %81, %71
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @countlib(i32 %94)
  %96 = icmp sle i32 %95, 4
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @is_edge_vertex(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %180

101:                                              ; preds = %97, %93
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 4
  br i1 %103, label %104, label %130

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @is_same_dragon(i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %104
  %110 = load float, float* %7, align 4
  %111 = load float*, float** %5, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds float, float* %111, i64 %113
  %115 = load float, float* %114, align 4
  %116 = fadd float %115, %110
  store float %116, float* %114, align 4
  br label %129

117:                                              ; preds = %104
  %118 = load float, float* %7, align 4
  %119 = fpext float %118 to double
  %120 = fmul double 5.000000e-01, %119
  %121 = load float*, float** %5, align 8
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  %125 = load float, float* %124, align 4
  %126 = fpext float %125 to double
  %127 = fadd double %126, %120
  %128 = fptrunc double %127 to float
  store float %128, float* %124, align 4
  br label %129

129:                                              ; preds = %117, %109
  br label %184

130:                                              ; preds = %101
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = srem i32 %132, 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %131, %136
  store i32 %137, i32* %12, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  %141 = srem i32 %140, 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %138, %144
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %167, label %152

152:                                              ; preds = %130
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @countlib(i32 %153)
  %155 = icmp sle i32 %154, 2
  br i1 %155, label %167, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %13, align 4
  %165 = call i32 @countlib(i32 %164)
  %166 = icmp sle i32 %165, 2
  br i1 %166, label %167, label %179

167:                                              ; preds = %163, %156, %152, %130
  %168 = load float, float* %7, align 4
  %169 = fpext float %168 to double
  %170 = fmul double 5.000000e-01, %169
  %171 = load float*, float** %5, align 8
  %172 = load i32, i32* %9, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  %175 = load float, float* %174, align 4
  %176 = fpext float %175 to double
  %177 = fadd double %176, %170
  %178 = fptrunc double %177 to float
  store float %178, float* %174, align 4
  br label %179

179:                                              ; preds = %167, %163
  br label %184

180:                                              ; preds = %97, %81, %76, %64
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %48, !llvm.loop !46

184:                                              ; preds = %179, %129, %48
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %185, 8
  br i1 %186, label %187, label %207

187:                                              ; preds = %184
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* %9, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %187
  %196 = load float, float* %7, align 4
  %197 = fpext float %196 to double
  %198 = fmul double 5.000000e-01, %197
  %199 = load float*, float** %5, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, float* %199, i64 %201
  %203 = load float, float* %202, align 4
  %204 = fpext float %203 to double
  %205 = fsub double %204, %198
  %206 = fptrunc double %205 to float
  store float %206, float* %202, align 4
  br label %207

207:                                              ; preds = %195, %187, %184
  br label %208

208:                                              ; preds = %207, %46
  %209 = load i32, i32* %9, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %9, align 4
  br label %36, !llvm.loop !47

211:                                              ; preds = %36
  ret void
}

declare dso_local i32 @same_string(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_active_area(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 32, i32* %8, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 79, i32 111
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 88, i32 120
  store i32 %19, i32* %10, align 4
  call void @start_draw_board()
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %137, %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @board_size, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %140

24:                                               ; preds = %20
  %25 = load i32, i32* @board_size, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sub nsw i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %29)
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %130, %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @board_size, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %133

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = mul nsw i32 %36, 20
  %38 = add nsw i32 21, %37
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %11, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 46, i32* %8, align 4
  br label %91

49:                                               ; preds = %35
  %50 = load i8*, i8** %3, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %8, align 4
  br label %90

59:                                               ; preds = %49
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 5
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 79, i32* %8, align 4
  br label %89

68:                                               ; preds = %59
  %69 = load i8*, i8** %3, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %8, align 4
  br label %88

78:                                               ; preds = %68
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 6
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 88, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %78
  br label %88

88:                                               ; preds = %87, %76
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %57
  br label %91

91:                                               ; preds = %90, %48
  %92 = load i8*, i8** %3, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  store i32 63, i32* %8, align 4
  br label %100

100:                                              ; preds = %99, %91
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0), i32 %106)
  br label %129

108:                                              ; preds = %100
  %109 = load i32, i32* %6, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load i32, i32* %5, align 4
  %113 = mul nsw i32 %112, 20
  %114 = add nsw i32 21, %113
  %115 = load i32, i32* %6, align 4
  %116 = sub nsw i32 %115, 1
  %117 = add nsw i32 %114, %116
  %118 = load i32, i32* %4, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %111
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i32 %122)
  br label %128

124:                                              ; preds = %111, %108
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %125, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %128, %104
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %31, !llvm.loop !48

133:                                              ; preds = %31
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %135 = load i32, i32* %7, align 4
  %136 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %20, !llvm.loop !49

140:                                              ; preds = %20
  call void @end_draw_board()
  ret void
}

declare dso_local void @start_draw_board() #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local void @end_draw_board() #1

declare dso_local i32 @is_same_dragon(i32, i32) #1

declare dso_local i32 @are_neighbor_dragons(i32, i32) #1

declare dso_local i32 @is_edge_vertex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }

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
