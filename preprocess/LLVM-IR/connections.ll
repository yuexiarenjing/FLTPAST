; ModuleID = 'connections.c'
source_filename = "connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.dfa_rt = type opaque
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@conn_db = external dso_local global %struct.pattern_db, align 8
@experimental_connections = external dso_local global i32, align 4
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@board = external dso_local global [421 x i8], align 16
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@debug = external dso_local global i32, align 4
@.str = private unnamed_addr constant [48 x i8] c"Connection pattern of type %s inhibited at %1m\0A\00", align 1
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@worm = external dso_local global [400 x %struct.worm_data], align 16
@.str.1 = private unnamed_addr constant [36 x i8] c"Cutting pattern %s+%d found at %1m\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"cutting point %1m\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Connecting pattern %s+%d found at %1m\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Lunch invalidating pattern %s+%d found at %1m\0A\00", align 1
@verbose = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Pattern %s joins %C dragons %1m, %1m\0A\00", align 1
@stdout = external dso_local global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"inhibiting connection at %1m\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_cuts() #0 {
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @cut_callback, i32 6, %struct.pattern_db* @conn_db, i8* null, i8* null)
  ret void
}

declare dso_local void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)*, i32, %struct.pattern_db*, i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cut_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.pattern*, %struct.pattern** %8, align 8
  %12 = getelementptr inbounds %struct.pattern, %struct.pattern* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 512
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.pattern*, %struct.pattern** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %10, align 8
  call void @cut_connect_callback(i32 %17, i32 %18, %struct.pattern* %19, i32 %20, i8* %21)
  br label %22

22:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @find_connections() #0 {
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @conn_callback, i32 6, %struct.pattern_db* @conn_db, i8* null, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @conn_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.pattern*, %struct.pattern** %8, align 8
  %12 = getelementptr inbounds %struct.pattern, %struct.pattern* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 66048
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.pattern*, %struct.pattern** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %10, align 8
  call void @cut_connect_callback(i32 %17, i32 %18, %struct.pattern* %19, i32 %20, i8* %21)
  br label %22

22:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @modify_eye_spaces() #0 {
  call void @matchpat(void (i32, i32, %struct.pattern*, i32, i8*)* @modify_eye_callback, i32 6, %struct.pattern_db* @conn_db, i8* null, i8* null)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @modify_eye_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load %struct.pattern*, %struct.pattern** %8, align 8
  %12 = getelementptr inbounds %struct.pattern, %struct.pattern* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 65536
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.pattern*, %struct.pattern** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i8*, i8** %10, align 8
  call void @cut_connect_callback(i32 %17, i32 %18, %struct.pattern* %19, i32 %20, i8* %21)
  br label %22

22:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cut_connect_callback(i32 %0, i32 %1, %struct.pattern* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pattern*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.pattern* %2, %struct.pattern** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 3, %20
  store i32 %21, i32* %15, align 4
  %22 = load i8*, i8** %10, align 8
  %23 = load %struct.pattern*, %struct.pattern** %8, align 8
  %24 = getelementptr inbounds %struct.pattern, %struct.pattern* %23, i32 0, i32 14
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 4194304
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i32, i32* @experimental_connections, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %663

32:                                               ; preds = %28, %5
  %33 = load %struct.pattern*, %struct.pattern** %8, align 8
  %34 = getelementptr inbounds %struct.pattern, %struct.pattern* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, -2147483648
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i32, i32* @experimental_connections, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  br label %663

42:                                               ; preds = %38, %32
  %43 = load %struct.pattern*, %struct.pattern** %8, align 8
  %44 = getelementptr inbounds %struct.pattern, %struct.pattern* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %46
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %47, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.pattern*, %struct.pattern** %8, align 8
  %55 = getelementptr inbounds %struct.pattern, %struct.pattern* %54, i32 0, i32 14
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 512
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %42
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 @safe_move(i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %663

65:                                               ; preds = %59, %42
  %66 = load %struct.pattern*, %struct.pattern** %8, align 8
  %67 = getelementptr inbounds %struct.pattern, %struct.pattern* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 128
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %215

71:                                               ; preds = %65
  %72 = load i32, i32* @experimental_connections, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %145, label %74

74:                                               ; preds = %71
  store i32 0, i32* %12, align 4
  br label %75

75:                                               ; preds = %141, %74
  %76 = load i32, i32* %12, align 4
  %77 = load %struct.pattern*, %struct.pattern** %8, align 8
  %78 = getelementptr inbounds %struct.pattern, %struct.pattern* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %144

81:                                               ; preds = %75
  %82 = load %struct.pattern*, %struct.pattern** %8, align 8
  %83 = getelementptr inbounds %struct.pattern, %struct.pattern* %82, i32 0, i32 0
  %84 = load %struct.patval*, %struct.patval** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.patval, %struct.patval* %84, i64 %86
  %88 = getelementptr inbounds %struct.patval, %struct.patval* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %90
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %91, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %95, %96
  store i32 %97, i32* %16, align 4
  %98 = load i32, i32* %16, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %140

104:                                              ; preds = %81
  %105 = load i32, i32* %7, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32, i32* %16, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %110, i32 0, i32 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = and i32 %113, 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %107, %104
  %117 = load i32, i32* %7, align 4
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %140

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %122, i32 0, i32 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = and i32 %125, 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %119, %107
  %129 = load i32, i32* @debug, align 4
  %130 = and i32 %129, 32
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  br label %139

133:                                              ; preds = %128
  %134 = load %struct.pattern*, %struct.pattern** %8, align 8
  %135 = getelementptr inbounds %struct.pattern, %struct.pattern* %134, i32 0, i32 3
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* %16, align 4
  %138 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %136, i32 %137)
  br label %139

139:                                              ; preds = %133, %132
  br label %663

140:                                              ; preds = %119, %116, %81
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %12, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %12, align 4
  br label %75, !llvm.loop !4

144:                                              ; preds = %75
  br label %145

145:                                              ; preds = %144, %71
  store i32 0, i32* %12, align 4
  br label %146

146:                                              ; preds = %207, %145
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.pattern*, %struct.pattern** %8, align 8
  %149 = getelementptr inbounds %struct.pattern, %struct.pattern* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp slt i32 %147, %150
  br i1 %151, label %152, label %210

152:                                              ; preds = %146
  %153 = load %struct.pattern*, %struct.pattern** %8, align 8
  %154 = getelementptr inbounds %struct.pattern, %struct.pattern* %153, i32 0, i32 0
  %155 = load %struct.patval*, %struct.patval** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.patval, %struct.patval* %155, i64 %157
  %159 = getelementptr inbounds %struct.patval, %struct.patval* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %161
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %162, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %166, %167
  store i32 %168, i32* %17, align 4
  %169 = load %struct.pattern*, %struct.pattern** %8, align 8
  %170 = getelementptr inbounds %struct.pattern, %struct.pattern* %169, i32 0, i32 0
  %171 = load %struct.patval*, %struct.patval** %170, align 8
  %172 = load i32, i32* %12, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.patval, %struct.patval* %171, i64 %173
  %175 = getelementptr inbounds %struct.patval, %struct.patval* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %206

178:                                              ; preds = %152
  %179 = load i32, i32* %13, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i32, i32* %17, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %13, align 4
  br label %205

187:                                              ; preds = %178
  %188 = load i32, i32* %14, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %187
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %192
  %194 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %13, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %204

198:                                              ; preds = %190
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %200
  %202 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %14, align 4
  br label %210

204:                                              ; preds = %190, %187
  br label %205

205:                                              ; preds = %204, %181
  br label %206

206:                                              ; preds = %205, %152
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  br label %146, !llvm.loop !6

210:                                              ; preds = %198, %146
  %211 = load i32, i32* %14, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  br label %663

214:                                              ; preds = %210
  br label %215

215:                                              ; preds = %214, %65
  %216 = load %struct.pattern*, %struct.pattern** %8, align 8
  %217 = getelementptr inbounds %struct.pattern, %struct.pattern* %216, i32 0, i32 22
  %218 = load i32, i32* %217, align 8
  %219 = and i32 %218, 1
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %215
  %222 = load %struct.pattern*, %struct.pattern** %8, align 8
  %223 = getelementptr inbounds %struct.pattern, %struct.pattern* %222, i32 0, i32 24
  %224 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 %224(i32 %225, i32 %226, i32 %227, i32 0)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %221
  br label %663

231:                                              ; preds = %221
  br label %232

232:                                              ; preds = %231, %215
  %233 = load %struct.pattern*, %struct.pattern** %8, align 8
  %234 = getelementptr inbounds %struct.pattern, %struct.pattern* %233, i32 0, i32 23
  %235 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %234, align 8
  %236 = icmp ne i32 (%struct.pattern*, i32, i32, i32)* %235, null
  br i1 %236, label %237, label %249

237:                                              ; preds = %232
  %238 = load %struct.pattern*, %struct.pattern** %8, align 8
  %239 = getelementptr inbounds %struct.pattern, %struct.pattern* %238, i32 0, i32 23
  %240 = load i32 (%struct.pattern*, i32, i32, i32)*, i32 (%struct.pattern*, i32, i32, i32)** %239, align 8
  %241 = load %struct.pattern*, %struct.pattern** %8, align 8
  %242 = load i32, i32* %9, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %7, align 4
  %245 = call i32 %240(%struct.pattern* %241, i32 %242, i32 %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %237
  br label %663

248:                                              ; preds = %237
  br label %249

249:                                              ; preds = %248, %232
  %250 = load %struct.pattern*, %struct.pattern** %8, align 8
  %251 = getelementptr inbounds %struct.pattern, %struct.pattern* %250, i32 0, i32 14
  %252 = load i32, i32* %251, align 8
  %253 = and i32 %252, 66048
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %317

255:                                              ; preds = %249
  %256 = load %struct.pattern*, %struct.pattern** %8, align 8
  %257 = getelementptr inbounds %struct.pattern, %struct.pattern* %256, i32 0, i32 14
  %258 = load i32, i32* %257, align 8
  %259 = and i32 %258, 16
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %317, label %261

261:                                              ; preds = %255
  store i32 0, i32* %12, align 4
  br label %262

262:                                              ; preds = %313, %261
  %263 = load i32, i32* %12, align 4
  %264 = load %struct.pattern*, %struct.pattern** %8, align 8
  %265 = getelementptr inbounds %struct.pattern, %struct.pattern* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp slt i32 %263, %266
  br i1 %267, label %268, label %316

268:                                              ; preds = %262
  %269 = load %struct.pattern*, %struct.pattern** %8, align 8
  %270 = getelementptr inbounds %struct.pattern, %struct.pattern* %269, i32 0, i32 0
  %271 = load %struct.patval*, %struct.patval** %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.patval, %struct.patval* %271, i64 %273
  %275 = getelementptr inbounds %struct.patval, %struct.patval* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %312

278:                                              ; preds = %268
  %279 = load %struct.pattern*, %struct.pattern** %8, align 8
  %280 = getelementptr inbounds %struct.pattern, %struct.pattern* %279, i32 0, i32 0
  %281 = load %struct.patval*, %struct.patval** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.patval, %struct.patval* %281, i64 %283
  %285 = getelementptr inbounds %struct.patval, %struct.patval* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %287
  %289 = load i32, i32* %9, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [8 x i32], [8 x i32]* %288, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %292, %293
  store i32 %294, i32* %18, align 4
  %295 = load i32, i32* %18, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %296
  %298 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %297, i32 0, i32 16
  %299 = getelementptr inbounds [10 x i32], [10 x i32]* %298, i64 0, i64 0
  %300 = load i32, i32* %299, align 4
  %301 = icmp eq i32 %300, 5
  br i1 %301, label %302, label %311

302:                                              ; preds = %278
  %303 = load i32, i32* %11, align 4
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %310, label %305

305:                                              ; preds = %302
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* %18, align 4
  %308 = call i32 @does_defend(i32 %306, i32 %307)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %311, label %310

310:                                              ; preds = %305, %302
  br label %663

311:                                              ; preds = %305, %278
  br label %312

312:                                              ; preds = %311, %268
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %12, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %12, align 4
  br label %262, !llvm.loop !7

316:                                              ; preds = %262
  br label %317

317:                                              ; preds = %316, %255, %249
  %318 = load %struct.pattern*, %struct.pattern** %8, align 8
  %319 = getelementptr inbounds %struct.pattern, %struct.pattern* %318, i32 0, i32 14
  %320 = load i32, i32* %319, align 8
  %321 = and i32 %320, 512
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %344

323:                                              ; preds = %317
  %324 = load i32, i32* @debug, align 4
  %325 = and i32 %324, 32
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %323
  br label %335

328:                                              ; preds = %323
  %329 = load %struct.pattern*, %struct.pattern** %8, align 8
  %330 = getelementptr inbounds %struct.pattern, %struct.pattern* %329, i32 0, i32 3
  %331 = load i8*, i8** %330, align 8
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* %6, align 4
  %334 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %331, i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %328, %327
  %336 = load i32, i32* @debug, align 4
  %337 = and i32 %336, 32
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %340, label %339

339:                                              ; preds = %335
  br label %343

340:                                              ; preds = %335
  %341 = load i32, i32* %11, align 4
  %342 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %341)
  br label %343

343:                                              ; preds = %340, %339
  br label %384

344:                                              ; preds = %317
  %345 = load %struct.pattern*, %struct.pattern** %8, align 8
  %346 = getelementptr inbounds %struct.pattern, %struct.pattern* %345, i32 0, i32 14
  %347 = load i32, i32* %346, align 8
  %348 = and i32 %347, 128
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %363

350:                                              ; preds = %344
  %351 = load i32, i32* @debug, align 4
  %352 = and i32 %351, 32
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %350
  br label %362

355:                                              ; preds = %350
  %356 = load %struct.pattern*, %struct.pattern** %8, align 8
  %357 = getelementptr inbounds %struct.pattern, %struct.pattern* %356, i32 0, i32 3
  %358 = load i8*, i8** %357, align 8
  %359 = load i32, i32* %9, align 4
  %360 = load i32, i32* %6, align 4
  %361 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %358, i32 %359, i32 %360)
  br label %362

362:                                              ; preds = %355, %354
  br label %383

363:                                              ; preds = %344
  %364 = load %struct.pattern*, %struct.pattern** %8, align 8
  %365 = getelementptr inbounds %struct.pattern, %struct.pattern* %364, i32 0, i32 14
  %366 = load i32, i32* %365, align 8
  %367 = and i32 %366, 65536
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %382

369:                                              ; preds = %363
  %370 = load i32, i32* @debug, align 4
  %371 = and i32 %370, 32
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %369
  br label %381

374:                                              ; preds = %369
  %375 = load %struct.pattern*, %struct.pattern** %8, align 8
  %376 = getelementptr inbounds %struct.pattern, %struct.pattern* %375, i32 0, i32 3
  %377 = load i8*, i8** %376, align 8
  %378 = load i32, i32* %9, align 4
  %379 = load i32, i32* %6, align 4
  %380 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %377, i32 %378, i32 %379)
  br label %381

381:                                              ; preds = %374, %373
  br label %382

382:                                              ; preds = %381, %363
  br label %383

383:                                              ; preds = %382, %362
  br label %384

384:                                              ; preds = %383, %343
  %385 = load %struct.pattern*, %struct.pattern** %8, align 8
  %386 = getelementptr inbounds %struct.pattern, %struct.pattern* %385, i32 0, i32 22
  %387 = load i32, i32* %386, align 8
  %388 = and i32 %387, 2
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %398

390:                                              ; preds = %384
  %391 = load %struct.pattern*, %struct.pattern** %8, align 8
  %392 = getelementptr inbounds %struct.pattern, %struct.pattern* %391, i32 0, i32 24
  %393 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %392, align 8
  %394 = load i32, i32* %9, align 4
  %395 = load i32, i32* %11, align 4
  %396 = load i32, i32* %7, align 4
  %397 = call i32 %393(i32 %394, i32 %395, i32 %396, i32 1)
  br label %398

398:                                              ; preds = %390, %384
  %399 = load %struct.pattern*, %struct.pattern** %8, align 8
  %400 = getelementptr inbounds %struct.pattern, %struct.pattern* %399, i32 0, i32 14
  %401 = load i32, i32* %400, align 8
  %402 = and i32 %401, 512
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %465

404:                                              ; preds = %398
  %405 = load i32, i32* %7, align 4
  %406 = icmp eq i32 %405, 1
  br i1 %406, label %407, label %420

407:                                              ; preds = %404
  %408 = load i32, i32* %11, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %409
  %411 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %410, i32 0, i32 11
  store i8 1, i8* %411, align 4
  %412 = load i32, i32* %11, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %413
  %415 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %414, i32 0, i32 8
  %416 = load i8, i8* %415, align 1
  %417 = sext i8 %416 to i32
  %418 = or i32 %417, 4
  %419 = trunc i32 %418 to i8
  store i8 %419, i8* %415, align 1
  br label %433

420:                                              ; preds = %404
  %421 = load i32, i32* %11, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %422
  %424 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %423, i32 0, i32 11
  store i8 1, i8* %424, align 4
  %425 = load i32, i32* %11, align 4
  %426 = sext i32 %425 to i64
  %427 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %426
  %428 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %427, i32 0, i32 8
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = or i32 %430, 4
  %432 = trunc i32 %431 to i8
  store i8 %432, i8* %428, align 1
  br label %433

433:                                              ; preds = %420, %407
  %434 = load i32, i32* %7, align 4
  %435 = icmp eq i32 %434, 1
  br i1 %435, label %436, label %448

436:                                              ; preds = %433
  %437 = load i32, i32* %11, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %438
  %440 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %441, 4
  br i1 %442, label %443, label %448

443:                                              ; preds = %436
  %444 = load i32, i32* %11, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %445
  %447 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %446, i32 0, i32 7
  store i8 1, i8* %447, align 4
  br label %464

448:                                              ; preds = %436, %433
  %449 = load i32, i32* %7, align 4
  %450 = icmp eq i32 %449, 2
  br i1 %450, label %451, label %463

451:                                              ; preds = %448
  %452 = load i32, i32* %11, align 4
  %453 = sext i32 %452 to i64
  %454 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %453
  %455 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = icmp eq i32 %456, 5
  br i1 %457, label %458, label %463

458:                                              ; preds = %451
  %459 = load i32, i32* %11, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %460
  %462 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %461, i32 0, i32 7
  store i8 1, i8* %462, align 4
  br label %463

463:                                              ; preds = %458, %451, %448
  br label %464

464:                                              ; preds = %463, %443
  br label %473

465:                                              ; preds = %398
  %466 = load %struct.pattern*, %struct.pattern** %8, align 8
  %467 = getelementptr inbounds %struct.pattern, %struct.pattern* %466, i32 0, i32 14
  %468 = load i32, i32* %467, align 8
  %469 = and i32 %468, 128
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %472, label %471

471:                                              ; preds = %465
  br label %663

472:                                              ; preds = %465
  br label %473

473:                                              ; preds = %472, %464
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %474

474:                                              ; preds = %660, %473
  %475 = load i32, i32* %12, align 4
  %476 = load %struct.pattern*, %struct.pattern** %8, align 8
  %477 = getelementptr inbounds %struct.pattern, %struct.pattern* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = icmp slt i32 %475, %478
  br i1 %479, label %480, label %663

480:                                              ; preds = %474
  %481 = load %struct.pattern*, %struct.pattern** %8, align 8
  %482 = getelementptr inbounds %struct.pattern, %struct.pattern* %481, i32 0, i32 0
  %483 = load %struct.patval*, %struct.patval** %482, align 8
  %484 = load i32, i32* %12, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.patval, %struct.patval* %483, i64 %485
  %487 = getelementptr inbounds %struct.patval, %struct.patval* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds [1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 %489
  %491 = load i32, i32* %9, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [8 x i32], [8 x i32]* %490, i64 0, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* %6, align 4
  %496 = add nsw i32 %494, %495
  store i32 %496, i32* %19, align 4
  %497 = load %struct.pattern*, %struct.pattern** %8, align 8
  %498 = getelementptr inbounds %struct.pattern, %struct.pattern* %497, i32 0, i32 14
  %499 = load i32, i32* %498, align 8
  %500 = and i32 %499, 128
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %586

502:                                              ; preds = %480
  %503 = load i32, i32* %19, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %504
  %506 = load i8, i8* %505, align 1
  %507 = zext i8 %506 to i32
  %508 = load i32, i32* %7, align 4
  %509 = icmp eq i32 %507, %508
  br i1 %509, label %510, label %586

510:                                              ; preds = %502
  %511 = load %struct.pattern*, %struct.pattern** %8, align 8
  %512 = getelementptr inbounds %struct.pattern, %struct.pattern* %511, i32 0, i32 0
  %513 = load %struct.patval*, %struct.patval** %512, align 8
  %514 = load i32, i32* %12, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.patval, %struct.patval* %513, i64 %515
  %517 = getelementptr inbounds %struct.patval, %struct.patval* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 4
  %519 = icmp eq i32 %518, 2
  br i1 %519, label %520, label %586

520:                                              ; preds = %510
  %521 = load %struct.pattern*, %struct.pattern** %8, align 8
  %522 = getelementptr inbounds %struct.pattern, %struct.pattern* %521, i32 0, i32 14
  %523 = load i32, i32* %522, align 8
  %524 = and i32 %523, 16
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %534, label %526

526:                                              ; preds = %520
  %527 = load i32, i32* %19, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %528
  %530 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %529, i32 0, i32 16
  %531 = getelementptr inbounds [10 x i32], [10 x i32]* %530, i64 0, i64 0
  %532 = load i32, i32* %531, align 4
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %534, label %586

534:                                              ; preds = %526, %520
  %535 = load i32, i32* %13, align 4
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %537, label %543

537:                                              ; preds = %534
  %538 = load i32, i32* %19, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %539
  %541 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %540, i32 0, i32 2
  %542 = load i32, i32* %541, align 4
  store i32 %542, i32* %13, align 4
  br label %585

543:                                              ; preds = %534
  %544 = load i32, i32* %14, align 4
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %584

546:                                              ; preds = %543
  %547 = load i32, i32* %19, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %548
  %550 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %549, i32 0, i32 2
  %551 = load i32, i32* %550, align 4
  %552 = load i32, i32* %13, align 4
  %553 = icmp ne i32 %551, %552
  br i1 %553, label %554, label %584

554:                                              ; preds = %546
  %555 = load i32, i32* %19, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %556
  %558 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %557, i32 0, i32 2
  %559 = load i32, i32* %558, align 4
  store i32 %559, i32* %14, align 4
  %560 = load i32, i32* @verbose, align 4
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %566, label %562

562:                                              ; preds = %554
  %563 = load i32, i32* @debug, align 4
  %564 = and i32 %563, 32
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %574

566:                                              ; preds = %562, %554
  %567 = load %struct.pattern*, %struct.pattern** %8, align 8
  %568 = getelementptr inbounds %struct.pattern, %struct.pattern* %567, i32 0, i32 3
  %569 = load i8*, i8** %568, align 8
  %570 = load i32, i32* %7, align 4
  %571 = load i32, i32* %13, align 4
  %572 = load i32, i32* %14, align 4
  %573 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %569, i32 %570, i32 %571, i32 %572)
  br label %574

574:                                              ; preds = %566, %562
  %575 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %576 = call i32 @fflush(%struct._IO_FILE* %575)
  %577 = load i32, i32* %14, align 4
  %578 = load i32, i32* %13, align 4
  call void @join_dragons(i32 %577, i32 %578)
  store i32 0, i32* %14, align 4
  %579 = load i32, i32* %19, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %580
  %582 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 4
  store i32 %583, i32* %13, align 4
  br label %584

584:                                              ; preds = %574, %546, %543
  br label %585

585:                                              ; preds = %584, %537
  br label %586

586:                                              ; preds = %585, %526, %510, %502, %480
  %587 = load %struct.pattern*, %struct.pattern** %8, align 8
  %588 = getelementptr inbounds %struct.pattern, %struct.pattern* %587, i32 0, i32 14
  %589 = load i32, i32* %588, align 8
  %590 = and i32 %589, 512
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %659

592:                                              ; preds = %586
  %593 = load %struct.pattern*, %struct.pattern** %8, align 8
  %594 = getelementptr inbounds %struct.pattern, %struct.pattern* %593, i32 0, i32 0
  %595 = load %struct.patval*, %struct.patval** %594, align 8
  %596 = load i32, i32* %12, align 4
  %597 = sext i32 %596 to i64
  %598 = getelementptr inbounds %struct.patval, %struct.patval* %595, i64 %597
  %599 = getelementptr inbounds %struct.patval, %struct.patval* %598, i32 0, i32 1
  %600 = load i32, i32* %599, align 4
  %601 = icmp ne i32 %600, 7
  br i1 %601, label %602, label %603

602:                                              ; preds = %592
  br label %663

603:                                              ; preds = %592
  %604 = load i32, i32* %7, align 4
  %605 = icmp eq i32 %604, 1
  br i1 %605, label %606, label %630

606:                                              ; preds = %603
  %607 = load i32, i32* %19, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %608
  %610 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = icmp eq i32 %611, 4
  br i1 %612, label %613, label %630

613:                                              ; preds = %606
  %614 = load i32, i32* %19, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %615
  %617 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %616, i32 0, i32 8
  %618 = load i8, i8* %617, align 1
  %619 = sext i8 %618 to i32
  %620 = or i32 %619, 4
  %621 = trunc i32 %620 to i8
  store i8 %621, i8* %617, align 1
  %622 = load i32, i32* @debug, align 4
  %623 = and i32 %622, 32
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %626, label %625

625:                                              ; preds = %613
  br label %629

626:                                              ; preds = %613
  %627 = load i32, i32* %19, align 4
  %628 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %627)
  br label %629

629:                                              ; preds = %626, %625
  br label %658

630:                                              ; preds = %606, %603
  %631 = load i32, i32* %7, align 4
  %632 = icmp eq i32 %631, 2
  br i1 %632, label %633, label %657

633:                                              ; preds = %630
  %634 = load i32, i32* %19, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %635
  %637 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 4
  %639 = icmp eq i32 %638, 5
  br i1 %639, label %640, label %657

640:                                              ; preds = %633
  %641 = load i32, i32* %19, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %642
  %644 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %643, i32 0, i32 8
  %645 = load i8, i8* %644, align 1
  %646 = sext i8 %645 to i32
  %647 = or i32 %646, 4
  %648 = trunc i32 %647 to i8
  store i8 %648, i8* %644, align 1
  %649 = load i32, i32* @debug, align 4
  %650 = and i32 %649, 32
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %653, label %652

652:                                              ; preds = %640
  br label %656

653:                                              ; preds = %640
  %654 = load i32, i32* %19, align 4
  %655 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %654)
  br label %656

656:                                              ; preds = %653, %652
  br label %657

657:                                              ; preds = %656, %633, %630
  br label %658

658:                                              ; preds = %657, %629
  br label %659

659:                                              ; preds = %658, %586
  br label %660

660:                                              ; preds = %659
  %661 = load i32, i32* %12, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %12, align 4
  br label %474, !llvm.loop !8

663:                                              ; preds = %31, %41, %64, %139, %213, %230, %247, %310, %471, %602, %474
  ret void
}

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local i32 @does_defend(i32, i32) #1

declare dso_local i32 @fflush(%struct._IO_FILE*) #1

declare dso_local void @join_dragons(i32, i32) #1

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
