; ModuleID = 'gg_utils.c'
source_filename = "gg_utils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.interpolation_data = type { i32, float, float, [21 x float] }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"3.3.14\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"bs > 0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"gg_utils.c\00", align 1
@__PRETTY_FUNCTION__.rotate = private unnamed_addr constant [46 x i8] c"void rotate(int, int, int *, int *, int, int)\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"ri != ((void*)0) && rj != ((void*)0)\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"rot >= 0 && rot < 8\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"i >= 0 && i < bs\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"j >= 0 && j < bs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gg_init_color() #0 {
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_color_char_no_space(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %6)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_color_string(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br label %5

5:                                                ; preds = %9, %2
  %6 = load i8*, i8** %4, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** %4, align 8
  %13 = load i8, i8* %11, align 1
  %14 = sext i8 %13 to i32
  call void @write_color_char_no_space(i32 %10, i32 %14)
  br label %5, !llvm.loop !4

15:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_color_char(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  call void @write_color_char_no_space(i32 %7, i32 %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gg_vsnprintf(i8* %0, i64 %1, i8* %2, %struct.__va_list_tag* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.__va_list_tag*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.__va_list_tag* %3, %struct.__va_list_tag** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load %struct.__va_list_tag*, %struct.__va_list_tag** %8, align 8
  %13 = call i32 @vsprintf(i8* %10, i8* %11, %struct.__va_list_tag* %12) #5
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @vsprintf(i8*, i8*, %struct.__va_list_tag*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gg_snprintf(i8* %0, i64 %1, i8* %2, ...) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %9 = bitcast %struct.__va_list_tag* %8 to i8*
  call void @llvm.va_start(i8* %9)
  %10 = load i8*, i8** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  call void @gg_vsnprintf(i8* %10, i64 %11, i8* %12, %struct.__va_list_tag* %13)
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0
  %15 = bitcast %struct.__va_list_tag* %14 to i8*
  call void @llvm.va_end(i8* %15)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @gg_gettimeofday() #0 {
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @gg_version() #0 {
  ret i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @gg_cputime() #0 {
  ret double 0.000000e+00
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @gg_normalize_float(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = load float, float* %4, align 4
  %8 = fdiv float %6, %7
  %9 = fpext float %8 to double
  %10 = fadd double 5.000000e-01, %9
  %11 = fptosi double %10 to i32
  %12 = sitofp i32 %11 to float
  %13 = fmul float %5, %12
  ret float %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gg_normalize_float2int(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fdiv float %5, %6
  %8 = fpext float %7 to double
  %9 = fadd double 5.000000e-01, %8
  %10 = fptosi double %9 to i32
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gg_sort(i8* %0, i64 %1, i64 %2, i32 (i8*, i8*)* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 (i8*, i8*)* %3, i32 (i8*, i8*)** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, 1
  %24 = mul i64 %21, %23
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %82, %4
  store i32 0, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = mul nsw i32 10, %27
  %29 = add nsw i32 %28, 3
  %30 = sdiv i32 %29, 13
  store i32 %30, i32* %9, align 4
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %12, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %7, align 8
  %36 = mul i64 %34, %35
  %37 = getelementptr inbounds i8, i8* %32, i64 %36
  store i8* %37, i8** %13, align 8
  br label %38

38:                                               ; preds = %68, %26
  %39 = load i8*, i8** %13, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ule i8* %39, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %38
  %43 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 %43(i8* %44, i8* %45)
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load i8*, i8** %12, align 8
  store i8* %49, i8** %14, align 8
  %50 = load i8*, i8** %13, align 8
  store i8* %50, i8** %15, align 8
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %16, align 8
  br label %52

52:                                               ; preds = %56, %48
  %53 = load i64, i64* %16, align 8
  %54 = add i64 %53, -1
  store i64 %54, i64* %16, align 8
  %55 = icmp ugt i64 %53, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %52
  %57 = load i8*, i8** %14, align 8
  %58 = load i8, i8* %57, align 1
  store i8 %58, i8* %17, align 1
  %59 = load i8*, i8** %15, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %14, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i8, i8* %17, align 1
  %64 = load i8*, i8** %15, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %15, align 8
  store i8 %63, i8* %64, align 1
  br label %52, !llvm.loop !6

66:                                               ; preds = %52
  store i32 1, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %42
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %7, align 8
  %70 = load i8*, i8** %12, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %12, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %72
  store i8* %74, i8** %13, align 8
  br label %38, !llvm.loop !7

75:                                               ; preds = %38
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br label %82

82:                                               ; preds = %79, %76
  %83 = phi i1 [ true, %76 ], [ %81, %79 ]
  br i1 %83, label %26, label %84, !llvm.loop !8

84:                                               ; preds = %82
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @gg_interpolate(%struct.interpolation_data* %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.interpolation_data*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store %struct.interpolation_data* %0, %struct.interpolation_data** %4, align 8
  store float %1, float* %5, align 4
  %9 = load float, float* %5, align 4
  %10 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %11 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %10, i32 0, i32 1
  %12 = load float, float* %11, align 4
  %13 = fcmp olt float %9, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %16 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %15, i32 0, i32 3
  %17 = getelementptr inbounds [21 x float], [21 x float]* %16, i64 0, i64 0
  %18 = load float, float* %17, align 4
  store float %18, float* %3, align 4
  br label %78

19:                                               ; preds = %2
  %20 = load float, float* %5, align 4
  %21 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %22 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %21, i32 0, i32 2
  %23 = load float, float* %22, align 4
  %24 = fcmp ogt float %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %27 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %26, i32 0, i32 3
  %28 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %29 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [21 x float], [21 x float]* %27, i64 0, i64 %31
  %33 = load float, float* %32, align 4
  store float %33, float* %3, align 4
  br label %78

34:                                               ; preds = %19
  %35 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %36 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to float
  %39 = load float, float* %5, align 4
  %40 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %41 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %40, i32 0, i32 1
  %42 = load float, float* %41, align 4
  %43 = fsub float %39, %42
  %44 = fmul float %38, %43
  %45 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %46 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %45, i32 0, i32 2
  %47 = load float, float* %46, align 4
  %48 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %49 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %48, i32 0, i32 1
  %50 = load float, float* %49, align 4
  %51 = fsub float %47, %50
  %52 = fdiv float %44, %51
  store float %52, float* %7, align 4
  %53 = load float, float* %7, align 4
  %54 = fptosi float %53 to i32
  store i32 %54, i32* %6, align 4
  %55 = load float, float* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = sitofp i32 %56 to float
  %58 = fsub float %55, %57
  store float %58, float* %8, align 4
  %59 = load float, float* %8, align 4
  %60 = fsub float 1.000000e+00, %59
  %61 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %62 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %61, i32 0, i32 3
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [21 x float], [21 x float]* %62, i64 0, i64 %64
  %66 = load float, float* %65, align 4
  %67 = fmul float %60, %66
  %68 = load float, float* %8, align 4
  %69 = load %struct.interpolation_data*, %struct.interpolation_data** %4, align 8
  %70 = getelementptr inbounds %struct.interpolation_data, %struct.interpolation_data* %69, i32 0, i32 3
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [21 x float], [21 x float]* %70, i64 0, i64 %73
  %75 = load float, float* %74, align 4
  %76 = fmul float %68, %75
  %77 = fadd float %67, %76
  store float %77, float* %3, align 4
  br label %78

78:                                               ; preds = %34, %25, %14
  %79 = load float, float* %3, align 4
  ret float %79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @soft_cap(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %5 = load float, float* %3, align 4
  %6 = load float, float* %4, align 4
  %7 = fmul float %5, %6
  %8 = load float, float* %3, align 4
  %9 = load float, float* %4, align 4
  %10 = fadd float %8, %9
  %11 = fdiv float %7, %10
  ret float %11
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rotate(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %19

17:                                               ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 231, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.rotate, i64 0, i64 0)) #6
  unreachable

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %18, %16
  %20 = load i32*, i32** %9, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32*, i32** %10, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  br label %28

26:                                               ; preds = %22, %19
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 232, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.rotate, i64 0, i64 0)) #6
  unreachable

27:                                               ; No predecessors!
  br label %28

28:                                               ; preds = %27, %25
  %29 = load i32, i32* %12, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* %12, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %37

35:                                               ; preds = %31, %28
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 233, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.rotate, i64 0, i64 0)) #6
  unreachable

36:                                               ; No predecessors!
  br label %37

37:                                               ; preds = %36, %34
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  br label %157

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %7, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %58

56:                                               ; preds = %51, %48
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 241, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.rotate, i64 0, i64 0)) #6
  unreachable

57:                                               ; No predecessors!
  br label %58

58:                                               ; preds = %57, %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp sge i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %68

66:                                               ; preds = %61, %58
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 242, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.rotate, i64 0, i64 0)) #6
  unreachable

67:                                               ; No predecessors!
  br label %68

68:                                               ; preds = %67, %65
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 %69, 1
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = load i32*, i32** %9, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 %76, i32* %77, align 4
  br label %157

78:                                               ; preds = %68
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32*, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %156

88:                                               ; preds = %78
  %89 = load i32, i32* %12, align 4
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %100

91:                                               ; preds = %88
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32*, i32** %9, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32*, i32** %10, align 8
  store i32 %98, i32* %99, align 4
  br label %155

100:                                              ; preds = %88
  %101 = load i32, i32* %12, align 4
  %102 = icmp eq i32 %101, 3
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %8, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %7, align 4
  %108 = sub nsw i32 %106, %107
  %109 = load i32*, i32** %10, align 8
  store i32 %108, i32* %109, align 4
  br label %154

110:                                              ; preds = %100
  %111 = load i32, i32* %12, align 4
  %112 = icmp eq i32 %111, 4
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32*, i32** %10, align 8
  store i32 %116, i32* %117, align 4
  br label %153

118:                                              ; preds = %110
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 5
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* %7, align 4
  %124 = sub nsw i32 %122, %123
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32*, i32** %10, align 8
  store i32 %126, i32* %127, align 4
  br label %152

128:                                              ; preds = %118
  %129 = load i32, i32* %12, align 4
  %130 = icmp eq i32 %129, 6
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %132, %133
  %135 = load i32*, i32** %9, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* %7, align 4
  %138 = sub nsw i32 %136, %137
  %139 = load i32*, i32** %10, align 8
  store i32 %138, i32* %139, align 4
  br label %151

140:                                              ; preds = %128
  %141 = load i32, i32* %12, align 4
  %142 = icmp eq i32 %141, 7
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  %145 = load i32*, i32** %9, align 8
  store i32 %144, i32* %145, align 4
  %146 = load i32, i32* %13, align 4
  %147 = load i32, i32* %8, align 4
  %148 = sub nsw i32 %146, %147
  %149 = load i32*, i32** %10, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %143, %140
  br label %151

151:                                              ; preds = %150, %131
  br label %152

152:                                              ; preds = %151, %121
  br label %153

153:                                              ; preds = %152, %113
  br label %154

154:                                              ; preds = %153, %103
  br label %155

155:                                              ; preds = %154, %91
  br label %156

156:                                              ; preds = %155, %81
  br label %157

157:                                              ; preds = %43, %156, %73
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inv_rotate(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %6
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %11, align 4
  call void @rotate(i32 %16, i32 %17, i32* %18, i32* %19, i32 %20, i32 3)
  br label %38

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %11, align 4
  call void @rotate(i32 %25, i32 %26, i32* %27, i32* %28, i32 %29, i32 1)
  br label %37

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  call void @rotate(i32 %31, i32 %32, i32* %33, i32* %34, i32 %35, i32 %36)
  br label %37

37:                                               ; preds = %30, %24
  br label %38

38:                                               ; preds = %37, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
