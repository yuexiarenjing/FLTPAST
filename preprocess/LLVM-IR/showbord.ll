; ModuleID = 'showbord.c'
source_filename = "showbord.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"\0A%2d\00", align 1
@board_size = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" %-2d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@dragon_num = internal global [400 x i8] zeroinitializer, align 16
@next_white = internal global i32 0, align 4
@next_black = internal global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"     WHITE has captured %d stones\00", align 1
@black_captured = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"     BLACK has captured %d stones\00", align 1
@white_captured = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"    green=alive\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"    cyan=dead\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"    red=critical\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"    yellow=unknown\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"    magenta=unchecked\00", align 1
@board = external dso_local global [421 x i8], align 16
@.str.12 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"showbord.c\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"ON_BOARD2((i), (j))\00", align 1
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@domain_colors = internal constant [4 x i32] [i32 5, i32 1, i32 2, i32 3], align 16
@colors = internal constant [3 x [5 x i32]] [[5 x i32] zeroinitializer, [5 x i32] [i32 6, i32 2, i32 1, i32 3, i32 5], [5 x i32] [i32 6, i32 2, i32 1, i32 3, i32 5]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_draw_board() #0 {
  call void @gg_init_color()
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @draw_letter_coordinates(%struct._IO_FILE* %1)
  ret void
}

declare dso_local void @gg_init_color() #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_letter_coordinates(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  store i32 65, i32* %4, align 4
  br label %7

7:                                                ; preds = %21, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @board_size, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 73
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %7, !llvm.loop !4

26:                                               ; preds = %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_color_char(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load i32, i32* @board_size, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %13, %14
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @is_hoshi_point(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 43, i32* %7, align 4
  br label %27

26:                                               ; preds = %20
  store i32 46, i32* %7, align 4
  br label %27

27:                                               ; preds = %26, %25
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %38

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  call void @write_color_char(i32 %36, i32 %37)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @board_size, align 4
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i32, i32* @board_size, align 4
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 %45, %46
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_hoshi_point(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @board_size, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @board_size, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %126

14:                                               ; preds = %10
  %15 = load i32, i32* @board_size, align 4
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %126

24:                                               ; preds = %20, %17
  store i32 0, i32* %3, align 4
  br label %126

25:                                               ; preds = %14
  %26 = load i32, i32* @board_size, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %56

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %37, label %38

37:                                               ; preds = %34, %31
  store i32 1, i32* %3, align 4
  br label %126

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %126

45:                                               ; preds = %41, %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %55

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  store i32 1, i32* %3, align 4
  br label %126

55:                                               ; preds = %51, %45
  store i32 0, i32* %3, align 4
  br label %126

56:                                               ; preds = %25
  %57 = load i32, i32* @board_size, align 4
  %58 = icmp sle i32 %57, 11
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 2, i32* %6, align 4
  br label %61

60:                                               ; preds = %56
  store i32 3, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* @board_size, align 4
  %63 = sdiv i32 %62, 2
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* @board_size, align 4
  %69 = sub nsw i32 %68, 1
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i32, i32* @board_size, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %5, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 1, i32* %3, align 4
  br label %126

90:                                               ; preds = %85, %81
  %91 = load i32, i32* @board_size, align 4
  %92 = srem i32 %91, 2
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %126

95:                                               ; preds = %90
  %96 = load i32, i32* @board_size, align 4
  %97 = icmp slt i32 %96, 12
  br i1 %97, label %98, label %108

98:                                               ; preds = %95
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 1, i32* %3, align 4
  br label %126

107:                                              ; preds = %102, %98
  store i32 0, i32* %3, align 4
  br label %126

108:                                              ; preds = %95
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %116
  store i32 1, i32* %3, align 4
  br label %126

125:                                              ; preds = %120, %112
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %124, %107, %106, %94, %89, %55, %54, %44, %37, %24, %23, %13
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local void @write_color_char(i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_char(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  call void @draw_color_char(i32 %7, i32 %8, i32 %9, i32 0)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_draw_board() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  call void @draw_letter_coordinates(%struct._IO_FILE* %3)
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @showboard(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  call void @gg_init_color()
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([400 x i8], [400 x i8]* @dragon_num, i64 0, i64 0), i8 0, i64 400, i1 false)
  store i32 233, i32* @next_white, align 4
  store i32 26, i32* @next_black, align 4
  call void @start_draw_board()
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %114, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @board_size, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %117

10:                                               ; preds = %6
  %11 = load i32, i32* @board_size, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %31, %10
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @board_size, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @is_hoshi_point(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 43, i32 46
  %30 = load i32, i32* %2, align 4
  call void @showchar(i32 %22, i32 %23, i32 %29, i32 %30)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %17, !llvm.loop !6

34:                                               ; preds = %17
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %34
  %41 = load i32, i32* @board_size, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @board_size, align 4
  %46 = sub nsw i32 %45, 2
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @board_size, align 4
  %50 = icmp sge i32 %49, 10
  br i1 %50, label %51, label %58

51:                                               ; preds = %48
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %58

54:                                               ; preds = %51, %43
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %56 = load i32, i32* @black_captured, align 4
  %57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %55, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %54, %51, %48, %34
  %59 = load i32, i32* %2, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32, i32* @board_size, align 4
  %63 = icmp slt i32 %62, 10
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* @board_size, align 4
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %64, %61
  %70 = load i32, i32* @board_size, align 4
  %71 = icmp sge i32 %70, 10
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = icmp eq i32 %73, 9
  br i1 %74, label %75, label %79

75:                                               ; preds = %72, %64
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = load i32, i32* @white_captured, align 4
  %78 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %72, %69, %58
  %80 = load i32, i32* %2, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %113

82:                                               ; preds = %79
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @board_size, align 4
  %85 = sub nsw i32 %84, 5
  %86 = icmp eq i32 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  call void @write_color_string(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %88

88:                                               ; preds = %87, %82
  %89 = load i32, i32* %3, align 4
  %90 = load i32, i32* @board_size, align 4
  %91 = sub nsw i32 %90, 4
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  call void @write_color_string(i32 6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %93, %88
  %95 = load i32, i32* %3, align 4
  %96 = load i32, i32* @board_size, align 4
  %97 = sub nsw i32 %96, 3
  %98 = icmp eq i32 %95, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  call void @write_color_string(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  br label %100

100:                                              ; preds = %99, %94
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* @board_size, align 4
  %103 = sub nsw i32 %102, 2
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  call void @write_color_string(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %106

106:                                              ; preds = %105, %100
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* @board_size, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp eq i32 %107, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  call void @write_color_string(i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %112

112:                                              ; preds = %111, %106
  br label %113

113:                                              ; preds = %112, %79
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %6, !llvm.loop !7

117:                                              ; preds = %6
  call void @end_draw_board()
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showchar(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dragon_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @board_size, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @board_size, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %25

22:                                               ; preds = %17, %4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 259, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0), i32 %23, i32 %24)
  br label %25

25:                                               ; preds = %22, %21
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 20
  %28 = add nsw i32 21, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = mul nsw i32 %35, 20
  %37 = add nsw i32 21, %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %40
  store %struct.dragon_data* %41, %struct.dragon_data** %9, align 8
  %42 = load i32, i32* %10, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %125

44:                                               ; preds = %25
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %124

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = mul nsw i32 %52, 20
  %54 = add nsw i32 21, %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %91

62:                                               ; preds = %51
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 %63, 20
  %65 = add nsw i32 21, %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 4
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i64 0, i64 3), align 4
  store i32 %74, i32* %11, align 4
  br label %77

75:                                               ; preds = %62
  %76 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i64 0, i64 1), align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 %78, 20
  %80 = add nsw i32 21, %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %84, i32 0, i32 7
  %86 = load i8, i8* %85, align 4
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i8 33, i8* %12, align 1
  br label %90

89:                                               ; preds = %77
  store i8 120, i8* %12, align 1
  br label %90

90:                                               ; preds = %89, %88
  br label %120

91:                                               ; preds = %51
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 %92, 20
  %94 = add nsw i32 21, %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 4
  br i1 %101, label %102, label %117

102:                                              ; preds = %91
  %103 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i64 0, i64 2), align 8
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %5, align 4
  %105 = mul nsw i32 %104, 20
  %106 = add nsw i32 21, %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %110, i32 0, i32 7
  %112 = load i8, i8* %111, align 4
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %102
  store i8 33, i8* %12, align 1
  br label %116

115:                                              ; preds = %102
  store i8 111, i8* %12, align 1
  br label %116

116:                                              ; preds = %115, %114
  br label %119

117:                                              ; preds = %91
  %118 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i64 0, i64 0), align 16
  store i32 %118, i32* %11, align 4
  store i8 46, i8* %12, align 1
  br label %119

119:                                              ; preds = %117, %116
  br label %120

120:                                              ; preds = %119, %90
  %121 = load i32, i32* %11, align 4
  %122 = load i8, i8* %12, align 1
  %123 = sext i8 %122 to i32
  call void @write_color_char(i32 %121, i32 %123)
  br label %124

124:                                              ; preds = %120, %47
  br label %300

125:                                              ; preds = %25
  %126 = load i32, i32* %8, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %142, label %128

128:                                              ; preds = %125
  %129 = load %struct.dragon_data*, %struct.dragon_data** %9, align 8
  %130 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = icmp ult i32 %131, 421
  br i1 %132, label %133, label %142

133:                                              ; preds = %128
  %134 = load %struct.dragon_data*, %struct.dragon_data** %9, align 8
  %135 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp ne i32 %140, 3
  br i1 %141, label %157, label %142

142:                                              ; preds = %133, %128, %125
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %144 = load i32, i32* %5, align 4
  %145 = mul nsw i32 %144, 20
  %146 = add nsw i32 21, %145
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 2
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i32 88, i32 79
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  br label %300

157:                                              ; preds = %133
  %158 = load %struct.dragon_data*, %struct.dragon_data** %9, align 8
  %159 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [400 x i8], [400 x i8]* @dragon_num, i64 0, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %199, label %167

167:                                              ; preds = %157
  %168 = load i32, i32* %5, align 4
  %169 = mul nsw i32 %168, 20
  %170 = add nsw i32 21, %169
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %188

178:                                              ; preds = %167
  %179 = load i32, i32* @next_black, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* @next_black, align 4
  %181 = trunc i32 %179 to i8
  %182 = load %struct.dragon_data*, %struct.dragon_data** %9, align 8
  %183 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [400 x i8], [400 x i8]* @dragon_num, i64 0, i64 %185
  store i8 %181, i8* %186, align 1
  %187 = zext i8 %181 to i32
  store i32 %187, i32* %13, align 4
  br label %198

188:                                              ; preds = %167
  %189 = load i32, i32* @next_white, align 4
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* @next_white, align 4
  %191 = trunc i32 %189 to i8
  %192 = load %struct.dragon_data*, %struct.dragon_data** %9, align 8
  %193 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [400 x i8], [400 x i8]* @dragon_num, i64 0, i64 %195
  store i8 %191, i8* %196, align 1
  %197 = zext i8 %191 to i32
  store i32 %197, i32* %13, align 4
  br label %198

198:                                              ; preds = %188, %178
  br label %199

199:                                              ; preds = %198, %157
  %200 = load i32, i32* %13, align 4
  %201 = srem i32 %200, 26
  %202 = load i32, i32* %5, align 4
  %203 = mul nsw i32 %202, 20
  %204 = add nsw i32 21, %203
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %204, %205
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %210, 2
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i32 65, i32 97
  %214 = add nsw i32 %201, %213
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %8, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %235

217:                                              ; preds = %199
  %218 = load i32, i32* %5, align 4
  %219 = mul nsw i32 %218, 20
  %220 = add nsw i32 21, %219
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %220, %221
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i64
  %227 = getelementptr inbounds [3 x [5 x i32]], [3 x [5 x i32]]* @colors, i64 0, i64 %226
  %228 = load %struct.dragon_data*, %struct.dragon_data** %9, align 8
  %229 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [5 x i32], [5 x i32]* %227, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %13, align 4
  call void @write_color_char(i32 %233, i32 %234)
  br label %299

235:                                              ; preds = %199
  %236 = load i32, i32* %8, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %254

238:                                              ; preds = %235
  %239 = load i32, i32* %5, align 4
  %240 = mul nsw i32 %239, 20
  %241 = add nsw i32 21, %240
  %242 = load i32, i32* %6, align 4
  %243 = add nsw i32 %241, %242
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %244
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  %248 = icmp eq i32 %247, 2
  br i1 %248, label %249, label %251

249:                                              ; preds = %238
  %250 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i64 0, i64 1), align 4
  call void @write_color_char(i32 %250, i32 88)
  br label %253

251:                                              ; preds = %238
  %252 = load i32, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @domain_colors, i64 0, i64 2), align 8
  call void @write_color_char(i32 %252, i32 79)
  br label %253

253:                                              ; preds = %251, %249
  br label %298

254:                                              ; preds = %235
  %255 = load i32, i32* %8, align 4
  %256 = icmp eq i32 %255, 3
  br i1 %256, label %257, label %275

257:                                              ; preds = %254
  %258 = load i32, i32* %5, align 4
  %259 = mul nsw i32 %258, 20
  %260 = add nsw i32 21, %259
  %261 = load i32, i32* %6, align 4
  %262 = add nsw i32 %260, %261
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = zext i8 %265 to i64
  %267 = getelementptr inbounds [3 x [5 x i32]], [3 x [5 x i32]]* @colors, i64 0, i64 %266
  %268 = load %struct.dragon_data*, %struct.dragon_data** %9, align 8
  %269 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %268, i32 0, i32 7
  %270 = load i32, i32* %269, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [5 x i32], [5 x i32]* %267, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* %13, align 4
  call void @write_color_char(i32 %273, i32 %274)
  br label %297

275:                                              ; preds = %254
  %276 = load i32, i32* %8, align 4
  %277 = icmp eq i32 %276, 4
  br i1 %277, label %278, label %296

278:                                              ; preds = %275
  %279 = load i32, i32* %5, align 4
  %280 = mul nsw i32 %279, 20
  %281 = add nsw i32 21, %280
  %282 = load i32, i32* %6, align 4
  %283 = add nsw i32 %281, %282
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %284
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i64
  %288 = getelementptr inbounds [3 x [5 x i32]], [3 x [5 x i32]]* @colors, i64 0, i64 %287
  %289 = load %struct.dragon_data*, %struct.dragon_data** %9, align 8
  %290 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %289, i32 0, i32 16
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [5 x i32], [5 x i32]* %288, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %13, align 4
  call void @write_color_char(i32 %294, i32 %295)
  br label %296

296:                                              ; preds = %278, %275
  br label %297

297:                                              ; preds = %296, %257
  br label %298

298:                                              ; preds = %297, %253
  br label %299

299:                                              ; preds = %298, %217
  br label %300

300:                                              ; preds = %142, %299, %124
  ret void
}

declare dso_local void @write_color_string(i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @simple_showboard(%struct._IO_FILE* %0) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @draw_letter_coordinates(%struct._IO_FILE* %5)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %101, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @board_size, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %104

10:                                               ; preds = %6
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %12 = load i32, i32* @board_size, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %12, %13
  %15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %56, %10
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @board_size, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = mul nsw i32 %21, 20
  %23 = add nsw i32 21, %22
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %20
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @is_hoshi_point(i32 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 43, i32 46
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %55

40:                                               ; preds = %20
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = mul nsw i32 %42, 20
  %44 = add nsw i32 21, %43
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 88, i32 79
  %54 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %40, %31
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %16, !llvm.loop !8

59:                                               ; preds = %16
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %61 = load i32, i32* @board_size, align 4
  %62 = load i32, i32* %3, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @board_size, align 4
  %66 = icmp slt i32 %65, 10
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @board_size, align 4
  %70 = sub nsw i32 %69, 2
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %67, %59
  %73 = load i32, i32* @board_size, align 4
  %74 = icmp sge i32 %73, 10
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i32, i32* %3, align 4
  %77 = icmp eq i32 %76, 8
  br i1 %77, label %78, label %82

78:                                               ; preds = %75, %67
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %80 = load i32, i32* @black_captured, align 4
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %78, %75, %72
  %83 = load i32, i32* @board_size, align 4
  %84 = icmp slt i32 %83, 10
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* @board_size, align 4
  %88 = sub nsw i32 %87, 1
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* @board_size, align 4
  %92 = icmp sge i32 %91, 10
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i32, i32* %3, align 4
  %95 = icmp eq i32 %94, 9
  br i1 %95, label %96, label %100

96:                                               ; preds = %93, %85
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %98 = load i32, i32* @white_captured, align 4
  %99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %93, %90
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %3, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %3, align 4
  br label %6, !llvm.loop !9

104:                                              ; preds = %6
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %106 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  call void @draw_letter_coordinates(%struct._IO_FILE* %107)
  ret void
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }

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
