; ModuleID = 'sgftree.c'
source_filename = "sgftree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@.str = private unnamed_addr constant [11 x i8] c"tree->root\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"sgftree.c\00", align 1
@__PRETTY_FUNCTION__.sgftreeNodeCheck = private unnamed_addr constant [37 x i8] c"SGFNode *sgftreeNodeCheck(SGFTree *)\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"tree && tree->root\00", align 1
@__PRETTY_FUNCTION__.sgftreeAddComment = private unnamed_addr constant [48 x i8] c"void sgftreeAddComment(SGFTree *, const char *)\00", align 1
@__PRETTY_FUNCTION__.sgftreeBoardText = private unnamed_addr constant [57 x i8] c"void sgftreeBoardText(SGFTree *, int, int, const char *)\00", align 1
@__PRETTY_FUNCTION__.sgftreeBoardChar = private unnamed_addr constant [49 x i8] c"void sgftreeBoardChar(SGFTree *, int, int, char)\00", align 1
@__PRETTY_FUNCTION__.sgftreeWriteResult = private unnamed_addr constant [47 x i8] c"void sgftreeWriteResult(SGFTree *, float, int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftree_clear(%struct.SGFTree_t* %0) #0 {
  %2 = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %2, align 8
  %3 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %4 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %3, i32 0, i32 0
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %4, align 8
  %5 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %6 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %5, i32 0, i32 1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgftree_readfile(%struct.SGFTree_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %8 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %7, i32 0, i32 0
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.SGFNode_t* @readsgffile(i8* %10)
  %12 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %13 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %12, i32 0, i32 0
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %13, align 8
  %14 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %15 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %14, i32 0, i32 0
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %15, align 8
  %17 = icmp eq %struct.SGFNode_t* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %6, align 8
  %20 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %21 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %20, i32 0, i32 0
  store %struct.SGFNode_t* %19, %struct.SGFNode_t** %21, align 8
  store i32 0, i32* %3, align 4
  br label %26

22:                                               ; preds = %2
  %23 = load %struct.SGFNode_t*, %struct.SGFNode_t** %6, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %23)
  %24 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %25 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %24, i32 0, i32 1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %25, align 8
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.SGFNode_t* @readsgffile(i8*) #1

declare dso_local void @sgfFreeNode(%struct.SGFNode_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgftreeBack(%struct.SGFTree_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %3, align 8
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %5 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %4, i32 0, i32 1
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %7 = icmp ne %struct.SGFNode_t* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %10 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %9, i32 0, i32 1
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  %12 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 1
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %14 = icmp ne %struct.SGFNode_t* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %17 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %16, i32 0, i32 1
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %17, align 8
  %19 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %18, i32 0, i32 1
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %19, align 8
  %21 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %22 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %21, i32 0, i32 1
  store %struct.SGFNode_t* %20, %struct.SGFNode_t** %22, align 8
  br label %24

23:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %33

24:                                               ; preds = %15
  br label %32

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %30, %25
  %27 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %28 = call i32 @sgftreeForward(%struct.SGFTree_t* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %26, !llvm.loop !4

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %24
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgftreeForward(%struct.SGFTree_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.SGFTree_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %3, align 8
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %5 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %4, i32 0, i32 1
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %7 = icmp ne %struct.SGFNode_t* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %10 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %9, i32 0, i32 1
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  %12 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 2
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %14 = icmp ne %struct.SGFNode_t* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %17 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %16, i32 0, i32 1
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %17, align 8
  %19 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %18, i32 0, i32 2
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %19, align 8
  %21 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %22 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %21, i32 0, i32 1
  store %struct.SGFNode_t* %20, %struct.SGFNode_t** %22, align 8
  br label %24

23:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %32

24:                                               ; preds = %15
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %27 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %26, i32 0, i32 0
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** %27, align 8
  %29 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %30 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %29, i32 0, i32 1
  store %struct.SGFNode_t* %28, %struct.SGFNode_t** %30, align 8
  br label %31

31:                                               ; preds = %25, %24
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %0) #0 {
  %2 = alloca %struct.SGFTree_t*, align 8
  %3 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %2, align 8
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %3, align 8
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %5 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %4, i32 0, i32 0
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %7 = icmp ne %struct.SGFNode_t* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 105, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @__PRETTY_FUNCTION__.sgftreeNodeCheck, i64 0, i64 0)) #3
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %13 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %12, i32 0, i32 1
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %13, align 8
  %15 = icmp ne %struct.SGFNode_t* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %18 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %17, i32 0, i32 1
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %18, align 8
  store %struct.SGFNode_t* %19, %struct.SGFNode_t** %3, align 8
  br label %34

20:                                               ; preds = %11
  %21 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %22 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %21, i32 0, i32 0
  %23 = load %struct.SGFNode_t*, %struct.SGFNode_t** %22, align 8
  store %struct.SGFNode_t* %23, %struct.SGFNode_t** %3, align 8
  br label %24

24:                                               ; preds = %29, %20
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %26 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %25, i32 0, i32 2
  %27 = load %struct.SGFNode_t*, %struct.SGFNode_t** %26, align 8
  %28 = icmp ne %struct.SGFNode_t* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %31 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %30, i32 0, i32 2
  %32 = load %struct.SGFNode_t*, %struct.SGFNode_t** %31, align 8
  store %struct.SGFNode_t* %32, %struct.SGFNode_t** %3, align 8
  br label %24, !llvm.loop !6

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %16
  %35 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  ret %struct.SGFNode_t* %35
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeAddStone(%struct.SGFTree_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %11 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %10)
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %9, align 8
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %12, i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeAddPlay(%struct.SGFTree_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %11 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %10)
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %9, align 8
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.SGFNode_t* @sgfAddPlay(%struct.SGFNode_t* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %18 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %17, i32 0, i32 1
  store %struct.SGFNode_t* %16, %struct.SGFNode_t** %18, align 8
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfAddPlay(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeAddPlayLast(%struct.SGFTree_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %11 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %10)
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %9, align 8
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.SGFNode_t* @sgfAddPlayLast(%struct.SGFNode_t* %12, i32 %13, i32 %14, i32 %15)
  %17 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %18 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %17, i32 0, i32 1
  store %struct.SGFNode_t* %16, %struct.SGFNode_t** %18, align 8
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfAddPlayLast(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %0, i32 %1, float %2) #0 {
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store float %2, float* %6, align 4
  %8 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %8, %struct.SGFNode_t** %7, align 8
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  call void @sgfAddPropertyInt(%struct.SGFNode_t* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %11)
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %13 = load float, float* %6, align 4
  call void @sgfAddPropertyFloat(%struct.SGFNode_t* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), float %13)
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %15 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %16 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %15, i32 0, i32 0
  store %struct.SGFNode_t* %14, %struct.SGFNode_t** %16, align 8
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %18 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %19 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %18, i32 0, i32 1
  store %struct.SGFNode_t* %17, %struct.SGFNode_t** %19, align 8
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfNewNode() #1

declare dso_local void @sgfAddPropertyInt(%struct.SGFNode_t*, i8*, i64) #1

declare dso_local void @sgfAddPropertyFloat(%struct.SGFNode_t*, i8*, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeAddComment(%struct.SGFTree_t* %0, i8* %1) #0 {
  %3 = alloca %struct.SGFTree_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %7 = icmp ne %struct.SGFTree_t* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %10 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %9, i32 0, i32 0
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  %12 = icmp ne %struct.SGFNode_t* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %16

14:                                               ; preds = %8, %2
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 177, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.sgftreeAddComment, i64 0, i64 0)) #3
  unreachable

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %13
  %17 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %18 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %17)
  store %struct.SGFNode_t* %18, %struct.SGFNode_t** %5, align 8
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t* %19, i8* %20)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeBoardText(%struct.SGFTree_t* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %11 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %10, i32 0, i32 0
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %11, align 8
  %13 = icmp ne %struct.SGFNode_t* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %17

15:                                               ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 192, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.sgftreeBoardText, i64 0, i64 0)) #3
  unreachable

16:                                               ; No predecessors!
  br label %17

17:                                               ; preds = %16, %14
  %18 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %19 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %18)
  store %struct.SGFNode_t* %19, %struct.SGFNode_t** %9, align 8
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call %struct.SGFNode_t* @sgfBoardText(%struct.SGFNode_t* %20, i32 %21, i32 %22, i8* %23)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfBoardText(%struct.SGFNode_t*, i32, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeBoardChar(%struct.SGFTree_t* %0, i32 %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %10 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %11 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %10, i32 0, i32 0
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %11, align 8
  %13 = icmp ne %struct.SGFNode_t* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %17

15:                                               ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 207, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.sgftreeBoardChar, i64 0, i64 0)) #3
  unreachable

16:                                               ; No predecessors!
  br label %17

17:                                               ; preds = %16, %14
  %18 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %19 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %18)
  store %struct.SGFNode_t* %19, %struct.SGFNode_t** %9, align 8
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i8, i8* %8, align 1
  %24 = call %struct.SGFNode_t* @sgfBoardChar(%struct.SGFNode_t* %20, i32 %21, i32 %22, i8 signext %23)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfBoardChar(%struct.SGFNode_t*, i32, i32, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeBoardNumber(%struct.SGFTree_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %11 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %10)
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %9, align 8
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.SGFNode_t* @sgfBoardNumber(%struct.SGFNode_t* %12, i32 %13, i32 %14, i32 %15)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfBoardNumber(%struct.SGFNode_t*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeTriangle(%struct.SGFTree_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %9 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %8)
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %7, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.SGFNode_t* @sgfTriangle(%struct.SGFNode_t* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfTriangle(%struct.SGFNode_t*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeCircle(%struct.SGFTree_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %9 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %8)
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %7, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeSquare(%struct.SGFTree_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %9 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %8)
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %7, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.SGFNode_t* @sgfSquare(%struct.SGFNode_t* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfSquare(%struct.SGFNode_t*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeMark(%struct.SGFTree_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %9 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %8)
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %7, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.SGFNode_t* @sgfMark(%struct.SGFNode_t* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfMark(%struct.SGFNode_t*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeStartVariant(%struct.SGFTree_t* %0) #0 {
  %2 = alloca %struct.SGFTree_t*, align 8
  %3 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %2, align 8
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %5 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %4)
  store %struct.SGFNode_t* %5, %struct.SGFNode_t** %3, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %7 = call %struct.SGFNode_t* @sgfStartVariant(%struct.SGFNode_t* %6)
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %9 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %8, i32 0, i32 1
  store %struct.SGFNode_t* %7, %struct.SGFNode_t** %9, align 8
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfStartVariant(%struct.SGFNode_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeStartVariantFirst(%struct.SGFTree_t* %0) #0 {
  %2 = alloca %struct.SGFTree_t*, align 8
  %3 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %2, align 8
  %4 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %5 = call %struct.SGFNode_t* @sgftreeNodeCheck(%struct.SGFTree_t* %4)
  store %struct.SGFNode_t* %5, %struct.SGFNode_t** %3, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %7 = call %struct.SGFNode_t* @sgfStartVariantFirst(%struct.SGFNode_t* %6)
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** %2, align 8
  %9 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %8, i32 0, i32 1
  store %struct.SGFNode_t* %7, %struct.SGFNode_t** %9, align 8
  ret void
}

declare dso_local %struct.SGFNode_t* @sgfStartVariantFirst(%struct.SGFNode_t*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeWriteResult(%struct.SGFTree_t* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %8 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %7, i32 0, i32 0
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  %10 = icmp ne %struct.SGFNode_t* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %14

12:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 305, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.sgftreeWriteResult, i64 0, i64 0)) #3
  unreachable

13:                                               ; No predecessors!
  br label %14

14:                                               ; preds = %13, %11
  %15 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  %16 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %15, i32 0, i32 0
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %16, align 8
  %18 = load float, float* %5, align 4
  %19 = load i32, i32* %6, align 4
  call void @sgfWriteResult(%struct.SGFNode_t* %17, float %18, i32 %19)
  ret void
}

declare dso_local void @sgfWriteResult(%struct.SGFNode_t*, float, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgftreeSetLastNode(%struct.SGFTree_t* %0, %struct.SGFNode_t* %1) #0 {
  %3 = alloca %struct.SGFTree_t*, align 8
  %4 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %3, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %4, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %6 = load %struct.SGFTree_t*, %struct.SGFTree_t** %3, align 8
  %7 = getelementptr inbounds %struct.SGFTree_t, %struct.SGFTree_t* %6, i32 0, i32 1
  store %struct.SGFNode_t* %5, %struct.SGFNode_t** %7, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
