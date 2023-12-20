; ModuleID = 'sgfnode.c'
source_filename = "sgfnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [24 x i8] c"xalloc: Out of memory!\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"xrealloc: Out of memory!\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%3.1f\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"KM\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"C \00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%c%c:%s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"LB\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"%c%c:%i\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"TR\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"%c%c:%d\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"CR\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"MA\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sgfnode.c\00", align 1
@__PRETTY_FUNCTION__.sgfStartVariant = private unnamed_addr constant [36 x i8] c"SGFNode *sgfStartVariant(SGFNode *)\00", align 1
@__PRETTY_FUNCTION__.sgfAddChild = private unnamed_addr constant [32 x i8] c"SGFNode *sgfAddChild(SGFNode *)\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"%c+%3.1f\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"%c+%c\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"GNU Go %s Random Seed %d level %d\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"3.3.14\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"GN\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"GNU Go 3.3.14\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"RU\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"Chinese\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"Japanese\00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c"FF\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@sgffile = internal global %struct._IO_FILE* null, align 8
@.str.37 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@sgferr = internal global i8* null, align 8
@.str.38 = private unnamed_addr constant [32 x i8] c"Parse error: %s at position %d\0A\00", align 1
@sgferrpos = internal global i32 0, align 4
@.str.39 = private unnamed_addr constant [3 x i8] c"GM\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"SGF file might be for game other than go: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [24 x i8] c"Trying to load anyway.\0A\00", align 1
@.str.42 = private unnamed_addr constant [34 x i8] c"Unsupported SGF spec version: %d\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.43 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.44 = private unnamed_addr constant [17 x i8] c"Can not open %s\0A\00", align 1
@sgf_column = internal global i32 0, align 4
@lookahead = internal global i32 0, align 4
@.str.45 = private unnamed_addr constant [12 x i8] c"Empty file?\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"expected: %c\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Expected an upper case letter.\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"GM[1]\00", align 1
@.str.50 = private unnamed_addr constant [3 x i8] c"DT\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"BR\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"PW\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"WR\00", align 1
@.str.55 = private unnamed_addr constant [3 x i8] c"N \00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"B \00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"W \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xalloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = zext i32 %4 to i64
  %6 = call noalias align 16 i8* @malloc(i64 %5) #7
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  call void @exit(i32 2) #8
  unreachable

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = zext i32 %14 to i64
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 %15, i1 false)
  %16 = load i8*, i8** %3, align 8
  ret i8* %16
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xrealloc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = call align 16 i8* @realloc(i8* %6, i64 %8) #7
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  call void @exit(i32 2) #8
  unreachable

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  ret i8* %16
}

; Function Attrs: nounwind
declare dso_local align 16 i8* @realloc(i8*, i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfNewNode() #0 {
  %1 = alloca %struct.SGFNode_t*, align 8
  %2 = call i8* @xalloc(i32 32)
  %3 = bitcast i8* %2 to %struct.SGFNode_t*
  store %struct.SGFNode_t* %3, %struct.SGFNode_t** %1, align 8
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %1, align 8
  %5 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 3
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %5, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %1, align 8
  %7 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 0
  store %struct.SGFProperty_t* null, %struct.SGFProperty_t** %7, align 8
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %1, align 8
  %9 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %9, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %1, align 8
  %11 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 2
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %11, align 8
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %1, align 8
  ret %struct.SGFNode_t* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfFreeNode(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %4 = icmp eq %struct.SGFNode_t* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %18

6:                                                ; preds = %1
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %8 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %7, i32 0, i32 3
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %9)
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %11 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 2
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %11, align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %12)
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %14 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %13, i32 0, i32 0
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %14, align 8
  call void @sgfFreeProperty(%struct.SGFProperty_t* %15)
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %17 = bitcast %struct.SGFNode_t* %16 to i8*
  call void @free(i8* %17) #7
  br label %18

18:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfFreeProperty(%struct.SGFProperty_t* %0) #0 {
  %2 = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFProperty_t* %0, %struct.SGFProperty_t** %2, align 8
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %2, align 8
  %4 = icmp eq %struct.SGFProperty_t* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %15

6:                                                ; preds = %1
  %7 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %2, align 8
  %8 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %7, i32 0, i32 0
  %9 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  call void @sgfFreeProperty(%struct.SGFProperty_t* %9)
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %2, align 8
  %11 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %10, i32 0, i32 2
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* %12) #7
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %2, align 8
  %14 = bitcast %struct.SGFProperty_t* %13 to i8*
  call void @free(i8* %14) #7
  br label %15

15:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfAddProperty(%struct.SGFNode_t* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %9 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 0
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  store %struct.SGFProperty_t* %10, %struct.SGFProperty_t** %7, align 8
  %11 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %12 = icmp ne %struct.SGFProperty_t* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %19, %13
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %16 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %15, i32 0, i32 0
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %16, align 8
  %18 = icmp ne %struct.SGFProperty_t* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %21 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %20, i32 0, i32 0
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %21, align 8
  store %struct.SGFProperty_t* %22, %struct.SGFProperty_t** %7, align 8
  br label %14, !llvm.loop !4

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %28 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %29 = call %struct.SGFProperty_t* @sgfMkProperty(i8* %25, i8* %26, %struct.SGFNode_t* %27, %struct.SGFProperty_t* %28)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFProperty_t* @sgfMkProperty(i8* %0, i8* %1, %struct.SGFNode_t* %2, %struct.SGFProperty_t* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.SGFNode_t*, align 8
  %8 = alloca %struct.SGFProperty_t*, align 8
  %9 = alloca %struct.SGFProperty_t*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.SGFNode_t* %2, %struct.SGFNode_t** %7, align 8
  store %struct.SGFProperty_t* %3, %struct.SGFProperty_t** %8, align 8
  %10 = call i8* @xalloc(i32 24)
  %11 = bitcast i8* %10 to %struct.SGFProperty_t*
  store %struct.SGFProperty_t* %11, %struct.SGFProperty_t** %9, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strlen(i8* %12) #9
  %14 = add i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = call i8* @xalloc(i32 %15)
  %17 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  %18 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %17, i32 0, i32 2
  store i8* %16, i8** %18, align 8
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  %20 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %19, i32 0, i32 0
  store %struct.SGFProperty_t* null, %struct.SGFProperty_t** %20, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @strlen(i8* %21) #9
  %23 = icmp eq i64 %22, 1
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = or i32 %28, 8192
  %30 = trunc i32 %29 to i16
  %31 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  %32 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %31, i32 0, i32 1
  store i16 %30, i16* %32, align 8
  br label %47

33:                                               ; preds = %4
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = shl i32 %41, 8
  %43 = or i32 %37, %42
  %44 = trunc i32 %43 to i16
  %45 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  %46 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %45, i32 0, i32 1
  store i16 %44, i16* %46, align 8
  br label %47

47:                                               ; preds = %33, %24
  %48 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  %49 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @strcpy(i8* %50, i8* %51) #7
  %53 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %54 = icmp eq %struct.SGFProperty_t* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  %57 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %58 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %57, i32 0, i32 0
  store %struct.SGFProperty_t* %56, %struct.SGFProperty_t** %58, align 8
  br label %63

59:                                               ; preds = %47
  %60 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  %61 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %62 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %61, i32 0, i32 0
  store %struct.SGFProperty_t* %60, %struct.SGFProperty_t** %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %9, align 8
  ret %struct.SGFProperty_t* %64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfAddPropertyInt(%struct.SGFNode_t* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [10 x i8], align 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %9 = load i64, i64* %6, align 8
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %8, i64 10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %9)
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %10, i8* %11, i8* %12)
  ret void
}

declare dso_local void @gg_snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfAddPropertyFloat(%struct.SGFNode_t* %0, i8* %1, float %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca [10 x i8], align 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store float %2, float* %6, align 4
  %8 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  %9 = load float, float* %6, align 4
  %10 = fpext float %9 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %8, i64 10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %10)
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %11, i8* %12, i8* %13)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgfGetIntProperty(%struct.SGFNode_t* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.SGFProperty_t*, align 8
  %9 = alloca i16, align 2
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = or i32 %13, %18
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %9, align 2
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %22 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %21, i32 0, i32 0
  %23 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %22, align 8
  store %struct.SGFProperty_t* %23, %struct.SGFProperty_t** %8, align 8
  br label %24

24:                                               ; preds = %42, %3
  %25 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %26 = icmp ne %struct.SGFProperty_t* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %29 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* %9, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %37 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @atoi(i8* %38) #9
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  store i32 1, i32* %4, align 4
  br label %47

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %44 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %43, i32 0, i32 0
  %45 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %44, align 8
  store %struct.SGFProperty_t* %45, %struct.SGFProperty_t** %8, align 8
  br label %24, !llvm.loop !6

46:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgfGetFloatProperty(%struct.SGFNode_t* %0, i8* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca float*, align 8
  %8 = alloca %struct.SGFProperty_t*, align 8
  %9 = alloca i16, align 2
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store float* %2, float** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = or i32 %13, %18
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %9, align 2
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %22 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %21, i32 0, i32 0
  %23 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %22, align 8
  store %struct.SGFProperty_t* %23, %struct.SGFProperty_t** %8, align 8
  br label %24

24:                                               ; preds = %43, %3
  %25 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %26 = icmp ne %struct.SGFProperty_t* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %24
  %28 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %29 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* %9, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %27
  %36 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %37 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call double @atof(i8* %38) #9
  %40 = fptrunc double %39 to float
  %41 = load float*, float** %7, align 8
  store float %40, float* %41, align 4
  store i32 1, i32* %4, align 4
  br label %48

42:                                               ; preds = %27
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %45 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %44, i32 0, i32 0
  %46 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %45, align 8
  store %struct.SGFProperty_t* %46, %struct.SGFProperty_t** %8, align 8
  br label %24, !llvm.loop !7

47:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %35
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

; Function Attrs: nounwind readonly willreturn
declare dso_local double @atof(i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgfGetCharProperty(%struct.SGFNode_t* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.SGFProperty_t*, align 8
  %9 = alloca i16, align 2
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 1
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = shl i32 %17, 8
  %19 = or i32 %13, %18
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %9, align 2
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %22 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %21, i32 0, i32 0
  %23 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %22, align 8
  store %struct.SGFProperty_t* %23, %struct.SGFProperty_t** %8, align 8
  br label %24

24:                                               ; preds = %41, %3
  %25 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %26 = icmp ne %struct.SGFProperty_t* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %29 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %28, i32 0, i32 1
  %30 = load i16, i16* %29, align 8
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* %9, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %37 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  store i32 1, i32* %4, align 4
  br label %46

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %8, align 8
  %43 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %42, i32 0, i32 0
  %44 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %43, align 8
  store %struct.SGFProperty_t* %44, %struct.SGFProperty_t** %8, align 8
  br label %24, !llvm.loop !8

45:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfOverwriteProperty(%struct.SGFNode_t* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.SGFProperty_t*, align 8
  %8 = alloca i16, align 2
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = shl i32 %16, 8
  %18 = or i32 %12, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %21 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %20, i32 0, i32 0
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %21, align 8
  store %struct.SGFProperty_t* %22, %struct.SGFProperty_t** %7, align 8
  br label %23

23:                                               ; preds = %51, %3
  %24 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %25 = icmp ne %struct.SGFProperty_t* %24, null
  br i1 %25, label %26, label %55

26:                                               ; preds = %23
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %28 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = sext i16 %29 to i32
  %31 = load i16, i16* %8, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %26
  %35 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %36 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strlen(i8* %38) #9
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = call i8* @xrealloc(i8* %37, i32 %41)
  %43 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %44 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %46 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i8* @strcpy(i8* %47, i8* %48) #7
  br label %59

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50
  %52 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %53 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %52, i32 0, i32 0
  %54 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %53, align 8
  store %struct.SGFProperty_t* %54, %struct.SGFProperty_t** %7, align 8
  br label %23, !llvm.loop !9

55:                                               ; preds = %23
  %56 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = load i8*, i8** %6, align 8
  call void @sgfAddProperty(%struct.SGFNode_t* %56, i8* %57, i8* %58)
  br label %59

59:                                               ; preds = %55, %34
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfOverwritePropertyInt(%struct.SGFNode_t* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFProperty_t*, align 8
  %8 = alloca i16, align 2
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = shl i32 %16, 8
  %18 = or i32 %12, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %21 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %20, i32 0, i32 0
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %21, align 8
  store %struct.SGFProperty_t* %22, %struct.SGFProperty_t** %7, align 8
  br label %23

23:                                               ; preds = %46, %3
  %24 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %25 = icmp ne %struct.SGFProperty_t* %24, null
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %28 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = sext i16 %29 to i32
  %31 = load i16, i16* %8, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %36 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @xrealloc(i8* %37, i32 12)
  %39 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %40 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %42 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load i32, i32* %6, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %43, i64 12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  br label %55

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %48 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %47, i32 0, i32 0
  %49 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %48, align 8
  store %struct.SGFProperty_t* %49, %struct.SGFProperty_t** %7, align 8
  br label %23, !llvm.loop !10

50:                                               ; preds = %23
  %51 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  call void @sgfAddPropertyInt(%struct.SGFNode_t* %51, i8* %52, i64 %54)
  br label %55

55:                                               ; preds = %50, %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfOverwritePropertyFloat(%struct.SGFNode_t* %0, i8* %1, float %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca float, align 4
  %7 = alloca %struct.SGFProperty_t*, align 8
  %8 = alloca i16, align 2
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i8* %1, i8** %5, align 8
  store float %2, float* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = shl i32 %16, 8
  %18 = or i32 %12, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %21 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %20, i32 0, i32 0
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %21, align 8
  store %struct.SGFProperty_t* %22, %struct.SGFProperty_t** %7, align 8
  br label %23

23:                                               ; preds = %47, %3
  %24 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %25 = icmp ne %struct.SGFProperty_t* %24, null
  br i1 %25, label %26, label %51

26:                                               ; preds = %23
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %28 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %27, i32 0, i32 1
  %29 = load i16, i16* %28, align 8
  %30 = sext i16 %29 to i32
  %31 = load i16, i16* %8, align 2
  %32 = sext i16 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %26
  %35 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %36 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* @xrealloc(i8* %37, i32 15)
  %39 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %40 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %42 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = load float, float* %6, align 4
  %45 = fpext float %44 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %43, i64 15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %45)
  br label %55

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  %49 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %48, i32 0, i32 0
  %50 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %49, align 8
  store %struct.SGFProperty_t* %50, %struct.SGFProperty_t** %7, align 8
  br label %23, !llvm.loop !11

51:                                               ; preds = %23
  %52 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load float, float* %6, align 4
  call void @sgfAddPropertyFloat(%struct.SGFNode_t* %52, i8* %53, float %54)
  br label %55

55:                                               ; preds = %51, %34
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfPrev(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %7 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 1
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %9 = icmp ne %struct.SGFNode_t* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %2, align 8
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %13 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %12, i32 0, i32 1
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %13, align 8
  %15 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %14, i32 0, i32 2
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %15, align 8
  store %struct.SGFNode_t* %16, %struct.SGFNode_t** %4, align 8
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %5, align 8
  br label %17

17:                                               ; preds = %26, %11
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %19 = icmp ne %struct.SGFNode_t* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %23 = icmp ne %struct.SGFNode_t* %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  store %struct.SGFNode_t* %27, %struct.SGFNode_t** %5, align 8
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %29 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %28, i32 0, i32 3
  %30 = load %struct.SGFNode_t*, %struct.SGFNode_t** %29, align 8
  store %struct.SGFNode_t* %30, %struct.SGFNode_t** %4, align 8
  br label %17, !llvm.loop !12

31:                                               ; preds = %24
  %32 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  store %struct.SGFNode_t* %32, %struct.SGFNode_t** %2, align 8
  br label %33

33:                                               ; preds = %31, %10
  %34 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  ret %struct.SGFNode_t* %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfRoot(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  br label %3

3:                                                ; preds = %8, %1
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %5 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %4, i32 0, i32 1
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %7 = icmp ne %struct.SGFNode_t* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %10 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %9, i32 0, i32 1
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %2, align 8
  br label %3, !llvm.loop !13

12:                                               ; preds = %3
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  ret %struct.SGFNode_t* %13
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfAddStone(%struct.SGFNode_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 97
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 97
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %12, i32 %14) #7
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 2
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %21 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %16, i8* %20, i8* %21)
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  ret %struct.SGFNode_t* %22
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfAddPlay(%struct.SGFNode_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %17, align 1
  br label %25

18:                                               ; preds = %13, %4
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 97
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 97
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %21, i32 %23) #7
  br label %25

25:                                               ; preds = %18, %16
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %27 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %26, i32 0, i32 2
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** %27, align 8
  %29 = icmp ne %struct.SGFNode_t* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %32 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %31, i32 0, i32 2
  %33 = load %struct.SGFNode_t*, %struct.SGFNode_t** %32, align 8
  %34 = call %struct.SGFNode_t* @sgfStartVariantFirst(%struct.SGFNode_t* %33)
  store %struct.SGFNode_t* %34, %struct.SGFNode_t** %10, align 8
  br label %43

35:                                               ; preds = %25
  %36 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %36, %struct.SGFNode_t** %10, align 8
  %37 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  %38 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %39 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %38, i32 0, i32 2
  store %struct.SGFNode_t* %37, %struct.SGFNode_t** %39, align 8
  %40 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %41 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  %42 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %41, i32 0, i32 1
  store %struct.SGFNode_t* %40, %struct.SGFNode_t** %42, align 8
  br label %43

43:                                               ; preds = %35, %30
  %44 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  %45 = load i32, i32* %6, align 4
  %46 = icmp eq i32 %45, 2
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %44, i8* %48, i8* %49)
  %50 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  ret %struct.SGFNode_t* %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfStartVariantFirst(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  store %struct.SGFNode_t* %5, %struct.SGFNode_t** %3, align 8
  %6 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %6, %struct.SGFNode_t** %4, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %8 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %9 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %8, i32 0, i32 3
  store %struct.SGFNode_t* %7, %struct.SGFNode_t** %9, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %11 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 1
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %11, align 8
  %13 = icmp ne %struct.SGFNode_t* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %16 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %15, i32 0, i32 1
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %16, align 8
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %19 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %18, i32 0, i32 1
  store %struct.SGFNode_t* %17, %struct.SGFNode_t** %19, align 8
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %23 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %22, i32 0, i32 1
  store %struct.SGFNode_t* %21, %struct.SGFNode_t** %23, align 8
  %24 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %25 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %24, i32 0, i32 1
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %25, align 8
  %27 = icmp ne %struct.SGFNode_t* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %30 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %31 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %30, i32 0, i32 1
  %32 = load %struct.SGFNode_t*, %struct.SGFNode_t** %31, align 8
  %33 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %32, i32 0, i32 2
  store %struct.SGFNode_t* %29, %struct.SGFNode_t** %33, align 8
  br label %34

34:                                               ; preds = %28, %20
  %35 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  ret %struct.SGFNode_t* %35
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfAddPlayLast(%struct.SGFNode_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i8], align 1
  %10 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %17, align 1
  br label %25

18:                                               ; preds = %13, %4
  %19 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 97
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 97
  %24 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %21, i32 %23) #7
  br label %25

25:                                               ; preds = %18, %16
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %27 = call %struct.SGFNode_t* @sgfAddChild(%struct.SGFNode_t* %26)
  store %struct.SGFNode_t* %27, %struct.SGFNode_t** %10, align 8
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 2
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0)
  %33 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %28, i8* %32, i8* %33)
  %34 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  ret %struct.SGFNode_t* %34
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfAddChild(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  %3 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  %4 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %4, %struct.SGFNode_t** %3, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %6 = icmp ne %struct.SGFNode_t* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %10

8:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 686, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__PRETTY_FUNCTION__.sgfAddChild, i64 0, i64 0)) #8
  unreachable

9:                                                ; No predecessors!
  br label %10

10:                                               ; preds = %9, %7
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %13 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %12, i32 0, i32 1
  store %struct.SGFNode_t* %11, %struct.SGFNode_t** %13, align 8
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %15 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %14, i32 0, i32 2
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %15, align 8
  %17 = icmp ne %struct.SGFNode_t* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %10
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %21 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %20, i32 0, i32 2
  store %struct.SGFNode_t* %19, %struct.SGFNode_t** %21, align 8
  br label %39

22:                                               ; preds = %10
  %23 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %24 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %23, i32 0, i32 2
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %24, align 8
  store %struct.SGFNode_t* %25, %struct.SGFNode_t** %2, align 8
  br label %26

26:                                               ; preds = %31, %22
  %27 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %28 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %27, i32 0, i32 3
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %28, align 8
  %30 = icmp ne %struct.SGFNode_t* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %33 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %32, i32 0, i32 3
  %34 = load %struct.SGFNode_t*, %struct.SGFNode_t** %33, align 8
  store %struct.SGFNode_t* %34, %struct.SGFNode_t** %2, align 8
  br label %26, !llvm.loop !14

35:                                               ; preds = %26
  %36 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %37 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %38 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %37, i32 0, i32 3
  store %struct.SGFNode_t* %36, %struct.SGFNode_t** %38, align 8
  br label %39

39:                                               ; preds = %35, %18
  %40 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  ret %struct.SGFNode_t* %40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfCreateHeaderNode(i32 %0, float %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca %struct.SGFNode_t*, align 8
  store i32 %0, i32* %3, align 4
  store float %1, float* %4, align 4
  %6 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %6, %struct.SGFNode_t** %5, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  call void @sgfAddPropertyInt(%struct.SGFNode_t* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 %9)
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %11 = load float, float* %4, align 4
  call void @sgfAddPropertyFloat(%struct.SGFNode_t* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), float %11)
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  ret %struct.SGFNode_t* %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfAddComment(%struct.SGFNode_t* %0, i8* %1) #0 {
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca i8*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %6 = load i8*, i8** %4, align 8
  call void @sgfAddProperty(%struct.SGFNode_t* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %6)
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  ret %struct.SGFNode_t* %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfBoardText(%struct.SGFNode_t* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = call i64 @strlen(i8* %10) #9
  %12 = add i64 %11, 3
  %13 = trunc i64 %12 to i32
  %14 = call i8* @xalloc(i32 %13)
  store i8* %14, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %16, 97
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 97
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %17, i32 %19, i8* %20) #7
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %23 = load i8*, i8** %9, align 8
  call void @sgfAddProperty(%struct.SGFNode_t* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %23)
  %24 = load i8*, i8** %9, align 8
  call void @free(i8* %24) #7
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  ret %struct.SGFNode_t* %25
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfBoardChar(%struct.SGFNode_t* %0, i32 %1, i32 %2, i8 signext %3) #0 {
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca [2 x i8], align 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8 %3, i8* %8, align 1
  %10 = bitcast [2 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %10, i8 0, i64 2, i1 false)
  %11 = load i8, i8* %8, align 1
  %12 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  store i8 %11, i8* %12, align 1
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 1
  store i8 0, i8* %13, align 1
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds [2 x i8], [2 x i8]* %9, i64 0, i64 0
  %18 = call %struct.SGFNode_t* @sgfBoardText(%struct.SGFNode_t* %14, i32 %15, i32 %16, i8* %17)
  ret %struct.SGFNode_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfBoardNumber(%struct.SGFNode_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [10 x i8], align 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* %7, align 4
  %12 = add nsw i32 %11, 97
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 97
  %15 = load i32, i32* %8, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %10, i64 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32 %12, i32 %14, i32 %15)
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %9, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %17)
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  ret %struct.SGFNode_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfTriangle(%struct.SGFNode_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 97
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 97
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %8, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %10, i32 %12)
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i64 0, i64 0), i8* %14)
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  ret %struct.SGFNode_t* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfLabel(%struct.SGFNode_t* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 97
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 97
  %15 = load i8*, i8** %6, align 8
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %10, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %12, i32 %14, i8* %15)
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %17)
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  ret %struct.SGFNode_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfLabelInt(%struct.SGFNode_t* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 97
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 97
  %15 = load i32, i32* %6, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %10, i64 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i32 %12, i32 %14, i32 %15)
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %17)
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  ret %struct.SGFNode_t* %18
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfCircle(%struct.SGFNode_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 97
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 97
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %8, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %10, i32 %12)
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %14)
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  ret %struct.SGFNode_t* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfSquare(%struct.SGFNode_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.SGFNode_t* @sgfMark(%struct.SGFNode_t* %7, i32 %8, i32 %9)
  ret %struct.SGFNode_t* %10
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfMark(%struct.SGFNode_t* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 97
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 97
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %8, i64 3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %10, i32 %12)
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %14 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  call void @sgfAddProperty(%struct.SGFNode_t* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %14)
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  ret %struct.SGFNode_t* %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @sgfStartVariant(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %4 = icmp ne %struct.SGFNode_t* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %8

6:                                                ; preds = %1
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.sgfStartVariant, i64 0, i64 0)) #8
  unreachable

7:                                                ; No predecessors!
  br label %8

8:                                                ; preds = %7, %5
  br label %9

9:                                                ; preds = %14, %8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %11 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %10, i32 0, i32 3
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %11, align 8
  %13 = icmp ne %struct.SGFNode_t* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %16 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %15, i32 0, i32 3
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %16, align 8
  store %struct.SGFNode_t* %17, %struct.SGFNode_t** %2, align 8
  br label %9, !llvm.loop !15

18:                                               ; preds = %9
  %19 = call %struct.SGFNode_t* @sgfNewNode()
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %21 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %20, i32 0, i32 3
  store %struct.SGFNode_t* %19, %struct.SGFNode_t** %21, align 8
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %23 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %24 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %23, i32 0, i32 3
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %24, align 8
  %26 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %25, i32 0, i32 1
  store %struct.SGFNode_t* %22, %struct.SGFNode_t** %26, align 8
  %27 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %28 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %27, i32 0, i32 3
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %28, align 8
  ret %struct.SGFNode_t* %29
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgfWriteResult(%struct.SGFNode_t* %0, float %1, i32 %2) #0 {
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store float %1, float* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %12 = icmp ne %struct.SGFNode_t* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %66

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %19 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i32* %10)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %66

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22, %14
  %24 = load float, float* %5, align 4
  %25 = fpext float %24 to double
  %26 = fcmp ogt double %25, 0.000000e+00
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  store i8 87, i8* %8, align 1
  %28 = load float, float* %5, align 4
  store float %28, float* %9, align 4
  br label %38

29:                                               ; preds = %23
  %30 = load float, float* %5, align 4
  %31 = fpext float %30 to double
  %32 = fcmp olt double %31, 0.000000e+00
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  store i8 66, i8* %8, align 1
  %34 = load float, float* %5, align 4
  %35 = fneg float %34
  store float %35, float* %9, align 4
  br label %37

36:                                               ; preds = %29
  store i8 48, i8* %8, align 1
  store float 0.000000e+00, float* %9, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %37, %27
  %39 = load i8, i8* %8, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 48
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %43, i64 8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0))
  br label %63

44:                                               ; preds = %38
  %45 = load float, float* %5, align 4
  %46 = fpext float %45 to double
  %47 = fcmp olt double %46, 1.000000e+03
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load float, float* %5, align 4
  %50 = fpext float %49 to double
  %51 = fcmp ogt double %50, -1.000000e+03
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %54 = load i8, i8* %8, align 1
  %55 = sext i8 %54 to i32
  %56 = load float, float* %9, align 4
  %57 = fpext float %56 to double
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %53, i64 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i32 %55, double %57)
  br label %62

58:                                               ; preds = %48, %44
  %59 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %60 = load i8, i8* %8, align 1
  %61 = sext i8 %60 to i32
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %59, i64 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i64 0, i64 0), i32 %61, i32 82)
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %65 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0), i8* %65)
  br label %66

66:                                               ; preds = %63, %21, %13
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sgf_write_header(%struct.SGFNode_t* %0, i32 %1, i32 %2, float %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.SGFNode_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca i32, align 4
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %11, align 4
  call void (i8*, i64, i8*, ...) @gg_snprintf(i8* %15, i64 128, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i32 %16, i32 %17)
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %22 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i32* %14)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %6
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %13, i64 0, i64 0
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0), i8* %26)
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %32 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i32* %14)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %41 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i32* %14)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0)
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i64 0, i64 0), i8* %48)
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  call void @sgfOverwriteProperty(%struct.SGFNode_t* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0))
  %51 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %52 = load float, float* %10, align 4
  call void @sgfOverwritePropertyFloat(%struct.SGFNode_t* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), float %52)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @readsgffilefuseki(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SGFNode_t*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #9
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %12, %struct._IO_FILE** @sgffile, align 8
  br label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct._IO_FILE* @fopen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  store %struct._IO_FILE* %15, %struct._IO_FILE** @sgffile, align 8
  br label %16

16:                                               ; preds = %13, %11
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %18 = icmp ne %struct._IO_FILE* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %3, align 8
  br label %65

20:                                               ; preds = %16
  call void @nexttoken()
  %21 = load i32, i32* %5, align 4
  call void @gametreefuseki(%struct.SGFNode_t** %6, %struct.SGFNode_t* null, i32 108, i32 %21, i32 0)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %23 = call i32 @fclose(%struct._IO_FILE* %22)
  %24 = load i8*, i8** @sgferr, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = load i8*, i8** @sgferr, align 8
  %29 = load i32, i32* @sgferrpos, align 4
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0), i8* %28, i32 %29)
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %3, align 8
  br label %65

31:                                               ; preds = %20
  %32 = load %struct.SGFNode_t*, %struct.SGFNode_t** %6, align 8
  %33 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i32* %7)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %46

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 1
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.40, i64 0, i64 0), i32 %41)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %44 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %36
  br label %46

46:                                               ; preds = %45, %35
  %47 = load %struct.SGFNode_t*, %struct.SGFNode_t** %6, align 8
  %48 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i32* %7)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %63

51:                                               ; preds = %46
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 3
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 4
  br i1 %56, label %57, label %62

57:                                               ; preds = %54, %51
  br i1 false, label %58, label %62

58:                                               ; preds = %57
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %58, %57, %54
  br label %63

63:                                               ; preds = %62, %50
  %64 = load %struct.SGFNode_t*, %struct.SGFNode_t** %6, align 8
  store %struct.SGFNode_t* %64, %struct.SGFNode_t** %3, align 8
  br label %65

65:                                               ; preds = %63, %26, %19
  %66 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  ret %struct.SGFNode_t* %66
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #5

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nexttoken() #0 {
  br label %1

1:                                                ; preds = %4, %0
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %3 = call i32 @_IO_getc(%struct._IO_FILE* %2)
  store i32 %3, i32* @lookahead, align 4
  br label %4

4:                                                ; preds = %1
  %5 = call i16** @__ctype_b_loc() #10
  %6 = load i16*, i16** %5, align 8
  %7 = load i32, i32* @lookahead, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i16, i16* %6, i64 %8
  %10 = load i16, i16* %9, align 2
  %11 = zext i16 %10 to i32
  %12 = and i32 %11, 8192
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %1, label %14, !llvm.loop !16

14:                                               ; preds = %4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gametreefuseki(%struct.SGFNode_t** %0, %struct.SGFNode_t* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.SGFNode_t**, align 8
  %7 = alloca %struct.SGFNode_t*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.SGFNode_t*, align 8
  %12 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t** %0, %struct.SGFNode_t*** %6, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 115
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  call void @match(i32 40)
  br label %36

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %34, %16
  %18 = load i32, i32* @lookahead, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @parse_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 0)
  br label %35

21:                                               ; preds = %17
  %22 = load i32, i32* @lookahead, align 4
  %23 = icmp eq i32 %22, 40
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %28, %24
  %26 = load i32, i32* @lookahead, align 4
  %27 = icmp eq i32 %26, 40
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @nexttoken()
  br label %25, !llvm.loop !17

29:                                               ; preds = %25
  %30 = load i32, i32* @lookahead, align 4
  %31 = icmp eq i32 %30, 59
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %35

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %21
  call void @nexttoken()
  br label %17

35:                                               ; preds = %32, %20
  br label %36

36:                                               ; preds = %35, %15
  %37 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %37, %struct.SGFNode_t** %11, align 8
  %38 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %39 = load %struct.SGFNode_t*, %struct.SGFNode_t** %11, align 8
  %40 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %39, i32 0, i32 1
  store %struct.SGFNode_t* %38, %struct.SGFNode_t** %40, align 8
  %41 = load %struct.SGFNode_t*, %struct.SGFNode_t** %11, align 8
  %42 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %6, align 8
  store %struct.SGFNode_t* %41, %struct.SGFNode_t** %42, align 8
  %43 = load %struct.SGFNode_t*, %struct.SGFNode_t** %11, align 8
  %44 = call %struct.SGFNode_t* @sequence(%struct.SGFNode_t* %43)
  store %struct.SGFNode_t* %44, %struct.SGFNode_t** %12, align 8
  %45 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %46 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %45, i32 0, i32 2
  store %struct.SGFNode_t** %46, %struct.SGFNode_t*** %6, align 8
  br label %47

47:                                               ; preds = %94, %36
  %48 = load i32, i32* @lookahead, align 4
  %49 = icmp eq i32 %48, 40
  br i1 %49, label %50, label %95

50:                                               ; preds = %47
  %51 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %52 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %51, i32 0, i32 0
  %53 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %52, align 8
  %54 = icmp ne %struct.SGFProperty_t* %53, null
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %57 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %56, i32 0, i32 0
  %58 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %57, align 8
  %59 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %58, i32 0, i32 1
  %60 = load i16, i16* %59, align 8
  %61 = sext i16 %60 to i32
  %62 = icmp eq i32 %61, 8258
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %65 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %64, i32 0, i32 0
  %66 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %65, align 8
  %67 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %66, i32 0, i32 1
  %68 = load i16, i16* %67, align 8
  %69 = sext i16 %68 to i32
  %70 = icmp eq i32 %69, 8279
  br i1 %70, label %71, label %74

71:                                               ; preds = %63, %55
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %71, %63, %50
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sge i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %80 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %79, i32 0, i32 2
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %80, align 8
  %81 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %82 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %81, i32 0, i32 3
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %82, align 8
  br label %95

83:                                               ; preds = %74
  %84 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %6, align 8
  %85 = load %struct.SGFNode_t*, %struct.SGFNode_t** %12, align 8
  %86 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %85, i32 0, i32 1
  %87 = load %struct.SGFNode_t*, %struct.SGFNode_t** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  call void @gametreefuseki(%struct.SGFNode_t** %84, %struct.SGFNode_t* %87, i32 %88, i32 %89, i32 %90)
  %91 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %6, align 8
  %92 = load %struct.SGFNode_t*, %struct.SGFNode_t** %91, align 8
  %93 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %92, i32 0, i32 3
  store %struct.SGFNode_t** %93, %struct.SGFNode_t*** %6, align 8
  br label %94

94:                                               ; preds = %83
  br label %47, !llvm.loop !18

95:                                               ; preds = %78, %47
  %96 = load i32, i32* %8, align 4
  %97 = icmp eq i32 %96, 115
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  call void @match(i32 41)
  br label %99

99:                                               ; preds = %98, %95
  ret void
}

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.SGFNode_t* @readsgffile(i8* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %10, %struct._IO_FILE** @sgffile, align 8
  br label %14

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  store %struct._IO_FILE* %13, %struct._IO_FILE** @sgffile, align 8
  br label %14

14:                                               ; preds = %11, %9
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %16 = icmp ne %struct._IO_FILE* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %2, align 8
  br label %62

18:                                               ; preds = %14
  call void @nexttoken()
  call void @gametree(%struct.SGFNode_t** %4, %struct.SGFNode_t* null, i32 108)
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %20 = call i32 @fclose(%struct._IO_FILE* %19)
  %21 = load i8*, i8** @sgferr, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %25 = load i8*, i8** @sgferr, align 8
  %26 = load i32, i32* @sgferrpos, align 4
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.38, i64 0, i64 0), i8* %25, i32 %26)
  store %struct.SGFNode_t* null, %struct.SGFNode_t** %2, align 8
  br label %62

28:                                               ; preds = %18
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %30 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0), i32* %5)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %43

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.40, i64 0, i64 0), i32 %38)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.41, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %33
  br label %43

43:                                               ; preds = %42, %32
  %44 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %45 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0), i32* %5)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  br label %60

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp sgt i32 %52, 4
  br i1 %53, label %54, label %59

54:                                               ; preds = %51, %48
  br i1 false, label %55, label %59

55:                                               ; preds = %54
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.42, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %54, %51
  br label %60

60:                                               ; preds = %59, %47
  %61 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  store %struct.SGFNode_t* %61, %struct.SGFNode_t** %2, align 8
  br label %62

62:                                               ; preds = %60, %23, %17
  %63 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  ret %struct.SGFNode_t* %63
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gametree(%struct.SGFNode_t** %0, %struct.SGFNode_t* %1, i32 %2) #0 {
  %4 = alloca %struct.SGFNode_t**, align 8
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.SGFNode_t*, align 8
  %8 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t** %0, %struct.SGFNode_t*** %4, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp eq i32 %9, 115
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  call void @match(i32 40)
  br label %32

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %30, %12
  %14 = load i32, i32* @lookahead, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  call void @parse_error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i32 0)
  br label %31

17:                                               ; preds = %13
  %18 = load i32, i32* @lookahead, align 4
  %19 = icmp eq i32 %18, 40
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  br label %21

21:                                               ; preds = %24, %20
  %22 = load i32, i32* @lookahead, align 4
  %23 = icmp eq i32 %22, 40
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  call void @nexttoken()
  br label %21, !llvm.loop !19

25:                                               ; preds = %21
  %26 = load i32, i32* @lookahead, align 4
  %27 = icmp eq i32 %26, 59
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  br label %31

29:                                               ; preds = %25
  br label %30

30:                                               ; preds = %29, %17
  call void @nexttoken()
  br label %13

31:                                               ; preds = %28, %16
  br label %32

32:                                               ; preds = %31, %11
  %33 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %33, %struct.SGFNode_t** %7, align 8
  %34 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %35 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %36 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %35, i32 0, i32 1
  store %struct.SGFNode_t* %34, %struct.SGFNode_t** %36, align 8
  %37 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %38 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %4, align 8
  store %struct.SGFNode_t* %37, %struct.SGFNode_t** %38, align 8
  %39 = load %struct.SGFNode_t*, %struct.SGFNode_t** %7, align 8
  %40 = call %struct.SGFNode_t* @sequence(%struct.SGFNode_t* %39)
  store %struct.SGFNode_t* %40, %struct.SGFNode_t** %8, align 8
  %41 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  %42 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %41, i32 0, i32 2
  store %struct.SGFNode_t** %42, %struct.SGFNode_t*** %4, align 8
  br label %43

43:                                               ; preds = %46, %32
  %44 = load i32, i32* @lookahead, align 4
  %45 = icmp eq i32 %44, 40
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %4, align 8
  %48 = load %struct.SGFNode_t*, %struct.SGFNode_t** %8, align 8
  %49 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %48, i32 0, i32 1
  %50 = load %struct.SGFNode_t*, %struct.SGFNode_t** %49, align 8
  call void @gametree(%struct.SGFNode_t** %47, %struct.SGFNode_t* %50, i32 115)
  %51 = load %struct.SGFNode_t**, %struct.SGFNode_t*** %4, align 8
  %52 = load %struct.SGFNode_t*, %struct.SGFNode_t** %51, align 8
  %53 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %52, i32 0, i32 3
  store %struct.SGFNode_t** %53, %struct.SGFNode_t*** %4, align 8
  br label %43, !llvm.loop !20

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 115
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  call void @match(i32 41)
  br label %58

58:                                               ; preds = %57, %54
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writesgf(%struct.SGFNode_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i64 0, i64 0)) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %11, %struct._IO_FILE** %6, align 8
  br label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = call %struct._IO_FILE* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.43, i64 0, i64 0))
  store %struct._IO_FILE* %14, %struct._IO_FILE** %6, align 8
  br label %15

15:                                               ; preds = %12, %10
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %17 = icmp ne %struct._IO_FILE* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.44, i64 0, i64 0), i8* %20)
  store i32 0, i32* %3, align 4
  br label %28

22:                                               ; preds = %15
  store i32 0, i32* @sgf_column, align 4
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %24 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @unparse_game(%struct._IO_FILE* %23, %struct.SGFNode_t* %24, i32 1)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %26 = call i32 @fclose(%struct._IO_FILE* %25)
  %27 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @restore_node(%struct.SGFNode_t* %27)
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unparse_game(%struct._IO_FILE* %0, %struct.SGFNode_t* %1, i32 %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %3
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %10)
  br label %11

11:                                               ; preds = %9, %3
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @sgf_putc(i32 40, %struct._IO_FILE* %12)
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  call void @unparse_root(%struct._IO_FILE* %16, %struct.SGFNode_t* %17)
  br label %21

18:                                               ; preds = %11
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  call void @unparse_node(%struct._IO_FILE* %19, %struct.SGFNode_t* %20)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %23 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %22, i32 0, i32 2
  %24 = load %struct.SGFNode_t*, %struct.SGFNode_t** %23, align 8
  store %struct.SGFNode_t* %24, %struct.SGFNode_t** %5, align 8
  br label %25

25:                                               ; preds = %35, %21
  %26 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %27 = icmp ne %struct.SGFNode_t* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %30 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %29, i32 0, i32 3
  %31 = load %struct.SGFNode_t*, %struct.SGFNode_t** %30, align 8
  %32 = icmp eq %struct.SGFNode_t* %31, null
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ false, %25 ], [ %32, %28 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %37 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  call void @unparse_node(%struct._IO_FILE* %36, %struct.SGFNode_t* %37)
  %38 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %39 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %38, i32 0, i32 2
  %40 = load %struct.SGFNode_t*, %struct.SGFNode_t** %39, align 8
  store %struct.SGFNode_t* %40, %struct.SGFNode_t** %5, align 8
  br label %25, !llvm.loop !21

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %45, %41
  %43 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %44 = icmp ne %struct.SGFNode_t* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %47 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  call void @unparse_game(%struct._IO_FILE* %46, %struct.SGFNode_t* %47, i32 0)
  %48 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %49 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %48, i32 0, i32 3
  %50 = load %struct.SGFNode_t*, %struct.SGFNode_t** %49, align 8
  store %struct.SGFNode_t* %50, %struct.SGFNode_t** %5, align 8
  br label %42, !llvm.loop !22

51:                                               ; preds = %42
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @sgf_putc(i32 41, %struct._IO_FILE* %52)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %56)
  br label %57

57:                                               ; preds = %55, %51
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_node(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  %3 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %4 = icmp ne %struct.SGFNode_t* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %7 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 0
  %8 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  call void @restore_property(%struct.SGFProperty_t* %8)
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %10 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %9, i32 0, i32 2
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %10, align 8
  call void @restore_node(%struct.SGFNode_t* %11)
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %13 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %12, i32 0, i32 3
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %13, align 8
  call void @restore_node(%struct.SGFNode_t* %14)
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal void @match(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @lookahead, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp ne i32 %3, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  call void @parse_error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.46, i64 0, i64 0), i32 %7)
  br label %9

8:                                                ; preds = %1
  call void @nexttoken()
  br label %9

9:                                                ; preds = %8, %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_error(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* %6, i32 %7)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  call void @exit(i32 1) #8
  unreachable
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SGFNode_t* @sequence(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  %3 = alloca %struct.SGFNode_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  %4 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  call void @node(%struct.SGFNode_t* %4)
  br label %5

5:                                                ; preds = %8, %1
  %6 = load i32, i32* @lookahead, align 4
  %7 = icmp eq i32 %6, 59
  br i1 %7, label %8, label %18

8:                                                ; preds = %5
  %9 = call %struct.SGFNode_t* @sgfNewNode()
  store %struct.SGFNode_t* %9, %struct.SGFNode_t** %3, align 8
  %10 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %12 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 1
  store %struct.SGFNode_t* %10, %struct.SGFNode_t** %12, align 8
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %15 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %14, i32 0, i32 2
  store %struct.SGFNode_t* %13, %struct.SGFNode_t** %15, align 8
  %16 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  store %struct.SGFNode_t* %16, %struct.SGFNode_t** %2, align 8
  %17 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  call void @node(%struct.SGFNode_t* %17)
  br label %5, !llvm.loop !23

18:                                               ; preds = %5
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  ret %struct.SGFNode_t* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @node(%struct.SGFNode_t* %0) #0 {
  %2 = alloca %struct.SGFNode_t*, align 8
  %3 = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %2, align 8
  store %struct.SGFProperty_t* null, %struct.SGFProperty_t** %3, align 8
  call void @match(i32 59)
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* @lookahead, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = call i16** @__ctype_b_loc() #10
  %9 = load i16*, i16** %8, align 8
  %10 = load i32, i32* @lookahead, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %9, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 256
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %7, %4
  %18 = phi i1 [ false, %4 ], [ %16, %7 ]
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %2, align 8
  %21 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %3, align 8
  %22 = call %struct.SGFProperty_t* @property(%struct.SGFNode_t* %20, %struct.SGFProperty_t* %21)
  store %struct.SGFProperty_t* %22, %struct.SGFProperty_t** %3, align 8
  br label %4, !llvm.loop !24

23:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.SGFProperty_t* @property(%struct.SGFNode_t* %0, %struct.SGFProperty_t* %1) #0 {
  %3 = alloca %struct.SGFNode_t*, align 8
  %4 = alloca %struct.SGFProperty_t*, align 8
  %5 = alloca [3 x i8], align 1
  %6 = alloca [4000 x i8], align 16
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %3, align 8
  store %struct.SGFProperty_t* %1, %struct.SGFProperty_t** %4, align 8
  %7 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  call void @propident(i8* %7, i32 3)
  br label %8

8:                                                ; preds = %15, %2
  %9 = getelementptr inbounds [4000 x i8], [4000 x i8]* %6, i64 0, i64 0
  call void @propvalue(i8* %9, i32 4000)
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %5, i64 0, i64 0
  %11 = getelementptr inbounds [4000 x i8], [4000 x i8]* %6, i64 0, i64 0
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** %3, align 8
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  %14 = call %struct.SGFProperty_t* @sgfMkProperty(i8* %10, i8* %11, %struct.SGFNode_t* %12, %struct.SGFProperty_t* %13)
  store %struct.SGFProperty_t* %14, %struct.SGFProperty_t** %4, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* @lookahead, align 4
  %17 = icmp eq i32 %16, 91
  br i1 %17, label %8, label %18, !llvm.loop !25

18:                                               ; preds = %15
  %19 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %4, align 8
  ret %struct.SGFProperty_t* %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propident(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @lookahead, align 4
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = call i16** @__ctype_b_loc() #10
  %9 = load i16*, i16** %8, align 8
  %10 = load i32, i32* @lookahead, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i16, i16* %9, i64 %11
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = and i32 %14, 256
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %7, %2
  call void @parse_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.48, i64 0, i64 0), i32 0)
  br label %18

18:                                               ; preds = %17, %7
  br label %19

19:                                               ; preds = %54, %18
  %20 = load i32, i32* @lookahead, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = call i16** @__ctype_b_loc() #10
  %24 = load i16*, i16** %23, align 8
  %25 = load i32, i32* @lookahead, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i16, i16* %24, i64 %26
  %28 = load i16, i16* %27, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 1024
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %22, %19
  %33 = phi i1 [ false, %19 ], [ %31, %22 ]
  br i1 %33, label %34, label %55

34:                                               ; preds = %32
  %35 = call i16** @__ctype_b_loc() #10
  %36 = load i16*, i16** %35, align 8
  %37 = load i32, i32* @lookahead, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i16, i16* %36, i64 %38
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 256
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i32, i32* @lookahead, align 4
  %49 = trunc i32 %48 to i8
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  store i8 %49, i8* %50, align 1
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %47, %44, %34
  call void @nexttoken()
  br label %19, !llvm.loop !26

55:                                               ; preds = %32
  %56 = load i8*, i8** %3, align 8
  store i8 0, i8* %56, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @propvalue(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  call void @match(i32 91)
  br label %7

7:                                                ; preds = %56, %2
  %8 = load i32, i32* @lookahead, align 4
  %9 = icmp ne i32 %8, 93
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @lookahead, align 4
  %12 = icmp ne i32 %11, -1
  br label %13

13:                                               ; preds = %10, %7
  %14 = phi i1 [ false, %7 ], [ %12, %10 ]
  br i1 %14, label %15, label %59

15:                                               ; preds = %13
  %16 = load i32, i32* @lookahead, align 4
  %17 = icmp eq i32 %16, 92
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %20 = call i32 @_IO_getc(%struct._IO_FILE* %19)
  store i32 %20, i32* @lookahead, align 4
  %21 = load i32, i32* @lookahead, align 4
  %22 = icmp eq i32 %21, 13
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %25 = call i32 @_IO_getc(%struct._IO_FILE* %24)
  store i32 %25, i32* @lookahead, align 4
  %26 = load i32, i32* @lookahead, align 4
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %30 = call i32 @_IO_getc(%struct._IO_FILE* %29)
  store i32 %30, i32* @lookahead, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %45

32:                                               ; preds = %18
  %33 = load i32, i32* @lookahead, align 4
  %34 = icmp eq i32 %33, 10
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %37 = call i32 @_IO_getc(%struct._IO_FILE* %36)
  store i32 %37, i32* @lookahead, align 4
  %38 = load i32, i32* @lookahead, align 4
  %39 = icmp eq i32 %38, 13
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %42 = call i32 @_IO_getc(%struct._IO_FILE* %41)
  store i32 %42, i32* @lookahead, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %44, %31
  br label %46

46:                                               ; preds = %45, %15
  %47 = load i32, i32* %4, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %56

49:                                               ; preds = %46
  %50 = load i32, i32* @lookahead, align 4
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %5, align 8
  store i8 %51, i8* %52, align 1
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %49, %46
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @sgffile, align 8
  %58 = call i32 @_IO_getc(%struct._IO_FILE* %57)
  store i32 %58, i32* @lookahead, align 4
  br label %7, !llvm.loop !27

59:                                               ; preds = %13
  call void @match(i32 93)
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %5, align 8
  br label %62

62:                                               ; preds = %80, %59
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = icmp ugt i8* %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = call i16** @__ctype_b_loc() #10
  %68 = load i16*, i16** %67, align 8
  %69 = load i8*, i8** %5, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i16, i16* %68, i64 %72
  %74 = load i16, i16* %73, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %75, 8192
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %66, %62
  %79 = phi i1 [ false, %62 ], [ %77, %66 ]
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 -1
  store i8* %82, i8** %5, align 8
  br label %62, !llvm.loop !28

83:                                               ; preds = %78
  %84 = load i8*, i8** %5, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %5, align 8
  store i8 0, i8* %85, align 1
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgf_putc(i32 %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  store i32 %0, i32* %3, align 4
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 10
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load i32, i32* @sgf_column, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %30

11:                                               ; preds = %7, %2
  %12 = load i32, i32* %3, align 4
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %14 = call i32 @fputc(i32 %12, %struct._IO_FILE* %13)
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 10
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* @sgf_column, align 4
  br label %21

18:                                               ; preds = %11
  %19 = load i32, i32* @sgf_column, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @sgf_column, align 4
  br label %21

21:                                               ; preds = %18, %17
  %22 = load i32, i32* %3, align 4
  %23 = icmp eq i32 %22, 93
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i32, i32* @sgf_column, align 4
  %26 = icmp sgt i32 %25, 60
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %29 = call i32 @fputc(i32 10, %struct._IO_FILE* %28)
  store i32 0, i32* @sgf_column, align 4
  br label %30

30:                                               ; preds = %10, %27, %24, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unparse_root(%struct._IO_FILE* %0, %struct.SGFNode_t* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.SGFNode_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 59, %struct._IO_FILE* %5)
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %7 = call i32 @sgfHasProperty(%struct.SGFNode_t* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %10, %struct.SGFNode_t* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.39, i64 0, i64 0))
  br label %17

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %14 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), %struct._IO_FILE* %13)
  %15 = load i32, i32* @sgf_column, align 4
  %16 = add nsw i32 %15, 5
  store i32 %16, i32* @sgf_column, align 4
  br label %17

17:                                               ; preds = %12, %9
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %18, %struct.SGFNode_t* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.34, i64 0, i64 0))
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %22 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %21, %struct.SGFNode_t* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %25 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %24, %struct.SGFNode_t* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i64 0, i64 0))
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %27, %struct.SGFNode_t* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.50, i64 0, i64 0))
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %29)
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %31 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %30, %struct.SGFNode_t* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i64 0, i64 0))
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %33 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %32, %struct.SGFNode_t* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i64 0, i64 0))
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %34)
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %36 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %35, %struct.SGFNode_t* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0))
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %38 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %37, %struct.SGFNode_t* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.54, i64 0, i64 0))
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %39)
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %41 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %40, %struct.SGFNode_t* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %43 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %42, %struct.SGFNode_t* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %45 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintRemainingProperties(%struct._IO_FILE* %44, %struct.SGFNode_t* %45)
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %46)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unparse_node(%struct._IO_FILE* %0, %struct.SGFNode_t* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.SGFNode_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %4, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 59, %struct._IO_FILE* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %6, %struct.SGFNode_t* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCharProperty(%struct._IO_FILE* %8, %struct.SGFNode_t* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i64 0, i64 0))
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %10, %struct.SGFNode_t* %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.55, i64 0, i64 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintCommentProperty(%struct._IO_FILE* %12, %struct.SGFNode_t* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %15 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  call void @sgfPrintRemainingProperties(%struct._IO_FILE* %14, %struct.SGFNode_t* %15)
  ret void
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sgfHasProperty(%struct.SGFNode_t* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.SGFProperty_t*, align 8
  %7 = alloca i16, align 2
  store %struct.SGFNode_t* %0, %struct.SGFNode_t** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = shl i32 %15, 8
  %17 = or i32 %11, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %20 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %19, i32 0, i32 0
  %21 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %20, align 8
  store %struct.SGFProperty_t* %21, %struct.SGFProperty_t** %6, align 8
  br label %22

22:                                               ; preds = %35, %2
  %23 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %24 = icmp ne %struct.SGFProperty_t* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %22
  %26 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %27 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* %7, align 2
  %31 = sext i16 %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %40

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %6, align 8
  %37 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %36, i32 0, i32 0
  %38 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %37, align 8
  store %struct.SGFProperty_t* %38, %struct.SGFProperty_t** %6, align 8
  br label %22, !llvm.loop !29

39:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgfPrintCharProperty(%struct._IO_FILE* %0, %struct.SGFNode_t* %1, i8* %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = shl i32 %15, 8
  %17 = or i32 %11, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %21 = load i16, i16* %7, align 2
  call void @sgf_print_property(%struct._IO_FILE* %19, %struct.SGFNode_t* %20, i16 signext %21, i32 0)
  ret void
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgfPrintCommentProperty(%struct._IO_FILE* %0, %struct.SGFNode_t* %1, i8* %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct.SGFNode_t*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = shl i32 %15, 8
  %17 = or i32 %11, %16
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %20 = load %struct.SGFNode_t*, %struct.SGFNode_t** %5, align 8
  %21 = load i16, i16* %7, align 2
  call void @sgf_print_property(%struct._IO_FILE* %19, %struct.SGFNode_t* %20, i16 signext %21, i32 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgfPrintRemainingProperties(%struct._IO_FILE* %0, %struct.SGFNode_t* %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct.SGFNode_t*, align 8
  %5 = alloca %struct.SGFProperty_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %4, align 8
  %6 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %7 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %6, i32 0, i32 0
  %8 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  store %struct.SGFProperty_t* %8, %struct.SGFProperty_t** %5, align 8
  br label %9

9:                                                ; preds = %26, %2
  %10 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %11 = icmp ne %struct.SGFProperty_t* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %9
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %14 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %13, i32 0, i32 1
  %15 = load i16, i16* %14, align 8
  %16 = sext i16 %15 to i32
  %17 = and i32 %16, 32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %12
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** %4, align 8
  %22 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %23 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %22, i32 0, i32 1
  %24 = load i16, i16* %23, align 8
  call void @sgf_print_property(%struct._IO_FILE* %20, %struct.SGFNode_t* %21, i16 signext %24, i32 0)
  br label %25

25:                                               ; preds = %19, %12
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %5, align 8
  %28 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %27, i32 0, i32 0
  %29 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %28, align 8
  store %struct.SGFProperty_t* %29, %struct.SGFProperty_t** %5, align 8
  br label %9, !llvm.loop !30

30:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgf_print_property(%struct._IO_FILE* %0, %struct.SGFNode_t* %1, i16 signext %2, i32 %3) #0 {
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca %struct.SGFNode_t*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.SGFProperty_t*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %5, align 8
  store %struct.SGFNode_t* %1, %struct.SGFNode_t** %6, align 8
  store i16 %2, i16* %7, align 2
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.SGFNode_t*, %struct.SGFNode_t** %6, align 8
  %12 = getelementptr inbounds %struct.SGFNode_t, %struct.SGFNode_t* %11, i32 0, i32 0
  %13 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %12, align 8
  store %struct.SGFProperty_t* %13, %struct.SGFProperty_t** %10, align 8
  br label %14

14:                                               ; preds = %55, %4
  %15 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %16 = icmp ne %struct.SGFProperty_t* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %19 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %18, i32 0, i32 1
  %20 = load i16, i16* %19, align 8
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* %7, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %54

25:                                               ; preds = %17
  %26 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %27 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %26, i32 0, i32 1
  %28 = load i16, i16* %27, align 8
  %29 = sext i16 %28 to i32
  %30 = or i32 %29, 32
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %27, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %36 = load i16, i16* %7, align 2
  call void @sgf_print_name(%struct._IO_FILE* %35, i16 signext %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @sgf_putc(i32 91, %struct._IO_FILE* %37)
  br label %47

38:                                               ; preds = %25
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %42)
  br label %46

43:                                               ; preds = %38
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @sgf_putc(i32 93, %struct._IO_FILE* %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @sgf_putc(i32 91, %struct._IO_FILE* %45)
  br label %46

46:                                               ; preds = %43, %41
  br label %47

47:                                               ; preds = %46, %34
  %48 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %49 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @sgf_puts(i8* %50, %struct._IO_FILE* %51)
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %47, %17
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %10, align 8
  %57 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %56, i32 0, i32 0
  %58 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %57, align 8
  store %struct.SGFProperty_t* %58, %struct.SGFProperty_t** %10, align 8
  br label %14, !llvm.loop !31

59:                                               ; preds = %14
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @sgf_putc(i32 93, %struct._IO_FILE* %63)
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i16, i16* %7, align 2
  %66 = sext i16 %65 to i32
  %67 = icmp eq i32 %66, 16961
  br i1 %67, label %82, label %68

68:                                               ; preds = %64
  %69 = load i16, i16* %7, align 2
  %70 = sext i16 %69 to i32
  %71 = icmp eq i32 %70, 22337
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  %73 = load i16, i16* %7, align 2
  %74 = sext i16 %73 to i32
  %75 = icmp eq i32 %74, 17729
  br i1 %75, label %82, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %72, %68, %64
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  call void @sgf_putc(i32 10, %struct._IO_FILE* %83)
  br label %84

84:                                               ; preds = %82, %79, %76
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgf_print_name(%struct._IO_FILE* %0, i16 signext %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i16, align 2
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = and i32 %6, 255
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 %7, %struct._IO_FILE* %8)
  %9 = load i16, i16* %4, align 2
  %10 = sext i16 %9 to i32
  %11 = ashr i32 %10, 8
  %12 = icmp ne i32 %11, 32
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i16, i16* %4, align 2
  %15 = sext i16 %14 to i32
  %16 = ashr i32 %15, 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void @sgf_putc(i32 %16, %struct._IO_FILE* %17)
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgf_puts(i8* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  br label %5

5:                                                ; preds = %37, %2
  %6 = load i8*, i8** %3, align 8
  %7 = load i8, i8* %6, align 1
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %40

9:                                                ; preds = %5
  %10 = load i8*, i8** %3, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 91
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 93
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 92
  br i1 %23, label %24, label %29

24:                                               ; preds = %19, %14, %9
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %26 = call i32 @fputc(i32 92, %struct._IO_FILE* %25)
  %27 = load i32, i32* @sgf_column, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @sgf_column, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i8*, i8** %3, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %34 = call i32 @fputc(i32 %32, %struct._IO_FILE* %33)
  %35 = load i32, i32* @sgf_column, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* @sgf_column, align 4
  br label %37

37:                                               ; preds = %29
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  br label %5, !llvm.loop !32

40:                                               ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_property(%struct.SGFProperty_t* %0) #0 {
  %2 = alloca %struct.SGFProperty_t*, align 8
  store %struct.SGFProperty_t* %0, %struct.SGFProperty_t** %2, align 8
  %3 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %2, align 8
  %4 = icmp ne %struct.SGFProperty_t* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %2, align 8
  %7 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %6, i32 0, i32 0
  %8 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %7, align 8
  call void @restore_property(%struct.SGFProperty_t* %8)
  %9 = load %struct.SGFProperty_t*, %struct.SGFProperty_t** %2, align 8
  %10 = getelementptr inbounds %struct.SGFProperty_t, %struct.SGFProperty_t* %9, i32 0, i32 1
  %11 = load i16, i16* %10, align 8
  %12 = sext i16 %11 to i32
  %13 = and i32 %12, -33
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %10, align 8
  br label %15

15:                                               ; preds = %5, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind readnone willreturn }

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
