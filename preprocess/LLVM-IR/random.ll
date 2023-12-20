; ModuleID = 'random.c'
source_filename = "random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_rand_state = type { [25 x i32], i32 }

@x = internal global [25 x i32] zeroinitializer, align 16
@k = internal global i32 0, align 4
@rand_initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"rand_initialized\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"random.c\00", align 1
@__PRETTY_FUNCTION__.next_rand = private unnamed_addr constant [29 x i8] c"unsigned int next_rand(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gg_srand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 25
  br i1 %6, label %7, label %19

7:                                                ; preds = %4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %10
  store i32 %8, i32* %11, align 4
  %12 = load i32, i32* %2, align 4
  %13 = mul i32 %12, 1313
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = add i32 %14, 88897
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %7
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4, !llvm.loop !4

19:                                               ; preds = %4
  store i32 24, i32* @k, align 4
  store i32 1, i32* @rand_initialized, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gg_rand() #0 {
  %1 = call i32 @next_rand()
  %2 = and i32 %1, 2147483647
  ret i32 %2
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next_rand() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @rand_initialized, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @rand_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %4
  br label %10

8:                                                ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.next_rand, i64 0, i64 0)) #2
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  call void @gg_srand(i32 1)
  br label %11

11:                                               ; preds = %10, %0
  %12 = load i32, i32* @k, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @k, align 4
  %14 = icmp eq i32 %13, 25
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  call void @iterate_tgfsr()
  store i32 0, i32* @k, align 4
  br label %16

16:                                               ; preds = %15, %11
  %17 = load i32, i32* @k, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @k, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 7
  %26 = and i32 %25, 727393536
  %27 = xor i32 %20, %26
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = shl i32 %28, 15
  %30 = and i32 %29, -611647488
  %31 = load i32, i32* %1, align 4
  %32 = xor i32 %31, %30
  store i32 %32, i32* %1, align 4
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gg_urand() #0 {
  %1 = call i32 @next_rand()
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @gg_drand() #0 {
  %1 = call i32 @next_rand()
  %2 = uitofp i32 %1 to double
  %3 = fmul double %2, 0x3DEFFFFFFFFFFFFF
  ret double %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gg_get_rand_state(%struct.gg_rand_state* %0) #0 {
  %2 = alloca %struct.gg_rand_state*, align 8
  %3 = alloca i32, align 4
  store %struct.gg_rand_state* %0, %struct.gg_rand_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 25
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.gg_rand_state*, %struct.gg_rand_state** %2, align 8
  %13 = getelementptr inbounds %struct.gg_rand_state, %struct.gg_rand_state* %12, i32 0, i32 0
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [25 x i32], [25 x i32]* %13, i64 0, i64 %15
  store i32 %11, i32* %16, align 4
  br label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !6

20:                                               ; preds = %4
  %21 = load i32, i32* @k, align 4
  %22 = load %struct.gg_rand_state*, %struct.gg_rand_state** %2, align 8
  %23 = getelementptr inbounds %struct.gg_rand_state, %struct.gg_rand_state* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gg_set_rand_state(%struct.gg_rand_state* %0) #0 {
  %2 = alloca %struct.gg_rand_state*, align 8
  %3 = alloca i32, align 4
  store %struct.gg_rand_state* %0, %struct.gg_rand_state** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp slt i32 %5, 25
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = load %struct.gg_rand_state*, %struct.gg_rand_state** %2, align 8
  %9 = getelementptr inbounds %struct.gg_rand_state, %struct.gg_rand_state* %8, i32 0, i32 0
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [25 x i32], [25 x i32]* %9, i64 0, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %15
  store i32 %13, i32* %16, align 4
  br label %17

17:                                               ; preds = %7
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %4, !llvm.loop !7

20:                                               ; preds = %4
  %21 = load %struct.gg_rand_state*, %struct.gg_rand_state** %2, align 8
  %22 = getelementptr inbounds %struct.gg_rand_state, %struct.gg_rand_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @k, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iterate_tgfsr() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %29, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 18
  br i1 %4, label %5, label %32

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = add nsw i32 %6, 7
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = lshr i32 %14, 1
  %16 = xor i32 %10, %15
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 -1900031960, i32 0
  %25 = xor i32 %16, %24
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %27
  store i32 %25, i32* %28, align 4
  br label %29

29:                                               ; preds = %5
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %2, !llvm.loop !8

32:                                               ; preds = %2
  br label %33

33:                                               ; preds = %61, %32
  %34 = load i32, i32* %1, align 4
  %35 = icmp slt i32 %34, 25
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 7
  %39 = sub nsw i32 %38, 25
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = lshr i32 %46, 1
  %48 = xor i32 %42, %47
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 -1900031960, i32 0
  %57 = xor i32 %48, %56
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [25 x i32], [25 x i32]* @x, i64 0, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %36
  %62 = load i32, i32* %1, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %1, align 4
  br label %33, !llvm.loop !9

64:                                               ; preds = %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind }

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
