; ModuleID = 'gtp.c'
source_filename = "gtp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gtp_command = type { i8*, i32 (i8*)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@current_id = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" %s %n\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"unknown command\00", align 1
@gtp_boardsize = internal global i32 -1, align 4
@vertex_transform_input_hook = internal global void (i32, i32, i32*, i32*)* null, align 8
@vertex_transform_output_hook = internal global void (i32, i32, i32*, i32*)* null, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"\0A\0AUnknown format character '%c'\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"! panic\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"gtp_boardsize > 0\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"gtp.c\00", align 1
@__PRETTY_FUNCTION__.gtp_decode_color = private unnamed_addr constant [36 x i8] c"int gtp_decode_color(char *, int *)\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%6s%n\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@__PRETTY_FUNCTION__.gtp_decode_coord = private unnamed_addr constant [43 x i8] c"int gtp_decode_coord(char *, int *, int *)\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c" %c%d%n\00", align 1
@__PRETTY_FUNCTION__.gtp_decode_move = private unnamed_addr constant [49 x i8] c"int gtp_decode_move(char *, int *, int *, int *)\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%5s%n\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@__PRETTY_FUNCTION__.gtp_print_vertices = private unnamed_addr constant [43 x i8] c"void gtp_print_vertices(int, int *, int *)\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_main_loop(%struct.gtp_command* %0, %struct._IO_FILE* %1) #0 {
  %3 = alloca %struct.gtp_command*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca [1000 x i8], align 16
  %6 = alloca [1000 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store %struct.gtp_command* %0, %struct.gtp_command** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %144, %93, %2
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %145

15:                                               ; preds = %12
  %16 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %18 = call i8* @fgets(i8* %16, i32 1000, %struct._IO_FILE* %17)
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %145

21:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  %22 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  store i8* %22, i8** %7, align 8
  br label %23

23:                                               ; preds = %73, %21
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %23
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  store i8 %33, i8* %11, align 1
  %34 = load i8, i8* %11, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 9
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 32, i8* %38, align 1
  br label %72

40:                                               ; preds = %29
  %41 = load i8, i8* %11, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i8, i8* %11, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp sle i32 %46, 9
  br i1 %47, label %60, label %48

48:                                               ; preds = %44, %40
  %49 = load i8, i8* %11, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp sge i32 %50, 11
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i8, i8* %11, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp sle i32 %54, 31
  br i1 %55, label %60, label %56

56:                                               ; preds = %52, %48
  %57 = load i8, i8* %11, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 127
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %52, %44
  br label %73

61:                                               ; preds = %56
  %62 = load i8, i8* %11, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 35
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %76

66:                                               ; preds = %61
  %67 = load i8, i8* %11, align 1
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %7, align 8
  store i8 %67, i8* %68, align 1
  br label %70

70:                                               ; preds = %66
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %60
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %23, !llvm.loop !4

76:                                               ; preds = %65, %23
  %77 = load i8*, i8** %7, align 8
  store i8 0, i8* %77, align 1
  %78 = getelementptr inbounds [1000 x i8], [1000 x i8]* %5, i64 0, i64 0
  store i8* %78, i8** %7, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* @current_id, i32* %9) #6
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load i32, i32* %9, align 4
  %84 = load i8*, i8** %7, align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8* %86, i8** %7, align 8
  br label %88

87:                                               ; preds = %76
  store i32 -1, i32* @current_id, align 4
  br label %88

88:                                               ; preds = %87, %82
  %89 = load i8*, i8** %7, align 8
  %90 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %91 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %89, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %90, i32* %9) #6
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %12, !llvm.loop !6

94:                                               ; preds = %88
  %95 = load i32, i32* %9, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8* %98, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %127, %94
  %100 = load %struct.gtp_command*, %struct.gtp_command** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %100, i64 %102
  %104 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %130

107:                                              ; preds = %99
  %108 = getelementptr inbounds [1000 x i8], [1000 x i8]* %6, i64 0, i64 0
  %109 = load %struct.gtp_command*, %struct.gtp_command** %3, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %109, i64 %111
  %113 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @strcmp(i8* %108, i8* %114) #7
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %107
  %118 = load %struct.gtp_command*, %struct.gtp_command** %3, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %118, i64 %120
  %122 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %121, i32 0, i32 1
  %123 = load i32 (i8*)*, i32 (i8*)** %122, align 8
  %124 = load i8*, i8** %7, align 8
  %125 = call i32 %123(i8* %124)
  store i32 %125, i32* %10, align 4
  br label %130

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %8, align 4
  br label %99, !llvm.loop !7

130:                                              ; preds = %117, %99
  %131 = load %struct.gtp_command*, %struct.gtp_command** %3, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %131, i64 %133
  %135 = getelementptr inbounds %struct.gtp_command, %struct.gtp_command* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = icmp eq i8* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %130
  %139 = call i32 (i8*, ...) @gtp_failure(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138, %130
  %141 = load i32, i32* %10, align 4
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  call void @gtp_panic()
  br label %144

144:                                              ; preds = %143, %140
  br label %12, !llvm.loop !6

145:                                              ; preds = %20, %12
  ret void
}

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gtp_failure(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @gtp_start_response(i32 1)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_end(i8* %11)
  %12 = call i32 @gtp_finish_response()
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_panic() #0 {
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_internal_set_boardsize(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  store i32 %3, i32* @gtp_boardsize, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_set_vertex_transform_hooks(void (i32, i32, i32*, i32*)* %0, void (i32, i32, i32*, i32*)* %1) #0 {
  %3 = alloca void (i32, i32, i32*, i32*)*, align 8
  %4 = alloca void (i32, i32, i32*, i32*)*, align 8
  store void (i32, i32, i32*, i32*)* %0, void (i32, i32, i32*, i32*)** %3, align 8
  store void (i32, i32, i32*, i32*)* %1, void (i32, i32, i32*, i32*)** %4, align 8
  %5 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** %3, align 8
  store void (i32, i32, i32*, i32*)* %5, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8
  %6 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** %4, align 8
  store void (i32, i32, i32*, i32*)* %6, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_mprintf(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_start(i8* %12)
  br label %13

13:                                               ; preds = %203, %1
  %14 = load i8*, i8** %2, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %206

17:                                               ; preds = %13
  %18 = load i8*, i8** %2, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 37
  br i1 %21, label %22, label %196

22:                                               ; preds = %17
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %2, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %189 [
    i32 99, label %27
    i32 100, label %49
    i32 102, label %71
    i32 115, label %93
    i32 109, label %115
    i32 67, label %154
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %29 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 16
  %31 = icmp ule i32 %30, 40
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 3
  %34 = load i8*, i8** %33, align 16
  %35 = getelementptr i8, i8* %34, i32 %30
  %36 = bitcast i8* %35 to i32*
  %37 = add i32 %30, 8
  store i32 %37, i32* %29, align 16
  br label %43

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %28, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = getelementptr i8, i8* %40, i32 8
  store i8* %42, i8** %39, align 8
  br label %43

43:                                               ; preds = %38, %32
  %44 = phi i32* [ %36, %32 ], [ %41, %38 ]
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %48 = call i32 @_IO_putc(i32 %46, %struct._IO_FILE* %47)
  br label %195

49:                                               ; preds = %22
  %50 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 16
  %53 = icmp ule i32 %52, 40
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 3
  %56 = load i8*, i8** %55, align 16
  %57 = getelementptr i8, i8* %56, i32 %52
  %58 = bitcast i8* %57 to i32*
  %59 = add i32 %52, 8
  store i32 %59, i32* %51, align 16
  br label %65

60:                                               ; preds = %49
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %50, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = getelementptr i8, i8* %62, i32 8
  store i8* %64, i8** %61, align 8
  br label %65

65:                                               ; preds = %60, %54
  %66 = phi i32* [ %58, %54 ], [ %63, %60 ]
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %195

71:                                               ; preds = %22
  %72 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %73 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ule i32 %74, 160
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %72, i32 0, i32 3
  %78 = load i8*, i8** %77, align 16
  %79 = getelementptr i8, i8* %78, i32 %74
  %80 = bitcast i8* %79 to double*
  %81 = add i32 %74, 16
  store i32 %81, i32* %73, align 4
  br label %87

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %72, i32 0, i32 2
  %84 = load i8*, i8** %83, align 8
  %85 = bitcast i8* %84 to double*
  %86 = getelementptr i8, i8* %84, i32 8
  store i8* %86, i8** %83, align 8
  br label %87

87:                                               ; preds = %82, %76
  %88 = phi double* [ %80, %76 ], [ %85, %82 ]
  %89 = load double, double* %88, align 8
  store double %89, double* %6, align 8
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %91 = load double, double* %6, align 8
  %92 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), double %91)
  br label %195

93:                                               ; preds = %22
  %94 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %95 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 16
  %97 = icmp ule i32 %96, 40
  br i1 %97, label %98, label %104

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %94, i32 0, i32 3
  %100 = load i8*, i8** %99, align 16
  %101 = getelementptr i8, i8* %100, i32 %96
  %102 = bitcast i8* %101 to i8**
  %103 = add i32 %96, 8
  store i32 %103, i32* %95, align 16
  br label %109

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %94, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = bitcast i8* %106 to i8**
  %108 = getelementptr i8, i8* %106, i32 8
  store i8* %108, i8** %105, align 8
  br label %109

109:                                              ; preds = %104, %98
  %110 = phi i8** [ %102, %98 ], [ %107, %104 ]
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %7, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %114 = call i32 @fputs(i8* %112, %struct._IO_FILE* %113)
  br label %195

115:                                              ; preds = %22
  %116 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %117 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 16
  %119 = icmp ule i32 %118, 40
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 3
  %122 = load i8*, i8** %121, align 16
  %123 = getelementptr i8, i8* %122, i32 %118
  %124 = bitcast i8* %123 to i32*
  %125 = add i32 %118, 8
  store i32 %125, i32* %117, align 16
  br label %131

126:                                              ; preds = %115
  %127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %116, i32 0, i32 2
  %128 = load i8*, i8** %127, align 8
  %129 = bitcast i8* %128 to i32*
  %130 = getelementptr i8, i8* %128, i32 8
  store i8* %130, i8** %127, align 8
  br label %131

131:                                              ; preds = %126, %120
  %132 = phi i32* [ %124, %120 ], [ %129, %126 ]
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %8, align 4
  %134 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %135 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 16
  %137 = icmp ule i32 %136, 40
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 3
  %140 = load i8*, i8** %139, align 16
  %141 = getelementptr i8, i8* %140, i32 %136
  %142 = bitcast i8* %141 to i32*
  %143 = add i32 %136, 8
  store i32 %143, i32* %135, align 16
  br label %149

144:                                              ; preds = %131
  %145 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %134, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = bitcast i8* %146 to i32*
  %148 = getelementptr i8, i8* %146, i32 8
  store i8* %148, i8** %145, align 8
  br label %149

149:                                              ; preds = %144, %138
  %150 = phi i32* [ %142, %138 ], [ %147, %144 ]
  %151 = load i32, i32* %150, align 4
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  call void @gtp_print_vertex(i32 %152, i32 %153)
  br label %195

154:                                              ; preds = %22
  %155 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %156 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 16
  %158 = icmp ule i32 %157, 40
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 3
  %161 = load i8*, i8** %160, align 16
  %162 = getelementptr i8, i8* %161, i32 %157
  %163 = bitcast i8* %162 to i32*
  %164 = add i32 %157, 8
  store i32 %164, i32* %156, align 16
  br label %170

165:                                              ; preds = %154
  %166 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %155, i32 0, i32 2
  %167 = load i8*, i8** %166, align 8
  %168 = bitcast i8* %167 to i32*
  %169 = getelementptr i8, i8* %167, i32 8
  store i8* %169, i8** %166, align 8
  br label %170

170:                                              ; preds = %165, %159
  %171 = phi i32* [ %163, %159 ], [ %168, %165 ]
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %177 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct._IO_FILE* %176)
  br label %188

178:                                              ; preds = %170
  %179 = load i32, i32* %10, align 4
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %183 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), %struct._IO_FILE* %182)
  br label %187

184:                                              ; preds = %178
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %186 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct._IO_FILE* %185)
  br label %187

187:                                              ; preds = %184, %181
  br label %188

188:                                              ; preds = %187, %175
  br label %195

189:                                              ; preds = %22
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %191 = load i8*, i8** %2, align 8
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %190, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %189, %188, %149, %109, %87, %65, %43
  br label %202

196:                                              ; preds = %17
  %197 = load i8*, i8** %2, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %201 = call i32 @_IO_putc(i32 %199, %struct._IO_FILE* %200)
  br label %202

202:                                              ; preds = %196, %195
  br label %203

203:                                              ; preds = %202
  %204 = load i8*, i8** %2, align 8
  %205 = getelementptr inbounds i8, i8* %204, i32 1
  store i8* %205, i8** %2, align 8
  br label %13, !llvm.loop !8

206:                                              ; preds = %13
  %207 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %208 = bitcast %struct.__va_list_tag* %207 to i8*
  call void @llvm.va_end(i8* %208)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #4

declare dso_local i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_print_vertex(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  call void @gtp_print_vertices(i32 1, i32* %3, i32* %4)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_printf(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_end(i8* %11)
  ret void
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_start_response(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %7

6:                                                ; preds = %1
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i32, i32* @current_id, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %13

11:                                               ; preds = %7
  %12 = load i32, i32* @current_id, align 4
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %12)
  br label %13

13:                                               ; preds = %11, %10
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gtp_finish_response() #0 {
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gtp_success(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  call void @gtp_start_response(i32 0)
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %9 = call i32 @vfprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %11 = bitcast %struct.__va_list_tag* %10 to i8*
  call void @llvm.va_end(i8* %11)
  %12 = call i32 @gtp_finish_response()
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gtp_decode_color(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [7 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @gtp_boardsize, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %14

12:                                               ; preds = %2
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 312, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.gtp_decode_color, i64 0, i64 0)) #8
  unreachable

13:                                               ; No predecessors!
  br label %14

14:                                               ; preds = %13, %11
  %15 = load i8*, i8** %4, align 8
  %16 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %17 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* %16, i32* %8) #6
  %18 = icmp ne i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %65

20:                                               ; preds = %14
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %38, %20
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %24 = call i64 @strlen(i8* %23) #7
  %25 = trunc i64 %24 to i32
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = call i32 @tolower(i32 %32) #7
  %34 = trunc i32 %33 to i8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 %36
  store i8 %34, i8* %37, align 1
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %21, !llvm.loop !9

41:                                               ; preds = %21
  %42 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %43 = call i32 @strcmp(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)) #7
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0)) #7
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41
  %50 = load i32*, i32** %5, align 8
  store i32 2, i32* %50, align 4
  br label %63

51:                                               ; preds = %45
  %52 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0)) #7
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds [7 x i8], [7 x i8]* %6, i64 0, i64 0
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)) #7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51
  %60 = load i32*, i32** %5, align 8
  store i32 1, i32* %60, align 4
  br label %62

61:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %65

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %61, %19
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gtp_decode_coord(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @gtp_boardsize, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %16

14:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 344, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.gtp_decode_coord, i64 0, i64 0)) #8
  unreachable

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %13
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0), i8* %8, i32* %9, i32* %10) #6
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %77

21:                                               ; preds = %16
  %22 = load i8, i8* %8, align 1
  %23 = sext i8 %22 to i32
  %24 = call i32 @tolower(i32 %23) #7
  %25 = icmp eq i32 %24, 105
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %77

27:                                               ; preds = %21
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i32
  %30 = call i32 @tolower(i32 %29) #7
  %31 = sub nsw i32 %30, 97
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i8, i8* %8, align 1
  %34 = sext i8 %33 to i32
  %35 = call i32 @tolower(i32 %34) #7
  %36 = icmp sgt i32 %35, 105
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %37, %27
  %42 = load i32, i32* @gtp_boardsize, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %41
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @gtp_boardsize, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @gtp_boardsize, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %58, %54, %49, %41
  store i32 0, i32* %4, align 4
  br label %77

64:                                               ; preds = %58
  %65 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8
  %66 = icmp ne void (i32, i32, i32*, i32*)* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** @vertex_transform_input_hook, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i32*, i32** %7, align 8
  call void %68(i32 %70, i32 %72, i32* %73, i32* %74)
  br label %75

75:                                               ; preds = %67, %64
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %63, %26, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gtp_decode_move(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [6 x i8], align 1
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @gtp_boardsize, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %19

17:                                               ; preds = %4
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 376, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.gtp_decode_move, i64 0, i64 0)) #8
  unreachable

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %18, %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @gtp_decode_color(i8* %20, i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %78

26:                                               ; preds = %19
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @gtp_decode_coord(i8* %30, i32* %31, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %26
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %42 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8* %41, i32* %11) #6
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %78

45:                                               ; preds = %36
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %12, align 4
  %48 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %49 = call i64 @strlen(i8* %48) #7
  %50 = trunc i64 %49 to i32
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 @tolower(i32 %57) #7
  %59 = trunc i32 %58 to i8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 %61
  store i8 %59, i8* %62, align 1
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %46, !llvm.loop !10

66:                                               ; preds = %46
  %67 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0)) #7
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %78

71:                                               ; preds = %66
  %72 = load i32*, i32** %8, align 8
  store i32 -1, i32* %72, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 -1, i32* %73, align 4
  br label %74

74:                                               ; preds = %71, %26
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %75, %76
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %70, %44, %25
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gtp_print_vertices(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* @gtp_boardsize, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %15

13:                                               ; preds = %3
  call void @__assert_fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 431, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @__PRETTY_FUNCTION__.gtp_print_vertices, i64 0, i64 0)) #8
  unreachable

14:                                               ; No predecessors!
  br label %15

15:                                               ; preds = %14, %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %6, align 8
  call void @sort_moves(i32 %16, i32* %17, i32* %18)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %111, %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0))
  br label %110

42:                                               ; preds = %34, %27
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %72, label %49

49:                                               ; preds = %42
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @gtp_boardsize, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %72, label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %57
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @gtp_boardsize, align 4
  %71 = icmp sge i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64, %57, %49, %42
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0))
  br label %109

73:                                               ; preds = %64
  %74 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8
  %75 = icmp ne void (i32, i32, i32*, i32*)* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load void (i32, i32, i32*, i32*)*, void (i32, i32, i32*, i32*)** @vertex_transform_output_hook, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  call void %77(i32 %82, i32 %87, i32* %8, i32* %9)
  br label %99

88:                                               ; preds = %73
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %8, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  br label %99

99:                                               ; preds = %88, %76
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 65, %100
  %102 = load i32, i32* %9, align 4
  %103 = icmp sge i32 %102, 8
  %104 = zext i1 %103 to i32
  %105 = add nsw i32 %101, %104
  %106 = load i32, i32* @gtp_boardsize, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sub nsw i32 %106, %107
  call void (i8*, ...) @gtp_printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i64 0, i64 0), i32 %105, i32 %108)
  br label %109

109:                                              ; preds = %99, %72
  br label %110

110:                                              ; preds = %109, %41
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %7, align 4
  br label %19, !llvm.loop !11

114:                                              ; preds = %19
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_moves(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %100, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %103

15:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %96, %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %99

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %25, %30
  br i1 %31, label %56, label %32

32:                                               ; preds = %20
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %32
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %49, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %44, %20
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32*, i32** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  %90 = load i32, i32* %9, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %56, %44, %32
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %16, !llvm.loop !12

99:                                               ; preds = %16
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  br label %12, !llvm.loop !13

103:                                              ; preds = %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nosync nounwind willreturn }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn nounwind }

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
