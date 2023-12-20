; ModuleID = 'dfa.c'
source_filename = "dfa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.dfa = type { [80 x i8], i32, %struct.state*, i32, i32, %struct.attrib*, i32, i32 }
%struct.state = type { i32, [4 x i32] }
%struct.attrib = type { i32, i32 }
%struct.test_array = type { [4096 x %struct.entry*] }
%struct.entry = type { i32, i32, i32, %struct.entry* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.patval_b = type { i32, i32, i32 }

@dfa_verbose = dso_local global i32 0, align 4
@convert = dso_local constant [3 x [4 x i32]] [[4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], [4 x i32] [i32 0, i32 1, i32 2, i32 3], [4 x i32] [i32 0, i32 2, i32 1, i32 3]], align 16
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [23 x i8] c"Building spiral order\0A\00", align 1
@generator = internal constant [4 x i32] [i32 84, i32 1, i32 -84, i32 -1], align 16
@transformation2 = external dso_local constant [8 x [2 x [2 x i32]]], align 16
@line = internal global i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.62, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [12 x i8] c" name : %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c" Nb states :  %7d, max= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c" Nb Indexes : %7d, max= %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c" memory needed : %d Mb\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c" state  |   .    |   O    |   X    |   #    |  att \0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" %6d |\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c" %6d | %6d | %6d |\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c" %5d:\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c" ...\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"noname \00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"dfa %s is born :)\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"dfa %s is dead :(\0A\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"p_to != p_from\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"dfa.c\00", align 1
@__PRETTY_FUNCTION__.copy_dfa = private unnamed_addr constant [32 x i8] c"void copy_dfa(dfa_t *, dfa_t *)\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"dfa_minmax_delta(pdfa, -1, 1) > 0\00", align 1
@__PRETTY_FUNCTION__.print_c_dfa = private unnamed_addr constant [48 x i8] c"void print_c_dfa(FILE *, const char *, dfa_t *)\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"#error too many states\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"Error: The dfa states are too disperse. Can't fit delta into a short.\0A\00", align 1
@.str.20 = private unnamed_addr constant [62 x i8] c"Error: Too many index entries. Can't fit delta into a short.\0A\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"\0A#include \22dfa.h\22\0A\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"static const state_rt_t state_%s[%d] = {\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"{%d,\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"(n == 0) || ((n - i > 0) && (n - i < 65535))\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"}},%s\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"static const attrib_rt_t idx_%s[%d] = {\0A\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"{%d,%d},%s\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"static dfa_rt_t dfa_%s = {\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c" \22%s\22,\0A\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c" %d,\0A\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"state_%s,\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"idx_%s\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.39 = private unnamed_addr constant [11 x i8] c"dfa: init\0A\00", align 1
@dfa_was_initialized = internal global i32 0, align 4
@spiral = dso_local global [1764 x [8 x i32]] zeroinitializer, align 16
@aux_dfa = internal global [33 x %struct.dfa] zeroinitializer, align 16
@.str.40 = private unnamed_addr constant [8 x i8] c"binAux \00", align 1
@aux_temp = internal global %struct.dfa zeroinitializer, align 8
@.str.41 = private unnamed_addr constant [9 x i8] c"tempAux \00", align 1
@dfa_p = dso_local global [7056 x i32] zeroinitializer, align 16
@.str.42 = private unnamed_addr constant [10 x i8] c"dfa: end\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"next_index <= 3\00", align 1
@__PRETTY_FUNCTION__.dfa_minmax_delta = private unnamed_addr constant [40 x i8] c"int dfa_minmax_delta(dfa_t *, int, int)\00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"state_to[i] > 0\00", align 1
@__PRETTY_FUNCTION__.dfa_shuffle = private unnamed_addr constant [26 x i8] c"void dfa_shuffle(dfa_t *)\00", align 1
@aux_count = internal global i32 0, align 4
@.str.45 = private unnamed_addr constant [17 x i8] c"strrot[i] == '$'\00", align 1
@__PRETTY_FUNCTION__.dfa_add_string = private unnamed_addr constant [54 x i8] c"float dfa_add_string(dfa_t *, const char *, int, int)\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"j < 21*21*4+1\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"Adding to dfa %s the string: %s\0A\00", align 1
@.str.48 = private unnamed_addr constant [40 x i8] c"  pat_ind: %d; rotation: %d at bin: %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"dfa_was_initialized > 0\00", align 1
@.str.50 = private unnamed_addr constant [19 x i8] c"pdfa != ((void*)0)\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"dfa_was_initialized\00", align 1
@__PRETTY_FUNCTION__.pattern_2_string = private unnamed_addr constant [82 x i8] c"void pattern_2_string(struct pattern *, struct patval_b *, char *, int, int, int)\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"converting pattern into string.\0A\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@att2val = internal constant [8 x i8] c".XOxo,a!", align 1
@.str.55 = private unnamed_addr constant [66 x i8] c"work_space[m + elements[k].x - ci][n + elements[k].y - cj] == '?'\00", align 1
@.str.56 = private unnamed_addr constant [33 x i8] c"m + i < 21 * 3 && m + i < 21 * 3\00", align 1
@.str.57 = private unnamed_addr constant [15 x i8] c"XOxo.,a!?$#|-+\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"strchr(\22XOxo.,a!?$#|-+\22, str[k])\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"XOxo.,a!\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"#|-+\00", align 1
@.str.61 = private unnamed_addr constant [12 x i8] c"k < 21*21*4\00", align 1
@.str.62 = private unnamed_addr constant [54 x i8] c"----------------------------------------------------\0A\00", align 1
@.str.63 = private unnamed_addr constant [17 x i8] c"Resizing dfa %s\0A\00", align 1
@.str.64 = private unnamed_addr constant [37 x i8] c"pdfa->last_state <= pdfa->max_states\00", align 1
@__PRETTY_FUNCTION__.resize_dfa = private unnamed_addr constant [35 x i8] c"void resize_dfa(dfa_t *, int, int)\00", align 1
@.str.65 = private unnamed_addr constant [38 x i8] c"pdfa->last_index <= pdfa->max_indexes\00", align 1
@.str.66 = private unnamed_addr constant [27 x i8] c"No memory left for dfa: %s\00", align 1
@.str.67 = private unnamed_addr constant [27 x i8] c"Product between %s and %s\0A\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"result in %s\0A\00", align 1
@gpout = internal global %struct.dfa* null, align 8
@gpleft = internal global %struct.dfa* null, align 8
@gpright = internal global %struct.dfa* null, align 8
@gtest = internal global %struct.test_array zeroinitializer, align 8
@.str.69 = private unnamed_addr constant [8 x i8] c"val > 0\00", align 1
@__PRETTY_FUNCTION__.add_to_entry_list = private unnamed_addr constant [50 x i8] c"void add_to_entry_list(entry_t **, int, int, int)\00", align 1
@.str.70 = private unnamed_addr constant [36 x i8] c"!get_from_entry_list(*pplist, l, r)\00", align 1
@.str.71 = private unnamed_addr constant [30 x i8] c"No memory left for new entry\0A\00", align 1
@.str.72 = private unnamed_addr constant [31 x i8] c"nextl < gpleft->last_state + 1\00", align 1
@__PRETTY_FUNCTION__.do_sync_product = private unnamed_addr constant [31 x i8] c"void do_sync_product(int, int)\00", align 1
@.str.73 = private unnamed_addr constant [32 x i8] c"nextr < gpright->last_state + 1\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"linear dfa in %s with string: %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"str != ((void*)0)\00", align 1
@__PRETTY_FUNCTION__.create_dfa = private unnamed_addr constant [44 x i8] c"void create_dfa(dfa_t *, const char *, int)\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"pdfa->max_states > 1\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"pdfa->max_indexes > 1\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"$#+-|OoXx.?,!a*\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"$?.ox,a!*\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"$?Oo\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"$?Xx\00", align 1
@.str.82 = private unnamed_addr constant [6 x i8] c"$#+-|\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buildSpiralOrder([8 x i32]* %0) #0 {
  %2 = alloca [8 x i32]*, align 8
  %3 = alloca [7056 x i32], align 16
  %4 = alloca [14112 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store [8 x i32]* %0, [8 x i32]** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* @dfa_verbose, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %28, %20
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 7056
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [7056 x i32], [7056 x i32]* %3, i64 0, i64 %26
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %13, align 4
  br label %21, !llvm.loop !4

31:                                               ; preds = %21
  store i32 21, i32* %7, align 4
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 63
  br i1 %34, label %35, label %53

35:                                               ; preds = %32
  store i32 21, i32* %8, align 4
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 63
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = mul nsw i32 84, %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [7056 x i32], [7056 x i32]* %3, i64 0, i64 %44
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %36, !llvm.loop !6

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %32, !llvm.loop !7

53:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  store i32 1, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [14112 x i32], [14112 x i32]* %4, i64 0, i64 %55
  store i32 3570, i32* %56, align 4
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [14112 x i32], [14112 x i32]* %4, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [7056 x i32], [7056 x i32]* %3, i64 0, i64 %61
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %113, %53
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 1764
  br i1 %65, label %66, label %114

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [14112 x i32], [14112 x i32]* %4, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %71, 3570
  %73 = load [8 x i32]*, [8 x i32]** %2, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %73, i64 %75
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %76, i64 0, i64 0
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  store i32 0, i32* %11, align 4
  br label %80

80:                                               ; preds = %110, %66
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 4
  br i1 %82, label %83, label %113

83:                                               ; preds = %80
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* @generator, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [7056 x i32], [7056 x i32]* %3, i64 0, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [14112 x i32], [14112 x i32]* %4, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [7056 x i32], [7056 x i32]* %3, i64 0, i64 %105
  store i32 1, i32* %106, align 4
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %95, %83
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %80, !llvm.loop !8

113:                                              ; preds = %80
  br label %63, !llvm.loop !9

114:                                              ; preds = %63
  store i32 0, i32* %11, align 4
  br label %115

115:                                              ; preds = %202, %114
  %116 = load i32, i32* %11, align 4
  %117 = icmp slt i32 %116, 1764
  br i1 %117, label %118, label %205

118:                                              ; preds = %115
  %119 = load [8 x i32]*, [8 x i32]** %2, align 8
  %120 = load i32, i32* %11, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %119, i64 %121
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* %122, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = srem i32 %124, 84
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp sge i32 %126, 42
  br i1 %127, label %128, label %131

128:                                              ; preds = %118
  %129 = load i32, i32* %10, align 4
  %130 = sub nsw i32 %129, 84
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %128, %118
  %132 = load i32, i32* %10, align 4
  %133 = icmp slt i32 %132, -42
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 84
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %134, %131
  %138 = load [8 x i32]*, [8 x i32]** %2, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [8 x i32], [8 x i32]* %138, i64 %140
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* %141, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %10, align 4
  %145 = sub nsw i32 %143, %144
  %146 = sdiv i32 %145, 84
  store i32 %146, i32* %9, align 4
  store i32 1, i32* %12, align 4
  br label %147

147:                                              ; preds = %198, %137
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 8
  br i1 %149, label %150, label %201

150:                                              ; preds = %147
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %153
  %155 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %154, i64 0, i64 0
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %155, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = load i32, i32* %9, align 4
  %159 = mul nsw i32 %157, %158
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %161
  %163 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %162, i64 0, i64 0
  %164 = getelementptr inbounds [2 x i32], [2 x i32]* %163, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %10, align 4
  %167 = mul nsw i32 %165, %166
  %168 = add nsw i32 %159, %167
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %170
  %172 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %171, i64 0, i64 1
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %172, i64 0, i64 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %9, align 4
  %176 = mul nsw i32 %174, %175
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [8 x [2 x [2 x i32]]], [8 x [2 x [2 x i32]]]* @transformation2, i64 0, i64 %178
  %180 = getelementptr inbounds [2 x [2 x i32]], [2 x [2 x i32]]* %179, i64 0, i64 1
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %180, i64 0, i64 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %10, align 4
  %184 = mul nsw i32 %182, %183
  %185 = add nsw i32 %176, %184
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %151
  %187 = load i32, i32* %7, align 4
  %188 = mul nsw i32 84, %187
  %189 = load i32, i32* %8, align 4
  %190 = add nsw i32 %188, %189
  %191 = load [8 x i32]*, [8 x i32]** %2, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [8 x i32], [8 x i32]* %191, i64 %193
  %195 = load i32, i32* %12, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [8 x i32], [8 x i32]* %194, i64 0, i64 %196
  store i32 %190, i32* %197, align 4
  br label %198

198:                                              ; preds = %186
  %199 = load i32, i32* %12, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %12, align 4
  br label %147, !llvm.loop !10

201:                                              ; preds = %147
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %11, align 4
  br label %115, !llvm.loop !11

205:                                              ; preds = %115
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfa_size(%struct.dfa* %0) #0 {
  %2 = alloca %struct.dfa*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %2, align 8
  %5 = load %struct.dfa*, %struct.dfa** %2, align 8
  %6 = getelementptr inbounds %struct.dfa, %struct.dfa* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  %9 = sext i32 %8 to i64
  %10 = mul i64 %9, 10
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %3, align 4
  %12 = load %struct.dfa*, %struct.dfa** %2, align 8
  %13 = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 104
  %24 = udiv i64 %23, 1024
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_dfa(%struct._IO_FILE* %0, %struct.dfa* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.dfa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.dfa* %1, %struct.dfa** %4, align 8
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %10 = load i8*, i8** @line, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* %10)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = load %struct.dfa*, %struct.dfa** %4, align 8
  %14 = getelementptr inbounds %struct.dfa, %struct.dfa* %13, i32 0, i32 0
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %18 = load %struct.dfa*, %struct.dfa** %4, align 8
  %19 = getelementptr inbounds %struct.dfa, %struct.dfa* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  %22 = load %struct.dfa*, %struct.dfa** %4, align 8
  %23 = getelementptr inbounds %struct.dfa, %struct.dfa* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %27 = load %struct.dfa*, %struct.dfa** %4, align 8
  %28 = getelementptr inbounds %struct.dfa, %struct.dfa* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dfa*, %struct.dfa** %4, align 8
  %31 = getelementptr inbounds %struct.dfa, %struct.dfa* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %35 = load %struct.dfa*, %struct.dfa** %4, align 8
  %36 = call i32 @dfa_size(%struct.dfa* %35)
  %37 = sdiv i32 %36, 1024
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %40 = load i8*, i8** @line, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* %40)
  %42 = load %struct.dfa*, %struct.dfa** %4, align 8
  %43 = call i32 @dfa_size(%struct.dfa* %42)
  %44 = icmp sgt i32 %43, 10000
  br i1 %44, label %45, label %46

45:                                               ; preds = %2
  br label %145

46:                                               ; preds = %2
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %50 = load i8*, i8** @line, align 8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %49, i8* %50)
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %136, %46
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.dfa*, %struct.dfa** %4, align 8
  %55 = getelementptr inbounds %struct.dfa, %struct.dfa* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %139

59:                                               ; preds = %52
  %60 = load %struct.dfa*, %struct.dfa** %4, align 8
  %61 = getelementptr inbounds %struct.dfa, %struct.dfa* %60, i32 0, i32 2
  %62 = load %struct.state*, %struct.state** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.state, %struct.state* %62, i64 %64
  %66 = getelementptr inbounds %struct.state, %struct.state* %65, i32 0, i32 1
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %66, i64 0, i64 0
  store i32* %67, i32** %8, align 8
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %69)
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %74, i32 %77, i32 %80)
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %85)
  %87 = load %struct.dfa*, %struct.dfa** %4, align 8
  %88 = getelementptr inbounds %struct.dfa, %struct.dfa* %87, i32 0, i32 2
  %89 = load %struct.state*, %struct.state** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.state, %struct.state* %89, i64 %91
  %93 = getelementptr inbounds %struct.state, %struct.state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %106, %59
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = icmp slt i32 %102, 10
  br label %104

104:                                              ; preds = %101, %98
  %105 = phi i1 [ false, %98 ], [ %103, %101 ]
  br i1 %105, label %106, label %127

106:                                              ; preds = %104
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %108 = load %struct.dfa*, %struct.dfa** %4, align 8
  %109 = getelementptr inbounds %struct.dfa, %struct.dfa* %108, i32 0, i32 5
  %110 = load %struct.attrib*, %struct.attrib** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.attrib, %struct.attrib* %110, i64 %112
  %114 = getelementptr inbounds %struct.attrib, %struct.attrib* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  %117 = load %struct.dfa*, %struct.dfa** %4, align 8
  %118 = getelementptr inbounds %struct.dfa, %struct.dfa* %117, i32 0, i32 5
  %119 = load %struct.attrib*, %struct.attrib** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.attrib, %struct.attrib* %119, i64 %121
  %123 = getelementptr inbounds %struct.attrib, %struct.attrib* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %98, !llvm.loop !12

127:                                              ; preds = %104
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %132 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %127
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %135 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %134, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %136

136:                                              ; preds = %133
  %137 = load i32, i32* %5, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %5, align 4
  br label %52, !llvm.loop !13

139:                                              ; preds = %52
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %141 = load i8*, i8** @line, align 8
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* %141)
  %143 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %144 = call i32 @fflush(%struct._IO_FILE* %143)
  br label %145

145:                                              ; preds = %139, %45
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @new_dfa(%struct.dfa* %0, i8* %1) #0 {
  %3 = alloca %struct.dfa*, align 8
  %4 = alloca i8*, align 8
  store %struct.dfa* %0, %struct.dfa** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dfa*, %struct.dfa** %3, align 8
  %6 = bitcast %struct.dfa* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %6, i8 0, i64 120, i1 false)
  %7 = load %struct.dfa*, %struct.dfa** %3, align 8
  call void @resize_dfa(%struct.dfa* %7, i32 250, i32 250)
  %8 = load %struct.dfa*, %struct.dfa** %3, align 8
  call void @clean_dfa(%struct.dfa* %8)
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.dfa*, %struct.dfa** %3, align 8
  %13 = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 0
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strcpy(i8* %14, i8* %15) #7
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.dfa*, %struct.dfa** %3, align 8
  %19 = getelementptr inbounds %struct.dfa, %struct.dfa* %18, i32 0, i32 0
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %21 = call i8* @strcpy(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0)) #7
  br label %22

22:                                               ; preds = %17, %11
  %23 = load i32, i32* @dfa_verbose, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = load %struct.dfa*, %struct.dfa** %3, align 8
  %28 = getelementptr inbounds %struct.dfa, %struct.dfa* %27, i32 0, i32 0
  %29 = getelementptr inbounds [80 x i8], [80 x i8]* %28, i64 0, i64 0
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i8* %29)
  br label %31

31:                                               ; preds = %25, %22
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_dfa(%struct.dfa* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dfa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.state*, align 8
  %8 = alloca %struct.attrib*, align 8
  %9 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @dfa_verbose, align 4
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = load %struct.dfa*, %struct.dfa** %4, align 8
  %15 = getelementptr inbounds %struct.dfa, %struct.dfa* %14, i32 0, i32 0
  %16 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.63, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load %struct.dfa*, %struct.dfa** %4, align 8
  %20 = getelementptr inbounds %struct.dfa, %struct.dfa* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dfa*, %struct.dfa** %4, align 8
  %23 = getelementptr inbounds %struct.dfa, %struct.dfa* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %29

27:                                               ; preds = %18
  call void @__assert_fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.64, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.resize_dfa, i64 0, i64 0)) #8
  unreachable

28:                                               ; No predecessors!
  br label %29

29:                                               ; preds = %28, %26
  %30 = load %struct.dfa*, %struct.dfa** %4, align 8
  %31 = getelementptr inbounds %struct.dfa, %struct.dfa* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.dfa*, %struct.dfa** %4, align 8
  %34 = getelementptr inbounds %struct.dfa, %struct.dfa* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = icmp sle i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %40

38:                                               ; preds = %29
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.65, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 364, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__PRETTY_FUNCTION__.resize_dfa, i64 0, i64 0)) #8
  unreachable

39:                                               ; No predecessors!
  br label %40

40:                                               ; preds = %39, %37
  %41 = load %struct.dfa*, %struct.dfa** %4, align 8
  %42 = getelementptr inbounds %struct.dfa, %struct.dfa* %41, i32 0, i32 2
  %43 = load %struct.state*, %struct.state** %42, align 8
  %44 = bitcast %struct.state* %43 to i8*
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 %46, 20
  %48 = call align 16 i8* @realloc(i8* %44, i64 %47) #7
  %49 = bitcast i8* %48 to %struct.state*
  store %struct.state* %49, %struct.state** %7, align 8
  %50 = load %struct.dfa*, %struct.dfa** %4, align 8
  %51 = getelementptr inbounds %struct.dfa, %struct.dfa* %50, i32 0, i32 5
  %52 = load %struct.attrib*, %struct.attrib** %51, align 8
  %53 = bitcast %struct.attrib* %52 to i8*
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 8
  %57 = call align 16 i8* @realloc(i8* %53, i64 %56) #7
  %58 = bitcast i8* %57 to %struct.attrib*
  store %struct.attrib* %58, %struct.attrib** %8, align 8
  %59 = load %struct.state*, %struct.state** %7, align 8
  %60 = icmp eq %struct.state* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %40
  %62 = load %struct.attrib*, %struct.attrib** %8, align 8
  %63 = icmp eq %struct.attrib* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %61, %40
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %66 = load %struct.dfa*, %struct.dfa** %4, align 8
  %67 = getelementptr inbounds %struct.dfa, %struct.dfa* %66, i32 0, i32 0
  %68 = getelementptr inbounds [80 x i8], [80 x i8]* %67, i64 0, i64 0
  %69 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.66, i64 0, i64 0), i8* %68)
  call void @exit(i32 1) #8
  unreachable

70:                                               ; preds = %61
  %71 = load %struct.dfa*, %struct.dfa** %4, align 8
  %72 = getelementptr inbounds %struct.dfa, %struct.dfa* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %84, %70
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %74
  %79 = load %struct.state*, %struct.state** %7, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.state, %struct.state* %79, i64 %81
  %83 = bitcast %struct.state* %82 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %83, i8 0, i64 20, i1 false)
  br label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %74, !llvm.loop !14

87:                                               ; preds = %74
  %88 = load %struct.dfa*, %struct.dfa** %4, align 8
  %89 = getelementptr inbounds %struct.dfa, %struct.dfa* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %101, %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load %struct.attrib*, %struct.attrib** %8, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.attrib, %struct.attrib* %96, i64 %98
  %100 = bitcast %struct.attrib* %99 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %100, i8 0, i64 8, i1 false)
  br label %101

101:                                              ; preds = %95
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %91, !llvm.loop !15

104:                                              ; preds = %91
  %105 = load %struct.state*, %struct.state** %7, align 8
  %106 = load %struct.dfa*, %struct.dfa** %4, align 8
  %107 = getelementptr inbounds %struct.dfa, %struct.dfa* %106, i32 0, i32 2
  store %struct.state* %105, %struct.state** %107, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.dfa*, %struct.dfa** %4, align 8
  %110 = getelementptr inbounds %struct.dfa, %struct.dfa* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.attrib*, %struct.attrib** %8, align 8
  %112 = load %struct.dfa*, %struct.dfa** %4, align 8
  %113 = getelementptr inbounds %struct.dfa, %struct.dfa* %112, i32 0, i32 5
  store %struct.attrib* %111, %struct.attrib** %113, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.dfa*, %struct.dfa** %4, align 8
  %116 = getelementptr inbounds %struct.dfa, %struct.dfa* %115, i32 0, i32 6
  store i32 %114, i32* %116, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_dfa(%struct.dfa* %0) #0 {
  %2 = alloca %struct.dfa*, align 8
  store %struct.dfa* %0, %struct.dfa** %2, align 8
  %3 = load %struct.dfa*, %struct.dfa** %2, align 8
  %4 = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 2
  %5 = load %struct.state*, %struct.state** %4, align 8
  %6 = bitcast %struct.state* %5 to i8*
  %7 = load %struct.dfa*, %struct.dfa** %2, align 8
  %8 = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 20
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 %11, i1 false)
  %12 = load %struct.dfa*, %struct.dfa** %2, align 8
  %13 = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 5
  %14 = load %struct.attrib*, %struct.attrib** %13, align 8
  %15 = bitcast %struct.attrib* %14 to i8*
  %16 = load %struct.dfa*, %struct.dfa** %2, align 8
  %17 = getelementptr inbounds %struct.dfa, %struct.dfa* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 %20, i1 false)
  %21 = load %struct.dfa*, %struct.dfa** %2, align 8
  %22 = getelementptr inbounds %struct.dfa, %struct.dfa* %21, i32 0, i32 4
  store i32 1, i32* %22, align 4
  %23 = load %struct.dfa*, %struct.dfa** %2, align 8
  %24 = getelementptr inbounds %struct.dfa, %struct.dfa* %23, i32 0, i32 7
  store i32 0, i32* %24, align 4
  %25 = load %struct.dfa*, %struct.dfa** %2, align 8
  %26 = getelementptr inbounds %struct.dfa, %struct.dfa* %25, i32 0, i32 5
  %27 = load %struct.attrib*, %struct.attrib** %26, align 8
  %28 = getelementptr inbounds %struct.attrib, %struct.attrib* %27, i64 0
  %29 = getelementptr inbounds %struct.attrib, %struct.attrib* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kill_dfa(%struct.dfa* %0) #0 {
  %2 = alloca %struct.dfa*, align 8
  store %struct.dfa* %0, %struct.dfa** %2, align 8
  %3 = load %struct.dfa*, %struct.dfa** %2, align 8
  %4 = getelementptr inbounds %struct.dfa, %struct.dfa* %3, i32 0, i32 2
  %5 = load %struct.state*, %struct.state** %4, align 8
  %6 = bitcast %struct.state* %5 to i8*
  call void @free(i8* %6) #7
  %7 = load %struct.dfa*, %struct.dfa** %2, align 8
  %8 = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 5
  %9 = load %struct.attrib*, %struct.attrib** %8, align 8
  %10 = bitcast %struct.attrib* %9 to i8*
  call void @free(i8* %10) #7
  %11 = load i32, i32* @dfa_verbose, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %15 = load %struct.dfa*, %struct.dfa** %2, align 8
  %16 = getelementptr inbounds %struct.dfa, %struct.dfa* %15, i32 0, i32 0
  %17 = getelementptr inbounds [80 x i8], [80 x i8]* %16, i64 0, i64 0
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i8* %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.dfa*, %struct.dfa** %2, align 8
  %21 = bitcast %struct.dfa* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 120, i1 false)
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_dfa(%struct.dfa* %0, %struct.dfa* %1) #0 {
  %3 = alloca %struct.dfa*, align 8
  %4 = alloca %struct.dfa*, align 8
  store %struct.dfa* %0, %struct.dfa** %3, align 8
  store %struct.dfa* %1, %struct.dfa** %4, align 8
  %5 = load %struct.dfa*, %struct.dfa** %3, align 8
  %6 = load %struct.dfa*, %struct.dfa** %4, align 8
  %7 = icmp ne %struct.dfa* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %11

9:                                                ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 492, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.copy_dfa, i64 0, i64 0)) #8
  unreachable

10:                                               ; No predecessors!
  br label %11

11:                                               ; preds = %10, %8
  %12 = load %struct.dfa*, %struct.dfa** %3, align 8
  %13 = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.dfa*, %struct.dfa** %4, align 8
  %16 = getelementptr inbounds %struct.dfa, %struct.dfa* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load %struct.dfa*, %struct.dfa** %3, align 8
  %21 = load %struct.dfa*, %struct.dfa** %4, align 8
  %22 = getelementptr inbounds %struct.dfa, %struct.dfa* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dfa*, %struct.dfa** %3, align 8
  %25 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  call void @resize_dfa(%struct.dfa* %20, i32 %23, i32 %26)
  br label %27

27:                                               ; preds = %19, %11
  %28 = load %struct.dfa*, %struct.dfa** %3, align 8
  %29 = getelementptr inbounds %struct.dfa, %struct.dfa* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.dfa*, %struct.dfa** %4, align 8
  %32 = getelementptr inbounds %struct.dfa, %struct.dfa* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.dfa*, %struct.dfa** %3, align 8
  %37 = load %struct.dfa*, %struct.dfa** %3, align 8
  %38 = getelementptr inbounds %struct.dfa, %struct.dfa* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dfa*, %struct.dfa** %4, align 8
  %41 = getelementptr inbounds %struct.dfa, %struct.dfa* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  call void @resize_dfa(%struct.dfa* %36, i32 %39, i32 %42)
  br label %43

43:                                               ; preds = %35, %27
  %44 = load %struct.dfa*, %struct.dfa** %3, align 8
  call void @clean_dfa(%struct.dfa* %44)
  %45 = load %struct.dfa*, %struct.dfa** %3, align 8
  %46 = getelementptr inbounds %struct.dfa, %struct.dfa* %45, i32 0, i32 2
  %47 = load %struct.state*, %struct.state** %46, align 8
  %48 = bitcast %struct.state* %47 to i8*
  %49 = load %struct.dfa*, %struct.dfa** %4, align 8
  %50 = getelementptr inbounds %struct.dfa, %struct.dfa* %49, i32 0, i32 2
  %51 = load %struct.state*, %struct.state** %50, align 8
  %52 = bitcast %struct.state* %51 to i8*
  %53 = load %struct.dfa*, %struct.dfa** %4, align 8
  %54 = getelementptr inbounds %struct.dfa, %struct.dfa* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 20, %57
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %52, i64 %58, i1 false)
  %59 = load %struct.dfa*, %struct.dfa** %3, align 8
  %60 = getelementptr inbounds %struct.dfa, %struct.dfa* %59, i32 0, i32 5
  %61 = load %struct.attrib*, %struct.attrib** %60, align 8
  %62 = bitcast %struct.attrib* %61 to i8*
  %63 = load %struct.dfa*, %struct.dfa** %4, align 8
  %64 = getelementptr inbounds %struct.dfa, %struct.dfa* %63, i32 0, i32 5
  %65 = load %struct.attrib*, %struct.attrib** %64, align 8
  %66 = bitcast %struct.attrib* %65 to i8*
  %67 = load %struct.dfa*, %struct.dfa** %4, align 8
  %68 = getelementptr inbounds %struct.dfa, %struct.dfa* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = mul i64 8, %71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %62, i8* align 4 %66, i64 %72, i1 false)
  %73 = load %struct.dfa*, %struct.dfa** %4, align 8
  %74 = getelementptr inbounds %struct.dfa, %struct.dfa* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dfa*, %struct.dfa** %3, align 8
  %77 = getelementptr inbounds %struct.dfa, %struct.dfa* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.dfa*, %struct.dfa** %4, align 8
  %79 = getelementptr inbounds %struct.dfa, %struct.dfa* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dfa*, %struct.dfa** %3, align 8
  %82 = getelementptr inbounds %struct.dfa, %struct.dfa* %81, i32 0, i32 7
  store i32 %80, i32* %82, align 4
  ret void
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_c_dfa(%struct._IO_FILE* %0, i8* %1, %struct.dfa* %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dfa*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.dfa* %2, %struct.dfa** %6, align 8
  %10 = load %struct.dfa*, %struct.dfa** %6, align 8
  %11 = call i32 @dfa_minmax_delta(%struct.dfa* %10, i32 -1, i32 1)
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %16

14:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 528, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.print_c_dfa, i64 0, i64 0)) #8
  unreachable

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %13
  %17 = load %struct.dfa*, %struct.dfa** %6, align 8
  %18 = call i32 @dfa_minmax_delta(%struct.dfa* %17, i32 -1, i32 0)
  %19 = icmp sgt i32 %18, 65535
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.19, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

25:                                               ; preds = %16
  %26 = load %struct.dfa*, %struct.dfa** %6, align 8
  %27 = getelementptr inbounds %struct.dfa, %struct.dfa* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = icmp sgt i32 %29, 65535
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.20, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

36:                                               ; preds = %25
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i64 0, i64 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct.dfa*, %struct.dfa** %6, align 8
  %42 = getelementptr inbounds %struct.dfa, %struct.dfa* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0), i8* %40, i32 %44)
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %126, %36
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.dfa*, %struct.dfa** %6, align 8
  %49 = getelementptr inbounds %struct.dfa, %struct.dfa* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  %52 = icmp ne i32 %47, %51
  br i1 %52, label %53, label %129

53:                                               ; preds = %46
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %55 = load %struct.dfa*, %struct.dfa** %6, align 8
  %56 = getelementptr inbounds %struct.dfa, %struct.dfa* %55, i32 0, i32 2
  %57 = load %struct.state*, %struct.state** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.state, %struct.state* %57, i64 %59
  %61 = getelementptr inbounds %struct.state, %struct.state* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %62)
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %114, %53
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 4
  br i1 %68, label %69, label %117

69:                                               ; preds = %66
  %70 = load %struct.dfa*, %struct.dfa** %6, align 8
  %71 = getelementptr inbounds %struct.dfa, %struct.dfa* %70, i32 0, i32 2
  %72 = load %struct.state*, %struct.state** %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.state, %struct.state* %72, i64 %74
  %76 = getelementptr inbounds %struct.state, %struct.state* %75, i32 0, i32 1
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %76, i64 0, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %69
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 %84, %85
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 %89, %90
  %92 = icmp slt i32 %91, 65535
  br i1 %92, label %93, label %94

93:                                               ; preds = %88, %69
  br label %96

94:                                               ; preds = %88, %83
  call void @__assert_fail(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 552, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.print_c_dfa, i64 0, i64 0)) #8
  unreachable

95:                                               ; No predecessors!
  br label %96

96:                                               ; preds = %95, %93
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 %101, %102
  br label %105

104:                                              ; preds = %96
  br label %105

105:                                              ; preds = %104, %100
  %106 = phi i32 [ %103, %100 ], [ 0, %104 ]
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %97, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i32 %106)
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 3
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %66, !llvm.loop !16

117:                                              ; preds = %66
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  %121 = srem i32 %120, 3
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)
  %125 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8* %124)
  br label %126

126:                                              ; preds = %117
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %7, align 4
  br label %46, !llvm.loop !17

129:                                              ; preds = %46
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %130, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %133 = load i8*, i8** %5, align 8
  %134 = load %struct.dfa*, %struct.dfa** %6, align 8
  %135 = getelementptr inbounds %struct.dfa, %struct.dfa* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  %138 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %132, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.31, i64 0, i64 0), i8* %133, i32 %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %171, %129
  %140 = load i32, i32* %7, align 4
  %141 = load %struct.dfa*, %struct.dfa** %6, align 8
  %142 = getelementptr inbounds %struct.dfa, %struct.dfa* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = icmp ne i32 %140, %144
  br i1 %145, label %146, label %174

146:                                              ; preds = %139
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %148 = load %struct.dfa*, %struct.dfa** %6, align 8
  %149 = getelementptr inbounds %struct.dfa, %struct.dfa* %148, i32 0, i32 5
  %150 = load %struct.attrib*, %struct.attrib** %149, align 8
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.attrib, %struct.attrib* %150, i64 %152
  %154 = getelementptr inbounds %struct.attrib, %struct.attrib* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.dfa*, %struct.dfa** %6, align 8
  %157 = getelementptr inbounds %struct.dfa, %struct.dfa* %156, i32 0, i32 5
  %158 = load %struct.attrib*, %struct.attrib** %157, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.attrib, %struct.attrib* %158, i64 %160
  %162 = getelementptr inbounds %struct.attrib, %struct.attrib* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %7, align 4
  %165 = add nsw i32 %164, 1
  %166 = srem i32 %165, 4
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0)
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i64 0, i64 0), i32 %155, i32 %163, i8* %169)
  br label %171

171:                                              ; preds = %146
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %139, !llvm.loop !18

174:                                              ; preds = %139
  %175 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %176 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i8* %178)
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %181 = load i8*, i8** %5, align 8
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i8* %181)
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %184 = load %struct.dfa*, %struct.dfa** %6, align 8
  %185 = getelementptr inbounds %struct.dfa, %struct.dfa* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %183, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0), i32 %186)
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %189 = load i8*, i8** %5, align 8
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %188, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0), i8* %189)
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %192 = load i8*, i8** %5, align 8
  %193 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0), i8* %192)
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %194, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.38, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dfa_minmax_delta(%struct.dfa* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dfa*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 3
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %16

14:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 904, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__PRETTY_FUNCTION__.dfa_minmax_delta, i64 0, i64 0)) #8
  unreachable

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %13
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 99999, i32* %7, align 4
  br label %21

20:                                               ; preds = %16
  store i32 -1, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %19
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %85, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.dfa*, %struct.dfa** %4, align 8
  %25 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %22
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %81, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %84

32:                                               ; preds = %29
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %80

39:                                               ; preds = %36, %32
  %40 = load %struct.dfa*, %struct.dfa** %4, align 8
  %41 = getelementptr inbounds %struct.dfa, %struct.dfa* %40, i32 0, i32 2
  %42 = load %struct.state*, %struct.state** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.state, %struct.state* %42, i64 %44
  %46 = getelementptr inbounds %struct.state, %struct.state* %45, i32 0, i32 1
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %46, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %39
  br label %81

54:                                               ; preds = %39
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %59, %60
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %63, %57
  br label %79

68:                                               ; preds = %54
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 %70, %71
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %67
  br label %80

80:                                               ; preds = %79, %36
  br label %81

81:                                               ; preds = %80, %53
  %82 = load i32, i32* %9, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %9, align 4
  br label %29, !llvm.loop !19

84:                                               ; preds = %29
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %22, !llvm.loop !20

88:                                               ; preds = %22
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfa_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @dfa_verbose, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i32, i32* @dfa_was_initialized, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @dfa_was_initialized, align 4
  call void @buildSpiralOrder([8 x i32]* getelementptr inbounds ([1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %18, %8
  %12 = load i32, i32* %2, align 4
  %13 = icmp slt i32 %12, 33
  br i1 %13, label %14, label %21

14:                                               ; preds = %11
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %16
  call void @new_dfa(%struct.dfa* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i64 0, i64 0))
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %2, align 4
  br label %11, !llvm.loop !21

21:                                               ; preds = %11
  call void @new_dfa(%struct.dfa* @aux_temp, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %29, %21
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 7056
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [7056 x i32], [7056 x i32]* @dfa_p, i64 0, i64 %27
  store i32 3, i32* %28, align 4
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %1, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %1, align 4
  br label %22, !llvm.loop !22

32:                                               ; preds = %22
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfa_end() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @dfa_verbose, align 4
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i64 0, i64 0))
  br label %7

7:                                                ; preds = %4, %0
  store i32 0, i32* %1, align 4
  br label %8

8:                                                ; preds = %15, %7
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 33
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %13
  call void @kill_dfa(%struct.dfa* %14)
  br label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %8, !llvm.loop !23

18:                                               ; preds = %8
  call void @kill_dfa(%struct.dfa* @aux_temp)
  %19 = load i32, i32* @dfa_was_initialized, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @dfa_was_initialized, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfa_shuffle(%struct.dfa* %0) #0 {
  %2 = alloca %struct.dfa*, align 8
  %3 = alloca %struct.state*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %2, align 8
  %15 = load %struct.dfa*, %struct.dfa** %2, align 8
  %16 = getelementptr inbounds %struct.dfa, %struct.dfa* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = call noalias align 16 i8* @calloc(i64 %19, i64 4) #7
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %4, align 8
  %22 = load %struct.dfa*, %struct.dfa** %2, align 8
  %23 = getelementptr inbounds %struct.dfa, %struct.dfa* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = call noalias align 16 i8* @calloc(i64 %26, i64 4) #7
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %5, align 8
  %29 = load %struct.dfa*, %struct.dfa** %2, align 8
  %30 = getelementptr inbounds %struct.dfa, %struct.dfa* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 4
  %35 = call noalias align 16 i8* @malloc(i64 %34) #7
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %6, align 8
  %37 = load %struct.dfa*, %struct.dfa** %2, align 8
  %38 = getelementptr inbounds %struct.dfa, %struct.dfa* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 4
  %43 = call noalias align 16 i8* @malloc(i64 %42) #7
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** %7, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 1, i32* %46, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 0, i32* %48, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 0, i32* %50, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 1, i32* %52, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 1, i32* %54, align 4
  store i32 2, i32* %9, align 4
  br label %55

55:                                               ; preds = %119, %1
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %124

58:                                               ; preds = %55
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %116, %58
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %119

63:                                               ; preds = %59
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %112, %63
  %65 = load i32, i32* %13, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %115

67:                                               ; preds = %64
  %68 = load %struct.dfa*, %struct.dfa** %2, align 8
  %69 = getelementptr inbounds %struct.dfa, %struct.dfa* %68, i32 0, i32 2
  %70 = load %struct.state*, %struct.state** %69, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.state, %struct.state* %70, i64 %76
  %78 = getelementptr inbounds %struct.state, %struct.state* %77, i32 0, i32 1
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %78, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %14, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %67
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %111, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %4, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %14, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %11, align 4
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  store i32 %105, i32* %110, align 4
  br label %111

111:                                              ; preds = %92, %85, %67
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %64, !llvm.loop !24

115:                                              ; preds = %64
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %59, !llvm.loop !25

119:                                              ; preds = %59
  %120 = load i32*, i32** %6, align 8
  store i32* %120, i32** %8, align 8
  %121 = load i32*, i32** %7, align 8
  store i32* %121, i32** %6, align 8
  %122 = load i32*, i32** %8, align 8
  store i32* %122, i32** %7, align 8
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %55, !llvm.loop !26

124:                                              ; preds = %55
  %125 = load %struct.dfa*, %struct.dfa** %2, align 8
  %126 = getelementptr inbounds %struct.dfa, %struct.dfa* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 20
  %131 = call noalias align 16 i8* @malloc(i64 %130) #7
  %132 = bitcast i8* %131 to %struct.state*
  store %struct.state* %132, %struct.state** %3, align 8
  store i32 1, i32* %12, align 4
  br label %133

133:                                              ; preds = %180, %124
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.dfa*, %struct.dfa** %2, align 8
  %136 = getelementptr inbounds %struct.dfa, %struct.dfa* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = icmp sle i32 %134, %137
  br i1 %138, label %139, label %183

139:                                              ; preds = %133
  store i32 0, i32* %13, align 4
  br label %140

140:                                              ; preds = %176, %139
  %141 = load i32, i32* %13, align 4
  %142 = icmp slt i32 %141, 4
  br i1 %142, label %143, label %179

143:                                              ; preds = %140
  %144 = load %struct.dfa*, %struct.dfa** %2, align 8
  %145 = getelementptr inbounds %struct.dfa, %struct.dfa* %144, i32 0, i32 2
  %146 = load %struct.state*, %struct.state** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.state, %struct.state* %146, i64 %148
  %150 = getelementptr inbounds %struct.state, %struct.state* %149, i32 0, i32 1
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %150, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.state*, %struct.state** %3, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.state, %struct.state* %155, i64 %157
  %159 = getelementptr inbounds %struct.state, %struct.state* %158, i32 0, i32 1
  %160 = load i32, i32* %13, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %159, i64 0, i64 %161
  store i32 %154, i32* %162, align 4
  %163 = load %struct.dfa*, %struct.dfa** %2, align 8
  %164 = getelementptr inbounds %struct.dfa, %struct.dfa* %163, i32 0, i32 2
  %165 = load %struct.state*, %struct.state** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.state, %struct.state* %165, i64 %167
  %169 = getelementptr inbounds %struct.state, %struct.state* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.state*, %struct.state** %3, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.state, %struct.state* %171, i64 %173
  %175 = getelementptr inbounds %struct.state, %struct.state* %174, i32 0, i32 0
  store i32 %170, i32* %175, align 4
  br label %176

176:                                              ; preds = %143
  %177 = load i32, i32* %13, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %13, align 4
  br label %140, !llvm.loop !27

179:                                              ; preds = %140
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %12, align 4
  br label %133, !llvm.loop !28

183:                                              ; preds = %133
  store i32 1, i32* %12, align 4
  br label %184

184:                                              ; preds = %253, %183
  %185 = load i32, i32* %12, align 4
  %186 = load %struct.dfa*, %struct.dfa** %2, align 8
  %187 = getelementptr inbounds %struct.dfa, %struct.dfa* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = icmp sle i32 %185, %188
  br i1 %189, label %190, label %256

190:                                              ; preds = %184
  store i32 0, i32* %13, align 4
  br label %191

191:                                              ; preds = %232, %190
  %192 = load i32, i32* %13, align 4
  %193 = icmp slt i32 %192, 4
  br i1 %193, label %194, label %235

194:                                              ; preds = %191
  %195 = load i32*, i32** %4, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  br label %204

202:                                              ; preds = %194
  call void @__assert_fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.44, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 992, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.dfa_shuffle, i64 0, i64 0)) #8
  unreachable

203:                                              ; No predecessors!
  br label %204

204:                                              ; preds = %203, %201
  %205 = load i32*, i32** %4, align 8
  %206 = load %struct.state*, %struct.state** %3, align 8
  %207 = load i32*, i32** %5, align 8
  %208 = load i32, i32* %12, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.state, %struct.state* %206, i64 %212
  %214 = getelementptr inbounds %struct.state, %struct.state* %213, i32 0, i32 1
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [4 x i32], [4 x i32]* %214, i64 0, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %205, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.dfa*, %struct.dfa** %2, align 8
  %223 = getelementptr inbounds %struct.dfa, %struct.dfa* %222, i32 0, i32 2
  %224 = load %struct.state*, %struct.state** %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.state, %struct.state* %224, i64 %226
  %228 = getelementptr inbounds %struct.state, %struct.state* %227, i32 0, i32 1
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [4 x i32], [4 x i32]* %228, i64 0, i64 %230
  store i32 %221, i32* %231, align 4
  br label %232

232:                                              ; preds = %204
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %191, !llvm.loop !29

235:                                              ; preds = %191
  %236 = load %struct.state*, %struct.state** %3, align 8
  %237 = load i32*, i32** %5, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.state, %struct.state* %236, i64 %242
  %244 = getelementptr inbounds %struct.state, %struct.state* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.dfa*, %struct.dfa** %2, align 8
  %247 = getelementptr inbounds %struct.dfa, %struct.dfa* %246, i32 0, i32 2
  %248 = load %struct.state*, %struct.state** %247, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.state, %struct.state* %248, i64 %250
  %252 = getelementptr inbounds %struct.state, %struct.state* %251, i32 0, i32 0
  store i32 %245, i32* %252, align 4
  br label %253

253:                                              ; preds = %235
  %254 = load i32, i32* %12, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %12, align 4
  br label %184, !llvm.loop !30

256:                                              ; preds = %184
  ret void
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dfa_finalize(%struct.dfa* %0) #0 {
  %2 = alloca %struct.dfa*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %2, align 8
  %6 = load i32, i32* @aux_count, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @aux_count, align 4
  %8 = add nsw i32 %7, 33
  %9 = sub nsw i32 %8, 1
  store i32 %9, i32* %5, align 4
  br label %10

10:                                               ; preds = %56, %1
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 %11, 1
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %10
  %16 = load i32, i32* @aux_count, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %53, %15
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %56

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = srem i32 %28, 33
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %30
  %32 = load i32, i32* %3, align 4
  %33 = srem i32 %32, 33
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %34
  call void @copy_dfa(%struct.dfa* %31, %struct.dfa* %35)
  br label %50

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = srem i32 %37, 33
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %39
  %41 = load i32, i32* %3, align 4
  %42 = srem i32 %41, 33
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %43
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  %47 = srem i32 %46, 33
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %48
  call void @sync_product(%struct.dfa* %40, %struct.dfa* %44, %struct.dfa* %49)
  br label %50

50:                                               ; preds = %36, %27
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %3, align 4
  br label %18, !llvm.loop !31

56:                                               ; preds = %18
  %57 = load i32, i32* %4, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @aux_count, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* @aux_count, align 4
  %61 = load i32, i32* @aux_count, align 4
  store i32 %61, i32* %4, align 4
  br label %10, !llvm.loop !32

62:                                               ; preds = %10
  %63 = load %struct.dfa*, %struct.dfa** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = srem i32 %64, 33
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %66
  call void @copy_dfa(%struct.dfa* %63, %struct.dfa* %67)
  %68 = load %struct.dfa*, %struct.dfa** %2, align 8
  call void @compactify_att(%struct.dfa* %68)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_product(%struct.dfa* %0, %struct.dfa* %1, %struct.dfa* %2) #0 {
  %4 = alloca %struct.dfa*, align 8
  %5 = alloca %struct.dfa*, align 8
  %6 = alloca %struct.dfa*, align 8
  store %struct.dfa* %0, %struct.dfa** %4, align 8
  store %struct.dfa* %1, %struct.dfa** %5, align 8
  store %struct.dfa* %2, %struct.dfa** %6, align 8
  %7 = load %struct.dfa*, %struct.dfa** %4, align 8
  %8 = getelementptr inbounds %struct.dfa, %struct.dfa* %7, i32 0, i32 7
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @dfa_verbose, align 4
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %13 = load %struct.dfa*, %struct.dfa** %5, align 8
  %14 = getelementptr inbounds %struct.dfa, %struct.dfa* %13, i32 0, i32 0
  %15 = getelementptr inbounds [80 x i8], [80 x i8]* %14, i64 0, i64 0
  %16 = load %struct.dfa*, %struct.dfa** %6, align 8
  %17 = getelementptr inbounds %struct.dfa, %struct.dfa* %16, i32 0, i32 0
  %18 = getelementptr inbounds [80 x i8], [80 x i8]* %17, i64 0, i64 0
  %19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.67, i64 0, i64 0), i8* %15, i8* %18)
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load %struct.dfa*, %struct.dfa** %4, align 8
  %22 = getelementptr inbounds %struct.dfa, %struct.dfa* %21, i32 0, i32 0
  %23 = getelementptr inbounds [80 x i8], [80 x i8]* %22, i64 0, i64 0
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.68, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %11, %3
  %26 = load %struct.dfa*, %struct.dfa** %4, align 8
  store %struct.dfa* %26, %struct.dfa** @gpout, align 8
  %27 = load %struct.dfa*, %struct.dfa** %5, align 8
  store %struct.dfa* %27, %struct.dfa** @gpleft, align 8
  %28 = load %struct.dfa*, %struct.dfa** %6, align 8
  store %struct.dfa* %28, %struct.dfa** @gpright, align 8
  call void @new_test_array(%struct.test_array* @gtest)
  call void @add_to_test_array(%struct.test_array* @gtest, i32 1, i32 1, i32 1)
  %29 = load %struct.dfa*, %struct.dfa** %4, align 8
  %30 = getelementptr inbounds %struct.dfa, %struct.dfa* %29, i32 0, i32 4
  store i32 1, i32* %30, align 4
  call void @do_sync_product(i32 1, i32 1)
  call void @free_test_array(%struct.test_array* @gtest)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compactify_att(%struct.dfa* %0) #0 {
  %2 = alloca %struct.dfa*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %2, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.dfa*, %struct.dfa** %2, align 8
  %12 = getelementptr inbounds %struct.dfa, %struct.dfa* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = call noalias align 16 i8* @malloc(i64 %20) #7
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %6, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = call noalias align 16 i8* @malloc(i64 %26) #7
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %7, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = bitcast i32* %29 to i8*
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %30, i8 0, i64 %32, i1 false)
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = call noalias align 16 i8* @malloc(i64 %34) #7
  %36 = bitcast i8* %35 to i32*
  store i32* %36, i32** %8, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = bitcast i32* %37 to i8*
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  call void @llvm.memset.p0i8.i64(i8* align 4 %38, i8 0, i64 %40, i1 false)
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %144, %1
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %147

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load %struct.dfa*, %struct.dfa** %2, align 8
  %48 = getelementptr inbounds %struct.dfa, %struct.dfa* %47, i32 0, i32 5
  %49 = load %struct.attrib*, %struct.attrib** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.attrib, %struct.attrib* %49, i64 %51
  %53 = getelementptr inbounds %struct.attrib, %struct.attrib* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %46, i64 %55
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %45
  br label %61

61:                                               ; preds = %93, %60
  %62 = load %struct.dfa*, %struct.dfa** %2, align 8
  %63 = getelementptr inbounds %struct.dfa, %struct.dfa* %62, i32 0, i32 5
  %64 = load %struct.attrib*, %struct.attrib** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.attrib, %struct.attrib* %64, i64 %66
  %68 = getelementptr inbounds %struct.attrib, %struct.attrib* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.dfa*, %struct.dfa** %2, align 8
  %71 = getelementptr inbounds %struct.dfa, %struct.dfa* %70, i32 0, i32 5
  %72 = load %struct.attrib*, %struct.attrib** %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.attrib, %struct.attrib* %72, i64 %74
  %76 = getelementptr inbounds %struct.attrib, %struct.attrib* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %69, %77
  br i1 %78, label %79, label %99

79:                                               ; preds = %61
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  store i32 %88, i32* %92, align 4
  store i32 0, i32* %10, align 4
  br label %99

93:                                               ; preds = %79
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  br label %61, !llvm.loop !33

99:                                               ; preds = %86, %61
  br label %114

100:                                              ; preds = %45
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.dfa*, %struct.dfa** %2, align 8
  %105 = getelementptr inbounds %struct.dfa, %struct.dfa* %104, i32 0, i32 5
  %106 = load %struct.attrib*, %struct.attrib** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.attrib, %struct.attrib* %106, i64 %108
  %110 = getelementptr inbounds %struct.attrib, %struct.attrib* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %103, i64 %112
  store i32 %102, i32* %113, align 4
  br label %114

114:                                              ; preds = %100, %99
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %114
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %118, i32* %122, align 4
  br label %143

123:                                              ; preds = %114
  %124 = load i32, i32* %4, align 4
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %124, i32* %128, align 4
  %129 = load %struct.dfa*, %struct.dfa** %2, align 8
  %130 = getelementptr inbounds %struct.dfa, %struct.dfa* %129, i32 0, i32 5
  %131 = load %struct.attrib*, %struct.attrib** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.attrib, %struct.attrib* %131, i64 %133
  %135 = load %struct.dfa*, %struct.dfa** %2, align 8
  %136 = getelementptr inbounds %struct.dfa, %struct.dfa* %135, i32 0, i32 5
  %137 = load %struct.attrib*, %struct.attrib** %136, align 8
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.attrib, %struct.attrib* %137, i64 %139
  %141 = bitcast %struct.attrib* %134 to i8*
  %142 = bitcast %struct.attrib* %140 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 8, i1 false)
  br label %143

143:                                              ; preds = %123, %117
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %41, !llvm.loop !34

147:                                              ; preds = %41
  %148 = load i32*, i32** %7, align 8
  %149 = bitcast i32* %148 to i8*
  call void @free(i8* %149) #7
  %150 = load i32*, i32** %8, align 8
  %151 = bitcast i32* %150 to i8*
  call void @free(i8* %151) #7
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %220

155:                                              ; preds = %147
  %156 = load i32, i32* %4, align 4
  %157 = load %struct.dfa*, %struct.dfa** %2, align 8
  %158 = getelementptr inbounds %struct.dfa, %struct.dfa* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 4
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %185, %155
  %160 = load i32, i32* %3, align 4
  %161 = load %struct.dfa*, %struct.dfa** %2, align 8
  %162 = getelementptr inbounds %struct.dfa, %struct.dfa* %161, i32 0, i32 7
  %163 = load i32, i32* %162, align 4
  %164 = icmp sle i32 %160, %163
  br i1 %164, label %165, label %188

165:                                              ; preds = %159
  %166 = load i32*, i32** %6, align 8
  %167 = load %struct.dfa*, %struct.dfa** %2, align 8
  %168 = getelementptr inbounds %struct.dfa, %struct.dfa* %167, i32 0, i32 5
  %169 = load %struct.attrib*, %struct.attrib** %168, align 8
  %170 = load i32, i32* %3, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.attrib, %struct.attrib* %169, i64 %171
  %173 = getelementptr inbounds %struct.attrib, %struct.attrib* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %166, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.dfa*, %struct.dfa** %2, align 8
  %179 = getelementptr inbounds %struct.dfa, %struct.dfa* %178, i32 0, i32 5
  %180 = load %struct.attrib*, %struct.attrib** %179, align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.attrib, %struct.attrib* %180, i64 %182
  %184 = getelementptr inbounds %struct.attrib, %struct.attrib* %183, i32 0, i32 1
  store i32 %177, i32* %184, align 4
  br label %185

185:                                              ; preds = %165
  %186 = load i32, i32* %3, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %3, align 4
  br label %159, !llvm.loop !35

188:                                              ; preds = %159
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %215, %188
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.dfa*, %struct.dfa** %2, align 8
  %192 = getelementptr inbounds %struct.dfa, %struct.dfa* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = icmp sle i32 %190, %193
  br i1 %194, label %195, label %218

195:                                              ; preds = %189
  %196 = load i32*, i32** %6, align 8
  %197 = load %struct.dfa*, %struct.dfa** %2, align 8
  %198 = getelementptr inbounds %struct.dfa, %struct.dfa* %197, i32 0, i32 2
  %199 = load %struct.state*, %struct.state** %198, align 8
  %200 = load i32, i32* %3, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.state, %struct.state* %199, i64 %201
  %203 = getelementptr inbounds %struct.state, %struct.state* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %196, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.dfa*, %struct.dfa** %2, align 8
  %209 = getelementptr inbounds %struct.dfa, %struct.dfa* %208, i32 0, i32 2
  %210 = load %struct.state*, %struct.state** %209, align 8
  %211 = load i32, i32* %3, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.state, %struct.state* %210, i64 %212
  %214 = getelementptr inbounds %struct.state, %struct.state* %213, i32 0, i32 0
  store i32 %207, i32* %214, align 4
  br label %215

215:                                              ; preds = %195
  %216 = load i32, i32* %3, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %3, align 4
  br label %189, !llvm.loop !36

218:                                              ; preds = %189
  %219 = load %struct.dfa*, %struct.dfa** %2, align 8
  call void @compactify_att(%struct.dfa* %219)
  br label %220

220:                                              ; preds = %218, %147
  %221 = load i32*, i32** %6, align 8
  %222 = bitcast i32* %221 to i8*
  call void @free(i8* %222) #7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @dfa_add_string(%struct.dfa* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dfa*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dfa*, align 8
  %10 = alloca %struct.dfa*, align 8
  %11 = alloca float, align 4
  %12 = alloca [1765 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [1765 x i8], align 16
  store %struct.dfa* %0, %struct.dfa** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* @aux_count, align 4
  %17 = srem i32 %16, 33
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %18
  store %struct.dfa* %19, %struct.dfa** %9, align 8
  %20 = load i32, i32* @aux_count, align 4
  %21 = add nsw i32 %20, 1
  %22 = srem i32 %21, 33
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [33 x %struct.dfa], [33 x %struct.dfa]* @aux_dfa, i64 0, i64 %23
  store %struct.dfa* %24, %struct.dfa** %10, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = getelementptr inbounds [1765 x i8], [1765 x i8]* %12, i64 0, i64 0
  %29 = load i8*, i8** %6, align 8
  %30 = call i8* @strcpy(i8* %28, i8* %29) #7
  br label %109

31:                                               ; preds = %4
  %32 = getelementptr inbounds [1765 x i8], [1765 x i8]* %15, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 36, i64 1765, i1 false)
  %33 = getelementptr inbounds [1765 x i8], [1765 x i8]* %15, i64 0, i64 0
  %34 = load i8*, i8** %6, align 8
  %35 = call i8* @strcpy(i8* %33, i8* %34) #7
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @strlen(i8* %36) #9
  %38 = getelementptr inbounds [1765 x i8], [1765 x i8]* %15, i64 0, i64 %37
  store i8 36, i8* %38, align 1
  %39 = getelementptr inbounds [1765 x i8], [1765 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %39, i8 36, i64 1765, i1 false)
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %90, %31
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 882
  br i1 %42, label %43, label %93

43:                                               ; preds = %40
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %80, %43
  %45 = load i32, i32* %14, align 4
  %46 = icmp slt i32 %45, 1765
  br i1 %46, label %47, label %83

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i64 0, i64 %49
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %50, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i64 0, i64 %54
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %55, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %52, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %47
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [1765 x i8], [1765 x i8]* %12, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 36
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %71

69:                                               ; preds = %61
  call void @__assert_fail(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1061, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.dfa_add_string, i64 0, i64 0)) #8
  unreachable

70:                                               ; No predecessors!
  br label %71

71:                                               ; preds = %70, %68
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [1765 x i8], [1765 x i8]* %15, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [1765 x i8], [1765 x i8]* %12, i64 0, i64 %77
  store i8 %75, i8* %78, align 1
  br label %83

79:                                               ; preds = %47
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %44, !llvm.loop !37

83:                                               ; preds = %71, %44
  %84 = load i32, i32* %14, align 4
  %85 = icmp slt i32 %84, 1765
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %89

87:                                               ; preds = %83
  call void @__assert_fail(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1066, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.dfa_add_string, i64 0, i64 0)) #8
  unreachable

88:                                               ; No predecessors!
  br label %89

89:                                               ; preds = %88, %86
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %40, !llvm.loop !38

93:                                               ; preds = %40
  store i32 1764, i32* %14, align 4
  br label %94

94:                                               ; preds = %101, %93
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1765 x i8], [1765 x i8]* %12, i64 0, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 36
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %14, align 4
  br label %94, !llvm.loop !39

104:                                              ; preds = %94
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [1765 x i8], [1765 x i8]* %12, i64 0, i64 %107
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %104, %27
  %110 = load i32, i32* @dfa_verbose, align 4
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %114 = load %struct.dfa*, %struct.dfa** %5, align 8
  %115 = getelementptr inbounds %struct.dfa, %struct.dfa* %114, i32 0, i32 0
  %116 = getelementptr inbounds [80 x i8], [80 x i8]* %115, i64 0, i64 0
  %117 = getelementptr inbounds [1765 x i8], [1765 x i8]* %12, i64 0, i64 0
  %118 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i64 0, i64 0), i8* %116, i8* %117)
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @aux_count, align 4
  %123 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.48, i64 0, i64 0), i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %112, %109
  %125 = load i32, i32* @dfa_was_initialized, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  br label %130

128:                                              ; preds = %124
  call void @__assert_fail(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1081, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.dfa_add_string, i64 0, i64 0)) #8
  unreachable

129:                                              ; No predecessors!
  br label %130

130:                                              ; preds = %129, %127
  %131 = load %struct.dfa*, %struct.dfa** %5, align 8
  %132 = icmp ne %struct.dfa* %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  br label %136

134:                                              ; preds = %130
  call void @__assert_fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.50, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1082, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.dfa_add_string, i64 0, i64 0)) #8
  unreachable

135:                                              ; No predecessors!
  br label %136

136:                                              ; preds = %135, %133
  %137 = load %struct.dfa*, %struct.dfa** %5, align 8
  %138 = getelementptr inbounds %struct.dfa, %struct.dfa* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load i32, i32* %7, align 4
  %143 = mul nsw i32 %142, 8
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %141, %136
  %147 = getelementptr inbounds [1765 x i8], [1765 x i8]* %12, i64 0, i64 0
  %148 = load i32, i32* %7, align 4
  call void @create_dfa(%struct.dfa* @aux_temp, i8* %147, i32 %148)
  %149 = load %struct.dfa*, %struct.dfa** %9, align 8
  %150 = load %struct.dfa*, %struct.dfa** %10, align 8
  call void @sync_product(%struct.dfa* %149, %struct.dfa* %150, %struct.dfa* @aux_temp)
  %151 = load i32, i32* @aux_count, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* @aux_count, align 4
  store float 1.000000e+00, float* %11, align 4
  %153 = load %struct.dfa*, %struct.dfa** %10, align 8
  %154 = call i32 @dfa_size(%struct.dfa* %153)
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %146
  %157 = load %struct.dfa*, %struct.dfa** %9, align 8
  %158 = call i32 @dfa_size(%struct.dfa* %157)
  %159 = load %struct.dfa*, %struct.dfa** %10, align 8
  %160 = call i32 @dfa_size(%struct.dfa* %159)
  %161 = sdiv i32 %158, %160
  %162 = sitofp i32 %161 to float
  store float %162, float* %11, align 4
  br label %163

163:                                              ; preds = %156, %146
  %164 = load float, float* %11, align 4
  ret float %164
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_dfa(%struct.dfa* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dfa*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @dfa_verbose, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %12 = load %struct.dfa*, %struct.dfa** %4, align 8
  %13 = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 0
  %14 = getelementptr inbounds [80 x i8], [80 x i8]* %13, i64 0, i64 0
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.74, i64 0, i64 0), i8* %14, i8* %15)
  br label %17

17:                                               ; preds = %10, %3
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %23

21:                                               ; preds = %17
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 613, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.create_dfa, i64 0, i64 0)) #8
  unreachable

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %20
  %24 = load %struct.dfa*, %struct.dfa** %4, align 8
  %25 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %31

29:                                               ; preds = %23
  call void @__assert_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.76, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 614, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.create_dfa, i64 0, i64 0)) #8
  unreachable

30:                                               ; No predecessors!
  br label %31

31:                                               ; preds = %30, %28
  %32 = load %struct.dfa*, %struct.dfa** %4, align 8
  %33 = getelementptr inbounds %struct.dfa, %struct.dfa* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %39

37:                                               ; preds = %31
  call void @__assert_fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.77, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 615, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.create_dfa, i64 0, i64 0)) #8
  unreachable

38:                                               ; No predecessors!
  br label %39

39:                                               ; preds = %38, %36
  %40 = load %struct.dfa*, %struct.dfa** %4, align 8
  call void @clean_dfa(%struct.dfa* %40)
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %149, %39
  %42 = load i8*, i8** %5, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = call i8* @strchr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i64 0, i64 0), i32 %49) #9
  %51 = icmp ne i8* %50, null
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i1 [ false, %41 ], [ %51, %46 ]
  br i1 %53, label %54, label %152

54:                                               ; preds = %52
  %55 = load %struct.dfa*, %struct.dfa** %4, align 8
  %56 = getelementptr inbounds %struct.dfa, %struct.dfa* %55, i32 0, i32 2
  %57 = load %struct.state*, %struct.state** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.state, %struct.state* %57, i64 %59
  %61 = getelementptr inbounds %struct.state, %struct.state* %60, i32 0, i32 1
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i64 0, i64 0
  %63 = bitcast i32* %62 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %63, i8 0, i64 16, i1 false)
  %64 = load i8*, i8** %5, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call i8* @strchr(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i64 0, i64 0), i32 %66) #9
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %54
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  %72 = load %struct.dfa*, %struct.dfa** %4, align 8
  %73 = getelementptr inbounds %struct.dfa, %struct.dfa* %72, i32 0, i32 2
  %74 = load %struct.state*, %struct.state** %73, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.state, %struct.state* %74, i64 %76
  %78 = getelementptr inbounds %struct.state, %struct.state* %77, i32 0, i32 1
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %78, i64 0, i64 0
  store i32 %71, i32* %79, align 4
  br label %80

80:                                               ; preds = %69, %54
  %81 = load i8*, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i32 %83) #9
  %85 = icmp ne i8* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %80
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.dfa*, %struct.dfa** %4, align 8
  %90 = getelementptr inbounds %struct.dfa, %struct.dfa* %89, i32 0, i32 2
  %91 = load %struct.state*, %struct.state** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.state, %struct.state* %91, i64 %93
  %95 = getelementptr inbounds %struct.state, %struct.state* %94, i32 0, i32 1
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 0, i64 1
  store i32 %88, i32* %96, align 4
  br label %97

97:                                               ; preds = %86, %80
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i32 %100) #9
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = add nsw i32 %104, 1
  %106 = load %struct.dfa*, %struct.dfa** %4, align 8
  %107 = getelementptr inbounds %struct.dfa, %struct.dfa* %106, i32 0, i32 2
  %108 = load %struct.state*, %struct.state** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.state, %struct.state* %108, i64 %110
  %112 = getelementptr inbounds %struct.state, %struct.state* %111, i32 0, i32 1
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %112, i64 0, i64 2
  store i32 %105, i32* %113, align 4
  br label %114

114:                                              ; preds = %103, %97
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i64 0, i64 0), i32 %117) #9
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %114
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  %123 = load %struct.dfa*, %struct.dfa** %4, align 8
  %124 = getelementptr inbounds %struct.dfa, %struct.dfa* %123, i32 0, i32 2
  %125 = load %struct.state*, %struct.state** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.state, %struct.state* %125, i64 %127
  %129 = getelementptr inbounds %struct.state, %struct.state* %128, i32 0, i32 1
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %129, i64 0, i64 3
  store i32 %122, i32* %130, align 4
  br label %131

131:                                              ; preds = %120, %114
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %7, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.dfa*, %struct.dfa** %4, align 8
  %136 = getelementptr inbounds %struct.dfa, %struct.dfa* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = icmp sge i32 %134, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %131
  %140 = load %struct.dfa*, %struct.dfa** %4, align 8
  %141 = load %struct.dfa*, %struct.dfa** %4, align 8
  %142 = getelementptr inbounds %struct.dfa, %struct.dfa* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, 20000
  %145 = load %struct.dfa*, %struct.dfa** %4, align 8
  %146 = getelementptr inbounds %struct.dfa, %struct.dfa* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  call void @resize_dfa(%struct.dfa* %140, i32 %144, i32 %147)
  br label %148

148:                                              ; preds = %139, %131
  br label %149

149:                                              ; preds = %148
  %150 = load i8*, i8** %5, align 8
  %151 = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %151, i8** %5, align 8
  br label %41, !llvm.loop !40

152:                                              ; preds = %52
  %153 = load %struct.dfa*, %struct.dfa** %4, align 8
  %154 = getelementptr inbounds %struct.dfa, %struct.dfa* %153, i32 0, i32 2
  %155 = load %struct.state*, %struct.state** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.state, %struct.state* %155, i64 %157
  %159 = getelementptr inbounds %struct.state, %struct.state* %158, i32 0, i32 1
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %159, i64 0, i64 0
  %161 = bitcast i32* %160 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %161, i8 0, i64 16, i1 false)
  %162 = load %struct.dfa*, %struct.dfa** %4, align 8
  %163 = getelementptr inbounds %struct.dfa, %struct.dfa* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  %166 = load %struct.dfa*, %struct.dfa** %4, align 8
  %167 = getelementptr inbounds %struct.dfa, %struct.dfa* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.dfa*, %struct.dfa** %4, align 8
  %170 = getelementptr inbounds %struct.dfa, %struct.dfa* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %168, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %152
  %174 = load %struct.dfa*, %struct.dfa** %4, align 8
  %175 = load %struct.dfa*, %struct.dfa** %4, align 8
  %176 = getelementptr inbounds %struct.dfa, %struct.dfa* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.dfa*, %struct.dfa** %4, align 8
  %179 = getelementptr inbounds %struct.dfa, %struct.dfa* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 20000
  call void @resize_dfa(%struct.dfa* %174, i32 %177, i32 %181)
  br label %182

182:                                              ; preds = %173, %152
  %183 = load %struct.dfa*, %struct.dfa** %4, align 8
  %184 = getelementptr inbounds %struct.dfa, %struct.dfa* %183, i32 0, i32 5
  %185 = load %struct.attrib*, %struct.attrib** %184, align 8
  %186 = load %struct.dfa*, %struct.dfa** %4, align 8
  %187 = getelementptr inbounds %struct.dfa, %struct.dfa* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.attrib, %struct.attrib* %185, i64 %189
  %191 = bitcast %struct.attrib* %190 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %191, i8 0, i64 8, i1 false)
  %192 = load %struct.dfa*, %struct.dfa** %4, align 8
  %193 = getelementptr inbounds %struct.dfa, %struct.dfa* %192, i32 0, i32 7
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.dfa*, %struct.dfa** %4, align 8
  %196 = getelementptr inbounds %struct.dfa, %struct.dfa* %195, i32 0, i32 2
  %197 = load %struct.state*, %struct.state** %196, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.state, %struct.state* %197, i64 %199
  %201 = getelementptr inbounds %struct.state, %struct.state* %200, i32 0, i32 0
  store i32 %194, i32* %201, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.dfa*, %struct.dfa** %4, align 8
  %204 = getelementptr inbounds %struct.dfa, %struct.dfa* %203, i32 0, i32 5
  %205 = load %struct.attrib*, %struct.attrib** %204, align 8
  %206 = load %struct.dfa*, %struct.dfa** %4, align 8
  %207 = getelementptr inbounds %struct.dfa, %struct.dfa* %206, i32 0, i32 2
  %208 = load %struct.state*, %struct.state** %207, align 8
  %209 = load i32, i32* %7, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.state, %struct.state* %208, i64 %210
  %212 = getelementptr inbounds %struct.state, %struct.state* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.attrib, %struct.attrib* %205, i64 %214
  %216 = getelementptr inbounds %struct.attrib, %struct.attrib* %215, i32 0, i32 0
  store i32 %202, i32* %216, align 4
  %217 = load %struct.dfa*, %struct.dfa** %4, align 8
  %218 = getelementptr inbounds %struct.dfa, %struct.dfa* %217, i32 0, i32 5
  %219 = load %struct.attrib*, %struct.attrib** %218, align 8
  %220 = load %struct.dfa*, %struct.dfa** %4, align 8
  %221 = getelementptr inbounds %struct.dfa, %struct.dfa* %220, i32 0, i32 2
  %222 = load %struct.state*, %struct.state** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.state, %struct.state* %222, i64 %224
  %226 = getelementptr inbounds %struct.state, %struct.state* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.attrib, %struct.attrib* %219, i64 %228
  %230 = getelementptr inbounds %struct.attrib, %struct.attrib* %229, i32 0, i32 1
  store i32 0, i32* %230, align 4
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.dfa*, %struct.dfa** %4, align 8
  %233 = getelementptr inbounds %struct.dfa, %struct.dfa* %232, i32 0, i32 4
  store i32 %231, i32* %233, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pattern_2_string(%struct.pattern* %0, %struct.patval_b* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.pattern*, align 8
  %8 = alloca %struct.patval_b*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [84 x [84 x i8]], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store %struct.pattern* %0, %struct.pattern** %7, align 8
  store %struct.patval_b* %1, %struct.patval_b** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 42, %23
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 42, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* @dfa_was_initialized, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %6
  br label %32

30:                                               ; preds = %6
  call void @__assert_fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1118, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.pattern_2_string, i64 0, i64 0)) #8
  unreachable

31:                                               ; No predecessors!
  br label %32

32:                                               ; preds = %31, %29
  %33 = load i8*, i8** %9, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %33, i8 0, i64 1764, i1 false)
  %34 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 0
  %35 = bitcast [84 x i8]* %34 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 35, i64 7056, i1 false)
  %36 = load i32, i32* @dfa_verbose, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.52, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  store i32 21, i32* %19, align 4
  br label %42

42:                                               ; preds = %60, %41
  %43 = load i32, i32* %19, align 4
  %44 = icmp ne i32 %43, 63
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  store i32 21, i32* %20, align 4
  br label %46

46:                                               ; preds = %56, %45
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 63
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %51
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [84 x i8], [84 x i8]* %52, i64 0, i64 %54
  store i8 36, i8* %55, align 1
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %20, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %20, align 4
  br label %46, !llvm.loop !41

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %19, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %19, align 4
  br label %42, !llvm.loop !42

63:                                               ; preds = %42
  %64 = load %struct.pattern*, %struct.pattern** %7, align 8
  %65 = getelementptr inbounds %struct.pattern, %struct.pattern* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %14, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %19, align 4
  br label %69

69:                                               ; preds = %104, %63
  %70 = load i32, i32* %19, align 4
  %71 = load %struct.pattern*, %struct.pattern** %7, align 8
  %72 = getelementptr inbounds %struct.pattern, %struct.pattern* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %73, %74
  %76 = add nsw i32 %75, 1
  %77 = icmp ne i32 %70, %76
  br i1 %77, label %78, label %107

78:                                               ; preds = %69
  %79 = load %struct.pattern*, %struct.pattern** %7, align 8
  %80 = getelementptr inbounds %struct.pattern, %struct.pattern* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %81, %82
  store i32 %83, i32* %20, align 4
  br label %84

84:                                               ; preds = %100, %78
  %85 = load i32, i32* %20, align 4
  %86 = load %struct.pattern*, %struct.pattern** %7, align 8
  %87 = getelementptr inbounds %struct.pattern, %struct.pattern* %86, i32 0, i32 7
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %88, %89
  %91 = add nsw i32 %90, 1
  %92 = icmp ne i32 %85, %91
  br i1 %92, label %93, label %103

93:                                               ; preds = %84
  %94 = load i32, i32* %19, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %95
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [84 x i8], [84 x i8]* %96, i64 0, i64 %98
  store i8 63, i8* %99, align 1
  br label %100

100:                                              ; preds = %93
  %101 = load i32, i32* %20, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %20, align 4
  br label %84, !llvm.loop !43

103:                                              ; preds = %84
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %19, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %19, align 4
  br label %69, !llvm.loop !44

107:                                              ; preds = %69
  %108 = load %struct.pattern*, %struct.pattern** %7, align 8
  %109 = getelementptr inbounds %struct.pattern, %struct.pattern* %108, i32 0, i32 10
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 2
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %142

113:                                              ; preds = %107
  %114 = load i32, i32* %14, align 4
  %115 = load %struct.pattern*, %struct.pattern** %7, align 8
  %116 = getelementptr inbounds %struct.pattern, %struct.pattern* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %114, %117
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %19, align 4
  br label %120

120:                                              ; preds = %138, %113
  %121 = load i32, i32* %19, align 4
  %122 = icmp ne i32 %121, 63
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  store i32 0, i32* %20, align 4
  br label %124

124:                                              ; preds = %134, %123
  %125 = load i32, i32* %20, align 4
  %126 = icmp ne i32 %125, 63
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load i32, i32* %19, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %129
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [84 x i8], [84 x i8]* %130, i64 0, i64 %132
  store i8 45, i8* %133, align 1
  br label %134

134:                                              ; preds = %127
  %135 = load i32, i32* %20, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %20, align 4
  br label %124, !llvm.loop !45

137:                                              ; preds = %124
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %19, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %19, align 4
  br label %120, !llvm.loop !46

141:                                              ; preds = %120
  br label %142

142:                                              ; preds = %141, %107
  %143 = load %struct.pattern*, %struct.pattern** %7, align 8
  %144 = getelementptr inbounds %struct.pattern, %struct.pattern* %143, i32 0, i32 10
  %145 = load i32, i32* %144, align 8
  %146 = and i32 %145, 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %177

148:                                              ; preds = %142
  store i32 0, i32* %19, align 4
  br label %149

149:                                              ; preds = %173, %148
  %150 = load i32, i32* %19, align 4
  %151 = icmp ne i32 %150, 63
  br i1 %151, label %152, label %176

152:                                              ; preds = %149
  %153 = load i32, i32* %15, align 4
  %154 = load %struct.pattern*, %struct.pattern** %7, align 8
  %155 = getelementptr inbounds %struct.pattern, %struct.pattern* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %153, %156
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %20, align 4
  br label %159

159:                                              ; preds = %169, %152
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 63
  br i1 %161, label %162, label %172

162:                                              ; preds = %159
  %163 = load i32, i32* %19, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %164
  %166 = load i32, i32* %20, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [84 x i8], [84 x i8]* %165, i64 0, i64 %167
  store i8 124, i8* %168, align 1
  br label %169

169:                                              ; preds = %162
  %170 = load i32, i32* %20, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %20, align 4
  br label %159, !llvm.loop !47

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172
  %174 = load i32, i32* %19, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %19, align 4
  br label %149, !llvm.loop !48

176:                                              ; preds = %149
  br label %177

177:                                              ; preds = %176, %142
  %178 = load %struct.pattern*, %struct.pattern** %7, align 8
  %179 = getelementptr inbounds %struct.pattern, %struct.pattern* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, 1
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %211

183:                                              ; preds = %177
  store i32 0, i32* %19, align 4
  br label %184

184:                                              ; preds = %207, %183
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.pattern*, %struct.pattern** %7, align 8
  %188 = getelementptr inbounds %struct.pattern, %struct.pattern* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %186, %189
  %191 = icmp ne i32 %185, %190
  br i1 %191, label %192, label %210

192:                                              ; preds = %184
  store i32 0, i32* %20, align 4
  br label %193

193:                                              ; preds = %203, %192
  %194 = load i32, i32* %20, align 4
  %195 = icmp ne i32 %194, 84
  br i1 %195, label %196, label %206

196:                                              ; preds = %193
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %198
  %200 = load i32, i32* %20, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [84 x i8], [84 x i8]* %199, i64 0, i64 %201
  store i8 45, i8* %202, align 1
  br label %203

203:                                              ; preds = %196
  %204 = load i32, i32* %20, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %20, align 4
  br label %193, !llvm.loop !49

206:                                              ; preds = %193
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %19, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %19, align 4
  br label %184, !llvm.loop !50

210:                                              ; preds = %184
  br label %211

211:                                              ; preds = %210, %177
  %212 = load %struct.pattern*, %struct.pattern** %7, align 8
  %213 = getelementptr inbounds %struct.pattern, %struct.pattern* %212, i32 0, i32 10
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %291

217:                                              ; preds = %211
  store i32 0, i32* %19, align 4
  br label %218

218:                                              ; preds = %247, %217
  %219 = load i32, i32* %19, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.pattern*, %struct.pattern** %7, align 8
  %222 = getelementptr inbounds %struct.pattern, %struct.pattern* %221, i32 0, i32 6
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %220, %223
  %225 = add nsw i32 %224, 1
  %226 = icmp ne i32 %219, %225
  br i1 %226, label %227, label %250

227:                                              ; preds = %218
  store i32 0, i32* %20, align 4
  br label %228

228:                                              ; preds = %243, %227
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %15, align 4
  %231 = load %struct.pattern*, %struct.pattern** %7, align 8
  %232 = getelementptr inbounds %struct.pattern, %struct.pattern* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = add nsw i32 %230, %233
  %235 = icmp ne i32 %229, %234
  br i1 %235, label %236, label %246

236:                                              ; preds = %228
  %237 = load i32, i32* %19, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %238
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [84 x i8], [84 x i8]* %239, i64 0, i64 %241
  store i8 124, i8* %242, align 1
  br label %243

243:                                              ; preds = %236
  %244 = load i32, i32* %20, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %20, align 4
  br label %228, !llvm.loop !51

246:                                              ; preds = %228
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %19, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %19, align 4
  br label %218, !llvm.loop !52

250:                                              ; preds = %218
  %251 = load %struct.pattern*, %struct.pattern** %7, align 8
  %252 = getelementptr inbounds %struct.pattern, %struct.pattern* %251, i32 0, i32 10
  %253 = load i32, i32* %252, align 8
  %254 = and i32 %253, 2
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %290, label %256

256:                                              ; preds = %250
  %257 = load i32, i32* %14, align 4
  %258 = load %struct.pattern*, %struct.pattern** %7, align 8
  %259 = getelementptr inbounds %struct.pattern, %struct.pattern* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = add nsw i32 %257, %260
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %19, align 4
  br label %263

263:                                              ; preds = %286, %256
  %264 = load i32, i32* %19, align 4
  %265 = icmp ne i32 %264, 63
  br i1 %265, label %266, label %289

266:                                              ; preds = %263
  store i32 0, i32* %20, align 4
  br label %267

267:                                              ; preds = %282, %266
  %268 = load i32, i32* %20, align 4
  %269 = load i32, i32* %15, align 4
  %270 = load %struct.pattern*, %struct.pattern** %7, align 8
  %271 = getelementptr inbounds %struct.pattern, %struct.pattern* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %269, %272
  %274 = icmp ne i32 %268, %273
  br i1 %274, label %275, label %285

275:                                              ; preds = %267
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %277
  %279 = load i32, i32* %20, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [84 x i8], [84 x i8]* %278, i64 0, i64 %280
  store i8 124, i8* %281, align 1
  br label %282

282:                                              ; preds = %275
  %283 = load i32, i32* %20, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %20, align 4
  br label %267, !llvm.loop !53

285:                                              ; preds = %267
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %19, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %19, align 4
  br label %263, !llvm.loop !54

289:                                              ; preds = %263
  br label %290

290:                                              ; preds = %289, %250
  br label %291

291:                                              ; preds = %290, %211
  %292 = load i32, i32* @dfa_verbose, align 4
  %293 = icmp sgt i32 %292, 4
  br i1 %293, label %294, label %337

294:                                              ; preds = %291
  store i32 20, i32* %19, align 4
  br label %295

295:                                              ; preds = %331, %294
  %296 = load i32, i32* %19, align 4
  %297 = icmp ne i32 %296, 64
  br i1 %297, label %298, label %334

298:                                              ; preds = %295
  store i32 20, i32* %20, align 4
  br label %299

299:                                              ; preds = %325, %298
  %300 = load i32, i32* %20, align 4
  %301 = icmp ne i32 %300, 64
  br i1 %301, label %302, label %328

302:                                              ; preds = %299
  %303 = load i32, i32* %19, align 4
  %304 = load i32, i32* %14, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %313

306:                                              ; preds = %302
  %307 = load i32, i32* %20, align 4
  %308 = load i32, i32* %15, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %312 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  br label %324

313:                                              ; preds = %306, %302
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %315 = load i32, i32* %19, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %316
  %318 = load i32, i32* %20, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [84 x i8], [84 x i8]* %317, i64 0, i64 %319
  %321 = load i8, i8* %320, align 1
  %322 = sext i8 %321 to i32
  %323 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %314, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i32 %322)
  br label %324

324:                                              ; preds = %313, %310
  br label %325

325:                                              ; preds = %324
  %326 = load i32, i32* %20, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %20, align 4
  br label %299, !llvm.loop !55

328:                                              ; preds = %299
  %329 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %330 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %329, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %331

331:                                              ; preds = %328
  %332 = load i32, i32* %19, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %19, align 4
  br label %295, !llvm.loop !56

334:                                              ; preds = %295
  %335 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %336 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %335, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %337

337:                                              ; preds = %334, %291
  store i32 0, i32* %21, align 4
  br label %338

338:                                              ; preds = %410, %337
  %339 = load i32, i32* %21, align 4
  %340 = load %struct.pattern*, %struct.pattern** %7, align 8
  %341 = getelementptr inbounds %struct.pattern, %struct.pattern* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = icmp ne i32 %339, %342
  br i1 %343, label %344, label %413

344:                                              ; preds = %338
  %345 = load %struct.patval_b*, %struct.patval_b** %8, align 8
  %346 = load i32, i32* %21, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %345, i64 %347
  %349 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [8 x i8], [8 x i8]* @att2val, i64 0, i64 %351
  %353 = load i8, i8* %352, align 1
  store i8 %353, i8* %22, align 1
  %354 = load i32, i32* %14, align 4
  %355 = load %struct.patval_b*, %struct.patval_b** %8, align 8
  %356 = load i32, i32* %21, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %355, i64 %357
  %359 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %354, %360
  %362 = load i32, i32* %11, align 4
  %363 = sub nsw i32 %361, %362
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %364
  %366 = load i32, i32* %15, align 4
  %367 = load %struct.patval_b*, %struct.patval_b** %8, align 8
  %368 = load i32, i32* %21, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %367, i64 %369
  %371 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %366, %372
  %374 = load i32, i32* %12, align 4
  %375 = sub nsw i32 %373, %374
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [84 x i8], [84 x i8]* %365, i64 0, i64 %376
  %378 = load i8, i8* %377, align 1
  %379 = sext i8 %378 to i32
  %380 = icmp eq i32 %379, 63
  br i1 %380, label %381, label %382

381:                                              ; preds = %344
  br label %384

382:                                              ; preds = %344
  call void @__assert_fail(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.55, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1190, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.pattern_2_string, i64 0, i64 0)) #8
  unreachable

383:                                              ; No predecessors!
  br label %384

384:                                              ; preds = %383, %381
  %385 = load i8, i8* %22, align 1
  %386 = load i32, i32* %14, align 4
  %387 = load %struct.patval_b*, %struct.patval_b** %8, align 8
  %388 = load i32, i32* %21, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %387, i64 %389
  %391 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = add nsw i32 %386, %392
  %394 = load i32, i32* %11, align 4
  %395 = sub nsw i32 %393, %394
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %396
  %398 = load i32, i32* %15, align 4
  %399 = load %struct.patval_b*, %struct.patval_b** %8, align 8
  %400 = load i32, i32* %21, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %399, i64 %401
  %403 = getelementptr inbounds %struct.patval_b, %struct.patval_b* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = add nsw i32 %398, %404
  %406 = load i32, i32* %12, align 4
  %407 = sub nsw i32 %405, %406
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds [84 x i8], [84 x i8]* %397, i64 0, i64 %408
  store i8 %385, i8* %409, align 1
  br label %410

410:                                              ; preds = %384
  %411 = load i32, i32* %21, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %21, align 4
  br label %338, !llvm.loop !57

413:                                              ; preds = %338
  %414 = load i32, i32* @dfa_verbose, align 4
  %415 = icmp sgt i32 %414, 3
  br i1 %415, label %416, label %459

416:                                              ; preds = %413
  store i32 20, i32* %19, align 4
  br label %417

417:                                              ; preds = %453, %416
  %418 = load i32, i32* %19, align 4
  %419 = icmp ne i32 %418, 64
  br i1 %419, label %420, label %456

420:                                              ; preds = %417
  store i32 20, i32* %20, align 4
  br label %421

421:                                              ; preds = %447, %420
  %422 = load i32, i32* %20, align 4
  %423 = icmp ne i32 %422, 64
  br i1 %423, label %424, label %450

424:                                              ; preds = %421
  %425 = load i32, i32* %19, align 4
  %426 = load i32, i32* %14, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %435

428:                                              ; preds = %424
  %429 = load i32, i32* %20, align 4
  %430 = load i32, i32* %15, align 4
  %431 = icmp eq i32 %429, %430
  br i1 %431, label %432, label %435

432:                                              ; preds = %428
  %433 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %433, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i64 0, i64 0))
  br label %446

435:                                              ; preds = %428, %424
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %437 = load i32, i32* %19, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %438
  %440 = load i32, i32* %20, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [84 x i8], [84 x i8]* %439, i64 0, i64 %441
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  %445 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %436, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0), i32 %444)
  br label %446

446:                                              ; preds = %435, %432
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %20, align 4
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* %20, align 4
  br label %421, !llvm.loop !58

450:                                              ; preds = %421
  %451 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %452 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %451, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %19, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %19, align 4
  br label %417, !llvm.loop !59

456:                                              ; preds = %417
  %457 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %458 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %457, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %459

459:                                              ; preds = %456, %413
  %460 = load %struct.pattern*, %struct.pattern** %7, align 8
  %461 = getelementptr inbounds %struct.pattern, %struct.pattern* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 8
  store i32 %462, i32* %18, align 4
  %463 = load %struct.pattern*, %struct.pattern** %7, align 8
  %464 = getelementptr inbounds %struct.pattern, %struct.pattern* %463, i32 0, i32 10
  %465 = load i32, i32* %464, align 8
  store i32 %465, i32* %16, align 4
  store i32 15, i32* %17, align 4
  store i32 0, i32* %21, align 4
  br label %466

466:                                              ; preds = %647, %459
  %467 = load i32, i32* %21, align 4
  %468 = icmp ne i32 %467, 1763
  br i1 %468, label %469, label %480

469:                                              ; preds = %466
  %470 = load i32, i32* %17, align 4
  %471 = icmp sgt i32 %470, 0
  br i1 %471, label %478, label %472

472:                                              ; preds = %469
  %473 = load i32, i32* %16, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %478, label %475

475:                                              ; preds = %472
  %476 = load i32, i32* %18, align 4
  %477 = icmp sgt i32 %476, 0
  br label %478

478:                                              ; preds = %475, %472, %469
  %479 = phi i1 [ true, %472 ], [ true, %469 ], [ %477, %475 ]
  br label %480

480:                                              ; preds = %478, %466
  %481 = phi i1 [ false, %466 ], [ %479, %478 ]
  br i1 %481, label %482, label %650

482:                                              ; preds = %480
  %483 = load i32, i32* %21, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i64 0, i64 %484
  %486 = load i32, i32* %10, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [8 x i32], [8 x i32]* %485, i64 0, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = srem i32 %489, 84
  store i32 %490, i32* %20, align 4
  %491 = load i32, i32* %20, align 4
  %492 = icmp sge i32 %491, 42
  br i1 %492, label %493, label %496

493:                                              ; preds = %482
  %494 = load i32, i32* %20, align 4
  %495 = sub nsw i32 %494, 84
  store i32 %495, i32* %20, align 4
  br label %496

496:                                              ; preds = %493, %482
  %497 = load i32, i32* %20, align 4
  %498 = icmp slt i32 %497, -42
  br i1 %498, label %499, label %502

499:                                              ; preds = %496
  %500 = load i32, i32* %20, align 4
  %501 = add nsw i32 %500, 84
  store i32 %501, i32* %20, align 4
  br label %502

502:                                              ; preds = %499, %496
  %503 = load i32, i32* %21, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [1764 x [8 x i32]], [1764 x [8 x i32]]* @spiral, i64 0, i64 %504
  %506 = load i32, i32* %10, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds [8 x i32], [8 x i32]* %505, i64 0, i64 %507
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* %20, align 4
  %511 = sub nsw i32 %509, %510
  %512 = sdiv i32 %511, 84
  store i32 %512, i32* %19, align 4
  %513 = load i32, i32* %19, align 4
  %514 = load %struct.pattern*, %struct.pattern** %7, align 8
  %515 = getelementptr inbounds %struct.pattern, %struct.pattern* %514, i32 0, i32 6
  %516 = load i32, i32* %515, align 8
  %517 = icmp eq i32 %513, %516
  br i1 %517, label %518, label %521

518:                                              ; preds = %502
  %519 = load i32, i32* %17, align 4
  %520 = and i32 %519, -3
  store i32 %520, i32* %17, align 4
  br label %521

521:                                              ; preds = %518, %502
  %522 = load i32, i32* %19, align 4
  %523 = load %struct.pattern*, %struct.pattern** %7, align 8
  %524 = getelementptr inbounds %struct.pattern, %struct.pattern* %523, i32 0, i32 4
  %525 = load i32, i32* %524, align 8
  %526 = icmp eq i32 %522, %525
  br i1 %526, label %527, label %530

527:                                              ; preds = %521
  %528 = load i32, i32* %17, align 4
  %529 = and i32 %528, -2
  store i32 %529, i32* %17, align 4
  br label %530

530:                                              ; preds = %527, %521
  %531 = load i32, i32* %20, align 4
  %532 = load %struct.pattern*, %struct.pattern** %7, align 8
  %533 = getelementptr inbounds %struct.pattern, %struct.pattern* %532, i32 0, i32 7
  %534 = load i32, i32* %533, align 4
  %535 = icmp eq i32 %531, %534
  br i1 %535, label %536, label %539

536:                                              ; preds = %530
  %537 = load i32, i32* %17, align 4
  %538 = and i32 %537, -5
  store i32 %538, i32* %17, align 4
  br label %539

539:                                              ; preds = %536, %530
  %540 = load i32, i32* %20, align 4
  %541 = load %struct.pattern*, %struct.pattern** %7, align 8
  %542 = getelementptr inbounds %struct.pattern, %struct.pattern* %541, i32 0, i32 5
  %543 = load i32, i32* %542, align 4
  %544 = icmp eq i32 %540, %543
  br i1 %544, label %545, label %548

545:                                              ; preds = %539
  %546 = load i32, i32* %17, align 4
  %547 = and i32 %546, -9
  store i32 %547, i32* %17, align 4
  br label %548

548:                                              ; preds = %545, %539
  %549 = load i32, i32* %14, align 4
  %550 = load i32, i32* %19, align 4
  %551 = add nsw i32 %549, %550
  %552 = icmp slt i32 %551, 63
  br i1 %552, label %553, label %559

553:                                              ; preds = %548
  %554 = load i32, i32* %14, align 4
  %555 = load i32, i32* %19, align 4
  %556 = add nsw i32 %554, %555
  %557 = icmp slt i32 %556, 63
  br i1 %557, label %558, label %559

558:                                              ; preds = %553
  br label %561

559:                                              ; preds = %553, %548
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.56, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1243, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.pattern_2_string, i64 0, i64 0)) #8
  unreachable

560:                                              ; No predecessors!
  br label %561

561:                                              ; preds = %560, %558
  %562 = load i32, i32* %14, align 4
  %563 = load i32, i32* %19, align 4
  %564 = add nsw i32 %562, %563
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [84 x [84 x i8]], [84 x [84 x i8]]* %13, i64 0, i64 %565
  %567 = load i32, i32* %15, align 4
  %568 = load i32, i32* %20, align 4
  %569 = add nsw i32 %567, %568
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds [84 x i8], [84 x i8]* %566, i64 0, i64 %570
  %572 = load i8, i8* %571, align 1
  %573 = load i8*, i8** %9, align 8
  %574 = load i32, i32* %21, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i8, i8* %573, i64 %575
  store i8 %572, i8* %576, align 1
  %577 = load i8*, i8** %9, align 8
  %578 = load i32, i32* %21, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i8, i8* %577, i64 %579
  %581 = load i8, i8* %580, align 1
  %582 = sext i8 %581 to i32
  %583 = call i8* @strchr(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.57, i64 0, i64 0), i32 %582) #9
  %584 = icmp ne i8* %583, null
  br i1 %584, label %585, label %586

585:                                              ; preds = %561
  br label %588

586:                                              ; preds = %561
  call void @__assert_fail(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.58, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1245, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.pattern_2_string, i64 0, i64 0)) #8
  unreachable

587:                                              ; No predecessors!
  br label %588

588:                                              ; preds = %587, %585
  %589 = load i8*, i8** %9, align 8
  %590 = load i32, i32* %21, align 4
  %591 = sext i32 %590 to i64
  %592 = getelementptr inbounds i8, i8* %589, i64 %591
  %593 = load i8, i8* %592, align 1
  %594 = sext i8 %593 to i32
  %595 = call i8* @strchr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i32 %594) #9
  %596 = icmp ne i8* %595, null
  br i1 %596, label %597, label %600

597:                                              ; preds = %588
  %598 = load i32, i32* %18, align 4
  %599 = add nsw i32 %598, -1
  store i32 %599, i32* %18, align 4
  br label %600

600:                                              ; preds = %597, %588
  %601 = load i8*, i8** %9, align 8
  %602 = load i32, i32* %21, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds i8, i8* %601, i64 %603
  %605 = load i8, i8* %604, align 1
  %606 = sext i8 %605 to i32
  %607 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), i32 %606) #9
  %608 = icmp ne i8* %607, null
  br i1 %608, label %609, label %646

609:                                              ; preds = %600
  %610 = load i32, i32* %19, align 4
  %611 = load %struct.pattern*, %struct.pattern** %7, align 8
  %612 = getelementptr inbounds %struct.pattern, %struct.pattern* %611, i32 0, i32 6
  %613 = load i32, i32* %612, align 8
  %614 = icmp sgt i32 %610, %613
  br i1 %614, label %615, label %618

615:                                              ; preds = %609
  %616 = load i32, i32* %16, align 4
  %617 = and i32 %616, -3
  store i32 %617, i32* %16, align 4
  br label %618

618:                                              ; preds = %615, %609
  %619 = load i32, i32* %19, align 4
  %620 = load %struct.pattern*, %struct.pattern** %7, align 8
  %621 = getelementptr inbounds %struct.pattern, %struct.pattern* %620, i32 0, i32 4
  %622 = load i32, i32* %621, align 8
  %623 = icmp slt i32 %619, %622
  br i1 %623, label %624, label %627

624:                                              ; preds = %618
  %625 = load i32, i32* %16, align 4
  %626 = and i32 %625, -2
  store i32 %626, i32* %16, align 4
  br label %627

627:                                              ; preds = %624, %618
  %628 = load i32, i32* %20, align 4
  %629 = load %struct.pattern*, %struct.pattern** %7, align 8
  %630 = getelementptr inbounds %struct.pattern, %struct.pattern* %629, i32 0, i32 7
  %631 = load i32, i32* %630, align 4
  %632 = icmp sgt i32 %628, %631
  br i1 %632, label %633, label %636

633:                                              ; preds = %627
  %634 = load i32, i32* %16, align 4
  %635 = and i32 %634, -5
  store i32 %635, i32* %16, align 4
  br label %636

636:                                              ; preds = %633, %627
  %637 = load i32, i32* %20, align 4
  %638 = load %struct.pattern*, %struct.pattern** %7, align 8
  %639 = getelementptr inbounds %struct.pattern, %struct.pattern* %638, i32 0, i32 5
  %640 = load i32, i32* %639, align 4
  %641 = icmp slt i32 %637, %640
  br i1 %641, label %642, label %645

642:                                              ; preds = %636
  %643 = load i32, i32* %16, align 4
  %644 = and i32 %643, -9
  store i32 %644, i32* %16, align 4
  br label %645

645:                                              ; preds = %642, %636
  br label %646

646:                                              ; preds = %645, %600
  br label %647

647:                                              ; preds = %646
  %648 = load i32, i32* %21, align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %21, align 4
  br label %466, !llvm.loop !60

650:                                              ; preds = %480
  %651 = load i32, i32* %21, align 4
  %652 = icmp slt i32 %651, 1764
  br i1 %652, label %653, label %654

653:                                              ; preds = %650
  br label %656

654:                                              ; preds = %650
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.61, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 1261, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @__PRETTY_FUNCTION__.pattern_2_string, i64 0, i64 0)) #8
  unreachable

655:                                              ; No predecessors!
  br label %656

656:                                              ; preds = %655, %653
  %657 = load i8*, i8** %9, align 8
  %658 = load i32, i32* %21, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i8, i8* %657, i64 %659
  store i8 0, i8* %660, align 1
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #6

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @new_test_array(%struct.test_array* %0) #0 {
  %2 = alloca %struct.test_array*, align 8
  %3 = alloca i32, align 4
  store %struct.test_array* %0, %struct.test_array** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %13, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 4096
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = load %struct.test_array*, %struct.test_array** %2, align 8
  %9 = getelementptr inbounds %struct.test_array, %struct.test_array* %8, i32 0, i32 0
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %9, i64 0, i64 %11
  store %struct.entry* null, %struct.entry** %12, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %4, !llvm.loop !61

16:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_test_array(%struct.test_array* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.test_array*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.test_array* %0, %struct.test_array** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.test_array*, %struct.test_array** %5, align 8
  %10 = getelementptr inbounds %struct.test_array, %struct.test_array* %9, i32 0, i32 0
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %7, align 4
  %13 = add nsw i32 %11, %12
  %14 = srem i32 %13, 4096
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %10, i64 0, i64 %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  call void @add_to_entry_list(%struct.entry** %16, i32 %17, i32 %18, i32 %19)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_sync_product(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %10 = getelementptr inbounds %struct.dfa, %struct.dfa* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %13 = load %struct.dfa*, %struct.dfa** @gpleft, align 8
  %14 = load %struct.dfa*, %struct.dfa** @gpleft, align 8
  %15 = getelementptr inbounds %struct.dfa, %struct.dfa* %14, i32 0, i32 2
  %16 = load %struct.state*, %struct.state** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.state, %struct.state* %16, i64 %18
  %20 = getelementptr inbounds %struct.state, %struct.state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dfa*, %struct.dfa** @gpright, align 8
  %23 = load %struct.dfa*, %struct.dfa** @gpright, align 8
  %24 = getelementptr inbounds %struct.dfa, %struct.dfa* %23, i32 0, i32 2
  %25 = load %struct.state*, %struct.state** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.state, %struct.state* %25, i64 %27
  %29 = getelementptr inbounds %struct.state, %struct.state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @union_att(%struct.dfa* %12, %struct.dfa* %13, i32 %21, %struct.dfa* %22, i32 %30)
  %32 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %33 = getelementptr inbounds %struct.dfa, %struct.dfa* %32, i32 0, i32 2
  %34 = load %struct.state*, %struct.state** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.state, %struct.state* %34, i64 %36
  %38 = getelementptr inbounds %struct.state, %struct.state* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %164, %2
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 4
  br i1 %41, label %42, label %167

42:                                               ; preds = %39
  %43 = load %struct.dfa*, %struct.dfa** @gpleft, align 8
  %44 = getelementptr inbounds %struct.dfa, %struct.dfa* %43, i32 0, i32 2
  %45 = load %struct.state*, %struct.state** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.state, %struct.state* %45, i64 %47
  %49 = getelementptr inbounds %struct.state, %struct.state* %48, i32 0, i32 1
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.dfa*, %struct.dfa** @gpright, align 8
  %55 = getelementptr inbounds %struct.dfa, %struct.dfa* %54, i32 0, i32 2
  %56 = load %struct.state*, %struct.state** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.state, %struct.state* %56, i64 %58
  %60 = getelementptr inbounds %struct.state, %struct.state* %59, i32 0, i32 1
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %60, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.dfa*, %struct.dfa** @gpleft, align 8
  %67 = getelementptr inbounds %struct.dfa, %struct.dfa* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %42
  br label %74

72:                                               ; preds = %42
  call void @__assert_fail(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.72, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 800, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.do_sync_product, i64 0, i64 0)) #8
  unreachable

73:                                               ; No predecessors!
  br label %74

74:                                               ; preds = %73, %71
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.dfa*, %struct.dfa** @gpright, align 8
  %77 = getelementptr inbounds %struct.dfa, %struct.dfa* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = icmp slt i32 %75, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %84

82:                                               ; preds = %74
  call void @__assert_fail(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.73, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 801, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.do_sync_product, i64 0, i64 0)) #8
  unreachable

83:                                               ; No predecessors!
  br label %84

84:                                               ; preds = %83, %81
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %152

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @get_from_test_array(%struct.test_array* @gtest, i32 %91, i32 %92)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %137

95:                                               ; preds = %90
  %96 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %97 = getelementptr inbounds %struct.dfa, %struct.dfa* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %101 = getelementptr inbounds %struct.dfa, %struct.dfa* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %104 = getelementptr inbounds %struct.dfa, %struct.dfa* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = icmp sge i32 %102, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %95
  %108 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %109 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %110 = getelementptr inbounds %struct.dfa, %struct.dfa* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 20000
  %113 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %114 = getelementptr inbounds %struct.dfa, %struct.dfa* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  call void @resize_dfa(%struct.dfa* %108, i32 %112, i32 %115)
  br label %116

116:                                              ; preds = %107, %95
  %117 = load i32, i32* %6, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %120 = getelementptr inbounds %struct.dfa, %struct.dfa* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  call void @add_to_test_array(%struct.test_array* @gtest, i32 %117, i32 %118, i32 %121)
  %122 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %123 = getelementptr inbounds %struct.dfa, %struct.dfa* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %126 = getelementptr inbounds %struct.dfa, %struct.dfa* %125, i32 0, i32 2
  %127 = load %struct.state*, %struct.state** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.state, %struct.state* %127, i64 %129
  %131 = getelementptr inbounds %struct.state, %struct.state* %130, i32 0, i32 1
  %132 = load i32, i32* %5, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [4 x i32], [4 x i32]* %131, i64 0, i64 %133
  store i32 %124, i32* %134, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* %7, align 4
  call void @do_sync_product(i32 %135, i32 %136)
  br label %151

137:                                              ; preds = %90
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @get_from_test_array(%struct.test_array* @gtest, i32 %138, i32 %139)
  %141 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %142 = getelementptr inbounds %struct.dfa, %struct.dfa* %141, i32 0, i32 2
  %143 = load %struct.state*, %struct.state** %142, align 8
  %144 = load i32, i32* %8, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.state, %struct.state* %143, i64 %145
  %147 = getelementptr inbounds %struct.state, %struct.state* %146, i32 0, i32 1
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %147, i64 0, i64 %149
  store i32 %140, i32* %150, align 4
  br label %151

151:                                              ; preds = %137, %116
  br label %163

152:                                              ; preds = %87
  %153 = load %struct.dfa*, %struct.dfa** @gpout, align 8
  %154 = getelementptr inbounds %struct.dfa, %struct.dfa* %153, i32 0, i32 2
  %155 = load %struct.state*, %struct.state** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.state, %struct.state* %155, i64 %157
  %159 = getelementptr inbounds %struct.state, %struct.state* %158, i32 0, i32 1
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %159, i64 0, i64 %161
  store i32 0, i32* %162, align 4
  br label %163

163:                                              ; preds = %152, %151
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %5, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %5, align 4
  br label %39, !llvm.loop !62

167:                                              ; preds = %39
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_test_array(%struct.test_array* %0) #0 {
  %2 = alloca %struct.test_array*, align 8
  %3 = alloca i32, align 4
  store %struct.test_array* %0, %struct.test_array** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 4096
  br i1 %6, label %7, label %22

7:                                                ; preds = %4
  %8 = load %struct.test_array*, %struct.test_array** %2, align 8
  %9 = getelementptr inbounds %struct.test_array, %struct.test_array* %8, i32 0, i32 0
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %9, i64 0, i64 %11
  %13 = load %struct.entry*, %struct.entry** %12, align 8
  call void @free_entry_list(%struct.entry* %13)
  %14 = load %struct.test_array*, %struct.test_array** %2, align 8
  %15 = getelementptr inbounds %struct.test_array, %struct.test_array* %14, i32 0, i32 0
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %15, i64 0, i64 %17
  store %struct.entry* null, %struct.entry** %18, align 8
  br label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4, !llvm.loop !63

22:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_to_entry_list(%struct.entry** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.entry**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.entry*, align 8
  store %struct.entry** %0, %struct.entry*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %15

13:                                               ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 710, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.add_to_entry_list, i64 0, i64 0)) #8
  unreachable

14:                                               ; No predecessors!
  br label %15

15:                                               ; preds = %14, %12
  %16 = load %struct.entry**, %struct.entry*** %5, align 8
  %17 = load %struct.entry*, %struct.entry** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @get_from_entry_list(%struct.entry* %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %25

23:                                               ; preds = %15
  call void @__assert_fail(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.70, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 711, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @__PRETTY_FUNCTION__.add_to_entry_list, i64 0, i64 0)) #8
  unreachable

24:                                               ; No predecessors!
  br label %25

25:                                               ; preds = %24, %22
  %26 = call noalias align 16 i8* @malloc(i64 24) #7
  %27 = bitcast i8* %26 to %struct.entry*
  store %struct.entry* %27, %struct.entry** %9, align 8
  %28 = load %struct.entry*, %struct.entry** %9, align 8
  %29 = icmp eq %struct.entry* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.71, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable

33:                                               ; preds = %25
  %34 = load %struct.entry**, %struct.entry*** %5, align 8
  %35 = load %struct.entry*, %struct.entry** %34, align 8
  %36 = load %struct.entry*, %struct.entry** %9, align 8
  %37 = getelementptr inbounds %struct.entry, %struct.entry* %36, i32 0, i32 3
  store %struct.entry* %35, %struct.entry** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.entry*, %struct.entry** %9, align 8
  %40 = getelementptr inbounds %struct.entry, %struct.entry* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.entry*, %struct.entry** %9, align 8
  %43 = getelementptr inbounds %struct.entry, %struct.entry* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.entry*, %struct.entry** %9, align 8
  %46 = getelementptr inbounds %struct.entry, %struct.entry* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.entry*, %struct.entry** %9, align 8
  %48 = load %struct.entry**, %struct.entry*** %5, align 8
  store %struct.entry* %47, %struct.entry** %48, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_from_entry_list(%struct.entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.entry* %0, %struct.entry** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %27, %3
  %9 = load %struct.entry*, %struct.entry** %4, align 8
  %10 = icmp ne %struct.entry* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %8
  %12 = load %struct.entry*, %struct.entry** %4, align 8
  %13 = getelementptr inbounds %struct.entry, %struct.entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load %struct.entry*, %struct.entry** %4, align 8
  %19 = getelementptr inbounds %struct.entry, %struct.entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.entry*, %struct.entry** %4, align 8
  %25 = getelementptr inbounds %struct.entry, %struct.entry* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %17, %11
  %28 = load %struct.entry*, %struct.entry** %4, align 8
  %29 = getelementptr inbounds %struct.entry, %struct.entry* %28, i32 0, i32 3
  %30 = load %struct.entry*, %struct.entry** %29, align 8
  store %struct.entry* %30, %struct.entry** %4, align 8
  br label %8, !llvm.loop !64

31:                                               ; preds = %8
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @union_att(%struct.dfa* %0, %struct.dfa* %1, i32 %2, %struct.dfa* %3, i32 %4) #0 {
  %6 = alloca %struct.dfa*, align 8
  %7 = alloca %struct.dfa*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dfa*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %6, align 8
  store %struct.dfa* %1, %struct.dfa** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dfa* %3, %struct.dfa** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %37, %5
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %13
  %17 = load %struct.dfa*, %struct.dfa** %6, align 8
  %18 = getelementptr inbounds %struct.dfa, %struct.dfa* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.dfa*, %struct.dfa** %6, align 8
  %22 = getelementptr inbounds %struct.dfa, %struct.dfa* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dfa*, %struct.dfa** %6, align 8
  %25 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %16
  %29 = load %struct.dfa*, %struct.dfa** %6, align 8
  %30 = load %struct.dfa*, %struct.dfa** %6, align 8
  %31 = getelementptr inbounds %struct.dfa, %struct.dfa* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.dfa*, %struct.dfa** %6, align 8
  %34 = getelementptr inbounds %struct.dfa, %struct.dfa* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 20000
  call void @resize_dfa(%struct.dfa* %29, i32 %32, i32 %36)
  br label %37

37:                                               ; preds = %28, %16
  %38 = load %struct.dfa*, %struct.dfa** %6, align 8
  %39 = getelementptr inbounds %struct.dfa, %struct.dfa* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.dfa*, %struct.dfa** %7, align 8
  %42 = getelementptr inbounds %struct.dfa, %struct.dfa* %41, i32 0, i32 5
  %43 = load %struct.attrib*, %struct.attrib** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.attrib, %struct.attrib* %43, i64 %45
  %47 = getelementptr inbounds %struct.attrib, %struct.attrib* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.dfa*, %struct.dfa** %6, align 8
  %50 = getelementptr inbounds %struct.dfa, %struct.dfa* %49, i32 0, i32 5
  %51 = load %struct.attrib*, %struct.attrib** %50, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.attrib, %struct.attrib* %51, i64 %53
  %55 = getelementptr inbounds %struct.attrib, %struct.attrib* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.dfa*, %struct.dfa** %6, align 8
  %58 = getelementptr inbounds %struct.dfa, %struct.dfa* %57, i32 0, i32 5
  %59 = load %struct.attrib*, %struct.attrib** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.attrib, %struct.attrib* %59, i64 %61
  %63 = getelementptr inbounds %struct.attrib, %struct.attrib* %62, i32 0, i32 1
  store i32 %56, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %11, align 4
  %65 = load %struct.dfa*, %struct.dfa** %7, align 8
  %66 = getelementptr inbounds %struct.dfa, %struct.dfa* %65, i32 0, i32 5
  %67 = load %struct.attrib*, %struct.attrib** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.attrib, %struct.attrib* %67, i64 %69
  %71 = getelementptr inbounds %struct.attrib, %struct.attrib* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %8, align 4
  br label %13, !llvm.loop !65

73:                                               ; preds = %13
  br label %74

74:                                               ; preds = %139, %73
  %75 = load i32, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %148

77:                                               ; preds = %74
  %78 = load %struct.dfa*, %struct.dfa** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.dfa*, %struct.dfa** %9, align 8
  %81 = getelementptr inbounds %struct.dfa, %struct.dfa* %80, i32 0, i32 5
  %82 = load %struct.attrib*, %struct.attrib** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.attrib, %struct.attrib* %82, i64 %84
  %86 = getelementptr inbounds %struct.attrib, %struct.attrib* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @member_att(%struct.dfa* %78, i32 %79, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %139, label %90

90:                                               ; preds = %77
  %91 = load %struct.dfa*, %struct.dfa** %6, align 8
  %92 = getelementptr inbounds %struct.dfa, %struct.dfa* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.dfa*, %struct.dfa** %6, align 8
  %96 = getelementptr inbounds %struct.dfa, %struct.dfa* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.dfa*, %struct.dfa** %6, align 8
  %99 = getelementptr inbounds %struct.dfa, %struct.dfa* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = icmp sge i32 %97, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %90
  %103 = load %struct.dfa*, %struct.dfa** %6, align 8
  %104 = load %struct.dfa*, %struct.dfa** %6, align 8
  %105 = getelementptr inbounds %struct.dfa, %struct.dfa* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dfa*, %struct.dfa** %6, align 8
  %108 = getelementptr inbounds %struct.dfa, %struct.dfa* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 20000
  call void @resize_dfa(%struct.dfa* %103, i32 %106, i32 %110)
  br label %111

111:                                              ; preds = %102, %90
  %112 = load %struct.dfa*, %struct.dfa** %6, align 8
  %113 = getelementptr inbounds %struct.dfa, %struct.dfa* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %12, align 4
  %115 = load %struct.dfa*, %struct.dfa** %9, align 8
  %116 = getelementptr inbounds %struct.dfa, %struct.dfa* %115, i32 0, i32 5
  %117 = load %struct.attrib*, %struct.attrib** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.attrib, %struct.attrib* %117, i64 %119
  %121 = getelementptr inbounds %struct.attrib, %struct.attrib* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.dfa*, %struct.dfa** %6, align 8
  %124 = getelementptr inbounds %struct.dfa, %struct.dfa* %123, i32 0, i32 5
  %125 = load %struct.attrib*, %struct.attrib** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.attrib, %struct.attrib* %125, i64 %127
  %129 = getelementptr inbounds %struct.attrib, %struct.attrib* %128, i32 0, i32 0
  store i32 %122, i32* %129, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.dfa*, %struct.dfa** %6, align 8
  %132 = getelementptr inbounds %struct.dfa, %struct.dfa* %131, i32 0, i32 5
  %133 = load %struct.attrib*, %struct.attrib** %132, align 8
  %134 = load i32, i32* %12, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.attrib, %struct.attrib* %133, i64 %135
  %137 = getelementptr inbounds %struct.attrib, %struct.attrib* %136, i32 0, i32 1
  store i32 %130, i32* %137, align 4
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %111, %77
  %140 = load %struct.dfa*, %struct.dfa** %9, align 8
  %141 = getelementptr inbounds %struct.dfa, %struct.dfa* %140, i32 0, i32 5
  %142 = load %struct.attrib*, %struct.attrib** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.attrib, %struct.attrib* %142, i64 %144
  %146 = getelementptr inbounds %struct.attrib, %struct.attrib* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %10, align 4
  br label %74, !llvm.loop !66

148:                                              ; preds = %74
  %149 = load i32, i32* %11, align 4
  ret i32 %149
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_from_test_array(%struct.test_array* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.test_array*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.test_array* %0, %struct.test_array** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.test_array*, %struct.test_array** %4, align 8
  %8 = getelementptr inbounds %struct.test_array, %struct.test_array* %7, i32 0, i32 0
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %9, %10
  %12 = srem i32 %11, 4096
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [4096 x %struct.entry*], [4096 x %struct.entry*]* %8, i64 0, i64 %13
  %15 = load %struct.entry*, %struct.entry** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @get_from_entry_list(%struct.entry* %15, i32 %16, i32 %17)
  ret i32 %18
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @member_att(%struct.dfa* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dfa*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dfa* %0, %struct.dfa** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %8
  %12 = load %struct.dfa*, %struct.dfa** %5, align 8
  %13 = getelementptr inbounds %struct.dfa, %struct.dfa* %12, i32 0, i32 5
  %14 = load %struct.attrib*, %struct.attrib** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.attrib, %struct.attrib* %14, i64 %16
  %18 = getelementptr inbounds %struct.attrib, %struct.attrib* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %33

23:                                               ; preds = %11
  %24 = load %struct.dfa*, %struct.dfa** %5, align 8
  %25 = getelementptr inbounds %struct.dfa, %struct.dfa* %24, i32 0, i32 5
  %26 = load %struct.attrib*, %struct.attrib** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.attrib, %struct.attrib* %26, i64 %28
  %30 = getelementptr inbounds %struct.attrib, %struct.attrib* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  br label %8, !llvm.loop !67

32:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_entry_list(%struct.entry* %0) #0 {
  %2 = alloca %struct.entry*, align 8
  %3 = alloca %struct.entry*, align 8
  store %struct.entry* %0, %struct.entry** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.entry*, %struct.entry** %2, align 8
  %6 = icmp ne %struct.entry* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load %struct.entry*, %struct.entry** %2, align 8
  store %struct.entry* %8, %struct.entry** %3, align 8
  %9 = load %struct.entry*, %struct.entry** %2, align 8
  %10 = getelementptr inbounds %struct.entry, %struct.entry* %9, i32 0, i32 3
  %11 = load %struct.entry*, %struct.entry** %10, align 8
  store %struct.entry* %11, %struct.entry** %2, align 8
  %12 = load %struct.entry*, %struct.entry** %3, align 8
  %13 = bitcast %struct.entry* %12 to i8*
  call void @free(i8* %13) #7
  br label %4, !llvm.loop !68

14:                                               ; preds = %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }

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
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
!32 = distinct !{!32, !5}
!33 = distinct !{!33, !5}
!34 = distinct !{!34, !5}
!35 = distinct !{!35, !5}
!36 = distinct !{!36, !5}
!37 = distinct !{!37, !5}
!38 = distinct !{!38, !5}
!39 = distinct !{!39, !5}
!40 = distinct !{!40, !5}
!41 = distinct !{!41, !5}
!42 = distinct !{!42, !5}
!43 = distinct !{!43, !5}
!44 = distinct !{!44, !5}
!45 = distinct !{!45, !5}
!46 = distinct !{!46, !5}
!47 = distinct !{!47, !5}
!48 = distinct !{!48, !5}
!49 = distinct !{!49, !5}
!50 = distinct !{!50, !5}
!51 = distinct !{!51, !5}
!52 = distinct !{!52, !5}
!53 = distinct !{!53, !5}
!54 = distinct !{!54, !5}
!55 = distinct !{!55, !5}
!56 = distinct !{!56, !5}
!57 = distinct !{!57, !5}
!58 = distinct !{!58, !5}
!59 = distinct !{!59, !5}
!60 = distinct !{!60, !5}
!61 = distinct !{!61, !5}
!62 = distinct !{!62, !5}
!63 = distinct !{!63, !5}
!64 = distinct !{!64, !5}
!65 = distinct !{!65, !5}
!66 = distinct !{!66, !5}
!67 = distinct !{!67, !5}
!68 = distinct !{!68, !5}
