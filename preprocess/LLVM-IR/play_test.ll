; ModuleID = 'play_test.c'
source_filename = "play_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@.str = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Couldn't find the size (SZ) attribute!\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@komi = external dso_local global float, align 4
@quiet = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Ruleset:      %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"GN\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Game Name:    %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"Game Date:    %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"GC\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Game Comment: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Game User:    %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"Black Player: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"PW\00", align 1
@.str.16 = private unnamed_addr constant [18 x i8] c"White Player: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"Move %d (%C): \00", align 1
@movenum = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"GNU Go plays %m \00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"(%.2f) \00", align 1
@potential_moves = external dso_local global [19 x [19 x float]], align 16
@.str.20 = private unnamed_addr constant [16 x i8] c"- Game move %m \00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"GNU Go plays %s (%.2f) - Game move %s (%.2f)\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"GNU Go plays the same move %s (%.2f)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_replay(%struct.Gameinfo* %0, i32 %1) #0 {
  %3 = alloca %struct.Gameinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.SGFTree_t, align 8
  %9 = alloca %struct.SGFNode_t*, align 8
  store %struct.Gameinfo* %0, %struct.Gameinfo** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8* null, i8** %7, align 8
  %10 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %11 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %10, i32 0, i32 2
  %12 = bitcast %struct.SGFTree_t* %8 to i8*
  %13 = bitcast %struct.SGFTree_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %8, i32 0, i32 0
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %14, align 8
  store %struct.SGFNode_t* %15, %struct.SGFNode_t** %9, align 8
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %17 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %5)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 1) #4
  unreachable

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  call void @gnugo_clear_board(i32 %23)
  %24 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %25 = call i32 @sgfGetFloatProperty(%struct.SGFNode_t* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), float* %6)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load float, float* %6, align 4
  store float %28, float* @komi, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* @quiet, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %83, label %32

32:                                               ; preds = %29
  %33 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %34 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %7)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %36, %32
  %40 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %41 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8** %7)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %44)
  br label %46

46:                                               ; preds = %43, %39
  %47 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %48 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** %7)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %55 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8** %7)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %62 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8** %7)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %69 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8** %7)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i8* %72)
  br label %74

74:                                               ; preds = %71, %67
  %75 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %76 = call i32 @sgfGetCharProperty(%struct.SGFNode_t* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8** %7)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  call void @gameinfo_print(%struct.Gameinfo* %82)
  br label %83

83:                                               ; preds = %81, %29
  br label %84

84:                                               ; preds = %87, %83
  %85 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %86 = icmp ne %struct.SGFNode_t* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %84
  %88 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %89 = load i32, i32* %4, align 4
  call void @replay_node(%struct.SGFNode_t* %88, i32 %89)
  call void @sgffile_output(%struct.SGFTree_t* %8)
  %90 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %91 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %90, i32 0, i32 2
  %92 = load %struct.SGFNode_t*, %struct.SGFNode_t** %91, align 8
  store %struct.SGFNode_t* %92, %struct.SGFNode_t** %9, align 8
  br label %84, !llvm.loop !4

93:                                               ; preds = %84
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sgfGetIntProperty(%struct.SGFNode_t*, i8*, i32*) #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

declare dso_local void @gnugo_clear_board(i32) #2

declare dso_local i32 @sgfGetFloatProperty(%struct.SGFNode_t*, i8*, float*) #2

declare dso_local i32 @sgfGetCharProperty(%struct.SGFNode_t*, i8*, i8**) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local void @gameinfo_print(%struct.Gameinfo*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @replay_node(%struct.SGFNode_t* %0, i32 %1) #0 {
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFProperty_t*, align 8
  %6 = alloca %struct.SGFProperty_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [127 x i8], align 16
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.SGFProperty_t* null, %struct.SGFProperty_t** %6, align 8
  %14 = call i32 @gnugo_get_boardsize()
  store i32 %14, i32* %8, align 4
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %16 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %15, i32 0, i32 0
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %16, align 8
  store %struct.SGFProperty_t* %17, %struct.SGFProperty_t** %5, align 8
  br label %18

18:                                               ; preds = %43, %2
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %20 = icmp ne %struct.SGFProperty_t* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %23 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = sext i16 %24 to i32
  switch i32 %25, label %42 [
    i32 16961, label %26
    i32 22337, label %33
    i32 8258, label %40
    i32 8279, label %40
  ]

26:                                               ; preds = %21
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @get_moveX(%struct.SGFProperty_t* %27, i32 %28)
  %30 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @get_moveY(%struct.SGFProperty_t* %30, i32 %31)
  call void @gnugo_add_stone(i32 %29, i32 %32, i32 2)
  br label %42

33:                                               ; preds = %21
  %34 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @get_moveX(%struct.SGFProperty_t* %34, i32 %35)
  %37 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @get_moveY(%struct.SGFProperty_t* %37, i32 %38)
  call void @gnugo_add_stone(i32 %36, i32 %39, i32 1)
  br label %42

40:                                               ; preds = %21, %21
  %41 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  store %struct.SGFProperty_t* %41, %struct.SGFProperty_t** %6, align 8
  br label %42

42:                                               ; preds = %21, %40, %33, %26
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %45 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %44, i32 0, i32 0
  %46 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %45, align 8
  store %struct.SGFProperty_t* %46, %struct.SGFProperty_t** %5, align 8
  br label %18, !llvm.loop !6

47:                                               ; preds = %18
  %48 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %49 = icmp ne %struct.SGFProperty_t* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  br label %234

51:                                               ; preds = %47
  %52 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @get_moveX(%struct.SGFProperty_t* %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @get_moveY(%struct.SGFProperty_t* %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %59 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %58, i32 0, i32 1
  %60 = load i16, i16* %59, align 8
  %61 = sext i16 %60 to i32
  %62 = icmp eq i32 %61, 8279
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 2
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %51
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 3
  br i1 %70, label %71, label %230

71:                                               ; preds = %68, %51
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @gnugo_genmove(i32* %11, i32* %12, i32 %72)
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* @quiet, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %133, label %84

84:                                               ; preds = %81, %77, %71
  %85 = load i32, i32* @movenum, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %7, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i32 %86, i32 %87)
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %88, i32 %89)
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @gnugo_is_pass(i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %104, label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %96
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [19 x float], [19 x float]* %97, i64 0, i64 %99
  %101 = load float, float* %100, align 4
  %102 = fpext float %101 to double
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), double %102)
  br label %104

104:                                              ; preds = %94, %84
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %10, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0), i32 %105, i32 %106)
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @gnugo_is_pass(i32 %107, i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %131, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %113
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [19 x float], [19 x float]* %114, i64 0, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fpext float %118 to double
  %120 = fcmp ogt double %119, 0.000000e+00
  br i1 %120, label %121, label %131

121:                                              ; preds = %111
  %122 = load i32, i32* %9, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %123
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [19 x float], [19 x float]* %124, i64 0, i64 %126
  %128 = load float, float* %127, align 4
  %129 = fpext float %128 to double
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), double %129)
  br label %131

131:                                              ; preds = %121, %111, %104
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %81
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %201

141:                                              ; preds = %137, %133
  %142 = getelementptr inbounds [127 x i8], [127 x i8]* %13, i64 0, i64 0
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 %143, 20
  %145 = add nsw i32 21, %144
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %145, %146
  %148 = call i8* @location_to_string(i32 %147)
  %149 = load i32, i32* %11, align 4
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @gnugo_is_pass(i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  br label %162

154:                                              ; preds = %141
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %156
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [19 x float], [19 x float]* %157, i64 0, i64 %159
  %161 = load float, float* %160, align 4
  br label %162

162:                                              ; preds = %154, %153
  %163 = phi float [ 0.000000e+00, %153 ], [ %161, %154 ]
  %164 = fpext float %163 to double
  %165 = load i32, i32* %9, align 4
  %166 = mul nsw i32 %165, 20
  %167 = add nsw i32 21, %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %167, %168
  %170 = call i8* @location_to_string(i32 %169)
  %171 = load i32, i32* %9, align 4
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @gnugo_is_pass(i32 %171, i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %162
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %177
  %179 = load i32, i32* %10, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [19 x float], [19 x float]* %178, i64 0, i64 %180
  %182 = load float, float* %181, align 4
  %183 = fpext float %182 to double
  %184 = fcmp olt double %183, 0.000000e+00
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  br label %194

186:                                              ; preds = %175, %162
  %187 = load i32, i32* %9, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %188
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [19 x float], [19 x float]* %189, i64 0, i64 %191
  %193 = load float, float* %192, align 4
  br label %194

194:                                              ; preds = %186, %185
  %195 = phi float [ 0.000000e+00, %185 ], [ %193, %186 ]
  %196 = fpext float %195 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %142, i64 127, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.22, i64 0, i64 0), i8* %148, double %164, i8* %170, double %196)
  %197 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t* %197, i32 %198, i32 %199)
  br label %225

201:                                              ; preds = %137
  %202 = getelementptr inbounds [127 x i8], [127 x i8]* %13, i64 0, i64 0
  %203 = load i32, i32* %11, align 4
  %204 = mul nsw i32 %203, 20
  %205 = add nsw i32 21, %204
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %205, %206
  %208 = call i8* @location_to_string(i32 %207)
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 @gnugo_is_pass(i32 %209, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %201
  br label %222

214:                                              ; preds = %201
  %215 = load i32, i32* %11, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [19 x [19 x float]], [19 x [19 x float]]* @potential_moves, i64 0, i64 %216
  %218 = load i32, i32* %12, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [19 x float], [19 x float]* %217, i64 0, i64 %219
  %221 = load float, float* %220, align 4
  br label %222

222:                                              ; preds = %214, %213
  %223 = phi float [ 0.000000e+00, %213 ], [ %221, %214 ]
  %224 = fpext float %223 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %202, i64 127, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8* %208, double %224)
  br label %225

225:                                              ; preds = %222, %194
  %226 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %227 = getelementptr inbounds [127 x i8], [127 x i8]* %13, i64 0, i64 0
  %228 = call %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t* %226, i8* %227)
  %229 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %229, i32 0)
  br label %230

230:                                              ; preds = %225, %68
  %231 = load i32, i32* %9, align 4
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %7, align 4
  call void @gnugo_play_move(i32 %231, i32 %232, i32 %233)
  br label %234

234:                                              ; preds = %230, %50
  ret void
}

declare dso_local void @sgffile_output(%struct.SGFTree_t*) #2

declare dso_local i32 @gnugo_get_boardsize() #2

declare dso_local void @gnugo_add_stone(i32, i32, i32) #2

declare dso_local i32 @get_moveX(%struct.SGFProperty_t*, i32) #2

declare dso_local i32 @get_moveY(%struct.SGFProperty_t*, i32) #2

declare dso_local i32 @gnugo_genmove(i32*, i32*, i32) #2

declare dso_local void @mprintf(i8*, ...) #2

declare dso_local i32 @gnugo_is_pass(i32, i32) #2

declare dso_local void @gg_snprintf(i8*, i64, i8*, ...) #2

declare dso_local i8* @location_to_string(i32) #2

declare dso_local %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t*, i32, i32) #2

declare dso_local %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t*, i8*) #2

declare dso_local void @sgffile_add_debuginfo(%struct.SGFNode_t*, i32) #2

declare dso_local void @gnugo_play_move(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
