; ModuleID = 'readconnect.c'
source_filename = "readconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.read_result_t = type { i32, i32, %struct.read_result_t* }
%struct.connection_data = type { [400 x i32], [400 x i32], [400 x i32], [400 x i32], [400 x i32], [400 x i32], i32, i32 }

@nodes_connect = dso_local global i32 0, align 4
@max_nodes_connect = dso_local global i32 2000, align 4
@max_connect_depth2 = dso_local global i32 20, align 4
@verbose = external dso_local global i32, align 4
@global_connection_node_counter = internal global i32 0, align 4
@board = external dso_local global [421 x i8], align 16
@.str = private unnamed_addr constant [19 x i8] c"recursive_connect2\00", align 1
@sgf_dumptree = external dso_local global %struct.SGFTree_t*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"one string already captured\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"already connected\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"connection node limit reached\00", align 1
@stackp = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"connection depth limit reached\00", align 1
@depth = external dso_local global i32, align 4
@hashflags = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"trivial connection\00", align 1
@ko_depth = external dso_local global i32, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"connection effective\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"no move, probably connected\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"saved move\00", align 1
@count_variations = external dso_local global i32, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"%oVariation %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"%oMove %1m, (%d, %d, %d, %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"%o  %d, primary distance\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"%o  -100, well balanced\0A\00", align 1
@.str.14 = private unnamed_addr constant [36 x i8] c"%o  discarded, not between strings\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"%o  discarded, self atari\0A\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"%o  attack with code %d at %1m, defense with code %d at %1m\0A\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"%o  +500, no defense\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"%o  +500, attack point not on shortest path\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"%o  -150 at %1m, capturing a string\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"%o  -500 at %1m, defending a string\0A\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"%o  +0 at %1m, vulnerability\0A\00", align 1
@delta = external dso_local global [8 x i32], align 16
@.str.22 = private unnamed_addr constant [41 x i8] c"%o%1M -150, adjacent to attacker string\0A\00", align 1
@.str.23 = private unnamed_addr constant [68 x i8] c"%o%1M -200, adjacent to attacker string with at most two liberties\0A\00", align 1
@.str.24 = private unnamed_addr constant [63 x i8] c"%o%1M -700, capture or atari of immediately connecting string\0A\00", align 1
@.str.25 = private unnamed_addr constant [68 x i8] c"%o%1M -200, adjacent to defender string with at most two liberties\0A\00", align 1
@.str.26 = private unnamed_addr constant [37 x i8] c"%o%1M -100, disconnect move on edge\0A\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"%o%1M -100, liberty of endpoint string with 3 libs\0A\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"%oSorted moves:\0A\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"%o%1M %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Move order for %sconnect: %n\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"%c%d (%d) %n\00", align 1
@board_size = external dso_local global i32, align 4
@.str.34 = private unnamed_addr constant [14 x i8] c"readconnect.c\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c"conn->queue_end <= 19 * 19\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"compute_connection_distances\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"  %c \00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"%2d \00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c" O  \00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c" X  \00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c" .  \00", align 1
@.str.44 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Vulnerable:\0A\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c" %1m:\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c" %1m\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"recursive_disconnect2\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"first string capturable\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"second string capturable\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"disconnection effective\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"no move, probably disconnected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_connect(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32* %7, i32** %6, align 8
  br label %13

13:                                               ; preds = %12, %3
  store i32 0, i32* @nodes_connect, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @verbose, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @verbose, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @verbose, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @verbose, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @recursive_connect2(i32 %22, i32 %23, i32* %24, i32 0, i32 0, i32 0)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* @verbose, align 4
  %27 = load i32, i32* %9, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursive_connect2(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [362 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.read_result_t*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %23, align 8
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %25, align 4
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %26, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %6
  %41 = load i32*, i32** %10, align 8
  store i32 0, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %6
  %43 = load i32, i32* @nodes_connect, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @nodes_connect, align 4
  %45 = load i32, i32* @global_connection_node_counter, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @global_connection_node_counter, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %53, %42
  %61 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %62 = icmp ne %struct.SGFTree_t* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i8*, i8** %24, align 8
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* %26, align 4
  call void @sgf_trace2(i8* %64, i32 %65, i32 %66, i32 0, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %67

67:                                               ; preds = %63, %60
  store i32 0, i32* %7, align 4
  br label %404

68:                                               ; preds = %53
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @same_string(i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %75 = icmp ne %struct.SGFTree_t* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8*, i8** %24, align 8
  %78 = load i32, i32* %25, align 4
  %79 = load i32, i32* %26, align 4
  call void @sgf_trace2(i8* %77, i32 %78, i32 %79, i32 0, i32 5, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %76, %73
  store i32 5, i32* %7, align 4
  br label %404

81:                                               ; preds = %68
  %82 = load i32, i32* @nodes_connect, align 4
  %83 = load i32, i32* @max_nodes_connect, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %87 = icmp ne %struct.SGFTree_t* %86, null
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i8*, i8** %24, align 8
  %90 = load i32, i32* %25, align 4
  %91 = load i32, i32* %26, align 4
  call void @sgf_trace2(i8* %89, i32 %90, i32 %91, i32 0, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %85
  store i32 0, i32* %7, align 4
  br label %404

93:                                               ; preds = %81
  %94 = load i32, i32* @stackp, align 4
  %95 = load i32, i32* @max_connect_depth2, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %99 = icmp ne %struct.SGFTree_t* %98, null
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i8*, i8** %24, align 8
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* %26, align 4
  call void @sgf_trace2(i8* %101, i32 %102, i32 %103, i32 0, i32 0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %100, %97
  store i32 0, i32* %7, align 4
  br label %404

105:                                              ; preds = %93
  %106 = load i32, i32* @stackp, align 4
  %107 = load i32, i32* @depth, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %164

109:                                              ; preds = %105
  %110 = load i32, i32* @hashflags, align 4
  %111 = and i32 %110, 2048
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %164

113:                                              ; preds = %109
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %164, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @get_read_result2(i32 5, i32 %117, i32 %118, i32* %8, i32* %9, %struct.read_result_t** %23)
  store i32 %119, i32* %22, align 4
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %163

122:                                              ; preds = %116
  %123 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %124 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = lshr i32 %125, 24
  %127 = and i32 %126, 15
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %122
  %130 = load i32*, i32** %10, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %134 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = lshr i32 %135, 10
  %137 = and i32 %136, 1023
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %129
  br label %140

140:                                              ; preds = %139, %122
  %141 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %142 = icmp ne %struct.SGFTree_t* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load i8*, i8** %24, align 8
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %26, align 4
  %147 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %148 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = lshr i32 %149, 10
  %151 = and i32 %150, 1023
  %152 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %153 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = lshr i32 %154, 24
  %156 = and i32 %155, 15
  call void @sgf_trace2(i8* %144, i32 %145, i32 %146, i32 %151, i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %157

157:                                              ; preds = %143, %140
  %158 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %159 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = lshr i32 %160, 24
  %162 = and i32 %161, 15
  store i32 %162, i32* %7, align 4
  br label %404

163:                                              ; preds = %116
  br label %164

164:                                              ; preds = %163, %113, %109, %105
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* %9, align 4
  %167 = call i32 @trivial_connection(i32 %165, i32 %166, i32* %19)
  %168 = icmp eq i32 %167, 5
  br i1 %168, label %169, label %202

169:                                              ; preds = %164
  %170 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %171 = icmp ne %struct.SGFTree_t* %170, null
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i8*, i8** %24, align 8
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %26, align 4
  %176 = load i32, i32* %19, align 4
  call void @sgf_trace2(i8* %173, i32 %174, i32 %175, i32 %176, i32 5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %177

177:                                              ; preds = %172, %169
  br label %178

178:                                              ; preds = %177
  %179 = load i32*, i32** %10, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* %19, align 4
  %183 = load i32*, i32** %10, align 8
  store i32 %182, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %178
  %185 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %186 = icmp ne %struct.read_result_t* %185, null
  br i1 %186, label %187, label %200

187:                                              ; preds = %184
  %188 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %189 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = and i32 %190, 1023
  %192 = or i32 %191, 536870912
  %193 = or i32 %192, 83886080
  %194 = load i32, i32* %19, align 4
  %195 = and i32 %194, 1023
  %196 = shl i32 %195, 10
  %197 = or i32 %193, %196
  %198 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %199 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  br label %200

200:                                              ; preds = %187, %184
  store i32 5, i32* %7, align 4
  br label %404

201:                                              ; No predecessors!
  br label %202

202:                                              ; preds = %201, %164
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %14, align 4
  %206 = getelementptr inbounds [362 x i32], [362 x i32]* %15, i64 0, i64 0
  %207 = call i32 @find_connection_moves(i32 %203, i32 %204, i32 %205, i32* %206, i32* %17)
  store i32 %207, i32* %16, align 4
  store i32 0, i32* %18, align 4
  br label %208

208:                                              ; preds = %304, %202
  %209 = load i32, i32* %18, align 4
  %210 = load i32, i32* %16, align 4
  %211 = icmp slt i32 %209, %210
  br i1 %211, label %212, label %307

212:                                              ; preds = %208
  %213 = load i32, i32* %18, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [362 x i32], [362 x i32]* %15, i64 0, i64 %214
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %19, align 4
  %217 = load i32, i32* %19, align 4
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* %8, align 4
  %220 = load i32, i32* %11, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @stackp, align 4
  %223 = load i32, i32* @ko_depth, align 4
  %224 = icmp sle i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %212
  %226 = load i32, i32* %21, align 4
  %227 = icmp eq i32 %226, 0
  br label %228

228:                                              ; preds = %225, %212
  %229 = phi i1 [ false, %212 ], [ %227, %225 ]
  %230 = zext i1 %229 to i32
  %231 = call i32 @komaster_trymove(i32 %217, i32 %218, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %219, i32 %220, i32 %221, i32* %27, i32* %28, i32* %29, i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %303

233:                                              ; preds = %228
  %234 = load i32, i32* %29, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %291, label %236

236:                                              ; preds = %233
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %9, align 4
  %239 = load i32, i32* %27, align 4
  %240 = load i32, i32* %28, align 4
  %241 = load i32, i32* %13, align 4
  %242 = call i32 @recursive_disconnect2(i32 %237, i32 %238, i32* null, i32 %239, i32 %240, i32 %241)
  store i32 %242, i32* %30, align 4
  call void @popgo()
  %243 = load i32, i32* %30, align 4
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %278

245:                                              ; preds = %236
  %246 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %247 = icmp ne %struct.SGFTree_t* %246, null
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load i8*, i8** %24, align 8
  %250 = load i32, i32* %25, align 4
  %251 = load i32, i32* %26, align 4
  %252 = load i32, i32* %19, align 4
  call void @sgf_trace2(i8* %249, i32 %250, i32 %251, i32 %252, i32 5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %253

253:                                              ; preds = %248, %245
  br label %254

254:                                              ; preds = %253
  %255 = load i32*, i32** %10, align 8
  %256 = icmp ne i32* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i32, i32* %19, align 4
  %259 = load i32*, i32** %10, align 8
  store i32 %258, i32* %259, align 4
  br label %260

260:                                              ; preds = %257, %254
  %261 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %262 = icmp ne %struct.read_result_t* %261, null
  br i1 %262, label %263, label %276

263:                                              ; preds = %260
  %264 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %265 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, 1023
  %268 = or i32 %267, 536870912
  %269 = or i32 %268, 83886080
  %270 = load i32, i32* %19, align 4
  %271 = and i32 %270, 1023
  %272 = shl i32 %271, 10
  %273 = or i32 %269, %272
  %274 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %275 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  br label %276

276:                                              ; preds = %263, %260
  store i32 5, i32* %7, align 4
  br label %404

277:                                              ; No predecessors!
  br label %278

278:                                              ; preds = %277, %236
  %279 = load i32, i32* %30, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %290

281:                                              ; preds = %278
  %282 = load i32, i32* %30, align 4
  %283 = sub nsw i32 5, %282
  %284 = load i32, i32* %21, align 4
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load i32, i32* %19, align 4
  store i32 %287, i32* %20, align 4
  %288 = load i32, i32* %30, align 4
  %289 = sub nsw i32 5, %288
  store i32 %289, i32* %21, align 4
  br label %290

290:                                              ; preds = %286, %281, %278
  br label %302

291:                                              ; preds = %233
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* %9, align 4
  %294 = load i32, i32* %27, align 4
  %295 = load i32, i32* %28, align 4
  %296 = load i32, i32* %13, align 4
  %297 = call i32 @recursive_disconnect2(i32 %292, i32 %293, i32* null, i32 %294, i32 %295, i32 %296)
  %298 = icmp ne i32 %297, 5
  br i1 %298, label %299, label %301

299:                                              ; preds = %291
  %300 = load i32, i32* %19, align 4
  store i32 %300, i32* %20, align 4
  store i32 1, i32* %21, align 4
  br label %301

301:                                              ; preds = %299, %291
  call void @popgo()
  br label %302

302:                                              ; preds = %301, %290
  br label %303

303:                                              ; preds = %302, %228
  br label %304

304:                                              ; preds = %303
  %305 = load i32, i32* %18, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %18, align 4
  br label %208, !llvm.loop !4

307:                                              ; preds = %208
  %308 = load i32, i32* %16, align 4
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %340

310:                                              ; preds = %307
  %311 = load i32, i32* %17, align 4
  %312 = icmp slt i32 %311, 1000
  br i1 %312, label %313, label %340

313:                                              ; preds = %310
  %314 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %315 = icmp ne %struct.SGFTree_t* %314, null
  br i1 %315, label %316, label %320

316:                                              ; preds = %313
  %317 = load i8*, i8** %24, align 8
  %318 = load i32, i32* %25, align 4
  %319 = load i32, i32* %26, align 4
  call void @sgf_trace2(i8* %317, i32 %318, i32 %319, i32 0, i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %320

320:                                              ; preds = %316, %313
  br label %321

321:                                              ; preds = %320
  %322 = load i32*, i32** %10, align 8
  %323 = icmp ne i32* %322, null
  br i1 %323, label %324, label %326

324:                                              ; preds = %321
  %325 = load i32*, i32** %10, align 8
  store i32 0, i32* %325, align 4
  br label %326

326:                                              ; preds = %324, %321
  %327 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %328 = icmp ne %struct.read_result_t* %327, null
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %331 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = and i32 %332, 1023
  %334 = or i32 %333, 536870912
  %335 = or i32 %334, 83886080
  %336 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %337 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %336, i32 0, i32 1
  store i32 %335, i32* %337, align 4
  br label %338

338:                                              ; preds = %329, %326
  store i32 5, i32* %7, align 4
  br label %404

339:                                              ; No predecessors!
  br label %340

340:                                              ; preds = %339, %310, %307
  %341 = load i32, i32* %21, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %384

343:                                              ; preds = %340
  %344 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %345 = icmp ne %struct.SGFTree_t* %344, null
  br i1 %345, label %346, label %352

346:                                              ; preds = %343
  %347 = load i8*, i8** %24, align 8
  %348 = load i32, i32* %25, align 4
  %349 = load i32, i32* %26, align 4
  %350 = load i32, i32* %20, align 4
  %351 = load i32, i32* %21, align 4
  call void @sgf_trace2(i8* %347, i32 %348, i32 %349, i32 %350, i32 %351, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %352

352:                                              ; preds = %346, %343
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %21, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %353
  %357 = load i32*, i32** %10, align 8
  %358 = icmp ne i32* %357, null
  br i1 %358, label %359, label %362

359:                                              ; preds = %356
  %360 = load i32, i32* %20, align 4
  %361 = load i32*, i32** %10, align 8
  store i32 %360, i32* %361, align 4
  br label %362

362:                                              ; preds = %359, %356, %353
  %363 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %364 = icmp ne %struct.read_result_t* %363, null
  br i1 %364, label %365, label %381

365:                                              ; preds = %362
  %366 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %367 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = and i32 %368, 1023
  %370 = or i32 %369, 536870912
  %371 = load i32, i32* %21, align 4
  %372 = and i32 %371, 15
  %373 = shl i32 %372, 24
  %374 = or i32 %370, %373
  %375 = load i32, i32* %20, align 4
  %376 = and i32 %375, 1023
  %377 = shl i32 %376, 10
  %378 = or i32 %374, %377
  %379 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %380 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %379, i32 0, i32 1
  store i32 %378, i32* %380, align 4
  br label %381

381:                                              ; preds = %365, %362
  %382 = load i32, i32* %21, align 4
  store i32 %382, i32* %7, align 4
  br label %404

383:                                              ; No predecessors!
  br label %384

384:                                              ; preds = %383, %340
  %385 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %386 = icmp ne %struct.SGFTree_t* %385, null
  br i1 %386, label %387, label %391

387:                                              ; preds = %384
  %388 = load i8*, i8** %24, align 8
  %389 = load i32, i32* %25, align 4
  %390 = load i32, i32* %26, align 4
  call void @sgf_trace2(i8* %388, i32 %389, i32 %390, i32 0, i32 0, i8* null)
  br label %391

391:                                              ; preds = %387, %384
  br label %392

392:                                              ; preds = %391
  %393 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %394 = icmp ne %struct.read_result_t* %393, null
  br i1 %394, label %395, label %403

395:                                              ; preds = %392
  %396 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %397 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = and i32 %398, 1023
  %400 = or i32 %399, 536870912
  %401 = load %struct.read_result_t*, %struct.read_result_t** %23, align 8
  %402 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %401, i32 0, i32 1
  store i32 %400, i32* %402, align 4
  br label %403

403:                                              ; preds = %395, %392
  store i32 0, i32* %7, align 4
  br label %404

404:                                              ; preds = %67, %80, %92, %104, %157, %200, %276, %338, %381, %403
  %405 = load i32, i32* %7, align 4
  ret i32 %405
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @disconnect(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32* %7, i32** %6, align 8
  br label %13

13:                                               ; preds = %12, %3
  store i32 0, i32* @nodes_connect, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @verbose, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @verbose, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @verbose, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @verbose, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @recursive_disconnect2(i32 %22, i32 %23, i32* %24, i32 0, i32 0, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* @verbose, align 4
  %27 = load i32, i32* %8, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recursive_disconnect2(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [362 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.read_result_t*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = sub nsw i32 3, %37
  store i32 %38, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store %struct.read_result_t* null, %struct.read_result_t** %24, align 8
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0), i8** %25, align 8
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %26, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %27, align 4
  %41 = load i32, i32* @nodes_connect, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @nodes_connect, align 4
  %43 = load i32, i32* @global_connection_node_counter, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @global_connection_node_counter, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %6
  %48 = load i32*, i32** %10, align 8
  store i32 0, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %6
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %56, %49
  %64 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %65 = icmp ne %struct.SGFTree_t* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i8*, i8** %25, align 8
  %68 = load i32, i32* %26, align 4
  %69 = load i32, i32* %27, align 4
  call void @sgf_trace2(i8* %67, i32 %68, i32 %69, i32 0, i32 5, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %66, %63
  store i32 5, i32* %7, align 4
  br label %450

71:                                               ; preds = %56
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @same_string(i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %78 = icmp ne %struct.SGFTree_t* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i8*, i8** %25, align 8
  %81 = load i32, i32* %26, align 4
  %82 = load i32, i32* %27, align 4
  call void @sgf_trace2(i8* %80, i32 %81, i32 %82, i32 0, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %79, %76
  store i32 0, i32* %7, align 4
  br label %450

84:                                               ; preds = %71
  %85 = load i32, i32* @nodes_connect, align 4
  %86 = load i32, i32* @max_nodes_connect, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %90 = icmp ne %struct.SGFTree_t* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i8*, i8** %25, align 8
  %93 = load i32, i32* %26, align 4
  %94 = load i32, i32* %27, align 4
  call void @sgf_trace2(i8* %92, i32 %93, i32 %94, i32 0, i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %95

95:                                               ; preds = %91, %88
  store i32 5, i32* %7, align 4
  br label %450

96:                                               ; preds = %84
  %97 = load i32, i32* @stackp, align 4
  %98 = load i32, i32* @max_connect_depth2, align 4
  %99 = icmp sgt i32 %97, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %102 = icmp ne %struct.SGFTree_t* %101, null
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i8*, i8** %25, align 8
  %105 = load i32, i32* %26, align 4
  %106 = load i32, i32* %27, align 4
  call void @sgf_trace2(i8* %104, i32 %105, i32 %106, i32 0, i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %107

107:                                              ; preds = %103, %100
  store i32 5, i32* %7, align 4
  br label %450

108:                                              ; preds = %96
  %109 = load i32, i32* @stackp, align 4
  %110 = load i32, i32* @depth, align 4
  %111 = icmp sle i32 %109, %110
  br i1 %111, label %112, label %164

112:                                              ; preds = %108
  %113 = load i32, i32* @hashflags, align 4
  %114 = and i32 %113, 4096
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %164

116:                                              ; preds = %112
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @get_read_result2(i32 6, i32 %117, i32 %118, i32* %8, i32* %9, %struct.read_result_t** %24)
  store i32 %119, i32* %23, align 4
  %120 = load i32, i32* %23, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %163

122:                                              ; preds = %116
  %123 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %124 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = lshr i32 %125, 24
  %127 = and i32 %126, 15
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %122
  %130 = load i32*, i32** %10, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %134 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = lshr i32 %135, 10
  %137 = and i32 %136, 1023
  %138 = load i32*, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %132, %129
  br label %140

140:                                              ; preds = %139, %122
  %141 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %142 = icmp ne %struct.SGFTree_t* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %140
  %144 = load i8*, i8** %25, align 8
  %145 = load i32, i32* %26, align 4
  %146 = load i32, i32* %27, align 4
  %147 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %148 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = lshr i32 %149, 10
  %151 = and i32 %150, 1023
  %152 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %153 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = lshr i32 %154, 24
  %156 = and i32 %155, 15
  call void @sgf_trace2(i8* %144, i32 %145, i32 %146, i32 %151, i32 %156, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  br label %157

157:                                              ; preds = %143, %140
  %158 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %159 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = lshr i32 %160, 24
  %162 = and i32 %161, 15
  store i32 %162, i32* %7, align 4
  br label %450

163:                                              ; preds = %116
  br label %164

164:                                              ; preds = %163, %112, %108
  %165 = load i32, i32* %8, align 4
  %166 = call i32 @ladder_capture(i32 %165, i32* %20)
  %167 = icmp eq i32 %166, 5
  br i1 %167, label %168, label %201

168:                                              ; preds = %164
  %169 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %170 = icmp ne %struct.SGFTree_t* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i8*, i8** %25, align 8
  %173 = load i32, i32* %26, align 4
  %174 = load i32, i32* %27, align 4
  %175 = load i32, i32* %20, align 4
  call void @sgf_trace2(i8* %172, i32 %173, i32 %174, i32 %175, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i64 0, i64 0))
  br label %176

176:                                              ; preds = %171, %168
  br label %177

177:                                              ; preds = %176
  %178 = load i32*, i32** %10, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load i32, i32* %20, align 4
  %182 = load i32*, i32** %10, align 8
  store i32 %181, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %177
  %184 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %185 = icmp ne %struct.read_result_t* %184, null
  br i1 %185, label %186, label %199

186:                                              ; preds = %183
  %187 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %188 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = and i32 %189, 1023
  %191 = or i32 %190, 536870912
  %192 = or i32 %191, 83886080
  %193 = load i32, i32* %20, align 4
  %194 = and i32 %193, 1023
  %195 = shl i32 %194, 10
  %196 = or i32 %192, %195
  %197 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %198 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  br label %199

199:                                              ; preds = %186, %183
  store i32 5, i32* %7, align 4
  br label %450

200:                                              ; No predecessors!
  br label %201

201:                                              ; preds = %200, %164
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @ladder_capture(i32 %202, i32* %20)
  %204 = icmp eq i32 %203, 5
  br i1 %204, label %205, label %238

205:                                              ; preds = %201
  %206 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %207 = icmp ne %struct.SGFTree_t* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = load i8*, i8** %25, align 8
  %210 = load i32, i32* %26, align 4
  %211 = load i32, i32* %27, align 4
  %212 = load i32, i32* %20, align 4
  call void @sgf_trace2(i8* %209, i32 %210, i32 %211, i32 %212, i32 5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0))
  br label %213

213:                                              ; preds = %208, %205
  br label %214

214:                                              ; preds = %213
  %215 = load i32*, i32** %10, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %20, align 4
  %219 = load i32*, i32** %10, align 8
  store i32 %218, i32* %219, align 4
  br label %220

220:                                              ; preds = %217, %214
  %221 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %222 = icmp ne %struct.read_result_t* %221, null
  br i1 %222, label %223, label %236

223:                                              ; preds = %220
  %224 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %225 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, 1023
  %228 = or i32 %227, 536870912
  %229 = or i32 %228, 83886080
  %230 = load i32, i32* %20, align 4
  %231 = and i32 %230, 1023
  %232 = shl i32 %231, 10
  %233 = or i32 %229, %232
  %234 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %235 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %223, %220
  store i32 5, i32* %7, align 4
  br label %450

237:                                              ; No predecessors!
  br label %238

238:                                              ; preds = %237, %201
  %239 = load i32, i32* %8, align 4
  %240 = load i32, i32* %9, align 4
  %241 = load i32, i32* %15, align 4
  %242 = getelementptr inbounds [362 x i32], [362 x i32]* %16, i64 0, i64 0
  %243 = call i32 @find_connection_moves(i32 %239, i32 %240, i32 %241, i32* %242, i32* %18)
  store i32 %243, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %244

244:                                              ; preds = %340, %238
  %245 = load i32, i32* %19, align 4
  %246 = load i32, i32* %17, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %343

248:                                              ; preds = %244
  %249 = load i32, i32* %19, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [362 x i32], [362 x i32]* %16, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  store i32 %252, i32* %20, align 4
  %253 = load i32, i32* %20, align 4
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* %12, align 4
  %258 = load i32, i32* @stackp, align 4
  %259 = load i32, i32* @ko_depth, align 4
  %260 = icmp sle i32 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %248
  %262 = load i32, i32* %22, align 4
  %263 = icmp eq i32 %262, 0
  br label %264

264:                                              ; preds = %261, %248
  %265 = phi i1 [ false, %248 ], [ %263, %261 ]
  %266 = zext i1 %265 to i32
  %267 = call i32 @komaster_trymove(i32 %253, i32 %254, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.48, i64 0, i64 0), i32 %255, i32 %256, i32 %257, i32* %28, i32* %29, i32* %30, i32 %266)
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %339

269:                                              ; preds = %264
  %270 = load i32, i32* %30, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %327, label %272

272:                                              ; preds = %269
  %273 = load i32, i32* %8, align 4
  %274 = load i32, i32* %9, align 4
  %275 = load i32, i32* %28, align 4
  %276 = load i32, i32* %29, align 4
  %277 = load i32, i32* %13, align 4
  %278 = call i32 @recursive_connect2(i32 %273, i32 %274, i32* null, i32 %275, i32 %276, i32 %277)
  store i32 %278, i32* %31, align 4
  call void @popgo()
  %279 = load i32, i32* %31, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %314

281:                                              ; preds = %272
  %282 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %283 = icmp ne %struct.SGFTree_t* %282, null
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = load i8*, i8** %25, align 8
  %286 = load i32, i32* %26, align 4
  %287 = load i32, i32* %27, align 4
  %288 = load i32, i32* %20, align 4
  call void @sgf_trace2(i8* %285, i32 %286, i32 %287, i32 %288, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.51, i64 0, i64 0))
  br label %289

289:                                              ; preds = %284, %281
  br label %290

290:                                              ; preds = %289
  %291 = load i32*, i32** %10, align 8
  %292 = icmp ne i32* %291, null
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32, i32* %20, align 4
  %295 = load i32*, i32** %10, align 8
  store i32 %294, i32* %295, align 4
  br label %296

296:                                              ; preds = %293, %290
  %297 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %298 = icmp ne %struct.read_result_t* %297, null
  br i1 %298, label %299, label %312

299:                                              ; preds = %296
  %300 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %301 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 1023
  %304 = or i32 %303, 536870912
  %305 = or i32 %304, 83886080
  %306 = load i32, i32* %20, align 4
  %307 = and i32 %306, 1023
  %308 = shl i32 %307, 10
  %309 = or i32 %305, %308
  %310 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %311 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %310, i32 0, i32 1
  store i32 %309, i32* %311, align 4
  br label %312

312:                                              ; preds = %299, %296
  store i32 5, i32* %7, align 4
  br label %450

313:                                              ; No predecessors!
  br label %314

314:                                              ; preds = %313, %272
  %315 = load i32, i32* %31, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %314
  %318 = load i32, i32* %31, align 4
  %319 = sub nsw i32 5, %318
  %320 = load i32, i32* %22, align 4
  %321 = icmp sgt i32 %319, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %317
  %323 = load i32, i32* %20, align 4
  store i32 %323, i32* %21, align 4
  %324 = load i32, i32* %31, align 4
  %325 = sub nsw i32 5, %324
  store i32 %325, i32* %22, align 4
  br label %326

326:                                              ; preds = %322, %317, %314
  br label %338

327:                                              ; preds = %269
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* %9, align 4
  %330 = load i32, i32* %28, align 4
  %331 = load i32, i32* %29, align 4
  %332 = load i32, i32* %13, align 4
  %333 = call i32 @recursive_connect2(i32 %328, i32 %329, i32* null, i32 %330, i32 %331, i32 %332)
  %334 = icmp ne i32 %333, 5
  br i1 %334, label %335, label %337

335:                                              ; preds = %327
  %336 = load i32, i32* %20, align 4
  store i32 %336, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %337

337:                                              ; preds = %335, %327
  call void @popgo()
  br label %338

338:                                              ; preds = %337, %326
  br label %339

339:                                              ; preds = %338, %264
  br label %340

340:                                              ; preds = %339
  %341 = load i32, i32* %19, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %19, align 4
  br label %244, !llvm.loop !6

343:                                              ; preds = %244
  %344 = load i32, i32* %17, align 4
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %386

346:                                              ; preds = %343
  %347 = load i32, i32* %18, align 4
  %348 = icmp sge i32 %347, 1000
  br i1 %348, label %349, label %386

349:                                              ; preds = %346
  %350 = load i32, i32* %13, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %359, label %352

352:                                              ; preds = %349
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* %9, align 4
  %355 = load i32, i32* %11, align 4
  %356 = load i32, i32* %12, align 4
  %357 = call i32 @recursive_connect2(i32 %353, i32 %354, i32* null, i32 %355, i32 %356, i32 1)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %386, label %359

359:                                              ; preds = %352, %349
  %360 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %361 = icmp ne %struct.SGFTree_t* %360, null
  br i1 %361, label %362, label %366

362:                                              ; preds = %359
  %363 = load i8*, i8** %25, align 8
  %364 = load i32, i32* %26, align 4
  %365 = load i32, i32* %27, align 4
  call void @sgf_trace2(i8* %363, i32 %364, i32 %365, i32 0, i32 5, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i64 0, i64 0))
  br label %366

366:                                              ; preds = %362, %359
  br label %367

367:                                              ; preds = %366
  %368 = load i32*, i32** %10, align 8
  %369 = icmp ne i32* %368, null
  br i1 %369, label %370, label %372

370:                                              ; preds = %367
  %371 = load i32*, i32** %10, align 8
  store i32 0, i32* %371, align 4
  br label %372

372:                                              ; preds = %370, %367
  %373 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %374 = icmp ne %struct.read_result_t* %373, null
  br i1 %374, label %375, label %384

375:                                              ; preds = %372
  %376 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %377 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = and i32 %378, 1023
  %380 = or i32 %379, 536870912
  %381 = or i32 %380, 83886080
  %382 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %383 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %382, i32 0, i32 1
  store i32 %381, i32* %383, align 4
  br label %384

384:                                              ; preds = %375, %372
  store i32 5, i32* %7, align 4
  br label %450

385:                                              ; No predecessors!
  br label %386

386:                                              ; preds = %385, %352, %346, %343
  %387 = load i32, i32* %22, align 4
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %430

389:                                              ; preds = %386
  %390 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %391 = icmp ne %struct.SGFTree_t* %390, null
  br i1 %391, label %392, label %398

392:                                              ; preds = %389
  %393 = load i8*, i8** %25, align 8
  %394 = load i32, i32* %26, align 4
  %395 = load i32, i32* %27, align 4
  %396 = load i32, i32* %21, align 4
  %397 = load i32, i32* %22, align 4
  call void @sgf_trace2(i8* %393, i32 %394, i32 %395, i32 %396, i32 %397, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %398

398:                                              ; preds = %392, %389
  br label %399

399:                                              ; preds = %398
  %400 = load i32, i32* %22, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %399
  %403 = load i32*, i32** %10, align 8
  %404 = icmp ne i32* %403, null
  br i1 %404, label %405, label %408

405:                                              ; preds = %402
  %406 = load i32, i32* %21, align 4
  %407 = load i32*, i32** %10, align 8
  store i32 %406, i32* %407, align 4
  br label %408

408:                                              ; preds = %405, %402, %399
  %409 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %410 = icmp ne %struct.read_result_t* %409, null
  br i1 %410, label %411, label %427

411:                                              ; preds = %408
  %412 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %413 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %412, i32 0, i32 1
  %414 = load i32, i32* %413, align 4
  %415 = and i32 %414, 1023
  %416 = or i32 %415, 536870912
  %417 = load i32, i32* %22, align 4
  %418 = and i32 %417, 15
  %419 = shl i32 %418, 24
  %420 = or i32 %416, %419
  %421 = load i32, i32* %21, align 4
  %422 = and i32 %421, 1023
  %423 = shl i32 %422, 10
  %424 = or i32 %420, %423
  %425 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %426 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %425, i32 0, i32 1
  store i32 %424, i32* %426, align 4
  br label %427

427:                                              ; preds = %411, %408
  %428 = load i32, i32* %22, align 4
  store i32 %428, i32* %7, align 4
  br label %450

429:                                              ; No predecessors!
  br label %430

430:                                              ; preds = %429, %386
  %431 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %432 = icmp ne %struct.SGFTree_t* %431, null
  br i1 %432, label %433, label %437

433:                                              ; preds = %430
  %434 = load i8*, i8** %25, align 8
  %435 = load i32, i32* %26, align 4
  %436 = load i32, i32* %27, align 4
  call void @sgf_trace2(i8* %434, i32 %435, i32 %436, i32 0, i32 0, i8* null)
  br label %437

437:                                              ; preds = %433, %430
  br label %438

438:                                              ; preds = %437
  %439 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %440 = icmp ne %struct.read_result_t* %439, null
  br i1 %440, label %441, label %449

441:                                              ; preds = %438
  %442 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %443 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %442, i32 0, i32 1
  %444 = load i32, i32* %443, align 4
  %445 = and i32 %444, 1023
  %446 = or i32 %445, 536870912
  %447 = load %struct.read_result_t*, %struct.read_result_t** %24, align 8
  %448 = getelementptr inbounds %struct.read_result_t, %struct.read_result_t* %447, i32 0, i32 1
  store i32 %446, i32* %448, align 4
  br label %449

449:                                              ; preds = %441, %438
  store i32 0, i32* %7, align 4
  br label %450

450:                                              ; preds = %70, %83, %95, %107, %157, %199, %236, %312, %384, %427, %449
  %451 = load i32, i32* %7, align 4
  ret i32 %451
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_connection_node_counter() #0 {
  store i32 0, i32* @global_connection_node_counter, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_connection_node_counter() #0 {
  %1 = load i32, i32* @global_connection_node_counter, align 4
  ret i32 %1
}

declare dso_local void @sgf_trace2(i8*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @same_string(i32, i32) #1

declare dso_local i32 @get_read_result2(i32, i32, i32, i32*, i32*, %struct.read_result_t**) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trivial_connection(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.SGFTree_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [160 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %14, %struct.SGFTree_t** %8, align 8
  %15 = load i32, i32* @count_variations, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @have_common_lib(i32 %16, i32 %17, i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 5, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 0
  %25 = call i32 @chainlinks(i32 %23, i32* %24)
  store i32 %25, i32* %10, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  store i32 0, i32* %12, align 4
  br label %26

26:                                               ; preds = %48, %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @adjacent_strings(i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [160 x i32], [160 x i32]* %11, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @attack(i32 %42, i32* %43)
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 5, i32* %13, align 4
  br label %51

47:                                               ; preds = %38, %30
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %26, !llvm.loop !7

51:                                               ; preds = %46, %26
  %52 = load %struct.SGFTree_t*, %struct.SGFTree_t** %8, align 8
  store %struct.SGFTree_t* %52, %struct.SGFTree_t** @sgf_dumptree, align 8
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* @count_variations, align 4
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %21
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_connection_moves(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.connection_data, align 4
  %16 = alloca %struct.connection_data, align 4
  %17 = alloca [362 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca %struct.SGFTree_t*, align 8
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
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca [500 x i8], align 16
  %54 = alloca i8*, align 8
  %55 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 3, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %67 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %67, %struct.SGFTree_t** %19, align 8
  %68 = load i32, i32* @count_variations, align 4
  store i32 %68, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  call void @compute_connection_distances(i32 %69, i32 %70, %struct.connection_data* %15)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  call void @compute_connection_distances(i32 %71, i32 %72, %struct.connection_data* %16)
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @findlib(i32 %73, i32 1, i32* %27)
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %103

76:                                               ; preds = %5
  %77 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %78 = load i32, i32* %27, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [400 x i32], [400 x i32]* %77, i64 0, i64 %79
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 2
  %82 = load i32, i32* %27, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [400 x i32], [400 x i32]* %81, i64 0, i64 %83
  store i32 0, i32* %84, align 4
  %85 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x i32], [400 x i32]* %85, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %91 = load i32, i32* %27, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [400 x i32], [400 x i32]* %90, i64 0, i64 %92
  store i32 %89, i32* %93, align 4
  %94 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 2
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [400 x i32], [400 x i32]* %94, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 2
  %100 = load i32, i32* %27, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [400 x i32], [400 x i32]* %99, i64 0, i64 %101
  store i32 %98, i32* %102, align 4
  br label %103

103:                                              ; preds = %76, %5
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @findlib(i32 %104, i32 1, i32* %27)
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %121

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %109 = load i32, i32* %27, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [400 x i32], [400 x i32]* %108, i64 0, i64 %110
  store i32 0, i32* %111, align 4
  %112 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [400 x i32], [400 x i32]* %112, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %118 = load i32, i32* %27, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [400 x i32], [400 x i32]* %117, i64 0, i64 %119
  store i32 %116, i32* %120, align 4
  br label %121

121:                                              ; preds = %107, %103
  %122 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [400 x i32], [400 x i32]* %122, i64 0, i64 %124
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %25, align 4
  %127 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [400 x i32], [400 x i32]* %127, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %26, align 4
  %132 = load i32, i32* %25, align 4
  %133 = load i32, i32* %26, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %121
  %136 = load i32, i32* %25, align 4
  br label %139

137:                                              ; preds = %121
  %138 = load i32, i32* %26, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  %141 = load i32*, i32** %10, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* @verbose, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load i32, i32* %20, align 4
  %146 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %145)
  call void @dump_stack()
  call void @showboard(i32 0)
  call void @print_connection_distances(%struct.connection_data* %15)
  call void @print_connection_distances(%struct.connection_data* %16)
  br label %147

147:                                              ; preds = %144, %139
  store i32 0, i32* %14, align 4
  br label %148

148:                                              ; preds = %742, %147
  %149 = load i32, i32* %14, align 4
  %150 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 7
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %153, label %745

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 5
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [400 x i32], [400 x i32]* %154, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  store i32 %158, i32* %31, align 4
  %159 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %160 = load i32, i32* %31, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [400 x i32], [400 x i32]* %159, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %32, align 4
  %164 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 1
  %165 = load i32, i32* %31, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [400 x i32], [400 x i32]* %164, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %33, align 4
  %169 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %170 = load i32, i32* %31, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [400 x i32], [400 x i32]* %169, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %34, align 4
  %174 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 1
  %175 = load i32, i32* %31, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [400 x i32], [400 x i32]* %174, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %35, align 4
  %179 = load i32, i32* %32, align 4
  %180 = load i32, i32* %33, align 4
  %181 = sub nsw i32 %179, %180
  %182 = load i32, i32* %34, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %35, align 4
  %185 = sub nsw i32 %183, %184
  %186 = icmp sgt i32 %185, 2500
  br i1 %186, label %197, label %187

187:                                              ; preds = %153
  %188 = load i32, i32* %32, align 4
  %189 = load i32, i32* %25, align 4
  %190 = add nsw i32 %189, 200
  %191 = icmp sgt i32 %188, %190
  br i1 %191, label %197, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %34, align 4
  %194 = load i32, i32* %26, align 4
  %195 = add nsw i32 %194, 200
  %196 = icmp sgt i32 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %192, %187, %153
  br label %742

198:                                              ; preds = %192
  %199 = load i32, i32* %31, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = zext i8 %202 to i32
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %212, label %205

205:                                              ; preds = %198
  %206 = load i32, i32* %31, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i32
  %211 = icmp eq i32 %210, 2
  br i1 %211, label %212, label %218

212:                                              ; preds = %205, %198
  %213 = load i32, i32* %31, align 4
  %214 = call i32 @find_origin(i32 %213)
  %215 = load i32, i32* %31, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %212
  br label %742

218:                                              ; preds = %212, %205
  %219 = load i32, i32* @verbose, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %228

221:                                              ; preds = %218
  %222 = load i32, i32* %31, align 4
  %223 = load i32, i32* %32, align 4
  %224 = load i32, i32* %33, align 4
  %225 = load i32, i32* %34, align 4
  %226 = load i32, i32* %35, align 4
  %227 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %222, i32 %223, i32 %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %221, %218
  %229 = load i32, i32* %32, align 4
  %230 = load i32, i32* %33, align 4
  %231 = sub nsw i32 %229, %230
  store i32 %231, i32* %36, align 4
  %232 = load i32, i32* %34, align 4
  %233 = load i32, i32* %35, align 4
  %234 = sub nsw i32 %232, %233
  store i32 %234, i32* %37, align 4
  %235 = load i32, i32* %36, align 4
  %236 = load i32, i32* %37, align 4
  %237 = add nsw i32 %235, %236
  store i32 %237, i32* %38, align 4
  %238 = load i32, i32* @verbose, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %228
  %241 = load i32, i32* %38, align 4
  %242 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %241)
  br label %243

243:                                              ; preds = %240, %228
  %244 = load i32, i32* %36, align 4
  %245 = mul nsw i32 3, %244
  %246 = load i32, i32* %37, align 4
  %247 = mul nsw i32 2, %246
  %248 = icmp sgt i32 %245, %247
  br i1 %248, label %249, label %263

249:                                              ; preds = %243
  %250 = load i32, i32* %37, align 4
  %251 = mul nsw i32 3, %250
  %252 = load i32, i32* %36, align 4
  %253 = mul nsw i32 2, %252
  %254 = icmp sgt i32 %251, %253
  br i1 %254, label %255, label %263

255:                                              ; preds = %249
  %256 = load i32, i32* %38, align 4
  %257 = sub nsw i32 %256, 100
  store i32 %257, i32* %38, align 4
  %258 = load i32, i32* @verbose, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0))
  br label %262

262:                                              ; preds = %260, %255
  br label %263

263:                                              ; preds = %262, %249, %243
  %264 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 2
  %265 = load i32, i32* %31, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [400 x i32], [400 x i32]* %264, i64 0, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %288

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 2
  %272 = load i32, i32* %31, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [400 x i32], [400 x i32]* %271, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 2
  %277 = load i32, i32* %31, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [400 x i32], [400 x i32]* %276, i64 0, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %275, %280
  br i1 %281, label %282, label %288

282:                                              ; preds = %270
  %283 = load i32, i32* @verbose, align 4
  %284 = icmp sgt i32 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.14, i64 0, i64 0))
  br label %287

287:                                              ; preds = %285, %282
  br label %742

288:                                              ; preds = %270, %263
  %289 = load i32, i32* %31, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %359

295:                                              ; preds = %288
  %296 = load i32, i32* %31, align 4
  %297 = load i32, i32* %8, align 4
  %298 = call i32 @check_self_atari(i32 %296, i32 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %352

300:                                              ; preds = %295
  br label %301

301:                                              ; preds = %300
  store i32 0, i32* %39, align 4
  br label %302

302:                                              ; preds = %328, %301
  %303 = load i32, i32* %39, align 4
  %304 = load i32, i32* %18, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %331

306:                                              ; preds = %302
  %307 = load i32*, i32** %9, align 8
  %308 = load i32, i32* %39, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* %31, align 4
  %313 = icmp eq i32 %311, %312
  br i1 %313, label %314, label %327

314:                                              ; preds = %306
  %315 = load i32, i32* %39, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* %38, align 4
  %320 = icmp sgt i32 %318, %319
  br i1 %320, label %321, label %326

321:                                              ; preds = %314
  %322 = load i32, i32* %38, align 4
  %323 = load i32, i32* %39, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %324
  store i32 %322, i32* %325, align 4
  br label %326

326:                                              ; preds = %321, %314
  br label %331

327:                                              ; preds = %306
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %39, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %39, align 4
  br label %302, !llvm.loop !8

331:                                              ; preds = %326, %302
  %332 = load i32, i32* %39, align 4
  %333 = load i32, i32* %18, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %350

335:                                              ; preds = %331
  %336 = load i32, i32* %18, align 4
  %337 = icmp slt i32 %336, 362
  br i1 %337, label %338, label %350

338:                                              ; preds = %335
  %339 = load i32, i32* %31, align 4
  %340 = load i32*, i32** %9, align 8
  %341 = load i32, i32* %18, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %340, i64 %342
  store i32 %339, i32* %343, align 4
  %344 = load i32, i32* %38, align 4
  %345 = load i32, i32* %18, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %346
  store i32 %344, i32* %347, align 4
  %348 = load i32, i32* %18, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %18, align 4
  br label %350

350:                                              ; preds = %338, %335, %331
  br label %351

351:                                              ; preds = %350
  br label %358

352:                                              ; preds = %295
  %353 = load i32, i32* @verbose, align 4
  %354 = icmp sgt i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %352
  %356 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0))
  br label %357

357:                                              ; preds = %355, %352
  br label %358

358:                                              ; preds = %357, %351
  br label %741

359:                                              ; preds = %288
  %360 = load i32, i32* %31, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %361
  %363 = load i8, i8* %362, align 1
  %364 = zext i8 %363 to i32
  %365 = load i32, i32* %12, align 4
  %366 = icmp eq i32 %364, %365
  br i1 %366, label %367, label %553

367:                                              ; preds = %359
  %368 = load i32, i32* %31, align 4
  %369 = call i32 @attack_and_defend(i32 %368, i32* %21, i32* %22, i32* %23, i32* %24)
  %370 = load i32, i32* @verbose, align 4
  %371 = icmp sgt i32 %370, 0
  br i1 %371, label %372, label %378

372:                                              ; preds = %367
  %373 = load i32, i32* %21, align 4
  %374 = load i32, i32* %22, align 4
  %375 = load i32, i32* %23, align 4
  %376 = load i32, i32* %24, align 4
  %377 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i32 %373, i32 %374, i32 %375, i32 %376)
  br label %378

378:                                              ; preds = %372, %367
  %379 = load i32, i32* %13, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %381, label %481

381:                                              ; preds = %378
  %382 = load i32, i32* %21, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %481

384:                                              ; preds = %381
  %385 = load i32, i32* %23, align 4
  %386 = icmp eq i32 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %384
  %388 = load i32, i32* %38, align 4
  %389 = add nsw i32 %388, 500
  store i32 %389, i32* %38, align 4
  %390 = load i32, i32* @verbose, align 4
  %391 = icmp sgt i32 %390, 0
  br i1 %391, label %392, label %394

392:                                              ; preds = %387
  %393 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  br label %394

394:                                              ; preds = %392, %387
  br label %420

395:                                              ; preds = %384
  %396 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %397 = load i32, i32* %22, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [400 x i32], [400 x i32]* %396, i64 0, i64 %398
  %400 = load i32, i32* %399, align 4
  %401 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %402 = load i32, i32* %22, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [400 x i32], [400 x i32]* %401, i64 0, i64 %403
  %405 = load i32, i32* %404, align 4
  %406 = add nsw i32 %400, %405
  %407 = load i32, i32* %32, align 4
  %408 = load i32, i32* %34, align 4
  %409 = add nsw i32 %407, %408
  %410 = icmp sgt i32 %406, %409
  br i1 %410, label %411, label %419

411:                                              ; preds = %395
  %412 = load i32, i32* %38, align 4
  %413 = add nsw i32 %412, 500
  store i32 %413, i32* %38, align 4
  %414 = load i32, i32* @verbose, align 4
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %411
  %417 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0))
  br label %418

418:                                              ; preds = %416, %411
  br label %419

419:                                              ; preds = %418, %395
  br label %420

420:                                              ; preds = %419, %394
  br label %421

421:                                              ; preds = %420
  store i32 0, i32* %40, align 4
  br label %422

422:                                              ; preds = %450, %421
  %423 = load i32, i32* %40, align 4
  %424 = load i32, i32* %18, align 4
  %425 = icmp slt i32 %423, %424
  br i1 %425, label %426, label %453

426:                                              ; preds = %422
  %427 = load i32*, i32** %9, align 8
  %428 = load i32, i32* %40, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* %22, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %434, label %449

434:                                              ; preds = %426
  %435 = load i32, i32* %40, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %436
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %38, align 4
  %440 = sub nsw i32 %439, 150
  %441 = icmp sgt i32 %438, %440
  br i1 %441, label %442, label %448

442:                                              ; preds = %434
  %443 = load i32, i32* %38, align 4
  %444 = sub nsw i32 %443, 150
  %445 = load i32, i32* %40, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %446
  store i32 %444, i32* %447, align 4
  br label %448

448:                                              ; preds = %442, %434
  br label %453

449:                                              ; preds = %426
  br label %450

450:                                              ; preds = %449
  %451 = load i32, i32* %40, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %40, align 4
  br label %422, !llvm.loop !9

453:                                              ; preds = %448, %422
  %454 = load i32, i32* %40, align 4
  %455 = load i32, i32* %18, align 4
  %456 = icmp eq i32 %454, %455
  br i1 %456, label %457, label %473

457:                                              ; preds = %453
  %458 = load i32, i32* %18, align 4
  %459 = icmp slt i32 %458, 362
  br i1 %459, label %460, label %473

460:                                              ; preds = %457
  %461 = load i32, i32* %22, align 4
  %462 = load i32*, i32** %9, align 8
  %463 = load i32, i32* %18, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32, i32* %462, i64 %464
  store i32 %461, i32* %465, align 4
  %466 = load i32, i32* %38, align 4
  %467 = sub nsw i32 %466, 150
  %468 = load i32, i32* %18, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %469
  store i32 %467, i32* %470, align 4
  %471 = load i32, i32* %18, align 4
  %472 = add nsw i32 %471, 1
  store i32 %472, i32* %18, align 4
  br label %473

473:                                              ; preds = %460, %457, %453
  br label %474

474:                                              ; preds = %473
  %475 = load i32, i32* @verbose, align 4
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %480

477:                                              ; preds = %474
  %478 = load i32, i32* %22, align 4
  %479 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0), i32 %478)
  br label %480

480:                                              ; preds = %477, %474
  br label %552

481:                                              ; preds = %381, %378
  %482 = load i32, i32* %13, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %551, label %484

484:                                              ; preds = %481
  %485 = load i32, i32* %21, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %551

487:                                              ; preds = %484
  %488 = load i32, i32* %23, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %551

490:                                              ; preds = %487
  br label %491

491:                                              ; preds = %490
  store i32 0, i32* %41, align 4
  br label %492

492:                                              ; preds = %520, %491
  %493 = load i32, i32* %41, align 4
  %494 = load i32, i32* %18, align 4
  %495 = icmp slt i32 %493, %494
  br i1 %495, label %496, label %523

496:                                              ; preds = %492
  %497 = load i32*, i32** %9, align 8
  %498 = load i32, i32* %41, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i32, i32* %497, i64 %499
  %501 = load i32, i32* %500, align 4
  %502 = load i32, i32* %24, align 4
  %503 = icmp eq i32 %501, %502
  br i1 %503, label %504, label %519

504:                                              ; preds = %496
  %505 = load i32, i32* %41, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = load i32, i32* %38, align 4
  %510 = sub nsw i32 %509, 500
  %511 = icmp sgt i32 %508, %510
  br i1 %511, label %512, label %518

512:                                              ; preds = %504
  %513 = load i32, i32* %38, align 4
  %514 = sub nsw i32 %513, 500
  %515 = load i32, i32* %41, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %516
  store i32 %514, i32* %517, align 4
  br label %518

518:                                              ; preds = %512, %504
  br label %523

519:                                              ; preds = %496
  br label %520

520:                                              ; preds = %519
  %521 = load i32, i32* %41, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* %41, align 4
  br label %492, !llvm.loop !10

523:                                              ; preds = %518, %492
  %524 = load i32, i32* %41, align 4
  %525 = load i32, i32* %18, align 4
  %526 = icmp eq i32 %524, %525
  br i1 %526, label %527, label %543

527:                                              ; preds = %523
  %528 = load i32, i32* %18, align 4
  %529 = icmp slt i32 %528, 362
  br i1 %529, label %530, label %543

530:                                              ; preds = %527
  %531 = load i32, i32* %24, align 4
  %532 = load i32*, i32** %9, align 8
  %533 = load i32, i32* %18, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %532, i64 %534
  store i32 %531, i32* %535, align 4
  %536 = load i32, i32* %38, align 4
  %537 = sub nsw i32 %536, 500
  %538 = load i32, i32* %18, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %539
  store i32 %537, i32* %540, align 4
  %541 = load i32, i32* %18, align 4
  %542 = add nsw i32 %541, 1
  store i32 %542, i32* %18, align 4
  br label %543

543:                                              ; preds = %530, %527, %523
  br label %544

544:                                              ; preds = %543
  %545 = load i32, i32* @verbose, align 4
  %546 = icmp sgt i32 %545, 0
  br i1 %546, label %547, label %550

547:                                              ; preds = %544
  %548 = load i32, i32* %24, align 4
  %549 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0), i32 %548)
  br label %550

550:                                              ; preds = %547, %544
  br label %551

551:                                              ; preds = %550, %487, %484, %481
  br label %552

552:                                              ; preds = %551, %480
  br label %740

553:                                              ; preds = %359
  %554 = load i32, i32* %31, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %555
  %557 = load i8, i8* %556, align 1
  %558 = zext i8 %557 to i32
  %559 = load i32, i32* %11, align 4
  %560 = icmp eq i32 %558, %559
  br i1 %560, label %561, label %739

561:                                              ; preds = %553
  store i32 0, i32* %28, align 4
  br label %562

562:                                              ; preds = %735, %561
  %563 = load i32, i32* %28, align 4
  %564 = icmp slt i32 %563, 4
  br i1 %564, label %565, label %738

565:                                              ; preds = %562
  %566 = load i32, i32* %28, align 4
  %567 = and i32 %566, 1
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %575

569:                                              ; preds = %565
  %570 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 3
  %571 = load i32, i32* %31, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [400 x i32], [400 x i32]* %570, i64 0, i64 %572
  %574 = load i32, i32* %573, align 4
  store i32 %574, i32* %42, align 4
  br label %581

575:                                              ; preds = %565
  %576 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 4
  %577 = load i32, i32* %31, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [400 x i32], [400 x i32]* %576, i64 0, i64 %578
  %580 = load i32, i32* %579, align 4
  store i32 %580, i32* %42, align 4
  br label %581

581:                                              ; preds = %575, %569
  %582 = load i32, i32* %28, align 4
  %583 = and i32 %582, 2
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %591

585:                                              ; preds = %581
  %586 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 3
  %587 = load i32, i32* %31, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds [400 x i32], [400 x i32]* %586, i64 0, i64 %588
  %590 = load i32, i32* %589, align 4
  store i32 %590, i32* %43, align 4
  br label %597

591:                                              ; preds = %581
  %592 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 4
  %593 = load i32, i32* %31, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [400 x i32], [400 x i32]* %592, i64 0, i64 %594
  %596 = load i32, i32* %595, align 4
  store i32 %596, i32* %43, align 4
  br label %597

597:                                              ; preds = %591, %585
  %598 = load i32, i32* %42, align 4
  %599 = load i32, i32* %43, align 4
  %600 = load i32, i32* %11, align 4
  %601 = call i32 @common_vulnerability(i32 %598, i32 %599, i32 %600)
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %734

603:                                              ; preds = %597
  %604 = load i32, i32* %42, align 4
  %605 = load i32, i32* %8, align 4
  %606 = call i32 @check_self_atari(i32 %604, i32 %605)
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %608, label %666

608:                                              ; preds = %603
  br label %609

609:                                              ; preds = %608
  store i32 0, i32* %44, align 4
  br label %610

610:                                              ; preds = %636, %609
  %611 = load i32, i32* %44, align 4
  %612 = load i32, i32* %18, align 4
  %613 = icmp slt i32 %611, %612
  br i1 %613, label %614, label %639

614:                                              ; preds = %610
  %615 = load i32*, i32** %9, align 8
  %616 = load i32, i32* %44, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i32, i32* %615, i64 %617
  %619 = load i32, i32* %618, align 4
  %620 = load i32, i32* %42, align 4
  %621 = icmp eq i32 %619, %620
  br i1 %621, label %622, label %635

622:                                              ; preds = %614
  %623 = load i32, i32* %44, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* %38, align 4
  %628 = icmp sgt i32 %626, %627
  br i1 %628, label %629, label %634

629:                                              ; preds = %622
  %630 = load i32, i32* %38, align 4
  %631 = load i32, i32* %44, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %632
  store i32 %630, i32* %633, align 4
  br label %634

634:                                              ; preds = %629, %622
  br label %639

635:                                              ; preds = %614
  br label %636

636:                                              ; preds = %635
  %637 = load i32, i32* %44, align 4
  %638 = add nsw i32 %637, 1
  store i32 %638, i32* %44, align 4
  br label %610, !llvm.loop !11

639:                                              ; preds = %634, %610
  %640 = load i32, i32* %44, align 4
  %641 = load i32, i32* %18, align 4
  %642 = icmp eq i32 %640, %641
  br i1 %642, label %643, label %658

643:                                              ; preds = %639
  %644 = load i32, i32* %18, align 4
  %645 = icmp slt i32 %644, 362
  br i1 %645, label %646, label %658

646:                                              ; preds = %643
  %647 = load i32, i32* %42, align 4
  %648 = load i32*, i32** %9, align 8
  %649 = load i32, i32* %18, align 4
  %650 = sext i32 %649 to i64
  %651 = getelementptr inbounds i32, i32* %648, i64 %650
  store i32 %647, i32* %651, align 4
  %652 = load i32, i32* %38, align 4
  %653 = load i32, i32* %18, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %654
  store i32 %652, i32* %655, align 4
  %656 = load i32, i32* %18, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %18, align 4
  br label %658

658:                                              ; preds = %646, %643, %639
  br label %659

659:                                              ; preds = %658
  %660 = load i32, i32* @verbose, align 4
  %661 = icmp sgt i32 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %659
  %663 = load i32, i32* %42, align 4
  %664 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %663)
  br label %665

665:                                              ; preds = %662, %659
  br label %666

666:                                              ; preds = %665, %603
  %667 = load i32, i32* %43, align 4
  %668 = load i32, i32* %42, align 4
  %669 = icmp ne i32 %667, %668
  br i1 %669, label %670, label %733

670:                                              ; preds = %666
  %671 = load i32, i32* %43, align 4
  %672 = load i32, i32* %8, align 4
  %673 = call i32 @check_self_atari(i32 %671, i32 %672)
  %674 = icmp ne i32 %673, 0
  br i1 %674, label %675, label %733

675:                                              ; preds = %670
  br label %676

676:                                              ; preds = %675
  store i32 0, i32* %45, align 4
  br label %677

677:                                              ; preds = %703, %676
  %678 = load i32, i32* %45, align 4
  %679 = load i32, i32* %18, align 4
  %680 = icmp slt i32 %678, %679
  br i1 %680, label %681, label %706

681:                                              ; preds = %677
  %682 = load i32*, i32** %9, align 8
  %683 = load i32, i32* %45, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i32, i32* %682, i64 %684
  %686 = load i32, i32* %685, align 4
  %687 = load i32, i32* %43, align 4
  %688 = icmp eq i32 %686, %687
  br i1 %688, label %689, label %702

689:                                              ; preds = %681
  %690 = load i32, i32* %45, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = load i32, i32* %38, align 4
  %695 = icmp sgt i32 %693, %694
  br i1 %695, label %696, label %701

696:                                              ; preds = %689
  %697 = load i32, i32* %38, align 4
  %698 = load i32, i32* %45, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %699
  store i32 %697, i32* %700, align 4
  br label %701

701:                                              ; preds = %696, %689
  br label %706

702:                                              ; preds = %681
  br label %703

703:                                              ; preds = %702
  %704 = load i32, i32* %45, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %45, align 4
  br label %677, !llvm.loop !12

706:                                              ; preds = %701, %677
  %707 = load i32, i32* %45, align 4
  %708 = load i32, i32* %18, align 4
  %709 = icmp eq i32 %707, %708
  br i1 %709, label %710, label %725

710:                                              ; preds = %706
  %711 = load i32, i32* %18, align 4
  %712 = icmp slt i32 %711, 362
  br i1 %712, label %713, label %725

713:                                              ; preds = %710
  %714 = load i32, i32* %43, align 4
  %715 = load i32*, i32** %9, align 8
  %716 = load i32, i32* %18, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds i32, i32* %715, i64 %717
  store i32 %714, i32* %718, align 4
  %719 = load i32, i32* %38, align 4
  %720 = load i32, i32* %18, align 4
  %721 = sext i32 %720 to i64
  %722 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %721
  store i32 %719, i32* %722, align 4
  %723 = load i32, i32* %18, align 4
  %724 = add nsw i32 %723, 1
  store i32 %724, i32* %18, align 4
  br label %725

725:                                              ; preds = %713, %710, %706
  br label %726

726:                                              ; preds = %725
  %727 = load i32, i32* @verbose, align 4
  %728 = icmp sgt i32 %727, 0
  br i1 %728, label %729, label %732

729:                                              ; preds = %726
  %730 = load i32, i32* %43, align 4
  %731 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0), i32 %730)
  br label %732

732:                                              ; preds = %729, %726
  br label %733

733:                                              ; preds = %732, %670, %666
  br label %734

734:                                              ; preds = %733, %597
  br label %735

735:                                              ; preds = %734
  %736 = load i32, i32* %28, align 4
  %737 = add nsw i32 %736, 1
  store i32 %737, i32* %28, align 4
  br label %562, !llvm.loop !13

738:                                              ; preds = %562
  br label %739

739:                                              ; preds = %738, %553
  br label %740

740:                                              ; preds = %739, %552
  br label %741

741:                                              ; preds = %740, %358
  br label %742

742:                                              ; preds = %741, %287, %217, %197
  %743 = load i32, i32* %14, align 4
  %744 = add nsw i32 %743, 1
  store i32 %744, i32* %14, align 4
  br label %148, !llvm.loop !14

745:                                              ; preds = %148
  %746 = load %struct.SGFTree_t*, %struct.SGFTree_t** %19, align 8
  store %struct.SGFTree_t* %746, %struct.SGFTree_t** @sgf_dumptree, align 8
  %747 = load i32, i32* %20, align 4
  store i32 %747, i32* @count_variations, align 4
  store i32 0, i32* %14, align 4
  br label %748

748:                                              ; preds = %969, %745
  %749 = load i32, i32* %14, align 4
  %750 = load i32, i32* %18, align 4
  %751 = icmp slt i32 %749, %750
  br i1 %751, label %752, label %972

752:                                              ; preds = %748
  %753 = load i32*, i32** %9, align 8
  %754 = load i32, i32* %14, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i32, i32* %753, i64 %755
  %757 = load i32, i32* %756, align 4
  store i32 %757, i32* %46, align 4
  store i32 0, i32* %47, align 4
  store i32 0, i32* %28, align 4
  br label %758

758:                                              ; preds = %912, %752
  %759 = load i32, i32* %28, align 4
  %760 = icmp slt i32 %759, 4
  br i1 %760, label %761, label %915

761:                                              ; preds = %758
  %762 = load i32, i32* %46, align 4
  %763 = load i32, i32* %28, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %764
  %766 = load i32, i32* %765, align 4
  %767 = add nsw i32 %762, %766
  store i32 %767, i32* %48, align 4
  %768 = load i32, i32* %48, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %769
  %771 = load i8, i8* %770, align 1
  %772 = zext i8 %771 to i32
  %773 = load i32, i32* %12, align 4
  %774 = icmp eq i32 %772, %773
  br i1 %774, label %775, label %885

775:                                              ; preds = %761
  store i32 1, i32* %47, align 4
  %776 = load i32, i32* %14, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %777
  %779 = load i32, i32* %778, align 4
  %780 = sub nsw i32 %779, 150
  store i32 %780, i32* %778, align 4
  %781 = load i32, i32* @verbose, align 4
  %782 = icmp sgt i32 %781, 0
  br i1 %782, label %783, label %786

783:                                              ; preds = %775
  %784 = load i32, i32* %46, align 4
  %785 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.22, i64 0, i64 0), i32 %784)
  br label %786

786:                                              ; preds = %783, %775
  %787 = load i32, i32* %48, align 4
  %788 = call i32 @countlib(i32 %787)
  %789 = icmp sle i32 %788, 2
  br i1 %789, label %790, label %884

790:                                              ; preds = %786
  %791 = load i32, i32* %14, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %792
  %794 = load i32, i32* %793, align 4
  %795 = sub nsw i32 %794, 200
  store i32 %795, i32* %793, align 4
  %796 = load i32, i32* @verbose, align 4
  %797 = icmp sgt i32 %796, 0
  br i1 %797, label %798, label %801

798:                                              ; preds = %790
  %799 = load i32, i32* %46, align 4
  %800 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.23, i64 0, i64 0), i32 %799)
  br label %801

801:                                              ; preds = %798, %790
  %802 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %803 = load i32, i32* %46, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds [400 x i32], [400 x i32]* %802, i64 0, i64 %804
  %806 = load i32, i32* %805, align 4
  %807 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 1
  %808 = load i32, i32* %46, align 4
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds [400 x i32], [400 x i32]* %807, i64 0, i64 %809
  %811 = load i32, i32* %810, align 4
  %812 = sub nsw i32 %806, %811
  %813 = icmp sle i32 %812, 500
  br i1 %813, label %827, label %814

814:                                              ; preds = %801
  %815 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %816 = load i32, i32* %48, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [400 x i32], [400 x i32]* %815, i64 0, i64 %817
  %819 = load i32, i32* %818, align 4
  %820 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 1
  %821 = load i32, i32* %48, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds [400 x i32], [400 x i32]* %820, i64 0, i64 %822
  %824 = load i32, i32* %823, align 4
  %825 = sub nsw i32 %819, %824
  %826 = icmp sle i32 %825, 500
  br i1 %826, label %827, label %883

827:                                              ; preds = %814, %801
  %828 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %829 = load i32, i32* %46, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [400 x i32], [400 x i32]* %828, i64 0, i64 %830
  %832 = load i32, i32* %831, align 4
  %833 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 1
  %834 = load i32, i32* %46, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds [400 x i32], [400 x i32]* %833, i64 0, i64 %835
  %837 = load i32, i32* %836, align 4
  %838 = sub nsw i32 %832, %837
  %839 = icmp sle i32 %838, 500
  br i1 %839, label %853, label %840

840:                                              ; preds = %827
  %841 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %842 = load i32, i32* %48, align 4
  %843 = sext i32 %842 to i64
  %844 = getelementptr inbounds [400 x i32], [400 x i32]* %841, i64 0, i64 %843
  %845 = load i32, i32* %844, align 4
  %846 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 1
  %847 = load i32, i32* %48, align 4
  %848 = sext i32 %847 to i64
  %849 = getelementptr inbounds [400 x i32], [400 x i32]* %846, i64 0, i64 %848
  %850 = load i32, i32* %849, align 4
  %851 = sub nsw i32 %845, %850
  %852 = icmp sle i32 %851, 500
  br i1 %852, label %853, label %883

853:                                              ; preds = %840, %827
  %854 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %15, i32 0, i32 0
  %855 = load i32, i32* %48, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds [400 x i32], [400 x i32]* %854, i64 0, i64 %856
  %858 = load i32, i32* %857, align 4
  %859 = load i32*, i32** %10, align 8
  %860 = load i32, i32* %859, align 4
  %861 = icmp slt i32 %858, %860
  br i1 %861, label %862, label %883

862:                                              ; preds = %853
  %863 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %16, i32 0, i32 0
  %864 = load i32, i32* %48, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [400 x i32], [400 x i32]* %863, i64 0, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = load i32*, i32** %10, align 8
  %869 = load i32, i32* %868, align 4
  %870 = icmp slt i32 %867, %869
  br i1 %870, label %871, label %883

871:                                              ; preds = %862
  %872 = load i32, i32* %14, align 4
  %873 = sext i32 %872 to i64
  %874 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %873
  %875 = load i32, i32* %874, align 4
  %876 = sub nsw i32 %875, 700
  store i32 %876, i32* %874, align 4
  %877 = load i32, i32* @verbose, align 4
  %878 = icmp sgt i32 %877, 0
  br i1 %878, label %879, label %882

879:                                              ; preds = %871
  %880 = load i32, i32* %46, align 4
  %881 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.24, i64 0, i64 0), i32 %880)
  br label %882

882:                                              ; preds = %879, %871
  br label %883

883:                                              ; preds = %882, %862, %853, %840, %814
  br label %884

884:                                              ; preds = %883, %786
  br label %911

885:                                              ; preds = %761
  %886 = load i32, i32* %48, align 4
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %887
  %889 = load i8, i8* %888, align 1
  %890 = zext i8 %889 to i32
  %891 = load i32, i32* %11, align 4
  %892 = icmp eq i32 %890, %891
  br i1 %892, label %893, label %910

893:                                              ; preds = %885
  %894 = load i32, i32* %48, align 4
  %895 = call i32 @countlib(i32 %894)
  %896 = icmp sle i32 %895, 2
  br i1 %896, label %897, label %909

897:                                              ; preds = %893
  %898 = load i32, i32* %14, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %899
  %901 = load i32, i32* %900, align 4
  %902 = sub nsw i32 %901, 200
  store i32 %902, i32* %900, align 4
  %903 = load i32, i32* @verbose, align 4
  %904 = icmp sgt i32 %903, 0
  br i1 %904, label %905, label %908

905:                                              ; preds = %897
  %906 = load i32, i32* %46, align 4
  %907 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.25, i64 0, i64 0), i32 %906)
  br label %908

908:                                              ; preds = %905, %897
  br label %909

909:                                              ; preds = %908, %893
  br label %910

910:                                              ; preds = %909, %885
  br label %911

911:                                              ; preds = %910, %884
  br label %912

912:                                              ; preds = %911
  %913 = load i32, i32* %28, align 4
  %914 = add nsw i32 %913, 1
  store i32 %914, i32* %28, align 4
  br label %758, !llvm.loop !15

915:                                              ; preds = %758
  %916 = load i32, i32* %47, align 4
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %938

918:                                              ; preds = %915
  %919 = load i32, i32* %11, align 4
  %920 = load i32, i32* %8, align 4
  %921 = icmp ne i32 %919, %920
  br i1 %921, label %922, label %938

922:                                              ; preds = %918
  %923 = load i32, i32* %46, align 4
  %924 = call i32 @is_edge_vertex(i32 %923)
  %925 = icmp ne i32 %924, 0
  br i1 %925, label %926, label %938

926:                                              ; preds = %922
  %927 = load i32, i32* %14, align 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %928
  %930 = load i32, i32* %929, align 4
  %931 = sub nsw i32 %930, 100
  store i32 %931, i32* %929, align 4
  %932 = load i32, i32* @verbose, align 4
  %933 = icmp sgt i32 %932, 0
  br i1 %933, label %934, label %937

934:                                              ; preds = %926
  %935 = load i32, i32* %46, align 4
  %936 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.26, i64 0, i64 0), i32 %935)
  br label %937

937:                                              ; preds = %934, %926
  br label %938

938:                                              ; preds = %937, %922, %918, %915
  %939 = load i32, i32* %46, align 4
  %940 = load i32, i32* %6, align 4
  %941 = call i32 @liberty_of_string(i32 %939, i32 %940)
  %942 = icmp ne i32 %941, 0
  br i1 %942, label %943, label %947

943:                                              ; preds = %938
  %944 = load i32, i32* %6, align 4
  %945 = call i32 @countlib(i32 %944)
  %946 = icmp eq i32 %945, 3
  br i1 %946, label %956, label %947

947:                                              ; preds = %943, %938
  %948 = load i32, i32* %46, align 4
  %949 = load i32, i32* %7, align 4
  %950 = call i32 @liberty_of_string(i32 %948, i32 %949)
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %952, label %968

952:                                              ; preds = %947
  %953 = load i32, i32* %7, align 4
  %954 = call i32 @countlib(i32 %953)
  %955 = icmp eq i32 %954, 3
  br i1 %955, label %956, label %968

956:                                              ; preds = %952, %943
  %957 = load i32, i32* %14, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %958
  %960 = load i32, i32* %959, align 4
  %961 = sub nsw i32 %960, 100
  store i32 %961, i32* %959, align 4
  %962 = load i32, i32* @verbose, align 4
  %963 = icmp sgt i32 %962, 0
  br i1 %963, label %964, label %967

964:                                              ; preds = %956
  %965 = load i32, i32* %46, align 4
  %966 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i64 0, i64 0), i32 %965)
  br label %967

967:                                              ; preds = %964, %956
  br label %968

968:                                              ; preds = %967, %952, %947
  br label %969

969:                                              ; preds = %968
  %970 = load i32, i32* %14, align 4
  %971 = add nsw i32 %970, 1
  store i32 %971, i32* %14, align 4
  br label %748, !llvm.loop !16

972:                                              ; preds = %748
  store i32 0, i32* %29, align 4
  br label %973

973:                                              ; preds = %1046, %972
  %974 = load i32, i32* %29, align 4
  %975 = load i32, i32* %18, align 4
  %976 = icmp slt i32 %974, %975
  br i1 %976, label %977, label %1049

977:                                              ; preds = %973
  %978 = load i32, i32* %29, align 4
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %979
  %981 = load i32, i32* %980, align 4
  store i32 %981, i32* %49, align 4
  %982 = load i32, i32* %29, align 4
  store i32 %982, i32* %50, align 4
  %983 = load i32, i32* %29, align 4
  %984 = add nsw i32 %983, 1
  store i32 %984, i32* %30, align 4
  br label %985

985:                                              ; preds = %1003, %977
  %986 = load i32, i32* %30, align 4
  %987 = load i32, i32* %18, align 4
  %988 = icmp slt i32 %986, %987
  br i1 %988, label %989, label %1006

989:                                              ; preds = %985
  %990 = load i32, i32* %30, align 4
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %991
  %993 = load i32, i32* %992, align 4
  %994 = load i32, i32* %49, align 4
  %995 = icmp slt i32 %993, %994
  br i1 %995, label %996, label %1002

996:                                              ; preds = %989
  %997 = load i32, i32* %30, align 4
  %998 = sext i32 %997 to i64
  %999 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %998
  %1000 = load i32, i32* %999, align 4
  store i32 %1000, i32* %49, align 4
  %1001 = load i32, i32* %30, align 4
  store i32 %1001, i32* %50, align 4
  br label %1002

1002:                                             ; preds = %996, %989
  br label %1003

1003:                                             ; preds = %1002
  %1004 = load i32, i32* %30, align 4
  %1005 = add nsw i32 %1004, 1
  store i32 %1005, i32* %30, align 4
  br label %985, !llvm.loop !17

1006:                                             ; preds = %985
  %1007 = load i32, i32* %50, align 4
  %1008 = load i32, i32* %29, align 4
  %1009 = icmp ne i32 %1007, %1008
  br i1 %1009, label %1010, label %1045

1010:                                             ; preds = %1006
  %1011 = load i32*, i32** %9, align 8
  %1012 = load i32, i32* %29, align 4
  %1013 = sext i32 %1012 to i64
  %1014 = getelementptr inbounds i32, i32* %1011, i64 %1013
  %1015 = load i32, i32* %1014, align 4
  store i32 %1015, i32* %51, align 4
  %1016 = load i32, i32* %29, align 4
  %1017 = sext i32 %1016 to i64
  %1018 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %1017
  %1019 = load i32, i32* %1018, align 4
  store i32 %1019, i32* %52, align 4
  %1020 = load i32*, i32** %9, align 8
  %1021 = load i32, i32* %50, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds i32, i32* %1020, i64 %1022
  %1024 = load i32, i32* %1023, align 4
  %1025 = load i32*, i32** %9, align 8
  %1026 = load i32, i32* %29, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds i32, i32* %1025, i64 %1027
  store i32 %1024, i32* %1028, align 4
  %1029 = load i32, i32* %50, align 4
  %1030 = sext i32 %1029 to i64
  %1031 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %1030
  %1032 = load i32, i32* %1031, align 4
  %1033 = load i32, i32* %29, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %1034
  store i32 %1032, i32* %1035, align 4
  %1036 = load i32, i32* %51, align 4
  %1037 = load i32*, i32** %9, align 8
  %1038 = load i32, i32* %50, align 4
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds i32, i32* %1037, i64 %1039
  store i32 %1036, i32* %1040, align 4
  %1041 = load i32, i32* %52, align 4
  %1042 = load i32, i32* %50, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %1043
  store i32 %1041, i32* %1044, align 4
  br label %1045

1045:                                             ; preds = %1010, %1006
  br label %1046

1046:                                             ; preds = %1045
  %1047 = load i32, i32* %29, align 4
  %1048 = add nsw i32 %1047, 1
  store i32 %1048, i32* %29, align 4
  br label %973, !llvm.loop !18

1049:                                             ; preds = %973
  %1050 = load i32, i32* @verbose, align 4
  %1051 = icmp sgt i32 %1050, 0
  br i1 %1051, label %1052, label %1073

1052:                                             ; preds = %1049
  %1053 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0))
  store i32 0, i32* %29, align 4
  br label %1054

1054:                                             ; preds = %1069, %1052
  %1055 = load i32, i32* %29, align 4
  %1056 = load i32, i32* %18, align 4
  %1057 = icmp slt i32 %1055, %1056
  br i1 %1057, label %1058, label %1072

1058:                                             ; preds = %1054
  %1059 = load i32*, i32** %9, align 8
  %1060 = load i32, i32* %29, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds i32, i32* %1059, i64 %1061
  %1063 = load i32, i32* %1062, align 4
  %1064 = load i32, i32* %29, align 4
  %1065 = sext i32 %1064 to i64
  %1066 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %1065
  %1067 = load i32, i32* %1066, align 4
  %1068 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32 %1063, i32 %1067)
  br label %1069

1069:                                             ; preds = %1058
  %1070 = load i32, i32* %29, align 4
  %1071 = add nsw i32 %1070, 1
  store i32 %1071, i32* %29, align 4
  br label %1054, !llvm.loop !19

1072:                                             ; preds = %1054
  br label %1073

1073:                                             ; preds = %1072, %1049
  %1074 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1075 = icmp ne %struct.SGFTree_t* %1074, null
  br i1 %1075, label %1076, label %1136

1076:                                             ; preds = %1073
  %1077 = getelementptr inbounds [500 x i8], [500 x i8]* %53, i64 0, i64 0
  %1078 = load i32, i32* %8, align 4
  %1079 = load i32, i32* %11, align 4
  %1080 = icmp eq i32 %1078, %1079
  %1081 = zext i1 %1080 to i64
  %1082 = select i1 %1080, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0)
  %1083 = call i32 (i8*, i8*, ...) @sprintf(i8* %1077, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0), i8* %1082, i32* %55) #3
  %1084 = getelementptr inbounds [500 x i8], [500 x i8]* %53, i64 0, i64 0
  %1085 = load i32, i32* %55, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds i8, i8* %1084, i64 %1086
  store i8* %1087, i8** %54, align 8
  store i32 0, i32* %29, align 4
  br label %1088

1088:                                             ; preds = %1130, %1076
  %1089 = load i32, i32* %29, align 4
  %1090 = load i32, i32* %18, align 4
  %1091 = icmp slt i32 %1089, %1090
  br i1 %1091, label %1092, label %1133

1092:                                             ; preds = %1088
  %1093 = load i8*, i8** %54, align 8
  %1094 = load i32*, i32** %9, align 8
  %1095 = load i32, i32* %29, align 4
  %1096 = sext i32 %1095 to i64
  %1097 = getelementptr inbounds i32, i32* %1094, i64 %1096
  %1098 = load i32, i32* %1097, align 4
  %1099 = srem i32 %1098, 20
  %1100 = sub nsw i32 %1099, 1
  %1101 = add nsw i32 %1100, 65
  %1102 = load i32*, i32** %9, align 8
  %1103 = load i32, i32* %29, align 4
  %1104 = sext i32 %1103 to i64
  %1105 = getelementptr inbounds i32, i32* %1102, i64 %1104
  %1106 = load i32, i32* %1105, align 4
  %1107 = srem i32 %1106, 20
  %1108 = sub nsw i32 %1107, 1
  %1109 = icmp sge i32 %1108, 8
  %1110 = zext i1 %1109 to i32
  %1111 = add nsw i32 %1101, %1110
  %1112 = load i32, i32* @board_size, align 4
  %1113 = load i32*, i32** %9, align 8
  %1114 = load i32, i32* %29, align 4
  %1115 = sext i32 %1114 to i64
  %1116 = getelementptr inbounds i32, i32* %1113, i64 %1115
  %1117 = load i32, i32* %1116, align 4
  %1118 = sdiv i32 %1117, 20
  %1119 = sub nsw i32 %1118, 1
  %1120 = sub nsw i32 %1112, %1119
  %1121 = load i32, i32* %29, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %1122
  %1124 = load i32, i32* %1123, align 4
  %1125 = call i32 (i8*, i8*, ...) @sprintf(i8* %1093, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0), i32 %1111, i32 %1120, i32 %1124, i32* %55) #3
  %1126 = load i32, i32* %55, align 4
  %1127 = load i8*, i8** %54, align 8
  %1128 = sext i32 %1126 to i64
  %1129 = getelementptr inbounds i8, i8* %1127, i64 %1128
  store i8* %1129, i8** %54, align 8
  br label %1130

1130:                                             ; preds = %1092
  %1131 = load i32, i32* %29, align 4
  %1132 = add nsw i32 %1131, 1
  store i32 %1132, i32* %29, align 4
  br label %1088, !llvm.loop !20

1133:                                             ; preds = %1088
  %1134 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  %1135 = getelementptr inbounds [500 x i8], [500 x i8]* %53, i64 0, i64 0
  call void @sgftreeAddComment(%struct.SGFTree_t* %1134, i8* %1135)
  br label %1136

1136:                                             ; preds = %1133, %1073
  store i32 0, i32* %14, align 4
  br label %1137

1137:                                             ; preds = %1152, %1136
  %1138 = load i32, i32* %14, align 4
  %1139 = load i32, i32* %18, align 4
  %1140 = icmp slt i32 %1138, %1139
  br i1 %1140, label %1141, label %1155

1141:                                             ; preds = %1137
  %1142 = load i32, i32* %14, align 4
  %1143 = sext i32 %1142 to i64
  %1144 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 %1143
  %1145 = load i32, i32* %1144, align 4
  %1146 = getelementptr inbounds [362 x i32], [362 x i32]* %17, i64 0, i64 0
  %1147 = load i32, i32* %1146, align 16
  %1148 = add nsw i32 %1147, 1500
  %1149 = icmp sgt i32 %1145, %1148
  br i1 %1149, label %1150, label %1151

1150:                                             ; preds = %1141
  br label %1155

1151:                                             ; preds = %1141
  br label %1152

1152:                                             ; preds = %1151
  %1153 = load i32, i32* %14, align 4
  %1154 = add nsw i32 %1153, 1
  store i32 %1154, i32* %14, align 4
  br label %1137, !llvm.loop !21

1155:                                             ; preds = %1150, %1137
  %1156 = load i32, i32* %14, align 4
  store i32 %1156, i32* %18, align 4
  %1157 = load i32, i32* %18, align 4
  ret i32 %1157
}

declare dso_local i32 @komaster_trymove(i32, i32, i8*, i32, i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local void @popgo() #1

declare dso_local i32 @have_common_lib(i32, i32, i32*) #1

declare dso_local i32 @chainlinks(i32, i32*) #1

declare dso_local i32 @adjacent_strings(i32, i32) #1

declare dso_local i32 @attack(i32, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_connection_distances(i32 %0, i32 %1, %struct.connection_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [361 x i32], align 16
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
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca i32, align 4
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.connection_data* %2, %struct.connection_data** %6, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = sub nsw i32 3, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %4, align 4
  %88 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %89 = call i32 @findstones(i32 %87, i32 361, i32* %88)
  store i32 %89, i32* %13, align 4
  store i32 3001, i32* %14, align 4
  %90 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %91 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %90, i32 0, i32 6
  store i32 0, i32* %91, align 4
  %92 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %93 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %92, i32 0, i32 7
  store i32 0, i32* %93, align 4
  store i32 21, i32* %9, align 4
  br label %94

94:                                               ; preds = %123, %3
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 400
  br i1 %96, label %97, label %126

97:                                               ; preds = %94
  %98 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %99 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %98, i32 0, i32 0
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [400 x i32], [400 x i32]* %99, i64 0, i64 %101
  store i32 100000, i32* %102, align 4
  %103 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %104 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %103, i32 0, i32 1
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [400 x i32], [400 x i32]* %104, i64 0, i64 %106
  store i32 0, i32* %107, align 4
  %108 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %109 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %108, i32 0, i32 2
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [400 x i32], [400 x i32]* %109, i64 0, i64 %111
  store i32 0, i32* %112, align 4
  %113 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %114 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %113, i32 0, i32 3
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [400 x i32], [400 x i32]* %114, i64 0, i64 %116
  store i32 0, i32* %117, align 4
  %118 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %119 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %118, i32 0, i32 4
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [400 x i32], [400 x i32]* %119, i64 0, i64 %121
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %97
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %94, !llvm.loop !22

126:                                              ; preds = %94
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %312, %126
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %315

131:                                              ; preds = %127
  br label %132

132:                                              ; preds = %131
  %133 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %134 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %133, i32 0, i32 0
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [400 x i32], [400 x i32]* %134, i64 0, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = icmp slt i32 0, %141
  br i1 %142, label %143, label %310

143:                                              ; preds = %132
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %218

153:                                              ; preds = %143
  %154 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %155 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %154, i32 0, i32 0
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [400 x i32], [400 x i32]* %155, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 100000
  br i1 %163, label %164, label %177

164:                                              ; preds = %153
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %170 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %169, i32 0, i32 5
  %171 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %172 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds [400 x i32], [400 x i32]* %170, i64 0, i64 %175
  store i32 %168, i32* %176, align 4
  br label %177

177:                                              ; preds = %164, %153
  %178 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %179 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %178, i32 0, i32 0
  %180 = load i32, i32* %10, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [400 x i32], [400 x i32]* %179, i64 0, i64 %184
  store i32 0, i32* %185, align 4
  %186 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %187 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %186, i32 0, i32 1
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [400 x i32], [400 x i32]* %187, i64 0, i64 %192
  store i32 0, i32* %193, align 4
  %194 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %195 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %194, i32 0, i32 2
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [400 x i32], [400 x i32]* %195, i64 0, i64 %200
  store i32 0, i32* %201, align 4
  %202 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %203 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %202, i32 0, i32 3
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [400 x i32], [400 x i32]* %203, i64 0, i64 %208
  store i32 0, i32* %209, align 4
  %210 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %211 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %210, i32 0, i32 4
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [400 x i32], [400 x i32]* %211, i64 0, i64 %216
  store i32 0, i32* %217, align 4
  br label %309

218:                                              ; preds = %143
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %224 = call i32 @findstones(i32 %222, i32 361, i32* %223)
  store i32 %224, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %225

225:                                              ; preds = %305, %218
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* %13, align 4
  %228 = icmp slt i32 %226, %227
  br i1 %228, label %229, label %308

229:                                              ; preds = %225
  %230 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %231 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %230, i32 0, i32 0
  %232 = load i32, i32* %15, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [400 x i32], [400 x i32]* %231, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 100000
  br i1 %239, label %240, label %253

240:                                              ; preds = %229
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %246 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %245, i32 0, i32 5
  %247 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %248 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds [400 x i32], [400 x i32]* %246, i64 0, i64 %251
  store i32 %244, i32* %252, align 4
  br label %253

253:                                              ; preds = %240, %229
  %254 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %255 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %254, i32 0, i32 0
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds [400 x i32], [400 x i32]* %255, i64 0, i64 %260
  store i32 0, i32* %261, align 4
  %262 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %263 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %262, i32 0, i32 1
  %264 = load i32, i32* %15, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [400 x i32], [400 x i32]* %263, i64 0, i64 %268
  store i32 0, i32* %269, align 4
  %270 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %271 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %270, i32 0, i32 2
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [400 x i32], [400 x i32]* %271, i64 0, i64 %276
  store i32 0, i32* %277, align 4
  %278 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %279 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %278, i32 0, i32 3
  %280 = load i32, i32* %15, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [400 x i32], [400 x i32]* %279, i64 0, i64 %284
  store i32 0, i32* %285, align 4
  %286 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %287 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %286, i32 0, i32 4
  %288 = load i32, i32* %15, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [400 x i32], [400 x i32]* %287, i64 0, i64 %292
  store i32 0, i32* %293, align 4
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %5, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %304

300:                                              ; preds = %253
  %301 = load i32, i32* %14, align 4
  %302 = icmp slt i32 0, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  store i32 -1, i32* %14, align 4
  br label %304

304:                                              ; preds = %303, %300, %253
  br label %305

305:                                              ; preds = %304
  %306 = load i32, i32* %15, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %15, align 4
  br label %225, !llvm.loop !23

308:                                              ; preds = %225
  br label %309

309:                                              ; preds = %308, %177
  br label %310

310:                                              ; preds = %309, %132
  br label %311

311:                                              ; preds = %310
  br label %312

312:                                              ; preds = %311
  %313 = load i32, i32* %10, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %10, align 4
  br label %127, !llvm.loop !24

315:                                              ; preds = %127
  br label %316

316:                                              ; preds = %8534, %315
  %317 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %318 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %321 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %320, i32 0, i32 7
  %322 = load i32, i32* %321, align 4
  %323 = icmp slt i32 %319, %322
  br i1 %323, label %324, label %8539

324:                                              ; preds = %316
  store i32 100000, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %325 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %326 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 4
  %328 = icmp sle i32 %327, 361
  br i1 %328, label %329, label %330

329:                                              ; preds = %324
  br label %331

330:                                              ; preds = %324
  call void @abortgo(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i32 903, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0), i32 -1, i32 -1)
  br label %331

331:                                              ; preds = %330, %329
  %332 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %333 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %332, i32 0, i32 6
  %334 = load i32, i32* %333, align 4
  store i32 %334, i32* %10, align 4
  br label %335

335:                                              ; preds = %369, %331
  %336 = load i32, i32* %10, align 4
  %337 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %338 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %337, i32 0, i32 7
  %339 = load i32, i32* %338, align 4
  %340 = icmp slt i32 %336, %339
  br i1 %340, label %341, label %372

341:                                              ; preds = %335
  %342 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %343 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %342, i32 0, i32 0
  %344 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %345 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %344, i32 0, i32 5
  %346 = load i32, i32* %10, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [400 x i32], [400 x i32]* %345, i64 0, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [400 x i32], [400 x i32]* %343, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %16, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %368

355:                                              ; preds = %341
  %356 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %357 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %356, i32 0, i32 0
  %358 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %359 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %358, i32 0, i32 5
  %360 = load i32, i32* %10, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [400 x i32], [400 x i32]* %359, i64 0, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [400 x i32], [400 x i32]* %357, i64 0, i64 %364
  %366 = load i32, i32* %365, align 4
  store i32 %366, i32* %16, align 4
  %367 = load i32, i32* %10, align 4
  store i32 %367, i32* %17, align 4
  br label %368

368:                                              ; preds = %355, %341
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %10, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %10, align 4
  br label %335, !llvm.loop !25

372:                                              ; preds = %335
  %373 = load i32, i32* %17, align 4
  %374 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %375 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 4
  %377 = icmp ne i32 %373, %376
  br i1 %377, label %378, label %406

378:                                              ; preds = %372
  %379 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %380 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %379, i32 0, i32 5
  %381 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %382 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %381, i32 0, i32 6
  %383 = load i32, i32* %382, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [400 x i32], [400 x i32]* %380, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  store i32 %386, i32* %18, align 4
  %387 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %388 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %387, i32 0, i32 5
  %389 = load i32, i32* %17, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [400 x i32], [400 x i32]* %388, i64 0, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %394 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %393, i32 0, i32 5
  %395 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %396 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %395, i32 0, i32 6
  %397 = load i32, i32* %396, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [400 x i32], [400 x i32]* %394, i64 0, i64 %398
  store i32 %392, i32* %399, align 4
  %400 = load i32, i32* %18, align 4
  %401 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %402 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %401, i32 0, i32 5
  %403 = load i32, i32* %17, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds [400 x i32], [400 x i32]* %402, i64 0, i64 %404
  store i32 %400, i32* %405, align 4
  br label %406

406:                                              ; preds = %378, %372
  %407 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %408 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %407, i32 0, i32 5
  %409 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %410 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %409, i32 0, i32 6
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [400 x i32], [400 x i32]* %408, i64 0, i64 %412
  %414 = load i32, i32* %413, align 4
  store i32 %414, i32* %9, align 4
  %415 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %416 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %415, i32 0, i32 0
  %417 = load i32, i32* %9, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds [400 x i32], [400 x i32]* %416, i64 0, i64 %418
  %420 = load i32, i32* %419, align 4
  store i32 %420, i32* %11, align 4
  %421 = load i32, i32* %11, align 4
  %422 = load i32, i32* %14, align 4
  %423 = icmp sgt i32 %421, %422
  br i1 %423, label %424, label %425

424:                                              ; preds = %406
  br label %8539

425:                                              ; preds = %406
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %427
  %429 = load i8, i8* %428, align 1
  %430 = zext i8 %429 to i32
  %431 = load i32, i32* %7, align 4
  %432 = icmp eq i32 %430, %431
  br i1 %432, label %433, label %7725

433:                                              ; preds = %425
  store i32 0, i32* %10, align 4
  br label %434

434:                                              ; preds = %7721, %433
  %435 = load i32, i32* %10, align 4
  %436 = icmp slt i32 %435, 4
  br i1 %436, label %437, label %7724

437:                                              ; preds = %434
  %438 = load i32, i32* %10, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %439
  %441 = load i32, i32* %440, align 4
  store i32 %441, i32* %19, align 4
  %442 = load i32, i32* %10, align 4
  %443 = add nsw i32 %442, 1
  %444 = srem i32 %443, 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %445
  %447 = load i32, i32* %446, align 4
  store i32 %447, i32* %20, align 4
  %448 = load i32, i32* %9, align 4
  %449 = load i32, i32* %19, align 4
  %450 = add nsw i32 %448, %449
  store i32 %450, i32* %21, align 4
  %451 = load i32, i32* %9, align 4
  %452 = load i32, i32* %19, align 4
  %453 = add nsw i32 %451, %452
  %454 = load i32, i32* %20, align 4
  %455 = add nsw i32 %453, %454
  store i32 %455, i32* %22, align 4
  %456 = load i32, i32* %9, align 4
  %457 = load i32, i32* %19, align 4
  %458 = mul nsw i32 2, %457
  %459 = add nsw i32 %456, %458
  store i32 %459, i32* %23, align 4
  %460 = load i32, i32* %9, align 4
  %461 = load i32, i32* %20, align 4
  %462 = mul nsw i32 2, %461
  %463 = add nsw i32 %460, %462
  store i32 %463, i32* %24, align 4
  %464 = load i32, i32* %9, align 4
  %465 = load i32, i32* %19, align 4
  %466 = add nsw i32 %464, %465
  %467 = load i32, i32* %20, align 4
  %468 = mul nsw i32 2, %467
  %469 = add nsw i32 %466, %468
  store i32 %469, i32* %25, align 4
  %470 = load i32, i32* %9, align 4
  %471 = load i32, i32* %20, align 4
  %472 = add nsw i32 %470, %471
  store i32 %472, i32* %26, align 4
  %473 = load i32, i32* %9, align 4
  %474 = load i32, i32* %19, align 4
  %475 = sub nsw i32 %473, %474
  store i32 %475, i32* %27, align 4
  %476 = load i32, i32* %9, align 4
  %477 = load i32, i32* %19, align 4
  %478 = sub nsw i32 %476, %477
  %479 = load i32, i32* %20, align 4
  %480 = add nsw i32 %478, %479
  store i32 %480, i32* %28, align 4
  %481 = load i32, i32* %9, align 4
  %482 = load i32, i32* %19, align 4
  %483 = sub nsw i32 %481, %482
  %484 = load i32, i32* %20, align 4
  %485 = mul nsw i32 2, %484
  %486 = add nsw i32 %483, %485
  store i32 %486, i32* %29, align 4
  %487 = load i32, i32* %9, align 4
  %488 = load i32, i32* %19, align 4
  %489 = mul nsw i32 2, %488
  %490 = sub nsw i32 %487, %489
  store i32 %490, i32* %30, align 4
  %491 = load i32, i32* %21, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %492
  %494 = load i8, i8* %493, align 1
  %495 = zext i8 %494 to i32
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %663

497:                                              ; preds = %437
  %498 = load i32, i32* %21, align 4
  %499 = load i32, i32* %8, align 4
  %500 = call i32 @is_suicide(i32 %498, i32 %499)
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %663

502:                                              ; preds = %497
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %11, align 4
  %505 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %506 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %505, i32 0, i32 0
  %507 = load i32, i32* %21, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds [400 x i32], [400 x i32]* %506, i64 0, i64 %508
  %510 = load i32, i32* %509, align 4
  %511 = icmp slt i32 %504, %510
  br i1 %511, label %512, label %661

512:                                              ; preds = %503
  %513 = load i32, i32* %21, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %514
  %516 = load i8, i8* %515, align 1
  %517 = zext i8 %516 to i32
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %566

519:                                              ; preds = %512
  %520 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %521 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %520, i32 0, i32 0
  %522 = load i32, i32* %21, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [400 x i32], [400 x i32]* %521, i64 0, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = icmp eq i32 %525, 100000
  br i1 %526, label %527, label %537

527:                                              ; preds = %519
  %528 = load i32, i32* %21, align 4
  %529 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %530 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %529, i32 0, i32 5
  %531 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %532 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %531, i32 0, i32 7
  %533 = load i32, i32* %532, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %532, align 4
  %535 = sext i32 %533 to i64
  %536 = getelementptr inbounds [400 x i32], [400 x i32]* %530, i64 0, i64 %535
  store i32 %528, i32* %536, align 4
  br label %537

537:                                              ; preds = %527, %519
  %538 = load i32, i32* %11, align 4
  %539 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %540 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %539, i32 0, i32 0
  %541 = load i32, i32* %21, align 4
  %542 = sext i32 %541 to i64
  %543 = getelementptr inbounds [400 x i32], [400 x i32]* %540, i64 0, i64 %542
  store i32 %538, i32* %543, align 4
  %544 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %545 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %544, i32 0, i32 1
  %546 = load i32, i32* %21, align 4
  %547 = sext i32 %546 to i64
  %548 = getelementptr inbounds [400 x i32], [400 x i32]* %545, i64 0, i64 %547
  store i32 0, i32* %548, align 4
  %549 = load i32, i32* %9, align 4
  %550 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %551 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %550, i32 0, i32 2
  %552 = load i32, i32* %21, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [400 x i32], [400 x i32]* %551, i64 0, i64 %553
  store i32 %549, i32* %554, align 4
  %555 = load i32, i32* %21, align 4
  %556 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %557 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %556, i32 0, i32 3
  %558 = load i32, i32* %21, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [400 x i32], [400 x i32]* %557, i64 0, i64 %559
  store i32 %555, i32* %560, align 4
  %561 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %562 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %561, i32 0, i32 4
  %563 = load i32, i32* %21, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [400 x i32], [400 x i32]* %562, i64 0, i64 %564
  store i32 0, i32* %565, align 4
  br label %660

566:                                              ; preds = %512
  %567 = load i32, i32* %21, align 4
  %568 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %569 = call i32 @findstones(i32 %567, i32 361, i32* %568)
  store i32 %569, i32* %13, align 4
  store i32 0, i32* %31, align 4
  br label %570

570:                                              ; preds = %656, %566
  %571 = load i32, i32* %31, align 4
  %572 = load i32, i32* %13, align 4
  %573 = icmp slt i32 %571, %572
  br i1 %573, label %574, label %659

574:                                              ; preds = %570
  %575 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %576 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %575, i32 0, i32 0
  %577 = load i32, i32* %31, align 4
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds [400 x i32], [400 x i32]* %576, i64 0, i64 %581
  %583 = load i32, i32* %582, align 4
  %584 = icmp eq i32 %583, 100000
  br i1 %584, label %585, label %598

585:                                              ; preds = %574
  %586 = load i32, i32* %31, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %587
  %589 = load i32, i32* %588, align 4
  %590 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %591 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %590, i32 0, i32 5
  %592 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %593 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %592, i32 0, i32 7
  %594 = load i32, i32* %593, align 4
  %595 = add nsw i32 %594, 1
  store i32 %595, i32* %593, align 4
  %596 = sext i32 %594 to i64
  %597 = getelementptr inbounds [400 x i32], [400 x i32]* %591, i64 0, i64 %596
  store i32 %589, i32* %597, align 4
  br label %598

598:                                              ; preds = %585, %574
  %599 = load i32, i32* %11, align 4
  %600 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %601 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %600, i32 0, i32 0
  %602 = load i32, i32* %31, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %603
  %605 = load i32, i32* %604, align 4
  %606 = sext i32 %605 to i64
  %607 = getelementptr inbounds [400 x i32], [400 x i32]* %601, i64 0, i64 %606
  store i32 %599, i32* %607, align 4
  %608 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %609 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %608, i32 0, i32 1
  %610 = load i32, i32* %31, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %611
  %613 = load i32, i32* %612, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [400 x i32], [400 x i32]* %609, i64 0, i64 %614
  store i32 0, i32* %615, align 4
  %616 = load i32, i32* %9, align 4
  %617 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %618 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %617, i32 0, i32 2
  %619 = load i32, i32* %31, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = sext i32 %622 to i64
  %624 = getelementptr inbounds [400 x i32], [400 x i32]* %618, i64 0, i64 %623
  store i32 %616, i32* %624, align 4
  %625 = load i32, i32* %21, align 4
  %626 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %627 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %626, i32 0, i32 3
  %628 = load i32, i32* %31, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %629
  %631 = load i32, i32* %630, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds [400 x i32], [400 x i32]* %627, i64 0, i64 %632
  store i32 %625, i32* %633, align 4
  %634 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %635 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %634, i32 0, i32 4
  %636 = load i32, i32* %31, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %637
  %639 = load i32, i32* %638, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [400 x i32], [400 x i32]* %635, i64 0, i64 %640
  store i32 0, i32* %641, align 4
  %642 = load i32, i32* %31, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = load i32, i32* %5, align 4
  %647 = icmp eq i32 %645, %646
  br i1 %647, label %648, label %655

648:                                              ; preds = %598
  %649 = load i32, i32* %11, align 4
  %650 = load i32, i32* %14, align 4
  %651 = icmp slt i32 %649, %650
  br i1 %651, label %652, label %655

652:                                              ; preds = %648
  %653 = load i32, i32* %11, align 4
  %654 = sub nsw i32 %653, 1
  store i32 %654, i32* %14, align 4
  br label %655

655:                                              ; preds = %652, %648, %598
  br label %656

656:                                              ; preds = %655
  %657 = load i32, i32* %31, align 4
  %658 = add nsw i32 %657, 1
  store i32 %658, i32* %31, align 4
  br label %570, !llvm.loop !26

659:                                              ; preds = %570
  br label %660

660:                                              ; preds = %659, %537
  br label %661

661:                                              ; preds = %660, %503
  br label %662

662:                                              ; preds = %661
  br label %663

663:                                              ; preds = %662, %497, %437
  %664 = load i32, i32* %21, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %665
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i32
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %942

670:                                              ; preds = %663
  %671 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %672 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %671, i32 0, i32 0
  %673 = load i32, i32* %21, align 4
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds [400 x i32], [400 x i32]* %672, i64 0, i64 %674
  %676 = load i32, i32* %675, align 4
  %677 = load i32, i32* %11, align 4
  %678 = add nsw i32 %677, 100
  %679 = icmp sgt i32 %676, %678
  br i1 %679, label %680, label %942

680:                                              ; preds = %670
  %681 = load i32, i32* %21, align 4
  %682 = load i32, i32* %8, align 4
  %683 = call i32 @is_self_atari(i32 %681, i32 %682)
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %942

685:                                              ; preds = %680
  store i32 0, i32* %33, align 4
  store i32 0, i32* %34, align 4
  %686 = load i32, i32* %21, align 4
  %687 = load i32, i32* %8, align 4
  %688 = call i32 @approxlib(i32 %686, i32 %687, i32 1, i32* %32)
  %689 = icmp sge i32 %688, 1
  br i1 %689, label %690, label %755

690:                                              ; preds = %685
  %691 = load i32, i32* %32, align 4
  %692 = load i32, i32* %8, align 4
  %693 = call i32 @approxlib(i32 %691, i32 %692, i32 2, i32* null)
  %694 = icmp sgt i32 %693, 2
  br i1 %694, label %695, label %697

695:                                              ; preds = %690
  %696 = load i32, i32* %32, align 4
  store i32 %696, i32* %33, align 4
  br label %697

697:                                              ; preds = %695, %690
  %698 = load i32, i32* %9, align 4
  %699 = call i32 @countlib(i32 %698)
  %700 = icmp eq i32 %699, 2
  br i1 %700, label %701, label %754

701:                                              ; preds = %697
  store i32 0, i32* %35, align 4
  br label %702

702:                                              ; preds = %750, %701
  %703 = load i32, i32* %35, align 4
  %704 = icmp slt i32 %703, 4
  br i1 %704, label %705, label %753

705:                                              ; preds = %702
  %706 = load i32, i32* %32, align 4
  %707 = load i32, i32* %35, align 4
  %708 = sext i32 %707 to i64
  %709 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %708
  %710 = load i32, i32* %709, align 4
  %711 = add nsw i32 %706, %710
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %712
  %714 = load i8, i8* %713, align 1
  %715 = zext i8 %714 to i32
  %716 = icmp eq i32 %715, 0
  br i1 %716, label %717, label %749

717:                                              ; preds = %705
  %718 = load i32, i32* %32, align 4
  %719 = load i32, i32* %35, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %720
  %722 = load i32, i32* %721, align 4
  %723 = add nsw i32 %718, %722
  %724 = load i32, i32* %21, align 4
  %725 = icmp ne i32 %723, %724
  br i1 %725, label %726, label %749

726:                                              ; preds = %717
  %727 = load i32, i32* %32, align 4
  %728 = load i32, i32* %35, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %729
  %731 = load i32, i32* %730, align 4
  %732 = add nsw i32 %727, %731
  %733 = load i32, i32* %8, align 4
  %734 = load i32, i32* %9, align 4
  %735 = call i32 @trymove(i32 %732, i32 %733, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i64 0, i64 0), i32 %734, i32 0, i32 0)
  %736 = icmp ne i32 %735, 0
  br i1 %736, label %737, label %749

737:                                              ; preds = %726
  %738 = load i32, i32* %9, align 4
  %739 = call i32 @ladder_capture(i32 %738, i32* null)
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %748

741:                                              ; preds = %737
  %742 = load i32, i32* %32, align 4
  %743 = load i32, i32* %35, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %744
  %746 = load i32, i32* %745, align 4
  %747 = add nsw i32 %742, %746
  store i32 %747, i32* %34, align 4
  call void @popgo()
  br label %753

748:                                              ; preds = %737
  call void @popgo()
  br label %749

749:                                              ; preds = %748, %726, %717, %705
  br label %750

750:                                              ; preds = %749
  %751 = load i32, i32* %35, align 4
  %752 = add nsw i32 %751, 1
  store i32 %752, i32* %35, align 4
  br label %702, !llvm.loop !27

753:                                              ; preds = %741, %702
  br label %754

754:                                              ; preds = %753, %697
  br label %755

755:                                              ; preds = %754, %685
  %756 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %757 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %756, i32 0, i32 3
  %758 = load i32, i32* %9, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [400 x i32], [400 x i32]* %757, i64 0, i64 %759
  %761 = load i32, i32* %760, align 4
  %762 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %763 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %762, i32 0, i32 4
  %764 = load i32, i32* %9, align 4
  %765 = sext i32 %764 to i64
  %766 = getelementptr inbounds [400 x i32], [400 x i32]* %763, i64 0, i64 %765
  %767 = load i32, i32* %766, align 4
  %768 = load i32, i32* %33, align 4
  %769 = load i32, i32* %34, align 4
  %770 = load i32, i32* %7, align 4
  %771 = call i32 @common_vulnerabilities(i32 %761, i32 %767, i32 %768, i32 %769, i32 %770)
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %941, label %773

773:                                              ; preds = %755
  br label %774

774:                                              ; preds = %773
  %775 = load i32, i32* %11, align 4
  %776 = add nsw i32 %775, 100
  %777 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %778 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %777, i32 0, i32 0
  %779 = load i32, i32* %21, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [400 x i32], [400 x i32]* %778, i64 0, i64 %780
  %782 = load i32, i32* %781, align 4
  %783 = icmp slt i32 %776, %782
  br i1 %783, label %784, label %939

784:                                              ; preds = %774
  %785 = load i32, i32* %21, align 4
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %786
  %788 = load i8, i8* %787, align 1
  %789 = zext i8 %788 to i32
  %790 = icmp eq i32 %789, 0
  br i1 %790, label %791, label %840

791:                                              ; preds = %784
  %792 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %793 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %792, i32 0, i32 0
  %794 = load i32, i32* %21, align 4
  %795 = sext i32 %794 to i64
  %796 = getelementptr inbounds [400 x i32], [400 x i32]* %793, i64 0, i64 %795
  %797 = load i32, i32* %796, align 4
  %798 = icmp eq i32 %797, 100000
  br i1 %798, label %799, label %809

799:                                              ; preds = %791
  %800 = load i32, i32* %21, align 4
  %801 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %802 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %801, i32 0, i32 5
  %803 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %804 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %803, i32 0, i32 7
  %805 = load i32, i32* %804, align 4
  %806 = add nsw i32 %805, 1
  store i32 %806, i32* %804, align 4
  %807 = sext i32 %805 to i64
  %808 = getelementptr inbounds [400 x i32], [400 x i32]* %802, i64 0, i64 %807
  store i32 %800, i32* %808, align 4
  br label %809

809:                                              ; preds = %799, %791
  %810 = load i32, i32* %11, align 4
  %811 = add nsw i32 %810, 100
  %812 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %813 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %812, i32 0, i32 0
  %814 = load i32, i32* %21, align 4
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds [400 x i32], [400 x i32]* %813, i64 0, i64 %815
  store i32 %811, i32* %816, align 4
  %817 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %818 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %817, i32 0, i32 1
  %819 = load i32, i32* %21, align 4
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds [400 x i32], [400 x i32]* %818, i64 0, i64 %820
  store i32 100, i32* %821, align 4
  %822 = load i32, i32* %9, align 4
  %823 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %824 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %823, i32 0, i32 2
  %825 = load i32, i32* %21, align 4
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds [400 x i32], [400 x i32]* %824, i64 0, i64 %826
  store i32 %822, i32* %827, align 4
  %828 = load i32, i32* %33, align 4
  %829 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %830 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %829, i32 0, i32 3
  %831 = load i32, i32* %21, align 4
  %832 = sext i32 %831 to i64
  %833 = getelementptr inbounds [400 x i32], [400 x i32]* %830, i64 0, i64 %832
  store i32 %828, i32* %833, align 4
  %834 = load i32, i32* %34, align 4
  %835 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %836 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %835, i32 0, i32 4
  %837 = load i32, i32* %21, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds [400 x i32], [400 x i32]* %836, i64 0, i64 %838
  store i32 %834, i32* %839, align 4
  br label %938

840:                                              ; preds = %784
  %841 = load i32, i32* %21, align 4
  %842 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %843 = call i32 @findstones(i32 %841, i32 361, i32* %842)
  store i32 %843, i32* %13, align 4
  store i32 0, i32* %36, align 4
  br label %844

844:                                              ; preds = %934, %840
  %845 = load i32, i32* %36, align 4
  %846 = load i32, i32* %13, align 4
  %847 = icmp slt i32 %845, %846
  br i1 %847, label %848, label %937

848:                                              ; preds = %844
  %849 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %850 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %849, i32 0, i32 0
  %851 = load i32, i32* %36, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %852
  %854 = load i32, i32* %853, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds [400 x i32], [400 x i32]* %850, i64 0, i64 %855
  %857 = load i32, i32* %856, align 4
  %858 = icmp eq i32 %857, 100000
  br i1 %858, label %859, label %872

859:                                              ; preds = %848
  %860 = load i32, i32* %36, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %861
  %863 = load i32, i32* %862, align 4
  %864 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %865 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %864, i32 0, i32 5
  %866 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %867 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %866, i32 0, i32 7
  %868 = load i32, i32* %867, align 4
  %869 = add nsw i32 %868, 1
  store i32 %869, i32* %867, align 4
  %870 = sext i32 %868 to i64
  %871 = getelementptr inbounds [400 x i32], [400 x i32]* %865, i64 0, i64 %870
  store i32 %863, i32* %871, align 4
  br label %872

872:                                              ; preds = %859, %848
  %873 = load i32, i32* %11, align 4
  %874 = add nsw i32 %873, 100
  %875 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %876 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %875, i32 0, i32 0
  %877 = load i32, i32* %36, align 4
  %878 = sext i32 %877 to i64
  %879 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %878
  %880 = load i32, i32* %879, align 4
  %881 = sext i32 %880 to i64
  %882 = getelementptr inbounds [400 x i32], [400 x i32]* %876, i64 0, i64 %881
  store i32 %874, i32* %882, align 4
  %883 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %884 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %883, i32 0, i32 1
  %885 = load i32, i32* %36, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %886
  %888 = load i32, i32* %887, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds [400 x i32], [400 x i32]* %884, i64 0, i64 %889
  store i32 100, i32* %890, align 4
  %891 = load i32, i32* %9, align 4
  %892 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %893 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %892, i32 0, i32 2
  %894 = load i32, i32* %36, align 4
  %895 = sext i32 %894 to i64
  %896 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %895
  %897 = load i32, i32* %896, align 4
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [400 x i32], [400 x i32]* %893, i64 0, i64 %898
  store i32 %891, i32* %899, align 4
  %900 = load i32, i32* %33, align 4
  %901 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %902 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %901, i32 0, i32 3
  %903 = load i32, i32* %36, align 4
  %904 = sext i32 %903 to i64
  %905 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %904
  %906 = load i32, i32* %905, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [400 x i32], [400 x i32]* %902, i64 0, i64 %907
  store i32 %900, i32* %908, align 4
  %909 = load i32, i32* %34, align 4
  %910 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %911 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %910, i32 0, i32 4
  %912 = load i32, i32* %36, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %913
  %915 = load i32, i32* %914, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [400 x i32], [400 x i32]* %911, i64 0, i64 %916
  store i32 %909, i32* %917, align 4
  %918 = load i32, i32* %36, align 4
  %919 = sext i32 %918 to i64
  %920 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %919
  %921 = load i32, i32* %920, align 4
  %922 = load i32, i32* %5, align 4
  %923 = icmp eq i32 %921, %922
  br i1 %923, label %924, label %933

924:                                              ; preds = %872
  %925 = load i32, i32* %11, align 4
  %926 = add nsw i32 %925, 100
  %927 = load i32, i32* %14, align 4
  %928 = icmp slt i32 %926, %927
  br i1 %928, label %929, label %933

929:                                              ; preds = %924
  %930 = load i32, i32* %11, align 4
  %931 = add nsw i32 %930, 100
  %932 = sub nsw i32 %931, 1
  store i32 %932, i32* %14, align 4
  br label %933

933:                                              ; preds = %929, %924, %872
  br label %934

934:                                              ; preds = %933
  %935 = load i32, i32* %36, align 4
  %936 = add nsw i32 %935, 1
  store i32 %936, i32* %36, align 4
  br label %844, !llvm.loop !28

937:                                              ; preds = %844
  br label %938

938:                                              ; preds = %937, %809
  br label %939

939:                                              ; preds = %938, %774
  br label %940

940:                                              ; preds = %939
  br label %941

941:                                              ; preds = %940, %755
  br label %942

942:                                              ; preds = %941, %680, %670, %663
  %943 = load i32, i32* %21, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %944
  %946 = load i8, i8* %945, align 1
  %947 = zext i8 %946 to i32
  %948 = load i32, i32* %7, align 4
  %949 = icmp eq i32 %947, %948
  br i1 %949, label %950, label %1307

950:                                              ; preds = %942
  %951 = load i32, i32* %22, align 4
  %952 = sext i32 %951 to i64
  %953 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %952
  %954 = load i8, i8* %953, align 1
  %955 = zext i8 %954 to i32
  %956 = icmp eq i32 %955, 0
  br i1 %956, label %957, label %1307

957:                                              ; preds = %950
  %958 = load i32, i32* %25, align 4
  %959 = sext i32 %958 to i64
  %960 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %959
  %961 = load i8, i8* %960, align 1
  %962 = zext i8 %961 to i32
  %963 = load i32, i32* %7, align 4
  %964 = icmp eq i32 %962, %963
  br i1 %964, label %965, label %1307

965:                                              ; preds = %957
  %966 = load i32, i32* %24, align 4
  %967 = sext i32 %966 to i64
  %968 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %967
  %969 = load i8, i8* %968, align 1
  %970 = zext i8 %969 to i32
  %971 = load i32, i32* %7, align 4
  %972 = icmp eq i32 %970, %971
  br i1 %972, label %973, label %1307

973:                                              ; preds = %965
  %974 = load i32, i32* %26, align 4
  %975 = sext i32 %974 to i64
  %976 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %975
  %977 = load i8, i8* %976, align 1
  %978 = zext i8 %977 to i32
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %980, label %1307

980:                                              ; preds = %973
  br label %981

981:                                              ; preds = %980
  %982 = load i32, i32* %11, align 4
  %983 = add nsw i32 %982, 100
  %984 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %985 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %984, i32 0, i32 0
  %986 = load i32, i32* %22, align 4
  %987 = sext i32 %986 to i64
  %988 = getelementptr inbounds [400 x i32], [400 x i32]* %985, i64 0, i64 %987
  %989 = load i32, i32* %988, align 4
  %990 = icmp slt i32 %983, %989
  br i1 %990, label %991, label %1142

991:                                              ; preds = %981
  %992 = load i32, i32* %22, align 4
  %993 = sext i32 %992 to i64
  %994 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %993
  %995 = load i8, i8* %994, align 1
  %996 = zext i8 %995 to i32
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %998, label %1045

998:                                              ; preds = %991
  %999 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1000 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %999, i32 0, i32 0
  %1001 = load i32, i32* %22, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = getelementptr inbounds [400 x i32], [400 x i32]* %1000, i64 0, i64 %1002
  %1004 = load i32, i32* %1003, align 4
  %1005 = icmp eq i32 %1004, 100000
  br i1 %1005, label %1006, label %1016

1006:                                             ; preds = %998
  %1007 = load i32, i32* %22, align 4
  %1008 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1009 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1008, i32 0, i32 5
  %1010 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1011 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1010, i32 0, i32 7
  %1012 = load i32, i32* %1011, align 4
  %1013 = add nsw i32 %1012, 1
  store i32 %1013, i32* %1011, align 4
  %1014 = sext i32 %1012 to i64
  %1015 = getelementptr inbounds [400 x i32], [400 x i32]* %1009, i64 0, i64 %1014
  store i32 %1007, i32* %1015, align 4
  br label %1016

1016:                                             ; preds = %1006, %998
  %1017 = load i32, i32* %11, align 4
  %1018 = add nsw i32 %1017, 100
  %1019 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1020 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1019, i32 0, i32 0
  %1021 = load i32, i32* %22, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = getelementptr inbounds [400 x i32], [400 x i32]* %1020, i64 0, i64 %1022
  store i32 %1018, i32* %1023, align 4
  %1024 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1025 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1024, i32 0, i32 1
  %1026 = load i32, i32* %22, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds [400 x i32], [400 x i32]* %1025, i64 0, i64 %1027
  store i32 100, i32* %1028, align 4
  %1029 = load i32, i32* %9, align 4
  %1030 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1031 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1030, i32 0, i32 2
  %1032 = load i32, i32* %22, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = getelementptr inbounds [400 x i32], [400 x i32]* %1031, i64 0, i64 %1033
  store i32 %1029, i32* %1034, align 4
  %1035 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1036 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1035, i32 0, i32 3
  %1037 = load i32, i32* %22, align 4
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds [400 x i32], [400 x i32]* %1036, i64 0, i64 %1038
  store i32 0, i32* %1039, align 4
  %1040 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1041 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1040, i32 0, i32 4
  %1042 = load i32, i32* %22, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds [400 x i32], [400 x i32]* %1041, i64 0, i64 %1043
  store i32 0, i32* %1044, align 4
  br label %1141

1045:                                             ; preds = %991
  %1046 = load i32, i32* %22, align 4
  %1047 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %1048 = call i32 @findstones(i32 %1046, i32 361, i32* %1047)
  store i32 %1048, i32* %13, align 4
  store i32 0, i32* %37, align 4
  br label %1049

1049:                                             ; preds = %1137, %1045
  %1050 = load i32, i32* %37, align 4
  %1051 = load i32, i32* %13, align 4
  %1052 = icmp slt i32 %1050, %1051
  br i1 %1052, label %1053, label %1140

1053:                                             ; preds = %1049
  %1054 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1055 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1054, i32 0, i32 0
  %1056 = load i32, i32* %37, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1057
  %1059 = load i32, i32* %1058, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds [400 x i32], [400 x i32]* %1055, i64 0, i64 %1060
  %1062 = load i32, i32* %1061, align 4
  %1063 = icmp eq i32 %1062, 100000
  br i1 %1063, label %1064, label %1077

1064:                                             ; preds = %1053
  %1065 = load i32, i32* %37, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1066
  %1068 = load i32, i32* %1067, align 4
  %1069 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1070 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1069, i32 0, i32 5
  %1071 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1072 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1071, i32 0, i32 7
  %1073 = load i32, i32* %1072, align 4
  %1074 = add nsw i32 %1073, 1
  store i32 %1074, i32* %1072, align 4
  %1075 = sext i32 %1073 to i64
  %1076 = getelementptr inbounds [400 x i32], [400 x i32]* %1070, i64 0, i64 %1075
  store i32 %1068, i32* %1076, align 4
  br label %1077

1077:                                             ; preds = %1064, %1053
  %1078 = load i32, i32* %11, align 4
  %1079 = add nsw i32 %1078, 100
  %1080 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1081 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1080, i32 0, i32 0
  %1082 = load i32, i32* %37, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1083
  %1085 = load i32, i32* %1084, align 4
  %1086 = sext i32 %1085 to i64
  %1087 = getelementptr inbounds [400 x i32], [400 x i32]* %1081, i64 0, i64 %1086
  store i32 %1079, i32* %1087, align 4
  %1088 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1089 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1088, i32 0, i32 1
  %1090 = load i32, i32* %37, align 4
  %1091 = sext i32 %1090 to i64
  %1092 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1091
  %1093 = load i32, i32* %1092, align 4
  %1094 = sext i32 %1093 to i64
  %1095 = getelementptr inbounds [400 x i32], [400 x i32]* %1089, i64 0, i64 %1094
  store i32 100, i32* %1095, align 4
  %1096 = load i32, i32* %9, align 4
  %1097 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1098 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1097, i32 0, i32 2
  %1099 = load i32, i32* %37, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1100
  %1102 = load i32, i32* %1101, align 4
  %1103 = sext i32 %1102 to i64
  %1104 = getelementptr inbounds [400 x i32], [400 x i32]* %1098, i64 0, i64 %1103
  store i32 %1096, i32* %1104, align 4
  %1105 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1106 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1105, i32 0, i32 3
  %1107 = load i32, i32* %37, align 4
  %1108 = sext i32 %1107 to i64
  %1109 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1108
  %1110 = load i32, i32* %1109, align 4
  %1111 = sext i32 %1110 to i64
  %1112 = getelementptr inbounds [400 x i32], [400 x i32]* %1106, i64 0, i64 %1111
  store i32 0, i32* %1112, align 4
  %1113 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1114 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1113, i32 0, i32 4
  %1115 = load i32, i32* %37, align 4
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1116
  %1118 = load i32, i32* %1117, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds [400 x i32], [400 x i32]* %1114, i64 0, i64 %1119
  store i32 0, i32* %1120, align 4
  %1121 = load i32, i32* %37, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1122
  %1124 = load i32, i32* %1123, align 4
  %1125 = load i32, i32* %5, align 4
  %1126 = icmp eq i32 %1124, %1125
  br i1 %1126, label %1127, label %1136

1127:                                             ; preds = %1077
  %1128 = load i32, i32* %11, align 4
  %1129 = add nsw i32 %1128, 100
  %1130 = load i32, i32* %14, align 4
  %1131 = icmp slt i32 %1129, %1130
  br i1 %1131, label %1132, label %1136

1132:                                             ; preds = %1127
  %1133 = load i32, i32* %11, align 4
  %1134 = add nsw i32 %1133, 100
  %1135 = sub nsw i32 %1134, 1
  store i32 %1135, i32* %14, align 4
  br label %1136

1136:                                             ; preds = %1132, %1127, %1077
  br label %1137

1137:                                             ; preds = %1136
  %1138 = load i32, i32* %37, align 4
  %1139 = add nsw i32 %1138, 1
  store i32 %1139, i32* %37, align 4
  br label %1049, !llvm.loop !29

1140:                                             ; preds = %1049
  br label %1141

1141:                                             ; preds = %1140, %1016
  br label %1142

1142:                                             ; preds = %1141, %981
  br label %1143

1143:                                             ; preds = %1142
  br label %1144

1144:                                             ; preds = %1143
  %1145 = load i32, i32* %11, align 4
  %1146 = add nsw i32 %1145, 100
  %1147 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1148 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1147, i32 0, i32 0
  %1149 = load i32, i32* %26, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds [400 x i32], [400 x i32]* %1148, i64 0, i64 %1150
  %1152 = load i32, i32* %1151, align 4
  %1153 = icmp slt i32 %1146, %1152
  br i1 %1153, label %1154, label %1305

1154:                                             ; preds = %1144
  %1155 = load i32, i32* %26, align 4
  %1156 = sext i32 %1155 to i64
  %1157 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1156
  %1158 = load i8, i8* %1157, align 1
  %1159 = zext i8 %1158 to i32
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1161, label %1208

1161:                                             ; preds = %1154
  %1162 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1163 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1162, i32 0, i32 0
  %1164 = load i32, i32* %26, align 4
  %1165 = sext i32 %1164 to i64
  %1166 = getelementptr inbounds [400 x i32], [400 x i32]* %1163, i64 0, i64 %1165
  %1167 = load i32, i32* %1166, align 4
  %1168 = icmp eq i32 %1167, 100000
  br i1 %1168, label %1169, label %1179

1169:                                             ; preds = %1161
  %1170 = load i32, i32* %26, align 4
  %1171 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1172 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1171, i32 0, i32 5
  %1173 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1174 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1173, i32 0, i32 7
  %1175 = load i32, i32* %1174, align 4
  %1176 = add nsw i32 %1175, 1
  store i32 %1176, i32* %1174, align 4
  %1177 = sext i32 %1175 to i64
  %1178 = getelementptr inbounds [400 x i32], [400 x i32]* %1172, i64 0, i64 %1177
  store i32 %1170, i32* %1178, align 4
  br label %1179

1179:                                             ; preds = %1169, %1161
  %1180 = load i32, i32* %11, align 4
  %1181 = add nsw i32 %1180, 100
  %1182 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1183 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1182, i32 0, i32 0
  %1184 = load i32, i32* %26, align 4
  %1185 = sext i32 %1184 to i64
  %1186 = getelementptr inbounds [400 x i32], [400 x i32]* %1183, i64 0, i64 %1185
  store i32 %1181, i32* %1186, align 4
  %1187 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1188 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1187, i32 0, i32 1
  %1189 = load i32, i32* %26, align 4
  %1190 = sext i32 %1189 to i64
  %1191 = getelementptr inbounds [400 x i32], [400 x i32]* %1188, i64 0, i64 %1190
  store i32 100, i32* %1191, align 4
  %1192 = load i32, i32* %9, align 4
  %1193 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1194 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1193, i32 0, i32 2
  %1195 = load i32, i32* %26, align 4
  %1196 = sext i32 %1195 to i64
  %1197 = getelementptr inbounds [400 x i32], [400 x i32]* %1194, i64 0, i64 %1196
  store i32 %1192, i32* %1197, align 4
  %1198 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1199 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1198, i32 0, i32 3
  %1200 = load i32, i32* %26, align 4
  %1201 = sext i32 %1200 to i64
  %1202 = getelementptr inbounds [400 x i32], [400 x i32]* %1199, i64 0, i64 %1201
  store i32 0, i32* %1202, align 4
  %1203 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1204 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1203, i32 0, i32 4
  %1205 = load i32, i32* %26, align 4
  %1206 = sext i32 %1205 to i64
  %1207 = getelementptr inbounds [400 x i32], [400 x i32]* %1204, i64 0, i64 %1206
  store i32 0, i32* %1207, align 4
  br label %1304

1208:                                             ; preds = %1154
  %1209 = load i32, i32* %26, align 4
  %1210 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %1211 = call i32 @findstones(i32 %1209, i32 361, i32* %1210)
  store i32 %1211, i32* %13, align 4
  store i32 0, i32* %38, align 4
  br label %1212

1212:                                             ; preds = %1300, %1208
  %1213 = load i32, i32* %38, align 4
  %1214 = load i32, i32* %13, align 4
  %1215 = icmp slt i32 %1213, %1214
  br i1 %1215, label %1216, label %1303

1216:                                             ; preds = %1212
  %1217 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1218 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1217, i32 0, i32 0
  %1219 = load i32, i32* %38, align 4
  %1220 = sext i32 %1219 to i64
  %1221 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1220
  %1222 = load i32, i32* %1221, align 4
  %1223 = sext i32 %1222 to i64
  %1224 = getelementptr inbounds [400 x i32], [400 x i32]* %1218, i64 0, i64 %1223
  %1225 = load i32, i32* %1224, align 4
  %1226 = icmp eq i32 %1225, 100000
  br i1 %1226, label %1227, label %1240

1227:                                             ; preds = %1216
  %1228 = load i32, i32* %38, align 4
  %1229 = sext i32 %1228 to i64
  %1230 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1229
  %1231 = load i32, i32* %1230, align 4
  %1232 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1233 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1232, i32 0, i32 5
  %1234 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1235 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1234, i32 0, i32 7
  %1236 = load i32, i32* %1235, align 4
  %1237 = add nsw i32 %1236, 1
  store i32 %1237, i32* %1235, align 4
  %1238 = sext i32 %1236 to i64
  %1239 = getelementptr inbounds [400 x i32], [400 x i32]* %1233, i64 0, i64 %1238
  store i32 %1231, i32* %1239, align 4
  br label %1240

1240:                                             ; preds = %1227, %1216
  %1241 = load i32, i32* %11, align 4
  %1242 = add nsw i32 %1241, 100
  %1243 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1244 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1243, i32 0, i32 0
  %1245 = load i32, i32* %38, align 4
  %1246 = sext i32 %1245 to i64
  %1247 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1246
  %1248 = load i32, i32* %1247, align 4
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds [400 x i32], [400 x i32]* %1244, i64 0, i64 %1249
  store i32 %1242, i32* %1250, align 4
  %1251 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1252 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1251, i32 0, i32 1
  %1253 = load i32, i32* %38, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1254
  %1256 = load i32, i32* %1255, align 4
  %1257 = sext i32 %1256 to i64
  %1258 = getelementptr inbounds [400 x i32], [400 x i32]* %1252, i64 0, i64 %1257
  store i32 100, i32* %1258, align 4
  %1259 = load i32, i32* %9, align 4
  %1260 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1261 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1260, i32 0, i32 2
  %1262 = load i32, i32* %38, align 4
  %1263 = sext i32 %1262 to i64
  %1264 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1263
  %1265 = load i32, i32* %1264, align 4
  %1266 = sext i32 %1265 to i64
  %1267 = getelementptr inbounds [400 x i32], [400 x i32]* %1261, i64 0, i64 %1266
  store i32 %1259, i32* %1267, align 4
  %1268 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1269 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1268, i32 0, i32 3
  %1270 = load i32, i32* %38, align 4
  %1271 = sext i32 %1270 to i64
  %1272 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1271
  %1273 = load i32, i32* %1272, align 4
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds [400 x i32], [400 x i32]* %1269, i64 0, i64 %1274
  store i32 0, i32* %1275, align 4
  %1276 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1277 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1276, i32 0, i32 4
  %1278 = load i32, i32* %38, align 4
  %1279 = sext i32 %1278 to i64
  %1280 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1279
  %1281 = load i32, i32* %1280, align 4
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds [400 x i32], [400 x i32]* %1277, i64 0, i64 %1282
  store i32 0, i32* %1283, align 4
  %1284 = load i32, i32* %38, align 4
  %1285 = sext i32 %1284 to i64
  %1286 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1285
  %1287 = load i32, i32* %1286, align 4
  %1288 = load i32, i32* %5, align 4
  %1289 = icmp eq i32 %1287, %1288
  br i1 %1289, label %1290, label %1299

1290:                                             ; preds = %1240
  %1291 = load i32, i32* %11, align 4
  %1292 = add nsw i32 %1291, 100
  %1293 = load i32, i32* %14, align 4
  %1294 = icmp slt i32 %1292, %1293
  br i1 %1294, label %1295, label %1299

1295:                                             ; preds = %1290
  %1296 = load i32, i32* %11, align 4
  %1297 = add nsw i32 %1296, 100
  %1298 = sub nsw i32 %1297, 1
  store i32 %1298, i32* %14, align 4
  br label %1299

1299:                                             ; preds = %1295, %1290, %1240
  br label %1300

1300:                                             ; preds = %1299
  %1301 = load i32, i32* %38, align 4
  %1302 = add nsw i32 %1301, 1
  store i32 %1302, i32* %38, align 4
  br label %1212, !llvm.loop !30

1303:                                             ; preds = %1212
  br label %1304

1304:                                             ; preds = %1303, %1179
  br label %1305

1305:                                             ; preds = %1304, %1144
  br label %1306

1306:                                             ; preds = %1305
  br label %1307

1307:                                             ; preds = %1306, %973, %965, %957, %950, %942
  %1308 = load i32, i32* %22, align 4
  %1309 = sext i32 %1308 to i64
  %1310 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1309
  %1311 = load i8, i8* %1310, align 1
  %1312 = zext i8 %1311 to i32
  %1313 = load i32, i32* %7, align 4
  %1314 = icmp eq i32 %1312, %1313
  br i1 %1314, label %1315, label %1525

1315:                                             ; preds = %1307
  %1316 = load i32, i32* %21, align 4
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1317
  %1319 = load i8, i8* %1318, align 1
  %1320 = zext i8 %1319 to i32
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1322, label %1525

1322:                                             ; preds = %1315
  %1323 = load i32, i32* %26, align 4
  %1324 = sext i32 %1323 to i64
  %1325 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1324
  %1326 = load i8, i8* %1325, align 1
  %1327 = zext i8 %1326 to i32
  %1328 = icmp eq i32 %1327, 0
  br i1 %1328, label %1329, label %1525

1329:                                             ; preds = %1322
  %1330 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1331 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1330, i32 0, i32 3
  %1332 = load i32, i32* %9, align 4
  %1333 = sext i32 %1332 to i64
  %1334 = getelementptr inbounds [400 x i32], [400 x i32]* %1331, i64 0, i64 %1333
  %1335 = load i32, i32* %1334, align 4
  %1336 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1337 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1336, i32 0, i32 4
  %1338 = load i32, i32* %9, align 4
  %1339 = sext i32 %1338 to i64
  %1340 = getelementptr inbounds [400 x i32], [400 x i32]* %1337, i64 0, i64 %1339
  %1341 = load i32, i32* %1340, align 4
  %1342 = load i32, i32* %21, align 4
  %1343 = load i32, i32* %26, align 4
  %1344 = load i32, i32* %7, align 4
  %1345 = call i32 @common_vulnerabilities(i32 %1335, i32 %1341, i32 %1342, i32 %1343, i32 %1344)
  %1346 = icmp ne i32 %1345, 0
  br i1 %1346, label %1525, label %1347

1347:                                             ; preds = %1329
  %1348 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1349 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1348, i32 0, i32 0
  %1350 = load i32, i32* %22, align 4
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds [400 x i32], [400 x i32]* %1349, i64 0, i64 %1351
  %1353 = load i32, i32* %1352, align 4
  %1354 = load i32, i32* %11, align 4
  %1355 = add nsw i32 %1354, 100
  %1356 = icmp sgt i32 %1353, %1355
  br i1 %1356, label %1357, label %1525

1357:                                             ; preds = %1347
  br label %1358

1358:                                             ; preds = %1357
  %1359 = load i32, i32* %11, align 4
  %1360 = add nsw i32 %1359, 100
  %1361 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1362 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1361, i32 0, i32 0
  %1363 = load i32, i32* %22, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds [400 x i32], [400 x i32]* %1362, i64 0, i64 %1364
  %1366 = load i32, i32* %1365, align 4
  %1367 = icmp slt i32 %1360, %1366
  br i1 %1367, label %1368, label %1523

1368:                                             ; preds = %1358
  %1369 = load i32, i32* %22, align 4
  %1370 = sext i32 %1369 to i64
  %1371 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1370
  %1372 = load i8, i8* %1371, align 1
  %1373 = zext i8 %1372 to i32
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1375, label %1424

1375:                                             ; preds = %1368
  %1376 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1377 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1376, i32 0, i32 0
  %1378 = load i32, i32* %22, align 4
  %1379 = sext i32 %1378 to i64
  %1380 = getelementptr inbounds [400 x i32], [400 x i32]* %1377, i64 0, i64 %1379
  %1381 = load i32, i32* %1380, align 4
  %1382 = icmp eq i32 %1381, 100000
  br i1 %1382, label %1383, label %1393

1383:                                             ; preds = %1375
  %1384 = load i32, i32* %22, align 4
  %1385 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1386 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1385, i32 0, i32 5
  %1387 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1388 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1387, i32 0, i32 7
  %1389 = load i32, i32* %1388, align 4
  %1390 = add nsw i32 %1389, 1
  store i32 %1390, i32* %1388, align 4
  %1391 = sext i32 %1389 to i64
  %1392 = getelementptr inbounds [400 x i32], [400 x i32]* %1386, i64 0, i64 %1391
  store i32 %1384, i32* %1392, align 4
  br label %1393

1393:                                             ; preds = %1383, %1375
  %1394 = load i32, i32* %11, align 4
  %1395 = add nsw i32 %1394, 100
  %1396 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1397 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1396, i32 0, i32 0
  %1398 = load i32, i32* %22, align 4
  %1399 = sext i32 %1398 to i64
  %1400 = getelementptr inbounds [400 x i32], [400 x i32]* %1397, i64 0, i64 %1399
  store i32 %1395, i32* %1400, align 4
  %1401 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1402 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1401, i32 0, i32 1
  %1403 = load i32, i32* %22, align 4
  %1404 = sext i32 %1403 to i64
  %1405 = getelementptr inbounds [400 x i32], [400 x i32]* %1402, i64 0, i64 %1404
  store i32 100, i32* %1405, align 4
  %1406 = load i32, i32* %9, align 4
  %1407 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1408 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1407, i32 0, i32 2
  %1409 = load i32, i32* %22, align 4
  %1410 = sext i32 %1409 to i64
  %1411 = getelementptr inbounds [400 x i32], [400 x i32]* %1408, i64 0, i64 %1410
  store i32 %1406, i32* %1411, align 4
  %1412 = load i32, i32* %21, align 4
  %1413 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1414 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1413, i32 0, i32 3
  %1415 = load i32, i32* %22, align 4
  %1416 = sext i32 %1415 to i64
  %1417 = getelementptr inbounds [400 x i32], [400 x i32]* %1414, i64 0, i64 %1416
  store i32 %1412, i32* %1417, align 4
  %1418 = load i32, i32* %26, align 4
  %1419 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1420 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1419, i32 0, i32 4
  %1421 = load i32, i32* %22, align 4
  %1422 = sext i32 %1421 to i64
  %1423 = getelementptr inbounds [400 x i32], [400 x i32]* %1420, i64 0, i64 %1422
  store i32 %1418, i32* %1423, align 4
  br label %1522

1424:                                             ; preds = %1368
  %1425 = load i32, i32* %22, align 4
  %1426 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %1427 = call i32 @findstones(i32 %1425, i32 361, i32* %1426)
  store i32 %1427, i32* %13, align 4
  store i32 0, i32* %39, align 4
  br label %1428

1428:                                             ; preds = %1518, %1424
  %1429 = load i32, i32* %39, align 4
  %1430 = load i32, i32* %13, align 4
  %1431 = icmp slt i32 %1429, %1430
  br i1 %1431, label %1432, label %1521

1432:                                             ; preds = %1428
  %1433 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1434 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1433, i32 0, i32 0
  %1435 = load i32, i32* %39, align 4
  %1436 = sext i32 %1435 to i64
  %1437 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1436
  %1438 = load i32, i32* %1437, align 4
  %1439 = sext i32 %1438 to i64
  %1440 = getelementptr inbounds [400 x i32], [400 x i32]* %1434, i64 0, i64 %1439
  %1441 = load i32, i32* %1440, align 4
  %1442 = icmp eq i32 %1441, 100000
  br i1 %1442, label %1443, label %1456

1443:                                             ; preds = %1432
  %1444 = load i32, i32* %39, align 4
  %1445 = sext i32 %1444 to i64
  %1446 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1445
  %1447 = load i32, i32* %1446, align 4
  %1448 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1449 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1448, i32 0, i32 5
  %1450 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1451 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1450, i32 0, i32 7
  %1452 = load i32, i32* %1451, align 4
  %1453 = add nsw i32 %1452, 1
  store i32 %1453, i32* %1451, align 4
  %1454 = sext i32 %1452 to i64
  %1455 = getelementptr inbounds [400 x i32], [400 x i32]* %1449, i64 0, i64 %1454
  store i32 %1447, i32* %1455, align 4
  br label %1456

1456:                                             ; preds = %1443, %1432
  %1457 = load i32, i32* %11, align 4
  %1458 = add nsw i32 %1457, 100
  %1459 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1460 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1459, i32 0, i32 0
  %1461 = load i32, i32* %39, align 4
  %1462 = sext i32 %1461 to i64
  %1463 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1462
  %1464 = load i32, i32* %1463, align 4
  %1465 = sext i32 %1464 to i64
  %1466 = getelementptr inbounds [400 x i32], [400 x i32]* %1460, i64 0, i64 %1465
  store i32 %1458, i32* %1466, align 4
  %1467 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1468 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1467, i32 0, i32 1
  %1469 = load i32, i32* %39, align 4
  %1470 = sext i32 %1469 to i64
  %1471 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1470
  %1472 = load i32, i32* %1471, align 4
  %1473 = sext i32 %1472 to i64
  %1474 = getelementptr inbounds [400 x i32], [400 x i32]* %1468, i64 0, i64 %1473
  store i32 100, i32* %1474, align 4
  %1475 = load i32, i32* %9, align 4
  %1476 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1477 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1476, i32 0, i32 2
  %1478 = load i32, i32* %39, align 4
  %1479 = sext i32 %1478 to i64
  %1480 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1479
  %1481 = load i32, i32* %1480, align 4
  %1482 = sext i32 %1481 to i64
  %1483 = getelementptr inbounds [400 x i32], [400 x i32]* %1477, i64 0, i64 %1482
  store i32 %1475, i32* %1483, align 4
  %1484 = load i32, i32* %21, align 4
  %1485 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1486 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1485, i32 0, i32 3
  %1487 = load i32, i32* %39, align 4
  %1488 = sext i32 %1487 to i64
  %1489 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1488
  %1490 = load i32, i32* %1489, align 4
  %1491 = sext i32 %1490 to i64
  %1492 = getelementptr inbounds [400 x i32], [400 x i32]* %1486, i64 0, i64 %1491
  store i32 %1484, i32* %1492, align 4
  %1493 = load i32, i32* %26, align 4
  %1494 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1495 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1494, i32 0, i32 4
  %1496 = load i32, i32* %39, align 4
  %1497 = sext i32 %1496 to i64
  %1498 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1497
  %1499 = load i32, i32* %1498, align 4
  %1500 = sext i32 %1499 to i64
  %1501 = getelementptr inbounds [400 x i32], [400 x i32]* %1495, i64 0, i64 %1500
  store i32 %1493, i32* %1501, align 4
  %1502 = load i32, i32* %39, align 4
  %1503 = sext i32 %1502 to i64
  %1504 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1503
  %1505 = load i32, i32* %1504, align 4
  %1506 = load i32, i32* %5, align 4
  %1507 = icmp eq i32 %1505, %1506
  br i1 %1507, label %1508, label %1517

1508:                                             ; preds = %1456
  %1509 = load i32, i32* %11, align 4
  %1510 = add nsw i32 %1509, 100
  %1511 = load i32, i32* %14, align 4
  %1512 = icmp slt i32 %1510, %1511
  br i1 %1512, label %1513, label %1517

1513:                                             ; preds = %1508
  %1514 = load i32, i32* %11, align 4
  %1515 = add nsw i32 %1514, 100
  %1516 = sub nsw i32 %1515, 1
  store i32 %1516, i32* %14, align 4
  br label %1517

1517:                                             ; preds = %1513, %1508, %1456
  br label %1518

1518:                                             ; preds = %1517
  %1519 = load i32, i32* %39, align 4
  %1520 = add nsw i32 %1519, 1
  store i32 %1520, i32* %39, align 4
  br label %1428, !llvm.loop !31

1521:                                             ; preds = %1428
  br label %1522

1522:                                             ; preds = %1521, %1393
  br label %1523

1523:                                             ; preds = %1522, %1358
  br label %1524

1524:                                             ; preds = %1523
  br label %1525

1525:                                             ; preds = %1524, %1347, %1329, %1322, %1315, %1307
  %1526 = load i32, i32* %26, align 4
  %1527 = sext i32 %1526 to i64
  %1528 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1527
  %1529 = load i8, i8* %1528, align 1
  %1530 = zext i8 %1529 to i32
  %1531 = icmp eq i32 %1530, 0
  br i1 %1531, label %1532, label %3180

1532:                                             ; preds = %1525
  %1533 = load i32, i32* %24, align 4
  %1534 = sext i32 %1533 to i64
  %1535 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1534
  %1536 = load i8, i8* %1535, align 1
  %1537 = zext i8 %1536 to i32
  %1538 = load i32, i32* %7, align 4
  %1539 = icmp eq i32 %1537, %1538
  br i1 %1539, label %1540, label %3180

1540:                                             ; preds = %1532
  %1541 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1542 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1541, i32 0, i32 0
  %1543 = load i32, i32* %24, align 4
  %1544 = sext i32 %1543 to i64
  %1545 = getelementptr inbounds [400 x i32], [400 x i32]* %1542, i64 0, i64 %1544
  %1546 = load i32, i32* %1545, align 4
  %1547 = load i32, i32* %11, align 4
  %1548 = add nsw i32 %1547, 200
  %1549 = icmp sgt i32 %1546, %1548
  br i1 %1549, label %1550, label %3180

1550:                                             ; preds = %1540
  %1551 = load i32, i32* %26, align 4
  %1552 = load i32, i32* %8, align 4
  %1553 = call i32 @approxlib(i32 %1551, i32 %1552, i32 3, i32* null)
  %1554 = icmp sle i32 %1553, 2
  br i1 %1554, label %1555, label %3180

1555:                                             ; preds = %1550
  %1556 = load i32, i32* %22, align 4
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1557
  %1559 = load i8, i8* %1558, align 1
  %1560 = zext i8 %1559 to i32
  %1561 = icmp eq i32 %1560, 0
  br i1 %1561, label %1562, label %2367

1562:                                             ; preds = %1555
  %1563 = load i32, i32* %22, align 4
  %1564 = load i32, i32* %7, align 4
  %1565 = call i32 @approxlib(i32 %1563, i32 %1564, i32 3, i32* null)
  %1566 = icmp sge i32 %1565, 3
  br i1 %1566, label %1567, label %2367

1567:                                             ; preds = %1562
  %1568 = load i32, i32* %21, align 4
  %1569 = sext i32 %1568 to i64
  %1570 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1569
  %1571 = load i8, i8* %1570, align 1
  %1572 = zext i8 %1571 to i32
  %1573 = load i32, i32* %7, align 4
  %1574 = icmp eq i32 %1572, %1573
  br i1 %1574, label %1605, label %1575

1575:                                             ; preds = %1567
  %1576 = load i32, i32* %21, align 4
  %1577 = sext i32 %1576 to i64
  %1578 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1577
  %1579 = load i8, i8* %1578, align 1
  %1580 = zext i8 %1579 to i32
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1582, label %2367

1582:                                             ; preds = %1575
  %1583 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1584 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1583, i32 0, i32 3
  %1585 = load i32, i32* %9, align 4
  %1586 = sext i32 %1585 to i64
  %1587 = getelementptr inbounds [400 x i32], [400 x i32]* %1584, i64 0, i64 %1586
  %1588 = load i32, i32* %1587, align 4
  %1589 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1590 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1589, i32 0, i32 4
  %1591 = load i32, i32* %9, align 4
  %1592 = sext i32 %1591 to i64
  %1593 = getelementptr inbounds [400 x i32], [400 x i32]* %1590, i64 0, i64 %1592
  %1594 = load i32, i32* %1593, align 4
  %1595 = load i32, i32* %21, align 4
  %1596 = load i32, i32* %26, align 4
  %1597 = load i32, i32* %7, align 4
  %1598 = call i32 @common_vulnerabilities(i32 %1588, i32 %1594, i32 %1595, i32 %1596, i32 %1597)
  %1599 = icmp ne i32 %1598, 0
  br i1 %1599, label %2367, label %1600

1600:                                             ; preds = %1582
  %1601 = load i32, i32* %21, align 4
  %1602 = load i32, i32* %8, align 4
  %1603 = call i32 @approxlib(i32 %1601, i32 %1602, i32 3, i32* null)
  %1604 = icmp sle i32 %1603, 2
  br i1 %1604, label %1605, label %2367

1605:                                             ; preds = %1600, %1567
  %1606 = load i32, i32* %25, align 4
  %1607 = sext i32 %1606 to i64
  %1608 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1607
  %1609 = load i8, i8* %1608, align 1
  %1610 = zext i8 %1609 to i32
  %1611 = load i32, i32* %7, align 4
  %1612 = icmp eq i32 %1610, %1611
  br i1 %1612, label %1643, label %1613

1613:                                             ; preds = %1605
  %1614 = load i32, i32* %25, align 4
  %1615 = sext i32 %1614 to i64
  %1616 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1615
  %1617 = load i8, i8* %1616, align 1
  %1618 = zext i8 %1617 to i32
  %1619 = icmp eq i32 %1618, 0
  br i1 %1619, label %1620, label %2367

1620:                                             ; preds = %1613
  %1621 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1622 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1621, i32 0, i32 3
  %1623 = load i32, i32* %9, align 4
  %1624 = sext i32 %1623 to i64
  %1625 = getelementptr inbounds [400 x i32], [400 x i32]* %1622, i64 0, i64 %1624
  %1626 = load i32, i32* %1625, align 4
  %1627 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1628 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1627, i32 0, i32 4
  %1629 = load i32, i32* %9, align 4
  %1630 = sext i32 %1629 to i64
  %1631 = getelementptr inbounds [400 x i32], [400 x i32]* %1628, i64 0, i64 %1630
  %1632 = load i32, i32* %1631, align 4
  %1633 = load i32, i32* %25, align 4
  %1634 = load i32, i32* %26, align 4
  %1635 = load i32, i32* %7, align 4
  %1636 = call i32 @common_vulnerabilities(i32 %1626, i32 %1632, i32 %1633, i32 %1634, i32 %1635)
  %1637 = icmp ne i32 %1636, 0
  br i1 %1637, label %2367, label %1638

1638:                                             ; preds = %1620
  %1639 = load i32, i32* %25, align 4
  %1640 = load i32, i32* %8, align 4
  %1641 = call i32 @approxlib(i32 %1639, i32 %1640, i32 3, i32* null)
  %1642 = icmp sle i32 %1641, 2
  br i1 %1642, label %1643, label %2367

1643:                                             ; preds = %1638, %1605
  %1644 = load i32, i32* %21, align 4
  %1645 = sext i32 %1644 to i64
  %1646 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1645
  %1647 = load i8, i8* %1646, align 1
  %1648 = zext i8 %1647 to i32
  %1649 = icmp eq i32 %1648, 0
  br i1 %1649, label %1650, label %1825

1650:                                             ; preds = %1643
  %1651 = load i32, i32* %25, align 4
  %1652 = sext i32 %1651 to i64
  %1653 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1652
  %1654 = load i8, i8* %1653, align 1
  %1655 = zext i8 %1654 to i32
  %1656 = icmp eq i32 %1655, 0
  br i1 %1656, label %1657, label %1825

1657:                                             ; preds = %1650
  br label %1658

1658:                                             ; preds = %1657
  %1659 = load i32, i32* %11, align 4
  %1660 = add nsw i32 %1659, 200
  %1661 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1662 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1661, i32 0, i32 0
  %1663 = load i32, i32* %24, align 4
  %1664 = sext i32 %1663 to i64
  %1665 = getelementptr inbounds [400 x i32], [400 x i32]* %1662, i64 0, i64 %1664
  %1666 = load i32, i32* %1665, align 4
  %1667 = icmp slt i32 %1660, %1666
  br i1 %1667, label %1668, label %1823

1668:                                             ; preds = %1658
  %1669 = load i32, i32* %24, align 4
  %1670 = sext i32 %1669 to i64
  %1671 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1670
  %1672 = load i8, i8* %1671, align 1
  %1673 = zext i8 %1672 to i32
  %1674 = icmp eq i32 %1673, 0
  br i1 %1674, label %1675, label %1724

1675:                                             ; preds = %1668
  %1676 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1677 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1676, i32 0, i32 0
  %1678 = load i32, i32* %24, align 4
  %1679 = sext i32 %1678 to i64
  %1680 = getelementptr inbounds [400 x i32], [400 x i32]* %1677, i64 0, i64 %1679
  %1681 = load i32, i32* %1680, align 4
  %1682 = icmp eq i32 %1681, 100000
  br i1 %1682, label %1683, label %1693

1683:                                             ; preds = %1675
  %1684 = load i32, i32* %24, align 4
  %1685 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1686 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1685, i32 0, i32 5
  %1687 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1688 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1687, i32 0, i32 7
  %1689 = load i32, i32* %1688, align 4
  %1690 = add nsw i32 %1689, 1
  store i32 %1690, i32* %1688, align 4
  %1691 = sext i32 %1689 to i64
  %1692 = getelementptr inbounds [400 x i32], [400 x i32]* %1686, i64 0, i64 %1691
  store i32 %1684, i32* %1692, align 4
  br label %1693

1693:                                             ; preds = %1683, %1675
  %1694 = load i32, i32* %11, align 4
  %1695 = add nsw i32 %1694, 200
  %1696 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1697 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1696, i32 0, i32 0
  %1698 = load i32, i32* %24, align 4
  %1699 = sext i32 %1698 to i64
  %1700 = getelementptr inbounds [400 x i32], [400 x i32]* %1697, i64 0, i64 %1699
  store i32 %1695, i32* %1700, align 4
  %1701 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1702 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1701, i32 0, i32 1
  %1703 = load i32, i32* %24, align 4
  %1704 = sext i32 %1703 to i64
  %1705 = getelementptr inbounds [400 x i32], [400 x i32]* %1702, i64 0, i64 %1704
  store i32 200, i32* %1705, align 4
  %1706 = load i32, i32* %9, align 4
  %1707 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1708 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1707, i32 0, i32 2
  %1709 = load i32, i32* %24, align 4
  %1710 = sext i32 %1709 to i64
  %1711 = getelementptr inbounds [400 x i32], [400 x i32]* %1708, i64 0, i64 %1710
  store i32 %1706, i32* %1711, align 4
  %1712 = load i32, i32* %21, align 4
  %1713 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1714 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1713, i32 0, i32 3
  %1715 = load i32, i32* %24, align 4
  %1716 = sext i32 %1715 to i64
  %1717 = getelementptr inbounds [400 x i32], [400 x i32]* %1714, i64 0, i64 %1716
  store i32 %1712, i32* %1717, align 4
  %1718 = load i32, i32* %25, align 4
  %1719 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1720 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1719, i32 0, i32 4
  %1721 = load i32, i32* %24, align 4
  %1722 = sext i32 %1721 to i64
  %1723 = getelementptr inbounds [400 x i32], [400 x i32]* %1720, i64 0, i64 %1722
  store i32 %1718, i32* %1723, align 4
  br label %1822

1724:                                             ; preds = %1668
  %1725 = load i32, i32* %24, align 4
  %1726 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %1727 = call i32 @findstones(i32 %1725, i32 361, i32* %1726)
  store i32 %1727, i32* %13, align 4
  store i32 0, i32* %40, align 4
  br label %1728

1728:                                             ; preds = %1818, %1724
  %1729 = load i32, i32* %40, align 4
  %1730 = load i32, i32* %13, align 4
  %1731 = icmp slt i32 %1729, %1730
  br i1 %1731, label %1732, label %1821

1732:                                             ; preds = %1728
  %1733 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1734 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1733, i32 0, i32 0
  %1735 = load i32, i32* %40, align 4
  %1736 = sext i32 %1735 to i64
  %1737 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1736
  %1738 = load i32, i32* %1737, align 4
  %1739 = sext i32 %1738 to i64
  %1740 = getelementptr inbounds [400 x i32], [400 x i32]* %1734, i64 0, i64 %1739
  %1741 = load i32, i32* %1740, align 4
  %1742 = icmp eq i32 %1741, 100000
  br i1 %1742, label %1743, label %1756

1743:                                             ; preds = %1732
  %1744 = load i32, i32* %40, align 4
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1745
  %1747 = load i32, i32* %1746, align 4
  %1748 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1749 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1748, i32 0, i32 5
  %1750 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1751 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1750, i32 0, i32 7
  %1752 = load i32, i32* %1751, align 4
  %1753 = add nsw i32 %1752, 1
  store i32 %1753, i32* %1751, align 4
  %1754 = sext i32 %1752 to i64
  %1755 = getelementptr inbounds [400 x i32], [400 x i32]* %1749, i64 0, i64 %1754
  store i32 %1747, i32* %1755, align 4
  br label %1756

1756:                                             ; preds = %1743, %1732
  %1757 = load i32, i32* %11, align 4
  %1758 = add nsw i32 %1757, 200
  %1759 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1760 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1759, i32 0, i32 0
  %1761 = load i32, i32* %40, align 4
  %1762 = sext i32 %1761 to i64
  %1763 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1762
  %1764 = load i32, i32* %1763, align 4
  %1765 = sext i32 %1764 to i64
  %1766 = getelementptr inbounds [400 x i32], [400 x i32]* %1760, i64 0, i64 %1765
  store i32 %1758, i32* %1766, align 4
  %1767 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1768 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1767, i32 0, i32 1
  %1769 = load i32, i32* %40, align 4
  %1770 = sext i32 %1769 to i64
  %1771 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1770
  %1772 = load i32, i32* %1771, align 4
  %1773 = sext i32 %1772 to i64
  %1774 = getelementptr inbounds [400 x i32], [400 x i32]* %1768, i64 0, i64 %1773
  store i32 200, i32* %1774, align 4
  %1775 = load i32, i32* %9, align 4
  %1776 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1777 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1776, i32 0, i32 2
  %1778 = load i32, i32* %40, align 4
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1779
  %1781 = load i32, i32* %1780, align 4
  %1782 = sext i32 %1781 to i64
  %1783 = getelementptr inbounds [400 x i32], [400 x i32]* %1777, i64 0, i64 %1782
  store i32 %1775, i32* %1783, align 4
  %1784 = load i32, i32* %21, align 4
  %1785 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1786 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1785, i32 0, i32 3
  %1787 = load i32, i32* %40, align 4
  %1788 = sext i32 %1787 to i64
  %1789 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1788
  %1790 = load i32, i32* %1789, align 4
  %1791 = sext i32 %1790 to i64
  %1792 = getelementptr inbounds [400 x i32], [400 x i32]* %1786, i64 0, i64 %1791
  store i32 %1784, i32* %1792, align 4
  %1793 = load i32, i32* %25, align 4
  %1794 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1795 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1794, i32 0, i32 4
  %1796 = load i32, i32* %40, align 4
  %1797 = sext i32 %1796 to i64
  %1798 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1797
  %1799 = load i32, i32* %1798, align 4
  %1800 = sext i32 %1799 to i64
  %1801 = getelementptr inbounds [400 x i32], [400 x i32]* %1795, i64 0, i64 %1800
  store i32 %1793, i32* %1801, align 4
  %1802 = load i32, i32* %40, align 4
  %1803 = sext i32 %1802 to i64
  %1804 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1803
  %1805 = load i32, i32* %1804, align 4
  %1806 = load i32, i32* %5, align 4
  %1807 = icmp eq i32 %1805, %1806
  br i1 %1807, label %1808, label %1817

1808:                                             ; preds = %1756
  %1809 = load i32, i32* %11, align 4
  %1810 = add nsw i32 %1809, 200
  %1811 = load i32, i32* %14, align 4
  %1812 = icmp slt i32 %1810, %1811
  br i1 %1812, label %1813, label %1817

1813:                                             ; preds = %1808
  %1814 = load i32, i32* %11, align 4
  %1815 = add nsw i32 %1814, 200
  %1816 = sub nsw i32 %1815, 1
  store i32 %1816, i32* %14, align 4
  br label %1817

1817:                                             ; preds = %1813, %1808, %1756
  br label %1818

1818:                                             ; preds = %1817
  %1819 = load i32, i32* %40, align 4
  %1820 = add nsw i32 %1819, 1
  store i32 %1820, i32* %40, align 4
  br label %1728, !llvm.loop !32

1821:                                             ; preds = %1728
  br label %1822

1822:                                             ; preds = %1821, %1693
  br label %1823

1823:                                             ; preds = %1822, %1658
  br label %1824

1824:                                             ; preds = %1823
  br label %2366

1825:                                             ; preds = %1650, %1643
  %1826 = load i32, i32* %21, align 4
  %1827 = sext i32 %1826 to i64
  %1828 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1827
  %1829 = load i8, i8* %1828, align 1
  %1830 = zext i8 %1829 to i32
  %1831 = icmp eq i32 %1830, 0
  br i1 %1831, label %1832, label %2005

1832:                                             ; preds = %1825
  %1833 = load i32, i32* %25, align 4
  %1834 = sext i32 %1833 to i64
  %1835 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1834
  %1836 = load i8, i8* %1835, align 1
  %1837 = zext i8 %1836 to i32
  %1838 = icmp ne i32 %1837, 0
  br i1 %1838, label %1839, label %2005

1839:                                             ; preds = %1832
  br label %1840

1840:                                             ; preds = %1839
  %1841 = load i32, i32* %11, align 4
  %1842 = add nsw i32 %1841, 200
  %1843 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1844 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1843, i32 0, i32 0
  %1845 = load i32, i32* %24, align 4
  %1846 = sext i32 %1845 to i64
  %1847 = getelementptr inbounds [400 x i32], [400 x i32]* %1844, i64 0, i64 %1846
  %1848 = load i32, i32* %1847, align 4
  %1849 = icmp slt i32 %1842, %1848
  br i1 %1849, label %1850, label %2003

1850:                                             ; preds = %1840
  %1851 = load i32, i32* %24, align 4
  %1852 = sext i32 %1851 to i64
  %1853 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1852
  %1854 = load i8, i8* %1853, align 1
  %1855 = zext i8 %1854 to i32
  %1856 = icmp eq i32 %1855, 0
  br i1 %1856, label %1857, label %1905

1857:                                             ; preds = %1850
  %1858 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1859 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1858, i32 0, i32 0
  %1860 = load i32, i32* %24, align 4
  %1861 = sext i32 %1860 to i64
  %1862 = getelementptr inbounds [400 x i32], [400 x i32]* %1859, i64 0, i64 %1861
  %1863 = load i32, i32* %1862, align 4
  %1864 = icmp eq i32 %1863, 100000
  br i1 %1864, label %1865, label %1875

1865:                                             ; preds = %1857
  %1866 = load i32, i32* %24, align 4
  %1867 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1868 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1867, i32 0, i32 5
  %1869 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1870 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1869, i32 0, i32 7
  %1871 = load i32, i32* %1870, align 4
  %1872 = add nsw i32 %1871, 1
  store i32 %1872, i32* %1870, align 4
  %1873 = sext i32 %1871 to i64
  %1874 = getelementptr inbounds [400 x i32], [400 x i32]* %1868, i64 0, i64 %1873
  store i32 %1866, i32* %1874, align 4
  br label %1875

1875:                                             ; preds = %1865, %1857
  %1876 = load i32, i32* %11, align 4
  %1877 = add nsw i32 %1876, 200
  %1878 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1879 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1878, i32 0, i32 0
  %1880 = load i32, i32* %24, align 4
  %1881 = sext i32 %1880 to i64
  %1882 = getelementptr inbounds [400 x i32], [400 x i32]* %1879, i64 0, i64 %1881
  store i32 %1877, i32* %1882, align 4
  %1883 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1884 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1883, i32 0, i32 1
  %1885 = load i32, i32* %24, align 4
  %1886 = sext i32 %1885 to i64
  %1887 = getelementptr inbounds [400 x i32], [400 x i32]* %1884, i64 0, i64 %1886
  store i32 200, i32* %1887, align 4
  %1888 = load i32, i32* %9, align 4
  %1889 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1890 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1889, i32 0, i32 2
  %1891 = load i32, i32* %24, align 4
  %1892 = sext i32 %1891 to i64
  %1893 = getelementptr inbounds [400 x i32], [400 x i32]* %1890, i64 0, i64 %1892
  store i32 %1888, i32* %1893, align 4
  %1894 = load i32, i32* %21, align 4
  %1895 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1896 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1895, i32 0, i32 3
  %1897 = load i32, i32* %24, align 4
  %1898 = sext i32 %1897 to i64
  %1899 = getelementptr inbounds [400 x i32], [400 x i32]* %1896, i64 0, i64 %1898
  store i32 %1894, i32* %1899, align 4
  %1900 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1901 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1900, i32 0, i32 4
  %1902 = load i32, i32* %24, align 4
  %1903 = sext i32 %1902 to i64
  %1904 = getelementptr inbounds [400 x i32], [400 x i32]* %1901, i64 0, i64 %1903
  store i32 0, i32* %1904, align 4
  br label %2002

1905:                                             ; preds = %1850
  %1906 = load i32, i32* %24, align 4
  %1907 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %1908 = call i32 @findstones(i32 %1906, i32 361, i32* %1907)
  store i32 %1908, i32* %13, align 4
  store i32 0, i32* %41, align 4
  br label %1909

1909:                                             ; preds = %1998, %1905
  %1910 = load i32, i32* %41, align 4
  %1911 = load i32, i32* %13, align 4
  %1912 = icmp slt i32 %1910, %1911
  br i1 %1912, label %1913, label %2001

1913:                                             ; preds = %1909
  %1914 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1915 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1914, i32 0, i32 0
  %1916 = load i32, i32* %41, align 4
  %1917 = sext i32 %1916 to i64
  %1918 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1917
  %1919 = load i32, i32* %1918, align 4
  %1920 = sext i32 %1919 to i64
  %1921 = getelementptr inbounds [400 x i32], [400 x i32]* %1915, i64 0, i64 %1920
  %1922 = load i32, i32* %1921, align 4
  %1923 = icmp eq i32 %1922, 100000
  br i1 %1923, label %1924, label %1937

1924:                                             ; preds = %1913
  %1925 = load i32, i32* %41, align 4
  %1926 = sext i32 %1925 to i64
  %1927 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1926
  %1928 = load i32, i32* %1927, align 4
  %1929 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1930 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1929, i32 0, i32 5
  %1931 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1932 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1931, i32 0, i32 7
  %1933 = load i32, i32* %1932, align 4
  %1934 = add nsw i32 %1933, 1
  store i32 %1934, i32* %1932, align 4
  %1935 = sext i32 %1933 to i64
  %1936 = getelementptr inbounds [400 x i32], [400 x i32]* %1930, i64 0, i64 %1935
  store i32 %1928, i32* %1936, align 4
  br label %1937

1937:                                             ; preds = %1924, %1913
  %1938 = load i32, i32* %11, align 4
  %1939 = add nsw i32 %1938, 200
  %1940 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1941 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1940, i32 0, i32 0
  %1942 = load i32, i32* %41, align 4
  %1943 = sext i32 %1942 to i64
  %1944 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1943
  %1945 = load i32, i32* %1944, align 4
  %1946 = sext i32 %1945 to i64
  %1947 = getelementptr inbounds [400 x i32], [400 x i32]* %1941, i64 0, i64 %1946
  store i32 %1939, i32* %1947, align 4
  %1948 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1949 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1948, i32 0, i32 1
  %1950 = load i32, i32* %41, align 4
  %1951 = sext i32 %1950 to i64
  %1952 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1951
  %1953 = load i32, i32* %1952, align 4
  %1954 = sext i32 %1953 to i64
  %1955 = getelementptr inbounds [400 x i32], [400 x i32]* %1949, i64 0, i64 %1954
  store i32 200, i32* %1955, align 4
  %1956 = load i32, i32* %9, align 4
  %1957 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1958 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1957, i32 0, i32 2
  %1959 = load i32, i32* %41, align 4
  %1960 = sext i32 %1959 to i64
  %1961 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1960
  %1962 = load i32, i32* %1961, align 4
  %1963 = sext i32 %1962 to i64
  %1964 = getelementptr inbounds [400 x i32], [400 x i32]* %1958, i64 0, i64 %1963
  store i32 %1956, i32* %1964, align 4
  %1965 = load i32, i32* %21, align 4
  %1966 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1967 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1966, i32 0, i32 3
  %1968 = load i32, i32* %41, align 4
  %1969 = sext i32 %1968 to i64
  %1970 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1969
  %1971 = load i32, i32* %1970, align 4
  %1972 = sext i32 %1971 to i64
  %1973 = getelementptr inbounds [400 x i32], [400 x i32]* %1967, i64 0, i64 %1972
  store i32 %1965, i32* %1973, align 4
  %1974 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %1975 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %1974, i32 0, i32 4
  %1976 = load i32, i32* %41, align 4
  %1977 = sext i32 %1976 to i64
  %1978 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1977
  %1979 = load i32, i32* %1978, align 4
  %1980 = sext i32 %1979 to i64
  %1981 = getelementptr inbounds [400 x i32], [400 x i32]* %1975, i64 0, i64 %1980
  store i32 0, i32* %1981, align 4
  %1982 = load i32, i32* %41, align 4
  %1983 = sext i32 %1982 to i64
  %1984 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %1983
  %1985 = load i32, i32* %1984, align 4
  %1986 = load i32, i32* %5, align 4
  %1987 = icmp eq i32 %1985, %1986
  br i1 %1987, label %1988, label %1997

1988:                                             ; preds = %1937
  %1989 = load i32, i32* %11, align 4
  %1990 = add nsw i32 %1989, 200
  %1991 = load i32, i32* %14, align 4
  %1992 = icmp slt i32 %1990, %1991
  br i1 %1992, label %1993, label %1997

1993:                                             ; preds = %1988
  %1994 = load i32, i32* %11, align 4
  %1995 = add nsw i32 %1994, 200
  %1996 = sub nsw i32 %1995, 1
  store i32 %1996, i32* %14, align 4
  br label %1997

1997:                                             ; preds = %1993, %1988, %1937
  br label %1998

1998:                                             ; preds = %1997
  %1999 = load i32, i32* %41, align 4
  %2000 = add nsw i32 %1999, 1
  store i32 %2000, i32* %41, align 4
  br label %1909, !llvm.loop !33

2001:                                             ; preds = %1909
  br label %2002

2002:                                             ; preds = %2001, %1875
  br label %2003

2003:                                             ; preds = %2002, %1840
  br label %2004

2004:                                             ; preds = %2003
  br label %2365

2005:                                             ; preds = %1832, %1825
  %2006 = load i32, i32* %21, align 4
  %2007 = sext i32 %2006 to i64
  %2008 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2007
  %2009 = load i8, i8* %2008, align 1
  %2010 = zext i8 %2009 to i32
  %2011 = icmp ne i32 %2010, 0
  br i1 %2011, label %2012, label %2185

2012:                                             ; preds = %2005
  %2013 = load i32, i32* %25, align 4
  %2014 = sext i32 %2013 to i64
  %2015 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2014
  %2016 = load i8, i8* %2015, align 1
  %2017 = zext i8 %2016 to i32
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2019, label %2185

2019:                                             ; preds = %2012
  br label %2020

2020:                                             ; preds = %2019
  %2021 = load i32, i32* %11, align 4
  %2022 = add nsw i32 %2021, 200
  %2023 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2024 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2023, i32 0, i32 0
  %2025 = load i32, i32* %24, align 4
  %2026 = sext i32 %2025 to i64
  %2027 = getelementptr inbounds [400 x i32], [400 x i32]* %2024, i64 0, i64 %2026
  %2028 = load i32, i32* %2027, align 4
  %2029 = icmp slt i32 %2022, %2028
  br i1 %2029, label %2030, label %2183

2030:                                             ; preds = %2020
  %2031 = load i32, i32* %24, align 4
  %2032 = sext i32 %2031 to i64
  %2033 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2032
  %2034 = load i8, i8* %2033, align 1
  %2035 = zext i8 %2034 to i32
  %2036 = icmp eq i32 %2035, 0
  br i1 %2036, label %2037, label %2085

2037:                                             ; preds = %2030
  %2038 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2039 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2038, i32 0, i32 0
  %2040 = load i32, i32* %24, align 4
  %2041 = sext i32 %2040 to i64
  %2042 = getelementptr inbounds [400 x i32], [400 x i32]* %2039, i64 0, i64 %2041
  %2043 = load i32, i32* %2042, align 4
  %2044 = icmp eq i32 %2043, 100000
  br i1 %2044, label %2045, label %2055

2045:                                             ; preds = %2037
  %2046 = load i32, i32* %24, align 4
  %2047 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2048 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2047, i32 0, i32 5
  %2049 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2050 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2049, i32 0, i32 7
  %2051 = load i32, i32* %2050, align 4
  %2052 = add nsw i32 %2051, 1
  store i32 %2052, i32* %2050, align 4
  %2053 = sext i32 %2051 to i64
  %2054 = getelementptr inbounds [400 x i32], [400 x i32]* %2048, i64 0, i64 %2053
  store i32 %2046, i32* %2054, align 4
  br label %2055

2055:                                             ; preds = %2045, %2037
  %2056 = load i32, i32* %11, align 4
  %2057 = add nsw i32 %2056, 200
  %2058 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2059 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2058, i32 0, i32 0
  %2060 = load i32, i32* %24, align 4
  %2061 = sext i32 %2060 to i64
  %2062 = getelementptr inbounds [400 x i32], [400 x i32]* %2059, i64 0, i64 %2061
  store i32 %2057, i32* %2062, align 4
  %2063 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2064 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2063, i32 0, i32 1
  %2065 = load i32, i32* %24, align 4
  %2066 = sext i32 %2065 to i64
  %2067 = getelementptr inbounds [400 x i32], [400 x i32]* %2064, i64 0, i64 %2066
  store i32 200, i32* %2067, align 4
  %2068 = load i32, i32* %9, align 4
  %2069 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2070 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2069, i32 0, i32 2
  %2071 = load i32, i32* %24, align 4
  %2072 = sext i32 %2071 to i64
  %2073 = getelementptr inbounds [400 x i32], [400 x i32]* %2070, i64 0, i64 %2072
  store i32 %2068, i32* %2073, align 4
  %2074 = load i32, i32* %25, align 4
  %2075 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2076 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2075, i32 0, i32 3
  %2077 = load i32, i32* %24, align 4
  %2078 = sext i32 %2077 to i64
  %2079 = getelementptr inbounds [400 x i32], [400 x i32]* %2076, i64 0, i64 %2078
  store i32 %2074, i32* %2079, align 4
  %2080 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2081 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2080, i32 0, i32 4
  %2082 = load i32, i32* %24, align 4
  %2083 = sext i32 %2082 to i64
  %2084 = getelementptr inbounds [400 x i32], [400 x i32]* %2081, i64 0, i64 %2083
  store i32 0, i32* %2084, align 4
  br label %2182

2085:                                             ; preds = %2030
  %2086 = load i32, i32* %24, align 4
  %2087 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %2088 = call i32 @findstones(i32 %2086, i32 361, i32* %2087)
  store i32 %2088, i32* %13, align 4
  store i32 0, i32* %42, align 4
  br label %2089

2089:                                             ; preds = %2178, %2085
  %2090 = load i32, i32* %42, align 4
  %2091 = load i32, i32* %13, align 4
  %2092 = icmp slt i32 %2090, %2091
  br i1 %2092, label %2093, label %2181

2093:                                             ; preds = %2089
  %2094 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2095 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2094, i32 0, i32 0
  %2096 = load i32, i32* %42, align 4
  %2097 = sext i32 %2096 to i64
  %2098 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2097
  %2099 = load i32, i32* %2098, align 4
  %2100 = sext i32 %2099 to i64
  %2101 = getelementptr inbounds [400 x i32], [400 x i32]* %2095, i64 0, i64 %2100
  %2102 = load i32, i32* %2101, align 4
  %2103 = icmp eq i32 %2102, 100000
  br i1 %2103, label %2104, label %2117

2104:                                             ; preds = %2093
  %2105 = load i32, i32* %42, align 4
  %2106 = sext i32 %2105 to i64
  %2107 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2106
  %2108 = load i32, i32* %2107, align 4
  %2109 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2110 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2109, i32 0, i32 5
  %2111 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2112 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2111, i32 0, i32 7
  %2113 = load i32, i32* %2112, align 4
  %2114 = add nsw i32 %2113, 1
  store i32 %2114, i32* %2112, align 4
  %2115 = sext i32 %2113 to i64
  %2116 = getelementptr inbounds [400 x i32], [400 x i32]* %2110, i64 0, i64 %2115
  store i32 %2108, i32* %2116, align 4
  br label %2117

2117:                                             ; preds = %2104, %2093
  %2118 = load i32, i32* %11, align 4
  %2119 = add nsw i32 %2118, 200
  %2120 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2121 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2120, i32 0, i32 0
  %2122 = load i32, i32* %42, align 4
  %2123 = sext i32 %2122 to i64
  %2124 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2123
  %2125 = load i32, i32* %2124, align 4
  %2126 = sext i32 %2125 to i64
  %2127 = getelementptr inbounds [400 x i32], [400 x i32]* %2121, i64 0, i64 %2126
  store i32 %2119, i32* %2127, align 4
  %2128 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2129 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2128, i32 0, i32 1
  %2130 = load i32, i32* %42, align 4
  %2131 = sext i32 %2130 to i64
  %2132 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2131
  %2133 = load i32, i32* %2132, align 4
  %2134 = sext i32 %2133 to i64
  %2135 = getelementptr inbounds [400 x i32], [400 x i32]* %2129, i64 0, i64 %2134
  store i32 200, i32* %2135, align 4
  %2136 = load i32, i32* %9, align 4
  %2137 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2138 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2137, i32 0, i32 2
  %2139 = load i32, i32* %42, align 4
  %2140 = sext i32 %2139 to i64
  %2141 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2140
  %2142 = load i32, i32* %2141, align 4
  %2143 = sext i32 %2142 to i64
  %2144 = getelementptr inbounds [400 x i32], [400 x i32]* %2138, i64 0, i64 %2143
  store i32 %2136, i32* %2144, align 4
  %2145 = load i32, i32* %25, align 4
  %2146 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2147 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2146, i32 0, i32 3
  %2148 = load i32, i32* %42, align 4
  %2149 = sext i32 %2148 to i64
  %2150 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2149
  %2151 = load i32, i32* %2150, align 4
  %2152 = sext i32 %2151 to i64
  %2153 = getelementptr inbounds [400 x i32], [400 x i32]* %2147, i64 0, i64 %2152
  store i32 %2145, i32* %2153, align 4
  %2154 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2155 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2154, i32 0, i32 4
  %2156 = load i32, i32* %42, align 4
  %2157 = sext i32 %2156 to i64
  %2158 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2157
  %2159 = load i32, i32* %2158, align 4
  %2160 = sext i32 %2159 to i64
  %2161 = getelementptr inbounds [400 x i32], [400 x i32]* %2155, i64 0, i64 %2160
  store i32 0, i32* %2161, align 4
  %2162 = load i32, i32* %42, align 4
  %2163 = sext i32 %2162 to i64
  %2164 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2163
  %2165 = load i32, i32* %2164, align 4
  %2166 = load i32, i32* %5, align 4
  %2167 = icmp eq i32 %2165, %2166
  br i1 %2167, label %2168, label %2177

2168:                                             ; preds = %2117
  %2169 = load i32, i32* %11, align 4
  %2170 = add nsw i32 %2169, 200
  %2171 = load i32, i32* %14, align 4
  %2172 = icmp slt i32 %2170, %2171
  br i1 %2172, label %2173, label %2177

2173:                                             ; preds = %2168
  %2174 = load i32, i32* %11, align 4
  %2175 = add nsw i32 %2174, 200
  %2176 = sub nsw i32 %2175, 1
  store i32 %2176, i32* %14, align 4
  br label %2177

2177:                                             ; preds = %2173, %2168, %2117
  br label %2178

2178:                                             ; preds = %2177
  %2179 = load i32, i32* %42, align 4
  %2180 = add nsw i32 %2179, 1
  store i32 %2180, i32* %42, align 4
  br label %2089, !llvm.loop !34

2181:                                             ; preds = %2089
  br label %2182

2182:                                             ; preds = %2181, %2055
  br label %2183

2183:                                             ; preds = %2182, %2020
  br label %2184

2184:                                             ; preds = %2183
  br label %2364

2185:                                             ; preds = %2012, %2005
  %2186 = load i32, i32* %21, align 4
  %2187 = sext i32 %2186 to i64
  %2188 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2187
  %2189 = load i8, i8* %2188, align 1
  %2190 = zext i8 %2189 to i32
  %2191 = icmp ne i32 %2190, 0
  br i1 %2191, label %2192, label %2363

2192:                                             ; preds = %2185
  %2193 = load i32, i32* %25, align 4
  %2194 = sext i32 %2193 to i64
  %2195 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2194
  %2196 = load i8, i8* %2195, align 1
  %2197 = zext i8 %2196 to i32
  %2198 = icmp ne i32 %2197, 0
  br i1 %2198, label %2199, label %2363

2199:                                             ; preds = %2192
  br label %2200

2200:                                             ; preds = %2199
  %2201 = load i32, i32* %11, align 4
  %2202 = add nsw i32 %2201, 200
  %2203 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2204 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2203, i32 0, i32 0
  %2205 = load i32, i32* %24, align 4
  %2206 = sext i32 %2205 to i64
  %2207 = getelementptr inbounds [400 x i32], [400 x i32]* %2204, i64 0, i64 %2206
  %2208 = load i32, i32* %2207, align 4
  %2209 = icmp slt i32 %2202, %2208
  br i1 %2209, label %2210, label %2361

2210:                                             ; preds = %2200
  %2211 = load i32, i32* %24, align 4
  %2212 = sext i32 %2211 to i64
  %2213 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2212
  %2214 = load i8, i8* %2213, align 1
  %2215 = zext i8 %2214 to i32
  %2216 = icmp eq i32 %2215, 0
  br i1 %2216, label %2217, label %2264

2217:                                             ; preds = %2210
  %2218 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2219 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2218, i32 0, i32 0
  %2220 = load i32, i32* %24, align 4
  %2221 = sext i32 %2220 to i64
  %2222 = getelementptr inbounds [400 x i32], [400 x i32]* %2219, i64 0, i64 %2221
  %2223 = load i32, i32* %2222, align 4
  %2224 = icmp eq i32 %2223, 100000
  br i1 %2224, label %2225, label %2235

2225:                                             ; preds = %2217
  %2226 = load i32, i32* %24, align 4
  %2227 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2228 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2227, i32 0, i32 5
  %2229 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2230 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2229, i32 0, i32 7
  %2231 = load i32, i32* %2230, align 4
  %2232 = add nsw i32 %2231, 1
  store i32 %2232, i32* %2230, align 4
  %2233 = sext i32 %2231 to i64
  %2234 = getelementptr inbounds [400 x i32], [400 x i32]* %2228, i64 0, i64 %2233
  store i32 %2226, i32* %2234, align 4
  br label %2235

2235:                                             ; preds = %2225, %2217
  %2236 = load i32, i32* %11, align 4
  %2237 = add nsw i32 %2236, 200
  %2238 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2239 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2238, i32 0, i32 0
  %2240 = load i32, i32* %24, align 4
  %2241 = sext i32 %2240 to i64
  %2242 = getelementptr inbounds [400 x i32], [400 x i32]* %2239, i64 0, i64 %2241
  store i32 %2237, i32* %2242, align 4
  %2243 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2244 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2243, i32 0, i32 1
  %2245 = load i32, i32* %24, align 4
  %2246 = sext i32 %2245 to i64
  %2247 = getelementptr inbounds [400 x i32], [400 x i32]* %2244, i64 0, i64 %2246
  store i32 200, i32* %2247, align 4
  %2248 = load i32, i32* %9, align 4
  %2249 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2250 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2249, i32 0, i32 2
  %2251 = load i32, i32* %24, align 4
  %2252 = sext i32 %2251 to i64
  %2253 = getelementptr inbounds [400 x i32], [400 x i32]* %2250, i64 0, i64 %2252
  store i32 %2248, i32* %2253, align 4
  %2254 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2255 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2254, i32 0, i32 3
  %2256 = load i32, i32* %24, align 4
  %2257 = sext i32 %2256 to i64
  %2258 = getelementptr inbounds [400 x i32], [400 x i32]* %2255, i64 0, i64 %2257
  store i32 0, i32* %2258, align 4
  %2259 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2260 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2259, i32 0, i32 4
  %2261 = load i32, i32* %24, align 4
  %2262 = sext i32 %2261 to i64
  %2263 = getelementptr inbounds [400 x i32], [400 x i32]* %2260, i64 0, i64 %2262
  store i32 0, i32* %2263, align 4
  br label %2360

2264:                                             ; preds = %2210
  %2265 = load i32, i32* %24, align 4
  %2266 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %2267 = call i32 @findstones(i32 %2265, i32 361, i32* %2266)
  store i32 %2267, i32* %13, align 4
  store i32 0, i32* %43, align 4
  br label %2268

2268:                                             ; preds = %2356, %2264
  %2269 = load i32, i32* %43, align 4
  %2270 = load i32, i32* %13, align 4
  %2271 = icmp slt i32 %2269, %2270
  br i1 %2271, label %2272, label %2359

2272:                                             ; preds = %2268
  %2273 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2274 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2273, i32 0, i32 0
  %2275 = load i32, i32* %43, align 4
  %2276 = sext i32 %2275 to i64
  %2277 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2276
  %2278 = load i32, i32* %2277, align 4
  %2279 = sext i32 %2278 to i64
  %2280 = getelementptr inbounds [400 x i32], [400 x i32]* %2274, i64 0, i64 %2279
  %2281 = load i32, i32* %2280, align 4
  %2282 = icmp eq i32 %2281, 100000
  br i1 %2282, label %2283, label %2296

2283:                                             ; preds = %2272
  %2284 = load i32, i32* %43, align 4
  %2285 = sext i32 %2284 to i64
  %2286 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2285
  %2287 = load i32, i32* %2286, align 4
  %2288 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2289 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2288, i32 0, i32 5
  %2290 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2291 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2290, i32 0, i32 7
  %2292 = load i32, i32* %2291, align 4
  %2293 = add nsw i32 %2292, 1
  store i32 %2293, i32* %2291, align 4
  %2294 = sext i32 %2292 to i64
  %2295 = getelementptr inbounds [400 x i32], [400 x i32]* %2289, i64 0, i64 %2294
  store i32 %2287, i32* %2295, align 4
  br label %2296

2296:                                             ; preds = %2283, %2272
  %2297 = load i32, i32* %11, align 4
  %2298 = add nsw i32 %2297, 200
  %2299 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2300 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2299, i32 0, i32 0
  %2301 = load i32, i32* %43, align 4
  %2302 = sext i32 %2301 to i64
  %2303 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2302
  %2304 = load i32, i32* %2303, align 4
  %2305 = sext i32 %2304 to i64
  %2306 = getelementptr inbounds [400 x i32], [400 x i32]* %2300, i64 0, i64 %2305
  store i32 %2298, i32* %2306, align 4
  %2307 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2308 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2307, i32 0, i32 1
  %2309 = load i32, i32* %43, align 4
  %2310 = sext i32 %2309 to i64
  %2311 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2310
  %2312 = load i32, i32* %2311, align 4
  %2313 = sext i32 %2312 to i64
  %2314 = getelementptr inbounds [400 x i32], [400 x i32]* %2308, i64 0, i64 %2313
  store i32 200, i32* %2314, align 4
  %2315 = load i32, i32* %9, align 4
  %2316 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2317 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2316, i32 0, i32 2
  %2318 = load i32, i32* %43, align 4
  %2319 = sext i32 %2318 to i64
  %2320 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2319
  %2321 = load i32, i32* %2320, align 4
  %2322 = sext i32 %2321 to i64
  %2323 = getelementptr inbounds [400 x i32], [400 x i32]* %2317, i64 0, i64 %2322
  store i32 %2315, i32* %2323, align 4
  %2324 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2325 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2324, i32 0, i32 3
  %2326 = load i32, i32* %43, align 4
  %2327 = sext i32 %2326 to i64
  %2328 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2327
  %2329 = load i32, i32* %2328, align 4
  %2330 = sext i32 %2329 to i64
  %2331 = getelementptr inbounds [400 x i32], [400 x i32]* %2325, i64 0, i64 %2330
  store i32 0, i32* %2331, align 4
  %2332 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2333 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2332, i32 0, i32 4
  %2334 = load i32, i32* %43, align 4
  %2335 = sext i32 %2334 to i64
  %2336 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2335
  %2337 = load i32, i32* %2336, align 4
  %2338 = sext i32 %2337 to i64
  %2339 = getelementptr inbounds [400 x i32], [400 x i32]* %2333, i64 0, i64 %2338
  store i32 0, i32* %2339, align 4
  %2340 = load i32, i32* %43, align 4
  %2341 = sext i32 %2340 to i64
  %2342 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2341
  %2343 = load i32, i32* %2342, align 4
  %2344 = load i32, i32* %5, align 4
  %2345 = icmp eq i32 %2343, %2344
  br i1 %2345, label %2346, label %2355

2346:                                             ; preds = %2296
  %2347 = load i32, i32* %11, align 4
  %2348 = add nsw i32 %2347, 200
  %2349 = load i32, i32* %14, align 4
  %2350 = icmp slt i32 %2348, %2349
  br i1 %2350, label %2351, label %2355

2351:                                             ; preds = %2346
  %2352 = load i32, i32* %11, align 4
  %2353 = add nsw i32 %2352, 200
  %2354 = sub nsw i32 %2353, 1
  store i32 %2354, i32* %14, align 4
  br label %2355

2355:                                             ; preds = %2351, %2346, %2296
  br label %2356

2356:                                             ; preds = %2355
  %2357 = load i32, i32* %43, align 4
  %2358 = add nsw i32 %2357, 1
  store i32 %2358, i32* %43, align 4
  br label %2268, !llvm.loop !35

2359:                                             ; preds = %2268
  br label %2360

2360:                                             ; preds = %2359, %2235
  br label %2361

2361:                                             ; preds = %2360, %2200
  br label %2362

2362:                                             ; preds = %2361
  br label %2363

2363:                                             ; preds = %2362, %2192, %2185
  br label %2364

2364:                                             ; preds = %2363, %2184
  br label %2365

2365:                                             ; preds = %2364, %2004
  br label %2366

2366:                                             ; preds = %2365, %1824
  br label %2367

2367:                                             ; preds = %2366, %1638, %1620, %1613, %1600, %1582, %1575, %1562, %1555
  %2368 = load i32, i32* %28, align 4
  %2369 = sext i32 %2368 to i64
  %2370 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2369
  %2371 = load i8, i8* %2370, align 1
  %2372 = zext i8 %2371 to i32
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2374, label %3179

2374:                                             ; preds = %2367
  %2375 = load i32, i32* %28, align 4
  %2376 = load i32, i32* %7, align 4
  %2377 = call i32 @approxlib(i32 %2375, i32 %2376, i32 3, i32* null)
  %2378 = icmp sge i32 %2377, 3
  br i1 %2378, label %2379, label %3179

2379:                                             ; preds = %2374
  %2380 = load i32, i32* %27, align 4
  %2381 = sext i32 %2380 to i64
  %2382 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2381
  %2383 = load i8, i8* %2382, align 1
  %2384 = zext i8 %2383 to i32
  %2385 = load i32, i32* %7, align 4
  %2386 = icmp eq i32 %2384, %2385
  br i1 %2386, label %2417, label %2387

2387:                                             ; preds = %2379
  %2388 = load i32, i32* %27, align 4
  %2389 = sext i32 %2388 to i64
  %2390 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2389
  %2391 = load i8, i8* %2390, align 1
  %2392 = zext i8 %2391 to i32
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2394, label %3179

2394:                                             ; preds = %2387
  %2395 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2396 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2395, i32 0, i32 3
  %2397 = load i32, i32* %9, align 4
  %2398 = sext i32 %2397 to i64
  %2399 = getelementptr inbounds [400 x i32], [400 x i32]* %2396, i64 0, i64 %2398
  %2400 = load i32, i32* %2399, align 4
  %2401 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2402 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2401, i32 0, i32 4
  %2403 = load i32, i32* %9, align 4
  %2404 = sext i32 %2403 to i64
  %2405 = getelementptr inbounds [400 x i32], [400 x i32]* %2402, i64 0, i64 %2404
  %2406 = load i32, i32* %2405, align 4
  %2407 = load i32, i32* %27, align 4
  %2408 = load i32, i32* %26, align 4
  %2409 = load i32, i32* %7, align 4
  %2410 = call i32 @common_vulnerabilities(i32 %2400, i32 %2406, i32 %2407, i32 %2408, i32 %2409)
  %2411 = icmp ne i32 %2410, 0
  br i1 %2411, label %3179, label %2412

2412:                                             ; preds = %2394
  %2413 = load i32, i32* %27, align 4
  %2414 = load i32, i32* %8, align 4
  %2415 = call i32 @approxlib(i32 %2413, i32 %2414, i32 3, i32* null)
  %2416 = icmp sle i32 %2415, 2
  br i1 %2416, label %2417, label %3179

2417:                                             ; preds = %2412, %2379
  %2418 = load i32, i32* %29, align 4
  %2419 = sext i32 %2418 to i64
  %2420 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2419
  %2421 = load i8, i8* %2420, align 1
  %2422 = zext i8 %2421 to i32
  %2423 = load i32, i32* %7, align 4
  %2424 = icmp eq i32 %2422, %2423
  br i1 %2424, label %2455, label %2425

2425:                                             ; preds = %2417
  %2426 = load i32, i32* %29, align 4
  %2427 = sext i32 %2426 to i64
  %2428 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2427
  %2429 = load i8, i8* %2428, align 1
  %2430 = zext i8 %2429 to i32
  %2431 = icmp eq i32 %2430, 0
  br i1 %2431, label %2432, label %3179

2432:                                             ; preds = %2425
  %2433 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2434 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2433, i32 0, i32 3
  %2435 = load i32, i32* %9, align 4
  %2436 = sext i32 %2435 to i64
  %2437 = getelementptr inbounds [400 x i32], [400 x i32]* %2434, i64 0, i64 %2436
  %2438 = load i32, i32* %2437, align 4
  %2439 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2440 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2439, i32 0, i32 4
  %2441 = load i32, i32* %9, align 4
  %2442 = sext i32 %2441 to i64
  %2443 = getelementptr inbounds [400 x i32], [400 x i32]* %2440, i64 0, i64 %2442
  %2444 = load i32, i32* %2443, align 4
  %2445 = load i32, i32* %29, align 4
  %2446 = load i32, i32* %26, align 4
  %2447 = load i32, i32* %7, align 4
  %2448 = call i32 @common_vulnerabilities(i32 %2438, i32 %2444, i32 %2445, i32 %2446, i32 %2447)
  %2449 = icmp ne i32 %2448, 0
  br i1 %2449, label %3179, label %2450

2450:                                             ; preds = %2432
  %2451 = load i32, i32* %29, align 4
  %2452 = load i32, i32* %8, align 4
  %2453 = call i32 @approxlib(i32 %2451, i32 %2452, i32 3, i32* null)
  %2454 = icmp sle i32 %2453, 2
  br i1 %2454, label %2455, label %3179

2455:                                             ; preds = %2450, %2417
  %2456 = load i32, i32* %27, align 4
  %2457 = sext i32 %2456 to i64
  %2458 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2457
  %2459 = load i8, i8* %2458, align 1
  %2460 = zext i8 %2459 to i32
  %2461 = icmp eq i32 %2460, 0
  br i1 %2461, label %2462, label %2637

2462:                                             ; preds = %2455
  %2463 = load i32, i32* %29, align 4
  %2464 = sext i32 %2463 to i64
  %2465 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2464
  %2466 = load i8, i8* %2465, align 1
  %2467 = zext i8 %2466 to i32
  %2468 = icmp eq i32 %2467, 0
  br i1 %2468, label %2469, label %2637

2469:                                             ; preds = %2462
  br label %2470

2470:                                             ; preds = %2469
  %2471 = load i32, i32* %11, align 4
  %2472 = add nsw i32 %2471, 200
  %2473 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2474 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2473, i32 0, i32 0
  %2475 = load i32, i32* %24, align 4
  %2476 = sext i32 %2475 to i64
  %2477 = getelementptr inbounds [400 x i32], [400 x i32]* %2474, i64 0, i64 %2476
  %2478 = load i32, i32* %2477, align 4
  %2479 = icmp slt i32 %2472, %2478
  br i1 %2479, label %2480, label %2635

2480:                                             ; preds = %2470
  %2481 = load i32, i32* %24, align 4
  %2482 = sext i32 %2481 to i64
  %2483 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2482
  %2484 = load i8, i8* %2483, align 1
  %2485 = zext i8 %2484 to i32
  %2486 = icmp eq i32 %2485, 0
  br i1 %2486, label %2487, label %2536

2487:                                             ; preds = %2480
  %2488 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2489 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2488, i32 0, i32 0
  %2490 = load i32, i32* %24, align 4
  %2491 = sext i32 %2490 to i64
  %2492 = getelementptr inbounds [400 x i32], [400 x i32]* %2489, i64 0, i64 %2491
  %2493 = load i32, i32* %2492, align 4
  %2494 = icmp eq i32 %2493, 100000
  br i1 %2494, label %2495, label %2505

2495:                                             ; preds = %2487
  %2496 = load i32, i32* %24, align 4
  %2497 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2498 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2497, i32 0, i32 5
  %2499 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2500 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2499, i32 0, i32 7
  %2501 = load i32, i32* %2500, align 4
  %2502 = add nsw i32 %2501, 1
  store i32 %2502, i32* %2500, align 4
  %2503 = sext i32 %2501 to i64
  %2504 = getelementptr inbounds [400 x i32], [400 x i32]* %2498, i64 0, i64 %2503
  store i32 %2496, i32* %2504, align 4
  br label %2505

2505:                                             ; preds = %2495, %2487
  %2506 = load i32, i32* %11, align 4
  %2507 = add nsw i32 %2506, 200
  %2508 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2509 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2508, i32 0, i32 0
  %2510 = load i32, i32* %24, align 4
  %2511 = sext i32 %2510 to i64
  %2512 = getelementptr inbounds [400 x i32], [400 x i32]* %2509, i64 0, i64 %2511
  store i32 %2507, i32* %2512, align 4
  %2513 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2514 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2513, i32 0, i32 1
  %2515 = load i32, i32* %24, align 4
  %2516 = sext i32 %2515 to i64
  %2517 = getelementptr inbounds [400 x i32], [400 x i32]* %2514, i64 0, i64 %2516
  store i32 200, i32* %2517, align 4
  %2518 = load i32, i32* %9, align 4
  %2519 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2520 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2519, i32 0, i32 2
  %2521 = load i32, i32* %24, align 4
  %2522 = sext i32 %2521 to i64
  %2523 = getelementptr inbounds [400 x i32], [400 x i32]* %2520, i64 0, i64 %2522
  store i32 %2518, i32* %2523, align 4
  %2524 = load i32, i32* %27, align 4
  %2525 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2526 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2525, i32 0, i32 3
  %2527 = load i32, i32* %24, align 4
  %2528 = sext i32 %2527 to i64
  %2529 = getelementptr inbounds [400 x i32], [400 x i32]* %2526, i64 0, i64 %2528
  store i32 %2524, i32* %2529, align 4
  %2530 = load i32, i32* %29, align 4
  %2531 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2532 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2531, i32 0, i32 4
  %2533 = load i32, i32* %24, align 4
  %2534 = sext i32 %2533 to i64
  %2535 = getelementptr inbounds [400 x i32], [400 x i32]* %2532, i64 0, i64 %2534
  store i32 %2530, i32* %2535, align 4
  br label %2634

2536:                                             ; preds = %2480
  %2537 = load i32, i32* %24, align 4
  %2538 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %2539 = call i32 @findstones(i32 %2537, i32 361, i32* %2538)
  store i32 %2539, i32* %13, align 4
  store i32 0, i32* %44, align 4
  br label %2540

2540:                                             ; preds = %2630, %2536
  %2541 = load i32, i32* %44, align 4
  %2542 = load i32, i32* %13, align 4
  %2543 = icmp slt i32 %2541, %2542
  br i1 %2543, label %2544, label %2633

2544:                                             ; preds = %2540
  %2545 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2546 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2545, i32 0, i32 0
  %2547 = load i32, i32* %44, align 4
  %2548 = sext i32 %2547 to i64
  %2549 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2548
  %2550 = load i32, i32* %2549, align 4
  %2551 = sext i32 %2550 to i64
  %2552 = getelementptr inbounds [400 x i32], [400 x i32]* %2546, i64 0, i64 %2551
  %2553 = load i32, i32* %2552, align 4
  %2554 = icmp eq i32 %2553, 100000
  br i1 %2554, label %2555, label %2568

2555:                                             ; preds = %2544
  %2556 = load i32, i32* %44, align 4
  %2557 = sext i32 %2556 to i64
  %2558 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2557
  %2559 = load i32, i32* %2558, align 4
  %2560 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2561 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2560, i32 0, i32 5
  %2562 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2563 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2562, i32 0, i32 7
  %2564 = load i32, i32* %2563, align 4
  %2565 = add nsw i32 %2564, 1
  store i32 %2565, i32* %2563, align 4
  %2566 = sext i32 %2564 to i64
  %2567 = getelementptr inbounds [400 x i32], [400 x i32]* %2561, i64 0, i64 %2566
  store i32 %2559, i32* %2567, align 4
  br label %2568

2568:                                             ; preds = %2555, %2544
  %2569 = load i32, i32* %11, align 4
  %2570 = add nsw i32 %2569, 200
  %2571 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2572 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2571, i32 0, i32 0
  %2573 = load i32, i32* %44, align 4
  %2574 = sext i32 %2573 to i64
  %2575 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2574
  %2576 = load i32, i32* %2575, align 4
  %2577 = sext i32 %2576 to i64
  %2578 = getelementptr inbounds [400 x i32], [400 x i32]* %2572, i64 0, i64 %2577
  store i32 %2570, i32* %2578, align 4
  %2579 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2580 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2579, i32 0, i32 1
  %2581 = load i32, i32* %44, align 4
  %2582 = sext i32 %2581 to i64
  %2583 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2582
  %2584 = load i32, i32* %2583, align 4
  %2585 = sext i32 %2584 to i64
  %2586 = getelementptr inbounds [400 x i32], [400 x i32]* %2580, i64 0, i64 %2585
  store i32 200, i32* %2586, align 4
  %2587 = load i32, i32* %9, align 4
  %2588 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2589 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2588, i32 0, i32 2
  %2590 = load i32, i32* %44, align 4
  %2591 = sext i32 %2590 to i64
  %2592 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2591
  %2593 = load i32, i32* %2592, align 4
  %2594 = sext i32 %2593 to i64
  %2595 = getelementptr inbounds [400 x i32], [400 x i32]* %2589, i64 0, i64 %2594
  store i32 %2587, i32* %2595, align 4
  %2596 = load i32, i32* %27, align 4
  %2597 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2598 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2597, i32 0, i32 3
  %2599 = load i32, i32* %44, align 4
  %2600 = sext i32 %2599 to i64
  %2601 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2600
  %2602 = load i32, i32* %2601, align 4
  %2603 = sext i32 %2602 to i64
  %2604 = getelementptr inbounds [400 x i32], [400 x i32]* %2598, i64 0, i64 %2603
  store i32 %2596, i32* %2604, align 4
  %2605 = load i32, i32* %29, align 4
  %2606 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2607 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2606, i32 0, i32 4
  %2608 = load i32, i32* %44, align 4
  %2609 = sext i32 %2608 to i64
  %2610 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2609
  %2611 = load i32, i32* %2610, align 4
  %2612 = sext i32 %2611 to i64
  %2613 = getelementptr inbounds [400 x i32], [400 x i32]* %2607, i64 0, i64 %2612
  store i32 %2605, i32* %2613, align 4
  %2614 = load i32, i32* %44, align 4
  %2615 = sext i32 %2614 to i64
  %2616 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2615
  %2617 = load i32, i32* %2616, align 4
  %2618 = load i32, i32* %5, align 4
  %2619 = icmp eq i32 %2617, %2618
  br i1 %2619, label %2620, label %2629

2620:                                             ; preds = %2568
  %2621 = load i32, i32* %11, align 4
  %2622 = add nsw i32 %2621, 200
  %2623 = load i32, i32* %14, align 4
  %2624 = icmp slt i32 %2622, %2623
  br i1 %2624, label %2625, label %2629

2625:                                             ; preds = %2620
  %2626 = load i32, i32* %11, align 4
  %2627 = add nsw i32 %2626, 200
  %2628 = sub nsw i32 %2627, 1
  store i32 %2628, i32* %14, align 4
  br label %2629

2629:                                             ; preds = %2625, %2620, %2568
  br label %2630

2630:                                             ; preds = %2629
  %2631 = load i32, i32* %44, align 4
  %2632 = add nsw i32 %2631, 1
  store i32 %2632, i32* %44, align 4
  br label %2540, !llvm.loop !36

2633:                                             ; preds = %2540
  br label %2634

2634:                                             ; preds = %2633, %2505
  br label %2635

2635:                                             ; preds = %2634, %2470
  br label %2636

2636:                                             ; preds = %2635
  br label %3178

2637:                                             ; preds = %2462, %2455
  %2638 = load i32, i32* %27, align 4
  %2639 = sext i32 %2638 to i64
  %2640 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2639
  %2641 = load i8, i8* %2640, align 1
  %2642 = zext i8 %2641 to i32
  %2643 = icmp eq i32 %2642, 0
  br i1 %2643, label %2644, label %2817

2644:                                             ; preds = %2637
  %2645 = load i32, i32* %29, align 4
  %2646 = sext i32 %2645 to i64
  %2647 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2646
  %2648 = load i8, i8* %2647, align 1
  %2649 = zext i8 %2648 to i32
  %2650 = icmp ne i32 %2649, 0
  br i1 %2650, label %2651, label %2817

2651:                                             ; preds = %2644
  br label %2652

2652:                                             ; preds = %2651
  %2653 = load i32, i32* %11, align 4
  %2654 = add nsw i32 %2653, 200
  %2655 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2656 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2655, i32 0, i32 0
  %2657 = load i32, i32* %24, align 4
  %2658 = sext i32 %2657 to i64
  %2659 = getelementptr inbounds [400 x i32], [400 x i32]* %2656, i64 0, i64 %2658
  %2660 = load i32, i32* %2659, align 4
  %2661 = icmp slt i32 %2654, %2660
  br i1 %2661, label %2662, label %2815

2662:                                             ; preds = %2652
  %2663 = load i32, i32* %24, align 4
  %2664 = sext i32 %2663 to i64
  %2665 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2664
  %2666 = load i8, i8* %2665, align 1
  %2667 = zext i8 %2666 to i32
  %2668 = icmp eq i32 %2667, 0
  br i1 %2668, label %2669, label %2717

2669:                                             ; preds = %2662
  %2670 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2671 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2670, i32 0, i32 0
  %2672 = load i32, i32* %24, align 4
  %2673 = sext i32 %2672 to i64
  %2674 = getelementptr inbounds [400 x i32], [400 x i32]* %2671, i64 0, i64 %2673
  %2675 = load i32, i32* %2674, align 4
  %2676 = icmp eq i32 %2675, 100000
  br i1 %2676, label %2677, label %2687

2677:                                             ; preds = %2669
  %2678 = load i32, i32* %24, align 4
  %2679 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2680 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2679, i32 0, i32 5
  %2681 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2682 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2681, i32 0, i32 7
  %2683 = load i32, i32* %2682, align 4
  %2684 = add nsw i32 %2683, 1
  store i32 %2684, i32* %2682, align 4
  %2685 = sext i32 %2683 to i64
  %2686 = getelementptr inbounds [400 x i32], [400 x i32]* %2680, i64 0, i64 %2685
  store i32 %2678, i32* %2686, align 4
  br label %2687

2687:                                             ; preds = %2677, %2669
  %2688 = load i32, i32* %11, align 4
  %2689 = add nsw i32 %2688, 200
  %2690 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2691 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2690, i32 0, i32 0
  %2692 = load i32, i32* %24, align 4
  %2693 = sext i32 %2692 to i64
  %2694 = getelementptr inbounds [400 x i32], [400 x i32]* %2691, i64 0, i64 %2693
  store i32 %2689, i32* %2694, align 4
  %2695 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2696 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2695, i32 0, i32 1
  %2697 = load i32, i32* %24, align 4
  %2698 = sext i32 %2697 to i64
  %2699 = getelementptr inbounds [400 x i32], [400 x i32]* %2696, i64 0, i64 %2698
  store i32 200, i32* %2699, align 4
  %2700 = load i32, i32* %9, align 4
  %2701 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2702 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2701, i32 0, i32 2
  %2703 = load i32, i32* %24, align 4
  %2704 = sext i32 %2703 to i64
  %2705 = getelementptr inbounds [400 x i32], [400 x i32]* %2702, i64 0, i64 %2704
  store i32 %2700, i32* %2705, align 4
  %2706 = load i32, i32* %27, align 4
  %2707 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2708 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2707, i32 0, i32 3
  %2709 = load i32, i32* %24, align 4
  %2710 = sext i32 %2709 to i64
  %2711 = getelementptr inbounds [400 x i32], [400 x i32]* %2708, i64 0, i64 %2710
  store i32 %2706, i32* %2711, align 4
  %2712 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2713 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2712, i32 0, i32 4
  %2714 = load i32, i32* %24, align 4
  %2715 = sext i32 %2714 to i64
  %2716 = getelementptr inbounds [400 x i32], [400 x i32]* %2713, i64 0, i64 %2715
  store i32 0, i32* %2716, align 4
  br label %2814

2717:                                             ; preds = %2662
  %2718 = load i32, i32* %24, align 4
  %2719 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %2720 = call i32 @findstones(i32 %2718, i32 361, i32* %2719)
  store i32 %2720, i32* %13, align 4
  store i32 0, i32* %45, align 4
  br label %2721

2721:                                             ; preds = %2810, %2717
  %2722 = load i32, i32* %45, align 4
  %2723 = load i32, i32* %13, align 4
  %2724 = icmp slt i32 %2722, %2723
  br i1 %2724, label %2725, label %2813

2725:                                             ; preds = %2721
  %2726 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2727 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2726, i32 0, i32 0
  %2728 = load i32, i32* %45, align 4
  %2729 = sext i32 %2728 to i64
  %2730 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2729
  %2731 = load i32, i32* %2730, align 4
  %2732 = sext i32 %2731 to i64
  %2733 = getelementptr inbounds [400 x i32], [400 x i32]* %2727, i64 0, i64 %2732
  %2734 = load i32, i32* %2733, align 4
  %2735 = icmp eq i32 %2734, 100000
  br i1 %2735, label %2736, label %2749

2736:                                             ; preds = %2725
  %2737 = load i32, i32* %45, align 4
  %2738 = sext i32 %2737 to i64
  %2739 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2738
  %2740 = load i32, i32* %2739, align 4
  %2741 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2742 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2741, i32 0, i32 5
  %2743 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2744 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2743, i32 0, i32 7
  %2745 = load i32, i32* %2744, align 4
  %2746 = add nsw i32 %2745, 1
  store i32 %2746, i32* %2744, align 4
  %2747 = sext i32 %2745 to i64
  %2748 = getelementptr inbounds [400 x i32], [400 x i32]* %2742, i64 0, i64 %2747
  store i32 %2740, i32* %2748, align 4
  br label %2749

2749:                                             ; preds = %2736, %2725
  %2750 = load i32, i32* %11, align 4
  %2751 = add nsw i32 %2750, 200
  %2752 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2753 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2752, i32 0, i32 0
  %2754 = load i32, i32* %45, align 4
  %2755 = sext i32 %2754 to i64
  %2756 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2755
  %2757 = load i32, i32* %2756, align 4
  %2758 = sext i32 %2757 to i64
  %2759 = getelementptr inbounds [400 x i32], [400 x i32]* %2753, i64 0, i64 %2758
  store i32 %2751, i32* %2759, align 4
  %2760 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2761 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2760, i32 0, i32 1
  %2762 = load i32, i32* %45, align 4
  %2763 = sext i32 %2762 to i64
  %2764 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2763
  %2765 = load i32, i32* %2764, align 4
  %2766 = sext i32 %2765 to i64
  %2767 = getelementptr inbounds [400 x i32], [400 x i32]* %2761, i64 0, i64 %2766
  store i32 200, i32* %2767, align 4
  %2768 = load i32, i32* %9, align 4
  %2769 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2770 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2769, i32 0, i32 2
  %2771 = load i32, i32* %45, align 4
  %2772 = sext i32 %2771 to i64
  %2773 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2772
  %2774 = load i32, i32* %2773, align 4
  %2775 = sext i32 %2774 to i64
  %2776 = getelementptr inbounds [400 x i32], [400 x i32]* %2770, i64 0, i64 %2775
  store i32 %2768, i32* %2776, align 4
  %2777 = load i32, i32* %27, align 4
  %2778 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2779 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2778, i32 0, i32 3
  %2780 = load i32, i32* %45, align 4
  %2781 = sext i32 %2780 to i64
  %2782 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2781
  %2783 = load i32, i32* %2782, align 4
  %2784 = sext i32 %2783 to i64
  %2785 = getelementptr inbounds [400 x i32], [400 x i32]* %2779, i64 0, i64 %2784
  store i32 %2777, i32* %2785, align 4
  %2786 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2787 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2786, i32 0, i32 4
  %2788 = load i32, i32* %45, align 4
  %2789 = sext i32 %2788 to i64
  %2790 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2789
  %2791 = load i32, i32* %2790, align 4
  %2792 = sext i32 %2791 to i64
  %2793 = getelementptr inbounds [400 x i32], [400 x i32]* %2787, i64 0, i64 %2792
  store i32 0, i32* %2793, align 4
  %2794 = load i32, i32* %45, align 4
  %2795 = sext i32 %2794 to i64
  %2796 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2795
  %2797 = load i32, i32* %2796, align 4
  %2798 = load i32, i32* %5, align 4
  %2799 = icmp eq i32 %2797, %2798
  br i1 %2799, label %2800, label %2809

2800:                                             ; preds = %2749
  %2801 = load i32, i32* %11, align 4
  %2802 = add nsw i32 %2801, 200
  %2803 = load i32, i32* %14, align 4
  %2804 = icmp slt i32 %2802, %2803
  br i1 %2804, label %2805, label %2809

2805:                                             ; preds = %2800
  %2806 = load i32, i32* %11, align 4
  %2807 = add nsw i32 %2806, 200
  %2808 = sub nsw i32 %2807, 1
  store i32 %2808, i32* %14, align 4
  br label %2809

2809:                                             ; preds = %2805, %2800, %2749
  br label %2810

2810:                                             ; preds = %2809
  %2811 = load i32, i32* %45, align 4
  %2812 = add nsw i32 %2811, 1
  store i32 %2812, i32* %45, align 4
  br label %2721, !llvm.loop !37

2813:                                             ; preds = %2721
  br label %2814

2814:                                             ; preds = %2813, %2687
  br label %2815

2815:                                             ; preds = %2814, %2652
  br label %2816

2816:                                             ; preds = %2815
  br label %3177

2817:                                             ; preds = %2644, %2637
  %2818 = load i32, i32* %27, align 4
  %2819 = sext i32 %2818 to i64
  %2820 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2819
  %2821 = load i8, i8* %2820, align 1
  %2822 = zext i8 %2821 to i32
  %2823 = icmp ne i32 %2822, 0
  br i1 %2823, label %2824, label %2997

2824:                                             ; preds = %2817
  %2825 = load i32, i32* %29, align 4
  %2826 = sext i32 %2825 to i64
  %2827 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2826
  %2828 = load i8, i8* %2827, align 1
  %2829 = zext i8 %2828 to i32
  %2830 = icmp eq i32 %2829, 0
  br i1 %2830, label %2831, label %2997

2831:                                             ; preds = %2824
  br label %2832

2832:                                             ; preds = %2831
  %2833 = load i32, i32* %11, align 4
  %2834 = add nsw i32 %2833, 200
  %2835 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2836 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2835, i32 0, i32 0
  %2837 = load i32, i32* %24, align 4
  %2838 = sext i32 %2837 to i64
  %2839 = getelementptr inbounds [400 x i32], [400 x i32]* %2836, i64 0, i64 %2838
  %2840 = load i32, i32* %2839, align 4
  %2841 = icmp slt i32 %2834, %2840
  br i1 %2841, label %2842, label %2995

2842:                                             ; preds = %2832
  %2843 = load i32, i32* %24, align 4
  %2844 = sext i32 %2843 to i64
  %2845 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2844
  %2846 = load i8, i8* %2845, align 1
  %2847 = zext i8 %2846 to i32
  %2848 = icmp eq i32 %2847, 0
  br i1 %2848, label %2849, label %2897

2849:                                             ; preds = %2842
  %2850 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2851 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2850, i32 0, i32 0
  %2852 = load i32, i32* %24, align 4
  %2853 = sext i32 %2852 to i64
  %2854 = getelementptr inbounds [400 x i32], [400 x i32]* %2851, i64 0, i64 %2853
  %2855 = load i32, i32* %2854, align 4
  %2856 = icmp eq i32 %2855, 100000
  br i1 %2856, label %2857, label %2867

2857:                                             ; preds = %2849
  %2858 = load i32, i32* %24, align 4
  %2859 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2860 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2859, i32 0, i32 5
  %2861 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2862 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2861, i32 0, i32 7
  %2863 = load i32, i32* %2862, align 4
  %2864 = add nsw i32 %2863, 1
  store i32 %2864, i32* %2862, align 4
  %2865 = sext i32 %2863 to i64
  %2866 = getelementptr inbounds [400 x i32], [400 x i32]* %2860, i64 0, i64 %2865
  store i32 %2858, i32* %2866, align 4
  br label %2867

2867:                                             ; preds = %2857, %2849
  %2868 = load i32, i32* %11, align 4
  %2869 = add nsw i32 %2868, 200
  %2870 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2871 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2870, i32 0, i32 0
  %2872 = load i32, i32* %24, align 4
  %2873 = sext i32 %2872 to i64
  %2874 = getelementptr inbounds [400 x i32], [400 x i32]* %2871, i64 0, i64 %2873
  store i32 %2869, i32* %2874, align 4
  %2875 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2876 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2875, i32 0, i32 1
  %2877 = load i32, i32* %24, align 4
  %2878 = sext i32 %2877 to i64
  %2879 = getelementptr inbounds [400 x i32], [400 x i32]* %2876, i64 0, i64 %2878
  store i32 200, i32* %2879, align 4
  %2880 = load i32, i32* %9, align 4
  %2881 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2882 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2881, i32 0, i32 2
  %2883 = load i32, i32* %24, align 4
  %2884 = sext i32 %2883 to i64
  %2885 = getelementptr inbounds [400 x i32], [400 x i32]* %2882, i64 0, i64 %2884
  store i32 %2880, i32* %2885, align 4
  %2886 = load i32, i32* %29, align 4
  %2887 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2888 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2887, i32 0, i32 3
  %2889 = load i32, i32* %24, align 4
  %2890 = sext i32 %2889 to i64
  %2891 = getelementptr inbounds [400 x i32], [400 x i32]* %2888, i64 0, i64 %2890
  store i32 %2886, i32* %2891, align 4
  %2892 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2893 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2892, i32 0, i32 4
  %2894 = load i32, i32* %24, align 4
  %2895 = sext i32 %2894 to i64
  %2896 = getelementptr inbounds [400 x i32], [400 x i32]* %2893, i64 0, i64 %2895
  store i32 0, i32* %2896, align 4
  br label %2994

2897:                                             ; preds = %2842
  %2898 = load i32, i32* %24, align 4
  %2899 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %2900 = call i32 @findstones(i32 %2898, i32 361, i32* %2899)
  store i32 %2900, i32* %13, align 4
  store i32 0, i32* %46, align 4
  br label %2901

2901:                                             ; preds = %2990, %2897
  %2902 = load i32, i32* %46, align 4
  %2903 = load i32, i32* %13, align 4
  %2904 = icmp slt i32 %2902, %2903
  br i1 %2904, label %2905, label %2993

2905:                                             ; preds = %2901
  %2906 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2907 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2906, i32 0, i32 0
  %2908 = load i32, i32* %46, align 4
  %2909 = sext i32 %2908 to i64
  %2910 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2909
  %2911 = load i32, i32* %2910, align 4
  %2912 = sext i32 %2911 to i64
  %2913 = getelementptr inbounds [400 x i32], [400 x i32]* %2907, i64 0, i64 %2912
  %2914 = load i32, i32* %2913, align 4
  %2915 = icmp eq i32 %2914, 100000
  br i1 %2915, label %2916, label %2929

2916:                                             ; preds = %2905
  %2917 = load i32, i32* %46, align 4
  %2918 = sext i32 %2917 to i64
  %2919 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2918
  %2920 = load i32, i32* %2919, align 4
  %2921 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2922 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2921, i32 0, i32 5
  %2923 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2924 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2923, i32 0, i32 7
  %2925 = load i32, i32* %2924, align 4
  %2926 = add nsw i32 %2925, 1
  store i32 %2926, i32* %2924, align 4
  %2927 = sext i32 %2925 to i64
  %2928 = getelementptr inbounds [400 x i32], [400 x i32]* %2922, i64 0, i64 %2927
  store i32 %2920, i32* %2928, align 4
  br label %2929

2929:                                             ; preds = %2916, %2905
  %2930 = load i32, i32* %11, align 4
  %2931 = add nsw i32 %2930, 200
  %2932 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2933 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2932, i32 0, i32 0
  %2934 = load i32, i32* %46, align 4
  %2935 = sext i32 %2934 to i64
  %2936 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2935
  %2937 = load i32, i32* %2936, align 4
  %2938 = sext i32 %2937 to i64
  %2939 = getelementptr inbounds [400 x i32], [400 x i32]* %2933, i64 0, i64 %2938
  store i32 %2931, i32* %2939, align 4
  %2940 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2941 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2940, i32 0, i32 1
  %2942 = load i32, i32* %46, align 4
  %2943 = sext i32 %2942 to i64
  %2944 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2943
  %2945 = load i32, i32* %2944, align 4
  %2946 = sext i32 %2945 to i64
  %2947 = getelementptr inbounds [400 x i32], [400 x i32]* %2941, i64 0, i64 %2946
  store i32 200, i32* %2947, align 4
  %2948 = load i32, i32* %9, align 4
  %2949 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2950 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2949, i32 0, i32 2
  %2951 = load i32, i32* %46, align 4
  %2952 = sext i32 %2951 to i64
  %2953 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2952
  %2954 = load i32, i32* %2953, align 4
  %2955 = sext i32 %2954 to i64
  %2956 = getelementptr inbounds [400 x i32], [400 x i32]* %2950, i64 0, i64 %2955
  store i32 %2948, i32* %2956, align 4
  %2957 = load i32, i32* %29, align 4
  %2958 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2959 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2958, i32 0, i32 3
  %2960 = load i32, i32* %46, align 4
  %2961 = sext i32 %2960 to i64
  %2962 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2961
  %2963 = load i32, i32* %2962, align 4
  %2964 = sext i32 %2963 to i64
  %2965 = getelementptr inbounds [400 x i32], [400 x i32]* %2959, i64 0, i64 %2964
  store i32 %2957, i32* %2965, align 4
  %2966 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %2967 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %2966, i32 0, i32 4
  %2968 = load i32, i32* %46, align 4
  %2969 = sext i32 %2968 to i64
  %2970 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2969
  %2971 = load i32, i32* %2970, align 4
  %2972 = sext i32 %2971 to i64
  %2973 = getelementptr inbounds [400 x i32], [400 x i32]* %2967, i64 0, i64 %2972
  store i32 0, i32* %2973, align 4
  %2974 = load i32, i32* %46, align 4
  %2975 = sext i32 %2974 to i64
  %2976 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %2975
  %2977 = load i32, i32* %2976, align 4
  %2978 = load i32, i32* %5, align 4
  %2979 = icmp eq i32 %2977, %2978
  br i1 %2979, label %2980, label %2989

2980:                                             ; preds = %2929
  %2981 = load i32, i32* %11, align 4
  %2982 = add nsw i32 %2981, 200
  %2983 = load i32, i32* %14, align 4
  %2984 = icmp slt i32 %2982, %2983
  br i1 %2984, label %2985, label %2989

2985:                                             ; preds = %2980
  %2986 = load i32, i32* %11, align 4
  %2987 = add nsw i32 %2986, 200
  %2988 = sub nsw i32 %2987, 1
  store i32 %2988, i32* %14, align 4
  br label %2989

2989:                                             ; preds = %2985, %2980, %2929
  br label %2990

2990:                                             ; preds = %2989
  %2991 = load i32, i32* %46, align 4
  %2992 = add nsw i32 %2991, 1
  store i32 %2992, i32* %46, align 4
  br label %2901, !llvm.loop !38

2993:                                             ; preds = %2901
  br label %2994

2994:                                             ; preds = %2993, %2867
  br label %2995

2995:                                             ; preds = %2994, %2832
  br label %2996

2996:                                             ; preds = %2995
  br label %3176

2997:                                             ; preds = %2824, %2817
  %2998 = load i32, i32* %27, align 4
  %2999 = sext i32 %2998 to i64
  %3000 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %2999
  %3001 = load i8, i8* %3000, align 1
  %3002 = zext i8 %3001 to i32
  %3003 = icmp ne i32 %3002, 0
  br i1 %3003, label %3004, label %3175

3004:                                             ; preds = %2997
  %3005 = load i32, i32* %29, align 4
  %3006 = sext i32 %3005 to i64
  %3007 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3006
  %3008 = load i8, i8* %3007, align 1
  %3009 = zext i8 %3008 to i32
  %3010 = icmp ne i32 %3009, 0
  br i1 %3010, label %3011, label %3175

3011:                                             ; preds = %3004
  br label %3012

3012:                                             ; preds = %3011
  %3013 = load i32, i32* %11, align 4
  %3014 = add nsw i32 %3013, 200
  %3015 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3016 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3015, i32 0, i32 0
  %3017 = load i32, i32* %24, align 4
  %3018 = sext i32 %3017 to i64
  %3019 = getelementptr inbounds [400 x i32], [400 x i32]* %3016, i64 0, i64 %3018
  %3020 = load i32, i32* %3019, align 4
  %3021 = icmp slt i32 %3014, %3020
  br i1 %3021, label %3022, label %3173

3022:                                             ; preds = %3012
  %3023 = load i32, i32* %24, align 4
  %3024 = sext i32 %3023 to i64
  %3025 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3024
  %3026 = load i8, i8* %3025, align 1
  %3027 = zext i8 %3026 to i32
  %3028 = icmp eq i32 %3027, 0
  br i1 %3028, label %3029, label %3076

3029:                                             ; preds = %3022
  %3030 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3031 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3030, i32 0, i32 0
  %3032 = load i32, i32* %24, align 4
  %3033 = sext i32 %3032 to i64
  %3034 = getelementptr inbounds [400 x i32], [400 x i32]* %3031, i64 0, i64 %3033
  %3035 = load i32, i32* %3034, align 4
  %3036 = icmp eq i32 %3035, 100000
  br i1 %3036, label %3037, label %3047

3037:                                             ; preds = %3029
  %3038 = load i32, i32* %24, align 4
  %3039 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3040 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3039, i32 0, i32 5
  %3041 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3042 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3041, i32 0, i32 7
  %3043 = load i32, i32* %3042, align 4
  %3044 = add nsw i32 %3043, 1
  store i32 %3044, i32* %3042, align 4
  %3045 = sext i32 %3043 to i64
  %3046 = getelementptr inbounds [400 x i32], [400 x i32]* %3040, i64 0, i64 %3045
  store i32 %3038, i32* %3046, align 4
  br label %3047

3047:                                             ; preds = %3037, %3029
  %3048 = load i32, i32* %11, align 4
  %3049 = add nsw i32 %3048, 200
  %3050 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3051 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3050, i32 0, i32 0
  %3052 = load i32, i32* %24, align 4
  %3053 = sext i32 %3052 to i64
  %3054 = getelementptr inbounds [400 x i32], [400 x i32]* %3051, i64 0, i64 %3053
  store i32 %3049, i32* %3054, align 4
  %3055 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3056 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3055, i32 0, i32 1
  %3057 = load i32, i32* %24, align 4
  %3058 = sext i32 %3057 to i64
  %3059 = getelementptr inbounds [400 x i32], [400 x i32]* %3056, i64 0, i64 %3058
  store i32 200, i32* %3059, align 4
  %3060 = load i32, i32* %9, align 4
  %3061 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3062 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3061, i32 0, i32 2
  %3063 = load i32, i32* %24, align 4
  %3064 = sext i32 %3063 to i64
  %3065 = getelementptr inbounds [400 x i32], [400 x i32]* %3062, i64 0, i64 %3064
  store i32 %3060, i32* %3065, align 4
  %3066 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3067 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3066, i32 0, i32 3
  %3068 = load i32, i32* %24, align 4
  %3069 = sext i32 %3068 to i64
  %3070 = getelementptr inbounds [400 x i32], [400 x i32]* %3067, i64 0, i64 %3069
  store i32 0, i32* %3070, align 4
  %3071 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3072 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3071, i32 0, i32 4
  %3073 = load i32, i32* %24, align 4
  %3074 = sext i32 %3073 to i64
  %3075 = getelementptr inbounds [400 x i32], [400 x i32]* %3072, i64 0, i64 %3074
  store i32 0, i32* %3075, align 4
  br label %3172

3076:                                             ; preds = %3022
  %3077 = load i32, i32* %24, align 4
  %3078 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %3079 = call i32 @findstones(i32 %3077, i32 361, i32* %3078)
  store i32 %3079, i32* %13, align 4
  store i32 0, i32* %47, align 4
  br label %3080

3080:                                             ; preds = %3168, %3076
  %3081 = load i32, i32* %47, align 4
  %3082 = load i32, i32* %13, align 4
  %3083 = icmp slt i32 %3081, %3082
  br i1 %3083, label %3084, label %3171

3084:                                             ; preds = %3080
  %3085 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3086 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3085, i32 0, i32 0
  %3087 = load i32, i32* %47, align 4
  %3088 = sext i32 %3087 to i64
  %3089 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3088
  %3090 = load i32, i32* %3089, align 4
  %3091 = sext i32 %3090 to i64
  %3092 = getelementptr inbounds [400 x i32], [400 x i32]* %3086, i64 0, i64 %3091
  %3093 = load i32, i32* %3092, align 4
  %3094 = icmp eq i32 %3093, 100000
  br i1 %3094, label %3095, label %3108

3095:                                             ; preds = %3084
  %3096 = load i32, i32* %47, align 4
  %3097 = sext i32 %3096 to i64
  %3098 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3097
  %3099 = load i32, i32* %3098, align 4
  %3100 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3101 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3100, i32 0, i32 5
  %3102 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3103 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3102, i32 0, i32 7
  %3104 = load i32, i32* %3103, align 4
  %3105 = add nsw i32 %3104, 1
  store i32 %3105, i32* %3103, align 4
  %3106 = sext i32 %3104 to i64
  %3107 = getelementptr inbounds [400 x i32], [400 x i32]* %3101, i64 0, i64 %3106
  store i32 %3099, i32* %3107, align 4
  br label %3108

3108:                                             ; preds = %3095, %3084
  %3109 = load i32, i32* %11, align 4
  %3110 = add nsw i32 %3109, 200
  %3111 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3112 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3111, i32 0, i32 0
  %3113 = load i32, i32* %47, align 4
  %3114 = sext i32 %3113 to i64
  %3115 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3114
  %3116 = load i32, i32* %3115, align 4
  %3117 = sext i32 %3116 to i64
  %3118 = getelementptr inbounds [400 x i32], [400 x i32]* %3112, i64 0, i64 %3117
  store i32 %3110, i32* %3118, align 4
  %3119 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3120 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3119, i32 0, i32 1
  %3121 = load i32, i32* %47, align 4
  %3122 = sext i32 %3121 to i64
  %3123 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3122
  %3124 = load i32, i32* %3123, align 4
  %3125 = sext i32 %3124 to i64
  %3126 = getelementptr inbounds [400 x i32], [400 x i32]* %3120, i64 0, i64 %3125
  store i32 200, i32* %3126, align 4
  %3127 = load i32, i32* %9, align 4
  %3128 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3129 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3128, i32 0, i32 2
  %3130 = load i32, i32* %47, align 4
  %3131 = sext i32 %3130 to i64
  %3132 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3131
  %3133 = load i32, i32* %3132, align 4
  %3134 = sext i32 %3133 to i64
  %3135 = getelementptr inbounds [400 x i32], [400 x i32]* %3129, i64 0, i64 %3134
  store i32 %3127, i32* %3135, align 4
  %3136 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3137 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3136, i32 0, i32 3
  %3138 = load i32, i32* %47, align 4
  %3139 = sext i32 %3138 to i64
  %3140 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3139
  %3141 = load i32, i32* %3140, align 4
  %3142 = sext i32 %3141 to i64
  %3143 = getelementptr inbounds [400 x i32], [400 x i32]* %3137, i64 0, i64 %3142
  store i32 0, i32* %3143, align 4
  %3144 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3145 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3144, i32 0, i32 4
  %3146 = load i32, i32* %47, align 4
  %3147 = sext i32 %3146 to i64
  %3148 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3147
  %3149 = load i32, i32* %3148, align 4
  %3150 = sext i32 %3149 to i64
  %3151 = getelementptr inbounds [400 x i32], [400 x i32]* %3145, i64 0, i64 %3150
  store i32 0, i32* %3151, align 4
  %3152 = load i32, i32* %47, align 4
  %3153 = sext i32 %3152 to i64
  %3154 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3153
  %3155 = load i32, i32* %3154, align 4
  %3156 = load i32, i32* %5, align 4
  %3157 = icmp eq i32 %3155, %3156
  br i1 %3157, label %3158, label %3167

3158:                                             ; preds = %3108
  %3159 = load i32, i32* %11, align 4
  %3160 = add nsw i32 %3159, 200
  %3161 = load i32, i32* %14, align 4
  %3162 = icmp slt i32 %3160, %3161
  br i1 %3162, label %3163, label %3167

3163:                                             ; preds = %3158
  %3164 = load i32, i32* %11, align 4
  %3165 = add nsw i32 %3164, 200
  %3166 = sub nsw i32 %3165, 1
  store i32 %3166, i32* %14, align 4
  br label %3167

3167:                                             ; preds = %3163, %3158, %3108
  br label %3168

3168:                                             ; preds = %3167
  %3169 = load i32, i32* %47, align 4
  %3170 = add nsw i32 %3169, 1
  store i32 %3170, i32* %47, align 4
  br label %3080, !llvm.loop !39

3171:                                             ; preds = %3080
  br label %3172

3172:                                             ; preds = %3171, %3047
  br label %3173

3173:                                             ; preds = %3172, %3012
  br label %3174

3174:                                             ; preds = %3173
  br label %3175

3175:                                             ; preds = %3174, %3004, %2997
  br label %3176

3176:                                             ; preds = %3175, %2996
  br label %3177

3177:                                             ; preds = %3176, %2816
  br label %3178

3178:                                             ; preds = %3177, %2636
  br label %3179

3179:                                             ; preds = %3178, %2450, %2432, %2425, %2412, %2394, %2387, %2374, %2367
  br label %3180

3180:                                             ; preds = %3179, %1550, %1540, %1532, %1525
  %3181 = load i32, i32* %21, align 4
  %3182 = sext i32 %3181 to i64
  %3183 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3182
  %3184 = load i8, i8* %3183, align 1
  %3185 = zext i8 %3184 to i32
  %3186 = icmp eq i32 %3185, 0
  br i1 %3186, label %3187, label %3368

3187:                                             ; preds = %3180
  %3188 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3189 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3188, i32 0, i32 0
  %3190 = load i32, i32* %21, align 4
  %3191 = sext i32 %3190 to i64
  %3192 = getelementptr inbounds [400 x i32], [400 x i32]* %3189, i64 0, i64 %3191
  %3193 = load i32, i32* %3192, align 4
  %3194 = load i32, i32* %11, align 4
  %3195 = add nsw i32 %3194, 700
  %3196 = icmp sgt i32 %3193, %3195
  br i1 %3196, label %3197, label %3368

3197:                                             ; preds = %3187
  %3198 = load i32, i32* %21, align 4
  %3199 = load i32, i32* %8, align 4
  %3200 = call i32 @ladder_capturable(i32 %3198, i32 %3199)
  %3201 = icmp ne i32 %3200, 0
  br i1 %3201, label %3202, label %3368

3202:                                             ; preds = %3197
  br label %3203

3203:                                             ; preds = %3202
  %3204 = load i32, i32* %11, align 4
  %3205 = add nsw i32 %3204, 700
  %3206 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3207 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3206, i32 0, i32 0
  %3208 = load i32, i32* %21, align 4
  %3209 = sext i32 %3208 to i64
  %3210 = getelementptr inbounds [400 x i32], [400 x i32]* %3207, i64 0, i64 %3209
  %3211 = load i32, i32* %3210, align 4
  %3212 = icmp slt i32 %3205, %3211
  br i1 %3212, label %3213, label %3366

3213:                                             ; preds = %3203
  %3214 = load i32, i32* %21, align 4
  %3215 = sext i32 %3214 to i64
  %3216 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3215
  %3217 = load i8, i8* %3216, align 1
  %3218 = zext i8 %3217 to i32
  %3219 = icmp eq i32 %3218, 0
  br i1 %3219, label %3220, label %3268

3220:                                             ; preds = %3213
  %3221 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3222 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3221, i32 0, i32 0
  %3223 = load i32, i32* %21, align 4
  %3224 = sext i32 %3223 to i64
  %3225 = getelementptr inbounds [400 x i32], [400 x i32]* %3222, i64 0, i64 %3224
  %3226 = load i32, i32* %3225, align 4
  %3227 = icmp eq i32 %3226, 100000
  br i1 %3227, label %3228, label %3238

3228:                                             ; preds = %3220
  %3229 = load i32, i32* %21, align 4
  %3230 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3231 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3230, i32 0, i32 5
  %3232 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3233 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3232, i32 0, i32 7
  %3234 = load i32, i32* %3233, align 4
  %3235 = add nsw i32 %3234, 1
  store i32 %3235, i32* %3233, align 4
  %3236 = sext i32 %3234 to i64
  %3237 = getelementptr inbounds [400 x i32], [400 x i32]* %3231, i64 0, i64 %3236
  store i32 %3229, i32* %3237, align 4
  br label %3238

3238:                                             ; preds = %3228, %3220
  %3239 = load i32, i32* %11, align 4
  %3240 = add nsw i32 %3239, 700
  %3241 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3242 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3241, i32 0, i32 0
  %3243 = load i32, i32* %21, align 4
  %3244 = sext i32 %3243 to i64
  %3245 = getelementptr inbounds [400 x i32], [400 x i32]* %3242, i64 0, i64 %3244
  store i32 %3240, i32* %3245, align 4
  %3246 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3247 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3246, i32 0, i32 1
  %3248 = load i32, i32* %21, align 4
  %3249 = sext i32 %3248 to i64
  %3250 = getelementptr inbounds [400 x i32], [400 x i32]* %3247, i64 0, i64 %3249
  store i32 700, i32* %3250, align 4
  %3251 = load i32, i32* %9, align 4
  %3252 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3253 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3252, i32 0, i32 2
  %3254 = load i32, i32* %21, align 4
  %3255 = sext i32 %3254 to i64
  %3256 = getelementptr inbounds [400 x i32], [400 x i32]* %3253, i64 0, i64 %3255
  store i32 %3251, i32* %3256, align 4
  %3257 = load i32, i32* %21, align 4
  %3258 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3259 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3258, i32 0, i32 3
  %3260 = load i32, i32* %21, align 4
  %3261 = sext i32 %3260 to i64
  %3262 = getelementptr inbounds [400 x i32], [400 x i32]* %3259, i64 0, i64 %3261
  store i32 %3257, i32* %3262, align 4
  %3263 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3264 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3263, i32 0, i32 4
  %3265 = load i32, i32* %21, align 4
  %3266 = sext i32 %3265 to i64
  %3267 = getelementptr inbounds [400 x i32], [400 x i32]* %3264, i64 0, i64 %3266
  store i32 0, i32* %3267, align 4
  br label %3365

3268:                                             ; preds = %3213
  %3269 = load i32, i32* %21, align 4
  %3270 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %3271 = call i32 @findstones(i32 %3269, i32 361, i32* %3270)
  store i32 %3271, i32* %13, align 4
  store i32 0, i32* %48, align 4
  br label %3272

3272:                                             ; preds = %3361, %3268
  %3273 = load i32, i32* %48, align 4
  %3274 = load i32, i32* %13, align 4
  %3275 = icmp slt i32 %3273, %3274
  br i1 %3275, label %3276, label %3364

3276:                                             ; preds = %3272
  %3277 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3278 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3277, i32 0, i32 0
  %3279 = load i32, i32* %48, align 4
  %3280 = sext i32 %3279 to i64
  %3281 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3280
  %3282 = load i32, i32* %3281, align 4
  %3283 = sext i32 %3282 to i64
  %3284 = getelementptr inbounds [400 x i32], [400 x i32]* %3278, i64 0, i64 %3283
  %3285 = load i32, i32* %3284, align 4
  %3286 = icmp eq i32 %3285, 100000
  br i1 %3286, label %3287, label %3300

3287:                                             ; preds = %3276
  %3288 = load i32, i32* %48, align 4
  %3289 = sext i32 %3288 to i64
  %3290 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3289
  %3291 = load i32, i32* %3290, align 4
  %3292 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3293 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3292, i32 0, i32 5
  %3294 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3295 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3294, i32 0, i32 7
  %3296 = load i32, i32* %3295, align 4
  %3297 = add nsw i32 %3296, 1
  store i32 %3297, i32* %3295, align 4
  %3298 = sext i32 %3296 to i64
  %3299 = getelementptr inbounds [400 x i32], [400 x i32]* %3293, i64 0, i64 %3298
  store i32 %3291, i32* %3299, align 4
  br label %3300

3300:                                             ; preds = %3287, %3276
  %3301 = load i32, i32* %11, align 4
  %3302 = add nsw i32 %3301, 700
  %3303 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3304 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3303, i32 0, i32 0
  %3305 = load i32, i32* %48, align 4
  %3306 = sext i32 %3305 to i64
  %3307 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3306
  %3308 = load i32, i32* %3307, align 4
  %3309 = sext i32 %3308 to i64
  %3310 = getelementptr inbounds [400 x i32], [400 x i32]* %3304, i64 0, i64 %3309
  store i32 %3302, i32* %3310, align 4
  %3311 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3312 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3311, i32 0, i32 1
  %3313 = load i32, i32* %48, align 4
  %3314 = sext i32 %3313 to i64
  %3315 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3314
  %3316 = load i32, i32* %3315, align 4
  %3317 = sext i32 %3316 to i64
  %3318 = getelementptr inbounds [400 x i32], [400 x i32]* %3312, i64 0, i64 %3317
  store i32 700, i32* %3318, align 4
  %3319 = load i32, i32* %9, align 4
  %3320 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3321 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3320, i32 0, i32 2
  %3322 = load i32, i32* %48, align 4
  %3323 = sext i32 %3322 to i64
  %3324 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3323
  %3325 = load i32, i32* %3324, align 4
  %3326 = sext i32 %3325 to i64
  %3327 = getelementptr inbounds [400 x i32], [400 x i32]* %3321, i64 0, i64 %3326
  store i32 %3319, i32* %3327, align 4
  %3328 = load i32, i32* %21, align 4
  %3329 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3330 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3329, i32 0, i32 3
  %3331 = load i32, i32* %48, align 4
  %3332 = sext i32 %3331 to i64
  %3333 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3332
  %3334 = load i32, i32* %3333, align 4
  %3335 = sext i32 %3334 to i64
  %3336 = getelementptr inbounds [400 x i32], [400 x i32]* %3330, i64 0, i64 %3335
  store i32 %3328, i32* %3336, align 4
  %3337 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3338 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3337, i32 0, i32 4
  %3339 = load i32, i32* %48, align 4
  %3340 = sext i32 %3339 to i64
  %3341 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3340
  %3342 = load i32, i32* %3341, align 4
  %3343 = sext i32 %3342 to i64
  %3344 = getelementptr inbounds [400 x i32], [400 x i32]* %3338, i64 0, i64 %3343
  store i32 0, i32* %3344, align 4
  %3345 = load i32, i32* %48, align 4
  %3346 = sext i32 %3345 to i64
  %3347 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3346
  %3348 = load i32, i32* %3347, align 4
  %3349 = load i32, i32* %5, align 4
  %3350 = icmp eq i32 %3348, %3349
  br i1 %3350, label %3351, label %3360

3351:                                             ; preds = %3300
  %3352 = load i32, i32* %11, align 4
  %3353 = add nsw i32 %3352, 700
  %3354 = load i32, i32* %14, align 4
  %3355 = icmp slt i32 %3353, %3354
  br i1 %3355, label %3356, label %3360

3356:                                             ; preds = %3351
  %3357 = load i32, i32* %11, align 4
  %3358 = add nsw i32 %3357, 700
  %3359 = sub nsw i32 %3358, 1
  store i32 %3359, i32* %14, align 4
  br label %3360

3360:                                             ; preds = %3356, %3351, %3300
  br label %3361

3361:                                             ; preds = %3360
  %3362 = load i32, i32* %48, align 4
  %3363 = add nsw i32 %3362, 1
  store i32 %3363, i32* %48, align 4
  br label %3272, !llvm.loop !40

3364:                                             ; preds = %3272
  br label %3365

3365:                                             ; preds = %3364, %3238
  br label %3366

3366:                                             ; preds = %3365, %3203
  br label %3367

3367:                                             ; preds = %3366
  br label %3368

3368:                                             ; preds = %3367, %3197, %3187, %3180
  %3369 = load i32, i32* %21, align 4
  %3370 = sext i32 %3369 to i64
  %3371 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3370
  %3372 = load i8, i8* %3371, align 1
  %3373 = zext i8 %3372 to i32
  %3374 = icmp eq i32 %3373, 0
  br i1 %3374, label %3383, label %3375

3375:                                             ; preds = %3368
  %3376 = load i32, i32* %21, align 4
  %3377 = sext i32 %3376 to i64
  %3378 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3377
  %3379 = load i8, i8* %3378, align 1
  %3380 = zext i8 %3379 to i32
  %3381 = load i32, i32* %8, align 4
  %3382 = icmp eq i32 %3380, %3381
  br i1 %3382, label %3383, label %3557

3383:                                             ; preds = %3375, %3368
  %3384 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3385 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3384, i32 0, i32 0
  %3386 = load i32, i32* %21, align 4
  %3387 = sext i32 %3386 to i64
  %3388 = getelementptr inbounds [400 x i32], [400 x i32]* %3385, i64 0, i64 %3387
  %3389 = load i32, i32* %3388, align 4
  %3390 = load i32, i32* %11, align 4
  %3391 = add nsw i32 %3390, 1000
  %3392 = icmp sgt i32 %3389, %3391
  br i1 %3392, label %3393, label %3557

3393:                                             ; preds = %3383
  br label %3394

3394:                                             ; preds = %3393
  %3395 = load i32, i32* %11, align 4
  %3396 = add nsw i32 %3395, 1000
  %3397 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3398 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3397, i32 0, i32 0
  %3399 = load i32, i32* %21, align 4
  %3400 = sext i32 %3399 to i64
  %3401 = getelementptr inbounds [400 x i32], [400 x i32]* %3398, i64 0, i64 %3400
  %3402 = load i32, i32* %3401, align 4
  %3403 = icmp slt i32 %3396, %3402
  br i1 %3403, label %3404, label %3555

3404:                                             ; preds = %3394
  %3405 = load i32, i32* %21, align 4
  %3406 = sext i32 %3405 to i64
  %3407 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3406
  %3408 = load i8, i8* %3407, align 1
  %3409 = zext i8 %3408 to i32
  %3410 = icmp eq i32 %3409, 0
  br i1 %3410, label %3411, label %3458

3411:                                             ; preds = %3404
  %3412 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3413 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3412, i32 0, i32 0
  %3414 = load i32, i32* %21, align 4
  %3415 = sext i32 %3414 to i64
  %3416 = getelementptr inbounds [400 x i32], [400 x i32]* %3413, i64 0, i64 %3415
  %3417 = load i32, i32* %3416, align 4
  %3418 = icmp eq i32 %3417, 100000
  br i1 %3418, label %3419, label %3429

3419:                                             ; preds = %3411
  %3420 = load i32, i32* %21, align 4
  %3421 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3422 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3421, i32 0, i32 5
  %3423 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3424 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3423, i32 0, i32 7
  %3425 = load i32, i32* %3424, align 4
  %3426 = add nsw i32 %3425, 1
  store i32 %3426, i32* %3424, align 4
  %3427 = sext i32 %3425 to i64
  %3428 = getelementptr inbounds [400 x i32], [400 x i32]* %3422, i64 0, i64 %3427
  store i32 %3420, i32* %3428, align 4
  br label %3429

3429:                                             ; preds = %3419, %3411
  %3430 = load i32, i32* %11, align 4
  %3431 = add nsw i32 %3430, 1000
  %3432 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3433 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3432, i32 0, i32 0
  %3434 = load i32, i32* %21, align 4
  %3435 = sext i32 %3434 to i64
  %3436 = getelementptr inbounds [400 x i32], [400 x i32]* %3433, i64 0, i64 %3435
  store i32 %3431, i32* %3436, align 4
  %3437 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3438 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3437, i32 0, i32 1
  %3439 = load i32, i32* %21, align 4
  %3440 = sext i32 %3439 to i64
  %3441 = getelementptr inbounds [400 x i32], [400 x i32]* %3438, i64 0, i64 %3440
  store i32 1000, i32* %3441, align 4
  %3442 = load i32, i32* %9, align 4
  %3443 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3444 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3443, i32 0, i32 2
  %3445 = load i32, i32* %21, align 4
  %3446 = sext i32 %3445 to i64
  %3447 = getelementptr inbounds [400 x i32], [400 x i32]* %3444, i64 0, i64 %3446
  store i32 %3442, i32* %3447, align 4
  %3448 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3449 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3448, i32 0, i32 3
  %3450 = load i32, i32* %21, align 4
  %3451 = sext i32 %3450 to i64
  %3452 = getelementptr inbounds [400 x i32], [400 x i32]* %3449, i64 0, i64 %3451
  store i32 0, i32* %3452, align 4
  %3453 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3454 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3453, i32 0, i32 4
  %3455 = load i32, i32* %21, align 4
  %3456 = sext i32 %3455 to i64
  %3457 = getelementptr inbounds [400 x i32], [400 x i32]* %3454, i64 0, i64 %3456
  store i32 0, i32* %3457, align 4
  br label %3554

3458:                                             ; preds = %3404
  %3459 = load i32, i32* %21, align 4
  %3460 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %3461 = call i32 @findstones(i32 %3459, i32 361, i32* %3460)
  store i32 %3461, i32* %13, align 4
  store i32 0, i32* %49, align 4
  br label %3462

3462:                                             ; preds = %3550, %3458
  %3463 = load i32, i32* %49, align 4
  %3464 = load i32, i32* %13, align 4
  %3465 = icmp slt i32 %3463, %3464
  br i1 %3465, label %3466, label %3553

3466:                                             ; preds = %3462
  %3467 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3468 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3467, i32 0, i32 0
  %3469 = load i32, i32* %49, align 4
  %3470 = sext i32 %3469 to i64
  %3471 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3470
  %3472 = load i32, i32* %3471, align 4
  %3473 = sext i32 %3472 to i64
  %3474 = getelementptr inbounds [400 x i32], [400 x i32]* %3468, i64 0, i64 %3473
  %3475 = load i32, i32* %3474, align 4
  %3476 = icmp eq i32 %3475, 100000
  br i1 %3476, label %3477, label %3490

3477:                                             ; preds = %3466
  %3478 = load i32, i32* %49, align 4
  %3479 = sext i32 %3478 to i64
  %3480 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3479
  %3481 = load i32, i32* %3480, align 4
  %3482 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3483 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3482, i32 0, i32 5
  %3484 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3485 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3484, i32 0, i32 7
  %3486 = load i32, i32* %3485, align 4
  %3487 = add nsw i32 %3486, 1
  store i32 %3487, i32* %3485, align 4
  %3488 = sext i32 %3486 to i64
  %3489 = getelementptr inbounds [400 x i32], [400 x i32]* %3483, i64 0, i64 %3488
  store i32 %3481, i32* %3489, align 4
  br label %3490

3490:                                             ; preds = %3477, %3466
  %3491 = load i32, i32* %11, align 4
  %3492 = add nsw i32 %3491, 1000
  %3493 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3494 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3493, i32 0, i32 0
  %3495 = load i32, i32* %49, align 4
  %3496 = sext i32 %3495 to i64
  %3497 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3496
  %3498 = load i32, i32* %3497, align 4
  %3499 = sext i32 %3498 to i64
  %3500 = getelementptr inbounds [400 x i32], [400 x i32]* %3494, i64 0, i64 %3499
  store i32 %3492, i32* %3500, align 4
  %3501 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3502 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3501, i32 0, i32 1
  %3503 = load i32, i32* %49, align 4
  %3504 = sext i32 %3503 to i64
  %3505 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3504
  %3506 = load i32, i32* %3505, align 4
  %3507 = sext i32 %3506 to i64
  %3508 = getelementptr inbounds [400 x i32], [400 x i32]* %3502, i64 0, i64 %3507
  store i32 1000, i32* %3508, align 4
  %3509 = load i32, i32* %9, align 4
  %3510 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3511 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3510, i32 0, i32 2
  %3512 = load i32, i32* %49, align 4
  %3513 = sext i32 %3512 to i64
  %3514 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3513
  %3515 = load i32, i32* %3514, align 4
  %3516 = sext i32 %3515 to i64
  %3517 = getelementptr inbounds [400 x i32], [400 x i32]* %3511, i64 0, i64 %3516
  store i32 %3509, i32* %3517, align 4
  %3518 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3519 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3518, i32 0, i32 3
  %3520 = load i32, i32* %49, align 4
  %3521 = sext i32 %3520 to i64
  %3522 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3521
  %3523 = load i32, i32* %3522, align 4
  %3524 = sext i32 %3523 to i64
  %3525 = getelementptr inbounds [400 x i32], [400 x i32]* %3519, i64 0, i64 %3524
  store i32 0, i32* %3525, align 4
  %3526 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3527 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3526, i32 0, i32 4
  %3528 = load i32, i32* %49, align 4
  %3529 = sext i32 %3528 to i64
  %3530 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3529
  %3531 = load i32, i32* %3530, align 4
  %3532 = sext i32 %3531 to i64
  %3533 = getelementptr inbounds [400 x i32], [400 x i32]* %3527, i64 0, i64 %3532
  store i32 0, i32* %3533, align 4
  %3534 = load i32, i32* %49, align 4
  %3535 = sext i32 %3534 to i64
  %3536 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3535
  %3537 = load i32, i32* %3536, align 4
  %3538 = load i32, i32* %5, align 4
  %3539 = icmp eq i32 %3537, %3538
  br i1 %3539, label %3540, label %3549

3540:                                             ; preds = %3490
  %3541 = load i32, i32* %11, align 4
  %3542 = add nsw i32 %3541, 1000
  %3543 = load i32, i32* %14, align 4
  %3544 = icmp slt i32 %3542, %3543
  br i1 %3544, label %3545, label %3549

3545:                                             ; preds = %3540
  %3546 = load i32, i32* %11, align 4
  %3547 = add nsw i32 %3546, 1000
  %3548 = sub nsw i32 %3547, 1
  store i32 %3548, i32* %14, align 4
  br label %3549

3549:                                             ; preds = %3545, %3540, %3490
  br label %3550

3550:                                             ; preds = %3549
  %3551 = load i32, i32* %49, align 4
  %3552 = add nsw i32 %3551, 1
  store i32 %3552, i32* %49, align 4
  br label %3462, !llvm.loop !41

3553:                                             ; preds = %3462
  br label %3554

3554:                                             ; preds = %3553, %3429
  br label %3555

3555:                                             ; preds = %3554, %3394
  br label %3556

3556:                                             ; preds = %3555
  br label %3557

3557:                                             ; preds = %3556, %3383, %3375
  %3558 = load i32, i32* %22, align 4
  %3559 = sext i32 %3558 to i64
  %3560 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3559
  %3561 = load i8, i8* %3560, align 1
  %3562 = zext i8 %3561 to i32
  %3563 = icmp eq i32 %3562, 0
  br i1 %3563, label %3564, label %3753

3564:                                             ; preds = %3557
  %3565 = load i32, i32* %21, align 4
  %3566 = sext i32 %3565 to i64
  %3567 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3566
  %3568 = load i8, i8* %3567, align 1
  %3569 = zext i8 %3568 to i32
  %3570 = icmp eq i32 %3569, 0
  br i1 %3570, label %3571, label %3753

3571:                                             ; preds = %3564
  %3572 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3573 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3572, i32 0, i32 0
  %3574 = load i32, i32* %22, align 4
  %3575 = sext i32 %3574 to i64
  %3576 = getelementptr inbounds [400 x i32], [400 x i32]* %3573, i64 0, i64 %3575
  %3577 = load i32, i32* %3576, align 4
  %3578 = load i32, i32* %11, align 4
  %3579 = add nsw i32 %3578, 1100
  %3580 = icmp sgt i32 %3577, %3579
  br i1 %3580, label %3581, label %3753

3581:                                             ; preds = %3571
  %3582 = load i32, i32* %7, align 4
  %3583 = load i32, i32* %22, align 4
  %3584 = load i32, i32* %21, align 4
  %3585 = call i32 @does_secure(i32 %3582, i32 %3583, i32 %3584)
  %3586 = icmp ne i32 %3585, 0
  br i1 %3586, label %3587, label %3753

3587:                                             ; preds = %3581
  br label %3588

3588:                                             ; preds = %3587
  %3589 = load i32, i32* %11, align 4
  %3590 = add nsw i32 %3589, 1100
  %3591 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3592 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3591, i32 0, i32 0
  %3593 = load i32, i32* %22, align 4
  %3594 = sext i32 %3593 to i64
  %3595 = getelementptr inbounds [400 x i32], [400 x i32]* %3592, i64 0, i64 %3594
  %3596 = load i32, i32* %3595, align 4
  %3597 = icmp slt i32 %3590, %3596
  br i1 %3597, label %3598, label %3751

3598:                                             ; preds = %3588
  %3599 = load i32, i32* %22, align 4
  %3600 = sext i32 %3599 to i64
  %3601 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3600
  %3602 = load i8, i8* %3601, align 1
  %3603 = zext i8 %3602 to i32
  %3604 = icmp eq i32 %3603, 0
  br i1 %3604, label %3605, label %3653

3605:                                             ; preds = %3598
  %3606 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3607 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3606, i32 0, i32 0
  %3608 = load i32, i32* %22, align 4
  %3609 = sext i32 %3608 to i64
  %3610 = getelementptr inbounds [400 x i32], [400 x i32]* %3607, i64 0, i64 %3609
  %3611 = load i32, i32* %3610, align 4
  %3612 = icmp eq i32 %3611, 100000
  br i1 %3612, label %3613, label %3623

3613:                                             ; preds = %3605
  %3614 = load i32, i32* %22, align 4
  %3615 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3616 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3615, i32 0, i32 5
  %3617 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3618 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3617, i32 0, i32 7
  %3619 = load i32, i32* %3618, align 4
  %3620 = add nsw i32 %3619, 1
  store i32 %3620, i32* %3618, align 4
  %3621 = sext i32 %3619 to i64
  %3622 = getelementptr inbounds [400 x i32], [400 x i32]* %3616, i64 0, i64 %3621
  store i32 %3614, i32* %3622, align 4
  br label %3623

3623:                                             ; preds = %3613, %3605
  %3624 = load i32, i32* %11, align 4
  %3625 = add nsw i32 %3624, 1100
  %3626 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3627 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3626, i32 0, i32 0
  %3628 = load i32, i32* %22, align 4
  %3629 = sext i32 %3628 to i64
  %3630 = getelementptr inbounds [400 x i32], [400 x i32]* %3627, i64 0, i64 %3629
  store i32 %3625, i32* %3630, align 4
  %3631 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3632 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3631, i32 0, i32 1
  %3633 = load i32, i32* %22, align 4
  %3634 = sext i32 %3633 to i64
  %3635 = getelementptr inbounds [400 x i32], [400 x i32]* %3632, i64 0, i64 %3634
  store i32 1000, i32* %3635, align 4
  %3636 = load i32, i32* %9, align 4
  %3637 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3638 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3637, i32 0, i32 2
  %3639 = load i32, i32* %22, align 4
  %3640 = sext i32 %3639 to i64
  %3641 = getelementptr inbounds [400 x i32], [400 x i32]* %3638, i64 0, i64 %3640
  store i32 %3636, i32* %3641, align 4
  %3642 = load i32, i32* %21, align 4
  %3643 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3644 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3643, i32 0, i32 3
  %3645 = load i32, i32* %22, align 4
  %3646 = sext i32 %3645 to i64
  %3647 = getelementptr inbounds [400 x i32], [400 x i32]* %3644, i64 0, i64 %3646
  store i32 %3642, i32* %3647, align 4
  %3648 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3649 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3648, i32 0, i32 4
  %3650 = load i32, i32* %22, align 4
  %3651 = sext i32 %3650 to i64
  %3652 = getelementptr inbounds [400 x i32], [400 x i32]* %3649, i64 0, i64 %3651
  store i32 0, i32* %3652, align 4
  br label %3750

3653:                                             ; preds = %3598
  %3654 = load i32, i32* %22, align 4
  %3655 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %3656 = call i32 @findstones(i32 %3654, i32 361, i32* %3655)
  store i32 %3656, i32* %13, align 4
  store i32 0, i32* %50, align 4
  br label %3657

3657:                                             ; preds = %3746, %3653
  %3658 = load i32, i32* %50, align 4
  %3659 = load i32, i32* %13, align 4
  %3660 = icmp slt i32 %3658, %3659
  br i1 %3660, label %3661, label %3749

3661:                                             ; preds = %3657
  %3662 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3663 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3662, i32 0, i32 0
  %3664 = load i32, i32* %50, align 4
  %3665 = sext i32 %3664 to i64
  %3666 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3665
  %3667 = load i32, i32* %3666, align 4
  %3668 = sext i32 %3667 to i64
  %3669 = getelementptr inbounds [400 x i32], [400 x i32]* %3663, i64 0, i64 %3668
  %3670 = load i32, i32* %3669, align 4
  %3671 = icmp eq i32 %3670, 100000
  br i1 %3671, label %3672, label %3685

3672:                                             ; preds = %3661
  %3673 = load i32, i32* %50, align 4
  %3674 = sext i32 %3673 to i64
  %3675 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3674
  %3676 = load i32, i32* %3675, align 4
  %3677 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3678 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3677, i32 0, i32 5
  %3679 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3680 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3679, i32 0, i32 7
  %3681 = load i32, i32* %3680, align 4
  %3682 = add nsw i32 %3681, 1
  store i32 %3682, i32* %3680, align 4
  %3683 = sext i32 %3681 to i64
  %3684 = getelementptr inbounds [400 x i32], [400 x i32]* %3678, i64 0, i64 %3683
  store i32 %3676, i32* %3684, align 4
  br label %3685

3685:                                             ; preds = %3672, %3661
  %3686 = load i32, i32* %11, align 4
  %3687 = add nsw i32 %3686, 1100
  %3688 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3689 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3688, i32 0, i32 0
  %3690 = load i32, i32* %50, align 4
  %3691 = sext i32 %3690 to i64
  %3692 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3691
  %3693 = load i32, i32* %3692, align 4
  %3694 = sext i32 %3693 to i64
  %3695 = getelementptr inbounds [400 x i32], [400 x i32]* %3689, i64 0, i64 %3694
  store i32 %3687, i32* %3695, align 4
  %3696 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3697 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3696, i32 0, i32 1
  %3698 = load i32, i32* %50, align 4
  %3699 = sext i32 %3698 to i64
  %3700 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3699
  %3701 = load i32, i32* %3700, align 4
  %3702 = sext i32 %3701 to i64
  %3703 = getelementptr inbounds [400 x i32], [400 x i32]* %3697, i64 0, i64 %3702
  store i32 1000, i32* %3703, align 4
  %3704 = load i32, i32* %9, align 4
  %3705 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3706 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3705, i32 0, i32 2
  %3707 = load i32, i32* %50, align 4
  %3708 = sext i32 %3707 to i64
  %3709 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3708
  %3710 = load i32, i32* %3709, align 4
  %3711 = sext i32 %3710 to i64
  %3712 = getelementptr inbounds [400 x i32], [400 x i32]* %3706, i64 0, i64 %3711
  store i32 %3704, i32* %3712, align 4
  %3713 = load i32, i32* %21, align 4
  %3714 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3715 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3714, i32 0, i32 3
  %3716 = load i32, i32* %50, align 4
  %3717 = sext i32 %3716 to i64
  %3718 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3717
  %3719 = load i32, i32* %3718, align 4
  %3720 = sext i32 %3719 to i64
  %3721 = getelementptr inbounds [400 x i32], [400 x i32]* %3715, i64 0, i64 %3720
  store i32 %3713, i32* %3721, align 4
  %3722 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3723 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3722, i32 0, i32 4
  %3724 = load i32, i32* %50, align 4
  %3725 = sext i32 %3724 to i64
  %3726 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3725
  %3727 = load i32, i32* %3726, align 4
  %3728 = sext i32 %3727 to i64
  %3729 = getelementptr inbounds [400 x i32], [400 x i32]* %3723, i64 0, i64 %3728
  store i32 0, i32* %3729, align 4
  %3730 = load i32, i32* %50, align 4
  %3731 = sext i32 %3730 to i64
  %3732 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3731
  %3733 = load i32, i32* %3732, align 4
  %3734 = load i32, i32* %5, align 4
  %3735 = icmp eq i32 %3733, %3734
  br i1 %3735, label %3736, label %3745

3736:                                             ; preds = %3685
  %3737 = load i32, i32* %11, align 4
  %3738 = add nsw i32 %3737, 1100
  %3739 = load i32, i32* %14, align 4
  %3740 = icmp slt i32 %3738, %3739
  br i1 %3740, label %3741, label %3745

3741:                                             ; preds = %3736
  %3742 = load i32, i32* %11, align 4
  %3743 = add nsw i32 %3742, 1100
  %3744 = sub nsw i32 %3743, 1
  store i32 %3744, i32* %14, align 4
  br label %3745

3745:                                             ; preds = %3741, %3736, %3685
  br label %3746

3746:                                             ; preds = %3745
  %3747 = load i32, i32* %50, align 4
  %3748 = add nsw i32 %3747, 1
  store i32 %3748, i32* %50, align 4
  br label %3657, !llvm.loop !42

3749:                                             ; preds = %3657
  br label %3750

3750:                                             ; preds = %3749, %3623
  br label %3751

3751:                                             ; preds = %3750, %3588
  br label %3752

3752:                                             ; preds = %3751
  br label %3753

3753:                                             ; preds = %3752, %3581, %3571, %3564, %3557
  %3754 = load i32, i32* %22, align 4
  %3755 = sext i32 %3754 to i64
  %3756 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3755
  %3757 = load i8, i8* %3756, align 1
  %3758 = zext i8 %3757 to i32
  %3759 = icmp eq i32 %3758, 0
  br i1 %3759, label %3760, label %3949

3760:                                             ; preds = %3753
  %3761 = load i32, i32* %26, align 4
  %3762 = sext i32 %3761 to i64
  %3763 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3762
  %3764 = load i8, i8* %3763, align 1
  %3765 = zext i8 %3764 to i32
  %3766 = icmp eq i32 %3765, 0
  br i1 %3766, label %3767, label %3949

3767:                                             ; preds = %3760
  %3768 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3769 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3768, i32 0, i32 0
  %3770 = load i32, i32* %22, align 4
  %3771 = sext i32 %3770 to i64
  %3772 = getelementptr inbounds [400 x i32], [400 x i32]* %3769, i64 0, i64 %3771
  %3773 = load i32, i32* %3772, align 4
  %3774 = load i32, i32* %11, align 4
  %3775 = add nsw i32 %3774, 1100
  %3776 = icmp sgt i32 %3773, %3775
  br i1 %3776, label %3777, label %3949

3777:                                             ; preds = %3767
  %3778 = load i32, i32* %7, align 4
  %3779 = load i32, i32* %22, align 4
  %3780 = load i32, i32* %26, align 4
  %3781 = call i32 @does_secure(i32 %3778, i32 %3779, i32 %3780)
  %3782 = icmp ne i32 %3781, 0
  br i1 %3782, label %3783, label %3949

3783:                                             ; preds = %3777
  br label %3784

3784:                                             ; preds = %3783
  %3785 = load i32, i32* %11, align 4
  %3786 = add nsw i32 %3785, 1100
  %3787 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3788 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3787, i32 0, i32 0
  %3789 = load i32, i32* %22, align 4
  %3790 = sext i32 %3789 to i64
  %3791 = getelementptr inbounds [400 x i32], [400 x i32]* %3788, i64 0, i64 %3790
  %3792 = load i32, i32* %3791, align 4
  %3793 = icmp slt i32 %3786, %3792
  br i1 %3793, label %3794, label %3947

3794:                                             ; preds = %3784
  %3795 = load i32, i32* %22, align 4
  %3796 = sext i32 %3795 to i64
  %3797 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3796
  %3798 = load i8, i8* %3797, align 1
  %3799 = zext i8 %3798 to i32
  %3800 = icmp eq i32 %3799, 0
  br i1 %3800, label %3801, label %3849

3801:                                             ; preds = %3794
  %3802 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3803 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3802, i32 0, i32 0
  %3804 = load i32, i32* %22, align 4
  %3805 = sext i32 %3804 to i64
  %3806 = getelementptr inbounds [400 x i32], [400 x i32]* %3803, i64 0, i64 %3805
  %3807 = load i32, i32* %3806, align 4
  %3808 = icmp eq i32 %3807, 100000
  br i1 %3808, label %3809, label %3819

3809:                                             ; preds = %3801
  %3810 = load i32, i32* %22, align 4
  %3811 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3812 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3811, i32 0, i32 5
  %3813 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3814 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3813, i32 0, i32 7
  %3815 = load i32, i32* %3814, align 4
  %3816 = add nsw i32 %3815, 1
  store i32 %3816, i32* %3814, align 4
  %3817 = sext i32 %3815 to i64
  %3818 = getelementptr inbounds [400 x i32], [400 x i32]* %3812, i64 0, i64 %3817
  store i32 %3810, i32* %3818, align 4
  br label %3819

3819:                                             ; preds = %3809, %3801
  %3820 = load i32, i32* %11, align 4
  %3821 = add nsw i32 %3820, 1100
  %3822 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3823 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3822, i32 0, i32 0
  %3824 = load i32, i32* %22, align 4
  %3825 = sext i32 %3824 to i64
  %3826 = getelementptr inbounds [400 x i32], [400 x i32]* %3823, i64 0, i64 %3825
  store i32 %3821, i32* %3826, align 4
  %3827 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3828 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3827, i32 0, i32 1
  %3829 = load i32, i32* %22, align 4
  %3830 = sext i32 %3829 to i64
  %3831 = getelementptr inbounds [400 x i32], [400 x i32]* %3828, i64 0, i64 %3830
  store i32 1000, i32* %3831, align 4
  %3832 = load i32, i32* %9, align 4
  %3833 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3834 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3833, i32 0, i32 2
  %3835 = load i32, i32* %22, align 4
  %3836 = sext i32 %3835 to i64
  %3837 = getelementptr inbounds [400 x i32], [400 x i32]* %3834, i64 0, i64 %3836
  store i32 %3832, i32* %3837, align 4
  %3838 = load i32, i32* %26, align 4
  %3839 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3840 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3839, i32 0, i32 3
  %3841 = load i32, i32* %22, align 4
  %3842 = sext i32 %3841 to i64
  %3843 = getelementptr inbounds [400 x i32], [400 x i32]* %3840, i64 0, i64 %3842
  store i32 %3838, i32* %3843, align 4
  %3844 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3845 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3844, i32 0, i32 4
  %3846 = load i32, i32* %22, align 4
  %3847 = sext i32 %3846 to i64
  %3848 = getelementptr inbounds [400 x i32], [400 x i32]* %3845, i64 0, i64 %3847
  store i32 0, i32* %3848, align 4
  br label %3946

3849:                                             ; preds = %3794
  %3850 = load i32, i32* %22, align 4
  %3851 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %3852 = call i32 @findstones(i32 %3850, i32 361, i32* %3851)
  store i32 %3852, i32* %13, align 4
  store i32 0, i32* %51, align 4
  br label %3853

3853:                                             ; preds = %3942, %3849
  %3854 = load i32, i32* %51, align 4
  %3855 = load i32, i32* %13, align 4
  %3856 = icmp slt i32 %3854, %3855
  br i1 %3856, label %3857, label %3945

3857:                                             ; preds = %3853
  %3858 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3859 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3858, i32 0, i32 0
  %3860 = load i32, i32* %51, align 4
  %3861 = sext i32 %3860 to i64
  %3862 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3861
  %3863 = load i32, i32* %3862, align 4
  %3864 = sext i32 %3863 to i64
  %3865 = getelementptr inbounds [400 x i32], [400 x i32]* %3859, i64 0, i64 %3864
  %3866 = load i32, i32* %3865, align 4
  %3867 = icmp eq i32 %3866, 100000
  br i1 %3867, label %3868, label %3881

3868:                                             ; preds = %3857
  %3869 = load i32, i32* %51, align 4
  %3870 = sext i32 %3869 to i64
  %3871 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3870
  %3872 = load i32, i32* %3871, align 4
  %3873 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3874 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3873, i32 0, i32 5
  %3875 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3876 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3875, i32 0, i32 7
  %3877 = load i32, i32* %3876, align 4
  %3878 = add nsw i32 %3877, 1
  store i32 %3878, i32* %3876, align 4
  %3879 = sext i32 %3877 to i64
  %3880 = getelementptr inbounds [400 x i32], [400 x i32]* %3874, i64 0, i64 %3879
  store i32 %3872, i32* %3880, align 4
  br label %3881

3881:                                             ; preds = %3868, %3857
  %3882 = load i32, i32* %11, align 4
  %3883 = add nsw i32 %3882, 1100
  %3884 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3885 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3884, i32 0, i32 0
  %3886 = load i32, i32* %51, align 4
  %3887 = sext i32 %3886 to i64
  %3888 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3887
  %3889 = load i32, i32* %3888, align 4
  %3890 = sext i32 %3889 to i64
  %3891 = getelementptr inbounds [400 x i32], [400 x i32]* %3885, i64 0, i64 %3890
  store i32 %3883, i32* %3891, align 4
  %3892 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3893 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3892, i32 0, i32 1
  %3894 = load i32, i32* %51, align 4
  %3895 = sext i32 %3894 to i64
  %3896 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3895
  %3897 = load i32, i32* %3896, align 4
  %3898 = sext i32 %3897 to i64
  %3899 = getelementptr inbounds [400 x i32], [400 x i32]* %3893, i64 0, i64 %3898
  store i32 1000, i32* %3899, align 4
  %3900 = load i32, i32* %9, align 4
  %3901 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3902 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3901, i32 0, i32 2
  %3903 = load i32, i32* %51, align 4
  %3904 = sext i32 %3903 to i64
  %3905 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3904
  %3906 = load i32, i32* %3905, align 4
  %3907 = sext i32 %3906 to i64
  %3908 = getelementptr inbounds [400 x i32], [400 x i32]* %3902, i64 0, i64 %3907
  store i32 %3900, i32* %3908, align 4
  %3909 = load i32, i32* %26, align 4
  %3910 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3911 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3910, i32 0, i32 3
  %3912 = load i32, i32* %51, align 4
  %3913 = sext i32 %3912 to i64
  %3914 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3913
  %3915 = load i32, i32* %3914, align 4
  %3916 = sext i32 %3915 to i64
  %3917 = getelementptr inbounds [400 x i32], [400 x i32]* %3911, i64 0, i64 %3916
  store i32 %3909, i32* %3917, align 4
  %3918 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3919 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3918, i32 0, i32 4
  %3920 = load i32, i32* %51, align 4
  %3921 = sext i32 %3920 to i64
  %3922 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3921
  %3923 = load i32, i32* %3922, align 4
  %3924 = sext i32 %3923 to i64
  %3925 = getelementptr inbounds [400 x i32], [400 x i32]* %3919, i64 0, i64 %3924
  store i32 0, i32* %3925, align 4
  %3926 = load i32, i32* %51, align 4
  %3927 = sext i32 %3926 to i64
  %3928 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %3927
  %3929 = load i32, i32* %3928, align 4
  %3930 = load i32, i32* %5, align 4
  %3931 = icmp eq i32 %3929, %3930
  br i1 %3931, label %3932, label %3941

3932:                                             ; preds = %3881
  %3933 = load i32, i32* %11, align 4
  %3934 = add nsw i32 %3933, 1100
  %3935 = load i32, i32* %14, align 4
  %3936 = icmp slt i32 %3934, %3935
  br i1 %3936, label %3937, label %3941

3937:                                             ; preds = %3932
  %3938 = load i32, i32* %11, align 4
  %3939 = add nsw i32 %3938, 1100
  %3940 = sub nsw i32 %3939, 1
  store i32 %3940, i32* %14, align 4
  br label %3941

3941:                                             ; preds = %3937, %3932, %3881
  br label %3942

3942:                                             ; preds = %3941
  %3943 = load i32, i32* %51, align 4
  %3944 = add nsw i32 %3943, 1
  store i32 %3944, i32* %51, align 4
  br label %3853, !llvm.loop !43

3945:                                             ; preds = %3853
  br label %3946

3946:                                             ; preds = %3945, %3819
  br label %3947

3947:                                             ; preds = %3946, %3784
  br label %3948

3948:                                             ; preds = %3947
  br label %3949

3949:                                             ; preds = %3948, %3777, %3767, %3760, %3753
  %3950 = load i32, i32* %26, align 4
  %3951 = sext i32 %3950 to i64
  %3952 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3951
  %3953 = load i8, i8* %3952, align 1
  %3954 = zext i8 %3953 to i32
  %3955 = icmp eq i32 %3954, 0
  br i1 %3955, label %3956, label %4145

3956:                                             ; preds = %3949
  %3957 = load i32, i32* %24, align 4
  %3958 = sext i32 %3957 to i64
  %3959 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3958
  %3960 = load i8, i8* %3959, align 1
  %3961 = zext i8 %3960 to i32
  %3962 = icmp eq i32 %3961, 0
  br i1 %3962, label %3963, label %4145

3963:                                             ; preds = %3956
  %3964 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3965 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3964, i32 0, i32 0
  %3966 = load i32, i32* %24, align 4
  %3967 = sext i32 %3966 to i64
  %3968 = getelementptr inbounds [400 x i32], [400 x i32]* %3965, i64 0, i64 %3967
  %3969 = load i32, i32* %3968, align 4
  %3970 = load i32, i32* %11, align 4
  %3971 = add nsw i32 %3970, 1100
  %3972 = icmp sgt i32 %3969, %3971
  br i1 %3972, label %3973, label %4145

3973:                                             ; preds = %3963
  %3974 = load i32, i32* %7, align 4
  %3975 = load i32, i32* %24, align 4
  %3976 = load i32, i32* %26, align 4
  %3977 = call i32 @does_secure(i32 %3974, i32 %3975, i32 %3976)
  %3978 = icmp ne i32 %3977, 0
  br i1 %3978, label %3979, label %4145

3979:                                             ; preds = %3973
  br label %3980

3980:                                             ; preds = %3979
  %3981 = load i32, i32* %11, align 4
  %3982 = add nsw i32 %3981, 1100
  %3983 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3984 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3983, i32 0, i32 0
  %3985 = load i32, i32* %24, align 4
  %3986 = sext i32 %3985 to i64
  %3987 = getelementptr inbounds [400 x i32], [400 x i32]* %3984, i64 0, i64 %3986
  %3988 = load i32, i32* %3987, align 4
  %3989 = icmp slt i32 %3982, %3988
  br i1 %3989, label %3990, label %4143

3990:                                             ; preds = %3980
  %3991 = load i32, i32* %24, align 4
  %3992 = sext i32 %3991 to i64
  %3993 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %3992
  %3994 = load i8, i8* %3993, align 1
  %3995 = zext i8 %3994 to i32
  %3996 = icmp eq i32 %3995, 0
  br i1 %3996, label %3997, label %4045

3997:                                             ; preds = %3990
  %3998 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %3999 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %3998, i32 0, i32 0
  %4000 = load i32, i32* %24, align 4
  %4001 = sext i32 %4000 to i64
  %4002 = getelementptr inbounds [400 x i32], [400 x i32]* %3999, i64 0, i64 %4001
  %4003 = load i32, i32* %4002, align 4
  %4004 = icmp eq i32 %4003, 100000
  br i1 %4004, label %4005, label %4015

4005:                                             ; preds = %3997
  %4006 = load i32, i32* %24, align 4
  %4007 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4008 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4007, i32 0, i32 5
  %4009 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4010 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4009, i32 0, i32 7
  %4011 = load i32, i32* %4010, align 4
  %4012 = add nsw i32 %4011, 1
  store i32 %4012, i32* %4010, align 4
  %4013 = sext i32 %4011 to i64
  %4014 = getelementptr inbounds [400 x i32], [400 x i32]* %4008, i64 0, i64 %4013
  store i32 %4006, i32* %4014, align 4
  br label %4015

4015:                                             ; preds = %4005, %3997
  %4016 = load i32, i32* %11, align 4
  %4017 = add nsw i32 %4016, 1100
  %4018 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4019 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4018, i32 0, i32 0
  %4020 = load i32, i32* %24, align 4
  %4021 = sext i32 %4020 to i64
  %4022 = getelementptr inbounds [400 x i32], [400 x i32]* %4019, i64 0, i64 %4021
  store i32 %4017, i32* %4022, align 4
  %4023 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4024 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4023, i32 0, i32 1
  %4025 = load i32, i32* %24, align 4
  %4026 = sext i32 %4025 to i64
  %4027 = getelementptr inbounds [400 x i32], [400 x i32]* %4024, i64 0, i64 %4026
  store i32 1000, i32* %4027, align 4
  %4028 = load i32, i32* %9, align 4
  %4029 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4030 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4029, i32 0, i32 2
  %4031 = load i32, i32* %24, align 4
  %4032 = sext i32 %4031 to i64
  %4033 = getelementptr inbounds [400 x i32], [400 x i32]* %4030, i64 0, i64 %4032
  store i32 %4028, i32* %4033, align 4
  %4034 = load i32, i32* %26, align 4
  %4035 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4036 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4035, i32 0, i32 3
  %4037 = load i32, i32* %24, align 4
  %4038 = sext i32 %4037 to i64
  %4039 = getelementptr inbounds [400 x i32], [400 x i32]* %4036, i64 0, i64 %4038
  store i32 %4034, i32* %4039, align 4
  %4040 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4041 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4040, i32 0, i32 4
  %4042 = load i32, i32* %24, align 4
  %4043 = sext i32 %4042 to i64
  %4044 = getelementptr inbounds [400 x i32], [400 x i32]* %4041, i64 0, i64 %4043
  store i32 0, i32* %4044, align 4
  br label %4142

4045:                                             ; preds = %3990
  %4046 = load i32, i32* %24, align 4
  %4047 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %4048 = call i32 @findstones(i32 %4046, i32 361, i32* %4047)
  store i32 %4048, i32* %13, align 4
  store i32 0, i32* %52, align 4
  br label %4049

4049:                                             ; preds = %4138, %4045
  %4050 = load i32, i32* %52, align 4
  %4051 = load i32, i32* %13, align 4
  %4052 = icmp slt i32 %4050, %4051
  br i1 %4052, label %4053, label %4141

4053:                                             ; preds = %4049
  %4054 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4055 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4054, i32 0, i32 0
  %4056 = load i32, i32* %52, align 4
  %4057 = sext i32 %4056 to i64
  %4058 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4057
  %4059 = load i32, i32* %4058, align 4
  %4060 = sext i32 %4059 to i64
  %4061 = getelementptr inbounds [400 x i32], [400 x i32]* %4055, i64 0, i64 %4060
  %4062 = load i32, i32* %4061, align 4
  %4063 = icmp eq i32 %4062, 100000
  br i1 %4063, label %4064, label %4077

4064:                                             ; preds = %4053
  %4065 = load i32, i32* %52, align 4
  %4066 = sext i32 %4065 to i64
  %4067 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4066
  %4068 = load i32, i32* %4067, align 4
  %4069 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4070 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4069, i32 0, i32 5
  %4071 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4072 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4071, i32 0, i32 7
  %4073 = load i32, i32* %4072, align 4
  %4074 = add nsw i32 %4073, 1
  store i32 %4074, i32* %4072, align 4
  %4075 = sext i32 %4073 to i64
  %4076 = getelementptr inbounds [400 x i32], [400 x i32]* %4070, i64 0, i64 %4075
  store i32 %4068, i32* %4076, align 4
  br label %4077

4077:                                             ; preds = %4064, %4053
  %4078 = load i32, i32* %11, align 4
  %4079 = add nsw i32 %4078, 1100
  %4080 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4081 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4080, i32 0, i32 0
  %4082 = load i32, i32* %52, align 4
  %4083 = sext i32 %4082 to i64
  %4084 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4083
  %4085 = load i32, i32* %4084, align 4
  %4086 = sext i32 %4085 to i64
  %4087 = getelementptr inbounds [400 x i32], [400 x i32]* %4081, i64 0, i64 %4086
  store i32 %4079, i32* %4087, align 4
  %4088 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4089 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4088, i32 0, i32 1
  %4090 = load i32, i32* %52, align 4
  %4091 = sext i32 %4090 to i64
  %4092 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4091
  %4093 = load i32, i32* %4092, align 4
  %4094 = sext i32 %4093 to i64
  %4095 = getelementptr inbounds [400 x i32], [400 x i32]* %4089, i64 0, i64 %4094
  store i32 1000, i32* %4095, align 4
  %4096 = load i32, i32* %9, align 4
  %4097 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4098 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4097, i32 0, i32 2
  %4099 = load i32, i32* %52, align 4
  %4100 = sext i32 %4099 to i64
  %4101 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4100
  %4102 = load i32, i32* %4101, align 4
  %4103 = sext i32 %4102 to i64
  %4104 = getelementptr inbounds [400 x i32], [400 x i32]* %4098, i64 0, i64 %4103
  store i32 %4096, i32* %4104, align 4
  %4105 = load i32, i32* %26, align 4
  %4106 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4107 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4106, i32 0, i32 3
  %4108 = load i32, i32* %52, align 4
  %4109 = sext i32 %4108 to i64
  %4110 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4109
  %4111 = load i32, i32* %4110, align 4
  %4112 = sext i32 %4111 to i64
  %4113 = getelementptr inbounds [400 x i32], [400 x i32]* %4107, i64 0, i64 %4112
  store i32 %4105, i32* %4113, align 4
  %4114 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4115 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4114, i32 0, i32 4
  %4116 = load i32, i32* %52, align 4
  %4117 = sext i32 %4116 to i64
  %4118 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4117
  %4119 = load i32, i32* %4118, align 4
  %4120 = sext i32 %4119 to i64
  %4121 = getelementptr inbounds [400 x i32], [400 x i32]* %4115, i64 0, i64 %4120
  store i32 0, i32* %4121, align 4
  %4122 = load i32, i32* %52, align 4
  %4123 = sext i32 %4122 to i64
  %4124 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4123
  %4125 = load i32, i32* %4124, align 4
  %4126 = load i32, i32* %5, align 4
  %4127 = icmp eq i32 %4125, %4126
  br i1 %4127, label %4128, label %4137

4128:                                             ; preds = %4077
  %4129 = load i32, i32* %11, align 4
  %4130 = add nsw i32 %4129, 1100
  %4131 = load i32, i32* %14, align 4
  %4132 = icmp slt i32 %4130, %4131
  br i1 %4132, label %4133, label %4137

4133:                                             ; preds = %4128
  %4134 = load i32, i32* %11, align 4
  %4135 = add nsw i32 %4134, 1100
  %4136 = sub nsw i32 %4135, 1
  store i32 %4136, i32* %14, align 4
  br label %4137

4137:                                             ; preds = %4133, %4128, %4077
  br label %4138

4138:                                             ; preds = %4137
  %4139 = load i32, i32* %52, align 4
  %4140 = add nsw i32 %4139, 1
  store i32 %4140, i32* %52, align 4
  br label %4049, !llvm.loop !44

4141:                                             ; preds = %4049
  br label %4142

4142:                                             ; preds = %4141, %4015
  br label %4143

4143:                                             ; preds = %4142, %3980
  br label %4144

4144:                                             ; preds = %4143
  br label %4145

4145:                                             ; preds = %4144, %3973, %3963, %3956, %3949
  %4146 = load i32, i32* %26, align 4
  %4147 = sext i32 %4146 to i64
  %4148 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4147
  %4149 = load i8, i8* %4148, align 1
  %4150 = zext i8 %4149 to i32
  %4151 = icmp eq i32 %4150, 0
  br i1 %4151, label %4152, label %4381

4152:                                             ; preds = %4145
  %4153 = load i32, i32* %24, align 4
  %4154 = sext i32 %4153 to i64
  %4155 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4154
  %4156 = load i8, i8* %4155, align 1
  %4157 = zext i8 %4156 to i32
  %4158 = icmp eq i32 %4157, 0
  br i1 %4158, label %4159, label %4381

4159:                                             ; preds = %4152
  %4160 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4161 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4160, i32 0, i32 0
  %4162 = load i32, i32* %24, align 4
  %4163 = sext i32 %4162 to i64
  %4164 = getelementptr inbounds [400 x i32], [400 x i32]* %4161, i64 0, i64 %4163
  %4165 = load i32, i32* %4164, align 4
  %4166 = load i32, i32* %11, align 4
  %4167 = add nsw i32 %4166, 1100
  %4168 = icmp sgt i32 %4165, %4167
  br i1 %4168, label %4169, label %4381

4169:                                             ; preds = %4159
  %4170 = load i32, i32* %21, align 4
  %4171 = sext i32 %4170 to i64
  %4172 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4171
  %4173 = load i8, i8* %4172, align 1
  %4174 = zext i8 %4173 to i32
  %4175 = load i32, i32* %7, align 4
  %4176 = icmp eq i32 %4174, %4175
  br i1 %4176, label %4177, label %4192

4177:                                             ; preds = %4169
  %4178 = load i32, i32* %25, align 4
  %4179 = sext i32 %4178 to i64
  %4180 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4179
  %4181 = load i8, i8* %4180, align 1
  %4182 = zext i8 %4181 to i32
  %4183 = load i32, i32* %7, align 4
  %4184 = icmp eq i32 %4182, %4183
  br i1 %4184, label %4185, label %4192

4185:                                             ; preds = %4177
  %4186 = load i32, i32* %22, align 4
  %4187 = sext i32 %4186 to i64
  %4188 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4187
  %4189 = load i8, i8* %4188, align 1
  %4190 = zext i8 %4189 to i32
  %4191 = icmp eq i32 %4190, 0
  br i1 %4191, label %4215, label %4192

4192:                                             ; preds = %4185, %4177, %4169
  %4193 = load i32, i32* %27, align 4
  %4194 = sext i32 %4193 to i64
  %4195 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4194
  %4196 = load i8, i8* %4195, align 1
  %4197 = zext i8 %4196 to i32
  %4198 = load i32, i32* %7, align 4
  %4199 = icmp eq i32 %4197, %4198
  br i1 %4199, label %4200, label %4381

4200:                                             ; preds = %4192
  %4201 = load i32, i32* %29, align 4
  %4202 = sext i32 %4201 to i64
  %4203 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4202
  %4204 = load i8, i8* %4203, align 1
  %4205 = zext i8 %4204 to i32
  %4206 = load i32, i32* %7, align 4
  %4207 = icmp eq i32 %4205, %4206
  br i1 %4207, label %4208, label %4381

4208:                                             ; preds = %4200
  %4209 = load i32, i32* %28, align 4
  %4210 = sext i32 %4209 to i64
  %4211 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4210
  %4212 = load i8, i8* %4211, align 1
  %4213 = zext i8 %4212 to i32
  %4214 = icmp eq i32 %4213, 0
  br i1 %4214, label %4215, label %4381

4215:                                             ; preds = %4208, %4185
  br label %4216

4216:                                             ; preds = %4215
  %4217 = load i32, i32* %11, align 4
  %4218 = add nsw i32 %4217, 1100
  %4219 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4220 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4219, i32 0, i32 0
  %4221 = load i32, i32* %24, align 4
  %4222 = sext i32 %4221 to i64
  %4223 = getelementptr inbounds [400 x i32], [400 x i32]* %4220, i64 0, i64 %4222
  %4224 = load i32, i32* %4223, align 4
  %4225 = icmp slt i32 %4218, %4224
  br i1 %4225, label %4226, label %4379

4226:                                             ; preds = %4216
  %4227 = load i32, i32* %24, align 4
  %4228 = sext i32 %4227 to i64
  %4229 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4228
  %4230 = load i8, i8* %4229, align 1
  %4231 = zext i8 %4230 to i32
  %4232 = icmp eq i32 %4231, 0
  br i1 %4232, label %4233, label %4281

4233:                                             ; preds = %4226
  %4234 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4235 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4234, i32 0, i32 0
  %4236 = load i32, i32* %24, align 4
  %4237 = sext i32 %4236 to i64
  %4238 = getelementptr inbounds [400 x i32], [400 x i32]* %4235, i64 0, i64 %4237
  %4239 = load i32, i32* %4238, align 4
  %4240 = icmp eq i32 %4239, 100000
  br i1 %4240, label %4241, label %4251

4241:                                             ; preds = %4233
  %4242 = load i32, i32* %24, align 4
  %4243 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4244 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4243, i32 0, i32 5
  %4245 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4246 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4245, i32 0, i32 7
  %4247 = load i32, i32* %4246, align 4
  %4248 = add nsw i32 %4247, 1
  store i32 %4248, i32* %4246, align 4
  %4249 = sext i32 %4247 to i64
  %4250 = getelementptr inbounds [400 x i32], [400 x i32]* %4244, i64 0, i64 %4249
  store i32 %4242, i32* %4250, align 4
  br label %4251

4251:                                             ; preds = %4241, %4233
  %4252 = load i32, i32* %11, align 4
  %4253 = add nsw i32 %4252, 1100
  %4254 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4255 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4254, i32 0, i32 0
  %4256 = load i32, i32* %24, align 4
  %4257 = sext i32 %4256 to i64
  %4258 = getelementptr inbounds [400 x i32], [400 x i32]* %4255, i64 0, i64 %4257
  store i32 %4253, i32* %4258, align 4
  %4259 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4260 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4259, i32 0, i32 1
  %4261 = load i32, i32* %24, align 4
  %4262 = sext i32 %4261 to i64
  %4263 = getelementptr inbounds [400 x i32], [400 x i32]* %4260, i64 0, i64 %4262
  store i32 1000, i32* %4263, align 4
  %4264 = load i32, i32* %9, align 4
  %4265 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4266 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4265, i32 0, i32 2
  %4267 = load i32, i32* %24, align 4
  %4268 = sext i32 %4267 to i64
  %4269 = getelementptr inbounds [400 x i32], [400 x i32]* %4266, i64 0, i64 %4268
  store i32 %4264, i32* %4269, align 4
  %4270 = load i32, i32* %26, align 4
  %4271 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4272 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4271, i32 0, i32 3
  %4273 = load i32, i32* %24, align 4
  %4274 = sext i32 %4273 to i64
  %4275 = getelementptr inbounds [400 x i32], [400 x i32]* %4272, i64 0, i64 %4274
  store i32 %4270, i32* %4275, align 4
  %4276 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4277 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4276, i32 0, i32 4
  %4278 = load i32, i32* %24, align 4
  %4279 = sext i32 %4278 to i64
  %4280 = getelementptr inbounds [400 x i32], [400 x i32]* %4277, i64 0, i64 %4279
  store i32 0, i32* %4280, align 4
  br label %4378

4281:                                             ; preds = %4226
  %4282 = load i32, i32* %24, align 4
  %4283 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %4284 = call i32 @findstones(i32 %4282, i32 361, i32* %4283)
  store i32 %4284, i32* %13, align 4
  store i32 0, i32* %53, align 4
  br label %4285

4285:                                             ; preds = %4374, %4281
  %4286 = load i32, i32* %53, align 4
  %4287 = load i32, i32* %13, align 4
  %4288 = icmp slt i32 %4286, %4287
  br i1 %4288, label %4289, label %4377

4289:                                             ; preds = %4285
  %4290 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4291 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4290, i32 0, i32 0
  %4292 = load i32, i32* %53, align 4
  %4293 = sext i32 %4292 to i64
  %4294 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4293
  %4295 = load i32, i32* %4294, align 4
  %4296 = sext i32 %4295 to i64
  %4297 = getelementptr inbounds [400 x i32], [400 x i32]* %4291, i64 0, i64 %4296
  %4298 = load i32, i32* %4297, align 4
  %4299 = icmp eq i32 %4298, 100000
  br i1 %4299, label %4300, label %4313

4300:                                             ; preds = %4289
  %4301 = load i32, i32* %53, align 4
  %4302 = sext i32 %4301 to i64
  %4303 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4302
  %4304 = load i32, i32* %4303, align 4
  %4305 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4306 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4305, i32 0, i32 5
  %4307 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4308 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4307, i32 0, i32 7
  %4309 = load i32, i32* %4308, align 4
  %4310 = add nsw i32 %4309, 1
  store i32 %4310, i32* %4308, align 4
  %4311 = sext i32 %4309 to i64
  %4312 = getelementptr inbounds [400 x i32], [400 x i32]* %4306, i64 0, i64 %4311
  store i32 %4304, i32* %4312, align 4
  br label %4313

4313:                                             ; preds = %4300, %4289
  %4314 = load i32, i32* %11, align 4
  %4315 = add nsw i32 %4314, 1100
  %4316 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4317 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4316, i32 0, i32 0
  %4318 = load i32, i32* %53, align 4
  %4319 = sext i32 %4318 to i64
  %4320 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4319
  %4321 = load i32, i32* %4320, align 4
  %4322 = sext i32 %4321 to i64
  %4323 = getelementptr inbounds [400 x i32], [400 x i32]* %4317, i64 0, i64 %4322
  store i32 %4315, i32* %4323, align 4
  %4324 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4325 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4324, i32 0, i32 1
  %4326 = load i32, i32* %53, align 4
  %4327 = sext i32 %4326 to i64
  %4328 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4327
  %4329 = load i32, i32* %4328, align 4
  %4330 = sext i32 %4329 to i64
  %4331 = getelementptr inbounds [400 x i32], [400 x i32]* %4325, i64 0, i64 %4330
  store i32 1000, i32* %4331, align 4
  %4332 = load i32, i32* %9, align 4
  %4333 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4334 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4333, i32 0, i32 2
  %4335 = load i32, i32* %53, align 4
  %4336 = sext i32 %4335 to i64
  %4337 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4336
  %4338 = load i32, i32* %4337, align 4
  %4339 = sext i32 %4338 to i64
  %4340 = getelementptr inbounds [400 x i32], [400 x i32]* %4334, i64 0, i64 %4339
  store i32 %4332, i32* %4340, align 4
  %4341 = load i32, i32* %26, align 4
  %4342 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4343 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4342, i32 0, i32 3
  %4344 = load i32, i32* %53, align 4
  %4345 = sext i32 %4344 to i64
  %4346 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4345
  %4347 = load i32, i32* %4346, align 4
  %4348 = sext i32 %4347 to i64
  %4349 = getelementptr inbounds [400 x i32], [400 x i32]* %4343, i64 0, i64 %4348
  store i32 %4341, i32* %4349, align 4
  %4350 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4351 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4350, i32 0, i32 4
  %4352 = load i32, i32* %53, align 4
  %4353 = sext i32 %4352 to i64
  %4354 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4353
  %4355 = load i32, i32* %4354, align 4
  %4356 = sext i32 %4355 to i64
  %4357 = getelementptr inbounds [400 x i32], [400 x i32]* %4351, i64 0, i64 %4356
  store i32 0, i32* %4357, align 4
  %4358 = load i32, i32* %53, align 4
  %4359 = sext i32 %4358 to i64
  %4360 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4359
  %4361 = load i32, i32* %4360, align 4
  %4362 = load i32, i32* %5, align 4
  %4363 = icmp eq i32 %4361, %4362
  br i1 %4363, label %4364, label %4373

4364:                                             ; preds = %4313
  %4365 = load i32, i32* %11, align 4
  %4366 = add nsw i32 %4365, 1100
  %4367 = load i32, i32* %14, align 4
  %4368 = icmp slt i32 %4366, %4367
  br i1 %4368, label %4369, label %4373

4369:                                             ; preds = %4364
  %4370 = load i32, i32* %11, align 4
  %4371 = add nsw i32 %4370, 1100
  %4372 = sub nsw i32 %4371, 1
  store i32 %4372, i32* %14, align 4
  br label %4373

4373:                                             ; preds = %4369, %4364, %4313
  br label %4374

4374:                                             ; preds = %4373
  %4375 = load i32, i32* %53, align 4
  %4376 = add nsw i32 %4375, 1
  store i32 %4376, i32* %53, align 4
  br label %4285, !llvm.loop !45

4377:                                             ; preds = %4285
  br label %4378

4378:                                             ; preds = %4377, %4251
  br label %4379

4379:                                             ; preds = %4378, %4216
  br label %4380

4380:                                             ; preds = %4379
  br label %4381

4381:                                             ; preds = %4380, %4208, %4200, %4192, %4159, %4152, %4145
  %4382 = load i32, i32* %22, align 4
  %4383 = sext i32 %4382 to i64
  %4384 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4383
  %4385 = load i8, i8* %4384, align 1
  %4386 = zext i8 %4385 to i32
  %4387 = icmp eq i32 %4386, 0
  br i1 %4387, label %4388, label %4580

4388:                                             ; preds = %4381
  %4389 = load i32, i32* %21, align 4
  %4390 = sext i32 %4389 to i64
  %4391 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4390
  %4392 = load i8, i8* %4391, align 1
  %4393 = zext i8 %4392 to i32
  %4394 = icmp eq i32 %4393, 0
  br i1 %4394, label %4395, label %4580

4395:                                             ; preds = %4388
  %4396 = load i32, i32* %26, align 4
  %4397 = sext i32 %4396 to i64
  %4398 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4397
  %4399 = load i8, i8* %4398, align 1
  %4400 = zext i8 %4399 to i32
  %4401 = icmp eq i32 %4400, 0
  br i1 %4401, label %4402, label %4580

4402:                                             ; preds = %4395
  %4403 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4404 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4403, i32 0, i32 0
  %4405 = load i32, i32* %22, align 4
  %4406 = sext i32 %4405 to i64
  %4407 = getelementptr inbounds [400 x i32], [400 x i32]* %4404, i64 0, i64 %4406
  %4408 = load i32, i32* %4407, align 4
  %4409 = load i32, i32* %11, align 4
  %4410 = add nsw i32 %4409, 1300
  %4411 = icmp sgt i32 %4408, %4410
  br i1 %4411, label %4412, label %4580

4412:                                             ; preds = %4402
  br label %4413

4413:                                             ; preds = %4412
  %4414 = load i32, i32* %11, align 4
  %4415 = add nsw i32 %4414, 1300
  %4416 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4417 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4416, i32 0, i32 0
  %4418 = load i32, i32* %22, align 4
  %4419 = sext i32 %4418 to i64
  %4420 = getelementptr inbounds [400 x i32], [400 x i32]* %4417, i64 0, i64 %4419
  %4421 = load i32, i32* %4420, align 4
  %4422 = icmp slt i32 %4415, %4421
  br i1 %4422, label %4423, label %4578

4423:                                             ; preds = %4413
  %4424 = load i32, i32* %22, align 4
  %4425 = sext i32 %4424 to i64
  %4426 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4425
  %4427 = load i8, i8* %4426, align 1
  %4428 = zext i8 %4427 to i32
  %4429 = icmp eq i32 %4428, 0
  br i1 %4429, label %4430, label %4479

4430:                                             ; preds = %4423
  %4431 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4432 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4431, i32 0, i32 0
  %4433 = load i32, i32* %22, align 4
  %4434 = sext i32 %4433 to i64
  %4435 = getelementptr inbounds [400 x i32], [400 x i32]* %4432, i64 0, i64 %4434
  %4436 = load i32, i32* %4435, align 4
  %4437 = icmp eq i32 %4436, 100000
  br i1 %4437, label %4438, label %4448

4438:                                             ; preds = %4430
  %4439 = load i32, i32* %22, align 4
  %4440 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4441 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4440, i32 0, i32 5
  %4442 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4443 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4442, i32 0, i32 7
  %4444 = load i32, i32* %4443, align 4
  %4445 = add nsw i32 %4444, 1
  store i32 %4445, i32* %4443, align 4
  %4446 = sext i32 %4444 to i64
  %4447 = getelementptr inbounds [400 x i32], [400 x i32]* %4441, i64 0, i64 %4446
  store i32 %4439, i32* %4447, align 4
  br label %4448

4448:                                             ; preds = %4438, %4430
  %4449 = load i32, i32* %11, align 4
  %4450 = add nsw i32 %4449, 1300
  %4451 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4452 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4451, i32 0, i32 0
  %4453 = load i32, i32* %22, align 4
  %4454 = sext i32 %4453 to i64
  %4455 = getelementptr inbounds [400 x i32], [400 x i32]* %4452, i64 0, i64 %4454
  store i32 %4450, i32* %4455, align 4
  %4456 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4457 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4456, i32 0, i32 1
  %4458 = load i32, i32* %22, align 4
  %4459 = sext i32 %4458 to i64
  %4460 = getelementptr inbounds [400 x i32], [400 x i32]* %4457, i64 0, i64 %4459
  store i32 1000, i32* %4460, align 4
  %4461 = load i32, i32* %9, align 4
  %4462 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4463 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4462, i32 0, i32 2
  %4464 = load i32, i32* %22, align 4
  %4465 = sext i32 %4464 to i64
  %4466 = getelementptr inbounds [400 x i32], [400 x i32]* %4463, i64 0, i64 %4465
  store i32 %4461, i32* %4466, align 4
  %4467 = load i32, i32* %21, align 4
  %4468 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4469 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4468, i32 0, i32 3
  %4470 = load i32, i32* %22, align 4
  %4471 = sext i32 %4470 to i64
  %4472 = getelementptr inbounds [400 x i32], [400 x i32]* %4469, i64 0, i64 %4471
  store i32 %4467, i32* %4472, align 4
  %4473 = load i32, i32* %26, align 4
  %4474 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4475 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4474, i32 0, i32 4
  %4476 = load i32, i32* %22, align 4
  %4477 = sext i32 %4476 to i64
  %4478 = getelementptr inbounds [400 x i32], [400 x i32]* %4475, i64 0, i64 %4477
  store i32 %4473, i32* %4478, align 4
  br label %4577

4479:                                             ; preds = %4423
  %4480 = load i32, i32* %22, align 4
  %4481 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %4482 = call i32 @findstones(i32 %4480, i32 361, i32* %4481)
  store i32 %4482, i32* %13, align 4
  store i32 0, i32* %54, align 4
  br label %4483

4483:                                             ; preds = %4573, %4479
  %4484 = load i32, i32* %54, align 4
  %4485 = load i32, i32* %13, align 4
  %4486 = icmp slt i32 %4484, %4485
  br i1 %4486, label %4487, label %4576

4487:                                             ; preds = %4483
  %4488 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4489 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4488, i32 0, i32 0
  %4490 = load i32, i32* %54, align 4
  %4491 = sext i32 %4490 to i64
  %4492 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4491
  %4493 = load i32, i32* %4492, align 4
  %4494 = sext i32 %4493 to i64
  %4495 = getelementptr inbounds [400 x i32], [400 x i32]* %4489, i64 0, i64 %4494
  %4496 = load i32, i32* %4495, align 4
  %4497 = icmp eq i32 %4496, 100000
  br i1 %4497, label %4498, label %4511

4498:                                             ; preds = %4487
  %4499 = load i32, i32* %54, align 4
  %4500 = sext i32 %4499 to i64
  %4501 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4500
  %4502 = load i32, i32* %4501, align 4
  %4503 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4504 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4503, i32 0, i32 5
  %4505 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4506 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4505, i32 0, i32 7
  %4507 = load i32, i32* %4506, align 4
  %4508 = add nsw i32 %4507, 1
  store i32 %4508, i32* %4506, align 4
  %4509 = sext i32 %4507 to i64
  %4510 = getelementptr inbounds [400 x i32], [400 x i32]* %4504, i64 0, i64 %4509
  store i32 %4502, i32* %4510, align 4
  br label %4511

4511:                                             ; preds = %4498, %4487
  %4512 = load i32, i32* %11, align 4
  %4513 = add nsw i32 %4512, 1300
  %4514 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4515 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4514, i32 0, i32 0
  %4516 = load i32, i32* %54, align 4
  %4517 = sext i32 %4516 to i64
  %4518 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4517
  %4519 = load i32, i32* %4518, align 4
  %4520 = sext i32 %4519 to i64
  %4521 = getelementptr inbounds [400 x i32], [400 x i32]* %4515, i64 0, i64 %4520
  store i32 %4513, i32* %4521, align 4
  %4522 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4523 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4522, i32 0, i32 1
  %4524 = load i32, i32* %54, align 4
  %4525 = sext i32 %4524 to i64
  %4526 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4525
  %4527 = load i32, i32* %4526, align 4
  %4528 = sext i32 %4527 to i64
  %4529 = getelementptr inbounds [400 x i32], [400 x i32]* %4523, i64 0, i64 %4528
  store i32 1000, i32* %4529, align 4
  %4530 = load i32, i32* %9, align 4
  %4531 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4532 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4531, i32 0, i32 2
  %4533 = load i32, i32* %54, align 4
  %4534 = sext i32 %4533 to i64
  %4535 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4534
  %4536 = load i32, i32* %4535, align 4
  %4537 = sext i32 %4536 to i64
  %4538 = getelementptr inbounds [400 x i32], [400 x i32]* %4532, i64 0, i64 %4537
  store i32 %4530, i32* %4538, align 4
  %4539 = load i32, i32* %21, align 4
  %4540 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4541 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4540, i32 0, i32 3
  %4542 = load i32, i32* %54, align 4
  %4543 = sext i32 %4542 to i64
  %4544 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4543
  %4545 = load i32, i32* %4544, align 4
  %4546 = sext i32 %4545 to i64
  %4547 = getelementptr inbounds [400 x i32], [400 x i32]* %4541, i64 0, i64 %4546
  store i32 %4539, i32* %4547, align 4
  %4548 = load i32, i32* %26, align 4
  %4549 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4550 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4549, i32 0, i32 4
  %4551 = load i32, i32* %54, align 4
  %4552 = sext i32 %4551 to i64
  %4553 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4552
  %4554 = load i32, i32* %4553, align 4
  %4555 = sext i32 %4554 to i64
  %4556 = getelementptr inbounds [400 x i32], [400 x i32]* %4550, i64 0, i64 %4555
  store i32 %4548, i32* %4556, align 4
  %4557 = load i32, i32* %54, align 4
  %4558 = sext i32 %4557 to i64
  %4559 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4558
  %4560 = load i32, i32* %4559, align 4
  %4561 = load i32, i32* %5, align 4
  %4562 = icmp eq i32 %4560, %4561
  br i1 %4562, label %4563, label %4572

4563:                                             ; preds = %4511
  %4564 = load i32, i32* %11, align 4
  %4565 = add nsw i32 %4564, 1300
  %4566 = load i32, i32* %14, align 4
  %4567 = icmp slt i32 %4565, %4566
  br i1 %4567, label %4568, label %4572

4568:                                             ; preds = %4563
  %4569 = load i32, i32* %11, align 4
  %4570 = add nsw i32 %4569, 1300
  %4571 = sub nsw i32 %4570, 1
  store i32 %4571, i32* %14, align 4
  br label %4572

4572:                                             ; preds = %4568, %4563, %4511
  br label %4573

4573:                                             ; preds = %4572
  %4574 = load i32, i32* %54, align 4
  %4575 = add nsw i32 %4574, 1
  store i32 %4575, i32* %54, align 4
  br label %4483, !llvm.loop !46

4576:                                             ; preds = %4483
  br label %4577

4577:                                             ; preds = %4576, %4448
  br label %4578

4578:                                             ; preds = %4577, %4413
  br label %4579

4579:                                             ; preds = %4578
  br label %4580

4580:                                             ; preds = %4579, %4402, %4395, %4388, %4381
  %4581 = load i32, i32* %21, align 4
  %4582 = sext i32 %4581 to i64
  %4583 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4582
  %4584 = load i8, i8* %4583, align 1
  %4585 = zext i8 %4584 to i32
  %4586 = icmp eq i32 %4585, 0
  br i1 %4586, label %4587, label %4980

4587:                                             ; preds = %4580
  %4588 = load i32, i32* %22, align 4
  %4589 = sext i32 %4588 to i64
  %4590 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4589
  %4591 = load i8, i8* %4590, align 1
  %4592 = zext i8 %4591 to i32
  %4593 = icmp eq i32 %4592, 0
  br i1 %4593, label %4594, label %4980

4594:                                             ; preds = %4587
  %4595 = load i32, i32* %26, align 4
  %4596 = sext i32 %4595 to i64
  %4597 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4596
  %4598 = load i8, i8* %4597, align 1
  %4599 = zext i8 %4598 to i32
  %4600 = icmp eq i32 %4599, 0
  br i1 %4600, label %4601, label %4980

4601:                                             ; preds = %4594
  %4602 = load i32, i32* %24, align 4
  %4603 = sext i32 %4602 to i64
  %4604 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4603
  %4605 = load i8, i8* %4604, align 1
  %4606 = zext i8 %4605 to i32
  %4607 = icmp eq i32 %4606, 0
  br i1 %4607, label %4608, label %4980

4608:                                             ; preds = %4601
  %4609 = load i32, i32* %25, align 4
  %4610 = sext i32 %4609 to i64
  %4611 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4610
  %4612 = load i8, i8* %4611, align 1
  %4613 = zext i8 %4612 to i32
  %4614 = icmp eq i32 %4613, 0
  br i1 %4614, label %4615, label %4980

4615:                                             ; preds = %4608
  %4616 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4617 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4616, i32 0, i32 0
  %4618 = load i32, i32* %25, align 4
  %4619 = sext i32 %4618 to i64
  %4620 = getelementptr inbounds [400 x i32], [400 x i32]* %4617, i64 0, i64 %4619
  %4621 = load i32, i32* %4620, align 4
  %4622 = load i32, i32* %11, align 4
  %4623 = add nsw i32 %4622, 1300
  %4624 = icmp sgt i32 %4621, %4623
  br i1 %4624, label %4635, label %4625

4625:                                             ; preds = %4615
  %4626 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4627 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4626, i32 0, i32 0
  %4628 = load i32, i32* %24, align 4
  %4629 = sext i32 %4628 to i64
  %4630 = getelementptr inbounds [400 x i32], [400 x i32]* %4627, i64 0, i64 %4629
  %4631 = load i32, i32* %4630, align 4
  %4632 = load i32, i32* %11, align 4
  %4633 = add nsw i32 %4632, 1300
  %4634 = icmp sgt i32 %4631, %4633
  br i1 %4634, label %4635, label %4980

4635:                                             ; preds = %4625, %4615
  %4636 = load i32, i32* %9, align 4
  %4637 = call i32 @countlib(i32 %4636)
  %4638 = icmp sge i32 %4637, 3
  br i1 %4638, label %4639, label %4980

4639:                                             ; preds = %4635
  %4640 = load i32, i32* %23, align 4
  %4641 = sext i32 %4640 to i64
  %4642 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4641
  %4643 = load i8, i8* %4642, align 1
  %4644 = zext i8 %4643 to i32
  %4645 = icmp ne i32 %4644, 3
  br i1 %4645, label %4646, label %4653

4646:                                             ; preds = %4639
  %4647 = load i32, i32* %27, align 4
  %4648 = sext i32 %4647 to i64
  %4649 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4648
  %4650 = load i8, i8* %4649, align 1
  %4651 = zext i8 %4650 to i32
  %4652 = icmp ne i32 %4651, 3
  br i1 %4652, label %4980, label %4653

4653:                                             ; preds = %4646, %4639
  br label %4654

4654:                                             ; preds = %4653
  %4655 = load i32, i32* %11, align 4
  %4656 = add nsw i32 %4655, 1300
  %4657 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4658 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4657, i32 0, i32 0
  %4659 = load i32, i32* %25, align 4
  %4660 = sext i32 %4659 to i64
  %4661 = getelementptr inbounds [400 x i32], [400 x i32]* %4658, i64 0, i64 %4660
  %4662 = load i32, i32* %4661, align 4
  %4663 = icmp slt i32 %4656, %4662
  br i1 %4663, label %4664, label %4815

4664:                                             ; preds = %4654
  %4665 = load i32, i32* %25, align 4
  %4666 = sext i32 %4665 to i64
  %4667 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4666
  %4668 = load i8, i8* %4667, align 1
  %4669 = zext i8 %4668 to i32
  %4670 = icmp eq i32 %4669, 0
  br i1 %4670, label %4671, label %4718

4671:                                             ; preds = %4664
  %4672 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4673 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4672, i32 0, i32 0
  %4674 = load i32, i32* %25, align 4
  %4675 = sext i32 %4674 to i64
  %4676 = getelementptr inbounds [400 x i32], [400 x i32]* %4673, i64 0, i64 %4675
  %4677 = load i32, i32* %4676, align 4
  %4678 = icmp eq i32 %4677, 100000
  br i1 %4678, label %4679, label %4689

4679:                                             ; preds = %4671
  %4680 = load i32, i32* %25, align 4
  %4681 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4682 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4681, i32 0, i32 5
  %4683 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4684 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4683, i32 0, i32 7
  %4685 = load i32, i32* %4684, align 4
  %4686 = add nsw i32 %4685, 1
  store i32 %4686, i32* %4684, align 4
  %4687 = sext i32 %4685 to i64
  %4688 = getelementptr inbounds [400 x i32], [400 x i32]* %4682, i64 0, i64 %4687
  store i32 %4680, i32* %4688, align 4
  br label %4689

4689:                                             ; preds = %4679, %4671
  %4690 = load i32, i32* %11, align 4
  %4691 = add nsw i32 %4690, 1300
  %4692 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4693 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4692, i32 0, i32 0
  %4694 = load i32, i32* %25, align 4
  %4695 = sext i32 %4694 to i64
  %4696 = getelementptr inbounds [400 x i32], [400 x i32]* %4693, i64 0, i64 %4695
  store i32 %4691, i32* %4696, align 4
  %4697 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4698 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4697, i32 0, i32 1
  %4699 = load i32, i32* %25, align 4
  %4700 = sext i32 %4699 to i64
  %4701 = getelementptr inbounds [400 x i32], [400 x i32]* %4698, i64 0, i64 %4700
  store i32 1000, i32* %4701, align 4
  %4702 = load i32, i32* %9, align 4
  %4703 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4704 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4703, i32 0, i32 2
  %4705 = load i32, i32* %25, align 4
  %4706 = sext i32 %4705 to i64
  %4707 = getelementptr inbounds [400 x i32], [400 x i32]* %4704, i64 0, i64 %4706
  store i32 %4702, i32* %4707, align 4
  %4708 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4709 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4708, i32 0, i32 3
  %4710 = load i32, i32* %25, align 4
  %4711 = sext i32 %4710 to i64
  %4712 = getelementptr inbounds [400 x i32], [400 x i32]* %4709, i64 0, i64 %4711
  store i32 0, i32* %4712, align 4
  %4713 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4714 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4713, i32 0, i32 4
  %4715 = load i32, i32* %25, align 4
  %4716 = sext i32 %4715 to i64
  %4717 = getelementptr inbounds [400 x i32], [400 x i32]* %4714, i64 0, i64 %4716
  store i32 0, i32* %4717, align 4
  br label %4814

4718:                                             ; preds = %4664
  %4719 = load i32, i32* %25, align 4
  %4720 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %4721 = call i32 @findstones(i32 %4719, i32 361, i32* %4720)
  store i32 %4721, i32* %13, align 4
  store i32 0, i32* %55, align 4
  br label %4722

4722:                                             ; preds = %4810, %4718
  %4723 = load i32, i32* %55, align 4
  %4724 = load i32, i32* %13, align 4
  %4725 = icmp slt i32 %4723, %4724
  br i1 %4725, label %4726, label %4813

4726:                                             ; preds = %4722
  %4727 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4728 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4727, i32 0, i32 0
  %4729 = load i32, i32* %55, align 4
  %4730 = sext i32 %4729 to i64
  %4731 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4730
  %4732 = load i32, i32* %4731, align 4
  %4733 = sext i32 %4732 to i64
  %4734 = getelementptr inbounds [400 x i32], [400 x i32]* %4728, i64 0, i64 %4733
  %4735 = load i32, i32* %4734, align 4
  %4736 = icmp eq i32 %4735, 100000
  br i1 %4736, label %4737, label %4750

4737:                                             ; preds = %4726
  %4738 = load i32, i32* %55, align 4
  %4739 = sext i32 %4738 to i64
  %4740 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4739
  %4741 = load i32, i32* %4740, align 4
  %4742 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4743 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4742, i32 0, i32 5
  %4744 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4745 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4744, i32 0, i32 7
  %4746 = load i32, i32* %4745, align 4
  %4747 = add nsw i32 %4746, 1
  store i32 %4747, i32* %4745, align 4
  %4748 = sext i32 %4746 to i64
  %4749 = getelementptr inbounds [400 x i32], [400 x i32]* %4743, i64 0, i64 %4748
  store i32 %4741, i32* %4749, align 4
  br label %4750

4750:                                             ; preds = %4737, %4726
  %4751 = load i32, i32* %11, align 4
  %4752 = add nsw i32 %4751, 1300
  %4753 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4754 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4753, i32 0, i32 0
  %4755 = load i32, i32* %55, align 4
  %4756 = sext i32 %4755 to i64
  %4757 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4756
  %4758 = load i32, i32* %4757, align 4
  %4759 = sext i32 %4758 to i64
  %4760 = getelementptr inbounds [400 x i32], [400 x i32]* %4754, i64 0, i64 %4759
  store i32 %4752, i32* %4760, align 4
  %4761 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4762 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4761, i32 0, i32 1
  %4763 = load i32, i32* %55, align 4
  %4764 = sext i32 %4763 to i64
  %4765 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4764
  %4766 = load i32, i32* %4765, align 4
  %4767 = sext i32 %4766 to i64
  %4768 = getelementptr inbounds [400 x i32], [400 x i32]* %4762, i64 0, i64 %4767
  store i32 1000, i32* %4768, align 4
  %4769 = load i32, i32* %9, align 4
  %4770 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4771 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4770, i32 0, i32 2
  %4772 = load i32, i32* %55, align 4
  %4773 = sext i32 %4772 to i64
  %4774 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4773
  %4775 = load i32, i32* %4774, align 4
  %4776 = sext i32 %4775 to i64
  %4777 = getelementptr inbounds [400 x i32], [400 x i32]* %4771, i64 0, i64 %4776
  store i32 %4769, i32* %4777, align 4
  %4778 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4779 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4778, i32 0, i32 3
  %4780 = load i32, i32* %55, align 4
  %4781 = sext i32 %4780 to i64
  %4782 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4781
  %4783 = load i32, i32* %4782, align 4
  %4784 = sext i32 %4783 to i64
  %4785 = getelementptr inbounds [400 x i32], [400 x i32]* %4779, i64 0, i64 %4784
  store i32 0, i32* %4785, align 4
  %4786 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4787 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4786, i32 0, i32 4
  %4788 = load i32, i32* %55, align 4
  %4789 = sext i32 %4788 to i64
  %4790 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4789
  %4791 = load i32, i32* %4790, align 4
  %4792 = sext i32 %4791 to i64
  %4793 = getelementptr inbounds [400 x i32], [400 x i32]* %4787, i64 0, i64 %4792
  store i32 0, i32* %4793, align 4
  %4794 = load i32, i32* %55, align 4
  %4795 = sext i32 %4794 to i64
  %4796 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4795
  %4797 = load i32, i32* %4796, align 4
  %4798 = load i32, i32* %5, align 4
  %4799 = icmp eq i32 %4797, %4798
  br i1 %4799, label %4800, label %4809

4800:                                             ; preds = %4750
  %4801 = load i32, i32* %11, align 4
  %4802 = add nsw i32 %4801, 1300
  %4803 = load i32, i32* %14, align 4
  %4804 = icmp slt i32 %4802, %4803
  br i1 %4804, label %4805, label %4809

4805:                                             ; preds = %4800
  %4806 = load i32, i32* %11, align 4
  %4807 = add nsw i32 %4806, 1300
  %4808 = sub nsw i32 %4807, 1
  store i32 %4808, i32* %14, align 4
  br label %4809

4809:                                             ; preds = %4805, %4800, %4750
  br label %4810

4810:                                             ; preds = %4809
  %4811 = load i32, i32* %55, align 4
  %4812 = add nsw i32 %4811, 1
  store i32 %4812, i32* %55, align 4
  br label %4722, !llvm.loop !47

4813:                                             ; preds = %4722
  br label %4814

4814:                                             ; preds = %4813, %4689
  br label %4815

4815:                                             ; preds = %4814, %4654
  br label %4816

4816:                                             ; preds = %4815
  br label %4817

4817:                                             ; preds = %4816
  %4818 = load i32, i32* %11, align 4
  %4819 = add nsw i32 %4818, 1300
  %4820 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4821 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4820, i32 0, i32 0
  %4822 = load i32, i32* %24, align 4
  %4823 = sext i32 %4822 to i64
  %4824 = getelementptr inbounds [400 x i32], [400 x i32]* %4821, i64 0, i64 %4823
  %4825 = load i32, i32* %4824, align 4
  %4826 = icmp slt i32 %4819, %4825
  br i1 %4826, label %4827, label %4978

4827:                                             ; preds = %4817
  %4828 = load i32, i32* %24, align 4
  %4829 = sext i32 %4828 to i64
  %4830 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4829
  %4831 = load i8, i8* %4830, align 1
  %4832 = zext i8 %4831 to i32
  %4833 = icmp eq i32 %4832, 0
  br i1 %4833, label %4834, label %4881

4834:                                             ; preds = %4827
  %4835 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4836 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4835, i32 0, i32 0
  %4837 = load i32, i32* %24, align 4
  %4838 = sext i32 %4837 to i64
  %4839 = getelementptr inbounds [400 x i32], [400 x i32]* %4836, i64 0, i64 %4838
  %4840 = load i32, i32* %4839, align 4
  %4841 = icmp eq i32 %4840, 100000
  br i1 %4841, label %4842, label %4852

4842:                                             ; preds = %4834
  %4843 = load i32, i32* %24, align 4
  %4844 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4845 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4844, i32 0, i32 5
  %4846 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4847 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4846, i32 0, i32 7
  %4848 = load i32, i32* %4847, align 4
  %4849 = add nsw i32 %4848, 1
  store i32 %4849, i32* %4847, align 4
  %4850 = sext i32 %4848 to i64
  %4851 = getelementptr inbounds [400 x i32], [400 x i32]* %4845, i64 0, i64 %4850
  store i32 %4843, i32* %4851, align 4
  br label %4852

4852:                                             ; preds = %4842, %4834
  %4853 = load i32, i32* %11, align 4
  %4854 = add nsw i32 %4853, 1300
  %4855 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4856 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4855, i32 0, i32 0
  %4857 = load i32, i32* %24, align 4
  %4858 = sext i32 %4857 to i64
  %4859 = getelementptr inbounds [400 x i32], [400 x i32]* %4856, i64 0, i64 %4858
  store i32 %4854, i32* %4859, align 4
  %4860 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4861 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4860, i32 0, i32 1
  %4862 = load i32, i32* %24, align 4
  %4863 = sext i32 %4862 to i64
  %4864 = getelementptr inbounds [400 x i32], [400 x i32]* %4861, i64 0, i64 %4863
  store i32 1000, i32* %4864, align 4
  %4865 = load i32, i32* %9, align 4
  %4866 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4867 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4866, i32 0, i32 2
  %4868 = load i32, i32* %24, align 4
  %4869 = sext i32 %4868 to i64
  %4870 = getelementptr inbounds [400 x i32], [400 x i32]* %4867, i64 0, i64 %4869
  store i32 %4865, i32* %4870, align 4
  %4871 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4872 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4871, i32 0, i32 3
  %4873 = load i32, i32* %24, align 4
  %4874 = sext i32 %4873 to i64
  %4875 = getelementptr inbounds [400 x i32], [400 x i32]* %4872, i64 0, i64 %4874
  store i32 0, i32* %4875, align 4
  %4876 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4877 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4876, i32 0, i32 4
  %4878 = load i32, i32* %24, align 4
  %4879 = sext i32 %4878 to i64
  %4880 = getelementptr inbounds [400 x i32], [400 x i32]* %4877, i64 0, i64 %4879
  store i32 0, i32* %4880, align 4
  br label %4977

4881:                                             ; preds = %4827
  %4882 = load i32, i32* %24, align 4
  %4883 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %4884 = call i32 @findstones(i32 %4882, i32 361, i32* %4883)
  store i32 %4884, i32* %13, align 4
  store i32 0, i32* %56, align 4
  br label %4885

4885:                                             ; preds = %4973, %4881
  %4886 = load i32, i32* %56, align 4
  %4887 = load i32, i32* %13, align 4
  %4888 = icmp slt i32 %4886, %4887
  br i1 %4888, label %4889, label %4976

4889:                                             ; preds = %4885
  %4890 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4891 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4890, i32 0, i32 0
  %4892 = load i32, i32* %56, align 4
  %4893 = sext i32 %4892 to i64
  %4894 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4893
  %4895 = load i32, i32* %4894, align 4
  %4896 = sext i32 %4895 to i64
  %4897 = getelementptr inbounds [400 x i32], [400 x i32]* %4891, i64 0, i64 %4896
  %4898 = load i32, i32* %4897, align 4
  %4899 = icmp eq i32 %4898, 100000
  br i1 %4899, label %4900, label %4913

4900:                                             ; preds = %4889
  %4901 = load i32, i32* %56, align 4
  %4902 = sext i32 %4901 to i64
  %4903 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4902
  %4904 = load i32, i32* %4903, align 4
  %4905 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4906 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4905, i32 0, i32 5
  %4907 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4908 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4907, i32 0, i32 7
  %4909 = load i32, i32* %4908, align 4
  %4910 = add nsw i32 %4909, 1
  store i32 %4910, i32* %4908, align 4
  %4911 = sext i32 %4909 to i64
  %4912 = getelementptr inbounds [400 x i32], [400 x i32]* %4906, i64 0, i64 %4911
  store i32 %4904, i32* %4912, align 4
  br label %4913

4913:                                             ; preds = %4900, %4889
  %4914 = load i32, i32* %11, align 4
  %4915 = add nsw i32 %4914, 1300
  %4916 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4917 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4916, i32 0, i32 0
  %4918 = load i32, i32* %56, align 4
  %4919 = sext i32 %4918 to i64
  %4920 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4919
  %4921 = load i32, i32* %4920, align 4
  %4922 = sext i32 %4921 to i64
  %4923 = getelementptr inbounds [400 x i32], [400 x i32]* %4917, i64 0, i64 %4922
  store i32 %4915, i32* %4923, align 4
  %4924 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4925 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4924, i32 0, i32 1
  %4926 = load i32, i32* %56, align 4
  %4927 = sext i32 %4926 to i64
  %4928 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4927
  %4929 = load i32, i32* %4928, align 4
  %4930 = sext i32 %4929 to i64
  %4931 = getelementptr inbounds [400 x i32], [400 x i32]* %4925, i64 0, i64 %4930
  store i32 1000, i32* %4931, align 4
  %4932 = load i32, i32* %9, align 4
  %4933 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4934 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4933, i32 0, i32 2
  %4935 = load i32, i32* %56, align 4
  %4936 = sext i32 %4935 to i64
  %4937 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4936
  %4938 = load i32, i32* %4937, align 4
  %4939 = sext i32 %4938 to i64
  %4940 = getelementptr inbounds [400 x i32], [400 x i32]* %4934, i64 0, i64 %4939
  store i32 %4932, i32* %4940, align 4
  %4941 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4942 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4941, i32 0, i32 3
  %4943 = load i32, i32* %56, align 4
  %4944 = sext i32 %4943 to i64
  %4945 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4944
  %4946 = load i32, i32* %4945, align 4
  %4947 = sext i32 %4946 to i64
  %4948 = getelementptr inbounds [400 x i32], [400 x i32]* %4942, i64 0, i64 %4947
  store i32 0, i32* %4948, align 4
  %4949 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %4950 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %4949, i32 0, i32 4
  %4951 = load i32, i32* %56, align 4
  %4952 = sext i32 %4951 to i64
  %4953 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4952
  %4954 = load i32, i32* %4953, align 4
  %4955 = sext i32 %4954 to i64
  %4956 = getelementptr inbounds [400 x i32], [400 x i32]* %4950, i64 0, i64 %4955
  store i32 0, i32* %4956, align 4
  %4957 = load i32, i32* %56, align 4
  %4958 = sext i32 %4957 to i64
  %4959 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %4958
  %4960 = load i32, i32* %4959, align 4
  %4961 = load i32, i32* %5, align 4
  %4962 = icmp eq i32 %4960, %4961
  br i1 %4962, label %4963, label %4972

4963:                                             ; preds = %4913
  %4964 = load i32, i32* %11, align 4
  %4965 = add nsw i32 %4964, 1300
  %4966 = load i32, i32* %14, align 4
  %4967 = icmp slt i32 %4965, %4966
  br i1 %4967, label %4968, label %4972

4968:                                             ; preds = %4963
  %4969 = load i32, i32* %11, align 4
  %4970 = add nsw i32 %4969, 1300
  %4971 = sub nsw i32 %4970, 1
  store i32 %4971, i32* %14, align 4
  br label %4972

4972:                                             ; preds = %4968, %4963, %4913
  br label %4973

4973:                                             ; preds = %4972
  %4974 = load i32, i32* %56, align 4
  %4975 = add nsw i32 %4974, 1
  store i32 %4975, i32* %56, align 4
  br label %4885, !llvm.loop !48

4976:                                             ; preds = %4885
  br label %4977

4977:                                             ; preds = %4976, %4852
  br label %4978

4978:                                             ; preds = %4977, %4817
  br label %4979

4979:                                             ; preds = %4978
  br label %4980

4980:                                             ; preds = %4979, %4646, %4635, %4625, %4608, %4601, %4594, %4587, %4580
  %4981 = load i32, i32* %9, align 4
  %4982 = call i32 @countlib(i32 %4981)
  %4983 = icmp sge i32 %4982, 3
  br i1 %4983, label %4984, label %5380

4984:                                             ; preds = %4980
  %4985 = load i32, i32* %27, align 4
  %4986 = sext i32 %4985 to i64
  %4987 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4986
  %4988 = load i8, i8* %4987, align 1
  %4989 = zext i8 %4988 to i32
  %4990 = icmp eq i32 %4989, 0
  br i1 %4990, label %4991, label %5380

4991:                                             ; preds = %4984
  %4992 = load i32, i32* %28, align 4
  %4993 = sext i32 %4992 to i64
  %4994 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %4993
  %4995 = load i8, i8* %4994, align 1
  %4996 = zext i8 %4995 to i32
  %4997 = icmp eq i32 %4996, 0
  br i1 %4997, label %4998, label %5380

4998:                                             ; preds = %4991
  %4999 = load i32, i32* %26, align 4
  %5000 = sext i32 %4999 to i64
  %5001 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5000
  %5002 = load i8, i8* %5001, align 1
  %5003 = zext i8 %5002 to i32
  %5004 = icmp eq i32 %5003, 0
  br i1 %5004, label %5005, label %5380

5005:                                             ; preds = %4998
  %5006 = load i32, i32* %24, align 4
  %5007 = sext i32 %5006 to i64
  %5008 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5007
  %5009 = load i8, i8* %5008, align 1
  %5010 = zext i8 %5009 to i32
  %5011 = icmp eq i32 %5010, 0
  br i1 %5011, label %5012, label %5380

5012:                                             ; preds = %5005
  %5013 = load i32, i32* %29, align 4
  %5014 = sext i32 %5013 to i64
  %5015 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5014
  %5016 = load i8, i8* %5015, align 1
  %5017 = zext i8 %5016 to i32
  %5018 = icmp eq i32 %5017, 0
  br i1 %5018, label %5019, label %5380

5019:                                             ; preds = %5012
  %5020 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5021 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5020, i32 0, i32 0
  %5022 = load i32, i32* %29, align 4
  %5023 = sext i32 %5022 to i64
  %5024 = getelementptr inbounds [400 x i32], [400 x i32]* %5021, i64 0, i64 %5023
  %5025 = load i32, i32* %5024, align 4
  %5026 = load i32, i32* %11, align 4
  %5027 = add nsw i32 %5026, 1300
  %5028 = icmp sgt i32 %5025, %5027
  br i1 %5028, label %5039, label %5029

5029:                                             ; preds = %5019
  %5030 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5031 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5030, i32 0, i32 0
  %5032 = load i32, i32* %24, align 4
  %5033 = sext i32 %5032 to i64
  %5034 = getelementptr inbounds [400 x i32], [400 x i32]* %5031, i64 0, i64 %5033
  %5035 = load i32, i32* %5034, align 4
  %5036 = load i32, i32* %11, align 4
  %5037 = add nsw i32 %5036, 1300
  %5038 = icmp sgt i32 %5035, %5037
  br i1 %5038, label %5039, label %5380

5039:                                             ; preds = %5029, %5019
  %5040 = load i32, i32* %21, align 4
  %5041 = sext i32 %5040 to i64
  %5042 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5041
  %5043 = load i8, i8* %5042, align 1
  %5044 = zext i8 %5043 to i32
  %5045 = icmp ne i32 %5044, 3
  br i1 %5045, label %5046, label %5053

5046:                                             ; preds = %5039
  %5047 = load i32, i32* %30, align 4
  %5048 = sext i32 %5047 to i64
  %5049 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5048
  %5050 = load i8, i8* %5049, align 1
  %5051 = zext i8 %5050 to i32
  %5052 = icmp ne i32 %5051, 3
  br i1 %5052, label %5380, label %5053

5053:                                             ; preds = %5046, %5039
  br label %5054

5054:                                             ; preds = %5053
  %5055 = load i32, i32* %11, align 4
  %5056 = add nsw i32 %5055, 1300
  %5057 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5058 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5057, i32 0, i32 0
  %5059 = load i32, i32* %29, align 4
  %5060 = sext i32 %5059 to i64
  %5061 = getelementptr inbounds [400 x i32], [400 x i32]* %5058, i64 0, i64 %5060
  %5062 = load i32, i32* %5061, align 4
  %5063 = icmp slt i32 %5056, %5062
  br i1 %5063, label %5064, label %5215

5064:                                             ; preds = %5054
  %5065 = load i32, i32* %29, align 4
  %5066 = sext i32 %5065 to i64
  %5067 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5066
  %5068 = load i8, i8* %5067, align 1
  %5069 = zext i8 %5068 to i32
  %5070 = icmp eq i32 %5069, 0
  br i1 %5070, label %5071, label %5118

5071:                                             ; preds = %5064
  %5072 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5073 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5072, i32 0, i32 0
  %5074 = load i32, i32* %29, align 4
  %5075 = sext i32 %5074 to i64
  %5076 = getelementptr inbounds [400 x i32], [400 x i32]* %5073, i64 0, i64 %5075
  %5077 = load i32, i32* %5076, align 4
  %5078 = icmp eq i32 %5077, 100000
  br i1 %5078, label %5079, label %5089

5079:                                             ; preds = %5071
  %5080 = load i32, i32* %29, align 4
  %5081 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5082 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5081, i32 0, i32 5
  %5083 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5084 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5083, i32 0, i32 7
  %5085 = load i32, i32* %5084, align 4
  %5086 = add nsw i32 %5085, 1
  store i32 %5086, i32* %5084, align 4
  %5087 = sext i32 %5085 to i64
  %5088 = getelementptr inbounds [400 x i32], [400 x i32]* %5082, i64 0, i64 %5087
  store i32 %5080, i32* %5088, align 4
  br label %5089

5089:                                             ; preds = %5079, %5071
  %5090 = load i32, i32* %11, align 4
  %5091 = add nsw i32 %5090, 1300
  %5092 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5093 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5092, i32 0, i32 0
  %5094 = load i32, i32* %29, align 4
  %5095 = sext i32 %5094 to i64
  %5096 = getelementptr inbounds [400 x i32], [400 x i32]* %5093, i64 0, i64 %5095
  store i32 %5091, i32* %5096, align 4
  %5097 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5098 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5097, i32 0, i32 1
  %5099 = load i32, i32* %29, align 4
  %5100 = sext i32 %5099 to i64
  %5101 = getelementptr inbounds [400 x i32], [400 x i32]* %5098, i64 0, i64 %5100
  store i32 1000, i32* %5101, align 4
  %5102 = load i32, i32* %9, align 4
  %5103 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5104 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5103, i32 0, i32 2
  %5105 = load i32, i32* %29, align 4
  %5106 = sext i32 %5105 to i64
  %5107 = getelementptr inbounds [400 x i32], [400 x i32]* %5104, i64 0, i64 %5106
  store i32 %5102, i32* %5107, align 4
  %5108 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5109 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5108, i32 0, i32 3
  %5110 = load i32, i32* %29, align 4
  %5111 = sext i32 %5110 to i64
  %5112 = getelementptr inbounds [400 x i32], [400 x i32]* %5109, i64 0, i64 %5111
  store i32 0, i32* %5112, align 4
  %5113 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5114 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5113, i32 0, i32 4
  %5115 = load i32, i32* %29, align 4
  %5116 = sext i32 %5115 to i64
  %5117 = getelementptr inbounds [400 x i32], [400 x i32]* %5114, i64 0, i64 %5116
  store i32 0, i32* %5117, align 4
  br label %5214

5118:                                             ; preds = %5064
  %5119 = load i32, i32* %29, align 4
  %5120 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %5121 = call i32 @findstones(i32 %5119, i32 361, i32* %5120)
  store i32 %5121, i32* %13, align 4
  store i32 0, i32* %57, align 4
  br label %5122

5122:                                             ; preds = %5210, %5118
  %5123 = load i32, i32* %57, align 4
  %5124 = load i32, i32* %13, align 4
  %5125 = icmp slt i32 %5123, %5124
  br i1 %5125, label %5126, label %5213

5126:                                             ; preds = %5122
  %5127 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5128 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5127, i32 0, i32 0
  %5129 = load i32, i32* %57, align 4
  %5130 = sext i32 %5129 to i64
  %5131 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5130
  %5132 = load i32, i32* %5131, align 4
  %5133 = sext i32 %5132 to i64
  %5134 = getelementptr inbounds [400 x i32], [400 x i32]* %5128, i64 0, i64 %5133
  %5135 = load i32, i32* %5134, align 4
  %5136 = icmp eq i32 %5135, 100000
  br i1 %5136, label %5137, label %5150

5137:                                             ; preds = %5126
  %5138 = load i32, i32* %57, align 4
  %5139 = sext i32 %5138 to i64
  %5140 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5139
  %5141 = load i32, i32* %5140, align 4
  %5142 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5143 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5142, i32 0, i32 5
  %5144 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5145 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5144, i32 0, i32 7
  %5146 = load i32, i32* %5145, align 4
  %5147 = add nsw i32 %5146, 1
  store i32 %5147, i32* %5145, align 4
  %5148 = sext i32 %5146 to i64
  %5149 = getelementptr inbounds [400 x i32], [400 x i32]* %5143, i64 0, i64 %5148
  store i32 %5141, i32* %5149, align 4
  br label %5150

5150:                                             ; preds = %5137, %5126
  %5151 = load i32, i32* %11, align 4
  %5152 = add nsw i32 %5151, 1300
  %5153 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5154 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5153, i32 0, i32 0
  %5155 = load i32, i32* %57, align 4
  %5156 = sext i32 %5155 to i64
  %5157 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5156
  %5158 = load i32, i32* %5157, align 4
  %5159 = sext i32 %5158 to i64
  %5160 = getelementptr inbounds [400 x i32], [400 x i32]* %5154, i64 0, i64 %5159
  store i32 %5152, i32* %5160, align 4
  %5161 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5162 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5161, i32 0, i32 1
  %5163 = load i32, i32* %57, align 4
  %5164 = sext i32 %5163 to i64
  %5165 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5164
  %5166 = load i32, i32* %5165, align 4
  %5167 = sext i32 %5166 to i64
  %5168 = getelementptr inbounds [400 x i32], [400 x i32]* %5162, i64 0, i64 %5167
  store i32 1000, i32* %5168, align 4
  %5169 = load i32, i32* %9, align 4
  %5170 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5171 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5170, i32 0, i32 2
  %5172 = load i32, i32* %57, align 4
  %5173 = sext i32 %5172 to i64
  %5174 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5173
  %5175 = load i32, i32* %5174, align 4
  %5176 = sext i32 %5175 to i64
  %5177 = getelementptr inbounds [400 x i32], [400 x i32]* %5171, i64 0, i64 %5176
  store i32 %5169, i32* %5177, align 4
  %5178 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5179 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5178, i32 0, i32 3
  %5180 = load i32, i32* %57, align 4
  %5181 = sext i32 %5180 to i64
  %5182 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5181
  %5183 = load i32, i32* %5182, align 4
  %5184 = sext i32 %5183 to i64
  %5185 = getelementptr inbounds [400 x i32], [400 x i32]* %5179, i64 0, i64 %5184
  store i32 0, i32* %5185, align 4
  %5186 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5187 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5186, i32 0, i32 4
  %5188 = load i32, i32* %57, align 4
  %5189 = sext i32 %5188 to i64
  %5190 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5189
  %5191 = load i32, i32* %5190, align 4
  %5192 = sext i32 %5191 to i64
  %5193 = getelementptr inbounds [400 x i32], [400 x i32]* %5187, i64 0, i64 %5192
  store i32 0, i32* %5193, align 4
  %5194 = load i32, i32* %57, align 4
  %5195 = sext i32 %5194 to i64
  %5196 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5195
  %5197 = load i32, i32* %5196, align 4
  %5198 = load i32, i32* %5, align 4
  %5199 = icmp eq i32 %5197, %5198
  br i1 %5199, label %5200, label %5209

5200:                                             ; preds = %5150
  %5201 = load i32, i32* %11, align 4
  %5202 = add nsw i32 %5201, 1300
  %5203 = load i32, i32* %14, align 4
  %5204 = icmp slt i32 %5202, %5203
  br i1 %5204, label %5205, label %5209

5205:                                             ; preds = %5200
  %5206 = load i32, i32* %11, align 4
  %5207 = add nsw i32 %5206, 1300
  %5208 = sub nsw i32 %5207, 1
  store i32 %5208, i32* %14, align 4
  br label %5209

5209:                                             ; preds = %5205, %5200, %5150
  br label %5210

5210:                                             ; preds = %5209
  %5211 = load i32, i32* %57, align 4
  %5212 = add nsw i32 %5211, 1
  store i32 %5212, i32* %57, align 4
  br label %5122, !llvm.loop !49

5213:                                             ; preds = %5122
  br label %5214

5214:                                             ; preds = %5213, %5089
  br label %5215

5215:                                             ; preds = %5214, %5054
  br label %5216

5216:                                             ; preds = %5215
  br label %5217

5217:                                             ; preds = %5216
  %5218 = load i32, i32* %11, align 4
  %5219 = add nsw i32 %5218, 1300
  %5220 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5221 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5220, i32 0, i32 0
  %5222 = load i32, i32* %24, align 4
  %5223 = sext i32 %5222 to i64
  %5224 = getelementptr inbounds [400 x i32], [400 x i32]* %5221, i64 0, i64 %5223
  %5225 = load i32, i32* %5224, align 4
  %5226 = icmp slt i32 %5219, %5225
  br i1 %5226, label %5227, label %5378

5227:                                             ; preds = %5217
  %5228 = load i32, i32* %24, align 4
  %5229 = sext i32 %5228 to i64
  %5230 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5229
  %5231 = load i8, i8* %5230, align 1
  %5232 = zext i8 %5231 to i32
  %5233 = icmp eq i32 %5232, 0
  br i1 %5233, label %5234, label %5281

5234:                                             ; preds = %5227
  %5235 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5236 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5235, i32 0, i32 0
  %5237 = load i32, i32* %24, align 4
  %5238 = sext i32 %5237 to i64
  %5239 = getelementptr inbounds [400 x i32], [400 x i32]* %5236, i64 0, i64 %5238
  %5240 = load i32, i32* %5239, align 4
  %5241 = icmp eq i32 %5240, 100000
  br i1 %5241, label %5242, label %5252

5242:                                             ; preds = %5234
  %5243 = load i32, i32* %24, align 4
  %5244 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5245 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5244, i32 0, i32 5
  %5246 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5247 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5246, i32 0, i32 7
  %5248 = load i32, i32* %5247, align 4
  %5249 = add nsw i32 %5248, 1
  store i32 %5249, i32* %5247, align 4
  %5250 = sext i32 %5248 to i64
  %5251 = getelementptr inbounds [400 x i32], [400 x i32]* %5245, i64 0, i64 %5250
  store i32 %5243, i32* %5251, align 4
  br label %5252

5252:                                             ; preds = %5242, %5234
  %5253 = load i32, i32* %11, align 4
  %5254 = add nsw i32 %5253, 1300
  %5255 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5256 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5255, i32 0, i32 0
  %5257 = load i32, i32* %24, align 4
  %5258 = sext i32 %5257 to i64
  %5259 = getelementptr inbounds [400 x i32], [400 x i32]* %5256, i64 0, i64 %5258
  store i32 %5254, i32* %5259, align 4
  %5260 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5261 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5260, i32 0, i32 1
  %5262 = load i32, i32* %24, align 4
  %5263 = sext i32 %5262 to i64
  %5264 = getelementptr inbounds [400 x i32], [400 x i32]* %5261, i64 0, i64 %5263
  store i32 1000, i32* %5264, align 4
  %5265 = load i32, i32* %9, align 4
  %5266 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5267 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5266, i32 0, i32 2
  %5268 = load i32, i32* %24, align 4
  %5269 = sext i32 %5268 to i64
  %5270 = getelementptr inbounds [400 x i32], [400 x i32]* %5267, i64 0, i64 %5269
  store i32 %5265, i32* %5270, align 4
  %5271 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5272 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5271, i32 0, i32 3
  %5273 = load i32, i32* %24, align 4
  %5274 = sext i32 %5273 to i64
  %5275 = getelementptr inbounds [400 x i32], [400 x i32]* %5272, i64 0, i64 %5274
  store i32 0, i32* %5275, align 4
  %5276 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5277 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5276, i32 0, i32 4
  %5278 = load i32, i32* %24, align 4
  %5279 = sext i32 %5278 to i64
  %5280 = getelementptr inbounds [400 x i32], [400 x i32]* %5277, i64 0, i64 %5279
  store i32 0, i32* %5280, align 4
  br label %5377

5281:                                             ; preds = %5227
  %5282 = load i32, i32* %24, align 4
  %5283 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %5284 = call i32 @findstones(i32 %5282, i32 361, i32* %5283)
  store i32 %5284, i32* %13, align 4
  store i32 0, i32* %58, align 4
  br label %5285

5285:                                             ; preds = %5373, %5281
  %5286 = load i32, i32* %58, align 4
  %5287 = load i32, i32* %13, align 4
  %5288 = icmp slt i32 %5286, %5287
  br i1 %5288, label %5289, label %5376

5289:                                             ; preds = %5285
  %5290 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5291 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5290, i32 0, i32 0
  %5292 = load i32, i32* %58, align 4
  %5293 = sext i32 %5292 to i64
  %5294 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5293
  %5295 = load i32, i32* %5294, align 4
  %5296 = sext i32 %5295 to i64
  %5297 = getelementptr inbounds [400 x i32], [400 x i32]* %5291, i64 0, i64 %5296
  %5298 = load i32, i32* %5297, align 4
  %5299 = icmp eq i32 %5298, 100000
  br i1 %5299, label %5300, label %5313

5300:                                             ; preds = %5289
  %5301 = load i32, i32* %58, align 4
  %5302 = sext i32 %5301 to i64
  %5303 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5302
  %5304 = load i32, i32* %5303, align 4
  %5305 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5306 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5305, i32 0, i32 5
  %5307 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5308 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5307, i32 0, i32 7
  %5309 = load i32, i32* %5308, align 4
  %5310 = add nsw i32 %5309, 1
  store i32 %5310, i32* %5308, align 4
  %5311 = sext i32 %5309 to i64
  %5312 = getelementptr inbounds [400 x i32], [400 x i32]* %5306, i64 0, i64 %5311
  store i32 %5304, i32* %5312, align 4
  br label %5313

5313:                                             ; preds = %5300, %5289
  %5314 = load i32, i32* %11, align 4
  %5315 = add nsw i32 %5314, 1300
  %5316 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5317 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5316, i32 0, i32 0
  %5318 = load i32, i32* %58, align 4
  %5319 = sext i32 %5318 to i64
  %5320 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5319
  %5321 = load i32, i32* %5320, align 4
  %5322 = sext i32 %5321 to i64
  %5323 = getelementptr inbounds [400 x i32], [400 x i32]* %5317, i64 0, i64 %5322
  store i32 %5315, i32* %5323, align 4
  %5324 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5325 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5324, i32 0, i32 1
  %5326 = load i32, i32* %58, align 4
  %5327 = sext i32 %5326 to i64
  %5328 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5327
  %5329 = load i32, i32* %5328, align 4
  %5330 = sext i32 %5329 to i64
  %5331 = getelementptr inbounds [400 x i32], [400 x i32]* %5325, i64 0, i64 %5330
  store i32 1000, i32* %5331, align 4
  %5332 = load i32, i32* %9, align 4
  %5333 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5334 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5333, i32 0, i32 2
  %5335 = load i32, i32* %58, align 4
  %5336 = sext i32 %5335 to i64
  %5337 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5336
  %5338 = load i32, i32* %5337, align 4
  %5339 = sext i32 %5338 to i64
  %5340 = getelementptr inbounds [400 x i32], [400 x i32]* %5334, i64 0, i64 %5339
  store i32 %5332, i32* %5340, align 4
  %5341 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5342 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5341, i32 0, i32 3
  %5343 = load i32, i32* %58, align 4
  %5344 = sext i32 %5343 to i64
  %5345 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5344
  %5346 = load i32, i32* %5345, align 4
  %5347 = sext i32 %5346 to i64
  %5348 = getelementptr inbounds [400 x i32], [400 x i32]* %5342, i64 0, i64 %5347
  store i32 0, i32* %5348, align 4
  %5349 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5350 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5349, i32 0, i32 4
  %5351 = load i32, i32* %58, align 4
  %5352 = sext i32 %5351 to i64
  %5353 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5352
  %5354 = load i32, i32* %5353, align 4
  %5355 = sext i32 %5354 to i64
  %5356 = getelementptr inbounds [400 x i32], [400 x i32]* %5350, i64 0, i64 %5355
  store i32 0, i32* %5356, align 4
  %5357 = load i32, i32* %58, align 4
  %5358 = sext i32 %5357 to i64
  %5359 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5358
  %5360 = load i32, i32* %5359, align 4
  %5361 = load i32, i32* %5, align 4
  %5362 = icmp eq i32 %5360, %5361
  br i1 %5362, label %5363, label %5372

5363:                                             ; preds = %5313
  %5364 = load i32, i32* %11, align 4
  %5365 = add nsw i32 %5364, 1300
  %5366 = load i32, i32* %14, align 4
  %5367 = icmp slt i32 %5365, %5366
  br i1 %5367, label %5368, label %5372

5368:                                             ; preds = %5363
  %5369 = load i32, i32* %11, align 4
  %5370 = add nsw i32 %5369, 1300
  %5371 = sub nsw i32 %5370, 1
  store i32 %5371, i32* %14, align 4
  br label %5372

5372:                                             ; preds = %5368, %5363, %5313
  br label %5373

5373:                                             ; preds = %5372
  %5374 = load i32, i32* %58, align 4
  %5375 = add nsw i32 %5374, 1
  store i32 %5375, i32* %58, align 4
  br label %5285, !llvm.loop !50

5376:                                             ; preds = %5285
  br label %5377

5377:                                             ; preds = %5376, %5252
  br label %5378

5378:                                             ; preds = %5377, %5217
  br label %5379

5379:                                             ; preds = %5378
  br label %5380

5380:                                             ; preds = %5379, %5046, %5029, %5012, %5005, %4998, %4991, %4984, %4980
  %5381 = load i32, i32* %22, align 4
  %5382 = sext i32 %5381 to i64
  %5383 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5382
  %5384 = load i8, i8* %5383, align 1
  %5385 = zext i8 %5384 to i32
  %5386 = icmp eq i32 %5385, 0
  br i1 %5386, label %5387, label %5576

5387:                                             ; preds = %5380
  %5388 = load i32, i32* %21, align 4
  %5389 = sext i32 %5388 to i64
  %5390 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5389
  %5391 = load i8, i8* %5390, align 1
  %5392 = zext i8 %5391 to i32
  %5393 = icmp eq i32 %5392, 0
  br i1 %5393, label %5394, label %5576

5394:                                             ; preds = %5387
  %5395 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5396 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5395, i32 0, i32 0
  %5397 = load i32, i32* %22, align 4
  %5398 = sext i32 %5397 to i64
  %5399 = getelementptr inbounds [400 x i32], [400 x i32]* %5396, i64 0, i64 %5398
  %5400 = load i32, i32* %5399, align 4
  %5401 = load i32, i32* %11, align 4
  %5402 = add nsw i32 %5401, 1200
  %5403 = icmp sgt i32 %5400, %5402
  br i1 %5403, label %5404, label %5576

5404:                                             ; preds = %5394
  %5405 = load i32, i32* %7, align 4
  %5406 = load i32, i32* %22, align 4
  %5407 = load i32, i32* %21, align 4
  %5408 = call i32 @does_secure_through_ladder(i32 %5405, i32 %5406, i32 %5407)
  %5409 = icmp ne i32 %5408, 0
  br i1 %5409, label %5410, label %5576

5410:                                             ; preds = %5404
  br label %5411

5411:                                             ; preds = %5410
  %5412 = load i32, i32* %11, align 4
  %5413 = add nsw i32 %5412, 1200
  %5414 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5415 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5414, i32 0, i32 0
  %5416 = load i32, i32* %22, align 4
  %5417 = sext i32 %5416 to i64
  %5418 = getelementptr inbounds [400 x i32], [400 x i32]* %5415, i64 0, i64 %5417
  %5419 = load i32, i32* %5418, align 4
  %5420 = icmp slt i32 %5413, %5419
  br i1 %5420, label %5421, label %5574

5421:                                             ; preds = %5411
  %5422 = load i32, i32* %22, align 4
  %5423 = sext i32 %5422 to i64
  %5424 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5423
  %5425 = load i8, i8* %5424, align 1
  %5426 = zext i8 %5425 to i32
  %5427 = icmp eq i32 %5426, 0
  br i1 %5427, label %5428, label %5476

5428:                                             ; preds = %5421
  %5429 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5430 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5429, i32 0, i32 0
  %5431 = load i32, i32* %22, align 4
  %5432 = sext i32 %5431 to i64
  %5433 = getelementptr inbounds [400 x i32], [400 x i32]* %5430, i64 0, i64 %5432
  %5434 = load i32, i32* %5433, align 4
  %5435 = icmp eq i32 %5434, 100000
  br i1 %5435, label %5436, label %5446

5436:                                             ; preds = %5428
  %5437 = load i32, i32* %22, align 4
  %5438 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5439 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5438, i32 0, i32 5
  %5440 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5441 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5440, i32 0, i32 7
  %5442 = load i32, i32* %5441, align 4
  %5443 = add nsw i32 %5442, 1
  store i32 %5443, i32* %5441, align 4
  %5444 = sext i32 %5442 to i64
  %5445 = getelementptr inbounds [400 x i32], [400 x i32]* %5439, i64 0, i64 %5444
  store i32 %5437, i32* %5445, align 4
  br label %5446

5446:                                             ; preds = %5436, %5428
  %5447 = load i32, i32* %11, align 4
  %5448 = add nsw i32 %5447, 1200
  %5449 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5450 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5449, i32 0, i32 0
  %5451 = load i32, i32* %22, align 4
  %5452 = sext i32 %5451 to i64
  %5453 = getelementptr inbounds [400 x i32], [400 x i32]* %5450, i64 0, i64 %5452
  store i32 %5448, i32* %5453, align 4
  %5454 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5455 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5454, i32 0, i32 1
  %5456 = load i32, i32* %22, align 4
  %5457 = sext i32 %5456 to i64
  %5458 = getelementptr inbounds [400 x i32], [400 x i32]* %5455, i64 0, i64 %5457
  store i32 1000, i32* %5458, align 4
  %5459 = load i32, i32* %9, align 4
  %5460 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5461 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5460, i32 0, i32 2
  %5462 = load i32, i32* %22, align 4
  %5463 = sext i32 %5462 to i64
  %5464 = getelementptr inbounds [400 x i32], [400 x i32]* %5461, i64 0, i64 %5463
  store i32 %5459, i32* %5464, align 4
  %5465 = load i32, i32* %21, align 4
  %5466 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5467 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5466, i32 0, i32 3
  %5468 = load i32, i32* %22, align 4
  %5469 = sext i32 %5468 to i64
  %5470 = getelementptr inbounds [400 x i32], [400 x i32]* %5467, i64 0, i64 %5469
  store i32 %5465, i32* %5470, align 4
  %5471 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5472 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5471, i32 0, i32 4
  %5473 = load i32, i32* %22, align 4
  %5474 = sext i32 %5473 to i64
  %5475 = getelementptr inbounds [400 x i32], [400 x i32]* %5472, i64 0, i64 %5474
  store i32 0, i32* %5475, align 4
  br label %5573

5476:                                             ; preds = %5421
  %5477 = load i32, i32* %22, align 4
  %5478 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %5479 = call i32 @findstones(i32 %5477, i32 361, i32* %5478)
  store i32 %5479, i32* %13, align 4
  store i32 0, i32* %59, align 4
  br label %5480

5480:                                             ; preds = %5569, %5476
  %5481 = load i32, i32* %59, align 4
  %5482 = load i32, i32* %13, align 4
  %5483 = icmp slt i32 %5481, %5482
  br i1 %5483, label %5484, label %5572

5484:                                             ; preds = %5480
  %5485 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5486 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5485, i32 0, i32 0
  %5487 = load i32, i32* %59, align 4
  %5488 = sext i32 %5487 to i64
  %5489 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5488
  %5490 = load i32, i32* %5489, align 4
  %5491 = sext i32 %5490 to i64
  %5492 = getelementptr inbounds [400 x i32], [400 x i32]* %5486, i64 0, i64 %5491
  %5493 = load i32, i32* %5492, align 4
  %5494 = icmp eq i32 %5493, 100000
  br i1 %5494, label %5495, label %5508

5495:                                             ; preds = %5484
  %5496 = load i32, i32* %59, align 4
  %5497 = sext i32 %5496 to i64
  %5498 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5497
  %5499 = load i32, i32* %5498, align 4
  %5500 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5501 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5500, i32 0, i32 5
  %5502 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5503 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5502, i32 0, i32 7
  %5504 = load i32, i32* %5503, align 4
  %5505 = add nsw i32 %5504, 1
  store i32 %5505, i32* %5503, align 4
  %5506 = sext i32 %5504 to i64
  %5507 = getelementptr inbounds [400 x i32], [400 x i32]* %5501, i64 0, i64 %5506
  store i32 %5499, i32* %5507, align 4
  br label %5508

5508:                                             ; preds = %5495, %5484
  %5509 = load i32, i32* %11, align 4
  %5510 = add nsw i32 %5509, 1200
  %5511 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5512 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5511, i32 0, i32 0
  %5513 = load i32, i32* %59, align 4
  %5514 = sext i32 %5513 to i64
  %5515 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5514
  %5516 = load i32, i32* %5515, align 4
  %5517 = sext i32 %5516 to i64
  %5518 = getelementptr inbounds [400 x i32], [400 x i32]* %5512, i64 0, i64 %5517
  store i32 %5510, i32* %5518, align 4
  %5519 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5520 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5519, i32 0, i32 1
  %5521 = load i32, i32* %59, align 4
  %5522 = sext i32 %5521 to i64
  %5523 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5522
  %5524 = load i32, i32* %5523, align 4
  %5525 = sext i32 %5524 to i64
  %5526 = getelementptr inbounds [400 x i32], [400 x i32]* %5520, i64 0, i64 %5525
  store i32 1000, i32* %5526, align 4
  %5527 = load i32, i32* %9, align 4
  %5528 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5529 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5528, i32 0, i32 2
  %5530 = load i32, i32* %59, align 4
  %5531 = sext i32 %5530 to i64
  %5532 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5531
  %5533 = load i32, i32* %5532, align 4
  %5534 = sext i32 %5533 to i64
  %5535 = getelementptr inbounds [400 x i32], [400 x i32]* %5529, i64 0, i64 %5534
  store i32 %5527, i32* %5535, align 4
  %5536 = load i32, i32* %21, align 4
  %5537 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5538 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5537, i32 0, i32 3
  %5539 = load i32, i32* %59, align 4
  %5540 = sext i32 %5539 to i64
  %5541 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5540
  %5542 = load i32, i32* %5541, align 4
  %5543 = sext i32 %5542 to i64
  %5544 = getelementptr inbounds [400 x i32], [400 x i32]* %5538, i64 0, i64 %5543
  store i32 %5536, i32* %5544, align 4
  %5545 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5546 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5545, i32 0, i32 4
  %5547 = load i32, i32* %59, align 4
  %5548 = sext i32 %5547 to i64
  %5549 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5548
  %5550 = load i32, i32* %5549, align 4
  %5551 = sext i32 %5550 to i64
  %5552 = getelementptr inbounds [400 x i32], [400 x i32]* %5546, i64 0, i64 %5551
  store i32 0, i32* %5552, align 4
  %5553 = load i32, i32* %59, align 4
  %5554 = sext i32 %5553 to i64
  %5555 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5554
  %5556 = load i32, i32* %5555, align 4
  %5557 = load i32, i32* %5, align 4
  %5558 = icmp eq i32 %5556, %5557
  br i1 %5558, label %5559, label %5568

5559:                                             ; preds = %5508
  %5560 = load i32, i32* %11, align 4
  %5561 = add nsw i32 %5560, 1200
  %5562 = load i32, i32* %14, align 4
  %5563 = icmp slt i32 %5561, %5562
  br i1 %5563, label %5564, label %5568

5564:                                             ; preds = %5559
  %5565 = load i32, i32* %11, align 4
  %5566 = add nsw i32 %5565, 1200
  %5567 = sub nsw i32 %5566, 1
  store i32 %5567, i32* %14, align 4
  br label %5568

5568:                                             ; preds = %5564, %5559, %5508
  br label %5569

5569:                                             ; preds = %5568
  %5570 = load i32, i32* %59, align 4
  %5571 = add nsw i32 %5570, 1
  store i32 %5571, i32* %59, align 4
  br label %5480, !llvm.loop !51

5572:                                             ; preds = %5480
  br label %5573

5573:                                             ; preds = %5572, %5446
  br label %5574

5574:                                             ; preds = %5573, %5411
  br label %5575

5575:                                             ; preds = %5574
  br label %5576

5576:                                             ; preds = %5575, %5404, %5394, %5387, %5380
  %5577 = load i32, i32* %22, align 4
  %5578 = sext i32 %5577 to i64
  %5579 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5578
  %5580 = load i8, i8* %5579, align 1
  %5581 = zext i8 %5580 to i32
  %5582 = icmp eq i32 %5581, 0
  br i1 %5582, label %5583, label %5772

5583:                                             ; preds = %5576
  %5584 = load i32, i32* %26, align 4
  %5585 = sext i32 %5584 to i64
  %5586 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5585
  %5587 = load i8, i8* %5586, align 1
  %5588 = zext i8 %5587 to i32
  %5589 = icmp eq i32 %5588, 0
  br i1 %5589, label %5590, label %5772

5590:                                             ; preds = %5583
  %5591 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5592 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5591, i32 0, i32 0
  %5593 = load i32, i32* %22, align 4
  %5594 = sext i32 %5593 to i64
  %5595 = getelementptr inbounds [400 x i32], [400 x i32]* %5592, i64 0, i64 %5594
  %5596 = load i32, i32* %5595, align 4
  %5597 = load i32, i32* %11, align 4
  %5598 = add nsw i32 %5597, 1200
  %5599 = icmp sgt i32 %5596, %5598
  br i1 %5599, label %5600, label %5772

5600:                                             ; preds = %5590
  %5601 = load i32, i32* %7, align 4
  %5602 = load i32, i32* %22, align 4
  %5603 = load i32, i32* %26, align 4
  %5604 = call i32 @does_secure_through_ladder(i32 %5601, i32 %5602, i32 %5603)
  %5605 = icmp ne i32 %5604, 0
  br i1 %5605, label %5606, label %5772

5606:                                             ; preds = %5600
  br label %5607

5607:                                             ; preds = %5606
  %5608 = load i32, i32* %11, align 4
  %5609 = add nsw i32 %5608, 1200
  %5610 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5611 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5610, i32 0, i32 0
  %5612 = load i32, i32* %22, align 4
  %5613 = sext i32 %5612 to i64
  %5614 = getelementptr inbounds [400 x i32], [400 x i32]* %5611, i64 0, i64 %5613
  %5615 = load i32, i32* %5614, align 4
  %5616 = icmp slt i32 %5609, %5615
  br i1 %5616, label %5617, label %5770

5617:                                             ; preds = %5607
  %5618 = load i32, i32* %22, align 4
  %5619 = sext i32 %5618 to i64
  %5620 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5619
  %5621 = load i8, i8* %5620, align 1
  %5622 = zext i8 %5621 to i32
  %5623 = icmp eq i32 %5622, 0
  br i1 %5623, label %5624, label %5672

5624:                                             ; preds = %5617
  %5625 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5626 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5625, i32 0, i32 0
  %5627 = load i32, i32* %22, align 4
  %5628 = sext i32 %5627 to i64
  %5629 = getelementptr inbounds [400 x i32], [400 x i32]* %5626, i64 0, i64 %5628
  %5630 = load i32, i32* %5629, align 4
  %5631 = icmp eq i32 %5630, 100000
  br i1 %5631, label %5632, label %5642

5632:                                             ; preds = %5624
  %5633 = load i32, i32* %22, align 4
  %5634 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5635 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5634, i32 0, i32 5
  %5636 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5637 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5636, i32 0, i32 7
  %5638 = load i32, i32* %5637, align 4
  %5639 = add nsw i32 %5638, 1
  store i32 %5639, i32* %5637, align 4
  %5640 = sext i32 %5638 to i64
  %5641 = getelementptr inbounds [400 x i32], [400 x i32]* %5635, i64 0, i64 %5640
  store i32 %5633, i32* %5641, align 4
  br label %5642

5642:                                             ; preds = %5632, %5624
  %5643 = load i32, i32* %11, align 4
  %5644 = add nsw i32 %5643, 1200
  %5645 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5646 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5645, i32 0, i32 0
  %5647 = load i32, i32* %22, align 4
  %5648 = sext i32 %5647 to i64
  %5649 = getelementptr inbounds [400 x i32], [400 x i32]* %5646, i64 0, i64 %5648
  store i32 %5644, i32* %5649, align 4
  %5650 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5651 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5650, i32 0, i32 1
  %5652 = load i32, i32* %22, align 4
  %5653 = sext i32 %5652 to i64
  %5654 = getelementptr inbounds [400 x i32], [400 x i32]* %5651, i64 0, i64 %5653
  store i32 1000, i32* %5654, align 4
  %5655 = load i32, i32* %9, align 4
  %5656 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5657 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5656, i32 0, i32 2
  %5658 = load i32, i32* %22, align 4
  %5659 = sext i32 %5658 to i64
  %5660 = getelementptr inbounds [400 x i32], [400 x i32]* %5657, i64 0, i64 %5659
  store i32 %5655, i32* %5660, align 4
  %5661 = load i32, i32* %26, align 4
  %5662 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5663 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5662, i32 0, i32 3
  %5664 = load i32, i32* %22, align 4
  %5665 = sext i32 %5664 to i64
  %5666 = getelementptr inbounds [400 x i32], [400 x i32]* %5663, i64 0, i64 %5665
  store i32 %5661, i32* %5666, align 4
  %5667 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5668 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5667, i32 0, i32 4
  %5669 = load i32, i32* %22, align 4
  %5670 = sext i32 %5669 to i64
  %5671 = getelementptr inbounds [400 x i32], [400 x i32]* %5668, i64 0, i64 %5670
  store i32 0, i32* %5671, align 4
  br label %5769

5672:                                             ; preds = %5617
  %5673 = load i32, i32* %22, align 4
  %5674 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %5675 = call i32 @findstones(i32 %5673, i32 361, i32* %5674)
  store i32 %5675, i32* %13, align 4
  store i32 0, i32* %60, align 4
  br label %5676

5676:                                             ; preds = %5765, %5672
  %5677 = load i32, i32* %60, align 4
  %5678 = load i32, i32* %13, align 4
  %5679 = icmp slt i32 %5677, %5678
  br i1 %5679, label %5680, label %5768

5680:                                             ; preds = %5676
  %5681 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5682 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5681, i32 0, i32 0
  %5683 = load i32, i32* %60, align 4
  %5684 = sext i32 %5683 to i64
  %5685 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5684
  %5686 = load i32, i32* %5685, align 4
  %5687 = sext i32 %5686 to i64
  %5688 = getelementptr inbounds [400 x i32], [400 x i32]* %5682, i64 0, i64 %5687
  %5689 = load i32, i32* %5688, align 4
  %5690 = icmp eq i32 %5689, 100000
  br i1 %5690, label %5691, label %5704

5691:                                             ; preds = %5680
  %5692 = load i32, i32* %60, align 4
  %5693 = sext i32 %5692 to i64
  %5694 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5693
  %5695 = load i32, i32* %5694, align 4
  %5696 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5697 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5696, i32 0, i32 5
  %5698 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5699 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5698, i32 0, i32 7
  %5700 = load i32, i32* %5699, align 4
  %5701 = add nsw i32 %5700, 1
  store i32 %5701, i32* %5699, align 4
  %5702 = sext i32 %5700 to i64
  %5703 = getelementptr inbounds [400 x i32], [400 x i32]* %5697, i64 0, i64 %5702
  store i32 %5695, i32* %5703, align 4
  br label %5704

5704:                                             ; preds = %5691, %5680
  %5705 = load i32, i32* %11, align 4
  %5706 = add nsw i32 %5705, 1200
  %5707 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5708 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5707, i32 0, i32 0
  %5709 = load i32, i32* %60, align 4
  %5710 = sext i32 %5709 to i64
  %5711 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5710
  %5712 = load i32, i32* %5711, align 4
  %5713 = sext i32 %5712 to i64
  %5714 = getelementptr inbounds [400 x i32], [400 x i32]* %5708, i64 0, i64 %5713
  store i32 %5706, i32* %5714, align 4
  %5715 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5716 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5715, i32 0, i32 1
  %5717 = load i32, i32* %60, align 4
  %5718 = sext i32 %5717 to i64
  %5719 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5718
  %5720 = load i32, i32* %5719, align 4
  %5721 = sext i32 %5720 to i64
  %5722 = getelementptr inbounds [400 x i32], [400 x i32]* %5716, i64 0, i64 %5721
  store i32 1000, i32* %5722, align 4
  %5723 = load i32, i32* %9, align 4
  %5724 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5725 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5724, i32 0, i32 2
  %5726 = load i32, i32* %60, align 4
  %5727 = sext i32 %5726 to i64
  %5728 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5727
  %5729 = load i32, i32* %5728, align 4
  %5730 = sext i32 %5729 to i64
  %5731 = getelementptr inbounds [400 x i32], [400 x i32]* %5725, i64 0, i64 %5730
  store i32 %5723, i32* %5731, align 4
  %5732 = load i32, i32* %26, align 4
  %5733 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5734 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5733, i32 0, i32 3
  %5735 = load i32, i32* %60, align 4
  %5736 = sext i32 %5735 to i64
  %5737 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5736
  %5738 = load i32, i32* %5737, align 4
  %5739 = sext i32 %5738 to i64
  %5740 = getelementptr inbounds [400 x i32], [400 x i32]* %5734, i64 0, i64 %5739
  store i32 %5732, i32* %5740, align 4
  %5741 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5742 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5741, i32 0, i32 4
  %5743 = load i32, i32* %60, align 4
  %5744 = sext i32 %5743 to i64
  %5745 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5744
  %5746 = load i32, i32* %5745, align 4
  %5747 = sext i32 %5746 to i64
  %5748 = getelementptr inbounds [400 x i32], [400 x i32]* %5742, i64 0, i64 %5747
  store i32 0, i32* %5748, align 4
  %5749 = load i32, i32* %60, align 4
  %5750 = sext i32 %5749 to i64
  %5751 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5750
  %5752 = load i32, i32* %5751, align 4
  %5753 = load i32, i32* %5, align 4
  %5754 = icmp eq i32 %5752, %5753
  br i1 %5754, label %5755, label %5764

5755:                                             ; preds = %5704
  %5756 = load i32, i32* %11, align 4
  %5757 = add nsw i32 %5756, 1200
  %5758 = load i32, i32* %14, align 4
  %5759 = icmp slt i32 %5757, %5758
  br i1 %5759, label %5760, label %5764

5760:                                             ; preds = %5755
  %5761 = load i32, i32* %11, align 4
  %5762 = add nsw i32 %5761, 1200
  %5763 = sub nsw i32 %5762, 1
  store i32 %5763, i32* %14, align 4
  br label %5764

5764:                                             ; preds = %5760, %5755, %5704
  br label %5765

5765:                                             ; preds = %5764
  %5766 = load i32, i32* %60, align 4
  %5767 = add nsw i32 %5766, 1
  store i32 %5767, i32* %60, align 4
  br label %5676, !llvm.loop !52

5768:                                             ; preds = %5676
  br label %5769

5769:                                             ; preds = %5768, %5642
  br label %5770

5770:                                             ; preds = %5769, %5607
  br label %5771

5771:                                             ; preds = %5770
  br label %5772

5772:                                             ; preds = %5771, %5600, %5590, %5583, %5576
  %5773 = load i32, i32* %22, align 4
  %5774 = sext i32 %5773 to i64
  %5775 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5774
  %5776 = load i8, i8* %5775, align 1
  %5777 = zext i8 %5776 to i32
  %5778 = icmp eq i32 %5777, 0
  br i1 %5778, label %5779, label %5974

5779:                                             ; preds = %5772
  %5780 = load i32, i32* %21, align 4
  %5781 = sext i32 %5780 to i64
  %5782 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5781
  %5783 = load i8, i8* %5782, align 1
  %5784 = zext i8 %5783 to i32
  %5785 = icmp eq i32 %5784, 0
  br i1 %5785, label %5786, label %5974

5786:                                             ; preds = %5779
  %5787 = load i32, i32* %26, align 4
  %5788 = sext i32 %5787 to i64
  %5789 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5788
  %5790 = load i8, i8* %5789, align 1
  %5791 = zext i8 %5790 to i32
  %5792 = load i32, i32* %8, align 4
  %5793 = icmp eq i32 %5791, %5792
  br i1 %5793, label %5794, label %5974

5794:                                             ; preds = %5786
  %5795 = load i32, i32* %26, align 4
  %5796 = call i32 @countlib(i32 %5795)
  %5797 = icmp sle i32 %5796, 3
  br i1 %5797, label %5798, label %5974

5798:                                             ; preds = %5794
  %5799 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5800 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5799, i32 0, i32 0
  %5801 = load i32, i32* %22, align 4
  %5802 = sext i32 %5801 to i64
  %5803 = getelementptr inbounds [400 x i32], [400 x i32]* %5800, i64 0, i64 %5802
  %5804 = load i32, i32* %5803, align 4
  %5805 = load i32, i32* %11, align 4
  %5806 = add nsw i32 %5805, 1500
  %5807 = icmp sgt i32 %5804, %5806
  br i1 %5807, label %5808, label %5974

5808:                                             ; preds = %5798
  br label %5809

5809:                                             ; preds = %5808
  %5810 = load i32, i32* %11, align 4
  %5811 = add nsw i32 %5810, 1500
  %5812 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5813 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5812, i32 0, i32 0
  %5814 = load i32, i32* %22, align 4
  %5815 = sext i32 %5814 to i64
  %5816 = getelementptr inbounds [400 x i32], [400 x i32]* %5813, i64 0, i64 %5815
  %5817 = load i32, i32* %5816, align 4
  %5818 = icmp slt i32 %5811, %5817
  br i1 %5818, label %5819, label %5972

5819:                                             ; preds = %5809
  %5820 = load i32, i32* %22, align 4
  %5821 = sext i32 %5820 to i64
  %5822 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5821
  %5823 = load i8, i8* %5822, align 1
  %5824 = zext i8 %5823 to i32
  %5825 = icmp eq i32 %5824, 0
  br i1 %5825, label %5826, label %5874

5826:                                             ; preds = %5819
  %5827 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5828 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5827, i32 0, i32 0
  %5829 = load i32, i32* %22, align 4
  %5830 = sext i32 %5829 to i64
  %5831 = getelementptr inbounds [400 x i32], [400 x i32]* %5828, i64 0, i64 %5830
  %5832 = load i32, i32* %5831, align 4
  %5833 = icmp eq i32 %5832, 100000
  br i1 %5833, label %5834, label %5844

5834:                                             ; preds = %5826
  %5835 = load i32, i32* %22, align 4
  %5836 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5837 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5836, i32 0, i32 5
  %5838 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5839 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5838, i32 0, i32 7
  %5840 = load i32, i32* %5839, align 4
  %5841 = add nsw i32 %5840, 1
  store i32 %5841, i32* %5839, align 4
  %5842 = sext i32 %5840 to i64
  %5843 = getelementptr inbounds [400 x i32], [400 x i32]* %5837, i64 0, i64 %5842
  store i32 %5835, i32* %5843, align 4
  br label %5844

5844:                                             ; preds = %5834, %5826
  %5845 = load i32, i32* %11, align 4
  %5846 = add nsw i32 %5845, 1500
  %5847 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5848 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5847, i32 0, i32 0
  %5849 = load i32, i32* %22, align 4
  %5850 = sext i32 %5849 to i64
  %5851 = getelementptr inbounds [400 x i32], [400 x i32]* %5848, i64 0, i64 %5850
  store i32 %5846, i32* %5851, align 4
  %5852 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5853 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5852, i32 0, i32 1
  %5854 = load i32, i32* %22, align 4
  %5855 = sext i32 %5854 to i64
  %5856 = getelementptr inbounds [400 x i32], [400 x i32]* %5853, i64 0, i64 %5855
  store i32 1000, i32* %5856, align 4
  %5857 = load i32, i32* %9, align 4
  %5858 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5859 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5858, i32 0, i32 2
  %5860 = load i32, i32* %22, align 4
  %5861 = sext i32 %5860 to i64
  %5862 = getelementptr inbounds [400 x i32], [400 x i32]* %5859, i64 0, i64 %5861
  store i32 %5857, i32* %5862, align 4
  %5863 = load i32, i32* %21, align 4
  %5864 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5865 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5864, i32 0, i32 3
  %5866 = load i32, i32* %22, align 4
  %5867 = sext i32 %5866 to i64
  %5868 = getelementptr inbounds [400 x i32], [400 x i32]* %5865, i64 0, i64 %5867
  store i32 %5863, i32* %5868, align 4
  %5869 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5870 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5869, i32 0, i32 4
  %5871 = load i32, i32* %22, align 4
  %5872 = sext i32 %5871 to i64
  %5873 = getelementptr inbounds [400 x i32], [400 x i32]* %5870, i64 0, i64 %5872
  store i32 0, i32* %5873, align 4
  br label %5971

5874:                                             ; preds = %5819
  %5875 = load i32, i32* %22, align 4
  %5876 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %5877 = call i32 @findstones(i32 %5875, i32 361, i32* %5876)
  store i32 %5877, i32* %13, align 4
  store i32 0, i32* %61, align 4
  br label %5878

5878:                                             ; preds = %5967, %5874
  %5879 = load i32, i32* %61, align 4
  %5880 = load i32, i32* %13, align 4
  %5881 = icmp slt i32 %5879, %5880
  br i1 %5881, label %5882, label %5970

5882:                                             ; preds = %5878
  %5883 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5884 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5883, i32 0, i32 0
  %5885 = load i32, i32* %61, align 4
  %5886 = sext i32 %5885 to i64
  %5887 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5886
  %5888 = load i32, i32* %5887, align 4
  %5889 = sext i32 %5888 to i64
  %5890 = getelementptr inbounds [400 x i32], [400 x i32]* %5884, i64 0, i64 %5889
  %5891 = load i32, i32* %5890, align 4
  %5892 = icmp eq i32 %5891, 100000
  br i1 %5892, label %5893, label %5906

5893:                                             ; preds = %5882
  %5894 = load i32, i32* %61, align 4
  %5895 = sext i32 %5894 to i64
  %5896 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5895
  %5897 = load i32, i32* %5896, align 4
  %5898 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5899 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5898, i32 0, i32 5
  %5900 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5901 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5900, i32 0, i32 7
  %5902 = load i32, i32* %5901, align 4
  %5903 = add nsw i32 %5902, 1
  store i32 %5903, i32* %5901, align 4
  %5904 = sext i32 %5902 to i64
  %5905 = getelementptr inbounds [400 x i32], [400 x i32]* %5899, i64 0, i64 %5904
  store i32 %5897, i32* %5905, align 4
  br label %5906

5906:                                             ; preds = %5893, %5882
  %5907 = load i32, i32* %11, align 4
  %5908 = add nsw i32 %5907, 1500
  %5909 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5910 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5909, i32 0, i32 0
  %5911 = load i32, i32* %61, align 4
  %5912 = sext i32 %5911 to i64
  %5913 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5912
  %5914 = load i32, i32* %5913, align 4
  %5915 = sext i32 %5914 to i64
  %5916 = getelementptr inbounds [400 x i32], [400 x i32]* %5910, i64 0, i64 %5915
  store i32 %5908, i32* %5916, align 4
  %5917 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5918 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5917, i32 0, i32 1
  %5919 = load i32, i32* %61, align 4
  %5920 = sext i32 %5919 to i64
  %5921 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5920
  %5922 = load i32, i32* %5921, align 4
  %5923 = sext i32 %5922 to i64
  %5924 = getelementptr inbounds [400 x i32], [400 x i32]* %5918, i64 0, i64 %5923
  store i32 1000, i32* %5924, align 4
  %5925 = load i32, i32* %9, align 4
  %5926 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5927 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5926, i32 0, i32 2
  %5928 = load i32, i32* %61, align 4
  %5929 = sext i32 %5928 to i64
  %5930 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5929
  %5931 = load i32, i32* %5930, align 4
  %5932 = sext i32 %5931 to i64
  %5933 = getelementptr inbounds [400 x i32], [400 x i32]* %5927, i64 0, i64 %5932
  store i32 %5925, i32* %5933, align 4
  %5934 = load i32, i32* %21, align 4
  %5935 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5936 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5935, i32 0, i32 3
  %5937 = load i32, i32* %61, align 4
  %5938 = sext i32 %5937 to i64
  %5939 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5938
  %5940 = load i32, i32* %5939, align 4
  %5941 = sext i32 %5940 to i64
  %5942 = getelementptr inbounds [400 x i32], [400 x i32]* %5936, i64 0, i64 %5941
  store i32 %5934, i32* %5942, align 4
  %5943 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %5944 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %5943, i32 0, i32 4
  %5945 = load i32, i32* %61, align 4
  %5946 = sext i32 %5945 to i64
  %5947 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5946
  %5948 = load i32, i32* %5947, align 4
  %5949 = sext i32 %5948 to i64
  %5950 = getelementptr inbounds [400 x i32], [400 x i32]* %5944, i64 0, i64 %5949
  store i32 0, i32* %5950, align 4
  %5951 = load i32, i32* %61, align 4
  %5952 = sext i32 %5951 to i64
  %5953 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %5952
  %5954 = load i32, i32* %5953, align 4
  %5955 = load i32, i32* %5, align 4
  %5956 = icmp eq i32 %5954, %5955
  br i1 %5956, label %5957, label %5966

5957:                                             ; preds = %5906
  %5958 = load i32, i32* %11, align 4
  %5959 = add nsw i32 %5958, 1500
  %5960 = load i32, i32* %14, align 4
  %5961 = icmp slt i32 %5959, %5960
  br i1 %5961, label %5962, label %5966

5962:                                             ; preds = %5957
  %5963 = load i32, i32* %11, align 4
  %5964 = add nsw i32 %5963, 1500
  %5965 = sub nsw i32 %5964, 1
  store i32 %5965, i32* %14, align 4
  br label %5966

5966:                                             ; preds = %5962, %5957, %5906
  br label %5967

5967:                                             ; preds = %5966
  %5968 = load i32, i32* %61, align 4
  %5969 = add nsw i32 %5968, 1
  store i32 %5969, i32* %61, align 4
  br label %5878, !llvm.loop !53

5970:                                             ; preds = %5878
  br label %5971

5971:                                             ; preds = %5970, %5844
  br label %5972

5972:                                             ; preds = %5971, %5809
  br label %5973

5973:                                             ; preds = %5972
  br label %5974

5974:                                             ; preds = %5973, %5798, %5794, %5786, %5779, %5772
  %5975 = load i32, i32* %22, align 4
  %5976 = sext i32 %5975 to i64
  %5977 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5976
  %5978 = load i8, i8* %5977, align 1
  %5979 = zext i8 %5978 to i32
  %5980 = icmp eq i32 %5979, 0
  br i1 %5980, label %5981, label %6176

5981:                                             ; preds = %5974
  %5982 = load i32, i32* %26, align 4
  %5983 = sext i32 %5982 to i64
  %5984 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5983
  %5985 = load i8, i8* %5984, align 1
  %5986 = zext i8 %5985 to i32
  %5987 = icmp eq i32 %5986, 0
  br i1 %5987, label %5988, label %6176

5988:                                             ; preds = %5981
  %5989 = load i32, i32* %21, align 4
  %5990 = sext i32 %5989 to i64
  %5991 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %5990
  %5992 = load i8, i8* %5991, align 1
  %5993 = zext i8 %5992 to i32
  %5994 = load i32, i32* %8, align 4
  %5995 = icmp eq i32 %5993, %5994
  br i1 %5995, label %5996, label %6176

5996:                                             ; preds = %5988
  %5997 = load i32, i32* %21, align 4
  %5998 = call i32 @countlib(i32 %5997)
  %5999 = icmp sle i32 %5998, 3
  br i1 %5999, label %6000, label %6176

6000:                                             ; preds = %5996
  %6001 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6002 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6001, i32 0, i32 0
  %6003 = load i32, i32* %22, align 4
  %6004 = sext i32 %6003 to i64
  %6005 = getelementptr inbounds [400 x i32], [400 x i32]* %6002, i64 0, i64 %6004
  %6006 = load i32, i32* %6005, align 4
  %6007 = load i32, i32* %11, align 4
  %6008 = add nsw i32 %6007, 1500
  %6009 = icmp sgt i32 %6006, %6008
  br i1 %6009, label %6010, label %6176

6010:                                             ; preds = %6000
  br label %6011

6011:                                             ; preds = %6010
  %6012 = load i32, i32* %11, align 4
  %6013 = add nsw i32 %6012, 1500
  %6014 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6015 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6014, i32 0, i32 0
  %6016 = load i32, i32* %22, align 4
  %6017 = sext i32 %6016 to i64
  %6018 = getelementptr inbounds [400 x i32], [400 x i32]* %6015, i64 0, i64 %6017
  %6019 = load i32, i32* %6018, align 4
  %6020 = icmp slt i32 %6013, %6019
  br i1 %6020, label %6021, label %6174

6021:                                             ; preds = %6011
  %6022 = load i32, i32* %22, align 4
  %6023 = sext i32 %6022 to i64
  %6024 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6023
  %6025 = load i8, i8* %6024, align 1
  %6026 = zext i8 %6025 to i32
  %6027 = icmp eq i32 %6026, 0
  br i1 %6027, label %6028, label %6076

6028:                                             ; preds = %6021
  %6029 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6030 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6029, i32 0, i32 0
  %6031 = load i32, i32* %22, align 4
  %6032 = sext i32 %6031 to i64
  %6033 = getelementptr inbounds [400 x i32], [400 x i32]* %6030, i64 0, i64 %6032
  %6034 = load i32, i32* %6033, align 4
  %6035 = icmp eq i32 %6034, 100000
  br i1 %6035, label %6036, label %6046

6036:                                             ; preds = %6028
  %6037 = load i32, i32* %22, align 4
  %6038 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6039 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6038, i32 0, i32 5
  %6040 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6041 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6040, i32 0, i32 7
  %6042 = load i32, i32* %6041, align 4
  %6043 = add nsw i32 %6042, 1
  store i32 %6043, i32* %6041, align 4
  %6044 = sext i32 %6042 to i64
  %6045 = getelementptr inbounds [400 x i32], [400 x i32]* %6039, i64 0, i64 %6044
  store i32 %6037, i32* %6045, align 4
  br label %6046

6046:                                             ; preds = %6036, %6028
  %6047 = load i32, i32* %11, align 4
  %6048 = add nsw i32 %6047, 1500
  %6049 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6050 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6049, i32 0, i32 0
  %6051 = load i32, i32* %22, align 4
  %6052 = sext i32 %6051 to i64
  %6053 = getelementptr inbounds [400 x i32], [400 x i32]* %6050, i64 0, i64 %6052
  store i32 %6048, i32* %6053, align 4
  %6054 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6055 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6054, i32 0, i32 1
  %6056 = load i32, i32* %22, align 4
  %6057 = sext i32 %6056 to i64
  %6058 = getelementptr inbounds [400 x i32], [400 x i32]* %6055, i64 0, i64 %6057
  store i32 1000, i32* %6058, align 4
  %6059 = load i32, i32* %9, align 4
  %6060 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6061 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6060, i32 0, i32 2
  %6062 = load i32, i32* %22, align 4
  %6063 = sext i32 %6062 to i64
  %6064 = getelementptr inbounds [400 x i32], [400 x i32]* %6061, i64 0, i64 %6063
  store i32 %6059, i32* %6064, align 4
  %6065 = load i32, i32* %26, align 4
  %6066 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6067 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6066, i32 0, i32 3
  %6068 = load i32, i32* %22, align 4
  %6069 = sext i32 %6068 to i64
  %6070 = getelementptr inbounds [400 x i32], [400 x i32]* %6067, i64 0, i64 %6069
  store i32 %6065, i32* %6070, align 4
  %6071 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6072 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6071, i32 0, i32 4
  %6073 = load i32, i32* %22, align 4
  %6074 = sext i32 %6073 to i64
  %6075 = getelementptr inbounds [400 x i32], [400 x i32]* %6072, i64 0, i64 %6074
  store i32 0, i32* %6075, align 4
  br label %6173

6076:                                             ; preds = %6021
  %6077 = load i32, i32* %22, align 4
  %6078 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %6079 = call i32 @findstones(i32 %6077, i32 361, i32* %6078)
  store i32 %6079, i32* %13, align 4
  store i32 0, i32* %62, align 4
  br label %6080

6080:                                             ; preds = %6169, %6076
  %6081 = load i32, i32* %62, align 4
  %6082 = load i32, i32* %13, align 4
  %6083 = icmp slt i32 %6081, %6082
  br i1 %6083, label %6084, label %6172

6084:                                             ; preds = %6080
  %6085 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6086 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6085, i32 0, i32 0
  %6087 = load i32, i32* %62, align 4
  %6088 = sext i32 %6087 to i64
  %6089 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6088
  %6090 = load i32, i32* %6089, align 4
  %6091 = sext i32 %6090 to i64
  %6092 = getelementptr inbounds [400 x i32], [400 x i32]* %6086, i64 0, i64 %6091
  %6093 = load i32, i32* %6092, align 4
  %6094 = icmp eq i32 %6093, 100000
  br i1 %6094, label %6095, label %6108

6095:                                             ; preds = %6084
  %6096 = load i32, i32* %62, align 4
  %6097 = sext i32 %6096 to i64
  %6098 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6097
  %6099 = load i32, i32* %6098, align 4
  %6100 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6101 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6100, i32 0, i32 5
  %6102 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6103 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6102, i32 0, i32 7
  %6104 = load i32, i32* %6103, align 4
  %6105 = add nsw i32 %6104, 1
  store i32 %6105, i32* %6103, align 4
  %6106 = sext i32 %6104 to i64
  %6107 = getelementptr inbounds [400 x i32], [400 x i32]* %6101, i64 0, i64 %6106
  store i32 %6099, i32* %6107, align 4
  br label %6108

6108:                                             ; preds = %6095, %6084
  %6109 = load i32, i32* %11, align 4
  %6110 = add nsw i32 %6109, 1500
  %6111 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6112 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6111, i32 0, i32 0
  %6113 = load i32, i32* %62, align 4
  %6114 = sext i32 %6113 to i64
  %6115 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6114
  %6116 = load i32, i32* %6115, align 4
  %6117 = sext i32 %6116 to i64
  %6118 = getelementptr inbounds [400 x i32], [400 x i32]* %6112, i64 0, i64 %6117
  store i32 %6110, i32* %6118, align 4
  %6119 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6120 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6119, i32 0, i32 1
  %6121 = load i32, i32* %62, align 4
  %6122 = sext i32 %6121 to i64
  %6123 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6122
  %6124 = load i32, i32* %6123, align 4
  %6125 = sext i32 %6124 to i64
  %6126 = getelementptr inbounds [400 x i32], [400 x i32]* %6120, i64 0, i64 %6125
  store i32 1000, i32* %6126, align 4
  %6127 = load i32, i32* %9, align 4
  %6128 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6129 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6128, i32 0, i32 2
  %6130 = load i32, i32* %62, align 4
  %6131 = sext i32 %6130 to i64
  %6132 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6131
  %6133 = load i32, i32* %6132, align 4
  %6134 = sext i32 %6133 to i64
  %6135 = getelementptr inbounds [400 x i32], [400 x i32]* %6129, i64 0, i64 %6134
  store i32 %6127, i32* %6135, align 4
  %6136 = load i32, i32* %26, align 4
  %6137 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6138 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6137, i32 0, i32 3
  %6139 = load i32, i32* %62, align 4
  %6140 = sext i32 %6139 to i64
  %6141 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6140
  %6142 = load i32, i32* %6141, align 4
  %6143 = sext i32 %6142 to i64
  %6144 = getelementptr inbounds [400 x i32], [400 x i32]* %6138, i64 0, i64 %6143
  store i32 %6136, i32* %6144, align 4
  %6145 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6146 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6145, i32 0, i32 4
  %6147 = load i32, i32* %62, align 4
  %6148 = sext i32 %6147 to i64
  %6149 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6148
  %6150 = load i32, i32* %6149, align 4
  %6151 = sext i32 %6150 to i64
  %6152 = getelementptr inbounds [400 x i32], [400 x i32]* %6146, i64 0, i64 %6151
  store i32 0, i32* %6152, align 4
  %6153 = load i32, i32* %62, align 4
  %6154 = sext i32 %6153 to i64
  %6155 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6154
  %6156 = load i32, i32* %6155, align 4
  %6157 = load i32, i32* %5, align 4
  %6158 = icmp eq i32 %6156, %6157
  br i1 %6158, label %6159, label %6168

6159:                                             ; preds = %6108
  %6160 = load i32, i32* %11, align 4
  %6161 = add nsw i32 %6160, 1500
  %6162 = load i32, i32* %14, align 4
  %6163 = icmp slt i32 %6161, %6162
  br i1 %6163, label %6164, label %6168

6164:                                             ; preds = %6159
  %6165 = load i32, i32* %11, align 4
  %6166 = add nsw i32 %6165, 1500
  %6167 = sub nsw i32 %6166, 1
  store i32 %6167, i32* %14, align 4
  br label %6168

6168:                                             ; preds = %6164, %6159, %6108
  br label %6169

6169:                                             ; preds = %6168
  %6170 = load i32, i32* %62, align 4
  %6171 = add nsw i32 %6170, 1
  store i32 %6171, i32* %62, align 4
  br label %6080, !llvm.loop !54

6172:                                             ; preds = %6080
  br label %6173

6173:                                             ; preds = %6172, %6046
  br label %6174

6174:                                             ; preds = %6173, %6011
  br label %6175

6175:                                             ; preds = %6174
  br label %6176

6176:                                             ; preds = %6175, %6000, %5996, %5988, %5981, %5974
  %6177 = load i32, i32* %22, align 4
  %6178 = sext i32 %6177 to i64
  %6179 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6178
  %6180 = load i8, i8* %6179, align 1
  %6181 = zext i8 %6180 to i32
  %6182 = icmp eq i32 %6181, 0
  br i1 %6182, label %6183, label %6364

6183:                                             ; preds = %6176
  %6184 = load i32, i32* %21, align 4
  %6185 = sext i32 %6184 to i64
  %6186 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6185
  %6187 = load i8, i8* %6186, align 1
  %6188 = zext i8 %6187 to i32
  %6189 = icmp eq i32 %6188, 0
  br i1 %6189, label %6190, label %6364

6190:                                             ; preds = %6183
  %6191 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6192 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6191, i32 0, i32 0
  %6193 = load i32, i32* %22, align 4
  %6194 = sext i32 %6193 to i64
  %6195 = getelementptr inbounds [400 x i32], [400 x i32]* %6192, i64 0, i64 %6194
  %6196 = load i32, i32* %6195, align 4
  %6197 = load i32, i32* %11, align 4
  %6198 = add nsw i32 %6197, 1800
  %6199 = icmp sgt i32 %6196, %6198
  br i1 %6199, label %6200, label %6364

6200:                                             ; preds = %6190
  br label %6201

6201:                                             ; preds = %6200
  %6202 = load i32, i32* %11, align 4
  %6203 = add nsw i32 %6202, 1800
  %6204 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6205 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6204, i32 0, i32 0
  %6206 = load i32, i32* %22, align 4
  %6207 = sext i32 %6206 to i64
  %6208 = getelementptr inbounds [400 x i32], [400 x i32]* %6205, i64 0, i64 %6207
  %6209 = load i32, i32* %6208, align 4
  %6210 = icmp slt i32 %6203, %6209
  br i1 %6210, label %6211, label %6362

6211:                                             ; preds = %6201
  %6212 = load i32, i32* %22, align 4
  %6213 = sext i32 %6212 to i64
  %6214 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6213
  %6215 = load i8, i8* %6214, align 1
  %6216 = zext i8 %6215 to i32
  %6217 = icmp eq i32 %6216, 0
  br i1 %6217, label %6218, label %6265

6218:                                             ; preds = %6211
  %6219 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6220 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6219, i32 0, i32 0
  %6221 = load i32, i32* %22, align 4
  %6222 = sext i32 %6221 to i64
  %6223 = getelementptr inbounds [400 x i32], [400 x i32]* %6220, i64 0, i64 %6222
  %6224 = load i32, i32* %6223, align 4
  %6225 = icmp eq i32 %6224, 100000
  br i1 %6225, label %6226, label %6236

6226:                                             ; preds = %6218
  %6227 = load i32, i32* %22, align 4
  %6228 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6229 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6228, i32 0, i32 5
  %6230 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6231 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6230, i32 0, i32 7
  %6232 = load i32, i32* %6231, align 4
  %6233 = add nsw i32 %6232, 1
  store i32 %6233, i32* %6231, align 4
  %6234 = sext i32 %6232 to i64
  %6235 = getelementptr inbounds [400 x i32], [400 x i32]* %6229, i64 0, i64 %6234
  store i32 %6227, i32* %6235, align 4
  br label %6236

6236:                                             ; preds = %6226, %6218
  %6237 = load i32, i32* %11, align 4
  %6238 = add nsw i32 %6237, 1800
  %6239 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6240 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6239, i32 0, i32 0
  %6241 = load i32, i32* %22, align 4
  %6242 = sext i32 %6241 to i64
  %6243 = getelementptr inbounds [400 x i32], [400 x i32]* %6240, i64 0, i64 %6242
  store i32 %6238, i32* %6243, align 4
  %6244 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6245 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6244, i32 0, i32 1
  %6246 = load i32, i32* %22, align 4
  %6247 = sext i32 %6246 to i64
  %6248 = getelementptr inbounds [400 x i32], [400 x i32]* %6245, i64 0, i64 %6247
  store i32 900, i32* %6248, align 4
  %6249 = load i32, i32* %9, align 4
  %6250 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6251 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6250, i32 0, i32 2
  %6252 = load i32, i32* %22, align 4
  %6253 = sext i32 %6252 to i64
  %6254 = getelementptr inbounds [400 x i32], [400 x i32]* %6251, i64 0, i64 %6253
  store i32 %6249, i32* %6254, align 4
  %6255 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6256 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6255, i32 0, i32 3
  %6257 = load i32, i32* %22, align 4
  %6258 = sext i32 %6257 to i64
  %6259 = getelementptr inbounds [400 x i32], [400 x i32]* %6256, i64 0, i64 %6258
  store i32 0, i32* %6259, align 4
  %6260 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6261 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6260, i32 0, i32 4
  %6262 = load i32, i32* %22, align 4
  %6263 = sext i32 %6262 to i64
  %6264 = getelementptr inbounds [400 x i32], [400 x i32]* %6261, i64 0, i64 %6263
  store i32 0, i32* %6264, align 4
  br label %6361

6265:                                             ; preds = %6211
  %6266 = load i32, i32* %22, align 4
  %6267 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %6268 = call i32 @findstones(i32 %6266, i32 361, i32* %6267)
  store i32 %6268, i32* %13, align 4
  store i32 0, i32* %63, align 4
  br label %6269

6269:                                             ; preds = %6357, %6265
  %6270 = load i32, i32* %63, align 4
  %6271 = load i32, i32* %13, align 4
  %6272 = icmp slt i32 %6270, %6271
  br i1 %6272, label %6273, label %6360

6273:                                             ; preds = %6269
  %6274 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6275 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6274, i32 0, i32 0
  %6276 = load i32, i32* %63, align 4
  %6277 = sext i32 %6276 to i64
  %6278 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6277
  %6279 = load i32, i32* %6278, align 4
  %6280 = sext i32 %6279 to i64
  %6281 = getelementptr inbounds [400 x i32], [400 x i32]* %6275, i64 0, i64 %6280
  %6282 = load i32, i32* %6281, align 4
  %6283 = icmp eq i32 %6282, 100000
  br i1 %6283, label %6284, label %6297

6284:                                             ; preds = %6273
  %6285 = load i32, i32* %63, align 4
  %6286 = sext i32 %6285 to i64
  %6287 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6286
  %6288 = load i32, i32* %6287, align 4
  %6289 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6290 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6289, i32 0, i32 5
  %6291 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6292 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6291, i32 0, i32 7
  %6293 = load i32, i32* %6292, align 4
  %6294 = add nsw i32 %6293, 1
  store i32 %6294, i32* %6292, align 4
  %6295 = sext i32 %6293 to i64
  %6296 = getelementptr inbounds [400 x i32], [400 x i32]* %6290, i64 0, i64 %6295
  store i32 %6288, i32* %6296, align 4
  br label %6297

6297:                                             ; preds = %6284, %6273
  %6298 = load i32, i32* %11, align 4
  %6299 = add nsw i32 %6298, 1800
  %6300 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6301 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6300, i32 0, i32 0
  %6302 = load i32, i32* %63, align 4
  %6303 = sext i32 %6302 to i64
  %6304 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6303
  %6305 = load i32, i32* %6304, align 4
  %6306 = sext i32 %6305 to i64
  %6307 = getelementptr inbounds [400 x i32], [400 x i32]* %6301, i64 0, i64 %6306
  store i32 %6299, i32* %6307, align 4
  %6308 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6309 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6308, i32 0, i32 1
  %6310 = load i32, i32* %63, align 4
  %6311 = sext i32 %6310 to i64
  %6312 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6311
  %6313 = load i32, i32* %6312, align 4
  %6314 = sext i32 %6313 to i64
  %6315 = getelementptr inbounds [400 x i32], [400 x i32]* %6309, i64 0, i64 %6314
  store i32 900, i32* %6315, align 4
  %6316 = load i32, i32* %9, align 4
  %6317 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6318 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6317, i32 0, i32 2
  %6319 = load i32, i32* %63, align 4
  %6320 = sext i32 %6319 to i64
  %6321 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6320
  %6322 = load i32, i32* %6321, align 4
  %6323 = sext i32 %6322 to i64
  %6324 = getelementptr inbounds [400 x i32], [400 x i32]* %6318, i64 0, i64 %6323
  store i32 %6316, i32* %6324, align 4
  %6325 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6326 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6325, i32 0, i32 3
  %6327 = load i32, i32* %63, align 4
  %6328 = sext i32 %6327 to i64
  %6329 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6328
  %6330 = load i32, i32* %6329, align 4
  %6331 = sext i32 %6330 to i64
  %6332 = getelementptr inbounds [400 x i32], [400 x i32]* %6326, i64 0, i64 %6331
  store i32 0, i32* %6332, align 4
  %6333 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6334 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6333, i32 0, i32 4
  %6335 = load i32, i32* %63, align 4
  %6336 = sext i32 %6335 to i64
  %6337 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6336
  %6338 = load i32, i32* %6337, align 4
  %6339 = sext i32 %6338 to i64
  %6340 = getelementptr inbounds [400 x i32], [400 x i32]* %6334, i64 0, i64 %6339
  store i32 0, i32* %6340, align 4
  %6341 = load i32, i32* %63, align 4
  %6342 = sext i32 %6341 to i64
  %6343 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6342
  %6344 = load i32, i32* %6343, align 4
  %6345 = load i32, i32* %5, align 4
  %6346 = icmp eq i32 %6344, %6345
  br i1 %6346, label %6347, label %6356

6347:                                             ; preds = %6297
  %6348 = load i32, i32* %11, align 4
  %6349 = add nsw i32 %6348, 1800
  %6350 = load i32, i32* %14, align 4
  %6351 = icmp slt i32 %6349, %6350
  br i1 %6351, label %6352, label %6356

6352:                                             ; preds = %6347
  %6353 = load i32, i32* %11, align 4
  %6354 = add nsw i32 %6353, 1800
  %6355 = sub nsw i32 %6354, 1
  store i32 %6355, i32* %14, align 4
  br label %6356

6356:                                             ; preds = %6352, %6347, %6297
  br label %6357

6357:                                             ; preds = %6356
  %6358 = load i32, i32* %63, align 4
  %6359 = add nsw i32 %6358, 1
  store i32 %6359, i32* %63, align 4
  br label %6269, !llvm.loop !55

6360:                                             ; preds = %6269
  br label %6361

6361:                                             ; preds = %6360, %6236
  br label %6362

6362:                                             ; preds = %6361, %6201
  br label %6363

6363:                                             ; preds = %6362
  br label %6364

6364:                                             ; preds = %6363, %6190, %6183, %6176
  %6365 = load i32, i32* %22, align 4
  %6366 = sext i32 %6365 to i64
  %6367 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6366
  %6368 = load i8, i8* %6367, align 1
  %6369 = zext i8 %6368 to i32
  %6370 = icmp eq i32 %6369, 0
  br i1 %6370, label %6371, label %6552

6371:                                             ; preds = %6364
  %6372 = load i32, i32* %26, align 4
  %6373 = sext i32 %6372 to i64
  %6374 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6373
  %6375 = load i8, i8* %6374, align 1
  %6376 = zext i8 %6375 to i32
  %6377 = icmp eq i32 %6376, 0
  br i1 %6377, label %6378, label %6552

6378:                                             ; preds = %6371
  %6379 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6380 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6379, i32 0, i32 0
  %6381 = load i32, i32* %22, align 4
  %6382 = sext i32 %6381 to i64
  %6383 = getelementptr inbounds [400 x i32], [400 x i32]* %6380, i64 0, i64 %6382
  %6384 = load i32, i32* %6383, align 4
  %6385 = load i32, i32* %11, align 4
  %6386 = add nsw i32 %6385, 1800
  %6387 = icmp sgt i32 %6384, %6386
  br i1 %6387, label %6388, label %6552

6388:                                             ; preds = %6378
  br label %6389

6389:                                             ; preds = %6388
  %6390 = load i32, i32* %11, align 4
  %6391 = add nsw i32 %6390, 1800
  %6392 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6393 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6392, i32 0, i32 0
  %6394 = load i32, i32* %22, align 4
  %6395 = sext i32 %6394 to i64
  %6396 = getelementptr inbounds [400 x i32], [400 x i32]* %6393, i64 0, i64 %6395
  %6397 = load i32, i32* %6396, align 4
  %6398 = icmp slt i32 %6391, %6397
  br i1 %6398, label %6399, label %6550

6399:                                             ; preds = %6389
  %6400 = load i32, i32* %22, align 4
  %6401 = sext i32 %6400 to i64
  %6402 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6401
  %6403 = load i8, i8* %6402, align 1
  %6404 = zext i8 %6403 to i32
  %6405 = icmp eq i32 %6404, 0
  br i1 %6405, label %6406, label %6453

6406:                                             ; preds = %6399
  %6407 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6408 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6407, i32 0, i32 0
  %6409 = load i32, i32* %22, align 4
  %6410 = sext i32 %6409 to i64
  %6411 = getelementptr inbounds [400 x i32], [400 x i32]* %6408, i64 0, i64 %6410
  %6412 = load i32, i32* %6411, align 4
  %6413 = icmp eq i32 %6412, 100000
  br i1 %6413, label %6414, label %6424

6414:                                             ; preds = %6406
  %6415 = load i32, i32* %22, align 4
  %6416 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6417 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6416, i32 0, i32 5
  %6418 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6419 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6418, i32 0, i32 7
  %6420 = load i32, i32* %6419, align 4
  %6421 = add nsw i32 %6420, 1
  store i32 %6421, i32* %6419, align 4
  %6422 = sext i32 %6420 to i64
  %6423 = getelementptr inbounds [400 x i32], [400 x i32]* %6417, i64 0, i64 %6422
  store i32 %6415, i32* %6423, align 4
  br label %6424

6424:                                             ; preds = %6414, %6406
  %6425 = load i32, i32* %11, align 4
  %6426 = add nsw i32 %6425, 1800
  %6427 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6428 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6427, i32 0, i32 0
  %6429 = load i32, i32* %22, align 4
  %6430 = sext i32 %6429 to i64
  %6431 = getelementptr inbounds [400 x i32], [400 x i32]* %6428, i64 0, i64 %6430
  store i32 %6426, i32* %6431, align 4
  %6432 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6433 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6432, i32 0, i32 1
  %6434 = load i32, i32* %22, align 4
  %6435 = sext i32 %6434 to i64
  %6436 = getelementptr inbounds [400 x i32], [400 x i32]* %6433, i64 0, i64 %6435
  store i32 900, i32* %6436, align 4
  %6437 = load i32, i32* %9, align 4
  %6438 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6439 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6438, i32 0, i32 2
  %6440 = load i32, i32* %22, align 4
  %6441 = sext i32 %6440 to i64
  %6442 = getelementptr inbounds [400 x i32], [400 x i32]* %6439, i64 0, i64 %6441
  store i32 %6437, i32* %6442, align 4
  %6443 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6444 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6443, i32 0, i32 3
  %6445 = load i32, i32* %22, align 4
  %6446 = sext i32 %6445 to i64
  %6447 = getelementptr inbounds [400 x i32], [400 x i32]* %6444, i64 0, i64 %6446
  store i32 0, i32* %6447, align 4
  %6448 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6449 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6448, i32 0, i32 4
  %6450 = load i32, i32* %22, align 4
  %6451 = sext i32 %6450 to i64
  %6452 = getelementptr inbounds [400 x i32], [400 x i32]* %6449, i64 0, i64 %6451
  store i32 0, i32* %6452, align 4
  br label %6549

6453:                                             ; preds = %6399
  %6454 = load i32, i32* %22, align 4
  %6455 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %6456 = call i32 @findstones(i32 %6454, i32 361, i32* %6455)
  store i32 %6456, i32* %13, align 4
  store i32 0, i32* %64, align 4
  br label %6457

6457:                                             ; preds = %6545, %6453
  %6458 = load i32, i32* %64, align 4
  %6459 = load i32, i32* %13, align 4
  %6460 = icmp slt i32 %6458, %6459
  br i1 %6460, label %6461, label %6548

6461:                                             ; preds = %6457
  %6462 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6463 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6462, i32 0, i32 0
  %6464 = load i32, i32* %64, align 4
  %6465 = sext i32 %6464 to i64
  %6466 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6465
  %6467 = load i32, i32* %6466, align 4
  %6468 = sext i32 %6467 to i64
  %6469 = getelementptr inbounds [400 x i32], [400 x i32]* %6463, i64 0, i64 %6468
  %6470 = load i32, i32* %6469, align 4
  %6471 = icmp eq i32 %6470, 100000
  br i1 %6471, label %6472, label %6485

6472:                                             ; preds = %6461
  %6473 = load i32, i32* %64, align 4
  %6474 = sext i32 %6473 to i64
  %6475 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6474
  %6476 = load i32, i32* %6475, align 4
  %6477 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6478 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6477, i32 0, i32 5
  %6479 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6480 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6479, i32 0, i32 7
  %6481 = load i32, i32* %6480, align 4
  %6482 = add nsw i32 %6481, 1
  store i32 %6482, i32* %6480, align 4
  %6483 = sext i32 %6481 to i64
  %6484 = getelementptr inbounds [400 x i32], [400 x i32]* %6478, i64 0, i64 %6483
  store i32 %6476, i32* %6484, align 4
  br label %6485

6485:                                             ; preds = %6472, %6461
  %6486 = load i32, i32* %11, align 4
  %6487 = add nsw i32 %6486, 1800
  %6488 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6489 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6488, i32 0, i32 0
  %6490 = load i32, i32* %64, align 4
  %6491 = sext i32 %6490 to i64
  %6492 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6491
  %6493 = load i32, i32* %6492, align 4
  %6494 = sext i32 %6493 to i64
  %6495 = getelementptr inbounds [400 x i32], [400 x i32]* %6489, i64 0, i64 %6494
  store i32 %6487, i32* %6495, align 4
  %6496 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6497 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6496, i32 0, i32 1
  %6498 = load i32, i32* %64, align 4
  %6499 = sext i32 %6498 to i64
  %6500 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6499
  %6501 = load i32, i32* %6500, align 4
  %6502 = sext i32 %6501 to i64
  %6503 = getelementptr inbounds [400 x i32], [400 x i32]* %6497, i64 0, i64 %6502
  store i32 900, i32* %6503, align 4
  %6504 = load i32, i32* %9, align 4
  %6505 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6506 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6505, i32 0, i32 2
  %6507 = load i32, i32* %64, align 4
  %6508 = sext i32 %6507 to i64
  %6509 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6508
  %6510 = load i32, i32* %6509, align 4
  %6511 = sext i32 %6510 to i64
  %6512 = getelementptr inbounds [400 x i32], [400 x i32]* %6506, i64 0, i64 %6511
  store i32 %6504, i32* %6512, align 4
  %6513 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6514 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6513, i32 0, i32 3
  %6515 = load i32, i32* %64, align 4
  %6516 = sext i32 %6515 to i64
  %6517 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6516
  %6518 = load i32, i32* %6517, align 4
  %6519 = sext i32 %6518 to i64
  %6520 = getelementptr inbounds [400 x i32], [400 x i32]* %6514, i64 0, i64 %6519
  store i32 0, i32* %6520, align 4
  %6521 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6522 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6521, i32 0, i32 4
  %6523 = load i32, i32* %64, align 4
  %6524 = sext i32 %6523 to i64
  %6525 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6524
  %6526 = load i32, i32* %6525, align 4
  %6527 = sext i32 %6526 to i64
  %6528 = getelementptr inbounds [400 x i32], [400 x i32]* %6522, i64 0, i64 %6527
  store i32 0, i32* %6528, align 4
  %6529 = load i32, i32* %64, align 4
  %6530 = sext i32 %6529 to i64
  %6531 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6530
  %6532 = load i32, i32* %6531, align 4
  %6533 = load i32, i32* %5, align 4
  %6534 = icmp eq i32 %6532, %6533
  br i1 %6534, label %6535, label %6544

6535:                                             ; preds = %6485
  %6536 = load i32, i32* %11, align 4
  %6537 = add nsw i32 %6536, 1800
  %6538 = load i32, i32* %14, align 4
  %6539 = icmp slt i32 %6537, %6538
  br i1 %6539, label %6540, label %6544

6540:                                             ; preds = %6535
  %6541 = load i32, i32* %11, align 4
  %6542 = add nsw i32 %6541, 1800
  %6543 = sub nsw i32 %6542, 1
  store i32 %6543, i32* %14, align 4
  br label %6544

6544:                                             ; preds = %6540, %6535, %6485
  br label %6545

6545:                                             ; preds = %6544
  %6546 = load i32, i32* %64, align 4
  %6547 = add nsw i32 %6546, 1
  store i32 %6547, i32* %64, align 4
  br label %6457, !llvm.loop !56

6548:                                             ; preds = %6457
  br label %6549

6549:                                             ; preds = %6548, %6424
  br label %6550

6550:                                             ; preds = %6549, %6389
  br label %6551

6551:                                             ; preds = %6550
  br label %6552

6552:                                             ; preds = %6551, %6378, %6371, %6364
  %6553 = load i32, i32* %26, align 4
  %6554 = sext i32 %6553 to i64
  %6555 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6554
  %6556 = load i8, i8* %6555, align 1
  %6557 = zext i8 %6556 to i32
  %6558 = load i32, i32* %8, align 4
  %6559 = icmp eq i32 %6557, %6558
  br i1 %6559, label %6560, label %6745

6560:                                             ; preds = %6552
  %6561 = load i32, i32* %24, align 4
  %6562 = sext i32 %6561 to i64
  %6563 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6562
  %6564 = load i8, i8* %6563, align 1
  %6565 = zext i8 %6564 to i32
  %6566 = icmp eq i32 %6565, 0
  br i1 %6566, label %6567, label %6745

6567:                                             ; preds = %6560
  %6568 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6569 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6568, i32 0, i32 0
  %6570 = load i32, i32* %24, align 4
  %6571 = sext i32 %6570 to i64
  %6572 = getelementptr inbounds [400 x i32], [400 x i32]* %6569, i64 0, i64 %6571
  %6573 = load i32, i32* %6572, align 4
  %6574 = load i32, i32* %11, align 4
  %6575 = add nsw i32 %6574, 2000
  %6576 = icmp sgt i32 %6573, %6575
  br i1 %6576, label %6577, label %6745

6577:                                             ; preds = %6567
  %6578 = load i32, i32* %26, align 4
  %6579 = call i32 @countstones(i32 %6578)
  %6580 = icmp eq i32 %6579, 1
  br i1 %6580, label %6581, label %6745

6581:                                             ; preds = %6577
  br label %6582

6582:                                             ; preds = %6581
  %6583 = load i32, i32* %11, align 4
  %6584 = add nsw i32 %6583, 2000
  %6585 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6586 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6585, i32 0, i32 0
  %6587 = load i32, i32* %24, align 4
  %6588 = sext i32 %6587 to i64
  %6589 = getelementptr inbounds [400 x i32], [400 x i32]* %6586, i64 0, i64 %6588
  %6590 = load i32, i32* %6589, align 4
  %6591 = icmp slt i32 %6584, %6590
  br i1 %6591, label %6592, label %6743

6592:                                             ; preds = %6582
  %6593 = load i32, i32* %24, align 4
  %6594 = sext i32 %6593 to i64
  %6595 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6594
  %6596 = load i8, i8* %6595, align 1
  %6597 = zext i8 %6596 to i32
  %6598 = icmp eq i32 %6597, 0
  br i1 %6598, label %6599, label %6646

6599:                                             ; preds = %6592
  %6600 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6601 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6600, i32 0, i32 0
  %6602 = load i32, i32* %24, align 4
  %6603 = sext i32 %6602 to i64
  %6604 = getelementptr inbounds [400 x i32], [400 x i32]* %6601, i64 0, i64 %6603
  %6605 = load i32, i32* %6604, align 4
  %6606 = icmp eq i32 %6605, 100000
  br i1 %6606, label %6607, label %6617

6607:                                             ; preds = %6599
  %6608 = load i32, i32* %24, align 4
  %6609 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6610 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6609, i32 0, i32 5
  %6611 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6612 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6611, i32 0, i32 7
  %6613 = load i32, i32* %6612, align 4
  %6614 = add nsw i32 %6613, 1
  store i32 %6614, i32* %6612, align 4
  %6615 = sext i32 %6613 to i64
  %6616 = getelementptr inbounds [400 x i32], [400 x i32]* %6610, i64 0, i64 %6615
  store i32 %6608, i32* %6616, align 4
  br label %6617

6617:                                             ; preds = %6607, %6599
  %6618 = load i32, i32* %11, align 4
  %6619 = add nsw i32 %6618, 2000
  %6620 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6621 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6620, i32 0, i32 0
  %6622 = load i32, i32* %24, align 4
  %6623 = sext i32 %6622 to i64
  %6624 = getelementptr inbounds [400 x i32], [400 x i32]* %6621, i64 0, i64 %6623
  store i32 %6619, i32* %6624, align 4
  %6625 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6626 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6625, i32 0, i32 1
  %6627 = load i32, i32* %24, align 4
  %6628 = sext i32 %6627 to i64
  %6629 = getelementptr inbounds [400 x i32], [400 x i32]* %6626, i64 0, i64 %6628
  store i32 1000, i32* %6629, align 4
  %6630 = load i32, i32* %9, align 4
  %6631 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6632 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6631, i32 0, i32 2
  %6633 = load i32, i32* %24, align 4
  %6634 = sext i32 %6633 to i64
  %6635 = getelementptr inbounds [400 x i32], [400 x i32]* %6632, i64 0, i64 %6634
  store i32 %6630, i32* %6635, align 4
  %6636 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6637 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6636, i32 0, i32 3
  %6638 = load i32, i32* %24, align 4
  %6639 = sext i32 %6638 to i64
  %6640 = getelementptr inbounds [400 x i32], [400 x i32]* %6637, i64 0, i64 %6639
  store i32 0, i32* %6640, align 4
  %6641 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6642 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6641, i32 0, i32 4
  %6643 = load i32, i32* %24, align 4
  %6644 = sext i32 %6643 to i64
  %6645 = getelementptr inbounds [400 x i32], [400 x i32]* %6642, i64 0, i64 %6644
  store i32 0, i32* %6645, align 4
  br label %6742

6646:                                             ; preds = %6592
  %6647 = load i32, i32* %24, align 4
  %6648 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %6649 = call i32 @findstones(i32 %6647, i32 361, i32* %6648)
  store i32 %6649, i32* %13, align 4
  store i32 0, i32* %65, align 4
  br label %6650

6650:                                             ; preds = %6738, %6646
  %6651 = load i32, i32* %65, align 4
  %6652 = load i32, i32* %13, align 4
  %6653 = icmp slt i32 %6651, %6652
  br i1 %6653, label %6654, label %6741

6654:                                             ; preds = %6650
  %6655 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6656 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6655, i32 0, i32 0
  %6657 = load i32, i32* %65, align 4
  %6658 = sext i32 %6657 to i64
  %6659 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6658
  %6660 = load i32, i32* %6659, align 4
  %6661 = sext i32 %6660 to i64
  %6662 = getelementptr inbounds [400 x i32], [400 x i32]* %6656, i64 0, i64 %6661
  %6663 = load i32, i32* %6662, align 4
  %6664 = icmp eq i32 %6663, 100000
  br i1 %6664, label %6665, label %6678

6665:                                             ; preds = %6654
  %6666 = load i32, i32* %65, align 4
  %6667 = sext i32 %6666 to i64
  %6668 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6667
  %6669 = load i32, i32* %6668, align 4
  %6670 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6671 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6670, i32 0, i32 5
  %6672 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6673 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6672, i32 0, i32 7
  %6674 = load i32, i32* %6673, align 4
  %6675 = add nsw i32 %6674, 1
  store i32 %6675, i32* %6673, align 4
  %6676 = sext i32 %6674 to i64
  %6677 = getelementptr inbounds [400 x i32], [400 x i32]* %6671, i64 0, i64 %6676
  store i32 %6669, i32* %6677, align 4
  br label %6678

6678:                                             ; preds = %6665, %6654
  %6679 = load i32, i32* %11, align 4
  %6680 = add nsw i32 %6679, 2000
  %6681 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6682 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6681, i32 0, i32 0
  %6683 = load i32, i32* %65, align 4
  %6684 = sext i32 %6683 to i64
  %6685 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6684
  %6686 = load i32, i32* %6685, align 4
  %6687 = sext i32 %6686 to i64
  %6688 = getelementptr inbounds [400 x i32], [400 x i32]* %6682, i64 0, i64 %6687
  store i32 %6680, i32* %6688, align 4
  %6689 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6690 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6689, i32 0, i32 1
  %6691 = load i32, i32* %65, align 4
  %6692 = sext i32 %6691 to i64
  %6693 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6692
  %6694 = load i32, i32* %6693, align 4
  %6695 = sext i32 %6694 to i64
  %6696 = getelementptr inbounds [400 x i32], [400 x i32]* %6690, i64 0, i64 %6695
  store i32 1000, i32* %6696, align 4
  %6697 = load i32, i32* %9, align 4
  %6698 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6699 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6698, i32 0, i32 2
  %6700 = load i32, i32* %65, align 4
  %6701 = sext i32 %6700 to i64
  %6702 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6701
  %6703 = load i32, i32* %6702, align 4
  %6704 = sext i32 %6703 to i64
  %6705 = getelementptr inbounds [400 x i32], [400 x i32]* %6699, i64 0, i64 %6704
  store i32 %6697, i32* %6705, align 4
  %6706 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6707 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6706, i32 0, i32 3
  %6708 = load i32, i32* %65, align 4
  %6709 = sext i32 %6708 to i64
  %6710 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6709
  %6711 = load i32, i32* %6710, align 4
  %6712 = sext i32 %6711 to i64
  %6713 = getelementptr inbounds [400 x i32], [400 x i32]* %6707, i64 0, i64 %6712
  store i32 0, i32* %6713, align 4
  %6714 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6715 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6714, i32 0, i32 4
  %6716 = load i32, i32* %65, align 4
  %6717 = sext i32 %6716 to i64
  %6718 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6717
  %6719 = load i32, i32* %6718, align 4
  %6720 = sext i32 %6719 to i64
  %6721 = getelementptr inbounds [400 x i32], [400 x i32]* %6715, i64 0, i64 %6720
  store i32 0, i32* %6721, align 4
  %6722 = load i32, i32* %65, align 4
  %6723 = sext i32 %6722 to i64
  %6724 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6723
  %6725 = load i32, i32* %6724, align 4
  %6726 = load i32, i32* %5, align 4
  %6727 = icmp eq i32 %6725, %6726
  br i1 %6727, label %6728, label %6737

6728:                                             ; preds = %6678
  %6729 = load i32, i32* %11, align 4
  %6730 = add nsw i32 %6729, 2000
  %6731 = load i32, i32* %14, align 4
  %6732 = icmp slt i32 %6730, %6731
  br i1 %6732, label %6733, label %6737

6733:                                             ; preds = %6728
  %6734 = load i32, i32* %11, align 4
  %6735 = add nsw i32 %6734, 2000
  %6736 = sub nsw i32 %6735, 1
  store i32 %6736, i32* %14, align 4
  br label %6737

6737:                                             ; preds = %6733, %6728, %6678
  br label %6738

6738:                                             ; preds = %6737
  %6739 = load i32, i32* %65, align 4
  %6740 = add nsw i32 %6739, 1
  store i32 %6740, i32* %65, align 4
  br label %6650, !llvm.loop !57

6741:                                             ; preds = %6650
  br label %6742

6742:                                             ; preds = %6741, %6617
  br label %6743

6743:                                             ; preds = %6742, %6582
  br label %6744

6744:                                             ; preds = %6743
  br label %6745

6745:                                             ; preds = %6744, %6577, %6567, %6560, %6552
  %6746 = load i32, i32* %22, align 4
  %6747 = sext i32 %6746 to i64
  %6748 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6747
  %6749 = load i8, i8* %6748, align 1
  %6750 = zext i8 %6749 to i32
  %6751 = icmp eq i32 %6750, 0
  br i1 %6751, label %6752, label %6939

6752:                                             ; preds = %6745
  %6753 = load i32, i32* %26, align 4
  %6754 = sext i32 %6753 to i64
  %6755 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6754
  %6756 = load i8, i8* %6755, align 1
  %6757 = zext i8 %6756 to i32
  %6758 = icmp eq i32 %6757, 0
  br i1 %6758, label %6759, label %6939

6759:                                             ; preds = %6752
  %6760 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6761 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6760, i32 0, i32 0
  %6762 = load i32, i32* %22, align 4
  %6763 = sext i32 %6762 to i64
  %6764 = getelementptr inbounds [400 x i32], [400 x i32]* %6761, i64 0, i64 %6763
  %6765 = load i32, i32* %6764, align 4
  %6766 = load i32, i32* %11, align 4
  %6767 = add nsw i32 %6766, 1800
  %6768 = icmp sgt i32 %6765, %6767
  br i1 %6768, label %6769, label %6939

6769:                                             ; preds = %6759
  %6770 = load i32, i32* %7, align 4
  %6771 = load i32, i32* %22, align 4
  %6772 = load i32, i32* %26, align 4
  %6773 = call i32 @does_secure_through_ladder(i32 %6770, i32 %6771, i32 %6772)
  %6774 = icmp ne i32 %6773, 0
  br i1 %6774, label %6775, label %6939

6775:                                             ; preds = %6769
  br label %6776

6776:                                             ; preds = %6775
  %6777 = load i32, i32* %11, align 4
  %6778 = add nsw i32 %6777, 1800
  %6779 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6780 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6779, i32 0, i32 0
  %6781 = load i32, i32* %22, align 4
  %6782 = sext i32 %6781 to i64
  %6783 = getelementptr inbounds [400 x i32], [400 x i32]* %6780, i64 0, i64 %6782
  %6784 = load i32, i32* %6783, align 4
  %6785 = icmp slt i32 %6778, %6784
  br i1 %6785, label %6786, label %6937

6786:                                             ; preds = %6776
  %6787 = load i32, i32* %22, align 4
  %6788 = sext i32 %6787 to i64
  %6789 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6788
  %6790 = load i8, i8* %6789, align 1
  %6791 = zext i8 %6790 to i32
  %6792 = icmp eq i32 %6791, 0
  br i1 %6792, label %6793, label %6840

6793:                                             ; preds = %6786
  %6794 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6795 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6794, i32 0, i32 0
  %6796 = load i32, i32* %22, align 4
  %6797 = sext i32 %6796 to i64
  %6798 = getelementptr inbounds [400 x i32], [400 x i32]* %6795, i64 0, i64 %6797
  %6799 = load i32, i32* %6798, align 4
  %6800 = icmp eq i32 %6799, 100000
  br i1 %6800, label %6801, label %6811

6801:                                             ; preds = %6793
  %6802 = load i32, i32* %22, align 4
  %6803 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6804 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6803, i32 0, i32 5
  %6805 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6806 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6805, i32 0, i32 7
  %6807 = load i32, i32* %6806, align 4
  %6808 = add nsw i32 %6807, 1
  store i32 %6808, i32* %6806, align 4
  %6809 = sext i32 %6807 to i64
  %6810 = getelementptr inbounds [400 x i32], [400 x i32]* %6804, i64 0, i64 %6809
  store i32 %6802, i32* %6810, align 4
  br label %6811

6811:                                             ; preds = %6801, %6793
  %6812 = load i32, i32* %11, align 4
  %6813 = add nsw i32 %6812, 1800
  %6814 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6815 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6814, i32 0, i32 0
  %6816 = load i32, i32* %22, align 4
  %6817 = sext i32 %6816 to i64
  %6818 = getelementptr inbounds [400 x i32], [400 x i32]* %6815, i64 0, i64 %6817
  store i32 %6813, i32* %6818, align 4
  %6819 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6820 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6819, i32 0, i32 1
  %6821 = load i32, i32* %22, align 4
  %6822 = sext i32 %6821 to i64
  %6823 = getelementptr inbounds [400 x i32], [400 x i32]* %6820, i64 0, i64 %6822
  store i32 900, i32* %6823, align 4
  %6824 = load i32, i32* %9, align 4
  %6825 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6826 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6825, i32 0, i32 2
  %6827 = load i32, i32* %22, align 4
  %6828 = sext i32 %6827 to i64
  %6829 = getelementptr inbounds [400 x i32], [400 x i32]* %6826, i64 0, i64 %6828
  store i32 %6824, i32* %6829, align 4
  %6830 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6831 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6830, i32 0, i32 3
  %6832 = load i32, i32* %22, align 4
  %6833 = sext i32 %6832 to i64
  %6834 = getelementptr inbounds [400 x i32], [400 x i32]* %6831, i64 0, i64 %6833
  store i32 0, i32* %6834, align 4
  %6835 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6836 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6835, i32 0, i32 4
  %6837 = load i32, i32* %22, align 4
  %6838 = sext i32 %6837 to i64
  %6839 = getelementptr inbounds [400 x i32], [400 x i32]* %6836, i64 0, i64 %6838
  store i32 0, i32* %6839, align 4
  br label %6936

6840:                                             ; preds = %6786
  %6841 = load i32, i32* %22, align 4
  %6842 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %6843 = call i32 @findstones(i32 %6841, i32 361, i32* %6842)
  store i32 %6843, i32* %13, align 4
  store i32 0, i32* %66, align 4
  br label %6844

6844:                                             ; preds = %6932, %6840
  %6845 = load i32, i32* %66, align 4
  %6846 = load i32, i32* %13, align 4
  %6847 = icmp slt i32 %6845, %6846
  br i1 %6847, label %6848, label %6935

6848:                                             ; preds = %6844
  %6849 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6850 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6849, i32 0, i32 0
  %6851 = load i32, i32* %66, align 4
  %6852 = sext i32 %6851 to i64
  %6853 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6852
  %6854 = load i32, i32* %6853, align 4
  %6855 = sext i32 %6854 to i64
  %6856 = getelementptr inbounds [400 x i32], [400 x i32]* %6850, i64 0, i64 %6855
  %6857 = load i32, i32* %6856, align 4
  %6858 = icmp eq i32 %6857, 100000
  br i1 %6858, label %6859, label %6872

6859:                                             ; preds = %6848
  %6860 = load i32, i32* %66, align 4
  %6861 = sext i32 %6860 to i64
  %6862 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6861
  %6863 = load i32, i32* %6862, align 4
  %6864 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6865 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6864, i32 0, i32 5
  %6866 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6867 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6866, i32 0, i32 7
  %6868 = load i32, i32* %6867, align 4
  %6869 = add nsw i32 %6868, 1
  store i32 %6869, i32* %6867, align 4
  %6870 = sext i32 %6868 to i64
  %6871 = getelementptr inbounds [400 x i32], [400 x i32]* %6865, i64 0, i64 %6870
  store i32 %6863, i32* %6871, align 4
  br label %6872

6872:                                             ; preds = %6859, %6848
  %6873 = load i32, i32* %11, align 4
  %6874 = add nsw i32 %6873, 1800
  %6875 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6876 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6875, i32 0, i32 0
  %6877 = load i32, i32* %66, align 4
  %6878 = sext i32 %6877 to i64
  %6879 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6878
  %6880 = load i32, i32* %6879, align 4
  %6881 = sext i32 %6880 to i64
  %6882 = getelementptr inbounds [400 x i32], [400 x i32]* %6876, i64 0, i64 %6881
  store i32 %6874, i32* %6882, align 4
  %6883 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6884 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6883, i32 0, i32 1
  %6885 = load i32, i32* %66, align 4
  %6886 = sext i32 %6885 to i64
  %6887 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6886
  %6888 = load i32, i32* %6887, align 4
  %6889 = sext i32 %6888 to i64
  %6890 = getelementptr inbounds [400 x i32], [400 x i32]* %6884, i64 0, i64 %6889
  store i32 900, i32* %6890, align 4
  %6891 = load i32, i32* %9, align 4
  %6892 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6893 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6892, i32 0, i32 2
  %6894 = load i32, i32* %66, align 4
  %6895 = sext i32 %6894 to i64
  %6896 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6895
  %6897 = load i32, i32* %6896, align 4
  %6898 = sext i32 %6897 to i64
  %6899 = getelementptr inbounds [400 x i32], [400 x i32]* %6893, i64 0, i64 %6898
  store i32 %6891, i32* %6899, align 4
  %6900 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6901 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6900, i32 0, i32 3
  %6902 = load i32, i32* %66, align 4
  %6903 = sext i32 %6902 to i64
  %6904 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6903
  %6905 = load i32, i32* %6904, align 4
  %6906 = sext i32 %6905 to i64
  %6907 = getelementptr inbounds [400 x i32], [400 x i32]* %6901, i64 0, i64 %6906
  store i32 0, i32* %6907, align 4
  %6908 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6909 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6908, i32 0, i32 4
  %6910 = load i32, i32* %66, align 4
  %6911 = sext i32 %6910 to i64
  %6912 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6911
  %6913 = load i32, i32* %6912, align 4
  %6914 = sext i32 %6913 to i64
  %6915 = getelementptr inbounds [400 x i32], [400 x i32]* %6909, i64 0, i64 %6914
  store i32 0, i32* %6915, align 4
  %6916 = load i32, i32* %66, align 4
  %6917 = sext i32 %6916 to i64
  %6918 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %6917
  %6919 = load i32, i32* %6918, align 4
  %6920 = load i32, i32* %5, align 4
  %6921 = icmp eq i32 %6919, %6920
  br i1 %6921, label %6922, label %6931

6922:                                             ; preds = %6872
  %6923 = load i32, i32* %11, align 4
  %6924 = add nsw i32 %6923, 1800
  %6925 = load i32, i32* %14, align 4
  %6926 = icmp slt i32 %6924, %6925
  br i1 %6926, label %6927, label %6931

6927:                                             ; preds = %6922
  %6928 = load i32, i32* %11, align 4
  %6929 = add nsw i32 %6928, 1800
  %6930 = sub nsw i32 %6929, 1
  store i32 %6930, i32* %14, align 4
  br label %6931

6931:                                             ; preds = %6927, %6922, %6872
  br label %6932

6932:                                             ; preds = %6931
  %6933 = load i32, i32* %66, align 4
  %6934 = add nsw i32 %6933, 1
  store i32 %6934, i32* %66, align 4
  br label %6844, !llvm.loop !58

6935:                                             ; preds = %6844
  br label %6936

6936:                                             ; preds = %6935, %6811
  br label %6937

6937:                                             ; preds = %6936, %6776
  br label %6938

6938:                                             ; preds = %6937
  br label %6939

6939:                                             ; preds = %6938, %6769, %6759, %6752, %6745
  %6940 = load i32, i32* %22, align 4
  %6941 = sext i32 %6940 to i64
  %6942 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6941
  %6943 = load i8, i8* %6942, align 1
  %6944 = zext i8 %6943 to i32
  %6945 = icmp eq i32 %6944, 0
  br i1 %6945, label %6946, label %7143

6946:                                             ; preds = %6939
  %6947 = load i32, i32* %21, align 4
  %6948 = sext i32 %6947 to i64
  %6949 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6948
  %6950 = load i8, i8* %6949, align 1
  %6951 = zext i8 %6950 to i32
  %6952 = load i32, i32* %8, align 4
  %6953 = icmp eq i32 %6951, %6952
  br i1 %6953, label %6954, label %7143

6954:                                             ; preds = %6946
  %6955 = load i32, i32* %26, align 4
  %6956 = sext i32 %6955 to i64
  %6957 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6956
  %6958 = load i8, i8* %6957, align 1
  %6959 = zext i8 %6958 to i32
  %6960 = load i32, i32* %8, align 4
  %6961 = icmp eq i32 %6959, %6960
  br i1 %6961, label %6962, label %7143

6962:                                             ; preds = %6954
  %6963 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6964 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6963, i32 0, i32 0
  %6965 = load i32, i32* %22, align 4
  %6966 = sext i32 %6965 to i64
  %6967 = getelementptr inbounds [400 x i32], [400 x i32]* %6964, i64 0, i64 %6966
  %6968 = load i32, i32* %6967, align 4
  %6969 = load i32, i32* %11, align 4
  %6970 = add nsw i32 %6969, 2000
  %6971 = icmp sgt i32 %6968, %6970
  br i1 %6971, label %6972, label %7143

6972:                                             ; preds = %6962
  %6973 = load i32, i32* %21, align 4
  %6974 = call i32 @countlib(i32 %6973)
  %6975 = load i32, i32* %26, align 4
  %6976 = call i32 @countlib(i32 %6975)
  %6977 = add nsw i32 %6974, %6976
  %6978 = icmp sle i32 %6977, 6
  br i1 %6978, label %6979, label %7143

6979:                                             ; preds = %6972
  br label %6980

6980:                                             ; preds = %6979
  %6981 = load i32, i32* %11, align 4
  %6982 = add nsw i32 %6981, 2000
  %6983 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6984 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6983, i32 0, i32 0
  %6985 = load i32, i32* %22, align 4
  %6986 = sext i32 %6985 to i64
  %6987 = getelementptr inbounds [400 x i32], [400 x i32]* %6984, i64 0, i64 %6986
  %6988 = load i32, i32* %6987, align 4
  %6989 = icmp slt i32 %6982, %6988
  br i1 %6989, label %6990, label %7141

6990:                                             ; preds = %6980
  %6991 = load i32, i32* %22, align 4
  %6992 = sext i32 %6991 to i64
  %6993 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %6992
  %6994 = load i8, i8* %6993, align 1
  %6995 = zext i8 %6994 to i32
  %6996 = icmp eq i32 %6995, 0
  br i1 %6996, label %6997, label %7044

6997:                                             ; preds = %6990
  %6998 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %6999 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %6998, i32 0, i32 0
  %7000 = load i32, i32* %22, align 4
  %7001 = sext i32 %7000 to i64
  %7002 = getelementptr inbounds [400 x i32], [400 x i32]* %6999, i64 0, i64 %7001
  %7003 = load i32, i32* %7002, align 4
  %7004 = icmp eq i32 %7003, 100000
  br i1 %7004, label %7005, label %7015

7005:                                             ; preds = %6997
  %7006 = load i32, i32* %22, align 4
  %7007 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7008 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7007, i32 0, i32 5
  %7009 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7010 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7009, i32 0, i32 7
  %7011 = load i32, i32* %7010, align 4
  %7012 = add nsw i32 %7011, 1
  store i32 %7012, i32* %7010, align 4
  %7013 = sext i32 %7011 to i64
  %7014 = getelementptr inbounds [400 x i32], [400 x i32]* %7008, i64 0, i64 %7013
  store i32 %7006, i32* %7014, align 4
  br label %7015

7015:                                             ; preds = %7005, %6997
  %7016 = load i32, i32* %11, align 4
  %7017 = add nsw i32 %7016, 2000
  %7018 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7019 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7018, i32 0, i32 0
  %7020 = load i32, i32* %22, align 4
  %7021 = sext i32 %7020 to i64
  %7022 = getelementptr inbounds [400 x i32], [400 x i32]* %7019, i64 0, i64 %7021
  store i32 %7017, i32* %7022, align 4
  %7023 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7024 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7023, i32 0, i32 1
  %7025 = load i32, i32* %22, align 4
  %7026 = sext i32 %7025 to i64
  %7027 = getelementptr inbounds [400 x i32], [400 x i32]* %7024, i64 0, i64 %7026
  store i32 1000, i32* %7027, align 4
  %7028 = load i32, i32* %9, align 4
  %7029 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7030 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7029, i32 0, i32 2
  %7031 = load i32, i32* %22, align 4
  %7032 = sext i32 %7031 to i64
  %7033 = getelementptr inbounds [400 x i32], [400 x i32]* %7030, i64 0, i64 %7032
  store i32 %7028, i32* %7033, align 4
  %7034 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7035 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7034, i32 0, i32 3
  %7036 = load i32, i32* %22, align 4
  %7037 = sext i32 %7036 to i64
  %7038 = getelementptr inbounds [400 x i32], [400 x i32]* %7035, i64 0, i64 %7037
  store i32 0, i32* %7038, align 4
  %7039 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7040 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7039, i32 0, i32 4
  %7041 = load i32, i32* %22, align 4
  %7042 = sext i32 %7041 to i64
  %7043 = getelementptr inbounds [400 x i32], [400 x i32]* %7040, i64 0, i64 %7042
  store i32 0, i32* %7043, align 4
  br label %7140

7044:                                             ; preds = %6990
  %7045 = load i32, i32* %22, align 4
  %7046 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %7047 = call i32 @findstones(i32 %7045, i32 361, i32* %7046)
  store i32 %7047, i32* %13, align 4
  store i32 0, i32* %67, align 4
  br label %7048

7048:                                             ; preds = %7136, %7044
  %7049 = load i32, i32* %67, align 4
  %7050 = load i32, i32* %13, align 4
  %7051 = icmp slt i32 %7049, %7050
  br i1 %7051, label %7052, label %7139

7052:                                             ; preds = %7048
  %7053 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7054 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7053, i32 0, i32 0
  %7055 = load i32, i32* %67, align 4
  %7056 = sext i32 %7055 to i64
  %7057 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7056
  %7058 = load i32, i32* %7057, align 4
  %7059 = sext i32 %7058 to i64
  %7060 = getelementptr inbounds [400 x i32], [400 x i32]* %7054, i64 0, i64 %7059
  %7061 = load i32, i32* %7060, align 4
  %7062 = icmp eq i32 %7061, 100000
  br i1 %7062, label %7063, label %7076

7063:                                             ; preds = %7052
  %7064 = load i32, i32* %67, align 4
  %7065 = sext i32 %7064 to i64
  %7066 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7065
  %7067 = load i32, i32* %7066, align 4
  %7068 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7069 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7068, i32 0, i32 5
  %7070 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7071 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7070, i32 0, i32 7
  %7072 = load i32, i32* %7071, align 4
  %7073 = add nsw i32 %7072, 1
  store i32 %7073, i32* %7071, align 4
  %7074 = sext i32 %7072 to i64
  %7075 = getelementptr inbounds [400 x i32], [400 x i32]* %7069, i64 0, i64 %7074
  store i32 %7067, i32* %7075, align 4
  br label %7076

7076:                                             ; preds = %7063, %7052
  %7077 = load i32, i32* %11, align 4
  %7078 = add nsw i32 %7077, 2000
  %7079 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7080 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7079, i32 0, i32 0
  %7081 = load i32, i32* %67, align 4
  %7082 = sext i32 %7081 to i64
  %7083 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7082
  %7084 = load i32, i32* %7083, align 4
  %7085 = sext i32 %7084 to i64
  %7086 = getelementptr inbounds [400 x i32], [400 x i32]* %7080, i64 0, i64 %7085
  store i32 %7078, i32* %7086, align 4
  %7087 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7088 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7087, i32 0, i32 1
  %7089 = load i32, i32* %67, align 4
  %7090 = sext i32 %7089 to i64
  %7091 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7090
  %7092 = load i32, i32* %7091, align 4
  %7093 = sext i32 %7092 to i64
  %7094 = getelementptr inbounds [400 x i32], [400 x i32]* %7088, i64 0, i64 %7093
  store i32 1000, i32* %7094, align 4
  %7095 = load i32, i32* %9, align 4
  %7096 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7097 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7096, i32 0, i32 2
  %7098 = load i32, i32* %67, align 4
  %7099 = sext i32 %7098 to i64
  %7100 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7099
  %7101 = load i32, i32* %7100, align 4
  %7102 = sext i32 %7101 to i64
  %7103 = getelementptr inbounds [400 x i32], [400 x i32]* %7097, i64 0, i64 %7102
  store i32 %7095, i32* %7103, align 4
  %7104 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7105 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7104, i32 0, i32 3
  %7106 = load i32, i32* %67, align 4
  %7107 = sext i32 %7106 to i64
  %7108 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7107
  %7109 = load i32, i32* %7108, align 4
  %7110 = sext i32 %7109 to i64
  %7111 = getelementptr inbounds [400 x i32], [400 x i32]* %7105, i64 0, i64 %7110
  store i32 0, i32* %7111, align 4
  %7112 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7113 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7112, i32 0, i32 4
  %7114 = load i32, i32* %67, align 4
  %7115 = sext i32 %7114 to i64
  %7116 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7115
  %7117 = load i32, i32* %7116, align 4
  %7118 = sext i32 %7117 to i64
  %7119 = getelementptr inbounds [400 x i32], [400 x i32]* %7113, i64 0, i64 %7118
  store i32 0, i32* %7119, align 4
  %7120 = load i32, i32* %67, align 4
  %7121 = sext i32 %7120 to i64
  %7122 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7121
  %7123 = load i32, i32* %7122, align 4
  %7124 = load i32, i32* %5, align 4
  %7125 = icmp eq i32 %7123, %7124
  br i1 %7125, label %7126, label %7135

7126:                                             ; preds = %7076
  %7127 = load i32, i32* %11, align 4
  %7128 = add nsw i32 %7127, 2000
  %7129 = load i32, i32* %14, align 4
  %7130 = icmp slt i32 %7128, %7129
  br i1 %7130, label %7131, label %7135

7131:                                             ; preds = %7126
  %7132 = load i32, i32* %11, align 4
  %7133 = add nsw i32 %7132, 2000
  %7134 = sub nsw i32 %7133, 1
  store i32 %7134, i32* %14, align 4
  br label %7135

7135:                                             ; preds = %7131, %7126, %7076
  br label %7136

7136:                                             ; preds = %7135
  %7137 = load i32, i32* %67, align 4
  %7138 = add nsw i32 %7137, 1
  store i32 %7138, i32* %67, align 4
  br label %7048, !llvm.loop !59

7139:                                             ; preds = %7048
  br label %7140

7140:                                             ; preds = %7139, %7015
  br label %7141

7141:                                             ; preds = %7140, %6980
  br label %7142

7142:                                             ; preds = %7141
  br label %7143

7143:                                             ; preds = %7142, %6972, %6962, %6954, %6946, %6939
  %7144 = load i32, i32* %22, align 4
  %7145 = sext i32 %7144 to i64
  %7146 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7145
  %7147 = load i8, i8* %7146, align 1
  %7148 = zext i8 %7147 to i32
  %7149 = load i32, i32* %7, align 4
  %7150 = icmp eq i32 %7148, %7149
  br i1 %7150, label %7151, label %7348

7151:                                             ; preds = %7143
  %7152 = load i32, i32* %21, align 4
  %7153 = sext i32 %7152 to i64
  %7154 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7153
  %7155 = load i8, i8* %7154, align 1
  %7156 = zext i8 %7155 to i32
  %7157 = load i32, i32* %8, align 4
  %7158 = icmp eq i32 %7156, %7157
  br i1 %7158, label %7159, label %7348

7159:                                             ; preds = %7151
  %7160 = load i32, i32* %26, align 4
  %7161 = sext i32 %7160 to i64
  %7162 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7161
  %7163 = load i8, i8* %7162, align 1
  %7164 = zext i8 %7163 to i32
  %7165 = load i32, i32* %8, align 4
  %7166 = icmp eq i32 %7164, %7165
  br i1 %7166, label %7167, label %7348

7167:                                             ; preds = %7159
  %7168 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7169 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7168, i32 0, i32 0
  %7170 = load i32, i32* %22, align 4
  %7171 = sext i32 %7170 to i64
  %7172 = getelementptr inbounds [400 x i32], [400 x i32]* %7169, i64 0, i64 %7171
  %7173 = load i32, i32* %7172, align 4
  %7174 = load i32, i32* %11, align 4
  %7175 = add nsw i32 %7174, 2000
  %7176 = icmp sgt i32 %7173, %7175
  br i1 %7176, label %7177, label %7348

7177:                                             ; preds = %7167
  %7178 = load i32, i32* %21, align 4
  %7179 = call i32 @countlib(i32 %7178)
  %7180 = load i32, i32* %26, align 4
  %7181 = call i32 @countlib(i32 %7180)
  %7182 = add nsw i32 %7179, %7181
  %7183 = icmp sle i32 %7182, 5
  br i1 %7183, label %7184, label %7348

7184:                                             ; preds = %7177
  br label %7185

7185:                                             ; preds = %7184
  %7186 = load i32, i32* %11, align 4
  %7187 = add nsw i32 %7186, 2000
  %7188 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7189 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7188, i32 0, i32 0
  %7190 = load i32, i32* %22, align 4
  %7191 = sext i32 %7190 to i64
  %7192 = getelementptr inbounds [400 x i32], [400 x i32]* %7189, i64 0, i64 %7191
  %7193 = load i32, i32* %7192, align 4
  %7194 = icmp slt i32 %7187, %7193
  br i1 %7194, label %7195, label %7346

7195:                                             ; preds = %7185
  %7196 = load i32, i32* %22, align 4
  %7197 = sext i32 %7196 to i64
  %7198 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7197
  %7199 = load i8, i8* %7198, align 1
  %7200 = zext i8 %7199 to i32
  %7201 = icmp eq i32 %7200, 0
  br i1 %7201, label %7202, label %7249

7202:                                             ; preds = %7195
  %7203 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7204 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7203, i32 0, i32 0
  %7205 = load i32, i32* %22, align 4
  %7206 = sext i32 %7205 to i64
  %7207 = getelementptr inbounds [400 x i32], [400 x i32]* %7204, i64 0, i64 %7206
  %7208 = load i32, i32* %7207, align 4
  %7209 = icmp eq i32 %7208, 100000
  br i1 %7209, label %7210, label %7220

7210:                                             ; preds = %7202
  %7211 = load i32, i32* %22, align 4
  %7212 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7213 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7212, i32 0, i32 5
  %7214 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7215 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7214, i32 0, i32 7
  %7216 = load i32, i32* %7215, align 4
  %7217 = add nsw i32 %7216, 1
  store i32 %7217, i32* %7215, align 4
  %7218 = sext i32 %7216 to i64
  %7219 = getelementptr inbounds [400 x i32], [400 x i32]* %7213, i64 0, i64 %7218
  store i32 %7211, i32* %7219, align 4
  br label %7220

7220:                                             ; preds = %7210, %7202
  %7221 = load i32, i32* %11, align 4
  %7222 = add nsw i32 %7221, 2000
  %7223 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7224 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7223, i32 0, i32 0
  %7225 = load i32, i32* %22, align 4
  %7226 = sext i32 %7225 to i64
  %7227 = getelementptr inbounds [400 x i32], [400 x i32]* %7224, i64 0, i64 %7226
  store i32 %7222, i32* %7227, align 4
  %7228 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7229 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7228, i32 0, i32 1
  %7230 = load i32, i32* %22, align 4
  %7231 = sext i32 %7230 to i64
  %7232 = getelementptr inbounds [400 x i32], [400 x i32]* %7229, i64 0, i64 %7231
  store i32 1000, i32* %7232, align 4
  %7233 = load i32, i32* %9, align 4
  %7234 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7235 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7234, i32 0, i32 2
  %7236 = load i32, i32* %22, align 4
  %7237 = sext i32 %7236 to i64
  %7238 = getelementptr inbounds [400 x i32], [400 x i32]* %7235, i64 0, i64 %7237
  store i32 %7233, i32* %7238, align 4
  %7239 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7240 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7239, i32 0, i32 3
  %7241 = load i32, i32* %22, align 4
  %7242 = sext i32 %7241 to i64
  %7243 = getelementptr inbounds [400 x i32], [400 x i32]* %7240, i64 0, i64 %7242
  store i32 0, i32* %7243, align 4
  %7244 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7245 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7244, i32 0, i32 4
  %7246 = load i32, i32* %22, align 4
  %7247 = sext i32 %7246 to i64
  %7248 = getelementptr inbounds [400 x i32], [400 x i32]* %7245, i64 0, i64 %7247
  store i32 0, i32* %7248, align 4
  br label %7345

7249:                                             ; preds = %7195
  %7250 = load i32, i32* %22, align 4
  %7251 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %7252 = call i32 @findstones(i32 %7250, i32 361, i32* %7251)
  store i32 %7252, i32* %13, align 4
  store i32 0, i32* %68, align 4
  br label %7253

7253:                                             ; preds = %7341, %7249
  %7254 = load i32, i32* %68, align 4
  %7255 = load i32, i32* %13, align 4
  %7256 = icmp slt i32 %7254, %7255
  br i1 %7256, label %7257, label %7344

7257:                                             ; preds = %7253
  %7258 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7259 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7258, i32 0, i32 0
  %7260 = load i32, i32* %68, align 4
  %7261 = sext i32 %7260 to i64
  %7262 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7261
  %7263 = load i32, i32* %7262, align 4
  %7264 = sext i32 %7263 to i64
  %7265 = getelementptr inbounds [400 x i32], [400 x i32]* %7259, i64 0, i64 %7264
  %7266 = load i32, i32* %7265, align 4
  %7267 = icmp eq i32 %7266, 100000
  br i1 %7267, label %7268, label %7281

7268:                                             ; preds = %7257
  %7269 = load i32, i32* %68, align 4
  %7270 = sext i32 %7269 to i64
  %7271 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7270
  %7272 = load i32, i32* %7271, align 4
  %7273 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7274 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7273, i32 0, i32 5
  %7275 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7276 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7275, i32 0, i32 7
  %7277 = load i32, i32* %7276, align 4
  %7278 = add nsw i32 %7277, 1
  store i32 %7278, i32* %7276, align 4
  %7279 = sext i32 %7277 to i64
  %7280 = getelementptr inbounds [400 x i32], [400 x i32]* %7274, i64 0, i64 %7279
  store i32 %7272, i32* %7280, align 4
  br label %7281

7281:                                             ; preds = %7268, %7257
  %7282 = load i32, i32* %11, align 4
  %7283 = add nsw i32 %7282, 2000
  %7284 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7285 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7284, i32 0, i32 0
  %7286 = load i32, i32* %68, align 4
  %7287 = sext i32 %7286 to i64
  %7288 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7287
  %7289 = load i32, i32* %7288, align 4
  %7290 = sext i32 %7289 to i64
  %7291 = getelementptr inbounds [400 x i32], [400 x i32]* %7285, i64 0, i64 %7290
  store i32 %7283, i32* %7291, align 4
  %7292 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7293 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7292, i32 0, i32 1
  %7294 = load i32, i32* %68, align 4
  %7295 = sext i32 %7294 to i64
  %7296 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7295
  %7297 = load i32, i32* %7296, align 4
  %7298 = sext i32 %7297 to i64
  %7299 = getelementptr inbounds [400 x i32], [400 x i32]* %7293, i64 0, i64 %7298
  store i32 1000, i32* %7299, align 4
  %7300 = load i32, i32* %9, align 4
  %7301 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7302 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7301, i32 0, i32 2
  %7303 = load i32, i32* %68, align 4
  %7304 = sext i32 %7303 to i64
  %7305 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7304
  %7306 = load i32, i32* %7305, align 4
  %7307 = sext i32 %7306 to i64
  %7308 = getelementptr inbounds [400 x i32], [400 x i32]* %7302, i64 0, i64 %7307
  store i32 %7300, i32* %7308, align 4
  %7309 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7310 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7309, i32 0, i32 3
  %7311 = load i32, i32* %68, align 4
  %7312 = sext i32 %7311 to i64
  %7313 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7312
  %7314 = load i32, i32* %7313, align 4
  %7315 = sext i32 %7314 to i64
  %7316 = getelementptr inbounds [400 x i32], [400 x i32]* %7310, i64 0, i64 %7315
  store i32 0, i32* %7316, align 4
  %7317 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7318 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7317, i32 0, i32 4
  %7319 = load i32, i32* %68, align 4
  %7320 = sext i32 %7319 to i64
  %7321 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7320
  %7322 = load i32, i32* %7321, align 4
  %7323 = sext i32 %7322 to i64
  %7324 = getelementptr inbounds [400 x i32], [400 x i32]* %7318, i64 0, i64 %7323
  store i32 0, i32* %7324, align 4
  %7325 = load i32, i32* %68, align 4
  %7326 = sext i32 %7325 to i64
  %7327 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7326
  %7328 = load i32, i32* %7327, align 4
  %7329 = load i32, i32* %5, align 4
  %7330 = icmp eq i32 %7328, %7329
  br i1 %7330, label %7331, label %7340

7331:                                             ; preds = %7281
  %7332 = load i32, i32* %11, align 4
  %7333 = add nsw i32 %7332, 2000
  %7334 = load i32, i32* %14, align 4
  %7335 = icmp slt i32 %7333, %7334
  br i1 %7335, label %7336, label %7340

7336:                                             ; preds = %7331
  %7337 = load i32, i32* %11, align 4
  %7338 = add nsw i32 %7337, 2000
  %7339 = sub nsw i32 %7338, 1
  store i32 %7339, i32* %14, align 4
  br label %7340

7340:                                             ; preds = %7336, %7331, %7281
  br label %7341

7341:                                             ; preds = %7340
  %7342 = load i32, i32* %68, align 4
  %7343 = add nsw i32 %7342, 1
  store i32 %7343, i32* %68, align 4
  br label %7253, !llvm.loop !60

7344:                                             ; preds = %7253
  br label %7345

7345:                                             ; preds = %7344, %7220
  br label %7346

7346:                                             ; preds = %7345, %7185
  br label %7347

7347:                                             ; preds = %7346
  br label %7348

7348:                                             ; preds = %7347, %7177, %7167, %7159, %7151, %7143
  %7349 = load i32, i32* %21, align 4
  %7350 = sext i32 %7349 to i64
  %7351 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7350
  %7352 = load i8, i8* %7351, align 1
  %7353 = zext i8 %7352 to i32
  %7354 = load i32, i32* %8, align 4
  %7355 = icmp eq i32 %7353, %7354
  br i1 %7355, label %7356, label %7534

7356:                                             ; preds = %7348
  %7357 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7358 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7357, i32 0, i32 0
  %7359 = load i32, i32* %21, align 4
  %7360 = sext i32 %7359 to i64
  %7361 = getelementptr inbounds [400 x i32], [400 x i32]* %7358, i64 0, i64 %7360
  %7362 = load i32, i32* %7361, align 4
  %7363 = load i32, i32* %11, align 4
  %7364 = add nsw i32 %7363, 100
  %7365 = icmp sgt i32 %7362, %7364
  br i1 %7365, label %7366, label %7534

7366:                                             ; preds = %7356
  %7367 = load i32, i32* %21, align 4
  %7368 = call i32 @no_escape_from_atari(i32 %7367)
  %7369 = icmp ne i32 %7368, 0
  br i1 %7369, label %7370, label %7534

7370:                                             ; preds = %7366
  br label %7371

7371:                                             ; preds = %7370
  %7372 = load i32, i32* %11, align 4
  %7373 = add nsw i32 %7372, 100
  %7374 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7375 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7374, i32 0, i32 0
  %7376 = load i32, i32* %21, align 4
  %7377 = sext i32 %7376 to i64
  %7378 = getelementptr inbounds [400 x i32], [400 x i32]* %7375, i64 0, i64 %7377
  %7379 = load i32, i32* %7378, align 4
  %7380 = icmp slt i32 %7373, %7379
  br i1 %7380, label %7381, label %7532

7381:                                             ; preds = %7371
  %7382 = load i32, i32* %21, align 4
  %7383 = sext i32 %7382 to i64
  %7384 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7383
  %7385 = load i8, i8* %7384, align 1
  %7386 = zext i8 %7385 to i32
  %7387 = icmp eq i32 %7386, 0
  br i1 %7387, label %7388, label %7435

7388:                                             ; preds = %7381
  %7389 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7390 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7389, i32 0, i32 0
  %7391 = load i32, i32* %21, align 4
  %7392 = sext i32 %7391 to i64
  %7393 = getelementptr inbounds [400 x i32], [400 x i32]* %7390, i64 0, i64 %7392
  %7394 = load i32, i32* %7393, align 4
  %7395 = icmp eq i32 %7394, 100000
  br i1 %7395, label %7396, label %7406

7396:                                             ; preds = %7388
  %7397 = load i32, i32* %21, align 4
  %7398 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7399 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7398, i32 0, i32 5
  %7400 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7401 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7400, i32 0, i32 7
  %7402 = load i32, i32* %7401, align 4
  %7403 = add nsw i32 %7402, 1
  store i32 %7403, i32* %7401, align 4
  %7404 = sext i32 %7402 to i64
  %7405 = getelementptr inbounds [400 x i32], [400 x i32]* %7399, i64 0, i64 %7404
  store i32 %7397, i32* %7405, align 4
  br label %7406

7406:                                             ; preds = %7396, %7388
  %7407 = load i32, i32* %11, align 4
  %7408 = add nsw i32 %7407, 100
  %7409 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7410 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7409, i32 0, i32 0
  %7411 = load i32, i32* %21, align 4
  %7412 = sext i32 %7411 to i64
  %7413 = getelementptr inbounds [400 x i32], [400 x i32]* %7410, i64 0, i64 %7412
  store i32 %7408, i32* %7413, align 4
  %7414 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7415 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7414, i32 0, i32 1
  %7416 = load i32, i32* %21, align 4
  %7417 = sext i32 %7416 to i64
  %7418 = getelementptr inbounds [400 x i32], [400 x i32]* %7415, i64 0, i64 %7417
  store i32 100, i32* %7418, align 4
  %7419 = load i32, i32* %9, align 4
  %7420 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7421 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7420, i32 0, i32 2
  %7422 = load i32, i32* %21, align 4
  %7423 = sext i32 %7422 to i64
  %7424 = getelementptr inbounds [400 x i32], [400 x i32]* %7421, i64 0, i64 %7423
  store i32 %7419, i32* %7424, align 4
  %7425 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7426 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7425, i32 0, i32 3
  %7427 = load i32, i32* %21, align 4
  %7428 = sext i32 %7427 to i64
  %7429 = getelementptr inbounds [400 x i32], [400 x i32]* %7426, i64 0, i64 %7428
  store i32 0, i32* %7429, align 4
  %7430 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7431 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7430, i32 0, i32 4
  %7432 = load i32, i32* %21, align 4
  %7433 = sext i32 %7432 to i64
  %7434 = getelementptr inbounds [400 x i32], [400 x i32]* %7431, i64 0, i64 %7433
  store i32 0, i32* %7434, align 4
  br label %7531

7435:                                             ; preds = %7381
  %7436 = load i32, i32* %21, align 4
  %7437 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %7438 = call i32 @findstones(i32 %7436, i32 361, i32* %7437)
  store i32 %7438, i32* %13, align 4
  store i32 0, i32* %69, align 4
  br label %7439

7439:                                             ; preds = %7527, %7435
  %7440 = load i32, i32* %69, align 4
  %7441 = load i32, i32* %13, align 4
  %7442 = icmp slt i32 %7440, %7441
  br i1 %7442, label %7443, label %7530

7443:                                             ; preds = %7439
  %7444 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7445 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7444, i32 0, i32 0
  %7446 = load i32, i32* %69, align 4
  %7447 = sext i32 %7446 to i64
  %7448 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7447
  %7449 = load i32, i32* %7448, align 4
  %7450 = sext i32 %7449 to i64
  %7451 = getelementptr inbounds [400 x i32], [400 x i32]* %7445, i64 0, i64 %7450
  %7452 = load i32, i32* %7451, align 4
  %7453 = icmp eq i32 %7452, 100000
  br i1 %7453, label %7454, label %7467

7454:                                             ; preds = %7443
  %7455 = load i32, i32* %69, align 4
  %7456 = sext i32 %7455 to i64
  %7457 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7456
  %7458 = load i32, i32* %7457, align 4
  %7459 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7460 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7459, i32 0, i32 5
  %7461 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7462 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7461, i32 0, i32 7
  %7463 = load i32, i32* %7462, align 4
  %7464 = add nsw i32 %7463, 1
  store i32 %7464, i32* %7462, align 4
  %7465 = sext i32 %7463 to i64
  %7466 = getelementptr inbounds [400 x i32], [400 x i32]* %7460, i64 0, i64 %7465
  store i32 %7458, i32* %7466, align 4
  br label %7467

7467:                                             ; preds = %7454, %7443
  %7468 = load i32, i32* %11, align 4
  %7469 = add nsw i32 %7468, 100
  %7470 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7471 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7470, i32 0, i32 0
  %7472 = load i32, i32* %69, align 4
  %7473 = sext i32 %7472 to i64
  %7474 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7473
  %7475 = load i32, i32* %7474, align 4
  %7476 = sext i32 %7475 to i64
  %7477 = getelementptr inbounds [400 x i32], [400 x i32]* %7471, i64 0, i64 %7476
  store i32 %7469, i32* %7477, align 4
  %7478 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7479 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7478, i32 0, i32 1
  %7480 = load i32, i32* %69, align 4
  %7481 = sext i32 %7480 to i64
  %7482 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7481
  %7483 = load i32, i32* %7482, align 4
  %7484 = sext i32 %7483 to i64
  %7485 = getelementptr inbounds [400 x i32], [400 x i32]* %7479, i64 0, i64 %7484
  store i32 100, i32* %7485, align 4
  %7486 = load i32, i32* %9, align 4
  %7487 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7488 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7487, i32 0, i32 2
  %7489 = load i32, i32* %69, align 4
  %7490 = sext i32 %7489 to i64
  %7491 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7490
  %7492 = load i32, i32* %7491, align 4
  %7493 = sext i32 %7492 to i64
  %7494 = getelementptr inbounds [400 x i32], [400 x i32]* %7488, i64 0, i64 %7493
  store i32 %7486, i32* %7494, align 4
  %7495 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7496 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7495, i32 0, i32 3
  %7497 = load i32, i32* %69, align 4
  %7498 = sext i32 %7497 to i64
  %7499 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7498
  %7500 = load i32, i32* %7499, align 4
  %7501 = sext i32 %7500 to i64
  %7502 = getelementptr inbounds [400 x i32], [400 x i32]* %7496, i64 0, i64 %7501
  store i32 0, i32* %7502, align 4
  %7503 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7504 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7503, i32 0, i32 4
  %7505 = load i32, i32* %69, align 4
  %7506 = sext i32 %7505 to i64
  %7507 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7506
  %7508 = load i32, i32* %7507, align 4
  %7509 = sext i32 %7508 to i64
  %7510 = getelementptr inbounds [400 x i32], [400 x i32]* %7504, i64 0, i64 %7509
  store i32 0, i32* %7510, align 4
  %7511 = load i32, i32* %69, align 4
  %7512 = sext i32 %7511 to i64
  %7513 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7512
  %7514 = load i32, i32* %7513, align 4
  %7515 = load i32, i32* %5, align 4
  %7516 = icmp eq i32 %7514, %7515
  br i1 %7516, label %7517, label %7526

7517:                                             ; preds = %7467
  %7518 = load i32, i32* %11, align 4
  %7519 = add nsw i32 %7518, 100
  %7520 = load i32, i32* %14, align 4
  %7521 = icmp slt i32 %7519, %7520
  br i1 %7521, label %7522, label %7526

7522:                                             ; preds = %7517
  %7523 = load i32, i32* %11, align 4
  %7524 = add nsw i32 %7523, 100
  %7525 = sub nsw i32 %7524, 1
  store i32 %7525, i32* %14, align 4
  br label %7526

7526:                                             ; preds = %7522, %7517, %7467
  br label %7527

7527:                                             ; preds = %7526
  %7528 = load i32, i32* %69, align 4
  %7529 = add nsw i32 %7528, 1
  store i32 %7529, i32* %69, align 4
  br label %7439, !llvm.loop !61

7530:                                             ; preds = %7439
  br label %7531

7531:                                             ; preds = %7530, %7406
  br label %7532

7532:                                             ; preds = %7531, %7371
  br label %7533

7533:                                             ; preds = %7532
  br label %7534

7534:                                             ; preds = %7533, %7366, %7356, %7348
  %7535 = load i32, i32* %21, align 4
  %7536 = sext i32 %7535 to i64
  %7537 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7536
  %7538 = load i8, i8* %7537, align 1
  %7539 = zext i8 %7538 to i32
  %7540 = load i32, i32* %8, align 4
  %7541 = icmp eq i32 %7539, %7540
  br i1 %7541, label %7542, label %7720

7542:                                             ; preds = %7534
  %7543 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7544 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7543, i32 0, i32 0
  %7545 = load i32, i32* %21, align 4
  %7546 = sext i32 %7545 to i64
  %7547 = getelementptr inbounds [400 x i32], [400 x i32]* %7544, i64 0, i64 %7546
  %7548 = load i32, i32* %7547, align 4
  %7549 = load i32, i32* %11, align 4
  %7550 = add nsw i32 %7549, 300
  %7551 = icmp sgt i32 %7548, %7550
  br i1 %7551, label %7552, label %7720

7552:                                             ; preds = %7542
  %7553 = load i32, i32* %21, align 4
  %7554 = call i32 @no_escape_from_ladder(i32 %7553)
  %7555 = icmp ne i32 %7554, 0
  br i1 %7555, label %7556, label %7720

7556:                                             ; preds = %7552
  br label %7557

7557:                                             ; preds = %7556
  %7558 = load i32, i32* %11, align 4
  %7559 = add nsw i32 %7558, 300
  %7560 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7561 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7560, i32 0, i32 0
  %7562 = load i32, i32* %21, align 4
  %7563 = sext i32 %7562 to i64
  %7564 = getelementptr inbounds [400 x i32], [400 x i32]* %7561, i64 0, i64 %7563
  %7565 = load i32, i32* %7564, align 4
  %7566 = icmp slt i32 %7559, %7565
  br i1 %7566, label %7567, label %7718

7567:                                             ; preds = %7557
  %7568 = load i32, i32* %21, align 4
  %7569 = sext i32 %7568 to i64
  %7570 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7569
  %7571 = load i8, i8* %7570, align 1
  %7572 = zext i8 %7571 to i32
  %7573 = icmp eq i32 %7572, 0
  br i1 %7573, label %7574, label %7621

7574:                                             ; preds = %7567
  %7575 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7576 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7575, i32 0, i32 0
  %7577 = load i32, i32* %21, align 4
  %7578 = sext i32 %7577 to i64
  %7579 = getelementptr inbounds [400 x i32], [400 x i32]* %7576, i64 0, i64 %7578
  %7580 = load i32, i32* %7579, align 4
  %7581 = icmp eq i32 %7580, 100000
  br i1 %7581, label %7582, label %7592

7582:                                             ; preds = %7574
  %7583 = load i32, i32* %21, align 4
  %7584 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7585 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7584, i32 0, i32 5
  %7586 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7587 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7586, i32 0, i32 7
  %7588 = load i32, i32* %7587, align 4
  %7589 = add nsw i32 %7588, 1
  store i32 %7589, i32* %7587, align 4
  %7590 = sext i32 %7588 to i64
  %7591 = getelementptr inbounds [400 x i32], [400 x i32]* %7585, i64 0, i64 %7590
  store i32 %7583, i32* %7591, align 4
  br label %7592

7592:                                             ; preds = %7582, %7574
  %7593 = load i32, i32* %11, align 4
  %7594 = add nsw i32 %7593, 300
  %7595 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7596 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7595, i32 0, i32 0
  %7597 = load i32, i32* %21, align 4
  %7598 = sext i32 %7597 to i64
  %7599 = getelementptr inbounds [400 x i32], [400 x i32]* %7596, i64 0, i64 %7598
  store i32 %7594, i32* %7599, align 4
  %7600 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7601 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7600, i32 0, i32 1
  %7602 = load i32, i32* %21, align 4
  %7603 = sext i32 %7602 to i64
  %7604 = getelementptr inbounds [400 x i32], [400 x i32]* %7601, i64 0, i64 %7603
  store i32 300, i32* %7604, align 4
  %7605 = load i32, i32* %9, align 4
  %7606 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7607 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7606, i32 0, i32 2
  %7608 = load i32, i32* %21, align 4
  %7609 = sext i32 %7608 to i64
  %7610 = getelementptr inbounds [400 x i32], [400 x i32]* %7607, i64 0, i64 %7609
  store i32 %7605, i32* %7610, align 4
  %7611 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7612 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7611, i32 0, i32 3
  %7613 = load i32, i32* %21, align 4
  %7614 = sext i32 %7613 to i64
  %7615 = getelementptr inbounds [400 x i32], [400 x i32]* %7612, i64 0, i64 %7614
  store i32 0, i32* %7615, align 4
  %7616 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7617 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7616, i32 0, i32 4
  %7618 = load i32, i32* %21, align 4
  %7619 = sext i32 %7618 to i64
  %7620 = getelementptr inbounds [400 x i32], [400 x i32]* %7617, i64 0, i64 %7619
  store i32 0, i32* %7620, align 4
  br label %7717

7621:                                             ; preds = %7567
  %7622 = load i32, i32* %21, align 4
  %7623 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %7624 = call i32 @findstones(i32 %7622, i32 361, i32* %7623)
  store i32 %7624, i32* %13, align 4
  store i32 0, i32* %70, align 4
  br label %7625

7625:                                             ; preds = %7713, %7621
  %7626 = load i32, i32* %70, align 4
  %7627 = load i32, i32* %13, align 4
  %7628 = icmp slt i32 %7626, %7627
  br i1 %7628, label %7629, label %7716

7629:                                             ; preds = %7625
  %7630 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7631 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7630, i32 0, i32 0
  %7632 = load i32, i32* %70, align 4
  %7633 = sext i32 %7632 to i64
  %7634 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7633
  %7635 = load i32, i32* %7634, align 4
  %7636 = sext i32 %7635 to i64
  %7637 = getelementptr inbounds [400 x i32], [400 x i32]* %7631, i64 0, i64 %7636
  %7638 = load i32, i32* %7637, align 4
  %7639 = icmp eq i32 %7638, 100000
  br i1 %7639, label %7640, label %7653

7640:                                             ; preds = %7629
  %7641 = load i32, i32* %70, align 4
  %7642 = sext i32 %7641 to i64
  %7643 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7642
  %7644 = load i32, i32* %7643, align 4
  %7645 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7646 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7645, i32 0, i32 5
  %7647 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7648 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7647, i32 0, i32 7
  %7649 = load i32, i32* %7648, align 4
  %7650 = add nsw i32 %7649, 1
  store i32 %7650, i32* %7648, align 4
  %7651 = sext i32 %7649 to i64
  %7652 = getelementptr inbounds [400 x i32], [400 x i32]* %7646, i64 0, i64 %7651
  store i32 %7644, i32* %7652, align 4
  br label %7653

7653:                                             ; preds = %7640, %7629
  %7654 = load i32, i32* %11, align 4
  %7655 = add nsw i32 %7654, 300
  %7656 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7657 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7656, i32 0, i32 0
  %7658 = load i32, i32* %70, align 4
  %7659 = sext i32 %7658 to i64
  %7660 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7659
  %7661 = load i32, i32* %7660, align 4
  %7662 = sext i32 %7661 to i64
  %7663 = getelementptr inbounds [400 x i32], [400 x i32]* %7657, i64 0, i64 %7662
  store i32 %7655, i32* %7663, align 4
  %7664 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7665 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7664, i32 0, i32 1
  %7666 = load i32, i32* %70, align 4
  %7667 = sext i32 %7666 to i64
  %7668 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7667
  %7669 = load i32, i32* %7668, align 4
  %7670 = sext i32 %7669 to i64
  %7671 = getelementptr inbounds [400 x i32], [400 x i32]* %7665, i64 0, i64 %7670
  store i32 300, i32* %7671, align 4
  %7672 = load i32, i32* %9, align 4
  %7673 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7674 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7673, i32 0, i32 2
  %7675 = load i32, i32* %70, align 4
  %7676 = sext i32 %7675 to i64
  %7677 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7676
  %7678 = load i32, i32* %7677, align 4
  %7679 = sext i32 %7678 to i64
  %7680 = getelementptr inbounds [400 x i32], [400 x i32]* %7674, i64 0, i64 %7679
  store i32 %7672, i32* %7680, align 4
  %7681 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7682 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7681, i32 0, i32 3
  %7683 = load i32, i32* %70, align 4
  %7684 = sext i32 %7683 to i64
  %7685 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7684
  %7686 = load i32, i32* %7685, align 4
  %7687 = sext i32 %7686 to i64
  %7688 = getelementptr inbounds [400 x i32], [400 x i32]* %7682, i64 0, i64 %7687
  store i32 0, i32* %7688, align 4
  %7689 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7690 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7689, i32 0, i32 4
  %7691 = load i32, i32* %70, align 4
  %7692 = sext i32 %7691 to i64
  %7693 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7692
  %7694 = load i32, i32* %7693, align 4
  %7695 = sext i32 %7694 to i64
  %7696 = getelementptr inbounds [400 x i32], [400 x i32]* %7690, i64 0, i64 %7695
  store i32 0, i32* %7696, align 4
  %7697 = load i32, i32* %70, align 4
  %7698 = sext i32 %7697 to i64
  %7699 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7698
  %7700 = load i32, i32* %7699, align 4
  %7701 = load i32, i32* %5, align 4
  %7702 = icmp eq i32 %7700, %7701
  br i1 %7702, label %7703, label %7712

7703:                                             ; preds = %7653
  %7704 = load i32, i32* %11, align 4
  %7705 = add nsw i32 %7704, 300
  %7706 = load i32, i32* %14, align 4
  %7707 = icmp slt i32 %7705, %7706
  br i1 %7707, label %7708, label %7712

7708:                                             ; preds = %7703
  %7709 = load i32, i32* %11, align 4
  %7710 = add nsw i32 %7709, 300
  %7711 = sub nsw i32 %7710, 1
  store i32 %7711, i32* %14, align 4
  br label %7712

7712:                                             ; preds = %7708, %7703, %7653
  br label %7713

7713:                                             ; preds = %7712
  %7714 = load i32, i32* %70, align 4
  %7715 = add nsw i32 %7714, 1
  store i32 %7715, i32* %70, align 4
  br label %7625, !llvm.loop !62

7716:                                             ; preds = %7625
  br label %7717

7717:                                             ; preds = %7716, %7592
  br label %7718

7718:                                             ; preds = %7717, %7557
  br label %7719

7719:                                             ; preds = %7718
  br label %7720

7720:                                             ; preds = %7719, %7552, %7542, %7534
  br label %7721

7721:                                             ; preds = %7720
  %7722 = load i32, i32* %10, align 4
  %7723 = add nsw i32 %7722, 1
  store i32 %7723, i32* %10, align 4
  br label %434, !llvm.loop !63

7724:                                             ; preds = %434
  br label %8533

7725:                                             ; preds = %425
  %7726 = load i32, i32* %9, align 4
  %7727 = sext i32 %7726 to i64
  %7728 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7727
  %7729 = load i8, i8* %7728, align 1
  %7730 = zext i8 %7729 to i32
  %7731 = icmp eq i32 %7730, 0
  br i1 %7731, label %7748, label %7732

7732:                                             ; preds = %7725
  %7733 = load i32, i32* %9, align 4
  %7734 = sext i32 %7733 to i64
  %7735 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7734
  %7736 = load i8, i8* %7735, align 1
  %7737 = zext i8 %7736 to i32
  %7738 = load i32, i32* %8, align 4
  %7739 = icmp eq i32 %7737, %7738
  br i1 %7739, label %7740, label %8532

7740:                                             ; preds = %7732
  %7741 = load i32, i32* %9, align 4
  %7742 = call i32 @no_escape_from_ladder(i32 %7741)
  %7743 = icmp ne i32 %7742, 0
  br i1 %7743, label %7744, label %8532

7744:                                             ; preds = %7740
  %7745 = load i32, i32* %9, align 4
  %7746 = call i32 @countlib(i32 %7745)
  %7747 = icmp sle i32 %7746, 2
  br i1 %7747, label %7748, label %8532

7748:                                             ; preds = %7744, %7725
  store i32 0, i32* %10, align 4
  br label %7749

7749:                                             ; preds = %8528, %7748
  %7750 = load i32, i32* %10, align 4
  %7751 = icmp slt i32 %7750, 4
  br i1 %7751, label %7752, label %8531

7752:                                             ; preds = %7749
  %7753 = load i32, i32* %10, align 4
  %7754 = sext i32 %7753 to i64
  %7755 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %7754
  %7756 = load i32, i32* %7755, align 4
  store i32 %7756, i32* %71, align 4
  %7757 = load i32, i32* %10, align 4
  %7758 = add nsw i32 %7757, 1
  %7759 = srem i32 %7758, 4
  %7760 = sext i32 %7759 to i64
  %7761 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %7760
  %7762 = load i32, i32* %7761, align 4
  store i32 %7762, i32* %72, align 4
  %7763 = load i32, i32* %9, align 4
  %7764 = load i32, i32* %71, align 4
  %7765 = add nsw i32 %7763, %7764
  store i32 %7765, i32* %73, align 4
  %7766 = load i32, i32* %9, align 4
  %7767 = load i32, i32* %71, align 4
  %7768 = add nsw i32 %7766, %7767
  %7769 = load i32, i32* %72, align 4
  %7770 = add nsw i32 %7768, %7769
  store i32 %7770, i32* %74, align 4
  %7771 = load i32, i32* %9, align 4
  %7772 = load i32, i32* %72, align 4
  %7773 = add nsw i32 %7771, %7772
  store i32 %7773, i32* %75, align 4
  %7774 = load i32, i32* %73, align 4
  %7775 = sext i32 %7774 to i64
  %7776 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7775
  %7777 = load i8, i8* %7776, align 1
  %7778 = zext i8 %7777 to i32
  %7779 = load i32, i32* %7, align 4
  %7780 = icmp eq i32 %7778, %7779
  br i1 %7780, label %7781, label %7964

7781:                                             ; preds = %7752
  br label %7782

7782:                                             ; preds = %7781
  %7783 = load i32, i32* %11, align 4
  %7784 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7785 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7784, i32 0, i32 0
  %7786 = load i32, i32* %73, align 4
  %7787 = sext i32 %7786 to i64
  %7788 = getelementptr inbounds [400 x i32], [400 x i32]* %7785, i64 0, i64 %7787
  %7789 = load i32, i32* %7788, align 4
  %7790 = icmp slt i32 %7783, %7789
  br i1 %7790, label %7791, label %7962

7791:                                             ; preds = %7782
  %7792 = load i32, i32* %73, align 4
  %7793 = sext i32 %7792 to i64
  %7794 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7793
  %7795 = load i8, i8* %7794, align 1
  %7796 = zext i8 %7795 to i32
  %7797 = icmp eq i32 %7796, 0
  br i1 %7797, label %7798, label %7856

7798:                                             ; preds = %7791
  %7799 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7800 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7799, i32 0, i32 0
  %7801 = load i32, i32* %73, align 4
  %7802 = sext i32 %7801 to i64
  %7803 = getelementptr inbounds [400 x i32], [400 x i32]* %7800, i64 0, i64 %7802
  %7804 = load i32, i32* %7803, align 4
  %7805 = icmp eq i32 %7804, 100000
  br i1 %7805, label %7806, label %7816

7806:                                             ; preds = %7798
  %7807 = load i32, i32* %73, align 4
  %7808 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7809 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7808, i32 0, i32 5
  %7810 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7811 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7810, i32 0, i32 7
  %7812 = load i32, i32* %7811, align 4
  %7813 = add nsw i32 %7812, 1
  store i32 %7813, i32* %7811, align 4
  %7814 = sext i32 %7812 to i64
  %7815 = getelementptr inbounds [400 x i32], [400 x i32]* %7809, i64 0, i64 %7814
  store i32 %7807, i32* %7815, align 4
  br label %7816

7816:                                             ; preds = %7806, %7798
  %7817 = load i32, i32* %11, align 4
  %7818 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7819 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7818, i32 0, i32 0
  %7820 = load i32, i32* %73, align 4
  %7821 = sext i32 %7820 to i64
  %7822 = getelementptr inbounds [400 x i32], [400 x i32]* %7819, i64 0, i64 %7821
  store i32 %7817, i32* %7822, align 4
  %7823 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7824 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7823, i32 0, i32 1
  %7825 = load i32, i32* %73, align 4
  %7826 = sext i32 %7825 to i64
  %7827 = getelementptr inbounds [400 x i32], [400 x i32]* %7824, i64 0, i64 %7826
  store i32 0, i32* %7827, align 4
  %7828 = load i32, i32* %9, align 4
  %7829 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7830 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7829, i32 0, i32 2
  %7831 = load i32, i32* %73, align 4
  %7832 = sext i32 %7831 to i64
  %7833 = getelementptr inbounds [400 x i32], [400 x i32]* %7830, i64 0, i64 %7832
  store i32 %7828, i32* %7833, align 4
  %7834 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7835 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7834, i32 0, i32 3
  %7836 = load i32, i32* %9, align 4
  %7837 = sext i32 %7836 to i64
  %7838 = getelementptr inbounds [400 x i32], [400 x i32]* %7835, i64 0, i64 %7837
  %7839 = load i32, i32* %7838, align 4
  %7840 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7841 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7840, i32 0, i32 3
  %7842 = load i32, i32* %73, align 4
  %7843 = sext i32 %7842 to i64
  %7844 = getelementptr inbounds [400 x i32], [400 x i32]* %7841, i64 0, i64 %7843
  store i32 %7839, i32* %7844, align 4
  %7845 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7846 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7845, i32 0, i32 4
  %7847 = load i32, i32* %9, align 4
  %7848 = sext i32 %7847 to i64
  %7849 = getelementptr inbounds [400 x i32], [400 x i32]* %7846, i64 0, i64 %7848
  %7850 = load i32, i32* %7849, align 4
  %7851 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7852 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7851, i32 0, i32 4
  %7853 = load i32, i32* %73, align 4
  %7854 = sext i32 %7853 to i64
  %7855 = getelementptr inbounds [400 x i32], [400 x i32]* %7852, i64 0, i64 %7854
  store i32 %7850, i32* %7855, align 4
  br label %7961

7856:                                             ; preds = %7791
  %7857 = load i32, i32* %73, align 4
  %7858 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %7859 = call i32 @findstones(i32 %7857, i32 361, i32* %7858)
  store i32 %7859, i32* %13, align 4
  store i32 0, i32* %76, align 4
  br label %7860

7860:                                             ; preds = %7957, %7856
  %7861 = load i32, i32* %76, align 4
  %7862 = load i32, i32* %13, align 4
  %7863 = icmp slt i32 %7861, %7862
  br i1 %7863, label %7864, label %7960

7864:                                             ; preds = %7860
  %7865 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7866 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7865, i32 0, i32 0
  %7867 = load i32, i32* %76, align 4
  %7868 = sext i32 %7867 to i64
  %7869 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7868
  %7870 = load i32, i32* %7869, align 4
  %7871 = sext i32 %7870 to i64
  %7872 = getelementptr inbounds [400 x i32], [400 x i32]* %7866, i64 0, i64 %7871
  %7873 = load i32, i32* %7872, align 4
  %7874 = icmp eq i32 %7873, 100000
  br i1 %7874, label %7875, label %7888

7875:                                             ; preds = %7864
  %7876 = load i32, i32* %76, align 4
  %7877 = sext i32 %7876 to i64
  %7878 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7877
  %7879 = load i32, i32* %7878, align 4
  %7880 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7881 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7880, i32 0, i32 5
  %7882 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7883 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7882, i32 0, i32 7
  %7884 = load i32, i32* %7883, align 4
  %7885 = add nsw i32 %7884, 1
  store i32 %7885, i32* %7883, align 4
  %7886 = sext i32 %7884 to i64
  %7887 = getelementptr inbounds [400 x i32], [400 x i32]* %7881, i64 0, i64 %7886
  store i32 %7879, i32* %7887, align 4
  br label %7888

7888:                                             ; preds = %7875, %7864
  %7889 = load i32, i32* %11, align 4
  %7890 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7891 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7890, i32 0, i32 0
  %7892 = load i32, i32* %76, align 4
  %7893 = sext i32 %7892 to i64
  %7894 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7893
  %7895 = load i32, i32* %7894, align 4
  %7896 = sext i32 %7895 to i64
  %7897 = getelementptr inbounds [400 x i32], [400 x i32]* %7891, i64 0, i64 %7896
  store i32 %7889, i32* %7897, align 4
  %7898 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7899 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7898, i32 0, i32 1
  %7900 = load i32, i32* %76, align 4
  %7901 = sext i32 %7900 to i64
  %7902 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7901
  %7903 = load i32, i32* %7902, align 4
  %7904 = sext i32 %7903 to i64
  %7905 = getelementptr inbounds [400 x i32], [400 x i32]* %7899, i64 0, i64 %7904
  store i32 0, i32* %7905, align 4
  %7906 = load i32, i32* %9, align 4
  %7907 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7908 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7907, i32 0, i32 2
  %7909 = load i32, i32* %76, align 4
  %7910 = sext i32 %7909 to i64
  %7911 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7910
  %7912 = load i32, i32* %7911, align 4
  %7913 = sext i32 %7912 to i64
  %7914 = getelementptr inbounds [400 x i32], [400 x i32]* %7908, i64 0, i64 %7913
  store i32 %7906, i32* %7914, align 4
  %7915 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7916 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7915, i32 0, i32 3
  %7917 = load i32, i32* %9, align 4
  %7918 = sext i32 %7917 to i64
  %7919 = getelementptr inbounds [400 x i32], [400 x i32]* %7916, i64 0, i64 %7918
  %7920 = load i32, i32* %7919, align 4
  %7921 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7922 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7921, i32 0, i32 3
  %7923 = load i32, i32* %76, align 4
  %7924 = sext i32 %7923 to i64
  %7925 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7924
  %7926 = load i32, i32* %7925, align 4
  %7927 = sext i32 %7926 to i64
  %7928 = getelementptr inbounds [400 x i32], [400 x i32]* %7922, i64 0, i64 %7927
  store i32 %7920, i32* %7928, align 4
  %7929 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7930 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7929, i32 0, i32 4
  %7931 = load i32, i32* %9, align 4
  %7932 = sext i32 %7931 to i64
  %7933 = getelementptr inbounds [400 x i32], [400 x i32]* %7930, i64 0, i64 %7932
  %7934 = load i32, i32* %7933, align 4
  %7935 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7936 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7935, i32 0, i32 4
  %7937 = load i32, i32* %76, align 4
  %7938 = sext i32 %7937 to i64
  %7939 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7938
  %7940 = load i32, i32* %7939, align 4
  %7941 = sext i32 %7940 to i64
  %7942 = getelementptr inbounds [400 x i32], [400 x i32]* %7936, i64 0, i64 %7941
  store i32 %7934, i32* %7942, align 4
  %7943 = load i32, i32* %76, align 4
  %7944 = sext i32 %7943 to i64
  %7945 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %7944
  %7946 = load i32, i32* %7945, align 4
  %7947 = load i32, i32* %5, align 4
  %7948 = icmp eq i32 %7946, %7947
  br i1 %7948, label %7949, label %7956

7949:                                             ; preds = %7888
  %7950 = load i32, i32* %11, align 4
  %7951 = load i32, i32* %14, align 4
  %7952 = icmp slt i32 %7950, %7951
  br i1 %7952, label %7953, label %7956

7953:                                             ; preds = %7949
  %7954 = load i32, i32* %11, align 4
  %7955 = sub nsw i32 %7954, 1
  store i32 %7955, i32* %14, align 4
  br label %7956

7956:                                             ; preds = %7953, %7949, %7888
  br label %7957

7957:                                             ; preds = %7956
  %7958 = load i32, i32* %76, align 4
  %7959 = add nsw i32 %7958, 1
  store i32 %7959, i32* %76, align 4
  br label %7860, !llvm.loop !64

7960:                                             ; preds = %7860
  br label %7961

7961:                                             ; preds = %7960, %7816
  br label %7962

7962:                                             ; preds = %7961, %7782
  br label %7963

7963:                                             ; preds = %7962
  br label %8136

7964:                                             ; preds = %7752
  %7965 = load i32, i32* %73, align 4
  %7966 = sext i32 %7965 to i64
  %7967 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7966
  %7968 = load i8, i8* %7967, align 1
  %7969 = zext i8 %7968 to i32
  %7970 = icmp ne i32 %7969, 3
  br i1 %7970, label %7971, label %8135

7971:                                             ; preds = %7964
  br label %7972

7972:                                             ; preds = %7971
  %7973 = load i32, i32* %11, align 4
  %7974 = add nsw i32 %7973, 1000
  %7975 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7976 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7975, i32 0, i32 0
  %7977 = load i32, i32* %73, align 4
  %7978 = sext i32 %7977 to i64
  %7979 = getelementptr inbounds [400 x i32], [400 x i32]* %7976, i64 0, i64 %7978
  %7980 = load i32, i32* %7979, align 4
  %7981 = icmp slt i32 %7974, %7980
  br i1 %7981, label %7982, label %8133

7982:                                             ; preds = %7972
  %7983 = load i32, i32* %73, align 4
  %7984 = sext i32 %7983 to i64
  %7985 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7984
  %7986 = load i8, i8* %7985, align 1
  %7987 = zext i8 %7986 to i32
  %7988 = icmp eq i32 %7987, 0
  br i1 %7988, label %7989, label %8036

7989:                                             ; preds = %7982
  %7990 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %7991 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7990, i32 0, i32 0
  %7992 = load i32, i32* %73, align 4
  %7993 = sext i32 %7992 to i64
  %7994 = getelementptr inbounds [400 x i32], [400 x i32]* %7991, i64 0, i64 %7993
  %7995 = load i32, i32* %7994, align 4
  %7996 = icmp eq i32 %7995, 100000
  br i1 %7996, label %7997, label %8007

7997:                                             ; preds = %7989
  %7998 = load i32, i32* %73, align 4
  %7999 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8000 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %7999, i32 0, i32 5
  %8001 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8002 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8001, i32 0, i32 7
  %8003 = load i32, i32* %8002, align 4
  %8004 = add nsw i32 %8003, 1
  store i32 %8004, i32* %8002, align 4
  %8005 = sext i32 %8003 to i64
  %8006 = getelementptr inbounds [400 x i32], [400 x i32]* %8000, i64 0, i64 %8005
  store i32 %7998, i32* %8006, align 4
  br label %8007

8007:                                             ; preds = %7997, %7989
  %8008 = load i32, i32* %11, align 4
  %8009 = add nsw i32 %8008, 1000
  %8010 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8011 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8010, i32 0, i32 0
  %8012 = load i32, i32* %73, align 4
  %8013 = sext i32 %8012 to i64
  %8014 = getelementptr inbounds [400 x i32], [400 x i32]* %8011, i64 0, i64 %8013
  store i32 %8009, i32* %8014, align 4
  %8015 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8016 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8015, i32 0, i32 1
  %8017 = load i32, i32* %73, align 4
  %8018 = sext i32 %8017 to i64
  %8019 = getelementptr inbounds [400 x i32], [400 x i32]* %8016, i64 0, i64 %8018
  store i32 1000, i32* %8019, align 4
  %8020 = load i32, i32* %9, align 4
  %8021 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8022 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8021, i32 0, i32 2
  %8023 = load i32, i32* %73, align 4
  %8024 = sext i32 %8023 to i64
  %8025 = getelementptr inbounds [400 x i32], [400 x i32]* %8022, i64 0, i64 %8024
  store i32 %8020, i32* %8025, align 4
  %8026 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8027 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8026, i32 0, i32 3
  %8028 = load i32, i32* %73, align 4
  %8029 = sext i32 %8028 to i64
  %8030 = getelementptr inbounds [400 x i32], [400 x i32]* %8027, i64 0, i64 %8029
  store i32 0, i32* %8030, align 4
  %8031 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8032 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8031, i32 0, i32 4
  %8033 = load i32, i32* %73, align 4
  %8034 = sext i32 %8033 to i64
  %8035 = getelementptr inbounds [400 x i32], [400 x i32]* %8032, i64 0, i64 %8034
  store i32 0, i32* %8035, align 4
  br label %8132

8036:                                             ; preds = %7982
  %8037 = load i32, i32* %73, align 4
  %8038 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %8039 = call i32 @findstones(i32 %8037, i32 361, i32* %8038)
  store i32 %8039, i32* %13, align 4
  store i32 0, i32* %77, align 4
  br label %8040

8040:                                             ; preds = %8128, %8036
  %8041 = load i32, i32* %77, align 4
  %8042 = load i32, i32* %13, align 4
  %8043 = icmp slt i32 %8041, %8042
  br i1 %8043, label %8044, label %8131

8044:                                             ; preds = %8040
  %8045 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8046 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8045, i32 0, i32 0
  %8047 = load i32, i32* %77, align 4
  %8048 = sext i32 %8047 to i64
  %8049 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8048
  %8050 = load i32, i32* %8049, align 4
  %8051 = sext i32 %8050 to i64
  %8052 = getelementptr inbounds [400 x i32], [400 x i32]* %8046, i64 0, i64 %8051
  %8053 = load i32, i32* %8052, align 4
  %8054 = icmp eq i32 %8053, 100000
  br i1 %8054, label %8055, label %8068

8055:                                             ; preds = %8044
  %8056 = load i32, i32* %77, align 4
  %8057 = sext i32 %8056 to i64
  %8058 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8057
  %8059 = load i32, i32* %8058, align 4
  %8060 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8061 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8060, i32 0, i32 5
  %8062 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8063 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8062, i32 0, i32 7
  %8064 = load i32, i32* %8063, align 4
  %8065 = add nsw i32 %8064, 1
  store i32 %8065, i32* %8063, align 4
  %8066 = sext i32 %8064 to i64
  %8067 = getelementptr inbounds [400 x i32], [400 x i32]* %8061, i64 0, i64 %8066
  store i32 %8059, i32* %8067, align 4
  br label %8068

8068:                                             ; preds = %8055, %8044
  %8069 = load i32, i32* %11, align 4
  %8070 = add nsw i32 %8069, 1000
  %8071 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8072 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8071, i32 0, i32 0
  %8073 = load i32, i32* %77, align 4
  %8074 = sext i32 %8073 to i64
  %8075 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8074
  %8076 = load i32, i32* %8075, align 4
  %8077 = sext i32 %8076 to i64
  %8078 = getelementptr inbounds [400 x i32], [400 x i32]* %8072, i64 0, i64 %8077
  store i32 %8070, i32* %8078, align 4
  %8079 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8080 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8079, i32 0, i32 1
  %8081 = load i32, i32* %77, align 4
  %8082 = sext i32 %8081 to i64
  %8083 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8082
  %8084 = load i32, i32* %8083, align 4
  %8085 = sext i32 %8084 to i64
  %8086 = getelementptr inbounds [400 x i32], [400 x i32]* %8080, i64 0, i64 %8085
  store i32 1000, i32* %8086, align 4
  %8087 = load i32, i32* %9, align 4
  %8088 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8089 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8088, i32 0, i32 2
  %8090 = load i32, i32* %77, align 4
  %8091 = sext i32 %8090 to i64
  %8092 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8091
  %8093 = load i32, i32* %8092, align 4
  %8094 = sext i32 %8093 to i64
  %8095 = getelementptr inbounds [400 x i32], [400 x i32]* %8089, i64 0, i64 %8094
  store i32 %8087, i32* %8095, align 4
  %8096 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8097 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8096, i32 0, i32 3
  %8098 = load i32, i32* %77, align 4
  %8099 = sext i32 %8098 to i64
  %8100 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8099
  %8101 = load i32, i32* %8100, align 4
  %8102 = sext i32 %8101 to i64
  %8103 = getelementptr inbounds [400 x i32], [400 x i32]* %8097, i64 0, i64 %8102
  store i32 0, i32* %8103, align 4
  %8104 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8105 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8104, i32 0, i32 4
  %8106 = load i32, i32* %77, align 4
  %8107 = sext i32 %8106 to i64
  %8108 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8107
  %8109 = load i32, i32* %8108, align 4
  %8110 = sext i32 %8109 to i64
  %8111 = getelementptr inbounds [400 x i32], [400 x i32]* %8105, i64 0, i64 %8110
  store i32 0, i32* %8111, align 4
  %8112 = load i32, i32* %77, align 4
  %8113 = sext i32 %8112 to i64
  %8114 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8113
  %8115 = load i32, i32* %8114, align 4
  %8116 = load i32, i32* %5, align 4
  %8117 = icmp eq i32 %8115, %8116
  br i1 %8117, label %8118, label %8127

8118:                                             ; preds = %8068
  %8119 = load i32, i32* %11, align 4
  %8120 = add nsw i32 %8119, 1000
  %8121 = load i32, i32* %14, align 4
  %8122 = icmp slt i32 %8120, %8121
  br i1 %8122, label %8123, label %8127

8123:                                             ; preds = %8118
  %8124 = load i32, i32* %11, align 4
  %8125 = add nsw i32 %8124, 1000
  %8126 = sub nsw i32 %8125, 1
  store i32 %8126, i32* %14, align 4
  br label %8127

8127:                                             ; preds = %8123, %8118, %8068
  br label %8128

8128:                                             ; preds = %8127
  %8129 = load i32, i32* %77, align 4
  %8130 = add nsw i32 %8129, 1
  store i32 %8130, i32* %77, align 4
  br label %8040, !llvm.loop !65

8131:                                             ; preds = %8040
  br label %8132

8132:                                             ; preds = %8131, %8007
  br label %8133

8133:                                             ; preds = %8132, %7972
  br label %8134

8134:                                             ; preds = %8133
  br label %8135

8135:                                             ; preds = %8134, %7964
  br label %8136

8136:                                             ; preds = %8135, %7963
  %8137 = load i32, i32* %74, align 4
  %8138 = sext i32 %8137 to i64
  %8139 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8138
  %8140 = load i8, i8* %8139, align 1
  %8141 = zext i8 %8140 to i32
  %8142 = icmp eq i32 %8141, 0
  br i1 %8142, label %8143, label %8331

8143:                                             ; preds = %8136
  %8144 = load i32, i32* %73, align 4
  %8145 = sext i32 %8144 to i64
  %8146 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8145
  %8147 = load i8, i8* %8146, align 1
  %8148 = zext i8 %8147 to i32
  %8149 = icmp eq i32 %8148, 0
  br i1 %8149, label %8150, label %8331

8150:                                             ; preds = %8143
  %8151 = load i32, i32* %75, align 4
  %8152 = sext i32 %8151 to i64
  %8153 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8152
  %8154 = load i8, i8* %8153, align 1
  %8155 = zext i8 %8154 to i32
  %8156 = icmp eq i32 %8155, 0
  br i1 %8156, label %8157, label %8331

8157:                                             ; preds = %8150
  %8158 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8159 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8158, i32 0, i32 0
  %8160 = load i32, i32* %74, align 4
  %8161 = sext i32 %8160 to i64
  %8162 = getelementptr inbounds [400 x i32], [400 x i32]* %8159, i64 0, i64 %8161
  %8163 = load i32, i32* %8162, align 4
  %8164 = load i32, i32* %11, align 4
  %8165 = add nsw i32 %8164, 1500
  %8166 = icmp sgt i32 %8163, %8165
  br i1 %8166, label %8167, label %8331

8167:                                             ; preds = %8157
  br label %8168

8168:                                             ; preds = %8167
  %8169 = load i32, i32* %11, align 4
  %8170 = add nsw i32 %8169, 1500
  %8171 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8172 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8171, i32 0, i32 0
  %8173 = load i32, i32* %74, align 4
  %8174 = sext i32 %8173 to i64
  %8175 = getelementptr inbounds [400 x i32], [400 x i32]* %8172, i64 0, i64 %8174
  %8176 = load i32, i32* %8175, align 4
  %8177 = icmp slt i32 %8170, %8176
  br i1 %8177, label %8178, label %8329

8178:                                             ; preds = %8168
  %8179 = load i32, i32* %74, align 4
  %8180 = sext i32 %8179 to i64
  %8181 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8180
  %8182 = load i8, i8* %8181, align 1
  %8183 = zext i8 %8182 to i32
  %8184 = icmp eq i32 %8183, 0
  br i1 %8184, label %8185, label %8232

8185:                                             ; preds = %8178
  %8186 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8187 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8186, i32 0, i32 0
  %8188 = load i32, i32* %74, align 4
  %8189 = sext i32 %8188 to i64
  %8190 = getelementptr inbounds [400 x i32], [400 x i32]* %8187, i64 0, i64 %8189
  %8191 = load i32, i32* %8190, align 4
  %8192 = icmp eq i32 %8191, 100000
  br i1 %8192, label %8193, label %8203

8193:                                             ; preds = %8185
  %8194 = load i32, i32* %74, align 4
  %8195 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8196 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8195, i32 0, i32 5
  %8197 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8198 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8197, i32 0, i32 7
  %8199 = load i32, i32* %8198, align 4
  %8200 = add nsw i32 %8199, 1
  store i32 %8200, i32* %8198, align 4
  %8201 = sext i32 %8199 to i64
  %8202 = getelementptr inbounds [400 x i32], [400 x i32]* %8196, i64 0, i64 %8201
  store i32 %8194, i32* %8202, align 4
  br label %8203

8203:                                             ; preds = %8193, %8185
  %8204 = load i32, i32* %11, align 4
  %8205 = add nsw i32 %8204, 1500
  %8206 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8207 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8206, i32 0, i32 0
  %8208 = load i32, i32* %74, align 4
  %8209 = sext i32 %8208 to i64
  %8210 = getelementptr inbounds [400 x i32], [400 x i32]* %8207, i64 0, i64 %8209
  store i32 %8205, i32* %8210, align 4
  %8211 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8212 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8211, i32 0, i32 1
  %8213 = load i32, i32* %74, align 4
  %8214 = sext i32 %8213 to i64
  %8215 = getelementptr inbounds [400 x i32], [400 x i32]* %8212, i64 0, i64 %8214
  store i32 1000, i32* %8215, align 4
  %8216 = load i32, i32* %9, align 4
  %8217 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8218 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8217, i32 0, i32 2
  %8219 = load i32, i32* %74, align 4
  %8220 = sext i32 %8219 to i64
  %8221 = getelementptr inbounds [400 x i32], [400 x i32]* %8218, i64 0, i64 %8220
  store i32 %8216, i32* %8221, align 4
  %8222 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8223 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8222, i32 0, i32 3
  %8224 = load i32, i32* %74, align 4
  %8225 = sext i32 %8224 to i64
  %8226 = getelementptr inbounds [400 x i32], [400 x i32]* %8223, i64 0, i64 %8225
  store i32 0, i32* %8226, align 4
  %8227 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8228 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8227, i32 0, i32 4
  %8229 = load i32, i32* %74, align 4
  %8230 = sext i32 %8229 to i64
  %8231 = getelementptr inbounds [400 x i32], [400 x i32]* %8228, i64 0, i64 %8230
  store i32 0, i32* %8231, align 4
  br label %8328

8232:                                             ; preds = %8178
  %8233 = load i32, i32* %74, align 4
  %8234 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %8235 = call i32 @findstones(i32 %8233, i32 361, i32* %8234)
  store i32 %8235, i32* %13, align 4
  store i32 0, i32* %78, align 4
  br label %8236

8236:                                             ; preds = %8324, %8232
  %8237 = load i32, i32* %78, align 4
  %8238 = load i32, i32* %13, align 4
  %8239 = icmp slt i32 %8237, %8238
  br i1 %8239, label %8240, label %8327

8240:                                             ; preds = %8236
  %8241 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8242 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8241, i32 0, i32 0
  %8243 = load i32, i32* %78, align 4
  %8244 = sext i32 %8243 to i64
  %8245 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8244
  %8246 = load i32, i32* %8245, align 4
  %8247 = sext i32 %8246 to i64
  %8248 = getelementptr inbounds [400 x i32], [400 x i32]* %8242, i64 0, i64 %8247
  %8249 = load i32, i32* %8248, align 4
  %8250 = icmp eq i32 %8249, 100000
  br i1 %8250, label %8251, label %8264

8251:                                             ; preds = %8240
  %8252 = load i32, i32* %78, align 4
  %8253 = sext i32 %8252 to i64
  %8254 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8253
  %8255 = load i32, i32* %8254, align 4
  %8256 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8257 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8256, i32 0, i32 5
  %8258 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8259 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8258, i32 0, i32 7
  %8260 = load i32, i32* %8259, align 4
  %8261 = add nsw i32 %8260, 1
  store i32 %8261, i32* %8259, align 4
  %8262 = sext i32 %8260 to i64
  %8263 = getelementptr inbounds [400 x i32], [400 x i32]* %8257, i64 0, i64 %8262
  store i32 %8255, i32* %8263, align 4
  br label %8264

8264:                                             ; preds = %8251, %8240
  %8265 = load i32, i32* %11, align 4
  %8266 = add nsw i32 %8265, 1500
  %8267 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8268 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8267, i32 0, i32 0
  %8269 = load i32, i32* %78, align 4
  %8270 = sext i32 %8269 to i64
  %8271 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8270
  %8272 = load i32, i32* %8271, align 4
  %8273 = sext i32 %8272 to i64
  %8274 = getelementptr inbounds [400 x i32], [400 x i32]* %8268, i64 0, i64 %8273
  store i32 %8266, i32* %8274, align 4
  %8275 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8276 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8275, i32 0, i32 1
  %8277 = load i32, i32* %78, align 4
  %8278 = sext i32 %8277 to i64
  %8279 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8278
  %8280 = load i32, i32* %8279, align 4
  %8281 = sext i32 %8280 to i64
  %8282 = getelementptr inbounds [400 x i32], [400 x i32]* %8276, i64 0, i64 %8281
  store i32 1000, i32* %8282, align 4
  %8283 = load i32, i32* %9, align 4
  %8284 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8285 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8284, i32 0, i32 2
  %8286 = load i32, i32* %78, align 4
  %8287 = sext i32 %8286 to i64
  %8288 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8287
  %8289 = load i32, i32* %8288, align 4
  %8290 = sext i32 %8289 to i64
  %8291 = getelementptr inbounds [400 x i32], [400 x i32]* %8285, i64 0, i64 %8290
  store i32 %8283, i32* %8291, align 4
  %8292 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8293 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8292, i32 0, i32 3
  %8294 = load i32, i32* %78, align 4
  %8295 = sext i32 %8294 to i64
  %8296 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8295
  %8297 = load i32, i32* %8296, align 4
  %8298 = sext i32 %8297 to i64
  %8299 = getelementptr inbounds [400 x i32], [400 x i32]* %8293, i64 0, i64 %8298
  store i32 0, i32* %8299, align 4
  %8300 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8301 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8300, i32 0, i32 4
  %8302 = load i32, i32* %78, align 4
  %8303 = sext i32 %8302 to i64
  %8304 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8303
  %8305 = load i32, i32* %8304, align 4
  %8306 = sext i32 %8305 to i64
  %8307 = getelementptr inbounds [400 x i32], [400 x i32]* %8301, i64 0, i64 %8306
  store i32 0, i32* %8307, align 4
  %8308 = load i32, i32* %78, align 4
  %8309 = sext i32 %8308 to i64
  %8310 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8309
  %8311 = load i32, i32* %8310, align 4
  %8312 = load i32, i32* %5, align 4
  %8313 = icmp eq i32 %8311, %8312
  br i1 %8313, label %8314, label %8323

8314:                                             ; preds = %8264
  %8315 = load i32, i32* %11, align 4
  %8316 = add nsw i32 %8315, 1500
  %8317 = load i32, i32* %14, align 4
  %8318 = icmp slt i32 %8316, %8317
  br i1 %8318, label %8319, label %8323

8319:                                             ; preds = %8314
  %8320 = load i32, i32* %11, align 4
  %8321 = add nsw i32 %8320, 1500
  %8322 = sub nsw i32 %8321, 1
  store i32 %8322, i32* %14, align 4
  br label %8323

8323:                                             ; preds = %8319, %8314, %8264
  br label %8324

8324:                                             ; preds = %8323
  %8325 = load i32, i32* %78, align 4
  %8326 = add nsw i32 %8325, 1
  store i32 %8326, i32* %78, align 4
  br label %8236, !llvm.loop !66

8327:                                             ; preds = %8236
  br label %8328

8328:                                             ; preds = %8327, %8203
  br label %8329

8329:                                             ; preds = %8328, %8168
  br label %8330

8330:                                             ; preds = %8329
  br label %8331

8331:                                             ; preds = %8330, %8157, %8150, %8143, %8136
  %8332 = load i32, i32* %74, align 4
  %8333 = sext i32 %8332 to i64
  %8334 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8333
  %8335 = load i8, i8* %8334, align 1
  %8336 = zext i8 %8335 to i32
  %8337 = load i32, i32* %7, align 4
  %8338 = icmp eq i32 %8336, %8337
  br i1 %8338, label %8339, label %8527

8339:                                             ; preds = %8331
  %8340 = load i32, i32* %73, align 4
  %8341 = sext i32 %8340 to i64
  %8342 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8341
  %8343 = load i8, i8* %8342, align 1
  %8344 = zext i8 %8343 to i32
  %8345 = icmp eq i32 %8344, 0
  br i1 %8345, label %8346, label %8527

8346:                                             ; preds = %8339
  %8347 = load i32, i32* %75, align 4
  %8348 = sext i32 %8347 to i64
  %8349 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8348
  %8350 = load i8, i8* %8349, align 1
  %8351 = zext i8 %8350 to i32
  %8352 = icmp eq i32 %8351, 0
  br i1 %8352, label %8353, label %8527

8353:                                             ; preds = %8346
  %8354 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8355 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8354, i32 0, i32 0
  %8356 = load i32, i32* %74, align 4
  %8357 = sext i32 %8356 to i64
  %8358 = getelementptr inbounds [400 x i32], [400 x i32]* %8355, i64 0, i64 %8357
  %8359 = load i32, i32* %8358, align 4
  %8360 = load i32, i32* %11, align 4
  %8361 = add nsw i32 %8360, 1300
  %8362 = icmp sgt i32 %8359, %8361
  br i1 %8362, label %8363, label %8527

8363:                                             ; preds = %8353
  br label %8364

8364:                                             ; preds = %8363
  %8365 = load i32, i32* %11, align 4
  %8366 = add nsw i32 %8365, 1300
  %8367 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8368 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8367, i32 0, i32 0
  %8369 = load i32, i32* %74, align 4
  %8370 = sext i32 %8369 to i64
  %8371 = getelementptr inbounds [400 x i32], [400 x i32]* %8368, i64 0, i64 %8370
  %8372 = load i32, i32* %8371, align 4
  %8373 = icmp slt i32 %8366, %8372
  br i1 %8373, label %8374, label %8525

8374:                                             ; preds = %8364
  %8375 = load i32, i32* %74, align 4
  %8376 = sext i32 %8375 to i64
  %8377 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %8376
  %8378 = load i8, i8* %8377, align 1
  %8379 = zext i8 %8378 to i32
  %8380 = icmp eq i32 %8379, 0
  br i1 %8380, label %8381, label %8428

8381:                                             ; preds = %8374
  %8382 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8383 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8382, i32 0, i32 0
  %8384 = load i32, i32* %74, align 4
  %8385 = sext i32 %8384 to i64
  %8386 = getelementptr inbounds [400 x i32], [400 x i32]* %8383, i64 0, i64 %8385
  %8387 = load i32, i32* %8386, align 4
  %8388 = icmp eq i32 %8387, 100000
  br i1 %8388, label %8389, label %8399

8389:                                             ; preds = %8381
  %8390 = load i32, i32* %74, align 4
  %8391 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8392 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8391, i32 0, i32 5
  %8393 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8394 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8393, i32 0, i32 7
  %8395 = load i32, i32* %8394, align 4
  %8396 = add nsw i32 %8395, 1
  store i32 %8396, i32* %8394, align 4
  %8397 = sext i32 %8395 to i64
  %8398 = getelementptr inbounds [400 x i32], [400 x i32]* %8392, i64 0, i64 %8397
  store i32 %8390, i32* %8398, align 4
  br label %8399

8399:                                             ; preds = %8389, %8381
  %8400 = load i32, i32* %11, align 4
  %8401 = add nsw i32 %8400, 1300
  %8402 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8403 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8402, i32 0, i32 0
  %8404 = load i32, i32* %74, align 4
  %8405 = sext i32 %8404 to i64
  %8406 = getelementptr inbounds [400 x i32], [400 x i32]* %8403, i64 0, i64 %8405
  store i32 %8401, i32* %8406, align 4
  %8407 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8408 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8407, i32 0, i32 1
  %8409 = load i32, i32* %74, align 4
  %8410 = sext i32 %8409 to i64
  %8411 = getelementptr inbounds [400 x i32], [400 x i32]* %8408, i64 0, i64 %8410
  store i32 1000, i32* %8411, align 4
  %8412 = load i32, i32* %9, align 4
  %8413 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8414 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8413, i32 0, i32 2
  %8415 = load i32, i32* %74, align 4
  %8416 = sext i32 %8415 to i64
  %8417 = getelementptr inbounds [400 x i32], [400 x i32]* %8414, i64 0, i64 %8416
  store i32 %8412, i32* %8417, align 4
  %8418 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8419 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8418, i32 0, i32 3
  %8420 = load i32, i32* %74, align 4
  %8421 = sext i32 %8420 to i64
  %8422 = getelementptr inbounds [400 x i32], [400 x i32]* %8419, i64 0, i64 %8421
  store i32 0, i32* %8422, align 4
  %8423 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8424 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8423, i32 0, i32 4
  %8425 = load i32, i32* %74, align 4
  %8426 = sext i32 %8425 to i64
  %8427 = getelementptr inbounds [400 x i32], [400 x i32]* %8424, i64 0, i64 %8426
  store i32 0, i32* %8427, align 4
  br label %8524

8428:                                             ; preds = %8374
  %8429 = load i32, i32* %74, align 4
  %8430 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 0
  %8431 = call i32 @findstones(i32 %8429, i32 361, i32* %8430)
  store i32 %8431, i32* %13, align 4
  store i32 0, i32* %79, align 4
  br label %8432

8432:                                             ; preds = %8520, %8428
  %8433 = load i32, i32* %79, align 4
  %8434 = load i32, i32* %13, align 4
  %8435 = icmp slt i32 %8433, %8434
  br i1 %8435, label %8436, label %8523

8436:                                             ; preds = %8432
  %8437 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8438 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8437, i32 0, i32 0
  %8439 = load i32, i32* %79, align 4
  %8440 = sext i32 %8439 to i64
  %8441 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8440
  %8442 = load i32, i32* %8441, align 4
  %8443 = sext i32 %8442 to i64
  %8444 = getelementptr inbounds [400 x i32], [400 x i32]* %8438, i64 0, i64 %8443
  %8445 = load i32, i32* %8444, align 4
  %8446 = icmp eq i32 %8445, 100000
  br i1 %8446, label %8447, label %8460

8447:                                             ; preds = %8436
  %8448 = load i32, i32* %79, align 4
  %8449 = sext i32 %8448 to i64
  %8450 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8449
  %8451 = load i32, i32* %8450, align 4
  %8452 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8453 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8452, i32 0, i32 5
  %8454 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8455 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8454, i32 0, i32 7
  %8456 = load i32, i32* %8455, align 4
  %8457 = add nsw i32 %8456, 1
  store i32 %8457, i32* %8455, align 4
  %8458 = sext i32 %8456 to i64
  %8459 = getelementptr inbounds [400 x i32], [400 x i32]* %8453, i64 0, i64 %8458
  store i32 %8451, i32* %8459, align 4
  br label %8460

8460:                                             ; preds = %8447, %8436
  %8461 = load i32, i32* %11, align 4
  %8462 = add nsw i32 %8461, 1300
  %8463 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8464 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8463, i32 0, i32 0
  %8465 = load i32, i32* %79, align 4
  %8466 = sext i32 %8465 to i64
  %8467 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8466
  %8468 = load i32, i32* %8467, align 4
  %8469 = sext i32 %8468 to i64
  %8470 = getelementptr inbounds [400 x i32], [400 x i32]* %8464, i64 0, i64 %8469
  store i32 %8462, i32* %8470, align 4
  %8471 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8472 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8471, i32 0, i32 1
  %8473 = load i32, i32* %79, align 4
  %8474 = sext i32 %8473 to i64
  %8475 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8474
  %8476 = load i32, i32* %8475, align 4
  %8477 = sext i32 %8476 to i64
  %8478 = getelementptr inbounds [400 x i32], [400 x i32]* %8472, i64 0, i64 %8477
  store i32 1000, i32* %8478, align 4
  %8479 = load i32, i32* %9, align 4
  %8480 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8481 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8480, i32 0, i32 2
  %8482 = load i32, i32* %79, align 4
  %8483 = sext i32 %8482 to i64
  %8484 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8483
  %8485 = load i32, i32* %8484, align 4
  %8486 = sext i32 %8485 to i64
  %8487 = getelementptr inbounds [400 x i32], [400 x i32]* %8481, i64 0, i64 %8486
  store i32 %8479, i32* %8487, align 4
  %8488 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8489 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8488, i32 0, i32 3
  %8490 = load i32, i32* %79, align 4
  %8491 = sext i32 %8490 to i64
  %8492 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8491
  %8493 = load i32, i32* %8492, align 4
  %8494 = sext i32 %8493 to i64
  %8495 = getelementptr inbounds [400 x i32], [400 x i32]* %8489, i64 0, i64 %8494
  store i32 0, i32* %8495, align 4
  %8496 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8497 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8496, i32 0, i32 4
  %8498 = load i32, i32* %79, align 4
  %8499 = sext i32 %8498 to i64
  %8500 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8499
  %8501 = load i32, i32* %8500, align 4
  %8502 = sext i32 %8501 to i64
  %8503 = getelementptr inbounds [400 x i32], [400 x i32]* %8497, i64 0, i64 %8502
  store i32 0, i32* %8503, align 4
  %8504 = load i32, i32* %79, align 4
  %8505 = sext i32 %8504 to i64
  %8506 = getelementptr inbounds [361 x i32], [361 x i32]* %12, i64 0, i64 %8505
  %8507 = load i32, i32* %8506, align 4
  %8508 = load i32, i32* %5, align 4
  %8509 = icmp eq i32 %8507, %8508
  br i1 %8509, label %8510, label %8519

8510:                                             ; preds = %8460
  %8511 = load i32, i32* %11, align 4
  %8512 = add nsw i32 %8511, 1300
  %8513 = load i32, i32* %14, align 4
  %8514 = icmp slt i32 %8512, %8513
  br i1 %8514, label %8515, label %8519

8515:                                             ; preds = %8510
  %8516 = load i32, i32* %11, align 4
  %8517 = add nsw i32 %8516, 1300
  %8518 = sub nsw i32 %8517, 1
  store i32 %8518, i32* %14, align 4
  br label %8519

8519:                                             ; preds = %8515, %8510, %8460
  br label %8520

8520:                                             ; preds = %8519
  %8521 = load i32, i32* %79, align 4
  %8522 = add nsw i32 %8521, 1
  store i32 %8522, i32* %79, align 4
  br label %8432, !llvm.loop !67

8523:                                             ; preds = %8432
  br label %8524

8524:                                             ; preds = %8523, %8399
  br label %8525

8525:                                             ; preds = %8524, %8364
  br label %8526

8526:                                             ; preds = %8525
  br label %8527

8527:                                             ; preds = %8526, %8353, %8346, %8339, %8331
  br label %8528

8528:                                             ; preds = %8527
  %8529 = load i32, i32* %10, align 4
  %8530 = add nsw i32 %8529, 1
  store i32 %8530, i32* %10, align 4
  br label %7749, !llvm.loop !68

8531:                                             ; preds = %7749
  br label %8532

8532:                                             ; preds = %8531, %7744, %7740, %7732
  br label %8533

8533:                                             ; preds = %8532, %7724
  br label %8534

8534:                                             ; preds = %8533
  %8535 = load %struct.connection_data*, %struct.connection_data** %6, align 8
  %8536 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %8535, i32 0, i32 6
  %8537 = load i32, i32* %8536, align 4
  %8538 = add nsw i32 %8537, 1
  store i32 %8538, i32* %8536, align 4
  br label %316, !llvm.loop !69

8539:                                             ; preds = %424, %316
  ret void
}

declare dso_local i32 @findlib(i32, i32, i32*) #1

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local void @dump_stack() #1

declare dso_local void @showboard(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_connection_distances(%struct.connection_data* %0) #0 {
  %2 = alloca %struct.connection_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.connection_data* %0, %struct.connection_data** %2, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i32 65, i32* %5, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @board_size, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 73
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %9, !llvm.loop !70

28:                                               ; preds = %9
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %105, %28
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @board_size, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %108

35:                                               ; preds = %31
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i32, i32* @board_size, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0), i32 %39)
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %99, %35
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @board_size, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %102

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = mul nsw i32 %46, 20
  %48 = add nsw i32 21, %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %6, align 4
  %51 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %52 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %51, i32 0, i32 0
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [400 x i32], [400 x i32]* %52, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 100000
  br i1 %57, label %58, label %89

58:                                               ; preds = %45
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %58
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %77 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %68
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %78
  br label %98

89:                                               ; preds = %45
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %91 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %92 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %91, i32 0, i32 0
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x i32], [400 x i32]* %92, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.44, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %89, %88
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %41, !llvm.loop !71

102:                                              ; preds = %41
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %104 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %3, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %3, align 4
  br label %31, !llvm.loop !72

108:                                              ; preds = %31
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0))
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %111, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.45, i64 0, i64 0))
  store i32 21, i32* %6, align 4
  br label %113

113:                                              ; preds = %178, %108
  %114 = load i32, i32* %6, align 4
  %115 = icmp slt i32 %114, 400
  br i1 %115, label %116, label %181

116:                                              ; preds = %113
  %117 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %118 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %117, i32 0, i32 0
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [400 x i32], [400 x i32]* %118, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 100000
  br i1 %123, label %124, label %177

124:                                              ; preds = %116
  %125 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %126 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %125, i32 0, i32 3
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [400 x i32], [400 x i32]* %126, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %124
  %133 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %134 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %133, i32 0, i32 4
  %135 = load i32, i32* %6, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [400 x i32], [400 x i32]* %134, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %177

140:                                              ; preds = %132, %124
  %141 = load i32, i32* %6, align 4
  %142 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i64 0, i64 0), i32 %141)
  %143 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %144 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %143, i32 0, i32 3
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [400 x i32], [400 x i32]* %144, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %140
  %151 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %152 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %151, i32 0, i32 3
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [400 x i32], [400 x i32]* %152, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %150, %140
  %159 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %160 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %159, i32 0, i32 4
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [400 x i32], [400 x i32]* %160, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load %struct.connection_data*, %struct.connection_data** %2, align 8
  %168 = getelementptr inbounds %struct.connection_data, %struct.connection_data* %167, i32 0, i32 4
  %169 = load i32, i32* %6, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [400 x i32], [400 x i32]* %168, i64 0, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 %172)
  br label %174

174:                                              ; preds = %166, %158
  %175 = load i32, i32* %6, align 4
  %176 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), i32 %175)
  br label %177

177:                                              ; preds = %174, %132, %116
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %6, align 4
  br label %113, !llvm.loop !73

181:                                              ; preds = %113
  ret void
}

declare dso_local i32 @find_origin(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_self_atari(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @is_self_atari(i32 %6, i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @is_ko(i32 %12, i32 %13, i32* null)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %16, %10
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i32 @attack_and_defend(i32, i32*, i32*, i32*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_vulnerability(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %62

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %62

20:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %58, %20
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 4
  br i1 %23, label %24, label %61

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %25, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %38, %42
  %44 = call i32 @countlib(i32 %43)
  %45 = icmp sle i32 %44, 3
  br i1 %45, label %46, label %57

46:                                               ; preds = %37
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %48, %52
  %54 = call i32 @liberty_of_string(i32 %47, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %46
  store i32 1, i32* %4, align 4
  br label %62

57:                                               ; preds = %46, %37, %24
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %21, !llvm.loop !74

61:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %61, %56, %19, %14
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @is_edge_vertex(i32) #1

declare dso_local i32 @liberty_of_string(i32, i32) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

declare dso_local void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #1

declare dso_local i32 @findstones(i32, i32, i32*) #1

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @is_suicide(i32, i32) #1

declare dso_local i32 @is_self_atari(i32, i32) #1

declare dso_local i32 @approxlib(i32, i32, i32, i32*) #1

declare dso_local i32 @trymove(i32, i32, i8*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ladder_capture(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SGFTree_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %9, %struct.SGFTree_t** %6, align 8
  %10 = load i32, i32* @count_variations, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @countlib(i32 %11)
  store i32 %12, i32* %8, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @attack(i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @simple_ladder(i32 %23, i32* %24)
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %22
  br label %28

28:                                               ; preds = %27, %15
  %29 = load %struct.SGFTree_t*, %struct.SGFTree_t** %6, align 8
  store %struct.SGFTree_t* %29, %struct.SGFTree_t** @sgf_dumptree, align 8
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* @count_variations, align 4
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_vulnerabilities(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @common_vulnerability(i32 %11, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %5
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @common_vulnerability(i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @common_vulnerability(i32 %23, i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @common_vulnerability(i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %28, %22, %16, %5
  %35 = phi i1 [ true, %22 ], [ true, %16 ], [ true, %5 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ladder_capturable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @trymove(i32 %7, i32 %8, i8* null, i32 0, i32 0, i32 0)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %31

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @countlib(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @attack(i32 %17, i32* null)
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %30

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @simple_ladder(i32 %25, i32* null)
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %24, %21
  br label %30

30:                                               ; preds = %29, %20
  call void @popgo()
  br label %32

31:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @does_secure(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trymove(i32 %8, i32 %9, i8* null, i32 0, i32 0, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 3, %14
  %16 = call i32 @is_self_atari(i32 %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %12
  call void @popgo()
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @does_secure_through_ladder(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @trymove(i32 %8, i32 %9, i8* null, i32 0, i32 0, i32 0)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = sub nsw i32 3, %14
  %16 = call i32 @ladder_capturable(i32 %13, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %7, align 4
  br label %19

19:                                               ; preds = %18, %12
  call void @popgo()
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @countstones(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_escape_from_atari(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [160 x i32], align 16
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @findlib(i32 %6, i32 1, i32* %4)
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = call i32 @accuratelib(i32 %11, i32 %16, i32 2, i32* null)
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %27

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = getelementptr inbounds [160 x i32], [160 x i32]* %5, i64 0, i64 0
  %23 = call i32 @chainlinks2(i32 %21, i32* %22, i32 1)
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %27

26:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %19, %9
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_escape_from_ladder(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.SGFTree_t*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [160 x i32], align 16
  %7 = alloca [2 x i32], align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %8 = load %struct.SGFTree_t*, %struct.SGFTree_t** @sgf_dumptree, align 8
  store %struct.SGFTree_t* %8, %struct.SGFTree_t** %4, align 8
  %9 = load i32, i32* @count_variations, align 4
  store i32 %9, i32* %5, align 4
  store %struct.SGFTree_t* null, %struct.SGFTree_t** @sgf_dumptree, align 8
  store i32 0, i32* @count_variations, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @countlib(i32 %10)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @find_defense(i32 %14, i32* null)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %18

18:                                               ; preds = %17, %13, %1
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @countlib(i32 %19)
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %61

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = getelementptr inbounds [160 x i32], [160 x i32]* %6, i64 0, i64 0
  %25 = call i32 @chainlinks2(i32 %23, i32* %24, i32 1)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %61

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %30 = call i32 @findlib(i32 %28, i32 2, i32* %29)
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %61

32:                                               ; preds = %27
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 @approxlib(i32 %34, i32 %39, i32 2, i32* null)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %61

42:                                               ; preds = %32
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = call i32 @approxlib(i32 %44, i32 %49, i32 2, i32* null)
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @ladder_capture(i32 %53, i32* null)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @find_defense(i32 %57, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %56, %52, %42, %32, %27, %22, %18
  %62 = load %struct.SGFTree_t*, %struct.SGFTree_t** %4, align 8
  store %struct.SGFTree_t* %62, %struct.SGFTree_t** @sgf_dumptree, align 8
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* @count_variations, align 4
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @simple_ladder(i32, i32*) #1

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

declare dso_local i32 @chainlinks2(i32, i32*, i32) #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i32 @is_ko(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!69 = distinct !{!69, !5}
!70 = distinct !{!70, !5}
!71 = distinct !{!71, !5}
!72 = distinct !{!72, !5}
!73 = distinct !{!73, !5}
!74 = distinct !{!74, !5}
