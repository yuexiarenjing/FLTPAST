; ModuleID = 'movelist.c'
source_filename = "movelist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @movelist_move_known(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %38, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %11
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %42

23:                                               ; preds = %15
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %42

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %10, align 4
  br label %11, !llvm.loop !4

41:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %31, %22
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @movelist_change_point(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %26, %5
  %13 = load i32, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %11, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %11, align 4
  br label %12, !llvm.loop !6

29:                                               ; preds = %24, %12
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %76

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %10, align 8
  call void @movelist_sort_points(i32 %48, i32* %49, i32* %50)
  br label %76

51:                                               ; preds = %29
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %52, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %51
  %61 = load i32, i32* %6, align 4
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 %67, i32* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %10, align 8
  call void @movelist_sort_points(i32 %73, i32* %74, i32* %75)
  br label %76

76:                                               ; preds = %41, %42, %60, %51
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @movelist_sort_points(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %82, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %46, %18
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %49

25:                                               ; preds = %21
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %30, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %25
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %42, 1
  call void @swap_points_and_codes(i32* %39, i32* %40, i32 %41, i32 %43)
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %38, %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %11, align 4
  br label %21, !llvm.loop !7

49:                                               ; preds = %21
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %79, %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 1
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %53
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %63, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = load i32*, i32** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = add nsw i32 %75, 1
  call void @swap_points_and_codes(i32* %72, i32* %73, i32 %74, i32 %76)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %71, %58
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %53, !llvm.loop !8

82:                                               ; preds = %53
  %83 = load i32, i32* %10, align 4
  store i32 %83, i32* %8, align 4
  br label %14, !llvm.loop !9

84:                                               ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @swap_points_and_codes(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 %38, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
