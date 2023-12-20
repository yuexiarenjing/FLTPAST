; ModuleID = 'sgf_utils.c'
source_filename = "sgf_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }

@.str = private unnamed_addr constant [4 x i8] c"P: \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"None\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%c%c \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"(%d) \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_moveX(%struct.SGFProperty_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SGFProperty_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SGFProperty_t* %0, %struct.SGFProperty_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @strlen(i8* %9) #3
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %15 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @toupper(i32 %19) #3
  %21 = sub nsw i32 %20, 65
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %25, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_moveY(%struct.SGFProperty_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SGFProperty_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SGFProperty_t* %0, %struct.SGFProperty_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 2
  %9 = load i8*, i8** %8, align 8
  %10 = call i64 @strlen(i8* %9) #3
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %15 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @toupper(i32 %19) #3
  %21 = sub nsw i32 %20, 65
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %25, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_moveXY(%struct.SGFProperty_t* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.SGFProperty_t*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.SGFProperty_t* %0, %struct.SGFProperty_t** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @get_moveX(%struct.SGFProperty_t* %10, i32 %11)
  %13 = load i32*, i32** %7, align 8
  store i32 %12, i32* %13, align 4
  %14 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @get_moveY(%struct.SGFProperty_t* %14, i32 %15)
  %17 = load i32*, i32** %8, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %27

26:                                               ; preds = %21, %4
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %25
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_sgf_properties(%struct.SGFNode_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca %struct.SGFProperty_t*, align 8
  %5 = alloca i32, align 4
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %8 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %7, i32 0, i32 0
  %9 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %10 = icmp ne %struct.SGFProperty_t* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %16 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %15, i32 0, i32 0
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %16, align 8
  store %struct.SGFProperty_t* %17, %struct.SGFProperty_t** %4, align 8
  br label %18

18:                                               ; preds = %21, %14
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %20 = icmp ne %struct.SGFProperty_t* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %23 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = sext i16 %24 to i32
  %26 = and i32 %25, 255
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %28 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = sext i16 %29 to i32
  %31 = and i32 %30, 65280
  %32 = ashr i32 %31, 8
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %26, i32 %32)
  %34 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %35 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %34, i32 0, i32 0
  %36 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %35, align 8
  store %struct.SGFProperty_t* %36, %struct.SGFProperty_t** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %18, !llvm.loop !4

39:                                               ; preds = %18
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %40)
  %42 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %43 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %42, i32 0, i32 3
  %44 = load %struct.SGFNode_t*, %struct.SGFNode_t** %43, align 8
  %45 = icmp ne %struct.SGFNode_t* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %39
  %49 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %50 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %49, i32 0, i32 2
  %51 = load %struct.SGFNode_t*, %struct.SGFNode_t** %50, align 8
  %52 = icmp ne %struct.SGFNode_t* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %48
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_sgf_tree(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  %3 = alloca i32, align 4
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* %3, align 4
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %7 = call i32 @show_sgf_properties(%struct.SGFNode_t* %6)
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %9 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 2
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %11 = icmp ne %struct.SGFNode_t* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %14 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %13, i32 0, i32 2
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %14, align 8
  %16 = call i32 @show_sgf_tree(%struct.SGFNode_t* %15)
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %21 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %20, i32 0, i32 3
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %21, align 8
  %23 = icmp ne %struct.SGFNode_t* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %26 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %25, i32 0, i32 3
  %27 = load %struct.SGFNode_t*, %struct.SGFNode_t** %26, align 8
  %28 = call i32 @show_sgf_tree(%struct.SGFNode_t* %27)
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_markup_node(%struct.SGFNode_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %6 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %5, i32 0, i32 0
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %8 = icmp ne %struct.SGFProperty_t* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %12 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 0
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %12, align 8
  store %struct.SGFProperty_t* %13, %struct.SGFProperty_t** %4, align 8
  br label %14

14:                                               ; preds = %24, %10
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %16 = icmp ne %struct.SGFProperty_t* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %19 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = sext i16 %20 to i32
  switch i32 %21, label %23 [
    i32 21059, label %22
    i32 20819, label %22
    i32 21076, label %22
    i32 16717, label %22
    i32 19778, label %22
    i32 20292, label %22
    i32 21577, label %22
    i32 17748, label %22
  ]

22:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17
  store i32 1, i32* %2, align 4
  br label %29

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %26 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %25, i32 0, i32 0
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %26, align 8
  store %struct.SGFProperty_t* %27, %struct.SGFProperty_t** %4, align 8
  br label %14, !llvm.loop !6

28:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_move_node(%struct.SGFNode_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %6 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %5, i32 0, i32 0
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %8 = icmp ne %struct.SGFProperty_t* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %12 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 0
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %12, align 8
  store %struct.SGFProperty_t* %13, %struct.SGFProperty_t** %4, align 8
  br label %14

14:                                               ; preds = %24, %10
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %16 = icmp ne %struct.SGFProperty_t* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %14
  %18 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %19 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = sext i16 %20 to i32
  switch i32 %21, label %23 [
    i32 8258, label %22
    i32 8279, label %22
  ]

22:                                               ; preds = %17, %17
  store i32 1, i32* %2, align 4
  br label %29

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %26 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %25, i32 0, i32 0
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %26, align 8
  store %struct.SGFProperty_t* %27, %struct.SGFProperty_t** %4, align 8
  br label %14, !llvm.loop !7

28:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %22, %9
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_pass_node(%struct.SGFNode_t* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SGFProperty_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %10 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %9, i32 0, i32 0
  %11 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %12 = icmp ne %struct.SGFProperty_t* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %16 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %15, i32 0, i32 0
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %16, align 8
  store %struct.SGFProperty_t* %17, %struct.SGFProperty_t** %6, align 8
  br label %18

18:                                               ; preds = %34, %14
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %20 = icmp ne %struct.SGFProperty_t* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %23 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  %25 = sext i16 %24 to i32
  switch i32 %25, label %33 [
    i32 8258, label %26
    i32 8279, label %26
  ]

26:                                               ; preds = %21, %21
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @get_moveXY(%struct.SGFProperty_t* %27, i32* %7, i32* %8, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %39

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %36 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %35, i32 0, i32 0
  %37 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %36, align 8
  store %struct.SGFProperty_t* %37, %struct.SGFProperty_t** %6, align 8
  br label %18, !llvm.loop !8

38:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %26, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_move(%struct.SGFNode_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %6 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %5, i32 0, i32 0
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %8 = icmp ne %struct.SGFProperty_t* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

10:                                               ; preds = %1
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %12 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 0
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %12, align 8
  store %struct.SGFProperty_t* %13, %struct.SGFProperty_t** %4, align 8
  br label %14

14:                                               ; preds = %25, %10
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %16 = icmp ne %struct.SGFProperty_t* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %19 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = sext i16 %20 to i32
  switch i32 %21, label %24 [
    i32 8258, label %22
    i32 8279, label %23
  ]

22:                                               ; preds = %17
  store i32 2, i32* %2, align 4
  br label %30

23:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %30

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %27 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %26, i32 0, i32 0
  %28 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %27, align 8
  store %struct.SGFProperty_t* %28, %struct.SGFProperty_t** %4, align 8
  br label %14, !llvm.loop !9

29:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %23, %22, %9
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

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
