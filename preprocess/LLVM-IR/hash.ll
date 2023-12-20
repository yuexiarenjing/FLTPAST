; ModuleID = 'hash.c'
source_filename = "hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }
%struct.gg_rand_state = type { [25 x i32], i32 }
%struct.Hash_data = type { [1 x i64] }

@is_initialized = internal global i32 0, align 4
@black_hash = internal global [400 x [1 x i64]] zeroinitializer, align 16
@white_hash = internal global [400 x [1 x i64]] zeroinitializer, align 16
@ko_hash = internal global [400 x [1 x i64]] zeroinitializer, align 16
@board = external dso_local global [421 x i8], align 16
@stats = external dso_local global %struct.stats_data, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hash_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.gg_rand_state, align 4
  %4 = load i32, i32* @is_initialized, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %46

7:                                                ; preds = %0
  call void @gg_get_rand_state(%struct.gg_rand_state* %3)
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %42, %7
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 1
  br i1 %11, label %12, label %45

12:                                               ; preds = %8
  store i32 21, i32* %1, align 4
  br label %13

13:                                               ; preds = %38, %12
  %14 = load i32, i32* %1, align 4
  %15 = icmp slt i32 %14, 400
  br i1 %15, label %16, label %41

16:                                               ; preds = %13
  %17 = call i64 @hash_rand()
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @black_hash, i64 0, i64 %19
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [1 x i64], [1 x i64]* %20, i64 0, i64 %22
  store i64 %17, i64* %23, align 8
  %24 = call i64 @hash_rand()
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @white_hash, i64 0, i64 %26
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [1 x i64], [1 x i64]* %27, i64 0, i64 %29
  store i64 %24, i64* %30, align 8
  %31 = call i64 @hash_rand()
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @ko_hash, i64 0, i64 %33
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [1 x i64], [1 x i64]* %34, i64 0, i64 %36
  store i64 %31, i64* %37, align 8
  br label %38

38:                                               ; preds = %16
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %13, !llvm.loop !4

41:                                               ; preds = %13
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %2, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %2, align 4
  br label %8, !llvm.loop !6

45:                                               ; preds = %8
  call void @gg_set_rand_state(%struct.gg_rand_state* %3)
  store i32 1, i32* @is_initialized, align 4
  br label %46

46:                                               ; preds = %45, %6
  ret void
}

declare dso_local void @gg_get_rand_state(%struct.gg_rand_state*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hash_rand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %16, %0
  %4 = load i32, i32* %1, align 4
  %5 = mul nsw i32 32, %4
  %6 = icmp slt i32 %5, 64
  br i1 %6, label %7, label %19

7:                                                ; preds = %3
  %8 = call i32 @gg_urand()
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* %1, align 4
  %11 = mul nsw i32 32, %10
  %12 = zext i32 %11 to i64
  %13 = shl i64 %9, %12
  %14 = load i64, i64* %2, align 8
  %15 = or i64 %14, %13
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %7
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  br label %3, !llvm.loop !7

19:                                               ; preds = %3
  %20 = load i64, i64* %2, align 8
  ret i64 %20
}

declare dso_local void @gg_set_rand_state(%struct.gg_rand_state*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashdata_recalc(%struct.Hash_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.Hash_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Hash_data* %0, %struct.Hash_data** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %19, %3
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %15 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %14, i32 0, i32 0
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [1 x i64], [1 x i64]* %15, i64 0, i64 %17
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %9, !llvm.loop !8

22:                                               ; preds = %9
  store i32 21, i32* %7, align 4
  br label %23

23:                                               ; preds = %92, %22
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 400
  br i1 %25, label %26, label %95

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %92

34:                                               ; preds = %26
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  switch i32 %40, label %41 [
    i32 0, label %42
    i32 1, label %43
    i32 2, label %67
  ]

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %34, %41
  br label %91

43:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 1
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @white_hash, i64 0, i64 %50
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1 x i64], [1 x i64]* %51, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %57 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %56, i32 0, i32 0
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [1 x i64], [1 x i64]* %57, i64 0, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = xor i64 %61, %55
  store i64 %62, i64* %60, align 8
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %44, !llvm.loop !9

66:                                               ; preds = %44
  br label %91

67:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %70, 1
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @black_hash, i64 0, i64 %74
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1 x i64], [1 x i64]* %75, i64 0, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %81 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %80, i32 0, i32 0
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [1 x i64], [1 x i64]* %81, i64 0, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = xor i64 %85, %79
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %72
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %68, !llvm.loop !10

90:                                               ; preds = %68
  br label %91

91:                                               ; preds = %90, %66, %42
  br label %92

92:                                               ; preds = %91, %33
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %23, !llvm.loop !11

95:                                               ; preds = %23
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %95
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %118, %98
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %101, 1
  br i1 %102, label %103, label %121

103:                                              ; preds = %99
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @ko_hash, i64 0, i64 %105
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [1 x i64], [1 x i64]* %106, i64 0, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %112 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %111, i32 0, i32 0
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [1 x i64], [1 x i64]* %112, i64 0, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = xor i64 %116, %110
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %103
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %99, !llvm.loop !12

121:                                              ; preds = %99
  br label %122

122:                                              ; preds = %121, %95
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashdata_invert_ko(%struct.Hash_data* %0, i32 %1) #0 {
  %3 = alloca %struct.Hash_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.Hash_data* %0, %struct.Hash_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = icmp ult i64 %8, 1
  br i1 %9, label %10, label %28

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @ko_hash, i64 0, i64 %12
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.Hash_data*, %struct.Hash_data** %3, align 8
  %19 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %18, i32 0, i32 0
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1 x i64], [1 x i64]* %19, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = xor i64 %23, %17
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %10
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %6, !llvm.loop !13

28:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashdata_invert_stone(%struct.Hash_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.Hash_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Hash_data* %0, %struct.Hash_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %30, %10
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 1
  br i1 %14, label %15, label %33

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @black_hash, i64 0, i64 %17
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [1 x i64], [1 x i64]* %18, i64 0, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %24 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %23, i32 0, i32 0
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [1 x i64], [1 x i64]* %24, i64 0, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = xor i64 %28, %22
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %11, !llvm.loop !14

33:                                               ; preds = %11
  br label %62

34:                                               ; preds = %3
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 1
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x [1 x i64]], [400 x [1 x i64]]* @white_hash, i64 0, i64 %44
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [1 x i64], [1 x i64]* %45, i64 0, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %51 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %50, i32 0, i32 0
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [1 x i64], [1 x i64]* %51, i64 0, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = xor i64 %55, %49
  store i64 %56, i64* %54, align 8
  br label %57

57:                                               ; preds = %42
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %38, !llvm.loop !15

60:                                               ; preds = %38
  br label %61

61:                                               ; preds = %60, %34
  br label %62

62:                                               ; preds = %61, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashdata_compare(%struct.Hash_data* %0, %struct.Hash_data* %1) #0 {
  %3 = alloca %struct.Hash_data*, align 8
  %4 = alloca %struct.Hash_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.Hash_data* %0, %struct.Hash_data** %3, align 8
  store %struct.Hash_data* %1, %struct.Hash_data** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %27, %2
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %9, 1
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = load %struct.Hash_data*, %struct.Hash_data** %3, align 8
  %13 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %12, i32 0, i32 0
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [1 x i64], [1 x i64]* %13, i64 0, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %19 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %18, i32 0, i32 0
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [1 x i64], [1 x i64]* %19, i64 0, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  store i32 2, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %11
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7, !llvm.loop !16

30:                                               ; preds = %7
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 2
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  br label %39

39:                                               ; preds = %36, %33, %30
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @gg_urand() #1

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
