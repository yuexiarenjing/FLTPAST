; ModuleID = 'sgfdecide.c'
source_filename = "sgfdecide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@board = external dso_local global [421 x i8], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [50 x i8] c"gnugo: --decide-string called on an empty vertex\0A\00", align 1
@outfilename = external dso_local global [128 x i8], align 16
@count_variations = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"%1m can be attacked at %1m (%d variations)\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"%1m can be attacked with ko (good) at %1m (%d variations)\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"%1m can be attacked with ko (bad) at %1m (%d variations)\0A\00", align 1
@debug = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Reading shadow: \0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"%1m can be defended at %1m (%d variations)\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"%1m can be defended with ko (good) at %1m (%d variations)\0A\00", align 1
@.str.7 = private unnamed_addr constant [58 x i8] c"%1m can be defended with ko (bad) at %1m (%d variations)\0A\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"%1m cannot be defended (%d variations)\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"%1m cannot be attacked (%d variations)\0A\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sgfdecide.c\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(apos)\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"ON_BOARD1(bpos)\00", align 1
@.str.13 = private unnamed_addr constant [54 x i8] c"gnugo: --decide-connection called on an empty vertex\0A\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"gnugo: --decide-connection called for strings of different colors\0A\00", align 1
@.str.15 = private unnamed_addr constant [56 x i8] c"%1m and %1m are connected as it stands (%d variations)\0A\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"%1m and %1m can be connected at %1m (%d variations)\0A\00", align 1
@.str.17 = private unnamed_addr constant [68 x i8] c"%1m and %1m can be connected with ko (good) at %1m (%d variations)\0A\00", align 1
@.str.18 = private unnamed_addr constant [67 x i8] c"%1m and %1m can be connected with ko (bad) at %1m (%d variations)\0A\00", align 1
@.str.19 = private unnamed_addr constant [49 x i8] c"%1m and %1m cannot be connected (%d variations)\0A\00", align 1
@.str.20 = private unnamed_addr constant [59 x i8] c"%1m and %1m are disconnected as it stands (%d variations)\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"%1m and %1m can be disconnected at %1m (%d variations)\0A\00", align 1
@.str.22 = private unnamed_addr constant [71 x i8] c"%1m and %1m can be disconnected with ko (good) at %1m (%d variations)\0A\00", align 1
@.str.23 = private unnamed_addr constant [70 x i8] c"%1m and %1m can be disconnected with ko (bad) at %1m (%d variations)\0A\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"%1m and %1m cannot be disconnected (%d variations)\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"gnugo: --decide-dragon called on an empty vertex\0A\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"finished examine_position\0A\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"%1m is dead as it stands\00", align 1
@.str.28 = private unnamed_addr constant [43 x i8] c"%1m can be attacked at %1m (%d variations)\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"%1m can be attacked with ko (good) at %1m (%d variations)\00", align 1
@.str.30 = private unnamed_addr constant [57 x i8] c"%1m can be attacked with ko (bad) at %1m (%d variations)\00", align 1
@.str.31 = private unnamed_addr constant [68 x i8] c"%1m can be attacked with gain (captures %1m) at %1m (%d variations)\00", align 1
@.str.32 = private unnamed_addr constant [39 x i8] c"%1m cannot be attacked (%d variations)\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c" result uncertain\0A\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"%1m is alive as it stands\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"%1m can be defended at %1m (%d variations)\00", align 1
@.str.37 = private unnamed_addr constant [58 x i8] c"%1m can be defended with ko (good) at %1m (%d variations)\00", align 1
@.str.38 = private unnamed_addr constant [57 x i8] c"%1m can be defended with ko (bad) at %1m (%d variations)\00", align 1
@.str.39 = private unnamed_addr constant [65 x i8] c"%1m can be defended with loss (loses %1m) at %1m (%d variations)\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"%1m cannot be defended (%d variations)\00", align 1
@.str.41 = private unnamed_addr constant [55 x i8] c"gnugo: --decide-dragon-data called on an empty vertex\0A\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"Dragon at %1m:\0A\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"gnugo: --decide-semeai called on invalid data\0A\00", align 1
@.str.44 = private unnamed_addr constant [50 x i8] c"After %s at %1m, %1m is %s, %1m is %s (%d nodes)\0A\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@decide_position.snames = internal global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0)], align 16
@.str.47 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@.str.51 = private unnamed_addr constant [16 x i8] c"\0Aanalyzing %1m\0A\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"status=%s, escape=%d\0A\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"%1m is dead as it stands\0A\00", align 1
@.str.54 = private unnamed_addr constant [27 x i8] c"%1m is alive as it stands\0A\00", align 1
@.str.55 = private unnamed_addr constant [35 x i8] c"status of %1m revised to CRITICAL\0A\00", align 1
@.str.56 = private unnamed_addr constant [31 x i8] c"status of %1m revised to DEAD\0A\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"status of %1m revised to ALIVE\0A\00", align 1
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@.str.58 = private unnamed_addr constant [42 x i8] c"The eye at %1m is not of a single color.\0A\00", align 1
@printboard = external dso_local global i32, align 4
@half_eye = external dso_local global [400 x %struct.half_eye_data], align 16
@.str.59 = private unnamed_addr constant [27 x i8] c"Black eyespace at %1m: %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [44 x i8] c"  vital points: %1m (attack) %1m (defense)\0A\00", align 1
@.str.61 = private unnamed_addr constant [27 x i8] c"White eyespace at %1m: %s\0A\00", align 1
@verbose = external dso_local global i32, align 4
@.str.62 = private unnamed_addr constant [46 x i8] c"Combination attack for %C at %1m, defense at \00", align 1
@.str.63 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.64 = private unnamed_addr constant [4 x i8] c"%1m\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"No Combination attack for %C\0A\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"location must not be empty!\0A\00", align 1
@.str.67 = private unnamed_addr constant [34 x i8] c"the dragon at %1m is SURROUNDED!\0A\00", align 1
@.str.68 = private unnamed_addr constant [41 x i8] c"the dragon at %1m is WEAKLY SURROUNDED!\0A\00", align 1
@.str.69 = private unnamed_addr constant [38 x i8] c"the dragon at %1m is not surrounded.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFTree_t, align 8
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %112

17:                                               ; preds = %1
  %18 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @sgffile_begindump(%struct.SGFTree_t* %7)
  br label %21

21:                                               ; preds = %20, %17
  call void @reset_engine()
  store i32 1, i32* @count_variations, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @attack(i32 %22, i32* %3)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %101

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @count_variations, align 4
  %33 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  br label %52

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @count_variations, align 4
  %41 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  br label %51

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @count_variations, align 4
  %49 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %50, %37
  br label %52

52:                                               ; preds = %51, %29
  %53 = load i32, i32* @debug, align 4
  %54 = and i32 %53, 32768
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  call void @draw_reading_shadow()
  br label %58

58:                                               ; preds = %56, %52
  store i32 1, i32* @count_variations, align 4
  %59 = load i32, i32* %2, align 4
  %60 = call i32 @find_defense(i32 %59, i32* %4)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %90

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %2, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @count_variations, align 4
  %70 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %67, i32 %68, i32 %69)
  br label %89

71:                                               ; preds = %63
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load i32, i32* %2, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @count_variations, align 4
  %78 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  br label %88

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32, i32* %2, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @count_variations, align 4
  %86 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %66
  br label %94

90:                                               ; preds = %58
  %91 = load i32, i32* %2, align 4
  %92 = load i32, i32* @count_variations, align 4
  %93 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %89
  %95 = load i32, i32* @debug, align 4
  %96 = and i32 %95, 32768
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  call void @draw_reading_shadow()
  br label %100

100:                                              ; preds = %98, %94
  br label %111

101:                                              ; preds = %21
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @count_variations, align 4
  %104 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %102, i32 %103)
  %105 = load i32, i32* @debug, align 4
  %106 = and i32 %105, 32768
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  call void @draw_reading_shadow()
  br label %110

110:                                              ; preds = %108, %101
  br label %111

111:                                              ; preds = %110, %100
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  store i32 0, i32* @count_variations, align 4
  br label %112

112:                                              ; preds = %111, %14
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local void @sgffile_begindump(%struct.SGFTree_t*) #1

declare dso_local void @reset_engine() #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local void @draw_reading_shadow() #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local void @sgffile_enddump(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_connection(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFTree_t, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ult i32 %8, 421
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  br label %25

18:                                               ; preds = %10, %2
  %19 = load i32, i32* %3, align 4
  %20 = sdiv i32 %19, 20
  %21 = sub nsw i32 %20, 1
  %22 = load i32, i32* %3, align 4
  %23 = srem i32 %22, 20
  %24 = sub nsw i32 %23, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %21, i32 %24)
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %4, align 4
  %27 = icmp ult i32 %26, 421
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ne i32 %33, 3
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %43

36:                                               ; preds = %28, %25
  %37 = load i32, i32* %4, align 4
  %38 = sdiv i32 %37, 20
  %39 = sub nsw i32 %38, 1
  %40 = load i32, i32* %4, align 4
  %41 = srem i32 %40, 20
  %42 = sub nsw i32 %41, 1
  call void @abortgo(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %39, i32 %42)
  br label %43

43:                                               ; preds = %36, %35
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50, %43
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.13, i64 0, i64 0))
  br label %172

60:                                               ; preds = %50
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp ne i32 %65, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %60
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0))
  br label %172

75:                                               ; preds = %60
  %76 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %77 = icmp ne i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  call void @sgffile_begindump(%struct.SGFTree_t* %7)
  br label %79

79:                                               ; preds = %78, %75
  call void @reset_engine()
  store i32 1, i32* @count_variations, align 4
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @string_connect(i32 %80, i32 %81, i32* %5)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 5
  br i1 %84, label %85, label %100

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @count_variations, align 4
  %92 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.15, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  br label %99

93:                                               ; preds = %85
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @count_variations, align 4
  %98 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0), i32 %94, i32 %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %88
  br label %125

100:                                              ; preds = %79
  %101 = load i32, i32* %6, align 4
  %102 = icmp eq i32 %101, 4
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @count_variations, align 4
  %108 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.17, i64 0, i64 0), i32 %104, i32 %105, i32 %106, i32 %107)
  br label %124

109:                                              ; preds = %100
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @count_variations, align 4
  %117 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.18, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %116)
  br label %123

118:                                              ; preds = %109
  %119 = load i32, i32* %3, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @count_variations, align 4
  %122 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.19, i64 0, i64 0), i32 %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %112
  br label %124

124:                                              ; preds = %123, %103
  br label %125

125:                                              ; preds = %124, %99
  store i32 1, i32* @count_variations, align 4
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @disconnect(i32 %126, i32 %127, i32* %5)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp eq i32 %129, 5
  br i1 %130, label %131, label %146

131:                                              ; preds = %125
  %132 = load i32, i32* %5, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @count_variations, align 4
  %138 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.20, i64 0, i64 0), i32 %135, i32 %136, i32 %137)
  br label %145

139:                                              ; preds = %131
  %140 = load i32, i32* %3, align 4
  %141 = load i32, i32* %4, align 4
  %142 = load i32, i32* %5, align 4
  %143 = load i32, i32* @count_variations, align 4
  %144 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i32 %140, i32 %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %139, %134
  br label %171

146:                                              ; preds = %125
  %147 = load i32, i32* %6, align 4
  %148 = icmp eq i32 %147, 4
  br i1 %148, label %149, label %155

149:                                              ; preds = %146
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* @count_variations, align 4
  %154 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.22, i64 0, i64 0), i32 %150, i32 %151, i32 %152, i32 %153)
  br label %170

155:                                              ; preds = %146
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* %3, align 4
  %160 = load i32, i32* %4, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @count_variations, align 4
  %163 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.23, i64 0, i64 0), i32 %159, i32 %160, i32 %161, i32 %162)
  br label %169

164:                                              ; preds = %155
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @count_variations, align 4
  %168 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i64 0, i64 0), i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %164, %158
  br label %170

170:                                              ; preds = %169, %149
  br label %171

171:                                              ; preds = %170, %145
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  store i32 0, i32* @count_variations, align 4
  br label %172

172:                                              ; preds = %171, %72, %57
  ret void
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @string_connect(i32, i32, i32*) #1

declare dso_local i32 @disconnect(i32, i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_owl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.SGFTree_t, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0))
  br label %149

18:                                               ; preds = %1
  call void @reset_engine()
  %19 = load i32, i32* %2, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  call void @silent_examine_position(i32 %23, i32 3)
  %24 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  call void @reading_cache_clear()
  %25 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  call void @sgffile_begindump(%struct.SGFTree_t* %6)
  br label %28

28:                                               ; preds = %27, %18
  store i32 1, i32* @count_variations, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @owl_attack(i32 %29, i32* %3, i32* %7, i32* %8)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 5
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %2, align 4
  %41 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i64 0, i64 0), i32 %40)
  br label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @count_variations, align 4
  %46 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.28, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %39
  br label %76

48:                                               ; preds = %33
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @count_variations, align 4
  %55 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.29, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  br label %75

56:                                               ; preds = %48
  %57 = load i32, i32* %4, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %2, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @count_variations, align 4
  %63 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.30, i64 0, i64 0), i32 %60, i32 %61, i32 %62)
  br label %74

64:                                               ; preds = %56
  %65 = load i32, i32* %4, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @count_variations, align 4
  %72 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i64 0, i64 0), i32 %68, i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %64
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %47
  br label %81

77:                                               ; preds = %28
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @count_variations, align 4
  %80 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %76
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %88

86:                                               ; preds = %81
  %87 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %84
  call void @reading_cache_clear()
  store i32 1, i32* @count_variations, align 4
  %89 = load i32, i32* %2, align 4
  %90 = call i32 @owl_defend(i32 %89, i32* %3, i32* %7, i32* %8)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %137

93:                                               ; preds = %88
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 5
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* %2, align 4
  %101 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i64 0, i64 0), i32 %100)
  br label %107

102:                                              ; preds = %96
  %103 = load i32, i32* %2, align 4
  %104 = load i32, i32* %3, align 4
  %105 = load i32, i32* @count_variations, align 4
  %106 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.36, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %99
  br label %136

108:                                              ; preds = %93
  %109 = load i32, i32* %5, align 4
  %110 = icmp eq i32 %109, 4
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @count_variations, align 4
  %115 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.37, i64 0, i64 0), i32 %112, i32 %113, i32 %114)
  br label %135

116:                                              ; preds = %108
  %117 = load i32, i32* %5, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* %2, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* @count_variations, align 4
  %123 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.38, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  br label %134

124:                                              ; preds = %116
  %125 = load i32, i32* %5, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load i32, i32* %2, align 4
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* %3, align 4
  %131 = load i32, i32* @count_variations, align 4
  %132 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.39, i64 0, i64 0), i32 %128, i32 %129, i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %127, %124
  br label %134

134:                                              ; preds = %133, %119
  br label %135

135:                                              ; preds = %134, %111
  br label %136

136:                                              ; preds = %135, %107
  br label %141

137:                                              ; preds = %88
  %138 = load i32, i32* %2, align 4
  %139 = load i32, i32* @count_variations, align 4
  %140 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.40, i64 0, i64 0), i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %136
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %148

146:                                              ; preds = %141
  %147 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i64 0, i64 0))
  br label %148

148:                                              ; preds = %146, %144
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  store i32 0, i32* @count_variations, align 4
  br label %149

149:                                              ; preds = %148, %15
  ret void
}

declare dso_local void @silent_examine_position(i32, i32) #1

declare dso_local void @reading_cache_clear() #1

declare dso_local i32 @owl_attack(i32, i32*, i32*, i32*) #1

declare dso_local i32 @owl_defend(i32, i32*, i32*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_dragon_data(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.41, i64 0, i64 0))
  br label %22

12:                                               ; preds = %1
  call void @reset_engine()
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  call void @silent_examine_position(i32 %17, i32 7)
  %18 = load i32, i32* %2, align 4
  %19 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.42, i64 0, i64 0), i32 %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i32, i32* %2, align 4
  call void @report_dragon(%struct._IO_FILE* %20, i32 %21)
  br label %22

22:                                               ; preds = %12, %9
  ret void
}

declare dso_local void @report_dragon(%struct._IO_FILE*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_semeai(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFTree_t, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 3, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17, %2
  %27 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i64 0, i64 0))
  br label %69

28:                                               ; preds = %17
  call void @reset_engine()
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  call void @silent_examine_position(i32 %33, i32 3)
  %34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  store i32 1, i32* @count_variations, align 4
  call void @reading_cache_clear()
  %35 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  call void @sgffile_begindump(%struct.SGFTree_t* %5)
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  call void @owl_analyze_semeai(i32 %39, i32 %40, i32* %6, i32* %7, i32* %8, i32 1)
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @safety_to_string(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @safety_to_string(i32 %50)
  %52 = load i32, i32* @count_variations, align 4
  %53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i64 0, i64 0), i8* %44, i32 %45, i32 %46, i8* %48, i32 %49, i8* %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  call void @owl_analyze_semeai(i32 %54, i32 %55, i32* %7, i32* %6, i32* %8, i32 1)
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 2
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @safety_to_string(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i8* @safety_to_string(i32 %65)
  %67 = load i32, i32* @count_variations, align 4
  %68 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i64 0, i64 0), i8* %59, i32 %60, i32 %61, i8* %63, i32 %64, i8* %66, i32 %67)
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  store i32 0, i32* @count_variations, align 4
  br label %69

69:                                               ; preds = %38, %26
  ret void
}

declare dso_local void @owl_analyze_semeai(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i8* @safety_to_string(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_tactical_semeai(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFTree_t, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 3, %23
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17, %2
  %27 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.43, i64 0, i64 0))
  br label %69

28:                                               ; preds = %17
  call void @reset_engine()
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  call void @silent_examine_position(i32 %33, i32 3)
  %34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0))
  store i32 1, i32* @count_variations, align 4
  call void @reading_cache_clear()
  %35 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  call void @sgffile_begindump(%struct.SGFTree_t* %5)
  br label %38

38:                                               ; preds = %37, %28
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  call void @owl_analyze_semeai(i32 %39, i32 %40, i32* %6, i32* %7, i32* %8, i32 0)
  %41 = load i32, i32* %9, align 4
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i8* @safety_to_string(i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @safety_to_string(i32 %50)
  %52 = load i32, i32* @count_variations, align 4
  %53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i64 0, i64 0), i8* %44, i32 %45, i32 %46, i8* %48, i32 %49, i8* %51, i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %3, align 4
  call void @owl_analyze_semeai(i32 %54, i32 %55, i32* %7, i32* %6, i32* %8, i32 0)
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 2
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i64 0, i64 0)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @safety_to_string(i32 %62)
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i8* @safety_to_string(i32 %65)
  %67 = load i32, i32* @count_variations, align 4
  %68 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.44, i64 0, i64 0), i8* %59, i32 %60, i32 %61, i8* %63, i32 %64, i8* %66, i32 %67)
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  store i32 0, i32* @count_variations, align 4
  br label %69

69:                                               ; preds = %38, %26
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_position(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.SGFTree_t, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  call void @reset_engine()
  %9 = load i32, i32* %2, align 4
  call void @silent_examine_position(i32 %9, i32 3)
  call void @reading_cache_clear()
  %10 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  call void @sgffile_begindump(%struct.SGFTree_t* %8)
  br label %13

13:                                               ; preds = %12, %1
  store i32 1, i32* @count_variations, align 4
  store i32 21, i32* %3, align 4
  br label %14

14:                                               ; preds = %196, %13
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 400
  br i1 %16, label %17, label %199

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 3
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %51, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %32
  %40 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %42
  %44 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %40, i64 %46
  %48 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = icmp sge i32 %49, 6
  br i1 %50, label %51, label %52

51:                                               ; preds = %39, %32, %24, %17
  br label %196

52:                                               ; preds = %39
  %53 = load i32, i32* %3, align 4
  %54 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x i8*], [4 x i8*]* @decide_position.snames, i64 0, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %63, i64 %69
  %71 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0), i8* %62, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @owl_attack(i32 %74, i32* %4, i32* null, i32* %7)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %175

78:                                               ; preds = %52
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load i32, i32* %4, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i64 0, i64 0), i32 %85)
  br label %92

87:                                               ; preds = %81
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @count_variations, align 4
  %91 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %84
  br label %121

93:                                               ; preds = %78
  %94 = load i32, i32* %5, align 4
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @count_variations, align 4
  %100 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  br label %120

101:                                              ; preds = %93
  %102 = load i32, i32* %5, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load i32, i32* %3, align 4
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @count_variations, align 4
  %108 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %105, i32 %106, i32 %107)
  br label %119

109:                                              ; preds = %101
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @count_variations, align 4
  %117 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.31, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %109
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %96
  br label %121

121:                                              ; preds = %120, %92
  store i32 1, i32* @count_variations, align 4
  %122 = load i32, i32* %3, align 4
  %123 = call i32 @owl_defend(i32 %122, i32* %4, i32* null, i32* %7)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %170

126:                                              ; preds = %121
  %127 = load i32, i32* %6, align 4
  %128 = icmp eq i32 %127, 5
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load i32, i32* %4, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %3, align 4
  %134 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0), i32 %133)
  br label %140

135:                                              ; preds = %129
  %136 = load i32, i32* %3, align 4
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @count_variations, align 4
  %139 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %132
  br label %169

141:                                              ; preds = %126
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 4
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @count_variations, align 4
  %148 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %145, i32 %146, i32 %147)
  br label %168

149:                                              ; preds = %141
  %150 = load i32, i32* %6, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* %3, align 4
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @count_variations, align 4
  %156 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.7, i64 0, i64 0), i32 %153, i32 %154, i32 %155)
  br label %167

157:                                              ; preds = %149
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 2
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* %3, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @count_variations, align 4
  %165 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.39, i64 0, i64 0), i32 %161, i32 %162, i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %160, %157
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %144
  br label %169

169:                                              ; preds = %168, %140
  br label %174

170:                                              ; preds = %121
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* @count_variations, align 4
  %173 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %170, %169
  br label %179

175:                                              ; preds = %52
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @count_variations, align 4
  %178 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %175, %174
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* %3, align 4
  %187 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.55, i64 0, i64 0), i32 %186)
  br label %191

188:                                              ; preds = %182
  %189 = load i32, i32* %3, align 4
  %190 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.56, i64 0, i64 0), i32 %189)
  br label %191

191:                                              ; preds = %188, %185
  br label %195

192:                                              ; preds = %179
  %193 = load i32, i32* %3, align 4
  %194 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %192, %191
  br label %196

196:                                              ; preds = %195, %51
  %197 = load i32, i32* %3, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %3, align 4
  br label %14, !llvm.loop !4

199:                                              ; preds = %14
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  store i32 0, i32* @count_variations, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_eye(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.eyevalue, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.SGFTree_t, align 8
  store i32 %0, i32* %2, align 4
  call void @reset_engine()
  call void @silent_examine_position(i32 2, i32 3)
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 5
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %28

16:                                               ; preds = %1
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %2, align 4
  %26 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.58, i64 0, i64 0), i32 %25)
  br label %85

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %15
  %29 = load i32, i32* @printboard, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  call void @showboard(i32 0)
  br label %32

32:                                               ; preds = %31, %28
  %33 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  call void @sgffile_begindump(%struct.SGFTree_t* %8)
  br label %36

36:                                               ; preds = %35, %32
  store i32 1, i32* @count_variations, align 4
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %60

43:                                               ; preds = %36
  %44 = load i32, i32* %2, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  call void @compute_eyes(i32 %49, %struct.eyevalue* %4, i32* %5, i32* %6, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 0, i32 0)
  %50 = load i32, i32* %7, align 4
  %51 = call i8* @eyevalue_to_string(%struct.eyevalue* %4)
  %52 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i64 0, i64 0), i32 %50, i8* %51)
  %53 = call i32 @eye_move_urgency(%struct.eyevalue* %4)
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %43
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %43
  br label %60

60:                                               ; preds = %59, %36
  %61 = load i32, i32* %2, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %67, label %84

67:                                               ; preds = %60
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  call void @compute_eyes(i32 %73, %struct.eyevalue* %4, i32* %5, i32* %6, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 0, i32 0)
  %74 = load i32, i32* %7, align 4
  %75 = call i8* @eyevalue_to_string(%struct.eyevalue* %4)
  %76 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.61, i64 0, i64 0), i32 %74, i8* %75)
  %77 = call i32 @eye_move_urgency(%struct.eyevalue* %4)
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %67
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.60, i64 0, i64 0), i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %67
  br label %84

84:                                               ; preds = %83, %60
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  store i32 0, i32* @count_variations, align 4
  br label %85

85:                                               ; preds = %84, %24
  ret void
}

declare dso_local void @showboard(i32) #1

declare dso_local void @compute_eyes(i32, %struct.eyevalue*, i32*, i32*, %struct.eye_data*, %struct.half_eye_data*, i32, i32) #1

declare dso_local i8* @eyevalue_to_string(%struct.eyevalue*) #1

declare dso_local i32 @eye_move_urgency(%struct.eyevalue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_combination(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [400 x i8], align 16
  %5 = alloca %struct.SGFTree_t, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  call void @reset_engine()
  %8 = load i32, i32* %2, align 4
  call void @silent_examine_position(i32 %8, i32 99)
  %9 = load i8, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), align 16
  %10 = icmp ne i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @sgffile_begindump(%struct.SGFTree_t* %5)
  br label %12

12:                                               ; preds = %11, %1
  store i32 1, i32* @count_variations, align 4
  %13 = load i32, i32* %2, align 4
  %14 = getelementptr inbounds [400 x i8], [400 x i8]* %4, i64 0, i64 0
  %15 = load i32, i32* @verbose, align 4
  %16 = call i32 @atari_atari(i32 %13, i32* %3, i8* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %54

18:                                               ; preds = %12
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.62, i64 0, i64 0), i32 %19, i32 %20)
  store i32 21, i32* %7, align 4
  br label %22

22:                                               ; preds = %49, %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 400
  br i1 %24, label %25, label %52

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %32, label %48

32:                                               ; preds = %25
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x i8], [400 x i8]* %4, i64 0, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %45

43:                                               ; preds = %39
  %44 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.63, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %42
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %32, %25
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %22, !llvm.loop !6

52:                                               ; preds = %22
  %53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0))
  br label %57

54:                                               ; preds = %12
  %55 = load i32, i32* %2, align 4
  %56 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.65, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %54, %52
  call void @sgffile_enddump(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0))
  store i32 0, i32* @count_variations, align 4
  ret void
}

declare dso_local i32 @atari_atari(i32, i32*, i8*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @decide_surrounded(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.66, i64 0, i64 0))
  br label %36

13:                                               ; preds = %1
  call void @reset_engine()
  %14 = load i32, i32* %2, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  call void @silent_examine_position(i32 %18, i32 99)
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @compute_surroundings(i32 %19, i32 0, i32 1, i32* null)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %2, align 4
  %25 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.67, i64 0, i64 0), i32 %24)
  br label %36

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %2, align 4
  %31 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.68, i64 0, i64 0), i32 %30)
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.69, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %10, %35, %23
  ret void
}

declare dso_local i32 @compute_surroundings(i32, i32, i32, i32*) #1

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
