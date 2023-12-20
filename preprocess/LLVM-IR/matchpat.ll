; ModuleID = 'matchpat.c'
source_filename = "matchpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type { [80 x i8], i32, %struct.state_rt*, %struct.attrib_rt* }
%struct.state_rt = type { i16, [4 x i16] }
%struct.attrib_rt = type { i16, i16 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fullboard_pattern = type { %struct.patval*, i32, i8*, i32, float }

@transformation2 = external dso_local constant [8 x [2 x [2 x i32]]], align 16
@spiral = external dso_local global [1764 x [8 x i32]], align 16
@owl_vital_apat_db = external dso_local global %struct.pattern_db, align 8
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"owl_vital_apat --> using dfa\0A\00", align 1
@owl_attackpat_db = external dso_local global %struct.pattern_db, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"owl_attackpat --> using dfa\0A\00", align 1
@owl_defendpat_db = external dso_local global %struct.pattern_db, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"owl_defendpat --> using dfa\0A\00", align 1
@pat_db = external dso_local global %struct.pattern_db, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"pat --> using dfa\0A\00", align 1
@attpat_db = external dso_local global %struct.pattern_db, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"attpat --> using dfa\0A\00", align 1
@defpat_db = external dso_local global %struct.pattern_db, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"defpat --> using dfa\0A\00", align 1
@endpat_db = external dso_local global %struct.pattern_db, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"endpat --> using dfa\0A\00", align 1
@conn_db = external dso_local global %struct.pattern_db, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"conn --> using dfa\0A\00", align 1
@influencepat_db = external dso_local global %struct.pattern_db, align 8
@.str.8 = private unnamed_addr constant [28 x i8] c"influencepat --> using dfa\0A\00", align 1
@barrierspat_db = external dso_local global %struct.pattern_db, align 8
@.str.9 = private unnamed_addr constant [27 x i8] c"barrierspat --> using dfa\0A\00", align 1
@fusekipat_db = external dso_local global %struct.pattern_db, align 8
@dfa_board_size = internal global i32 -1, align 4
@board_size = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"matchpat.c\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"color != 0\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"board_size % 2 == 1\00", align 1
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@board = external dso_local global [421 x i8], align 16
@.str.13 = private unnamed_addr constant [15 x i8] c"ON_BOARD1(pos)\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"ON_BOARD1(anchor)\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"pattern->patn\00", align 1
@.str.16 = private unnamed_addr constant [72 x i8] c"---\0Aconsidering pattern '%s', rotation %d at %1m. Range %d,%d -> %d,%d\0A\00", align 1
@and_mask = internal constant [2 x [8 x i32]] [[8 x i32] [i32 3, i32 3, i32 3, i32 1, i32 2, i32 3, i32 3, i32 3], [8 x i32] [i32 3, i32 3, i32 3, i32 2, i32 1, i32 3, i32 3, i32 3]], align 16
@val_mask = internal constant [2 x [8 x i32]] [[8 x i32] [i32 0, i32 2, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0], [8 x i32] [i32 0, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0]], align 16
@class_mask = internal global [4 x [3 x i32]] zeroinitializer, align 16
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@.str.17 = private unnamed_addr constant [45 x i8] c"end of pattern '%s', rotation %d at %1m\0A---\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"maxr < DFA_MAX_MATCHED\00", align 1
@dfa_p = external dso_local global [7056 x i32], align 16
@.str.19 = private unnamed_addr constant [16 x i8] c"row < MAX_ORDER\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"dragon[pos].status < 4\00", align 1
@convert = external dso_local constant [3 x [4 x i32]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @transform2(i32 %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  br label %11

11:                                               ; preds = %5
  %12 = load i32, i32* %10, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %13
  %15 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %14, i64 0, i64 0
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %17 = load i32, i32* %16, align 16
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %21
  %23 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %22, i64 0, i64 0
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %19, %27
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %31
  %33 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %32, i64 0, i64 1
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %39
  %41 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %40, i64 0, i64 1
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %37, %45
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %11
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfa_match_init() #0 {
  call void @buildSpiralOrder([8 x i32]* getelementptr inbounds ([1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i64 0, i64 0))
  %1 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @owl_vital_apat_db, i32 0, i32 3), align 8
  %2 = icmp ne %struct.dfa_rt* %1, null
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i32, i32* @debug, align 4
  %5 = and i32 %4, 16
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  br label %10

8:                                                ; preds = %3
  %9 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %7
  br label %11

11:                                               ; preds = %10, %0
  %12 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @owl_attackpat_db, i32 0, i32 3), align 8
  %13 = icmp ne %struct.dfa_rt* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* @debug, align 4
  %16 = and i32 %15, 16
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %21

19:                                               ; preds = %14
  %20 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %18
  br label %22

22:                                               ; preds = %21, %11
  %23 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @owl_defendpat_db, i32 0, i32 3), align 8
  %24 = icmp ne %struct.dfa_rt* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  %26 = load i32, i32* @debug, align 4
  %27 = and i32 %26, 16
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %32

30:                                               ; preds = %25
  %31 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %29
  br label %33

33:                                               ; preds = %32, %22
  %34 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @pat_db, i32 0, i32 3), align 8
  %35 = icmp ne %struct.dfa_rt* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @debug, align 4
  %38 = and i32 %37, 16
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %43

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %40
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @attpat_db, i32 0, i32 3), align 8
  %46 = icmp ne %struct.dfa_rt* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* @debug, align 4
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %54

52:                                               ; preds = %47
  %53 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %51
  br label %55

55:                                               ; preds = %54, %44
  %56 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @defpat_db, i32 0, i32 3), align 8
  %57 = icmp ne %struct.dfa_rt* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i32, i32* @debug, align 4
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %62
  br label %66

66:                                               ; preds = %65, %55
  %67 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @endpat_db, i32 0, i32 3), align 8
  %68 = icmp ne %struct.dfa_rt* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* @debug, align 4
  %71 = and i32 %70, 16
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  br label %76

74:                                               ; preds = %69
  %75 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %73
  br label %77

77:                                               ; preds = %76, %66
  %78 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @conn_db, i32 0, i32 3), align 8
  %79 = icmp ne %struct.dfa_rt* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = load i32, i32* @debug, align 4
  %82 = and i32 %81, 16
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  br label %87

85:                                               ; preds = %80
  %86 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %84
  br label %88

88:                                               ; preds = %87, %77
  %89 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @influencepat_db, i32 0, i32 3), align 8
  %90 = icmp ne %struct.dfa_rt* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i32, i32* @debug, align 4
  %93 = and i32 %92, 16
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  br label %98

96:                                               ; preds = %91
  %97 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %95
  br label %99

99:                                               ; preds = %98, %88
  %100 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @barrierspat_db, i32 0, i32 3), align 8
  %101 = icmp ne %struct.dfa_rt* %100, null
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* @debug, align 4
  %104 = and i32 %103, 16
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %109

107:                                              ; preds = %102
  %108 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %106
  br label %110

110:                                              ; preds = %109, %99
  %111 = load %struct.dfa_rt*, %struct.dfa_rt** getelementptr inbounds (%struct.pattern_db, %struct.pattern_db* @fusekipat_db, i32 0, i32 3), align 8
  %112 = icmp ne %struct.dfa_rt* %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i32, i32* @debug, align 4
  %115 = and i32 %114, 16
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %120

118:                                              ; preds = %113
  %119 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %117
  br label %121

121:                                              ; preds = %120, %110
  store i32 -1, i32* @dfa_board_size, align 4
  ret void
}

declare dso_local void @buildSpiralOrder([8 x i32]*) #1

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* %0, i32 %1, %struct.pattern_db* %2, i8* %3, i8* %4) #0 {
  %6 = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern_db*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store void (i32, i32, %struct.pattern*, i32, i8*)* %0, void (i32, i32, %struct.pattern*, i32, i8*)** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.pattern_db* %2, %struct.pattern_db** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.pattern_db*, %struct.pattern_db** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load %struct.pattern_db*, %struct.pattern_db** %8, align 8
  %17 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  call void @matchpat_goal_anchor(void (i32, i32, %struct.pattern*, i32, i8*)* %11, i32 %12, %struct.pattern_db* %13, i8* %14, i8* %15, i32 %18)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @matchpat_goal_anchor(void (i32, i32, %struct.pattern*, i32, i8*)* %0, i32 %1, %struct.pattern_db* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pattern_db*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, align 8
  %14 = alloca void (i32)*, align 8
  store void (i32, i32, %struct.pattern*, i32, i8*)* %0, void (i32, i32, %struct.pattern*, i32, i8*)** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.pattern_db* %2, %struct.pattern_db** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  store void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)* @matchpat_loop, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %13, align 8
  store void (i32)* @prepare_for_match, void (i32)** %14, align 8
  %15 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %16 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @board_size, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %6
  %21 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %22 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %21, i32 0, i32 2
  %23 = load %struct.pattern*, %struct.pattern** %22, align 8
  call void @fixup_patterns_for_board_size(%struct.pattern* %23)
  %24 = load i32, i32* @board_size, align 4
  %25 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %26 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %20, %6
  %28 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %29 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %28, i32 0, i32 3
  %30 = load %struct.dfa_rt*, %struct.dfa_rt** %29, align 8
  %31 = icmp ne %struct.dfa_rt* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)* @dfa_matchpat_loop, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %13, align 8
  store void (i32)* @dfa_prepare_for_match, void (i32)** %14, align 8
  br label %33

33:                                               ; preds = %32, %27
  %34 = load i32, i32* %8, align 4
  switch i32 %34, label %65 [
    i32 6, label %35
    i32 7, label %50
  ]

35:                                               ; preds = %33
  %36 = load void (i32)*, void (i32)** %14, align 8
  call void %36(i32 1)
  %37 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %13, align 8
  %38 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %7, align 8
  %39 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load i32, i32* %12, align 4
  call void %37(void (i32, i32, %struct.pattern*, i32, i8*)* %38, i32 1, i32 1, %struct.pattern_db* %39, i8* %40, i8* %41, i32 %42)
  %43 = load void (i32)*, void (i32)** %14, align 8
  call void %43(i32 2)
  %44 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %13, align 8
  %45 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %7, align 8
  %46 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i32, i32* %12, align 4
  call void %44(void (i32, i32, %struct.pattern*, i32, i8*)* %45, i32 2, i32 2, %struct.pattern_db* %46, i8* %47, i8* %48, i32 %49)
  br label %82

50:                                               ; preds = %33
  %51 = load void (i32)*, void (i32)** %14, align 8
  call void %51(i32 1)
  %52 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %13, align 8
  %53 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %7, align 8
  %54 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  call void %52(void (i32, i32, %struct.pattern*, i32, i8*)* %53, i32 1, i32 2, %struct.pattern_db* %54, i8* %55, i8* %56, i32 %57)
  %58 = load void (i32)*, void (i32)** %14, align 8
  call void %58(i32 2)
  %59 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %13, align 8
  %60 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %7, align 8
  %61 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* %12, align 4
  call void %59(void (i32, i32, %struct.pattern*, i32, i8*)* %60, i32 2, i32 1, %struct.pattern_db* %61, i8* %62, i8* %63, i32 %64)
  br label %82

65:                                               ; preds = %33
  %66 = load void (i32)*, void (i32)** %14, align 8
  %67 = load i32, i32* %8, align 4
  call void %66(i32 %67)
  %68 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %13, align 8
  %69 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %12, align 4
  call void %68(void (i32, i32, %struct.pattern*, i32, i8*)* %69, i32 %70, i32 1, %struct.pattern_db* %71, i8* %72, i8* %73, i32 %74)
  %75 = load void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)*, void (void (i32, i32, %struct.pattern*, i32, i8*)*, i32, i32, %struct.pattern_db*, i8*, i8*, i32)** %13, align 8
  %76 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.pattern_db*, %struct.pattern_db** %9, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = load i8*, i8** %11, align 8
  %81 = load i32, i32* %12, align 4
  call void %75(void (i32, i32, %struct.pattern*, i32, i8*)* %76, i32 %77, i32 2, %struct.pattern_db* %78, i8* %79, i8* %80, i32 %81)
  br label %82

82:                                               ; preds = %65, %50, %35
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @matchpat_loop(void (i32, i32, %struct.pattern*, i32, i8*)* %0, i32 %1, i32 %2, %struct.pattern_db* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pattern_db*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %0, void (i32, i32, %struct.pattern*, i32, i8*)** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.pattern_db* %3, %struct.pattern_db** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 21, i32* %15, align 4
  br label %16

16:                                               ; preds = %48, %7
  %17 = load i32, i32* %15, align 4
  %18 = icmp slt i32 %17, 400
  br i1 %18, label %19, label %51

19:                                               ; preds = %16
  %20 = load i32, i32* %15, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %19
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %15, align 4
  %40 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.pattern_db*, %struct.pattern_db** %11, align 8
  %43 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %42, i32 0, i32 2
  %44 = load %struct.pattern*, %struct.pattern** %43, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = load i8*, i8** %13, align 8
  call void @do_matchpat(i32 %39, void (i32, i32, %struct.pattern*, i32, i8*)* %40, i32 %41, %struct.pattern* %44, i8* %45, i8* %46)
  br label %47

47:                                               ; preds = %38, %30, %19
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %15, align 4
  br label %16, !llvm.loop !4

51:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_for_match(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sub nsw i32 3, %4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %10

9:                                                ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 -1, i32 -1)
  br label %10

10:                                               ; preds = %9, %8
  %11 = load i32, i32* %2, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i64 0, i64 0), i64 0, i64 %12
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i64 0, i64 0), i64 0, i64 %15
  store i32 4, i32* %16, align 4
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i64 0, i64 2), i64 0, i64 %18
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i64 0, i64 2), i64 0, i64 %21
  store i32 0, i32* %22, align 4
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i64 0, i64 1), i64 0, i64 %24
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i64 0, i64 1), i64 0, i64 %27
  store i32 8, i32* %28, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fixup_patterns_for_board_size(%struct.pattern* %0) #0 {
  %2 = alloca %struct.pattern*, align 8
  store %struct.pattern* %0, %struct.pattern** %2, align 8
  br label %3

3:                                                ; preds = %187, %1
  %4 = load %struct.pattern*, %struct.pattern** %2, align 8
  %5 = getelementptr inbounds %struct.pattern, %struct.pattern* %4, i32 0, i32 0
  %6 = load %struct.patval*, %struct.patval** %5, align 8
  %7 = icmp ne %struct.patval* %6, null
  br i1 %7, label %8, label %190

8:                                                ; preds = %3
  %9 = load %struct.pattern*, %struct.pattern** %2, align 8
  %10 = getelementptr inbounds %struct.pattern, %struct.pattern* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %186

13:                                               ; preds = %8
  %14 = load %struct.pattern*, %struct.pattern** %2, align 8
  %15 = getelementptr inbounds %struct.pattern, %struct.pattern* %14, i32 0, i32 10
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %13
  %20 = load %struct.pattern*, %struct.pattern** %2, align 8
  %21 = getelementptr inbounds %struct.pattern, %struct.pattern* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pattern*, %struct.pattern** %2, align 8
  %24 = getelementptr inbounds %struct.pattern, %struct.pattern* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %22, %25
  %27 = load %struct.pattern*, %struct.pattern** %2, align 8
  %28 = getelementptr inbounds %struct.pattern, %struct.pattern* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %19, %13
  %30 = load %struct.pattern*, %struct.pattern** %2, align 8
  %31 = getelementptr inbounds %struct.pattern, %struct.pattern* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 2
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load %struct.pattern*, %struct.pattern** %2, align 8
  %37 = getelementptr inbounds %struct.pattern, %struct.pattern* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.pattern*, %struct.pattern** %2, align 8
  %40 = getelementptr inbounds %struct.pattern, %struct.pattern* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %38, %41
  %43 = load %struct.pattern*, %struct.pattern** %2, align 8
  %44 = getelementptr inbounds %struct.pattern, %struct.pattern* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %35, %29
  %46 = load %struct.pattern*, %struct.pattern** %2, align 8
  %47 = getelementptr inbounds %struct.pattern, %struct.pattern* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.pattern*, %struct.pattern** %2, align 8
  %53 = getelementptr inbounds %struct.pattern, %struct.pattern* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pattern*, %struct.pattern** %2, align 8
  %56 = getelementptr inbounds %struct.pattern, %struct.pattern* %55, i32 0, i32 9
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load %struct.pattern*, %struct.pattern** %2, align 8
  %60 = getelementptr inbounds %struct.pattern, %struct.pattern* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %45
  %62 = load %struct.pattern*, %struct.pattern** %2, align 8
  %63 = getelementptr inbounds %struct.pattern, %struct.pattern* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load %struct.pattern*, %struct.pattern** %2, align 8
  %69 = getelementptr inbounds %struct.pattern, %struct.pattern* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pattern*, %struct.pattern** %2, align 8
  %72 = getelementptr inbounds %struct.pattern, %struct.pattern* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = load %struct.pattern*, %struct.pattern** %2, align 8
  %76 = getelementptr inbounds %struct.pattern, %struct.pattern* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %61
  %78 = load %struct.pattern*, %struct.pattern** %2, align 8
  %79 = getelementptr inbounds %struct.pattern, %struct.pattern* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 8
  %81 = and i32 %80, 1
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %77
  %84 = load %struct.pattern*, %struct.pattern** %2, align 8
  %85 = getelementptr inbounds %struct.pattern, %struct.pattern* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @board_size, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.pattern*, %struct.pattern** %2, align 8
  %90 = getelementptr inbounds %struct.pattern, %struct.pattern* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %88, %91
  %93 = icmp slt i32 %86, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %83
  %95 = load i32, i32* @board_size, align 4
  %96 = sub nsw i32 %95, 1
  %97 = load %struct.pattern*, %struct.pattern** %2, align 8
  %98 = getelementptr inbounds %struct.pattern, %struct.pattern* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %96, %99
  %101 = load %struct.pattern*, %struct.pattern** %2, align 8
  %102 = getelementptr inbounds %struct.pattern, %struct.pattern* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %94, %83
  br label %104

104:                                              ; preds = %103, %77
  %105 = load %struct.pattern*, %struct.pattern** %2, align 8
  %106 = getelementptr inbounds %struct.pattern, %struct.pattern* %105, i32 0, i32 10
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, 2
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %131

110:                                              ; preds = %104
  %111 = load %struct.pattern*, %struct.pattern** %2, align 8
  %112 = getelementptr inbounds %struct.pattern, %struct.pattern* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.pattern*, %struct.pattern** %2, align 8
  %115 = getelementptr inbounds %struct.pattern, %struct.pattern* %114, i32 0, i32 6
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @board_size, align 4
  %118 = sub nsw i32 %117, 1
  %119 = sub nsw i32 %116, %118
  %120 = icmp sgt i32 %113, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %110
  %122 = load %struct.pattern*, %struct.pattern** %2, align 8
  %123 = getelementptr inbounds %struct.pattern, %struct.pattern* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @board_size, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sub nsw i32 %124, %126
  %128 = load %struct.pattern*, %struct.pattern** %2, align 8
  %129 = getelementptr inbounds %struct.pattern, %struct.pattern* %128, i32 0, i32 4
  store i32 %127, i32* %129, align 8
  br label %130

130:                                              ; preds = %121, %110
  br label %131

131:                                              ; preds = %130, %104
  %132 = load %struct.pattern*, %struct.pattern** %2, align 8
  %133 = getelementptr inbounds %struct.pattern, %struct.pattern* %132, i32 0, i32 10
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  %138 = load %struct.pattern*, %struct.pattern** %2, align 8
  %139 = getelementptr inbounds %struct.pattern, %struct.pattern* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @board_size, align 4
  %142 = sub nsw i32 %141, 1
  %143 = load %struct.pattern*, %struct.pattern** %2, align 8
  %144 = getelementptr inbounds %struct.pattern, %struct.pattern* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = icmp slt i32 %140, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %137
  %149 = load i32, i32* @board_size, align 4
  %150 = sub nsw i32 %149, 1
  %151 = load %struct.pattern*, %struct.pattern** %2, align 8
  %152 = getelementptr inbounds %struct.pattern, %struct.pattern* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %150, %153
  %155 = load %struct.pattern*, %struct.pattern** %2, align 8
  %156 = getelementptr inbounds %struct.pattern, %struct.pattern* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  br label %157

157:                                              ; preds = %148, %137
  br label %158

158:                                              ; preds = %157, %131
  %159 = load %struct.pattern*, %struct.pattern** %2, align 8
  %160 = getelementptr inbounds %struct.pattern, %struct.pattern* %159, i32 0, i32 10
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %185

164:                                              ; preds = %158
  %165 = load %struct.pattern*, %struct.pattern** %2, align 8
  %166 = getelementptr inbounds %struct.pattern, %struct.pattern* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.pattern*, %struct.pattern** %2, align 8
  %169 = getelementptr inbounds %struct.pattern, %struct.pattern* %168, i32 0, i32 7
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @board_size, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sub nsw i32 %170, %172
  %174 = icmp sgt i32 %167, %173
  br i1 %174, label %175, label %184

175:                                              ; preds = %164
  %176 = load %struct.pattern*, %struct.pattern** %2, align 8
  %177 = getelementptr inbounds %struct.pattern, %struct.pattern* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @board_size, align 4
  %180 = sub nsw i32 %179, 1
  %181 = sub nsw i32 %178, %180
  %182 = load %struct.pattern*, %struct.pattern** %2, align 8
  %183 = getelementptr inbounds %struct.pattern, %struct.pattern* %182, i32 0, i32 5
  store i32 %181, i32* %183, align 4
  br label %184

184:                                              ; preds = %175, %164
  br label %185

185:                                              ; preds = %184, %158
  br label %186

186:                                              ; preds = %185, %8
  br label %187

187:                                              ; preds = %186
  %188 = load %struct.pattern*, %struct.pattern** %2, align 8
  %189 = getelementptr inbounds %struct.pattern, %struct.pattern* %188, i32 1
  store %struct.pattern* %189, %struct.pattern** %2, align 8
  br label %3, !llvm.loop !6

190:                                              ; preds = %3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfa_matchpat_loop(void (i32, i32, %struct.pattern*, i32, i8*)* %0, i32 %1, i32 %2, %struct.pattern_db* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pattern_db*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %0, void (i32, i32, %struct.pattern*, i32, i8*)** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.pattern_db* %3, %struct.pattern_db** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 21, i32* %15, align 4
  br label %16

16:                                               ; preds = %52, %7
  %17 = load i32, i32* %15, align 4
  %18 = icmp slt i32 %17, 400
  br i1 %18, label %19, label %55

19:                                               ; preds = %16
  %20 = load i32, i32* %15, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %19
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %30, %27
  %39 = load %struct.pattern_db*, %struct.pattern_db** %11, align 8
  %40 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %39, i32 0, i32 3
  %41 = load %struct.dfa_rt*, %struct.dfa_rt** %40, align 8
  %42 = load i32, i32* %15, align 4
  %43 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.pattern_db*, %struct.pattern_db** %11, align 8
  %46 = getelementptr inbounds %struct.pattern_db, %struct.pattern_db* %45, i32 0, i32 2
  %47 = load %struct.pattern*, %struct.pattern** %46, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = load i32, i32* %14, align 4
  call void @do_dfa_matchpat(%struct.dfa_rt* %41, i32 %42, void (i32, i32, %struct.pattern*, i32, i8*)* %43, i32 %44, %struct.pattern* %47, i8* %48, i8* %49, i32 %50)
  br label %51

51:                                               ; preds = %38, %30, %19
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %15, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %15, align 4
  br label %16, !llvm.loop !7

55:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfa_prepare_for_match(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @dfa_board_size, align 4
  %7 = load i32, i32* @board_size, align 4
  %8 = icmp ne i32 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load i32, i32* @board_size, align 4
  store i32 %10, i32* @dfa_board_size, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %18, %9
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 7056
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [7056 x i32], [7056 x i32]* @dfa_p, i64 0, i64 %16
  store i32 3, i32* %17, align 4
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %5, align 4
  br label %11, !llvm.loop !8

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21, %1
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %58, %22
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @dfa_board_size, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %54, %27
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @dfa_board_size, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* @convert, i64 0, i64 %34
  %36 = load i32, i32* %3, align 4
  %37 = mul nsw i32 %36, 20
  %38 = add nsw i32 21, %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = mul nsw i32 84, %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  %51 = add nsw i32 %50, 1785
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [7056 x i32], [7056 x i32]* @dfa_p, i64 0, i64 %52
  store i32 %46, i32* %53, align 4
  br label %54

54:                                               ; preds = %32
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %28, !llvm.loop !9

57:                                               ; preds = %28
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %23, !llvm.loop !10

61:                                               ; preds = %23
  %62 = load i32, i32* %2, align 4
  call void @prepare_for_match(i32 %62)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fullboard_matchpat(void (i32, %struct.fullboard_pattern*, i32)* %0, i32 %1, %struct.fullboard_pattern* %2) #0 {
  %4 = alloca void (i32, %struct.fullboard_pattern*, i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fullboard_pattern*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store void (i32, %struct.fullboard_pattern*, i32)* %0, void (i32, %struct.fullboard_pattern*, i32)** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fullboard_pattern* %2, %struct.fullboard_pattern** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sub nsw i32 3, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @board_size, align 4
  %18 = sub nsw i32 %17, 1
  %19 = sdiv i32 %18, 2
  %20 = mul nsw i32 %19, 20
  %21 = add nsw i32 21, %20
  %22 = load i32, i32* @board_size, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sdiv i32 %23, 2
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = call i32 @stones_on_board(i32 3)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %31

30:                                               ; preds = %3
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 796, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 -1, i32 -1)
  br label %31

31:                                               ; preds = %30, %29
  %32 = load i32, i32* @board_size, align 4
  %33 = srem i32 %32, 2
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %37

36:                                               ; preds = %31
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 797, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 -1, i32 -1)
  br label %37

37:                                               ; preds = %36, %35
  br label %38

38:                                               ; preds = %157, %37
  %39 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %40 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %39, i32 0, i32 0
  %41 = load %struct.patval*, %struct.patval** %40, align 8
  %42 = icmp ne %struct.patval* %41, null
  br i1 %42, label %43, label %160

43:                                               ; preds = %38
  %44 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %45 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %157

50:                                               ; preds = %43
  store i32 0, i32* %8, align 4
  br label %51

51:                                               ; preds = %153, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 8
  br i1 %53, label %54, label %156

54:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %127, %54
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %58 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %130

61:                                               ; preds = %55
  %62 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %63 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %62, i32 0, i32 0
  %64 = load %struct.patval*, %struct.patval** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.patval, %struct.patval* %64, i64 %66
  %68 = getelementptr inbounds %struct.patval, %struct.patval* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %13, align 4
  %70 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %71 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %70, i32 0, i32 0
  %72 = load %struct.patval*, %struct.patval** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.patval, %struct.patval* %72, i64 %74
  %76 = getelementptr inbounds %struct.patval, %struct.patval* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %78
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [8 x i32], [8 x i32]* %79, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ult i32 %86, 421
  br i1 %87, label %88, label %96

88:                                               ; preds = %61
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 3
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %103

96:                                               ; preds = %88, %61
  %97 = load i32, i32* %12, align 4
  %98 = sdiv i32 %97, 20
  %99 = sub nsw i32 %98, 1
  %100 = load i32, i32* %12, align 4
  %101 = srem i32 %100, 20
  %102 = sub nsw i32 %101, 1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 818, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %99, i32 %102)
  br label %103

103:                                              ; preds = %96, %95
  %104 = load i32, i32* %13, align 4
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = load i32, i32* %5, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %125, label %114

114:                                              ; preds = %106, %103
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117, %106
  br label %130

126:                                              ; preds = %117, %114
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %55, !llvm.loop !11

130:                                              ; preds = %125, %55
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %133 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %152

136:                                              ; preds = %130
  %137 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %138 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %140
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %141, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %145, %146
  store i32 %147, i32* %14, align 4
  %148 = load void (i32, %struct.fullboard_pattern*, i32)*, void (i32, %struct.fullboard_pattern*, i32)** %4, align 8
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %151 = load i32, i32* %8, align 4
  call void %148(i32 %149, %struct.fullboard_pattern* %150, i32 %151)
  br label %152

152:                                              ; preds = %136, %130
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %8, align 4
  br label %51, !llvm.loop !12

156:                                              ; preds = %51
  br label %157

157:                                              ; preds = %156, %49
  %158 = load %struct.fullboard_pattern*, %struct.fullboard_pattern** %6, align 8
  %159 = getelementptr inbounds %struct.fullboard_pattern, %struct.fullboard_pattern* %158, i32 1
  store %struct.fullboard_pattern* %159, %struct.fullboard_pattern** %6, align 8
  br label %38, !llvm.loop !13

160:                                              ; preds = %38
  ret void
}

declare dso_local i32 @stones_on_board(i32) #1

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_matchpat(i32 %0, void (i32, i32, %struct.pattern*, i32, i8*)* %1, i32 %2, %struct.pattern* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pattern*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %1, void (i32, i32, %struct.pattern*, i32, i8*)** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.pattern* %3, %struct.pattern** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = load i32, i32* %9, align 4
  %38 = xor i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sdiv i32 %39, 20
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %7, align 4
  %43 = srem i32 %42, 20
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ult i32 %45, 421
  br i1 %46, label %47, label %55

47:                                               ; preds = %6
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 3
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %62

55:                                               ; preds = %47, %6
  %56 = load i32, i32* %7, align 4
  %57 = sdiv i32 %56, 20
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %7, align 4
  %60 = srem i32 %59, 20
  %61 = sub nsw i32 %60, 1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 227, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %58, i32 %61)
  br label %62

62:                                               ; preds = %55, %54
  store i32 30, i32* %19, align 4
  store i32 0, i32* %16, align 4
  %63 = load i32, i32* %14, align 4
  %64 = sub nsw i32 %63, 1
  store i32 %64, i32* %17, align 4
  br label %65

65:                                               ; preds = %119, %62
  %66 = load i32, i32* %17, align 4
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %67, 2
  %69 = icmp sle i32 %66, %68
  br i1 %69, label %70, label %122

70:                                               ; preds = %65
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %18, align 4
  br label %73

73:                                               ; preds = %113, %70
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %15, align 4
  %76 = add nsw i32 %75, 2
  %77 = icmp sle i32 %74, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %73
  %79 = load i32, i32* %17, align 4
  %80 = load i32, i32* @board_size, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* @board_size, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %87, label %86

86:                                               ; preds = %82, %78
  store i32 3, i32* %20, align 4
  br label %107

87:                                               ; preds = %82
  %88 = load i32, i32* %17, align 4
  %89 = mul nsw i32 %88, 20
  %90 = add nsw i32 21, %89
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  store i32 %96, i32* %20, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %113

99:                                               ; preds = %87
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %20, align 4
  %104 = sub i32 3, %103
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106, %86
  %108 = load i32, i32* %20, align 4
  %109 = load i32, i32* %19, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %16, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %16, align 4
  br label %113

113:                                              ; preds = %107, %98
  %114 = load i32, i32* %19, align 4
  %115 = sub nsw i32 %114, 2
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %18, align 4
  br label %73, !llvm.loop !14

118:                                              ; preds = %73
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %17, align 4
  br label %65, !llvm.loop !15

122:                                              ; preds = %65
  %123 = load %struct.pattern*, %struct.pattern** %10, align 8
  %124 = getelementptr inbounds %struct.pattern, %struct.pattern* %123, i32 0, i32 0
  %125 = load %struct.patval*, %struct.patval** %124, align 8
  %126 = icmp ne %struct.patval* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %129

128:                                              ; preds = %122
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 252, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i32 -1, i32 -1)
  br label %129

129:                                              ; preds = %128, %127
  br label %130

130:                                              ; preds = %450, %129
  %131 = load i32, i32* %13, align 4
  %132 = load %struct.pattern*, %struct.pattern** %10, align 8
  %133 = getelementptr inbounds %struct.pattern, %struct.pattern* %132, i32 0, i32 23
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %137

136:                                              ; preds = %130
  br label %450

137:                                              ; preds = %130
  store i32 0, i32* %22, align 4
  %138 = load %struct.pattern*, %struct.pattern** %10, align 8
  %139 = getelementptr inbounds %struct.pattern, %struct.pattern* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %21, align 4
  %141 = load %struct.pattern*, %struct.pattern** %10, align 8
  %142 = getelementptr inbounds %struct.pattern, %struct.pattern* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 5
  br i1 %144, label %145, label %146

145:                                              ; preds = %137
  store i32 2, i32* %22, align 4
  store i32 6, i32* %21, align 4
  br label %146

146:                                              ; preds = %145, %137
  br label %147

147:                                              ; preds = %444, %146
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %22, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %150
  %152 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %151, i64 0, i64 0
  %153 = getelementptr inbounds [2 x i32], [2 x i32]* %152, i64 0, i64 0
  %154 = load i32, i32* %153, align 16
  %155 = load %struct.pattern*, %struct.pattern** %10, align 8
  %156 = getelementptr inbounds %struct.pattern, %struct.pattern* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %154, %157
  %159 = load i32, i32* %22, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %160
  %162 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %161, i64 0, i64 0
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %162, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.pattern*, %struct.pattern** %10, align 8
  %166 = getelementptr inbounds %struct.pattern, %struct.pattern* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = mul nsw i32 %164, %167
  %169 = add nsw i32 %158, %168
  store i32 %169, i32* %26, align 4
  %170 = load i32, i32* %22, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %171
  %173 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %172, i64 0, i64 1
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i64 0, i64 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.pattern*, %struct.pattern** %10, align 8
  %177 = getelementptr inbounds %struct.pattern, %struct.pattern* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = mul nsw i32 %175, %178
  %180 = load i32, i32* %22, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %181
  %183 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %182, i64 0, i64 1
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %183, i64 0, i64 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pattern*, %struct.pattern** %10, align 8
  %187 = getelementptr inbounds %struct.pattern, %struct.pattern* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %185, %188
  %190 = add nsw i32 %179, %189
  store i32 %190, i32* %27, align 4
  br label %191

191:                                              ; preds = %148
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %22, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %194
  %196 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %195, i64 0, i64 0
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i64 0, i64 0
  %198 = load i32, i32* %197, align 16
  %199 = load %struct.pattern*, %struct.pattern** %10, align 8
  %200 = getelementptr inbounds %struct.pattern, %struct.pattern* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %198, %201
  %203 = load i32, i32* %22, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %204
  %206 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %205, i64 0, i64 0
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %206, i64 0, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.pattern*, %struct.pattern** %10, align 8
  %210 = getelementptr inbounds %struct.pattern, %struct.pattern* %209, i32 0, i32 7
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %208, %211
  %213 = add nsw i32 %202, %212
  store i32 %213, i32* %28, align 4
  %214 = load i32, i32* %22, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %215
  %217 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %216, i64 0, i64 1
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %217, i64 0, i64 0
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.pattern*, %struct.pattern** %10, align 8
  %221 = getelementptr inbounds %struct.pattern, %struct.pattern* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 8
  %223 = mul nsw i32 %219, %222
  %224 = load i32, i32* %22, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %225
  %227 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %226, i64 0, i64 1
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %227, i64 0, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.pattern*, %struct.pattern** %10, align 8
  %231 = getelementptr inbounds %struct.pattern, %struct.pattern* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 4
  %233 = mul nsw i32 %229, %232
  %234 = add nsw i32 %223, %233
  store i32 %234, i32* %29, align 4
  br label %235

235:                                              ; preds = %192
  %236 = load i32, i32* @debug, align 4
  %237 = and i32 %236, 16
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  br label %251

240:                                              ; preds = %235
  %241 = load %struct.pattern*, %struct.pattern** %10, align 8
  %242 = getelementptr inbounds %struct.pattern, %struct.pattern* %241, i32 0, i32 3
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* %22, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load i32, i32* %26, align 4
  %247 = load i32, i32* %27, align 4
  %248 = load i32, i32* %28, align 4
  %249 = load i32, i32* %29, align 4
  %250 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.16, i64 0, i64 0), i8* %243, i32 %244, i32 %245, i32 %246, i32 %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %240, %239
  %252 = load i32, i32* %14, align 4
  %253 = load i32, i32* %26, align 4
  %254 = add nsw i32 %252, %253
  %255 = load i32, i32* @board_size, align 4
  %256 = icmp ult i32 %254, %255
  br i1 %256, label %257, label %275

257:                                              ; preds = %251
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %27, align 4
  %260 = add nsw i32 %258, %259
  %261 = load i32, i32* @board_size, align 4
  %262 = icmp ult i32 %260, %261
  br i1 %262, label %263, label %275

263:                                              ; preds = %257
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %28, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* @board_size, align 4
  %268 = icmp ult i32 %266, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %263
  %270 = load i32, i32* %15, align 4
  %271 = load i32, i32* %29, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32, i32* @board_size, align 4
  %274 = icmp ult i32 %272, %273
  br i1 %274, label %276, label %275

275:                                              ; preds = %269, %263, %257, %251
  br label %444

276:                                              ; preds = %269
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %23, align 4
  br label %277

277:                                              ; preds = %401, %276
  %278 = load i32, i32* %23, align 4
  %279 = load %struct.pattern*, %struct.pattern** %10, align 8
  %280 = getelementptr inbounds %struct.pattern, %struct.pattern* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = icmp slt i32 %278, %281
  br i1 %282, label %283, label %404

283:                                              ; preds = %277
  %284 = load %struct.pattern*, %struct.pattern** %10, align 8
  %285 = getelementptr inbounds %struct.pattern, %struct.pattern* %284, i32 0, i32 0
  %286 = load %struct.patval*, %struct.patval** %285, align 8
  %287 = load i32, i32* %23, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.patval, %struct.patval* %286, i64 %288
  %290 = getelementptr inbounds %struct.patval, %struct.patval* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  store i32 %291, i32* %31, align 4
  %292 = load %struct.pattern*, %struct.pattern** %10, align 8
  %293 = getelementptr inbounds %struct.pattern, %struct.pattern* %292, i32 0, i32 0
  %294 = load %struct.patval*, %struct.patval** %293, align 8
  %295 = load i32, i32* %23, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.patval, %struct.patval* %294, i64 %296
  %298 = getelementptr inbounds %struct.patval, %struct.patval* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %300
  %302 = load i32, i32* %22, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [8 x i32], [8 x i32]* %301, i64 0, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %7, align 4
  %307 = add nsw i32 %305, %306
  store i32 %307, i32* %30, align 4
  %308 = load i32, i32* %30, align 4
  %309 = icmp ult i32 %308, 421
  br i1 %309, label %310, label %318

310:                                              ; preds = %283
  %311 = load i32, i32* %30, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %312
  %314 = load i8, i8* %313, align 1
  %315 = zext i8 %314 to i32
  %316 = icmp ne i32 %315, 3
  br i1 %316, label %317, label %318

317:                                              ; preds = %310
  br label %325

318:                                              ; preds = %310, %283
  %319 = load i32, i32* %30, align 4
  %320 = sdiv i32 %319, 20
  %321 = sub nsw i32 %320, 1
  %322 = load i32, i32* %30, align 4
  %323 = srem i32 %322, 20
  %324 = sub nsw i32 %323, 1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 351, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %321, i32 %324)
  br label %325

325:                                              ; preds = %318, %317
  %326 = load i32, i32* %30, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = load i32, i32* %9, align 4
  %332 = sub nsw i32 %331, 1
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @and_mask, i64 0, i64 %333
  %335 = load i32, i32* %31, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [8 x i32], [8 x i32]* %334, i64 0, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = and i32 %330, %338
  %340 = load i32, i32* %9, align 4
  %341 = sub nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [2 x [8 x i32]], [2 x [8 x i32]]* @val_mask, i64 0, i64 %342
  %344 = load i32, i32* %31, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [8 x i32], [8 x i32]* %343, i64 0, i64 %345
  %347 = load i32, i32* %346, align 4
  %348 = icmp ne i32 %339, %347
  br i1 %348, label %349, label %350

349:                                              ; preds = %325
  br label %431

350:                                              ; preds = %325
  %351 = load i8*, i8** %12, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %379

353:                                              ; preds = %350
  %354 = load i32, i32* %30, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %355
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %379

360:                                              ; preds = %353
  %361 = load i8*, i8** %12, align 8
  %362 = load i32, i32* %30, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8, i8* %361, i64 %363
  %365 = load i8, i8* %364, align 1
  %366 = icmp ne i8 %365, 0
  br i1 %366, label %367, label %368

367:                                              ; preds = %360
  store i32 1, i32* %24, align 4
  br label %378

368:                                              ; preds = %360
  %369 = load i32, i32* %30, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %370
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i32
  %374 = load i32, i32* %9, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %377

376:                                              ; preds = %368
  store i32 1, i32* %25, align 4
  br label %377

377:                                              ; preds = %376, %368
  br label %378

378:                                              ; preds = %377, %367
  br label %379

379:                                              ; preds = %378, %353, %350
  %380 = load %struct.pattern*, %struct.pattern** %10, align 8
  %381 = getelementptr inbounds %struct.pattern, %struct.pattern* %380, i32 0, i32 12
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %30, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %384
  %386 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %385, i32 0, i32 16
  %387 = load i32, i32* %386, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i64 0, i64 %388
  %390 = load i32, i32* %30, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %391
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i64
  %395 = getelementptr inbounds [3 x i32], [3 x i32]* %389, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = and i32 %382, %396
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %379
  br label %431

400:                                              ; preds = %379
  br label %401

401:                                              ; preds = %400
  %402 = load i32, i32* %23, align 4
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %23, align 4
  br label %277, !llvm.loop !16

404:                                              ; preds = %277
  %405 = load i8*, i8** %12, align 8
  %406 = icmp ne i8* %405, null
  br i1 %406, label %407, label %411

407:                                              ; preds = %404
  %408 = load i32, i32* %24, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %411, label %410

410:                                              ; preds = %407
  br label %431

411:                                              ; preds = %407, %404
  %412 = load i8*, i8** %12, align 8
  %413 = icmp ne i8* %412, null
  br i1 %413, label %414, label %424

414:                                              ; preds = %411
  %415 = load %struct.pattern*, %struct.pattern** %10, align 8
  %416 = getelementptr inbounds %struct.pattern, %struct.pattern* %415, i32 0, i32 12
  %417 = load i32, i32* %416, align 8
  %418 = and i32 %417, 128
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %414
  %421 = load i32, i32* %25, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %424, label %423

423:                                              ; preds = %420
  br label %431

424:                                              ; preds = %420, %414, %411
  %425 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %8, align 8
  %426 = load i32, i32* %7, align 4
  %427 = load i32, i32* %9, align 4
  %428 = load %struct.pattern*, %struct.pattern** %10, align 8
  %429 = load i32, i32* %22, align 4
  %430 = load i8*, i8** %11, align 8
  call void %425(i32 %426, i32 %427, %struct.pattern* %428, i32 %429, i8* %430)
  br label %431

431:                                              ; preds = %424, %423, %410, %399, %349
  %432 = load i32, i32* @debug, align 4
  %433 = and i32 %432, 16
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %431
  br label %443

436:                                              ; preds = %431
  %437 = load %struct.pattern*, %struct.pattern** %10, align 8
  %438 = getelementptr inbounds %struct.pattern, %struct.pattern* %437, i32 0, i32 3
  %439 = load i8*, i8** %438, align 8
  %440 = load i32, i32* %22, align 4
  %441 = load i32, i32* %7, align 4
  %442 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* %439, i32 %440, i32 %441)
  br label %443

443:                                              ; preds = %436, %435
  br label %444

444:                                              ; preds = %443, %275
  %445 = load i32, i32* %22, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %22, align 4
  %447 = load i32, i32* %21, align 4
  %448 = icmp slt i32 %446, %447
  br i1 %448, label %147, label %449, !llvm.loop !17

449:                                              ; preds = %444
  br label %450

450:                                              ; preds = %449, %136
  %451 = load %struct.pattern*, %struct.pattern** %10, align 8
  %452 = getelementptr inbounds %struct.pattern, %struct.pattern* %451, i32 1
  store %struct.pattern* %452, %struct.pattern** %10, align 8
  %453 = getelementptr inbounds %struct.pattern, %struct.pattern* %452, i32 0, i32 0
  %454 = load %struct.patval*, %struct.patval** %453, align 8
  %455 = icmp ne %struct.patval* %454, null
  br i1 %455, label %130, label %456, !llvm.loop !18

456:                                              ; preds = %450
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_dfa_matchpat(%struct.dfa_rt* %0, i32 %1, void (i32, i32, %struct.pattern*, i32, i8*)* %2, i32 %3, %struct.pattern* %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca %struct.dfa_rt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pattern*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4000 x i32], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.dfa_rt* %0, %struct.dfa_rt** %9, align 8
  store i32 %1, i32* %10, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %2, void (i32, i32, %struct.pattern*, i32, i8*)** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.pattern* %4, %struct.pattern** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  %24 = getelementptr inbounds [4000 x i32], [4000 x i32]* %19, i64 0, i64 0
  store i32* %24, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %25, 20
  %27 = sub nsw i32 %26, 1
  %28 = mul nsw i32 84, %27
  %29 = load i32, i32* %10, align 4
  %30 = srem i32 %29, 20
  %31 = sub nsw i32 %30, 1
  %32 = add nsw i32 %28, %31
  %33 = add nsw i32 %32, 1785
  store i32 %33, i32* %23, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %34, 421
  br i1 %35, label %36, label %44

36:                                               ; preds = %8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp ne i32 %41, 3
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %51

44:                                               ; preds = %36, %8
  %45 = load i32, i32* %10, align 4
  %46 = sdiv i32 %45, 20
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* %10, align 4
  %49 = srem i32 %48, 20
  %50 = sub nsw i32 %49, 1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 578, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %47, i32 %50)
  br label %51

51:                                               ; preds = %44, %43
  store i32 0, i32* %21, align 4
  store i32 0, i32* %17, align 4
  br label %52

52:                                               ; preds = %73, %51
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 8
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.dfa_rt*, %struct.dfa_rt** %9, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %23, align 4
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @scan_for_patterns(%struct.dfa_rt* %56, i32 %57, i32 %58, i32* %59)
  %61 = load i32, i32* %21, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %21, align 4
  %63 = getelementptr inbounds [4000 x i32], [4000 x i32]* %19, i64 0, i64 0
  %64 = load i32, i32* %21, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %20, align 8
  %67 = load %struct.dfa_rt*, %struct.dfa_rt** %9, align 8
  %68 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  br label %76

72:                                               ; preds = %55
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %17, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %17, align 4
  br label %52, !llvm.loop !19

76:                                               ; preds = %71, %52
  %77 = load i32, i32* %21, align 4
  %78 = icmp slt i32 %77, 4000
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %87

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = sdiv i32 %81, 20
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %10, align 4
  %85 = srem i32 %84, 20
  %86 = sub nsw i32 %85, 1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 591, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i32 %83, i32 %86)
  br label %87

87:                                               ; preds = %80, %79
  store i32 0, i32* %22, align 4
  br label %88

88:                                               ; preds = %114, %87
  %89 = load i32, i32* %22, align 4
  %90 = load i32, i32* %21, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %88
  %93 = load i32, i32* %22, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4000 x i32], [4000 x i32]* %19, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = sdiv i32 %96, 8
  store i32 %97, i32* %18, align 4
  %98 = load i32, i32* %22, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [4000 x i32], [4000 x i32]* %19, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = srem i32 %101, 8
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.pattern*, %struct.pattern** %13, align 8
  %107 = load i32, i32* %18, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.pattern, %struct.pattern* %106, i64 %108
  %110 = load i32, i32* %17, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = load i8*, i8** %15, align 8
  %113 = load i32, i32* %16, align 4
  call void @check_pattern_light(i32 %103, void (i32, i32, %struct.pattern*, i32, i8*)* %104, i32 %105, %struct.pattern* %109, i32 %110, i8* %111, i8* %112, i32 %113)
  br label %114

114:                                              ; preds = %92
  %115 = load i32, i32* %22, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %22, align 4
  br label %88, !llvm.loop !20

117:                                              ; preds = %88
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_for_patterns(%struct.dfa_rt* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.dfa_rt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dfa_rt* %0, %struct.dfa_rt** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %104, %4
  %15 = load %struct.dfa_rt*, %struct.dfa_rt** %5, align 8
  %16 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %15, i32 0, i32 2
  %17 = load %struct.state_rt*, %struct.state_rt** %16, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.state_rt, %struct.state_rt* %17, i64 %19
  %21 = getelementptr inbounds %struct.state_rt, %struct.state_rt* %20, i32 0, i32 0
  %22 = load i16, i16* %21, align 2
  %23 = sext i16 %22 to i32
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %63, %14
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %24
  %28 = load %struct.dfa_rt*, %struct.dfa_rt** %5, align 8
  %29 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.dfa_rt*, %struct.dfa_rt** %5, align 8
  %34 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %33, i32 0, i32 3
  %35 = load %struct.attrib_rt*, %struct.attrib_rt** %34, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %35, i64 %37
  %39 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 2
  %41 = sext i16 %40 to i32
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %41, i32* %45, align 4
  br label %63

46:                                               ; preds = %27
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.dfa_rt*, %struct.dfa_rt** %5, align 8
  %49 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %48, i32 0, i32 3
  %50 = load %struct.attrib_rt*, %struct.attrib_rt** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %50, i64 %52
  %54 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  %57 = mul nsw i32 8, %56
  %58 = add nsw i32 %47, %57
  %59 = load i32*, i32** %8, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %46, %32
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  %66 = load %struct.dfa_rt*, %struct.dfa_rt** %5, align 8
  %67 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %66, i32 0, i32 3
  %68 = load %struct.attrib_rt*, %struct.attrib_rt** %67, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %68, i64 %70
  %72 = getelementptr inbounds %struct.attrib_rt, %struct.attrib_rt* %71, i32 0, i32 1
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  store i32 %74, i32* %13, align 4
  br label %24, !llvm.loop !21

75:                                               ; preds = %24
  %76 = load %struct.dfa_rt*, %struct.dfa_rt** %5, align 8
  %77 = getelementptr inbounds %struct.dfa_rt, %struct.dfa_rt* %76, i32 0, i32 2
  %78 = load %struct.state_rt*, %struct.state_rt** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.state_rt, %struct.state_rt* %78, i64 %80
  %82 = getelementptr inbounds %struct.state_rt, %struct.state_rt* %81, i32 0, i32 1
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i64 0, i64 %85
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %86, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %83, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [7056 x i32], [7056 x i32]* @dfa_p, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i16], [4 x i16]* %82, i64 0, i64 %95
  %97 = load i16, i16* %96, align 2
  %98 = zext i16 %97 to i32
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %104

104:                                              ; preds = %75
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %14, label %107, !llvm.loop !22

107:                                              ; preds = %104
  %108 = load i32, i32* %11, align 4
  %109 = icmp slt i32 %108, 1764
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %118

111:                                              ; preds = %107
  %112 = load i32, i32* %7, align 4
  %113 = sdiv i32 %112, 20
  %114 = sub nsw i32 %113, 1
  %115 = load i32, i32* %7, align 4
  %116 = srem i32 %115, 20
  %117 = sub nsw i32 %116, 1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 556, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i32 %114, i32 %117)
  br label %118

118:                                              ; preds = %111, %110
  %119 = load i32, i32* %12, align 4
  ret i32 %119
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_pattern_light(i32 %0, void (i32, i32, %struct.pattern*, i32, i8*)* %1, i32 %2, %struct.pattern* %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca void (i32, i32, %struct.pattern*, i32, i8*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.pattern*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store void (i32, i32, %struct.pattern*, i32, i8*)* %1, void (i32, i32, %struct.pattern*, i32, i8*)** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.pattern* %3, %struct.pattern** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load %struct.pattern*, %struct.pattern** %12, align 8
  %22 = getelementptr inbounds %struct.pattern, %struct.pattern* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %33

25:                                               ; preds = %8
  %26 = load i32, i32* %13, align 4
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %13, align 4
  %30 = icmp sge i32 %29, 6
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %25
  br label %198

32:                                               ; preds = %28
  br label %41

33:                                               ; preds = %8
  %34 = load i32, i32* %13, align 4
  %35 = load %struct.pattern*, %struct.pattern** %12, align 8
  %36 = getelementptr inbounds %struct.pattern, %struct.pattern* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %198

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %32
  store i32 0, i32* %17, align 4
  br label %42

42:                                               ; preds = %152, %41
  %43 = load i32, i32* %17, align 4
  %44 = load %struct.pattern*, %struct.pattern** %12, align 8
  %45 = getelementptr inbounds %struct.pattern, %struct.pattern* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %155

48:                                               ; preds = %42
  %49 = load %struct.pattern*, %struct.pattern** %12, align 8
  %50 = getelementptr inbounds %struct.pattern, %struct.pattern* %49, i32 0, i32 0
  %51 = load %struct.patval*, %struct.patval** %50, align 8
  %52 = load i32, i32* %17, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.patval, %struct.patval* %51, i64 %53
  %55 = getelementptr inbounds %struct.patval, %struct.patval* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %57
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %58, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ult i32 %65, 421
  br i1 %66, label %67, label %75

67:                                               ; preds = %48
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp ne i32 %72, 3
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %82

75:                                               ; preds = %67, %48
  %76 = load i32, i32* %20, align 4
  %77 = sdiv i32 %76, 20
  %78 = sub nsw i32 %77, 1
  %79 = load i32, i32* %20, align 4
  %80 = srem i32 %79, 20
  %81 = sub nsw i32 %80, 1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 643, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 %78, i32 %81)
  br label %82

82:                                               ; preds = %75, %74
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %115, label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %15, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load i32, i32* %20, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %88
  %96 = load i8*, i8** %15, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 1, i32* %18, align 4
  br label %113

103:                                              ; preds = %95
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i32 1, i32* %19, align 4
  br label %112

112:                                              ; preds = %111, %103
  br label %113

113:                                              ; preds = %112, %102
  br label %114

114:                                              ; preds = %113, %88, %85
  br label %115

115:                                              ; preds = %114, %82
  %116 = load i32, i32* %20, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %118, i32 0, i32 16
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %120, 4
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %130

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  %125 = sdiv i32 %124, 20
  %126 = sub nsw i32 %125, 1
  %127 = load i32, i32* %9, align 4
  %128 = srem i32 %127, 20
  %129 = sub nsw i32 %128, 1
  call void @abortgo(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i32 656, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %126, i32 %129)
  br label %130

130:                                              ; preds = %123, %122
  %131 = load %struct.pattern*, %struct.pattern** %12, align 8
  %132 = getelementptr inbounds %struct.pattern, %struct.pattern* %131, i32 0, i32 12
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %20, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %136, i32 0, i32 16
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @class_mask, i64 0, i64 %139
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i64
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %140, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %133, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %130
  br label %186

151:                                              ; preds = %130
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %17, align 4
  br label %42, !llvm.loop !23

155:                                              ; preds = %42
  %156 = load i32, i32* %16, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %179, label %158

158:                                              ; preds = %155
  %159 = load i8*, i8** %15, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  br label %186

165:                                              ; preds = %161, %158
  %166 = load i8*, i8** %15, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %178

168:                                              ; preds = %165
  %169 = load %struct.pattern*, %struct.pattern** %12, align 8
  %170 = getelementptr inbounds %struct.pattern, %struct.pattern* %169, i32 0, i32 12
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, 128
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %168
  %175 = load i32, i32* %19, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  br label %186

178:                                              ; preds = %174, %168, %165
  br label %179

179:                                              ; preds = %178, %155
  %180 = load void (i32, i32, %struct.pattern*, i32, i8*)*, void (i32, i32, %struct.pattern*, i32, i8*)** %10, align 8
  %181 = load i32, i32* %9, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load %struct.pattern*, %struct.pattern** %12, align 8
  %184 = load i32, i32* %13, align 4
  %185 = load i8*, i8** %14, align 8
  call void %180(i32 %181, i32 %182, %struct.pattern* %183, i32 %184, i8* %185)
  br label %186

186:                                              ; preds = %179, %177, %164, %150
  %187 = load i32, i32* @debug, align 4
  %188 = and i32 %187, 16
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %191, label %190

190:                                              ; preds = %186
  br label %198

191:                                              ; preds = %186
  %192 = load %struct.pattern*, %struct.pattern** %12, align 8
  %193 = getelementptr inbounds %struct.pattern, %struct.pattern* %192, i32 0, i32 3
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %9, align 4
  %197 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i8* %194, i32 %195, i32 %196)
  br label %198

198:                                              ; preds = %31, %39, %191, %190
  ret void
}

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
!17 = distinct !{!17, !5}
!18 = distinct !{!18, !5}
!19 = distinct !{!19, !5}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
