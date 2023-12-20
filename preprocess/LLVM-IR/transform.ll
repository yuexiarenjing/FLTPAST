; ModuleID = 'transform.c'
source_filename = "transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@transformation2 = dso_local constant [8 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 -1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 -1], [2 x i32] [i32 -1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 -1, i32 0], [2 x i32] [i32 0, i32 1]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 1, i32 0]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 0], [2 x i32] [i32 0, i32 -1]]], align 16
@transformation = dso_local global [1369 x [8 x i32]] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transformation_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %79, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %82

9:                                                ; preds = %6
  store i32 -18, i32* %3, align 4
  br label %10

10:                                               ; preds = %75, %9
  %11 = load i32, i32* %3, align 4
  %12 = icmp sle i32 %11, 18
  br i1 %12, label %13, label %78

13:                                               ; preds = %10
  store i32 -18, i32* %2, align 4
  br label %14

14:                                               ; preds = %71, %13
  %15 = load i32, i32* %2, align 4
  %16 = icmp sle i32 %15, 18
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %20
  %22 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %21, i64 0, i64 0
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = load i32, i32* %2, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %28
  %30 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %29, i64 0, i64 0
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 %32, %33
  %35 = add nsw i32 %26, %34
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %37
  %39 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %38, i64 0, i64 1
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %39, i64 0, i64 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %2, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %45
  %47 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %46, i64 0, i64 1
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %3, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %43, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %18
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %54, 20
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 19
  %60 = sub nsw i32 %59, 1
  %61 = mul nsw i32 %60, 37
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 19
  %64 = sub nsw i32 %63, 1
  %65 = add nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %66
  %68 = load i32, i32* %1, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %67, i64 0, i64 %69
  store i32 %57, i32* %70, align 4
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %2, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %2, align 4
  br label %14, !llvm.loop !4

74:                                               ; preds = %14
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %3, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %3, align 4
  br label %10, !llvm.loop !6

78:                                               ; preds = %10
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %1, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %1, align 4
  br label %6, !llvm.loop !7

82:                                               ; preds = %6
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
