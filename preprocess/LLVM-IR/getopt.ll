; ModuleID = 'getopt.c'
source_filename = "getopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.gg_option = type { i8*, i32, i32*, i32 }

@gg_optind = dso_local global i32 1, align 4
@gg_opterr = dso_local global i32 1, align 4
@gg_optopt = dso_local global i32 63, align 4
@gg_optarg = dso_local global i8* null, align 8
@__getopt_initialized = dso_local global i32 0, align 4
@nextchar = internal global i8* null, align 8
@last_nonopt = internal global i32 0, align 4
@first_nonopt = internal global i32 0, align 4
@ordering = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: option `%s' is ambiguous\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: option `--%s' doesn't allow an argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%s: option `%c%s' doesn't allow an argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"%s: option `%s' requires an argument\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `--%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"%s: unrecognized option `%c%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@posixly_correct = internal global i8* null, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"%s: illegal option -- %c\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"%s: invalid option -- %c\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"%s: option requires an argument -- %c\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"%s: option `-W %s' is ambiguous\0A\00", align 1
@.str.12 = private unnamed_addr constant [46 x i8] c"%s: option `-W %s' doesn't allow an argument\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getopt_internal(i32 %0, i8** %1, i8* %2, %struct.gg_option* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gg_option*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.gg_option*, align 8
  %16 = alloca %struct.gg_option*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.gg_option*, align 8
  %25 = alloca %struct.gg_option*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8** %1, i8*** %9, align 8
  store i8* %2, i8** %10, align 8
  store %struct.gg_option* %3, %struct.gg_option** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* null, i8** @gg_optarg, align 8
  %30 = load i32, i32* @gg_optind, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @__getopt_initialized, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32, %6
  %36 = load i32, i32* @gg_optind, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* @gg_optind, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %8, align 4
  %41 = load i8**, i8*** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @_getopt_initialize(i32 %40, i8** %41, i8* %42)
  store i8* %43, i8** %10, align 8
  store i32 1, i32* @__getopt_initialized, align 4
  br label %44

44:                                               ; preds = %39, %32
  %45 = load i8*, i8** @nextchar, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @nextchar, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %218

52:                                               ; preds = %47, %44
  %53 = load i32, i32* @last_nonopt, align 4
  %54 = load i32, i32* @gg_optind, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @gg_optind, align 4
  store i32 %57, i32* @last_nonopt, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* @first_nonopt, align 4
  %60 = load i32, i32* @gg_optind, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @gg_optind, align 4
  store i32 %63, i32* @first_nonopt, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i32, i32* @ordering, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %118

67:                                               ; preds = %64
  %68 = load i32, i32* @first_nonopt, align 4
  %69 = load i32, i32* @last_nonopt, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* @last_nonopt, align 4
  %73 = load i32, i32* @gg_optind, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i8**, i8*** %9, align 8
  call void @exchange(i8** %76)
  br label %84

77:                                               ; preds = %71, %67
  %78 = load i32, i32* @last_nonopt, align 4
  %79 = load i32, i32* @gg_optind, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i32, i32* @gg_optind, align 4
  store i32 %82, i32* @first_nonopt, align 4
  br label %83

83:                                               ; preds = %81, %77
  br label %84

84:                                               ; preds = %83, %75
  br label %85

85:                                               ; preds = %113, %84
  %86 = load i32, i32* @gg_optind, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load i8**, i8*** %9, align 8
  %91 = load i32, i32* @gg_optind, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 45
  br i1 %98, label %109, label %99

99:                                               ; preds = %89
  %100 = load i8**, i8*** %9, align 8
  %101 = load i32, i32* @gg_optind, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %100, i64 %102
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 1
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br label %109

109:                                              ; preds = %99, %89
  %110 = phi i1 [ true, %89 ], [ %108, %99 ]
  br label %111

111:                                              ; preds = %109, %85
  %112 = phi i1 [ false, %85 ], [ %110, %109 ]
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = load i32, i32* @gg_optind, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* @gg_optind, align 4
  br label %85, !llvm.loop !4

116:                                              ; preds = %111
  %117 = load i32, i32* @gg_optind, align 4
  store i32 %117, i32* @last_nonopt, align 4
  br label %118

118:                                              ; preds = %116, %64
  %119 = load i32, i32* @gg_optind, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %119, %120
  br i1 %121, label %122, label %152

122:                                              ; preds = %118
  %123 = load i8**, i8*** %9, align 8
  %124 = load i32, i32* @gg_optind, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @strcmp(i8* %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %152, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* @gg_optind, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @gg_optind, align 4
  %133 = load i32, i32* @first_nonopt, align 4
  %134 = load i32, i32* @last_nonopt, align 4
  %135 = icmp ne i32 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32, i32* @last_nonopt, align 4
  %138 = load i32, i32* @gg_optind, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %136
  %141 = load i8**, i8*** %9, align 8
  call void @exchange(i8** %141)
  br label %149

142:                                              ; preds = %136, %130
  %143 = load i32, i32* @first_nonopt, align 4
  %144 = load i32, i32* @last_nonopt, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @gg_optind, align 4
  store i32 %147, i32* @first_nonopt, align 4
  br label %148

148:                                              ; preds = %146, %142
  br label %149

149:                                              ; preds = %148, %140
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* @last_nonopt, align 4
  %151 = load i32, i32* %8, align 4
  store i32 %151, i32* @gg_optind, align 4
  br label %152

152:                                              ; preds = %149, %122, %118
  %153 = load i32, i32* @gg_optind, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %163

156:                                              ; preds = %152
  %157 = load i32, i32* @first_nonopt, align 4
  %158 = load i32, i32* @last_nonopt, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @first_nonopt, align 4
  store i32 %161, i32* @gg_optind, align 4
  br label %162

162:                                              ; preds = %160, %156
  store i32 -1, i32* %7, align 4
  br label %931

163:                                              ; preds = %152
  %164 = load i8**, i8*** %9, align 8
  %165 = load i32, i32* @gg_optind, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 0
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 45
  br i1 %172, label %183, label %173

173:                                              ; preds = %163
  %174 = load i8**, i8*** %9, align 8
  %175 = load i32, i32* @gg_optind, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  %178 = load i8*, i8** %177, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 1
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %173, %163
  %184 = load i32, i32* @ordering, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %183
  store i32 -1, i32* %7, align 4
  br label %931

187:                                              ; preds = %183
  %188 = load i8**, i8*** %9, align 8
  %189 = load i32, i32* @gg_optind, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* @gg_optind, align 4
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i8*, i8** %188, i64 %191
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** @gg_optarg, align 8
  store i32 1, i32* %7, align 4
  br label %931

194:                                              ; preds = %173
  %195 = load i8**, i8*** %9, align 8
  %196 = load i32, i32* @gg_optind, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8*, i8** %195, i64 %197
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 1
  %201 = load %struct.gg_option*, %struct.gg_option** %11, align 8
  %202 = icmp ne %struct.gg_option* %201, null
  br i1 %202, label %203, label %213

203:                                              ; preds = %194
  %204 = load i8**, i8*** %9, align 8
  %205 = load i32, i32* @gg_optind, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %211, 45
  br label %213

213:                                              ; preds = %203, %194
  %214 = phi i1 [ false, %194 ], [ %212, %203 ]
  %215 = zext i1 %214 to i32
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %200, i64 %216
  store i8* %217, i8** @nextchar, align 8
  br label %218

218:                                              ; preds = %213, %47
  %219 = load %struct.gg_option*, %struct.gg_option** %11, align 8
  %220 = icmp ne %struct.gg_option* %219, null
  br i1 %220, label %221, label %554

221:                                              ; preds = %218
  %222 = load i8**, i8*** %9, align 8
  %223 = load i32, i32* @gg_optind, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %222, i64 %224
  %226 = load i8*, i8** %225, align 8
  %227 = getelementptr inbounds i8, i8* %226, i64 1
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 45
  br i1 %230, label %256, label %231

231:                                              ; preds = %221
  %232 = load i32, i32* %13, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %554

234:                                              ; preds = %231
  %235 = load i8**, i8*** %9, align 8
  %236 = load i32, i32* @gg_optind, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i8*, i8** %235, i64 %237
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 2
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %256, label %244

244:                                              ; preds = %234
  %245 = load i8*, i8** %10, align 8
  %246 = load i8**, i8*** %9, align 8
  %247 = load i32, i32* @gg_optind, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8*, i8** %246, i64 %248
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 1
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = call i8* @strchr(i8* %245, i32 %253) #4
  %255 = icmp ne i8* %254, null
  br i1 %255, label %554, label %256

256:                                              ; preds = %244, %234, %221
  store %struct.gg_option* null, %struct.gg_option** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  %257 = load i8*, i8** @nextchar, align 8
  store i8* %257, i8** %14, align 8
  br label %258

258:                                              ; preds = %271, %256
  %259 = load i8*, i8** %14, align 8
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %258
  %264 = load i8*, i8** %14, align 8
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = icmp ne i32 %266, 61
  br label %268

268:                                              ; preds = %263, %258
  %269 = phi i1 [ false, %258 ], [ %267, %263 ]
  br i1 %269, label %270, label %274

270:                                              ; preds = %268
  br label %271

271:                                              ; preds = %270
  %272 = load i8*, i8** %14, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %14, align 8
  br label %258, !llvm.loop !6

274:                                              ; preds = %268
  %275 = load %struct.gg_option*, %struct.gg_option** %11, align 8
  store %struct.gg_option* %275, %struct.gg_option** %15, align 8
  store i32 0, i32* %20, align 4
  br label %276

276:                                              ; preds = %319, %274
  %277 = load %struct.gg_option*, %struct.gg_option** %15, align 8
  %278 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %324

281:                                              ; preds = %276
  %282 = load %struct.gg_option*, %struct.gg_option** %15, align 8
  %283 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load i8*, i8** @nextchar, align 8
  %286 = load i8*, i8** %14, align 8
  %287 = load i8*, i8** @nextchar, align 8
  %288 = ptrtoint i8* %286 to i64
  %289 = ptrtoint i8* %287 to i64
  %290 = sub i64 %288, %289
  %291 = call i32 @strncmp(i8* %284, i8* %285, i64 %290) #4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %318, label %293

293:                                              ; preds = %281
  %294 = load i8*, i8** %14, align 8
  %295 = load i8*, i8** @nextchar, align 8
  %296 = ptrtoint i8* %294 to i64
  %297 = ptrtoint i8* %295 to i64
  %298 = sub i64 %296, %297
  %299 = trunc i64 %298 to i32
  %300 = load %struct.gg_option*, %struct.gg_option** %15, align 8
  %301 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %300, i32 0, i32 0
  %302 = load i8*, i8** %301, align 8
  %303 = call i64 @strlen(i8* %302) #4
  %304 = trunc i64 %303 to i32
  %305 = icmp eq i32 %299, %304
  br i1 %305, label %306, label %309

306:                                              ; preds = %293
  %307 = load %struct.gg_option*, %struct.gg_option** %15, align 8
  store %struct.gg_option* %307, %struct.gg_option** %16, align 8
  %308 = load i32, i32* %20, align 4
  store i32 %308, i32* %19, align 4
  store i32 1, i32* %17, align 4
  br label %324

309:                                              ; preds = %293
  %310 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %311 = icmp eq %struct.gg_option* %310, null
  br i1 %311, label %312, label %315

312:                                              ; preds = %309
  %313 = load %struct.gg_option*, %struct.gg_option** %15, align 8
  store %struct.gg_option* %313, %struct.gg_option** %16, align 8
  %314 = load i32, i32* %20, align 4
  store i32 %314, i32* %19, align 4
  br label %316

315:                                              ; preds = %309
  store i32 1, i32* %18, align 4
  br label %316

316:                                              ; preds = %315, %312
  br label %317

317:                                              ; preds = %316
  br label %318

318:                                              ; preds = %317, %281
  br label %319

319:                                              ; preds = %318
  %320 = load %struct.gg_option*, %struct.gg_option** %15, align 8
  %321 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %320, i32 1
  store %struct.gg_option* %321, %struct.gg_option** %15, align 8
  %322 = load i32, i32* %20, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %20, align 4
  br label %276, !llvm.loop !7

324:                                              ; preds = %306, %276
  %325 = load i32, i32* %18, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %351

327:                                              ; preds = %324
  %328 = load i32, i32* %17, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %351, label %330

330:                                              ; preds = %327
  %331 = load i32, i32* @gg_opterr, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %344

333:                                              ; preds = %330
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %335 = load i8**, i8*** %9, align 8
  %336 = getelementptr inbounds i8*, i8** %335, i64 0
  %337 = load i8*, i8** %336, align 8
  %338 = load i8**, i8*** %9, align 8
  %339 = load i32, i32* @gg_optind, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8*, i8** %338, i64 %340
  %342 = load i8*, i8** %341, align 8
  %343 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %337, i8* %342)
  br label %344

344:                                              ; preds = %333, %330
  %345 = load i8*, i8** @nextchar, align 8
  %346 = call i64 @strlen(i8* %345) #4
  %347 = load i8*, i8** @nextchar, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 %346
  store i8* %348, i8** @nextchar, align 8
  %349 = load i32, i32* @gg_optind, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* @gg_optind, align 4
  store i32 0, i32* @gg_optopt, align 4
  store i32 63, i32* %7, align 4
  br label %931

351:                                              ; preds = %327, %324
  %352 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %353 = icmp ne %struct.gg_option* %352, null
  br i1 %353, label %354, label %494

354:                                              ; preds = %351
  %355 = load i32, i32* %19, align 4
  store i32 %355, i32* %20, align 4
  %356 = load i32, i32* @gg_optind, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* @gg_optind, align 4
  %358 = load i8*, i8** %14, align 8
  %359 = load i8, i8* %358, align 1
  %360 = icmp ne i8 %359, 0
  br i1 %360, label %361, label %420

361:                                              ; preds = %354
  %362 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %363 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %361
  %367 = load i8*, i8** %14, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 1
  store i8* %368, i8** @gg_optarg, align 8
  br label %419

369:                                              ; preds = %361
  %370 = load i32, i32* @gg_opterr, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %411

372:                                              ; preds = %369
  %373 = load i8**, i8*** %9, align 8
  %374 = load i32, i32* @gg_optind, align 4
  %375 = sub nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8*, i8** %373, i64 %376
  %378 = load i8*, i8** %377, align 8
  %379 = getelementptr inbounds i8, i8* %378, i64 1
  %380 = load i8, i8* %379, align 1
  %381 = sext i8 %380 to i32
  %382 = icmp eq i32 %381, 45
  br i1 %382, label %383, label %392

383:                                              ; preds = %372
  %384 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %385 = load i8**, i8*** %9, align 8
  %386 = getelementptr inbounds i8*, i8** %385, i64 0
  %387 = load i8*, i8** %386, align 8
  %388 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %389 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %388, i32 0, i32 0
  %390 = load i8*, i8** %389, align 8
  %391 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %384, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i8* %387, i8* %390)
  br label %410

392:                                              ; preds = %372
  %393 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %394 = load i8**, i8*** %9, align 8
  %395 = getelementptr inbounds i8*, i8** %394, i64 0
  %396 = load i8*, i8** %395, align 8
  %397 = load i8**, i8*** %9, align 8
  %398 = load i32, i32* @gg_optind, align 4
  %399 = sub nsw i32 %398, 1
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8*, i8** %397, i64 %400
  %402 = load i8*, i8** %401, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 0
  %404 = load i8, i8* %403, align 1
  %405 = sext i8 %404 to i32
  %406 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %407 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %406, i32 0, i32 0
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %393, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %396, i32 %405, i8* %408)
  br label %410

410:                                              ; preds = %392, %383
  br label %411

411:                                              ; preds = %410, %369
  %412 = load i8*, i8** @nextchar, align 8
  %413 = call i64 @strlen(i8* %412) #4
  %414 = load i8*, i8** @nextchar, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 %413
  store i8* %415, i8** @nextchar, align 8
  %416 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %417 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 8
  store i32 %418, i32* @gg_optopt, align 4
  store i32 63, i32* %7, align 4
  br label %931

419:                                              ; preds = %366
  br label %468

420:                                              ; preds = %354
  %421 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %422 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 8
  %424 = icmp eq i32 %423, 1
  br i1 %424, label %425, label %467

425:                                              ; preds = %420
  %426 = load i32, i32* @gg_optind, align 4
  %427 = load i32, i32* %8, align 4
  %428 = icmp slt i32 %426, %427
  br i1 %428, label %429, label %436

429:                                              ; preds = %425
  %430 = load i8**, i8*** %9, align 8
  %431 = load i32, i32* @gg_optind, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* @gg_optind, align 4
  %433 = sext i32 %431 to i64
  %434 = getelementptr inbounds i8*, i8** %430, i64 %433
  %435 = load i8*, i8** %434, align 8
  store i8* %435, i8** @gg_optarg, align 8
  br label %466

436:                                              ; preds = %425
  %437 = load i32, i32* @gg_opterr, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %451

439:                                              ; preds = %436
  %440 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %441 = load i8**, i8*** %9, align 8
  %442 = getelementptr inbounds i8*, i8** %441, i64 0
  %443 = load i8*, i8** %442, align 8
  %444 = load i8**, i8*** %9, align 8
  %445 = load i32, i32* @gg_optind, align 4
  %446 = sub nsw i32 %445, 1
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i8*, i8** %444, i64 %447
  %449 = load i8*, i8** %448, align 8
  %450 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %440, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %443, i8* %449)
  br label %451

451:                                              ; preds = %439, %436
  %452 = load i8*, i8** @nextchar, align 8
  %453 = call i64 @strlen(i8* %452) #4
  %454 = load i8*, i8** @nextchar, align 8
  %455 = getelementptr inbounds i8, i8* %454, i64 %453
  store i8* %455, i8** @nextchar, align 8
  %456 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %457 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %456, i32 0, i32 3
  %458 = load i32, i32* %457, align 8
  store i32 %458, i32* @gg_optopt, align 4
  %459 = load i8*, i8** %10, align 8
  %460 = getelementptr inbounds i8, i8* %459, i64 0
  %461 = load i8, i8* %460, align 1
  %462 = sext i8 %461 to i32
  %463 = icmp eq i32 %462, 58
  %464 = zext i1 %463 to i64
  %465 = select i1 %463, i32 58, i32 63
  store i32 %465, i32* %7, align 4
  br label %931

466:                                              ; preds = %429
  br label %467

467:                                              ; preds = %466, %420
  br label %468

468:                                              ; preds = %467, %419
  %469 = load i8*, i8** @nextchar, align 8
  %470 = call i64 @strlen(i8* %469) #4
  %471 = load i8*, i8** @nextchar, align 8
  %472 = getelementptr inbounds i8, i8* %471, i64 %470
  store i8* %472, i8** @nextchar, align 8
  %473 = load i32*, i32** %12, align 8
  %474 = icmp ne i32* %473, null
  br i1 %474, label %475, label %478

475:                                              ; preds = %468
  %476 = load i32, i32* %20, align 4
  %477 = load i32*, i32** %12, align 8
  store i32 %476, i32* %477, align 4
  br label %478

478:                                              ; preds = %475, %468
  %479 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %480 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %479, i32 0, i32 2
  %481 = load i32*, i32** %480, align 8
  %482 = icmp ne i32* %481, null
  br i1 %482, label %483, label %490

483:                                              ; preds = %478
  %484 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %485 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %484, i32 0, i32 3
  %486 = load i32, i32* %485, align 8
  %487 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %488 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %487, i32 0, i32 2
  %489 = load i32*, i32** %488, align 8
  store i32 %486, i32* %489, align 4
  store i32 0, i32* %7, align 4
  br label %931

490:                                              ; preds = %478
  %491 = load %struct.gg_option*, %struct.gg_option** %16, align 8
  %492 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %491, i32 0, i32 3
  %493 = load i32, i32* %492, align 8
  store i32 %493, i32* %7, align 4
  br label %931

494:                                              ; preds = %351
  %495 = load i32, i32* %13, align 4
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %514

497:                                              ; preds = %494
  %498 = load i8**, i8*** %9, align 8
  %499 = load i32, i32* @gg_optind, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i8*, i8** %498, i64 %500
  %502 = load i8*, i8** %501, align 8
  %503 = getelementptr inbounds i8, i8* %502, i64 1
  %504 = load i8, i8* %503, align 1
  %505 = sext i8 %504 to i32
  %506 = icmp eq i32 %505, 45
  br i1 %506, label %514, label %507

507:                                              ; preds = %497
  %508 = load i8*, i8** %10, align 8
  %509 = load i8*, i8** @nextchar, align 8
  %510 = load i8, i8* %509, align 1
  %511 = sext i8 %510 to i32
  %512 = call i8* @strchr(i8* %508, i32 %511) #4
  %513 = icmp eq i8* %512, null
  br i1 %513, label %514, label %553

514:                                              ; preds = %507, %497, %494
  %515 = load i32, i32* @gg_opterr, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %550

517:                                              ; preds = %514
  %518 = load i8**, i8*** %9, align 8
  %519 = load i32, i32* @gg_optind, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i8*, i8** %518, i64 %520
  %522 = load i8*, i8** %521, align 8
  %523 = getelementptr inbounds i8, i8* %522, i64 1
  %524 = load i8, i8* %523, align 1
  %525 = sext i8 %524 to i32
  %526 = icmp eq i32 %525, 45
  br i1 %526, label %527, label %534

527:                                              ; preds = %517
  %528 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %529 = load i8**, i8*** %9, align 8
  %530 = getelementptr inbounds i8*, i8** %529, i64 0
  %531 = load i8*, i8** %530, align 8
  %532 = load i8*, i8** @nextchar, align 8
  %533 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %528, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %531, i8* %532)
  br label %549

534:                                              ; preds = %517
  %535 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %536 = load i8**, i8*** %9, align 8
  %537 = getelementptr inbounds i8*, i8** %536, i64 0
  %538 = load i8*, i8** %537, align 8
  %539 = load i8**, i8*** %9, align 8
  %540 = load i32, i32* @gg_optind, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds i8*, i8** %539, i64 %541
  %543 = load i8*, i8** %542, align 8
  %544 = getelementptr inbounds i8, i8* %543, i64 0
  %545 = load i8, i8* %544, align 1
  %546 = sext i8 %545 to i32
  %547 = load i8*, i8** @nextchar, align 8
  %548 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %535, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %538, i32 %546, i8* %547)
  br label %549

549:                                              ; preds = %534, %527
  br label %550

550:                                              ; preds = %549, %514
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** @nextchar, align 8
  %551 = load i32, i32* @gg_optind, align 4
  %552 = add nsw i32 %551, 1
  store i32 %552, i32* @gg_optind, align 4
  store i32 0, i32* @gg_optopt, align 4
  store i32 63, i32* %7, align 4
  br label %931

553:                                              ; preds = %507
  br label %554

554:                                              ; preds = %553, %244, %231, %218
  %555 = load i8*, i8** @nextchar, align 8
  %556 = getelementptr inbounds i8, i8* %555, i32 1
  store i8* %556, i8** @nextchar, align 8
  %557 = load i8, i8* %555, align 1
  store i8 %557, i8* %21, align 1
  %558 = load i8*, i8** %10, align 8
  %559 = load i8, i8* %21, align 1
  %560 = sext i8 %559 to i32
  %561 = call i8* @strchr(i8* %558, i32 %560) #4
  store i8* %561, i8** %22, align 8
  %562 = load i8*, i8** @nextchar, align 8
  %563 = load i8, i8* %562, align 1
  %564 = sext i8 %563 to i32
  %565 = icmp eq i32 %564, 0
  br i1 %565, label %566, label %569

566:                                              ; preds = %554
  %567 = load i32, i32* @gg_optind, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* @gg_optind, align 4
  br label %569

569:                                              ; preds = %566, %554
  %570 = load i8*, i8** %22, align 8
  %571 = icmp eq i8* %570, null
  br i1 %571, label %576, label %572

572:                                              ; preds = %569
  %573 = load i8, i8* %21, align 1
  %574 = sext i8 %573 to i32
  %575 = icmp eq i32 %574, 58
  br i1 %575, label %576, label %602

576:                                              ; preds = %572, %569
  %577 = load i32, i32* @gg_opterr, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %599

579:                                              ; preds = %576
  %580 = load i8*, i8** @posixly_correct, align 8
  %581 = icmp ne i8* %580, null
  br i1 %581, label %582, label %590

582:                                              ; preds = %579
  %583 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %584 = load i8**, i8*** %9, align 8
  %585 = getelementptr inbounds i8*, i8** %584, i64 0
  %586 = load i8*, i8** %585, align 8
  %587 = load i8, i8* %21, align 1
  %588 = sext i8 %587 to i32
  %589 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %583, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %586, i32 %588)
  br label %598

590:                                              ; preds = %579
  %591 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %592 = load i8**, i8*** %9, align 8
  %593 = getelementptr inbounds i8*, i8** %592, i64 0
  %594 = load i8*, i8** %593, align 8
  %595 = load i8, i8* %21, align 1
  %596 = sext i8 %595 to i32
  %597 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %591, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* %594, i32 %596)
  br label %598

598:                                              ; preds = %590, %582
  br label %599

599:                                              ; preds = %598, %576
  %600 = load i8, i8* %21, align 1
  %601 = sext i8 %600 to i32
  store i32 %601, i32* @gg_optopt, align 4
  store i32 63, i32* %7, align 4
  br label %931

602:                                              ; preds = %572
  %603 = load i8*, i8** %22, align 8
  %604 = getelementptr inbounds i8, i8* %603, i64 0
  %605 = load i8, i8* %604, align 1
  %606 = sext i8 %605 to i32
  %607 = icmp eq i32 %606, 87
  br i1 %607, label %608, label %860

608:                                              ; preds = %602
  %609 = load i8*, i8** %22, align 8
  %610 = getelementptr inbounds i8, i8* %609, i64 1
  %611 = load i8, i8* %610, align 1
  %612 = sext i8 %611 to i32
  %613 = icmp eq i32 %612, 59
  br i1 %613, label %614, label %860

614:                                              ; preds = %608
  store %struct.gg_option* null, %struct.gg_option** %25, align 8
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %615 = load i8*, i8** @nextchar, align 8
  %616 = load i8, i8* %615, align 1
  %617 = sext i8 %616 to i32
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %623

619:                                              ; preds = %614
  %620 = load i8*, i8** @nextchar, align 8
  store i8* %620, i8** @gg_optarg, align 8
  %621 = load i32, i32* @gg_optind, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* @gg_optind, align 4
  br label %659

623:                                              ; preds = %614
  %624 = load i32, i32* @gg_optind, align 4
  %625 = load i32, i32* %8, align 4
  %626 = icmp eq i32 %624, %625
  br i1 %626, label %627, label %651

627:                                              ; preds = %623
  %628 = load i32, i32* @gg_opterr, align 4
  %629 = icmp ne i32 %628, 0
  br i1 %629, label %630, label %638

630:                                              ; preds = %627
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %632 = load i8**, i8*** %9, align 8
  %633 = getelementptr inbounds i8*, i8** %632, i64 0
  %634 = load i8*, i8** %633, align 8
  %635 = load i8, i8* %21, align 1
  %636 = sext i8 %635 to i32
  %637 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %631, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %634, i32 %636)
  br label %638

638:                                              ; preds = %630, %627
  %639 = load i8, i8* %21, align 1
  %640 = sext i8 %639 to i32
  store i32 %640, i32* @gg_optopt, align 4
  %641 = load i8*, i8** %10, align 8
  %642 = getelementptr inbounds i8, i8* %641, i64 0
  %643 = load i8, i8* %642, align 1
  %644 = sext i8 %643 to i32
  %645 = icmp eq i32 %644, 58
  br i1 %645, label %646, label %647

646:                                              ; preds = %638
  store i8 58, i8* %21, align 1
  br label %648

647:                                              ; preds = %638
  store i8 63, i8* %21, align 1
  br label %648

648:                                              ; preds = %647, %646
  %649 = load i8, i8* %21, align 1
  %650 = sext i8 %649 to i32
  store i32 %650, i32* %7, align 4
  br label %931

651:                                              ; preds = %623
  %652 = load i8**, i8*** %9, align 8
  %653 = load i32, i32* @gg_optind, align 4
  %654 = add nsw i32 %653, 1
  store i32 %654, i32* @gg_optind, align 4
  %655 = sext i32 %653 to i64
  %656 = getelementptr inbounds i8*, i8** %652, i64 %655
  %657 = load i8*, i8** %656, align 8
  store i8* %657, i8** @gg_optarg, align 8
  br label %658

658:                                              ; preds = %651
  br label %659

659:                                              ; preds = %658, %619
  %660 = load i8*, i8** @gg_optarg, align 8
  store i8* %660, i8** %23, align 8
  store i8* %660, i8** @nextchar, align 8
  br label %661

661:                                              ; preds = %674, %659
  %662 = load i8*, i8** %23, align 8
  %663 = load i8, i8* %662, align 1
  %664 = sext i8 %663 to i32
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %661
  %667 = load i8*, i8** %23, align 8
  %668 = load i8, i8* %667, align 1
  %669 = sext i8 %668 to i32
  %670 = icmp ne i32 %669, 61
  br label %671

671:                                              ; preds = %666, %661
  %672 = phi i1 [ false, %661 ], [ %670, %666 ]
  br i1 %672, label %673, label %677

673:                                              ; preds = %671
  br label %674

674:                                              ; preds = %673
  %675 = load i8*, i8** %23, align 8
  %676 = getelementptr inbounds i8, i8* %675, i32 1
  store i8* %676, i8** %23, align 8
  br label %661, !llvm.loop !8

677:                                              ; preds = %671
  %678 = load %struct.gg_option*, %struct.gg_option** %11, align 8
  store %struct.gg_option* %678, %struct.gg_option** %24, align 8
  store i32 0, i32* %29, align 4
  br label %679

679:                                              ; preds = %722, %677
  %680 = load %struct.gg_option*, %struct.gg_option** %24, align 8
  %681 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %680, i32 0, i32 0
  %682 = load i8*, i8** %681, align 8
  %683 = icmp ne i8* %682, null
  br i1 %683, label %684, label %727

684:                                              ; preds = %679
  %685 = load %struct.gg_option*, %struct.gg_option** %24, align 8
  %686 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %685, i32 0, i32 0
  %687 = load i8*, i8** %686, align 8
  %688 = load i8*, i8** @nextchar, align 8
  %689 = load i8*, i8** %23, align 8
  %690 = load i8*, i8** @nextchar, align 8
  %691 = ptrtoint i8* %689 to i64
  %692 = ptrtoint i8* %690 to i64
  %693 = sub i64 %691, %692
  %694 = call i32 @strncmp(i8* %687, i8* %688, i64 %693) #4
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %721, label %696

696:                                              ; preds = %684
  %697 = load i8*, i8** %23, align 8
  %698 = load i8*, i8** @nextchar, align 8
  %699 = ptrtoint i8* %697 to i64
  %700 = ptrtoint i8* %698 to i64
  %701 = sub i64 %699, %700
  %702 = trunc i64 %701 to i32
  %703 = zext i32 %702 to i64
  %704 = load %struct.gg_option*, %struct.gg_option** %24, align 8
  %705 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %704, i32 0, i32 0
  %706 = load i8*, i8** %705, align 8
  %707 = call i64 @strlen(i8* %706) #4
  %708 = icmp eq i64 %703, %707
  br i1 %708, label %709, label %712

709:                                              ; preds = %696
  %710 = load %struct.gg_option*, %struct.gg_option** %24, align 8
  store %struct.gg_option* %710, %struct.gg_option** %25, align 8
  %711 = load i32, i32* %29, align 4
  store i32 %711, i32* %28, align 4
  store i32 1, i32* %26, align 4
  br label %727

712:                                              ; preds = %696
  %713 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %714 = icmp eq %struct.gg_option* %713, null
  br i1 %714, label %715, label %718

715:                                              ; preds = %712
  %716 = load %struct.gg_option*, %struct.gg_option** %24, align 8
  store %struct.gg_option* %716, %struct.gg_option** %25, align 8
  %717 = load i32, i32* %29, align 4
  store i32 %717, i32* %28, align 4
  br label %719

718:                                              ; preds = %712
  store i32 1, i32* %27, align 4
  br label %719

719:                                              ; preds = %718, %715
  br label %720

720:                                              ; preds = %719
  br label %721

721:                                              ; preds = %720, %684
  br label %722

722:                                              ; preds = %721
  %723 = load %struct.gg_option*, %struct.gg_option** %24, align 8
  %724 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %723, i32 1
  store %struct.gg_option* %724, %struct.gg_option** %24, align 8
  %725 = load i32, i32* %29, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %29, align 4
  br label %679, !llvm.loop !9

727:                                              ; preds = %709, %679
  %728 = load i32, i32* %27, align 4
  %729 = icmp ne i32 %728, 0
  br i1 %729, label %730, label %754

730:                                              ; preds = %727
  %731 = load i32, i32* %26, align 4
  %732 = icmp ne i32 %731, 0
  br i1 %732, label %754, label %733

733:                                              ; preds = %730
  %734 = load i32, i32* @gg_opterr, align 4
  %735 = icmp ne i32 %734, 0
  br i1 %735, label %736, label %747

736:                                              ; preds = %733
  %737 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %738 = load i8**, i8*** %9, align 8
  %739 = getelementptr inbounds i8*, i8** %738, i64 0
  %740 = load i8*, i8** %739, align 8
  %741 = load i8**, i8*** %9, align 8
  %742 = load i32, i32* @gg_optind, align 4
  %743 = sext i32 %742 to i64
  %744 = getelementptr inbounds i8*, i8** %741, i64 %743
  %745 = load i8*, i8** %744, align 8
  %746 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %737, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0), i8* %740, i8* %745)
  br label %747

747:                                              ; preds = %736, %733
  %748 = load i8*, i8** @nextchar, align 8
  %749 = call i64 @strlen(i8* %748) #4
  %750 = load i8*, i8** @nextchar, align 8
  %751 = getelementptr inbounds i8, i8* %750, i64 %749
  store i8* %751, i8** @nextchar, align 8
  %752 = load i32, i32* @gg_optind, align 4
  %753 = add nsw i32 %752, 1
  store i32 %753, i32* @gg_optind, align 4
  store i32 63, i32* %7, align 4
  br label %931

754:                                              ; preds = %730, %727
  %755 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %756 = icmp ne %struct.gg_option* %755, null
  br i1 %756, label %757, label %859

757:                                              ; preds = %754
  %758 = load i32, i32* %28, align 4
  store i32 %758, i32* %29, align 4
  %759 = load i8*, i8** %23, align 8
  %760 = load i8, i8* %759, align 1
  %761 = icmp ne i8 %760, 0
  br i1 %761, label %762, label %788

762:                                              ; preds = %757
  %763 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %764 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %763, i32 0, i32 1
  %765 = load i32, i32* %764, align 8
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %770

767:                                              ; preds = %762
  %768 = load i8*, i8** %23, align 8
  %769 = getelementptr inbounds i8, i8* %768, i64 1
  store i8* %769, i8** @gg_optarg, align 8
  br label %787

770:                                              ; preds = %762
  %771 = load i32, i32* @gg_opterr, align 4
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %773, label %782

773:                                              ; preds = %770
  %774 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %775 = load i8**, i8*** %9, align 8
  %776 = getelementptr inbounds i8*, i8** %775, i64 0
  %777 = load i8*, i8** %776, align 8
  %778 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %779 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %778, i32 0, i32 0
  %780 = load i8*, i8** %779, align 8
  %781 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %774, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.12, i64 0, i64 0), i8* %777, i8* %780)
  br label %782

782:                                              ; preds = %773, %770
  %783 = load i8*, i8** @nextchar, align 8
  %784 = call i64 @strlen(i8* %783) #4
  %785 = load i8*, i8** @nextchar, align 8
  %786 = getelementptr inbounds i8, i8* %785, i64 %784
  store i8* %786, i8** @nextchar, align 8
  store i32 63, i32* %7, align 4
  br label %931

787:                                              ; preds = %767
  br label %833

788:                                              ; preds = %757
  %789 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %790 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %789, i32 0, i32 1
  %791 = load i32, i32* %790, align 8
  %792 = icmp eq i32 %791, 1
  br i1 %792, label %793, label %832

793:                                              ; preds = %788
  %794 = load i32, i32* @gg_optind, align 4
  %795 = load i32, i32* %8, align 4
  %796 = icmp slt i32 %794, %795
  br i1 %796, label %797, label %804

797:                                              ; preds = %793
  %798 = load i8**, i8*** %9, align 8
  %799 = load i32, i32* @gg_optind, align 4
  %800 = add nsw i32 %799, 1
  store i32 %800, i32* @gg_optind, align 4
  %801 = sext i32 %799 to i64
  %802 = getelementptr inbounds i8*, i8** %798, i64 %801
  %803 = load i8*, i8** %802, align 8
  store i8* %803, i8** @gg_optarg, align 8
  br label %831

804:                                              ; preds = %793
  %805 = load i32, i32* @gg_opterr, align 4
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %807, label %819

807:                                              ; preds = %804
  %808 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %809 = load i8**, i8*** %9, align 8
  %810 = getelementptr inbounds i8*, i8** %809, i64 0
  %811 = load i8*, i8** %810, align 8
  %812 = load i8**, i8*** %9, align 8
  %813 = load i32, i32* @gg_optind, align 4
  %814 = sub nsw i32 %813, 1
  %815 = sext i32 %814 to i64
  %816 = getelementptr inbounds i8*, i8** %812, i64 %815
  %817 = load i8*, i8** %816, align 8
  %818 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %808, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %811, i8* %817)
  br label %819

819:                                              ; preds = %807, %804
  %820 = load i8*, i8** @nextchar, align 8
  %821 = call i64 @strlen(i8* %820) #4
  %822 = load i8*, i8** @nextchar, align 8
  %823 = getelementptr inbounds i8, i8* %822, i64 %821
  store i8* %823, i8** @nextchar, align 8
  %824 = load i8*, i8** %10, align 8
  %825 = getelementptr inbounds i8, i8* %824, i64 0
  %826 = load i8, i8* %825, align 1
  %827 = sext i8 %826 to i32
  %828 = icmp eq i32 %827, 58
  %829 = zext i1 %828 to i64
  %830 = select i1 %828, i32 58, i32 63
  store i32 %830, i32* %7, align 4
  br label %931

831:                                              ; preds = %797
  br label %832

832:                                              ; preds = %831, %788
  br label %833

833:                                              ; preds = %832, %787
  %834 = load i8*, i8** @nextchar, align 8
  %835 = call i64 @strlen(i8* %834) #4
  %836 = load i8*, i8** @nextchar, align 8
  %837 = getelementptr inbounds i8, i8* %836, i64 %835
  store i8* %837, i8** @nextchar, align 8
  %838 = load i32*, i32** %12, align 8
  %839 = icmp ne i32* %838, null
  br i1 %839, label %840, label %843

840:                                              ; preds = %833
  %841 = load i32, i32* %29, align 4
  %842 = load i32*, i32** %12, align 8
  store i32 %841, i32* %842, align 4
  br label %843

843:                                              ; preds = %840, %833
  %844 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %845 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %844, i32 0, i32 2
  %846 = load i32*, i32** %845, align 8
  %847 = icmp ne i32* %846, null
  br i1 %847, label %848, label %855

848:                                              ; preds = %843
  %849 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %850 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %849, i32 0, i32 3
  %851 = load i32, i32* %850, align 8
  %852 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %853 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %852, i32 0, i32 2
  %854 = load i32*, i32** %853, align 8
  store i32 %851, i32* %854, align 4
  store i32 0, i32* %7, align 4
  br label %931

855:                                              ; preds = %843
  %856 = load %struct.gg_option*, %struct.gg_option** %25, align 8
  %857 = getelementptr inbounds %struct.gg_option, %struct.gg_option* %856, i32 0, i32 3
  %858 = load i32, i32* %857, align 8
  store i32 %858, i32* %7, align 4
  br label %931

859:                                              ; preds = %754
  store i8* null, i8** @nextchar, align 8
  store i32 87, i32* %7, align 4
  br label %931

860:                                              ; preds = %608, %602
  %861 = load i8*, i8** %22, align 8
  %862 = getelementptr inbounds i8, i8* %861, i64 1
  %863 = load i8, i8* %862, align 1
  %864 = sext i8 %863 to i32
  %865 = icmp eq i32 %864, 58
  br i1 %865, label %866, label %928

866:                                              ; preds = %860
  %867 = load i8*, i8** %22, align 8
  %868 = getelementptr inbounds i8, i8* %867, i64 2
  %869 = load i8, i8* %868, align 1
  %870 = sext i8 %869 to i32
  %871 = icmp eq i32 %870, 58
  br i1 %871, label %872, label %883

872:                                              ; preds = %866
  %873 = load i8*, i8** @nextchar, align 8
  %874 = load i8, i8* %873, align 1
  %875 = sext i8 %874 to i32
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %881

877:                                              ; preds = %872
  %878 = load i8*, i8** @nextchar, align 8
  store i8* %878, i8** @gg_optarg, align 8
  %879 = load i32, i32* @gg_optind, align 4
  %880 = add nsw i32 %879, 1
  store i32 %880, i32* @gg_optind, align 4
  br label %882

881:                                              ; preds = %872
  store i8* null, i8** @gg_optarg, align 8
  br label %882

882:                                              ; preds = %881, %877
  store i8* null, i8** @nextchar, align 8
  br label %927

883:                                              ; preds = %866
  %884 = load i8*, i8** @nextchar, align 8
  %885 = load i8, i8* %884, align 1
  %886 = sext i8 %885 to i32
  %887 = icmp ne i32 %886, 0
  br i1 %887, label %888, label %892

888:                                              ; preds = %883
  %889 = load i8*, i8** @nextchar, align 8
  store i8* %889, i8** @gg_optarg, align 8
  %890 = load i32, i32* @gg_optind, align 4
  %891 = add nsw i32 %890, 1
  store i32 %891, i32* @gg_optind, align 4
  br label %926

892:                                              ; preds = %883
  %893 = load i32, i32* @gg_optind, align 4
  %894 = load i32, i32* %8, align 4
  %895 = icmp eq i32 %893, %894
  br i1 %895, label %896, label %918

896:                                              ; preds = %892
  %897 = load i32, i32* @gg_opterr, align 4
  %898 = icmp ne i32 %897, 0
  br i1 %898, label %899, label %907

899:                                              ; preds = %896
  %900 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %901 = load i8**, i8*** %9, align 8
  %902 = getelementptr inbounds i8*, i8** %901, i64 0
  %903 = load i8*, i8** %902, align 8
  %904 = load i8, i8* %21, align 1
  %905 = sext i8 %904 to i32
  %906 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %900, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i8* %903, i32 %905)
  br label %907

907:                                              ; preds = %899, %896
  %908 = load i8, i8* %21, align 1
  %909 = sext i8 %908 to i32
  store i32 %909, i32* @gg_optopt, align 4
  %910 = load i8*, i8** %10, align 8
  %911 = getelementptr inbounds i8, i8* %910, i64 0
  %912 = load i8, i8* %911, align 1
  %913 = sext i8 %912 to i32
  %914 = icmp eq i32 %913, 58
  br i1 %914, label %915, label %916

915:                                              ; preds = %907
  store i8 58, i8* %21, align 1
  br label %917

916:                                              ; preds = %907
  store i8 63, i8* %21, align 1
  br label %917

917:                                              ; preds = %916, %915
  br label %925

918:                                              ; preds = %892
  %919 = load i8**, i8*** %9, align 8
  %920 = load i32, i32* @gg_optind, align 4
  %921 = add nsw i32 %920, 1
  store i32 %921, i32* @gg_optind, align 4
  %922 = sext i32 %920 to i64
  %923 = getelementptr inbounds i8*, i8** %919, i64 %922
  %924 = load i8*, i8** %923, align 8
  store i8* %924, i8** @gg_optarg, align 8
  br label %925

925:                                              ; preds = %918, %917
  br label %926

926:                                              ; preds = %925, %888
  store i8* null, i8** @nextchar, align 8
  br label %927

927:                                              ; preds = %926, %882
  br label %928

928:                                              ; preds = %927, %860
  %929 = load i8, i8* %21, align 1
  %930 = sext i8 %929 to i32
  store i32 %930, i32* %7, align 4
  br label %931

931:                                              ; preds = %928, %859, %855, %848, %819, %782, %747, %648, %599, %550, %490, %483, %451, %411, %344, %187, %186, %162
  %932 = load i32, i32* %7, align 4
  ret i32 %932
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @_getopt_initialize(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* @gg_optind, align 4
  store i32 %7, i32* @last_nonopt, align 4
  store i32 %7, i32* @first_nonopt, align 4
  store i8* null, i8** @nextchar, align 8
  %8 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0)) #5
  store i8* %8, i8** @posixly_correct, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 45
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  store i32 2, i32* @ordering, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %6, align 8
  br label %33

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 43
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  store i32 0, i32* @ordering, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %6, align 8
  br label %32

26:                                               ; preds = %17
  %27 = load i8*, i8** @posixly_correct, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* @ordering, align 4
  br label %31

30:                                               ; preds = %26
  store i32 1, i32* @ordering, align 4
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i8*, i8** %6, align 8
  ret i8* %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exchange(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  %11 = load i32, i32* @first_nonopt, align 4
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @last_nonopt, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @gg_optind, align 4
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %126, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp sgt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %14
  %23 = phi i1 [ false, %14 ], [ %21, %18 ]
  br i1 %23, label %24, label %127

24:                                               ; preds = %22
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %28, %29
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %83

32:                                               ; preds = %24
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %76, %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %79

40:                                               ; preds = %36
  %41 = load i8**, i8*** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %41, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %6, align 8
  %48 = load i8**, i8*** %2, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sub nsw i32 %49, %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %48, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = load i8**, i8*** %2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %59, i64 %63
  store i8* %58, i8** %64, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i8**, i8*** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* %3, align 4
  %70 = sub nsw i32 %68, %69
  %71 = sub nsw i32 %67, %70
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %66, i64 %74
  store i8* %65, i8** %75, align 8
  br label %76

76:                                               ; preds = %40
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %36, !llvm.loop !10

79:                                               ; preds = %36
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %5, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %126

83:                                               ; preds = %24
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %119, %83
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %122

91:                                               ; preds = %87
  %92 = load i8**, i8*** %2, align 8
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %92, i64 %96
  %98 = load i8*, i8** %97, align 8
  store i8* %98, i8** %6, align 8
  %99 = load i8**, i8*** %2, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %99, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %2, align 8
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %106, i64 %110
  store i8* %105, i8** %111, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load i8**, i8*** %2, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8*, i8** %113, i64 %117
  store i8* %112, i8** %118, align 8
  br label %119

119:                                              ; preds = %91
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %87, !llvm.loop !11

122:                                              ; preds = %87
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %79
  br label %14, !llvm.loop !12

127:                                              ; preds = %22
  %128 = load i32, i32* @gg_optind, align 4
  %129 = load i32, i32* @last_nonopt, align 4
  %130 = sub nsw i32 %128, %129
  %131 = load i32, i32* @first_nonopt, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* @first_nonopt, align 4
  %133 = load i32, i32* @gg_optind, align 4
  store i32 %133, i32* @last_nonopt, align 4
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i8* @strchr(i8*, i32) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gg_getopt(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @getopt_internal(i32 %7, i8** %8, i8* %9, %struct.gg_option* null, i32* null, i32 0)
  ret i32 %10
}

; Function Attrs: nounwind
declare dso_local i8* @getenv(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
