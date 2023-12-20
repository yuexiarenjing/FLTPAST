; ModuleID = 'printutils.c'
source_filename = "printutils.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external dso_local global %struct._IO_FILE*, align 8
@stdout = external dso_local global %struct._IO_FILE*, align 8
@verbose = external dso_local global i32, align 4
@.str = private unnamed_addr constant [50 x i8] c"%o\0A\0A***assertion failure:\0A%s:%d - %s near %m***\0A\0A\00", align 1
@stackp = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"\0Agnugo %s (seed %d): You stepped on a bug.\0A\00", align 1
@random_seed = external dso_local global i32, align 4
@board_size = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [136 x i8] c"Please save this game as an sgf file and mail it to gnugo@gnu.org\0AIf you can, please also include the debug output above this message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gray\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"white border\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"black border\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"purple?\00", align 1
@location_to_string.init = internal global i32 0, align 4
@location_to_string.buf = internal global [421 x [5 x i8]] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [13 x i8] c"printutils.c\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"pos >= 0 && pos < BOARDSIZE\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"Pass\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"DEAD\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ALIVE\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"CRITICAL\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"UNCHECKED\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"CAN_THREATEN_ATTACK\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"CAN_THREATEN_DEFENSE\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"INESSENTIAL\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"TACTICALLY_DEAD\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"ALIVE_IN_SEKI\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"STRONGLY_ALIVE\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"INVINCIBLE\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"INSUBSTANTIAL\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"FIND_DEFENSE\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"ATTACK\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"OWL_ATTACK\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"OWL_DEFEND\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"SEMEAI\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"DISCONNECT\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"KO_B\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"LOSS\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"GAIN\00", align 1
@.str.39 = private unnamed_addr constant [5 x i8] c"KO_A\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"WIN\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"SEKI\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.43 = private unnamed_addr constant [33 x i8] c"                                \00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.46 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.47 = private unnamed_addr constant [31 x i8] c"\0A\0AUnknown format string '2%c'\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"[%d,%d]\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"%-2d\00", align 1
@.str.51 = private unnamed_addr constant [31 x i8] c"\0A\0AUnknown format string '1%c'\0A\00", align 1
@board = external dso_local global [421 x i8], align 16
@.str.52 = private unnamed_addr constant [5 x i8] c"[%d]\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"\0A\0AUnknown format character '%c'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfprintf(%struct._IO_FILE* %0, i8* %1, ...) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %7 = bitcast %struct.__va_list_tag* %6 to i8*
  call void @llvm.va_start(i8* %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  call void @vgprintf(%struct._IO_FILE* %8, i8* %9, %struct.__va_list_tag* %10)
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0
  %12 = bitcast %struct.__va_list_tag* %11 to i8*
  call void @llvm.va_end(i8* %12)
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vgprintf(%struct._IO_FILE* %0, i8* %1, %struct.__va_list_tag* %2) #0 {
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.__va_list_tag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [4 x i8], align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i8], align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.__va_list_tag* %2, %struct.__va_list_tag** %6, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 37
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 111
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  store i8* %34, i8** %5, align 8
  br label %44

35:                                               ; preds = %26, %3
  %36 = load i32, i32* @stackp, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %40 = load i32, i32* @stackp, align 4
  %41 = mul nsw i32 %40, 2
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0), i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.43, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %35
  br label %44

44:                                               ; preds = %43, %32
  br label %45

45:                                               ; preds = %443, %44
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %446

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 37
  br i1 %53, label %54, label %436

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %5, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %429 [
    i32 99, label %59
    i32 100, label %81
    i32 120, label %103
    i32 102, label %125
    i32 115, label %147
    i32 50, label %169
    i32 109, label %188
    i32 77, label %188
    i32 49, label %284
    i32 72, label %384
    i32 67, label %406
  ]

59:                                               ; preds = %54
  %60 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %61 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ule i32 %62, 40
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr i8, i8* %66, i32 %62
  %68 = bitcast i8* %67 to i32*
  %69 = add i32 %62, 8
  store i32 %69, i32* %61, align 8
  br label %75

70:                                               ; preds = %59
  %71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %60, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = getelementptr i8, i8* %72, i32 8
  store i8* %74, i8** %71, align 8
  br label %75

75:                                               ; preds = %70, %64
  %76 = phi i32* [ %68, %64 ], [ %73, %70 ]
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %80 = call i32 @_IO_putc(i32 %78, %struct._IO_FILE* %79)
  br label %435

81:                                               ; preds = %54
  %82 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %83 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp ule i32 %84, 40
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %82, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr i8, i8* %88, i32 %84
  %90 = bitcast i8* %89 to i32*
  %91 = add i32 %84, 8
  store i32 %91, i32* %83, align 8
  br label %97

92:                                               ; preds = %81
  %93 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %82, i32 0, i32 2
  %94 = load i8*, i8** %93, align 8
  %95 = bitcast i8* %94 to i32*
  %96 = getelementptr i8, i8* %94, i32 8
  store i8* %96, i8** %93, align 8
  br label %97

97:                                               ; preds = %92, %86
  %98 = phi i32* [ %90, %86 ], [ %95, %92 ]
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %8, align 4
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i32 %101)
  br label %435

103:                                              ; preds = %54
  %104 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %105 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ule i32 %106, 40
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 3
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr i8, i8* %110, i32 %106
  %112 = bitcast i8* %111 to i32*
  %113 = add i32 %106, 8
  store i32 %113, i32* %105, align 8
  br label %119

114:                                              ; preds = %103
  %115 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %104, i32 0, i32 2
  %116 = load i8*, i8** %115, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = getelementptr i8, i8* %116, i32 8
  store i8* %118, i8** %115, align 8
  br label %119

119:                                              ; preds = %114, %108
  %120 = phi i32* [ %112, %108 ], [ %117, %114 ]
  %121 = load i32, i32* %120, align 4
  store i32 %121, i32* %9, align 4
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.45, i64 0, i64 0), i32 %123)
  br label %435

125:                                              ; preds = %54
  %126 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %127 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp ule i32 %128, 160
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 3
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr i8, i8* %132, i32 %128
  %134 = bitcast i8* %133 to double*
  %135 = add i32 %128, 16
  store i32 %135, i32* %127, align 4
  br label %141

136:                                              ; preds = %125
  %137 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %126, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = bitcast i8* %138 to double*
  %140 = getelementptr i8, i8* %138, i32 8
  store i8* %140, i8** %137, align 8
  br label %141

141:                                              ; preds = %136, %130
  %142 = phi double* [ %134, %130 ], [ %139, %136 ]
  %143 = load double, double* %142, align 8
  store double %143, double* %10, align 8
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %145 = load double, double* %10, align 8
  %146 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.46, i64 0, i64 0), double %145)
  br label %435

147:                                              ; preds = %54
  %148 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %149 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ule i32 %150, 40
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 3
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr i8, i8* %154, i32 %150
  %156 = bitcast i8* %155 to i8**
  %157 = add i32 %150, 8
  store i32 %157, i32* %149, align 8
  br label %163

158:                                              ; preds = %147
  %159 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %148, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = bitcast i8* %160 to i8**
  %162 = getelementptr i8, i8* %160, i32 8
  store i8* %162, i8** %159, align 8
  br label %163

163:                                              ; preds = %158, %152
  %164 = phi i8** [ %156, %152 ], [ %161, %158 ]
  %165 = load i8*, i8** %164, align 8
  store i8* %165, i8** %11, align 8
  %166 = load i8*, i8** %11, align 8
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %168 = call i32 @fputs(i8* %166, %struct._IO_FILE* %167)
  br label %435

169:                                              ; preds = %54
  %170 = load i8*, i8** %5, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %5, align 8
  %172 = load i8*, i8** %5, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp ne i32 %174, 109
  br i1 %175, label %176, label %187

176:                                              ; preds = %169
  %177 = load i8*, i8** %5, align 8
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp ne i32 %179, 77
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.47, i64 0, i64 0), i32 %185)
  br label %435

187:                                              ; preds = %176, %169
  br label %188

188:                                              ; preds = %54, %54, %187
  %189 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %190 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp ule i32 %191, 40
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %189, i32 0, i32 3
  %195 = load i8*, i8** %194, align 8
  %196 = getelementptr i8, i8* %195, i32 %191
  %197 = bitcast i8* %196 to i32*
  %198 = add i32 %191, 8
  store i32 %198, i32* %190, align 8
  br label %204

199:                                              ; preds = %188
  %200 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %189, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = bitcast i8* %201 to i32*
  %203 = getelementptr i8, i8* %201, i32 8
  store i8* %203, i8** %200, align 8
  br label %204

204:                                              ; preds = %199, %193
  %205 = phi i32* [ %197, %193 ], [ %202, %199 ]
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* %13, align 4
  %207 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %208 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = icmp ule i32 %209, 40
  br i1 %210, label %211, label %217

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %207, i32 0, i32 3
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr i8, i8* %213, i32 %209
  %215 = bitcast i8* %214 to i32*
  %216 = add i32 %209, 8
  store i32 %216, i32* %208, align 8
  br label %222

217:                                              ; preds = %204
  %218 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %207, i32 0, i32 2
  %219 = load i8*, i8** %218, align 8
  %220 = bitcast i8* %219 to i32*
  %221 = getelementptr i8, i8* %219, i32 8
  store i8* %221, i8** %218, align 8
  br label %222

222:                                              ; preds = %217, %211
  %223 = phi i32* [ %215, %211 ], [ %220, %217 ]
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %14, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %233

227:                                              ; preds = %222
  %228 = load i32, i32* %14, align 4
  %229 = icmp eq i32 %228, -1
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %232 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* %231)
  br label %283

233:                                              ; preds = %227, %222
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* @board_size, align 4
  %236 = icmp ult i32 %234, %235
  br i1 %236, label %237, label %241

237:                                              ; preds = %233
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* @board_size, align 4
  %240 = icmp ult i32 %238, %239
  br i1 %240, label %246, label %241

241:                                              ; preds = %237, %233
  %242 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %14, align 4
  %245 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i64 0, i64 0), i32 %243, i32 %244)
  br label %282

246:                                              ; preds = %237
  %247 = load i32, i32* %14, align 4
  %248 = icmp slt i32 %247, 8
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i32, i32* %14, align 4
  %251 = add nsw i32 %250, 65
  %252 = trunc i32 %251 to i8
  %253 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 %252, i8* %253, align 1
  br label %259

254:                                              ; preds = %246
  %255 = load i32, i32* %14, align 4
  %256 = add nsw i32 %255, 66
  %257 = trunc i32 %256 to i8
  %258 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  store i8 %257, i8* %258, align 1
  br label %259

259:                                              ; preds = %254, %249
  %260 = load i8*, i8** %5, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 109
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %266 = getelementptr inbounds i8, i8* %265, i64 1
  %267 = load i32, i32* @board_size, align 4
  %268 = load i32, i32* %13, align 4
  %269 = sub nsw i32 %267, %268
  %270 = call i32 (i8*, i8*, ...) @sprintf(i8* %266, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i32 %269) #7
  br label %278

271:                                              ; preds = %259
  %272 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %273 = getelementptr inbounds i8, i8* %272, i64 1
  %274 = load i32, i32* @board_size, align 4
  %275 = load i32, i32* %13, align 4
  %276 = sub nsw i32 %274, %275
  %277 = call i32 (i8*, i8*, ...) @sprintf(i8* %273, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i32 %276) #7
  br label %278

278:                                              ; preds = %271, %264
  %279 = getelementptr inbounds [4 x i8], [4 x i8]* %12, i64 0, i64 0
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %281 = call i32 @fputs(i8* %279, %struct._IO_FILE* %280)
  br label %282

282:                                              ; preds = %278, %241
  br label %283

283:                                              ; preds = %282, %230
  br label %435

284:                                              ; preds = %54
  %285 = load i8*, i8** %5, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %5, align 8
  %287 = load i8*, i8** %5, align 8
  %288 = load i8, i8* %287, align 1
  %289 = sext i8 %288 to i32
  %290 = icmp ne i32 %289, 109
  br i1 %290, label %291, label %302

291:                                              ; preds = %284
  %292 = load i8*, i8** %5, align 8
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp ne i32 %294, 77
  br i1 %295, label %296, label %302

296:                                              ; preds = %291
  %297 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %298 = load i8*, i8** %5, align 8
  %299 = load i8, i8* %298, align 1
  %300 = sext i8 %299 to i32
  %301 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %297, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.51, i64 0, i64 0), i32 %300)
  br label %435

302:                                              ; preds = %291, %284
  %303 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %304 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ule i32 %305, 40
  br i1 %306, label %307, label %313

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %303, i32 0, i32 3
  %309 = load i8*, i8** %308, align 8
  %310 = getelementptr i8, i8* %309, i32 %305
  %311 = bitcast i8* %310 to i32*
  %312 = add i32 %305, 8
  store i32 %312, i32* %304, align 8
  br label %318

313:                                              ; preds = %302
  %314 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %303, i32 0, i32 2
  %315 = load i8*, i8** %314, align 8
  %316 = bitcast i8* %315 to i32*
  %317 = getelementptr i8, i8* %315, i32 8
  store i8* %317, i8** %314, align 8
  br label %318

318:                                              ; preds = %313, %307
  %319 = phi i32* [ %311, %307 ], [ %316, %313 ]
  %320 = load i32, i32* %319, align 4
  store i32 %320, i32* %16, align 4
  %321 = load i32, i32* %16, align 4
  %322 = sdiv i32 %321, 20
  %323 = sub nsw i32 %322, 1
  store i32 %323, i32* %17, align 4
  %324 = load i32, i32* %16, align 4
  %325 = srem i32 %324, 20
  %326 = sub nsw i32 %325, 1
  store i32 %326, i32* %18, align 4
  %327 = load i32, i32* %16, align 4
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %332

329:                                              ; preds = %318
  %330 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %331 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), %struct._IO_FILE* %330)
  br label %383

332:                                              ; preds = %318
  %333 = load i32, i32* %16, align 4
  %334 = icmp ult i32 %333, 421
  br i1 %334, label %335, label %342

335:                                              ; preds = %332
  %336 = load i32, i32* %16, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %337
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp ne i32 %340, 3
  br i1 %341, label %346, label %342

342:                                              ; preds = %335, %332
  %343 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %344 = load i32, i32* %16, align 4
  %345 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %343, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.52, i64 0, i64 0), i32 %344)
  br label %382

346:                                              ; preds = %335
  %347 = load i32, i32* %18, align 4
  %348 = icmp slt i32 %347, 8
  br i1 %348, label %349, label %354

349:                                              ; preds = %346
  %350 = load i32, i32* %18, align 4
  %351 = add nsw i32 %350, 65
  %352 = trunc i32 %351 to i8
  %353 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %352, i8* %353, align 1
  br label %359

354:                                              ; preds = %346
  %355 = load i32, i32* %18, align 4
  %356 = add nsw i32 %355, 66
  %357 = trunc i32 %356 to i8
  %358 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  store i8 %357, i8* %358, align 1
  br label %359

359:                                              ; preds = %354, %349
  %360 = load i8*, i8** %5, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp eq i32 %362, 109
  br i1 %363, label %364, label %371

364:                                              ; preds = %359
  %365 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %366 = getelementptr inbounds i8, i8* %365, i64 1
  %367 = load i32, i32* @board_size, align 4
  %368 = load i32, i32* %17, align 4
  %369 = sub nsw i32 %367, %368
  %370 = call i32 (i8*, i8*, ...) @sprintf(i8* %366, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0), i32 %369) #7
  br label %378

371:                                              ; preds = %359
  %372 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %373 = getelementptr inbounds i8, i8* %372, i64 1
  %374 = load i32, i32* @board_size, align 4
  %375 = load i32, i32* %17, align 4
  %376 = sub nsw i32 %374, %375
  %377 = call i32 (i8*, i8*, ...) @sprintf(i8* %373, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i64 0, i64 0), i32 %376) #7
  br label %378

378:                                              ; preds = %371, %364
  %379 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i64 0, i64 0
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %381 = call i32 @fputs(i8* %379, %struct._IO_FILE* %380)
  br label %382

382:                                              ; preds = %378, %342
  br label %383

383:                                              ; preds = %382, %329
  br label %435

384:                                              ; preds = %54
  %385 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %386 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = icmp ule i32 %387, 40
  br i1 %388, label %389, label %395

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %385, i32 0, i32 3
  %391 = load i8*, i8** %390, align 8
  %392 = getelementptr i8, i8* %391, i32 %387
  %393 = bitcast i8* %392 to i64*
  %394 = add i32 %387, 8
  store i32 %394, i32* %386, align 8
  br label %400

395:                                              ; preds = %384
  %396 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %385, i32 0, i32 2
  %397 = load i8*, i8** %396, align 8
  %398 = bitcast i8* %397 to i64*
  %399 = getelementptr i8, i8* %397, i32 8
  store i8* %399, i8** %396, align 8
  br label %400

400:                                              ; preds = %395, %389
  %401 = phi i64* [ %393, %389 ], [ %398, %395 ]
  %402 = load i64, i64* %401, align 8
  store i64 %402, i64* %19, align 8
  %403 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %404 = load i64, i64* %19, align 8
  %405 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %403, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i64 0, i64 0), i64 %404)
  br label %435

406:                                              ; preds = %54
  %407 = load %struct.__va_list_tag*, %struct.__va_list_tag** %6, align 8
  %408 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = icmp ule i32 %409, 40
  br i1 %410, label %411, label %417

411:                                              ; preds = %406
  %412 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %407, i32 0, i32 3
  %413 = load i8*, i8** %412, align 8
  %414 = getelementptr i8, i8* %413, i32 %409
  %415 = bitcast i8* %414 to i32*
  %416 = add i32 %409, 8
  store i32 %416, i32* %408, align 8
  br label %422

417:                                              ; preds = %406
  %418 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %407, i32 0, i32 2
  %419 = load i8*, i8** %418, align 8
  %420 = bitcast i8* %419 to i32*
  %421 = getelementptr i8, i8* %419, i32 8
  store i8* %421, i8** %418, align 8
  br label %422

422:                                              ; preds = %417, %411
  %423 = phi i32* [ %415, %411 ], [ %420, %417 ]
  %424 = load i32, i32* %423, align 4
  store i32 %424, i32* %20, align 4
  %425 = load i32, i32* %20, align 4
  %426 = call i8* @color_to_string(i32 %425)
  %427 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %428 = call i32 @fputs(i8* %426, %struct._IO_FILE* %427)
  br label %435

429:                                              ; preds = %54
  %430 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %431 = load i8*, i8** %5, align 8
  %432 = load i8, i8* %431, align 1
  %433 = sext i8 %432 to i32
  %434 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %430, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i64 0, i64 0), i32 %433)
  br label %435

435:                                              ; preds = %429, %422, %400, %383, %296, %283, %181, %163, %141, %119, %97, %75
  br label %442

436:                                              ; preds = %49
  %437 = load i8*, i8** %5, align 8
  %438 = load i8, i8* %437, align 1
  %439 = sext i8 %438 to i32
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %441 = call i32 @_IO_putc(i32 %439, %struct._IO_FILE* %440)
  br label %442

442:                                              ; preds = %436, %435
  br label %443

443:                                              ; preds = %442
  %444 = load i8*, i8** %5, align 8
  %445 = getelementptr inbounds i8, i8* %444, i32 1
  store i8* %445, i8** %5, align 8
  br label %45, !llvm.loop !4

446:                                              ; preds = %45
  ret void
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gprintf(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @vgprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  ret i32 1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mprintf(i8* %0, ...) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %5 = bitcast %struct.__va_list_tag* %4 to i8*
  call void @llvm.va_start(i8* %5)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  call void @vgprintf(%struct._IO_FILE* %6, i8* %7, %struct.__va_list_tag* %8)
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0
  %10 = bitcast %struct.__va_list_tag* %9 to i8*
  call void @llvm.va_end(i8* %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @abortgo(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 4, i32* @verbose, align 4
  %11 = load i32, i32* @verbose, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %21

14:                                               ; preds = %5
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16, i8* %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %13
  call void @dump_stack()
  call void @showboard(i32 0)
  br label %22

22:                                               ; preds = %25, %21
  %23 = load i32, i32* @stackp, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  call void @popgo()
  call void @showboard(i32 0)
  br label %22, !llvm.loop !6

26:                                               ; preds = %22
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %28 = call i8* @gg_version()
  %29 = load i32, i32* @random_seed, align 4
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i8* %28, i32 %29)
  %31 = load i32, i32* @board_size, align 4
  %32 = icmp sge i32 %31, 9
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i32, i32* @board_size, align 4
  %35 = icmp sle i32 %34, 19
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str.2, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %33, %26
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %41 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = call i32 @fflush(%struct._IO_FILE* %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %45 = call i32 @fflush(%struct._IO_FILE* %44)
  call void @abort() #8
  unreachable
}

declare dso_local void @dump_stack() #2

declare dso_local void @showboard(i32) #2

declare dso_local void @popgo() #2

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

declare dso_local i8* @gg_version() #2

declare dso_local i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @color_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %28

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %28

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %28

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %28

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %28

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %28

27:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %28

28:                                               ; preds = %27, %26, %22, %18, %14, %10, %6
  %29 = load i8*, i8** %2, align 8
  ret i8* %29
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @location_to_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @location_to_string.init, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %16, %6
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 421
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x [5 x i8]], [421 x [5 x i8]]* @location_to_string.buf, i64 0, i64 %13
  %15 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  call void @location_to_buffer(i32 %11, i8* %15)
  br label %16

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %7, !llvm.loop !7

19:                                               ; preds = %7
  store i32 1, i32* @location_to_string.init, align 4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load i32, i32* %2, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 421
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %34

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %2, align 4
  %29 = sdiv i32 %28, 20
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %2, align 4
  %32 = srem i32 %31, 20
  %33 = sub nsw i32 %32, 1
  call void @abortgo(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i32 %30, i32 %33)
  br label %34

34:                                               ; preds = %27, %26
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x [5 x i8]], [421 x [5 x i8]]* @location_to_string.buf, i64 0, i64 %36
  %38 = getelementptr inbounds [5 x i8], [5 x i8]* %37, i64 0, i64 0
  ret i8* %38
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @location_to_buffer(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = sdiv i32 %9, 20
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = srem i32 %12, 20
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @strcpy(i8* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0)) #7
  br label %56

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 65, %21
  %23 = trunc i32 %22 to i8
  %24 = load i8*, i8** %5, align 8
  store i8 %23, i8* %24, align 1
  %25 = load i8*, i8** %5, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp sge i32 %27, 73
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = add i8 %31, 1
  store i8 %32, i8* %30, align 1
  br label %33

33:                                               ; preds = %29, %20
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  %36 = load i32, i32* @board_size, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 9
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = sdiv i32 %42, 10
  %44 = add nsw i32 48, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %5, align 8
  store i8 %45, i8* %46, align 1
  br label %48

48:                                               ; preds = %41, %33
  %49 = load i32, i32* %6, align 4
  %50 = srem i32 %49, 10
  %51 = add nsw i32 48, %50
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %5, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8*, i8** %5, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %48, %17
  ret void
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @status_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %32

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %32

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %32

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %32

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 11
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 12
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %30, %26, %22, %18, %14, %10, %6
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @safety_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %48

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %48

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %48

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 5
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %48

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %48

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 7
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %48

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %48

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = icmp eq i32 %32, 9
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %48

35:                                               ; preds = %31
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %48

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = icmp eq i32 %40, 11
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 12
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %48

47:                                               ; preds = %43
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %48

48:                                               ; preds = %47, %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @routine_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 3
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %32

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %32

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %32

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %32

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %32

32:                                               ; preds = %31, %30, %26, %22, %18, %14, %10, %6
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @result_to_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %12 [
    i32 0, label %5
    i32 1, label %6
    i32 2, label %7
    i32 3, label %8
    i32 4, label %9
    i32 5, label %10
    i32 7, label %11
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %13

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %13

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %13

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %13

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %13

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %13

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %13

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %13

13:                                               ; preds = %12, %11, %10, %9, %8, %7, %6, %5
  %14 = load i8*, i8** %2, align 8
  ret i8* %14
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_to_location(i32 %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %87

15:                                               ; preds = %4
  %16 = call i16** @__ctype_b_loc() #9
  %17 = load i16*, i16** %16, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i16, i16* %17, i64 %21
  %23 = load i16, i16* %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %24, 1024
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %87

28:                                               ; preds = %15
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = call i32 @tolower(i32 %31) #10
  %33 = sub nsw i32 %32, 97
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 @tolower(i32 %37) #10
  %39 = icmp sge i32 %38, 105
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %40, %28
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48, %44
  store i32 0, i32* %5, align 4
  br label %87

55:                                               ; preds = %48
  %56 = call i16** @__ctype_b_loc() #9
  %57 = load i16*, i16** %56, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = load i8, i8* %59, align 1
  %61 = sext i8 %60 to i32
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i16, i16* %57, i64 %62
  %64 = load i16, i16* %63, align 2
  %65 = zext i16 %64 to i32
  %66 = and i32 %65, 2048
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %87

69:                                               ; preds = %55
  %70 = load i32, i32* %6, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = call i32 @atoi(i8* %72) #10
  %74 = sub nsw i32 %70, %73
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %8, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %69
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79, %69
  store i32 0, i32* %5, align 4
  br label %87

86:                                               ; preds = %79
  store i32 1, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %85, %68, %54, %27, %14
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #5

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #6

declare dso_local i32 @_IO_putc(i32, %struct._IO_FILE*) #2

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }
attributes #9 = { nounwind readnone willreturn }
attributes #10 = { nounwind readonly willreturn }

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
