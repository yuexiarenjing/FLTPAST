; ModuleID = 'cache.c'
source_filename = "cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtable = type { i32, %struct.hashnode_t**, i32, %struct.hashnode_t*, i32, i32, %struct.read_result_t*, i32 }
%struct.hashnode_t = type { %struct.Hash_data, %struct.read_result_t*, %struct.hashnode_t* }
%struct.Hash_data = type { [1 x i64] }
%struct.read_result_t = type { i32, i32, %struct.read_result_t* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.stats_data = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [54 x i8] c"Komaster %u (%d, %d) Routine %u, (%d, %d), depth: %u \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Result: %u %u, (%d, %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Hash value: %lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Dump of hashtable\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Total size: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Size of hash table: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Number of positions in table: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Bucket %5d: \00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@movehash = internal global %struct.hashtable* null, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [49 x i8] c"Warning: failed to allocate hashtable, exiting.\0A\00", align 1
@stackp = external dso_local global i32, align 4
@depth = external dso_local global i32, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"%s %c%d: \00", align 1
@board_size = external dso_local global i32, align 4
@.str.12 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@board = external dso_local global [421 x i8], align 16
@.str.13 = private unnamed_addr constant [8 x i8] c"%s %c%d\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"%s PASS\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%s [%d]\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@sgf_dumptree = external dso_local global %struct.SGFTree_t*, align 8
@.str.17 = private unnamed_addr constant [15 x i8] c"%s %c%d %c%d: \00", align 1
@debug = external dso_local global i32, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"Hashtable cleared because it was full.\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"find_defense\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"defend1\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"defend2\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"defend3\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"defend4\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"attack\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"attack2\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"attack3\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"owl_attack\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"owl_defend\00", align 1
@.str.29 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__const.hashtable_partially_clear.routines = private unnamed_addr constant [16 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.29, i32 0, i32 0)], align 16
@.str.30 = private unnamed_addr constant [142 x i8] c"routine        total     0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15    16    17    18    19\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"%-14s%6d\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%6d\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"cache.c\00", align 1
@.str.34 = private unnamed_addr constant [34 x i8] c"routine >= 0 && routine < (6 + 1)\00", align 1
@hashdata = external dso_local global %struct.Hash_data, align 8
@stats = external dso_local global %struct.stats_data, align 4
@.str.35 = private unnamed_addr constant [43 x i8] c"We found position %H in the hash table...\0A\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Created position %H in the hash table...\0A\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"...but no previous result for routine %d and (%1m, %1m)...\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"%o...and unfortunately there was no room for one.\0A\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"%o...so we allocate a new one.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_result_dump(%struct.read_result_t* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca %struct.read_result_t*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store %struct.read_result_t* %0, %struct.read_result_t** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %6 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %7 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = lshr i32 %8, 29
  %10 = and i32 %9, 7
  %11 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %12 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = lshr i32 %13, 19
  %15 = and i32 %14, 1023
  %16 = udiv i32 %15, 20
  %17 = sub i32 %16, 1
  %18 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %19 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = lshr i32 %20, 19
  %22 = and i32 %21, 1023
  %23 = urem i32 %22, 20
  %24 = sub i32 %23, 1
  %25 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %26 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = lshr i32 %27, 15
  %29 = and i32 %28, 15
  %30 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %31 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = lshr i32 %32, 5
  %34 = and i32 %33, 1023
  %35 = udiv i32 %34, 20
  %36 = sub i32 %35, 1
  %37 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %38 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = lshr i32 %39, 5
  %41 = and i32 %40, 1023
  %42 = urem i32 %41, 20
  %43 = sub i32 %42, 1
  %44 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %45 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = lshr i32 %46, 0
  %48 = and i32 %47, 31
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %17, i32 %24, i32 %29, i32 %36, i32 %43, i32 %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %51 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %52 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = lshr i32 %53, 28
  %55 = and i32 %54, 3
  %56 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %57 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = lshr i32 %58, 24
  %60 = and i32 %59, 15
  %61 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %62 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = lshr i32 %63, 10
  %65 = and i32 %64, 1023
  %66 = udiv i32 %65, 20
  %67 = sub i32 %66, 1
  %68 = load %struct.read_result_t*, %struct.read_result_t** %3, align 8
  %69 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = lshr i32 %70, 10
  %72 = and i32 %71, 1023
  %73 = urem i32 %72, 20
  %74 = sub i32 %73, 1
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %60, i32 %67, i32 %74)
  ret void
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashnode_dump(%struct.hashnode_t* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca %struct.hashnode_t*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.read_result_t*, align 8
  store %struct.hashnode_t* %0, %struct.hashnode_t** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %7 = load %struct.hashnode_t*, %struct.hashnode_t** %3, align 8
  %8 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds [1 x i64], [1 x i64]* %9, i64 0, i64 0
  %11 = ptrtoint i64* %10 to i64
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i64 %11)
  %13 = load %struct.hashnode_t*, %struct.hashnode_t** %3, align 8
  %14 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %13, i32 0, i32 1
  %15 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  store %struct.read_result_t* %15, %struct.read_result_t** %5, align 8
  br label %16

16:                                               ; preds = %22, %2
  %17 = load %struct.read_result_t*, %struct.read_result_t** %5, align 8
  %18 = icmp ne %struct.read_result_t* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.read_result_t*, %struct.read_result_t** %5, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @read_result_dump(%struct.read_result_t* %20, %struct._IO_FILE* %21)
  br label %22

22:                                               ; preds = %19
  %23 = load %struct.read_result_t*, %struct.read_result_t** %5, align 8
  %24 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %23, i32 0, i32 2
  %25 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  store %struct.read_result_t* %25, %struct.read_result_t** %5, align 8
  br label %16, !llvm.loop !4

26:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hashtable_dump(%struct.hashtable* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca %struct.hashtable*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hashnode_t*, align 8
  store %struct.hashtable* %0, %struct.hashtable** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %10 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %11 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %12)
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %16 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %20 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %21 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %60, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %27 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %24
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %32)
  %34 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %35 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %34, i32 0, i32 1
  %36 = load %struct.hashnode_t**, %struct.hashnode_t*** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %36, i64 %38
  %40 = load %struct.hashnode_t*, %struct.hashnode_t** %39, align 8
  store %struct.hashnode_t* %40, %struct.hashnode_t** %6, align 8
  %41 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %42 = icmp eq %struct.hashnode_t* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %57

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %50, %46
  %48 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %49 = icmp ne %struct.hashnode_t* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @hashnode_dump(%struct.hashnode_t* %51, %struct._IO_FILE* %52)
  %53 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %54 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %53, i32 0, i32 2
  %55 = load %struct.hashnode_t*, %struct.hashnode_t** %54, align 8
  store %struct.hashnode_t* %55, %struct.hashnode_t** %6, align 8
  br label %47, !llvm.loop !6

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %43
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %24, !llvm.loop !7

63:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reading_cache_init() #0 {
  %1 = alloca i32, align 4
  store i32 400000, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sitofp i32 %2 to double
  %4 = fmul double 1.500000e+00, %3
  %5 = fptosi double %4 to i32
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  %8 = sitofp i32 %7 to double
  %9 = fmul double 1.400000e+00, %8
  %10 = fptosi double %9 to i32
  %11 = call %struct.hashtable* @hashtable_new(i32 %5, i32 %6, i32 %10)
  store %struct.hashtable* %11, %struct.hashtable** @movehash, align 8
  %12 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  %13 = icmp ne %struct.hashtable* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  call void @abort() #6
  unreachable

17:                                               ; preds = %0
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hashtable* @hashtable_new(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hashtable*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hashtable*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  call void @hash_init()
  %9 = call noalias align 16 i8* @malloc(i64 56) #7
  %10 = bitcast i8* %9 to %struct.hashtable*
  store %struct.hashtable* %10, %struct.hashtable** %8, align 8
  %11 = load %struct.hashtable*, %struct.hashtable** %8, align 8
  %12 = icmp eq %struct.hashtable* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.hashtable* null, %struct.hashtable** %4, align 8
  br label %26

14:                                               ; preds = %3
  %15 = load %struct.hashtable*, %struct.hashtable** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @hashtable_init(%struct.hashtable* %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.hashtable*, %struct.hashtable** %8, align 8
  %23 = bitcast %struct.hashtable* %22 to i8*
  call void @free(i8* %23) #7
  store %struct.hashtable* null, %struct.hashtable** %4, align 8
  br label %26

24:                                               ; preds = %14
  %25 = load %struct.hashtable*, %struct.hashtable** %8, align 8
  store %struct.hashtable* %25, %struct.hashtable** %4, align 8
  br label %26

26:                                               ; preds = %24, %21, %13
  %27 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  ret %struct.hashtable* %27
}

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reading_cache_clear() #0 {
  %1 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  call void @hashtable_clear(%struct.hashtable* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashtable_clear(%struct.hashtable* %0) #0 {
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hashtable* %0, %struct.hashtable** %2, align 8
  %5 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %6 = icmp ne %struct.hashtable* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %66

8:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %17 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %16, i32 0, i32 1
  %18 = load %struct.hashnode_t**, %struct.hashnode_t*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %18, i64 %20
  store %struct.hashnode_t* null, %struct.hashnode_t** %21, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %9, !llvm.loop !8

25:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %29 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %34 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %33, i32 0, i32 6
  %35 = load %struct.read_result_t*, %struct.read_result_t** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %35, i64 %37
  %39 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %26, !llvm.loop !9

43:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %47 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %52 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %51, i32 0, i32 3
  %53 = load %struct.hashnode_t*, %struct.hashnode_t** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %53, i64 %55
  %57 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %56, i32 0, i32 1
  store %struct.read_result_t* null, %struct.read_result_t** %57, align 8
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %44, !llvm.loop !10

61:                                               ; preds = %44
  %62 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %63 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %62, i32 0, i32 4
  store i32 0, i32* %63, align 8
  %64 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %65 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %64, i32 0, i32 7
  store i32 0, i32* %65, align 8
  br label %66

66:                                               ; preds = %61, %7
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_read_result(i32 %0, i32 %1, i32 %2, i32* %3, %struct.read_result_t** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.read_result_t**, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.read_result_t** %4, %struct.read_result_t*** %11, align 8
  %13 = load i32, i32* @stackp, align 4
  %14 = load i32, i32* @depth, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load %struct.read_result_t**, %struct.read_result_t*** %11, align 8
  store %struct.read_result_t* null, %struct.read_result_t** %17, align 8
  store i32 0, i32* %6, align 4
  br label %44

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @find_origin(i32 %20)
  %22 = load i32*, i32** %10, align 8
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %10, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.read_result_t**, %struct.read_result_t*** %11, align 8
  %29 = call i32 @do_get_read_result(i32 %23, i32 %24, i32 %25, i32 %27, i32 0, %struct.read_result_t** %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.read_result_t**, %struct.read_result_t*** %11, align 8
  %31 = load %struct.read_result_t*, %struct.read_result_t** %30, align 8
  %32 = icmp eq %struct.read_result_t* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %18
  %34 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  call void @hashtable_partially_clear(%struct.hashtable* %34)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.read_result_t**, %struct.read_result_t*** %11, align 8
  %41 = call i32 @do_get_read_result(i32 %35, i32 %36, i32 %37, i32 %39, i32 0, %struct.read_result_t** %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %33, %18
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %42, %16
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @find_origin(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_get_read_result(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.read_result_t** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.read_result_t**, align 8
  %13 = alloca %struct.hashnode_t*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.read_result_t** %5, %struct.read_result_t*** %12, align 8
  %15 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  %16 = call %struct.hashnode_t* @hashtable_search(%struct.hashtable* %15, %struct.Hash_data* @hashdata)
  store %struct.hashnode_t* %16, %struct.hashnode_t** %13, align 8
  %17 = load %struct.hashnode_t*, %struct.hashnode_t** %13, align 8
  %18 = icmp ne %struct.hashnode_t* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %6
  %20 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 2), align 4
  %22 = load i32, i32* @debug, align 4
  %23 = and i32 %22, 524288
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %28

26:                                               ; preds = %19
  %27 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.35, i64 0, i64 0), i64 ptrtoint (%struct.Hash_data* @hashdata to i64))
  br label %28

28:                                               ; preds = %26, %25
  br label %43

29:                                               ; preds = %6
  %30 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  %31 = call %struct.hashnode_t* @hashtable_enter_position(%struct.hashtable* %30, %struct.Hash_data* @hashdata)
  store %struct.hashnode_t* %31, %struct.hashnode_t** %13, align 8
  %32 = load %struct.hashnode_t*, %struct.hashnode_t** %13, align 8
  %33 = icmp ne %struct.hashnode_t* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i32, i32* @debug, align 4
  %36 = and i32 %35, 524288
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  br label %41

39:                                               ; preds = %34
  %40 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i64 ptrtoint (%struct.Hash_data* @hashdata to i64))
  br label %41

41:                                               ; preds = %39, %38
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %28
  store i32 0, i32* %14, align 4
  %44 = load %struct.hashnode_t*, %struct.hashnode_t** %13, align 8
  %45 = icmp eq %struct.hashnode_t* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load %struct.read_result_t**, %struct.read_result_t*** %12, align 8
  store %struct.read_result_t* null, %struct.read_result_t** %47, align 8
  br label %104

48:                                               ; preds = %43
  %49 = load %struct.hashnode_t*, %struct.hashnode_t** %13, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call %struct.read_result_t* @hashnode_search(%struct.hashnode_t* %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.read_result_t**, %struct.read_result_t*** %12, align 8
  store %struct.read_result_t* %55, %struct.read_result_t** %56, align 8
  %57 = load %struct.read_result_t**, %struct.read_result_t*** %12, align 8
  %58 = load %struct.read_result_t*, %struct.read_result_t** %57, align 8
  %59 = icmp ne %struct.read_result_t* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %48
  %61 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 4), align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 4), align 4
  store i32 1, i32* %14, align 4
  br label %103

63:                                               ; preds = %48
  %64 = load i32, i32* @debug, align 4
  %65 = and i32 %64, 524288
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  br label %73

68:                                               ; preds = %63
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.37, i64 0, i64 0), i32 %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %68, %67
  %74 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  %75 = load %struct.hashnode_t*, %struct.hashnode_t** %13, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.read_result_t* @hashnode_new_result(%struct.hashtable* %74, %struct.hashnode_t* %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  %82 = load %struct.read_result_t**, %struct.read_result_t*** %12, align 8
  store %struct.read_result_t* %81, %struct.read_result_t** %82, align 8
  %83 = load %struct.read_result_t**, %struct.read_result_t*** %12, align 8
  %84 = load %struct.read_result_t*, %struct.read_result_t** %83, align 8
  %85 = icmp eq %struct.read_result_t* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %73
  %87 = load i32, i32* @debug, align 4
  %88 = and i32 %87, 524288
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  br label %93

91:                                               ; preds = %86
  %92 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.38, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91, %90
  br label %102

94:                                               ; preds = %73
  %95 = load i32, i32* @debug, align 4
  %96 = and i32 %95, 524288
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  br label %101

99:                                               ; preds = %94
  %100 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %98
  br label %102

102:                                              ; preds = %101, %93
  br label %103

103:                                              ; preds = %102, %60
  br label %104

104:                                              ; preds = %103, %46
  %105 = load i32, i32* %14, align 4
  ret i32 %105
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashtable_partially_clear(%struct.hashtable* %0) #0 {
  %2 = alloca %struct.hashtable*, align 8
  %3 = alloca %struct.hashnode_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashnode_t*, align 8
  %6 = alloca %struct.hashnode_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [7 x [20 x i32]], align 16
  %10 = alloca [16 x i8*], align 16
  %11 = alloca i32, align 4
  store %struct.hashtable* %0, %struct.hashtable** %2, align 8
  %12 = load i32, i32* @debug, align 4
  %13 = and i32 %12, 32768
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %18

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %15
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 7
  br i1 %21, label %22, label %40

22:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 20
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [7 x [20 x i32]], [7 x [20 x i32]]* %9, i64 0, i64 %28
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [20 x i32], [20 x i32]* %29, i64 0, i64 %31
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %23, !llvm.loop !11

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %19, !llvm.loop !12

40:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %120, %40
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %44 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %123

47:                                               ; preds = %41
  %48 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %49 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %48, i32 0, i32 3
  %50 = load %struct.hashnode_t*, %struct.hashnode_t** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %50, i64 %52
  store %struct.hashnode_t* %53, %struct.hashnode_t** %3, align 8
  %54 = load %struct.hashnode_t*, %struct.hashnode_t** %3, align 8
  %55 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %54, i32 0, i32 1
  %56 = load %struct.read_result_t*, %struct.read_result_t** %55, align 8
  %57 = icmp eq %struct.read_result_t* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %120

59:                                               ; preds = %47
  %60 = load %struct.hashnode_t*, %struct.hashnode_t** %3, align 8
  %61 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds [1 x i64], [1 x i64]* %62, i64 0, i64 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %66 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = urem i64 %64, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %4, align 4
  store %struct.hashnode_t* null, %struct.hashnode_t** %5, align 8
  %71 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %72 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %71, i32 0, i32 1
  %73 = load %struct.hashnode_t**, %struct.hashnode_t*** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %73, i64 %75
  %77 = load %struct.hashnode_t*, %struct.hashnode_t** %76, align 8
  store %struct.hashnode_t* %77, %struct.hashnode_t** %6, align 8
  %78 = load %struct.hashnode_t*, %struct.hashnode_t** %3, align 8
  %79 = getelementptr inbounds [7 x [20 x i32]], [7 x [20 x i32]]* %9, i64 0, i64 0
  call void @hashtable_unlink_closed_results(%struct.hashnode_t* %78, i32 7, i32 3, [20 x i32]* %79)
  %80 = load %struct.hashnode_t*, %struct.hashnode_t** %3, align 8
  %81 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %80, i32 0, i32 1
  %82 = load %struct.read_result_t*, %struct.read_result_t** %81, align 8
  %83 = icmp ne %struct.read_result_t* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %59
  br label %120

85:                                               ; preds = %59
  br label %86

86:                                               ; preds = %118, %85
  %87 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %88 = icmp ne %struct.hashnode_t* %87, null
  br i1 %88, label %89, label %119

89:                                               ; preds = %86
  %90 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %91 = load %struct.hashnode_t*, %struct.hashnode_t** %3, align 8
  %92 = icmp ne %struct.hashnode_t* %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  store %struct.hashnode_t* %94, %struct.hashnode_t** %5, align 8
  %95 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %96 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %95, i32 0, i32 2
  %97 = load %struct.hashnode_t*, %struct.hashnode_t** %96, align 8
  store %struct.hashnode_t* %97, %struct.hashnode_t** %6, align 8
  br label %118

98:                                               ; preds = %89
  %99 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  %100 = icmp eq %struct.hashnode_t* %99, null
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %103 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %102, i32 0, i32 2
  %104 = load %struct.hashnode_t*, %struct.hashnode_t** %103, align 8
  %105 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %106 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %105, i32 0, i32 1
  %107 = load %struct.hashnode_t**, %struct.hashnode_t*** %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %107, i64 %109
  store %struct.hashnode_t* %104, %struct.hashnode_t** %110, align 8
  br label %117

111:                                              ; preds = %98
  %112 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %113 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %112, i32 0, i32 2
  %114 = load %struct.hashnode_t*, %struct.hashnode_t** %113, align 8
  %115 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  %116 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %115, i32 0, i32 2
  store %struct.hashnode_t* %114, %struct.hashnode_t** %116, align 8
  br label %117

117:                                              ; preds = %111, %101
  br label %119

118:                                              ; preds = %93
  br label %86, !llvm.loop !13

119:                                              ; preds = %117, %86
  br label %120

120:                                              ; preds = %119, %84, %58
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %41, !llvm.loop !14

123:                                              ; preds = %41
  %124 = load i32, i32* @debug, align 4
  %125 = and i32 %124, 32768
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %186

127:                                              ; preds = %123
  %128 = bitcast [16 x i8*]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %128, i8* align 16 bitcast ([16 x i8*]* @__const.hashtable_partially_clear.routines to i8*), i64 128, i1 false)
  %129 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %129, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.30, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %182, %127
  %132 = load i32, i32* %7, align 4
  %133 = icmp slt i32 %132, 7
  br i1 %133, label %134, label %185

134:                                              ; preds = %131
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %135

135:                                              ; preds = %148, %134
  %136 = load i32, i32* %8, align 4
  %137 = icmp slt i32 %136, 20
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [7 x [20 x i32]], [7 x [20 x i32]]* %9, i64 0, i64 %140
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [20 x i32], [20 x i32]* %141, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %135, !llvm.loop !15

151:                                              ; preds = %135
  %152 = load i32, i32* %11, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %182

155:                                              ; preds = %151
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %157 = load i32, i32* %7, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [16 x i8*], [16 x i8*]* %10, i64 0, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8* %160, i32 %161)
  store i32 0, i32* %8, align 4
  br label %163

163:                                              ; preds = %176, %155
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 20
  br i1 %165, label %166, label %179

166:                                              ; preds = %163
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [7 x [20 x i32]], [7 x [20 x i32]]* %9, i64 0, i64 %169
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [20 x i32], [20 x i32]* %170, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %166
  %177 = load i32, i32* %8, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %8, align 4
  br label %163, !llvm.loop !16

179:                                              ; preds = %163
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %154
  %183 = load i32, i32* %7, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %7, align 4
  br label %131, !llvm.loop !17

185:                                              ; preds = %131
  br label %186

186:                                              ; preds = %185, %123
  %187 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %188 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %187, i32 0, i32 7
  store i32 0, i32* %188, align 8
  %189 = load %struct.hashtable*, %struct.hashtable** %2, align 8
  %190 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %189, i32 0, i32 4
  store i32 0, i32* %190, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_read_result2(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, %struct.read_result_t** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.read_result_t**, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.read_result_t** %5, %struct.read_result_t*** %13, align 8
  %15 = load i32, i32* @stackp, align 4
  %16 = load i32, i32* @depth, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load %struct.read_result_t**, %struct.read_result_t*** %13, align 8
  store %struct.read_result_t* null, %struct.read_result_t** %19, align 8
  store i32 0, i32* %7, align 4
  br label %54

20:                                               ; preds = %6
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @find_origin(i32 %22)
  %24 = load i32*, i32** %11, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %12, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @find_origin(i32 %26)
  %28 = load i32*, i32** %12, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.read_result_t**, %struct.read_result_t*** %13, align 8
  %37 = call i32 @do_get_read_result(i32 %29, i32 %30, i32 %31, i32 %33, i32 %35, %struct.read_result_t** %36)
  store i32 %37, i32* %14, align 4
  %38 = load %struct.read_result_t**, %struct.read_result_t*** %13, align 8
  %39 = load %struct.read_result_t*, %struct.read_result_t** %38, align 8
  %40 = icmp eq %struct.read_result_t* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %20
  %42 = load %struct.hashtable*, %struct.hashtable** @movehash, align 8
  call void @hashtable_partially_clear(%struct.hashtable* %42)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.read_result_t**, %struct.read_result_t*** %13, align 8
  %51 = call i32 @do_get_read_result(i32 %43, i32 %44, i32 %45, i32 %47, i32 %49, %struct.read_result_t** %50)
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %41, %20
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %52, %18
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgf_trace(i8* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca [100 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = srem i32 %14, 20
  %16 = sub nsw i32 %15, 1
  %17 = add nsw i32 %16, 65
  %18 = load i32, i32* %7, align 4
  %19 = srem i32 %18, 20
  %20 = sub nsw i32 %19, 1
  %21 = icmp sge i32 %20, 8
  %22 = zext i1 %21 to i32
  %23 = add nsw i32 %17, %22
  %24 = load i32, i32* @board_size, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sdiv i32 %25, 20
  %27 = sub nsw i32 %26, 1
  %28 = sub nsw i32 %24, %27
  %29 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %13, i32 %23, i32 %28) #7
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %5
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %35 = call i64 @strlen(i8* %34) #8
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  br label %91

38:                                               ; preds = %5
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 3
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %48 = call i64 @strlen(i8* %47) #8
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @result_to_string(i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = srem i32 %52, 20
  %54 = sub nsw i32 %53, 1
  %55 = add nsw i32 %54, 65
  %56 = load i32, i32* %8, align 4
  %57 = srem i32 %56, 20
  %58 = sub nsw i32 %57, 1
  %59 = icmp sge i32 %58, 8
  %60 = zext i1 %59 to i32
  %61 = add nsw i32 %55, %60
  %62 = load i32, i32* @board_size, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sdiv i32 %63, 20
  %65 = sub nsw i32 %64, 1
  %66 = sub nsw i32 %62, %65
  %67 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %51, i32 %61, i32 %66) #7
  br label %90

68:                                               ; preds = %38
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @is_pass(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %74 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %75 = call i64 @strlen(i8* %74) #8
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* %9, align 4
  %78 = call i8* @result_to_string(i32 %77)
  %79 = call i32 (i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %78) #7
  br label %89

80:                                               ; preds = %68
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %83 = call i64 @strlen(i8* %82) #8
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* %9, align 4
  %86 = call i8* @result_to_string(i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %86, i32 %87) #7
  br label %89

89:                                               ; preds = %80, %72
  br label %90

90:                                               ; preds = %89, %45
  br label %91

91:                                               ; preds = %90, %32
  %92 = load i8*, i8** %10, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %96 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  %97 = call i64 @strlen(i8* %96) #8
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 (i8*, i8*, ...) @sprintf(i8* %98, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %99) #7
  br label %101

101:                                              ; preds = %94, %91
  %102 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %103 = getelementptr inbounds [100 x i8], [100 x i8]* %11, i64 0, i64 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %102, i8* %103)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

declare dso_local i8* @result_to_string(i32) #1

declare dso_local i32 @is_pass(i32) #1

declare dso_local void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgf_trace2(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [100 x i8], align 16
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* %8, align 4
  %17 = srem i32 %16, 20
  %18 = sub nsw i32 %17, 1
  %19 = add nsw i32 %18, 65
  %20 = load i32, i32* %8, align 4
  %21 = srem i32 %20, 20
  %22 = sub nsw i32 %21, 1
  %23 = icmp sge i32 %22, 8
  %24 = zext i1 %23 to i32
  %25 = add nsw i32 %19, %24
  %26 = load i32, i32* @board_size, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %27, 20
  %29 = sub nsw i32 %28, 1
  %30 = sub nsw i32 %26, %29
  %31 = load i32, i32* %9, align 4
  %32 = srem i32 %31, 20
  %33 = sub nsw i32 %32, 1
  %34 = add nsw i32 %33, 65
  %35 = load i32, i32* %9, align 4
  %36 = srem i32 %35, 20
  %37 = sub nsw i32 %36, 1
  %38 = icmp sge i32 %37, 8
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 %34, %39
  %41 = load i32, i32* @board_size, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sdiv i32 %42, 20
  %44 = sub nsw i32 %43, 1
  %45 = sub nsw i32 %41, %44
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %15, i32 %25, i32 %30, i32 %40, i32 %45) #7
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %6
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %52 = call i64 @strlen(i8* %51) #8
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0)) #7
  br label %108

55:                                               ; preds = %6
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp ne i32 %60, 3
  br i1 %61, label %62, label %85

62:                                               ; preds = %55
  %63 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %64 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %65 = call i64 @strlen(i8* %64) #8
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* %11, align 4
  %68 = call i8* @result_to_string(i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = srem i32 %69, 20
  %71 = sub nsw i32 %70, 1
  %72 = add nsw i32 %71, 65
  %73 = load i32, i32* %10, align 4
  %74 = srem i32 %73, 20
  %75 = sub nsw i32 %74, 1
  %76 = icmp sge i32 %75, 8
  %77 = zext i1 %76 to i32
  %78 = add nsw i32 %72, %77
  %79 = load i32, i32* @board_size, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sdiv i32 %80, 20
  %82 = sub nsw i32 %81, 1
  %83 = sub nsw i32 %79, %82
  %84 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8* %68, i32 %78, i32 %83) #7
  br label %107

85:                                               ; preds = %55
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @is_pass(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %91 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %92 = call i64 @strlen(i8* %91) #8
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i32, i32* %11, align 4
  %95 = call i8* @result_to_string(i32 %94)
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* %95) #7
  br label %106

97:                                               ; preds = %85
  %98 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %99 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %100 = call i64 @strlen(i8* %99) #8
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i32, i32* %11, align 4
  %103 = call i8* @result_to_string(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i8*, i8*, ...) @sprintf(i8* %101, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i8* %103, i32 %104) #7
  br label %106

106:                                              ; preds = %97, %89
  br label %107

107:                                              ; preds = %106, %62
  br label %108

108:                                              ; preds = %107, %49
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %113 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  %114 = call i64 @strlen(i8* %113) #8
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8*, i8** %12, align 8
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %116) #7
  br label %118

118:                                              ; preds = %111, %108
  %119 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %120 = getelementptr inbounds [100 x i8], [100 x i8]* %13, i64 0, i64 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %119, i8* %120)
  ret void
}

declare dso_local void @hash_init() #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashtable_init(%struct.hashtable* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hashtable*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hashtable* %0, %struct.hashtable** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  call void @hash_init()
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %12 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = call noalias align 16 i8* @malloc(i64 %15) #7
  %17 = bitcast i8* %16 to %struct.hashnode_t**
  %18 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 1
  store %struct.hashnode_t** %17, %struct.hashnode_t*** %19, align 8
  %20 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %21 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 1
  %22 = load %struct.hashnode_t**, %struct.hashnode_t*** %21, align 8
  %23 = icmp eq %struct.hashnode_t** %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %26 = bitcast %struct.hashtable* %25 to i8*
  call void @free(i8* %26) #7
  store i32 0, i32* %5, align 4
  br label %77

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %30 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 24
  %34 = call noalias align 16 i8* @malloc(i64 %33) #7
  %35 = bitcast i8* %34 to %struct.hashnode_t*
  %36 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %37 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %36, i32 0, i32 3
  store %struct.hashnode_t* %35, %struct.hashnode_t** %37, align 8
  %38 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %39 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %38, i32 0, i32 3
  %40 = load %struct.hashnode_t*, %struct.hashnode_t** %39, align 8
  %41 = icmp eq %struct.hashnode_t* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %27
  %43 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %44 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %43, i32 0, i32 1
  %45 = load %struct.hashnode_t**, %struct.hashnode_t*** %44, align 8
  %46 = bitcast %struct.hashnode_t** %45 to i8*
  call void @free(i8* %46) #7
  %47 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %48 = bitcast %struct.hashtable* %47 to i8*
  call void @free(i8* %48) #7
  store i32 0, i32* %5, align 4
  br label %77

49:                                               ; preds = %27
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %52 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 16
  %56 = call noalias align 16 i8* @malloc(i64 %55) #7
  %57 = bitcast i8* %56 to %struct.read_result_t*
  %58 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %59 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %58, i32 0, i32 6
  store %struct.read_result_t* %57, %struct.read_result_t** %59, align 8
  %60 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %61 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %60, i32 0, i32 6
  %62 = load %struct.read_result_t*, %struct.read_result_t** %61, align 8
  %63 = icmp eq %struct.read_result_t* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %49
  %65 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %66 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %65, i32 0, i32 1
  %67 = load %struct.hashnode_t**, %struct.hashnode_t*** %66, align 8
  %68 = bitcast %struct.hashnode_t** %67 to i8*
  call void @free(i8* %68) #7
  %69 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %70 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %69, i32 0, i32 3
  %71 = load %struct.hashnode_t*, %struct.hashnode_t** %70, align 8
  %72 = bitcast %struct.hashnode_t* %71 to i8*
  call void @free(i8* %72) #7
  %73 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  %74 = bitcast %struct.hashtable* %73 to i8*
  call void @free(i8* %74) #7
  store i32 0, i32* %5, align 4
  br label %77

75:                                               ; preds = %49
  %76 = load %struct.hashtable*, %struct.hashtable** %6, align 8
  call void @hashtable_clear(%struct.hashtable* %76)
  store i32 1, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %64, %42, %24
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #3

declare dso_local i32 @gprintf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hashtable_unlink_closed_results(%struct.hashnode_t* %0, i32 %1, i32 %2, [20 x i32]* %3) #0 {
  %5 = alloca %struct.hashnode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [20 x i32]*, align 8
  %9 = alloca %struct.read_result_t*, align 8
  %10 = alloca %struct.read_result_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hashnode_t* %0, %struct.hashnode_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store [20 x i32]* %3, [20 x i32]** %8, align 8
  store %struct.read_result_t* null, %struct.read_result_t** %9, align 8
  %13 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  %14 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %13, i32 0, i32 1
  %15 = load %struct.read_result_t*, %struct.read_result_t** %14, align 8
  store %struct.read_result_t* %15, %struct.read_result_t** %10, align 8
  br label %16

16:                                               ; preds = %103, %4
  %17 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %18 = icmp ne %struct.read_result_t* %17, null
  br i1 %18, label %19, label %107

19:                                               ; preds = %16
  %20 = load i32, i32* @depth, align 4
  %21 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %22 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = lshr i32 %23, 0
  %25 = and i32 %24, 31
  %26 = sub i32 %20, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp sgt i32 %27, 19
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 19, i32* %11, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %36 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = lshr i32 %37, 15
  %39 = and i32 %38, 15
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 7
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  br label %47

46:                                               ; preds = %42, %34
  call void @abortgo(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i32 273, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.34, i64 0, i64 0), i32 -1, i32 -1)
  br label %47

47:                                               ; preds = %46, %45
  %48 = load [20 x i32]*, [20 x i32]** %8, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [20 x i32], [20 x i32]* %48, i64 %50
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [20 x i32], [20 x i32]* %51, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %58 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = lshr i32 %59, 28
  %61 = and i32 %60, 3
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %101

63:                                               ; preds = %47
  %64 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %65 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = lshr i32 %66, 15
  %68 = and i32 %67, 15
  %69 = shl i32 1, %68
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %101

73:                                               ; preds = %63
  %74 = load i32, i32* @depth, align 4
  %75 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %76 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = lshr i32 %77, 0
  %79 = and i32 %78, 31
  %80 = sub i32 %74, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp uge i32 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %73
  %84 = load %struct.read_result_t*, %struct.read_result_t** %9, align 8
  %85 = icmp eq %struct.read_result_t* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %88 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %87, i32 0, i32 2
  %89 = load %struct.read_result_t*, %struct.read_result_t** %88, align 8
  %90 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  %91 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %90, i32 0, i32 1
  store %struct.read_result_t* %89, %struct.read_result_t** %91, align 8
  br label %98

92:                                               ; preds = %83
  %93 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %94 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %93, i32 0, i32 2
  %95 = load %struct.read_result_t*, %struct.read_result_t** %94, align 8
  %96 = load %struct.read_result_t*, %struct.read_result_t** %9, align 8
  %97 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %96, i32 0, i32 2
  store %struct.read_result_t* %95, %struct.read_result_t** %97, align 8
  br label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %100 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %99, i32 0, i32 1
  store i32 0, i32* %100, align 4
  br label %103

101:                                              ; preds = %73, %63, %47
  %102 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  store %struct.read_result_t* %102, %struct.read_result_t** %9, align 8
  br label %103

103:                                              ; preds = %101, %98
  %104 = load %struct.read_result_t*, %struct.read_result_t** %10, align 8
  %105 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %104, i32 0, i32 2
  %106 = load %struct.read_result_t*, %struct.read_result_t** %105, align 8
  store %struct.read_result_t* %106, %struct.read_result_t** %10, align 8
  br label %16, !llvm.loop !18

107:                                              ; preds = %16
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hashnode_t* @hashtable_search(%struct.hashtable* %0, %struct.Hash_data* %1) #0 {
  %3 = alloca %struct.hashtable*, align 8
  %4 = alloca %struct.Hash_data*, align 8
  %5 = alloca %struct.hashnode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hashtable* %0, %struct.hashtable** %3, align 8
  store %struct.Hash_data* %1, %struct.Hash_data** %4, align 8
  %8 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %9 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %8, i32 0, i32 0
  %10 = getelementptr inbounds [1 x i64], [1 x i64]* %9, i64 0, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %13 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = urem i64 %11, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hashtable*, %struct.hashtable** %3, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 1
  %20 = load %struct.hashnode_t**, %struct.hashnode_t*** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %20, i64 %22
  %24 = load %struct.hashnode_t*, %struct.hashnode_t** %23, align 8
  store %struct.hashnode_t* %24, %struct.hashnode_t** %5, align 8
  br label %25

25:                                               ; preds = %73, %2
  %26 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  %27 = icmp ne %struct.hashnode_t* %26, null
  br i1 %27, label %28, label %77

28:                                               ; preds = %25
  %29 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  %30 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %30, i32 0, i32 0
  %32 = getelementptr inbounds [1 x i64], [1 x i64]* %31, i64 0, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %35 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds [1 x i64], [1 x i64]* %35, i64 0, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %73

40:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %64, %40
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %43, 1
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  %47 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [1 x i64], [1 x i64]* %48, i64 0, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.Hash_data*, %struct.Hash_data** %4, align 8
  %54 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [1 x i64], [1 x i64]* %54, i64 0, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %52, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 5), align 4
  br label %67

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %41, !llvm.loop !19

67:                                               ; preds = %60, %41
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp uge i64 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %77

72:                                               ; preds = %67
  br label %73

73:                                               ; preds = %72, %39
  %74 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  %75 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %74, i32 0, i32 2
  %76 = load %struct.hashnode_t*, %struct.hashnode_t** %75, align 8
  store %struct.hashnode_t* %76, %struct.hashnode_t** %5, align 8
  br label %25, !llvm.loop !20

77:                                               ; preds = %71, %25
  %78 = load %struct.hashnode_t*, %struct.hashnode_t** %5, align 8
  ret %struct.hashnode_t* %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hashnode_t* @hashtable_enter_position(%struct.hashtable* %0, %struct.Hash_data* %1) #0 {
  %3 = alloca %struct.hashnode_t*, align 8
  %4 = alloca %struct.hashtable*, align 8
  %5 = alloca %struct.Hash_data*, align 8
  %6 = alloca %struct.hashnode_t*, align 8
  %7 = alloca i32, align 4
  store %struct.hashtable* %0, %struct.hashtable** %4, align 8
  store %struct.Hash_data* %1, %struct.Hash_data** %5, align 8
  %8 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %9 = load %struct.Hash_data*, %struct.Hash_data** %5, align 8
  %10 = call %struct.hashnode_t* @hashtable_search(%struct.hashtable* %8, %struct.Hash_data* %9)
  store %struct.hashnode_t* %10, %struct.hashnode_t** %6, align 8
  %11 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %12 = icmp ne %struct.hashnode_t* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  store %struct.hashnode_t* %14, %struct.hashnode_t** %3, align 8
  br label %98

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %38, %15
  %17 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %18 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %21 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %16
  %25 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %26 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %25, i32 0, i32 3
  %27 = load %struct.hashnode_t*, %struct.hashnode_t** %26, align 8
  %28 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %29 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %27, i64 %31
  %33 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %32, i32 0, i32 1
  %34 = load %struct.read_result_t*, %struct.read_result_t** %33, align 8
  %35 = icmp ne %struct.read_result_t* %34, null
  br label %36

36:                                               ; preds = %24, %16
  %37 = phi i1 [ false, %16 ], [ %35, %24 ]
  br i1 %37, label %38, label %43

38:                                               ; preds = %36
  %39 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %40 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  br label %16, !llvm.loop !21

43:                                               ; preds = %36
  %44 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %45 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %48 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store %struct.hashnode_t* null, %struct.hashnode_t** %3, align 8
  br label %98

52:                                               ; preds = %43
  %53 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %54 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %53, i32 0, i32 3
  %55 = load %struct.hashnode_t*, %struct.hashnode_t** %54, align 8
  %56 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %57 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %55, i64 %60
  store %struct.hashnode_t* %61, %struct.hashnode_t** %6, align 8
  %62 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %63 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %62, i32 0, i32 0
  %64 = load %struct.Hash_data*, %struct.Hash_data** %5, align 8
  %65 = bitcast %struct.Hash_data* %63 to i8*
  %66 = bitcast %struct.Hash_data* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %65, i8* align 8 %66, i64 8, i1 false)
  %67 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %68 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %67, i32 0, i32 1
  store %struct.read_result_t* null, %struct.read_result_t** %68, align 8
  %69 = load %struct.Hash_data*, %struct.Hash_data** %5, align 8
  %70 = getelementptr inbounds %struct.Hash_data, %struct.Hash_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds [1 x i64], [1 x i64]* %70, i64 0, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %74 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = urem i64 %72, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %7, align 4
  %79 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %80 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %79, i32 0, i32 1
  %81 = load %struct.hashnode_t**, %struct.hashnode_t*** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %81, i64 %83
  %85 = load %struct.hashnode_t*, %struct.hashnode_t** %84, align 8
  %86 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %87 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %86, i32 0, i32 2
  store %struct.hashnode_t* %85, %struct.hashnode_t** %87, align 8
  %88 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  %89 = load %struct.hashtable*, %struct.hashtable** %4, align 8
  %90 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %89, i32 0, i32 1
  %91 = load %struct.hashnode_t**, %struct.hashnode_t*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.hashnode_t*, %struct.hashnode_t** %91, i64 %93
  store %struct.hashnode_t* %88, %struct.hashnode_t** %94, align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 1), align 4
  %97 = load %struct.hashnode_t*, %struct.hashnode_t** %6, align 8
  store %struct.hashnode_t* %97, %struct.hashnode_t** %3, align 8
  br label %98

98:                                               ; preds = %52, %51, %13
  %99 = load %struct.hashnode_t*, %struct.hashnode_t** %3, align 8
  ret %struct.hashnode_t* %99
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.read_result_t* @hashnode_search(%struct.hashnode_t* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hashnode_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.read_result_t*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hashnode_t* %0, %struct.hashnode_t** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = shl i32 %16, 10
  %18 = load i32, i32* %10, align 4
  %19 = or i32 %17, %18
  %20 = shl i32 %19, 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %20, %21
  %23 = shl i32 %22, 10
  %24 = load i32, i32* %11, align 4
  %25 = or i32 %23, %24
  %26 = shl i32 %25, 5
  %27 = load i32, i32* @depth, align 4
  %28 = load i32, i32* @stackp, align 4
  %29 = sub i32 %27, %28
  %30 = or i32 %26, %29
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %15, align 4
  %32 = load %struct.hashnode_t*, %struct.hashnode_t** %7, align 8
  %33 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %32, i32 0, i32 1
  %34 = load %struct.read_result_t*, %struct.read_result_t** %33, align 8
  store %struct.read_result_t* %34, %struct.read_result_t** %13, align 8
  br label %35

35:                                               ; preds = %53, %6
  %36 = load %struct.read_result_t*, %struct.read_result_t** %13, align 8
  %37 = icmp ne %struct.read_result_t* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load %struct.read_result_t*, %struct.read_result_t** %13, align 8
  %40 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.read_result_t*, %struct.read_result_t** %13, align 8
  %46 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1023
  %49 = load i32, i32* %15, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %57

52:                                               ; preds = %44, %38
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.read_result_t*, %struct.read_result_t** %13, align 8
  %55 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %54, i32 0, i32 2
  %56 = load %struct.read_result_t*, %struct.read_result_t** %55, align 8
  store %struct.read_result_t* %56, %struct.read_result_t** %13, align 8
  br label %35, !llvm.loop !22

57:                                               ; preds = %51, %35
  %58 = load %struct.read_result_t*, %struct.read_result_t** %13, align 8
  ret %struct.read_result_t* %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.read_result_t* @hashnode_new_result(%struct.hashtable* %0, %struct.hashnode_t* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.read_result_t*, align 8
  %9 = alloca %struct.hashtable*, align 8
  %10 = alloca %struct.hashnode_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.read_result_t*, align 8
  store %struct.hashtable* %0, %struct.hashtable** %9, align 8
  store %struct.hashnode_t* %1, %struct.hashnode_t** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  br label %17

17:                                               ; preds = %41, %7
  %18 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %19 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %22 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %17
  %26 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %27 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %26, i32 0, i32 6
  %28 = load %struct.read_result_t*, %struct.read_result_t** %27, align 8
  %29 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %30 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %28, i64 %32
  %34 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = lshr i32 %35, 28
  %37 = and i32 %36, 3
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %25, %17
  %40 = phi i1 [ false, %17 ], [ %38, %25 ]
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %43 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %17, !llvm.loop !23

46:                                               ; preds = %39
  %47 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %48 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %51 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store %struct.read_result_t* null, %struct.read_result_t** %8, align 8
  br label %104

55:                                               ; preds = %46
  %56 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %57 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %56, i32 0, i32 6
  %58 = load %struct.read_result_t*, %struct.read_result_t** %57, align 8
  %59 = load %struct.hashtable*, %struct.hashtable** %9, align 8
  %60 = getelementptr inbounds %struct.hashtable, %struct.hashtable* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %58, i64 %63
  store %struct.read_result_t* %64, %struct.read_result_t** %16, align 8
  %65 = load %struct.hashnode_t*, %struct.hashnode_t** %10, align 8
  %66 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %65, i32 0, i32 1
  %67 = load %struct.read_result_t*, %struct.read_result_t** %66, align 8
  %68 = load %struct.read_result_t*, %struct.read_result_t** %16, align 8
  %69 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %68, i32 0, i32 2
  store %struct.read_result_t* %67, %struct.read_result_t** %69, align 8
  %70 = load %struct.read_result_t*, %struct.read_result_t** %16, align 8
  %71 = load %struct.hashnode_t*, %struct.hashnode_t** %10, align 8
  %72 = getelementptr inbounds %struct.hashnode_t, %struct.hashnode_t* %71, i32 0, i32 1
  store %struct.read_result_t* %70, %struct.read_result_t** %72, align 8
  br label %73

73:                                               ; preds = %55
  %74 = load i32, i32* %12, align 4
  %75 = shl i32 %74, 10
  %76 = load i32, i32* %13, align 4
  %77 = or i32 %75, %76
  %78 = shl i32 %77, 4
  %79 = load i32, i32* %11, align 4
  %80 = or i32 %78, %79
  %81 = shl i32 %80, 10
  %82 = load i32, i32* %14, align 4
  %83 = or i32 %81, %82
  %84 = shl i32 %83, 5
  %85 = load i32, i32* @depth, align 4
  %86 = load i32, i32* @stackp, align 4
  %87 = sub i32 %85, %86
  %88 = or i32 %84, %87
  %89 = load %struct.read_result_t*, %struct.read_result_t** %16, align 8
  %90 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.read_result_t*, %struct.read_result_t** %16, align 8
  %92 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -1024
  %95 = or i32 %94, 268435456
  %96 = load i32, i32* %15, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.read_result_t*, %struct.read_result_t** %16, align 8
  %99 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %73
  %101 = load i32, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* getelementptr inbounds (%struct.stats_data, %struct.stats_data* @stats, i32 0, i32 3), align 4
  %103 = load %struct.read_result_t*, %struct.read_result_t** %16, align 8
  store %struct.read_result_t* %103, %struct.read_result_t** %8, align 8
  br label %104

104:                                              ; preds = %100, %54
  %105 = load %struct.read_result_t*, %struct.read_result_t** %8, align 8
  ret %struct.read_result_t* %105
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly willreturn }

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
