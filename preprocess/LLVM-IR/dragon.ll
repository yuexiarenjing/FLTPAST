; ModuleID = 'dragon.c'
source_filename = "dragon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dragon_data2 = type { i32, [10 x i32], i32, i32, i32, float, i32, float, float, i32, %struct.eyevalue, i32, i32, i32, i32, i32, i32 }
%struct.eyevalue = type { i8, i8, i8, i8 }
%struct.eye_data = type { i32, i32, i32, i32, %struct.eyevalue, i32, i32, i8, i8, i8, i8, i8 }
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }
%struct.influence_data = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.interpolation_data = type { i32, float, float, [21 x float] }
%struct.moyo_data = type { i32, [400 x i32], [361 x i32], [361 x i32], [361 x float] }

@board = external dso_local global [421 x i8], align 16
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@number_of_dragons = external dso_local global i32, align 4
@.str = private unnamed_addr constant [9 x i8] c"dragon.c\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"ON_BOARD1(pos) && dragon[pos].id >= 0 && dragon[pos].id < number_of_dragons\00", align 1
@dragon2 = external dso_local global %struct.dragon_data2*, align 8
@dragon2_initialized = internal global i32 0, align 4
@black_eye = external dso_local global [400 x %struct.eye_data], align 16
@white_eye = external dso_local global [400 x %struct.eye_data], align 16
@.str.2 = private unnamed_addr constant [23 x i8] c"  time to make domains\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"  time to find connections\00", align 1
@experimental_connections = external dso_local global i32, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"  time to amalgamate dragons\00", align 1
@worm = external dso_local global [400 x %struct.worm_data], align 16
@verbose = external dso_local global i32, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"at %1m setting %1m.lunch to %1m (cutstone=%d)\0A\00", align 1
@half_eye = external dso_local global [400 x %struct.half_eye_data], align 16
@debug = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Black eyespace at %1m: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"White eyespace at %1m: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"board[dr] == 2\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"eye at %1m found for dragon at %1m--augmenting genus\0A\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"board[dr] == 1\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"  pre-owl dragon data\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"Inconsistent owl attack and defense results for %1m.\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"    owl reading for dragon at \00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"  owl reading\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"  compute status\00", align 1
@thrashing_dragon = external dso_local global i32, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"thrashing dragon found at %1m\0A\00", align 1
@level = external dso_local global i32, align 4
@disable_threat_computation = external dso_local global i32, align 4
@owl_threats = external dso_local global i32, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"    owl threats for dragon at \00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"  owl threats \00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"surrounded dragon found at %1m\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"weakly surrounded dragon found at %1m\0A\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"  post owl dragon data\00", align 1
@experimental_semeai = external dso_local global i32, align 4
@.str.22 = private unnamed_addr constant [16 x i8] c"  semeai module\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"Worm %1m revised to be inessential.\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"  revise worm inessentiality\00", align 1
@.str.25 = private unnamed_addr constant [39 x i8] c"Dragon %1m revised to be inessential.\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"  revise dragon inessentiality\00", align 1
@lively_white_dragons = internal global i32 0, align 4
@lively_black_dragons = internal global i32 0, align 4
@.str.27 = private unnamed_addr constant [47 x i8] c"Initializing dragon from worm at %1m, size %d\0A\00", align 1
@next_worm_list = internal global [400 x i32] zeroinitializer, align 16
@.str.28 = private unnamed_addr constant [45 x i8] c"((color) == 1 || (color) == 2) || color == 0\00", align 1
@initial_black_influence = external dso_local global %struct.influence_data, align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"initial black influence, dragons known\00", align 1
@initial_white_influence = external dso_local global %struct.influence_data, align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"initial white influence, dragons known\00", align 1
@show_dragons.snames = internal global [5 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0)], align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c"alive\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"critical\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"unchecked\00", align 1
@show_dragons.safety_names = internal global [10 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.42, i32 0, i32 0)], align 16
@.str.36 = private unnamed_addr constant [12 x i8] c"inessential\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"tactically dead\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"weak\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"weakly_alive\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"alive_in_seki\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"strongly_alive\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"invincible\00", align 1
@.str.43 = private unnamed_addr constant [70 x i8] c"%1m : (dragon %1m) %s string of size %d (%f), genus %d: (%d,%d,%d,%d)\00", align 1
@.str.44 = private unnamed_addr constant [35 x i8] c"%o - is a potential cutting stone\0A\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"%o - is a cutting stone\0A\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"%o\0A\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"- cutstone2 = %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [39 x i8] c"- attackable at %1m, attack code = %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"- defendable at %1m, defend code = %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [49 x i8] c"- attack threat at %1m, attack threat code = %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [51 x i8] c"- defense threat at %1m, defense threat code = %d\0A\00", align 1
@.str.52 = private unnamed_addr constant [32 x i8] c"... adjacent worm %1m is lunch\0A\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"- is inessential\0A\00", align 1
@.str.54 = private unnamed_addr constant [17 x i8] c"- is invincible\0A\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"- is a ko stone\0A\00", align 1
@.str.56 = private unnamed_addr constant [169 x i8] c"%1m : %s dragon size %d (%f), genus %s, escape factor %d, crude status %s, status %s, moyo size %d, moyo territory value %f, safety %s, weakness pre owl %f, weakness %f\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.59 = private unnamed_addr constant [17 x i8] c", owl status %s\0A\00", align 1
@.str.60 = private unnamed_addr constant [36 x i8] c"... owl attackable at %1m, code %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"... owl defendable at %1m, code %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"... neighbors\00", align 1
@.str.63 = private unnamed_addr constant [5 x i8] c" %1m\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"board[d1] == board[d2]\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"dragon2_initialized == 0\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"((board[d1]) == 1 || (board[d1]) == 2)\00", align 1
@.str.68 = private unnamed_addr constant [40 x i8] c"joining dragon at %1m to dragon at %1m\0A\00", align 1
@dragon_escape.mx = internal global [400 x i32] zeroinitializer, align 16
@dragon_escape.mx_initialized = internal global i32 0, align 4
@.str.69 = private unnamed_addr constant [31 x i8] c"((color) == 1 || (color) == 2)\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"mx[queue[k]] == 1\00", align 1
@.str.71 = private unnamed_addr constant [55 x i8] c"  moyo value %f -> %f, escape %f -> %f, eyes %f -> %f,\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"weakness >= 0.0 && weakness <= 1.0\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(d1)\00", align 1
@.str.74 = private unnamed_addr constant [14 x i8] c"ON_BOARD1(d2)\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"worm[w].origin == w\00", align 1
@board_size = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.76 = private unnamed_addr constant [27 x i8] c"There is no dragon at %1m\0A\00", align 1
@.str.77 = private unnamed_addr constant [34 x i8] c"Dragon data not available at %1m\0A\00", align 1
@.str.78 = private unnamed_addr constant [28 x i8] c"color                   %s\0A\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"origin                  %1m\0A\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"size                    %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"effective_size          %f\0A\00", align 1
@.str.82 = private unnamed_addr constant [28 x i8] c"genus                   %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [29 x i8] c"heye                    %1m\0A\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"escape_route            %d\0A\00", align 1
@.str.85 = private unnamed_addr constant [29 x i8] c"lunch                   %1m\0A\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"crude status            %s\0A\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"owl_status              %s\0A\00", align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"status                  %s\0A\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"owl_threat_status       %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [29 x i8] c"owl_attack              %1m\0A\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"owl_attack_certain      %s\0A\00", align 1
@.str.92 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.94 = private unnamed_addr constant [29 x i8] c"owl_2nd_attack          %1m\0A\00", align 1
@.str.95 = private unnamed_addr constant [29 x i8] c"owl_defend              %1m\0A\00", align 1
@.str.96 = private unnamed_addr constant [28 x i8] c"owl_defense_certain     %s\0A\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"owl_2nd_defend          %1m\0A\00", align 1
@.str.98 = private unnamed_addr constant [28 x i8] c"semeai                  %d\0A\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"semeai_margin_of_safety %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [25 x i8] c"neighbors               \00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"%1m \00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"\0Ahostile neighbors       %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [28 x i8] c"moyo size               %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [28 x i8] c"moyo territorial value  %f\0A\00", align 1
@.str.105 = private unnamed_addr constant [28 x i8] c"safety                  %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"weakness estimate       %f\0A\00", align 1
@.str.107 = private unnamed_addr constant [25 x i8] c"strings                 \00", align 1
@.str.108 = private unnamed_addr constant [22 x i8] c"dragon2 != ((void*)0)\00", align 1
@.str.109 = private unnamed_addr constant [20 x i8] c"dragon2_initialized\00", align 1
@delta = external dso_local global [8 x i32], align 16
@.str.110 = private unnamed_addr constant [67 x i8] c"a >= 0 && a < number_of_dragons && b >= 0 && b < number_of_dragons\00", align 1
@.str.111 = private unnamed_addr constant [39 x i8] c"((board[dr]) == 1 || (board[dr]) == 2)\00", align 1
@.str.112 = private unnamed_addr constant [20 x i8] c"IS_STONE(board[ii])\00", align 1
@false_eye_territory = external dso_local global [400 x i32], align 16
@.str.113 = private unnamed_addr constant [31 x i8] c"amalgamate dragons around %1m\0A\00", align 1
@.str.114 = private unnamed_addr constant [20 x i8] c"eye[pos].color == 4\00", align 1
@.str.115 = private unnamed_addr constant [21 x i8] c"IS_STONE(board[pos])\00", align 1
@moyo_value2weakness = internal global { i32, float, float, <{ float, float, float, float, float, [16 x float] }> } { i32 5, float 0.000000e+00, float 1.500000e+01, <{ float, float, float, float, float, [16 x float] }> <{ float 1.000000e+00, float 0x3FE4CCCCC0000000, float 0x3FD3333340000000, float 0x3FC3333340000000, float 0x3FA99999A0000000, [16 x float] zeroinitializer }> }, align 4
@escape_route2weakness = internal global { i32, float, float, <{ float, float, float, float, float, [16 x float] }> } { i32 5, float 0.000000e+00, float 2.500000e+01, <{ float, float, float, float, float, [16 x float] }> <{ float 1.000000e+00, float 0x3FE3333340000000, float 0x3FD3333340000000, float 0x3FB99999A0000000, float 0x3FA99999A0000000, [16 x float] zeroinitializer }> }, align 4
@genus2weakness = internal global { i32, float, float, <{ float, float, float, float, float, float, [15 x float] }> } { i32 6, float 0.000000e+00, float 3.000000e+00, <{ float, float, float, float, float, float, [15 x float] }> <{ float 1.000000e+00, float 0x3FEE666660000000, float 0x3FE99999A0000000, float 5.000000e-01, float 0x3FC99999A0000000, float 0x3FB99999A0000000, [15 x float] zeroinitializer }> }, align 4
@number_close_white_worms = external dso_local global [400 x i32], align 16
@close_white_worms = external dso_local global [400 x [4 x i32]], align 16
@number_close_black_worms = external dso_local global [400 x i32], align 16
@close_black_worms = external dso_local global [400 x [4 x i32]], align 16
@.str.119 = private unnamed_addr constant [38 x i8] c"Computing weakness of dragon at %1m:\0A\00", align 1
@.str.120 = private unnamed_addr constant [14 x i8] c" result: %f.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dragon_data2* @dragon2_func(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ult i32 %3, 421
  br i1 %4, label %5, label %28

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %28

12:                                               ; preds = %5
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @number_of_dragons, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %35

28:                                               ; preds = %19, %12, %5, %1
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 %29, 20
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %2, align 4
  %33 = srem i32 %32, 20
  %34 = sub nsw i32 %33, 1
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 86, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  br label %35

35:                                               ; preds = %28, %27
  %36 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %38
  %40 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %36, i64 %42
  ret %struct.dragon_data2* %43
}

declare dso_local void @abortgo(i8*, i32, i8*, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @make_dragons(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.eyevalue, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.eyevalue, align 1
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.dragon_data*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.eyevalue, align 1
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.dragon_data*, align 8
  %28 = alloca %struct.eyevalue, align 1
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca %struct.dragon_data*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.eyevalue*, align 8
  %39 = alloca [160 x i32], align 16
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  call void @start_timer(i32 2)
  store i32 0, i32* @dragon2_initialized, align 4
  call void @initialize_dragon_data()
  call void @make_domains(%struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0), %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0), i32 0)
  %44 = call double @time_report(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 0, double 1.000000e+00)
  call void @find_connections()
  %45 = call double @time_report(i32 2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 0, double 1.000000e+00)
  %46 = load i32, i32* @experimental_connections, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %124, label %48

48:                                               ; preds = %3
  store i32 21, i32* %7, align 4
  br label %49

49:                                               ; preds = %119, %48
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 400
  br i1 %51, label %52, label %122

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 3
  br i1 %58, label %59, label %118

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %66, label %88

66:                                               ; preds = %59
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %68
  %70 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %88

74:                                               ; preds = %66
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @is_ko_point(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %87

85:                                               ; preds = %78, %74
  %86 = load i32, i32* %7, align 4
  call void @dragon_eye(i32 %86, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %78
  br label %88

88:                                               ; preds = %87, %66, %59
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 4
  br i1 %94, label %95, label %117

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %97
  %99 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @is_ko_point(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %116

114:                                              ; preds = %107, %103
  %115 = load i32, i32* %7, align 4
  call void @dragon_eye(i32 %115, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %107
  br label %117

117:                                              ; preds = %116, %95, %88
  br label %118

118:                                              ; preds = %117, %52
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %49, !llvm.loop !4

122:                                              ; preds = %49
  %123 = call double @time_report(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 0, double 1.000000e+00)
  br label %124

124:                                              ; preds = %122, %3
  call void @initialize_supplementary_dragon_data()
  store i32 21, i32* %7, align 4
  br label %125

125:                                              ; preds = %270, %124
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %126, 400
  br i1 %127, label %128, label %273

128:                                              ; preds = %125
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = icmp ne i32 %133, 3
  br i1 %134, label %135, label %269

135:                                              ; preds = %128
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %137
  %139 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %157, label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %152
  %154 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %153, i32 0, i32 8
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %150, %143, %135
  br label %270

158:                                              ; preds = %150
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %11, align 4
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %166, i32 0, i32 18
  %168 = getelementptr inbounds [10 x i32], [10 x i32]* %167, i64 0, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %158
  br label %270

172:                                              ; preds = %158
  %173 = load i32, i32* %4, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %4, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %181

178:                                              ; preds = %175, %172
  %179 = load i32, i32* %7, align 4
  %180 = load i32, i32* %11, align 4
  call void @add_lunch(i32 %179, i32 %180)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %183
  %185 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %12, align 4
  %187 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %188 = load i32, i32* %12, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %189
  %191 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %187, i64 %193
  %195 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %194, i32 0, i32 12
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %13, align 4
  %197 = load i32, i32* %13, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %235, label %199

199:                                              ; preds = %181
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %201
  %203 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %13, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %207, i32 0, i32 9
  %209 = load i32, i32* %208, align 4
  %210 = icmp sgt i32 %204, %209
  br i1 %210, label %235, label %211

211:                                              ; preds = %199
  %212 = load i32, i32* %11, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %213
  %215 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %214, i32 0, i32 9
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %218
  %220 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 4
  %222 = icmp eq i32 %216, %221
  br i1 %222, label %223, label %268

223:                                              ; preds = %211
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %230
  %232 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = icmp slt i32 %228, %233
  br i1 %234, label %235, label %268

235:                                              ; preds = %223, %199, %181
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %237
  %239 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %242 = load i32, i32* %12, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %243
  %245 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %241, i64 %247
  %249 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %248, i32 0, i32 12
  store i32 %240, i32* %249, align 4
  %250 = load i32, i32* @verbose, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %235
  br label %267

253:                                              ; preds = %235
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %11, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %257
  %259 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %262
  %264 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %263, i32 0, i32 9
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %254, i32 %255, i32 %260, i32 %265)
  br label %267

267:                                              ; preds = %253, %252
  br label %268

268:                                              ; preds = %267, %223, %211
  br label %269

269:                                              ; preds = %268, %128
  br label %270

270:                                              ; preds = %269, %171, %157
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %125, !llvm.loop !6

273:                                              ; preds = %125
  call void @find_half_and_false_eyes(i32 2, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i8* null)
  call void @find_half_and_false_eyes(i32 1, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i8* null)
  call void @modify_eye_spaces()
  store i32 21, i32* %7, align 4
  br label %274

274:                                              ; preds = %374, %273
  %275 = load i32, i32* %7, align 4
  %276 = icmp slt i32 %275, 400
  br i1 %276, label %277, label %377

277:                                              ; preds = %274
  %278 = load i32, i32* %7, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp ne i32 %282, 3
  br i1 %283, label %285, label %284

284:                                              ; preds = %277
  br label %374

285:                                              ; preds = %277
  %286 = load i32, i32* %7, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %287
  %289 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 5
  br i1 %291, label %292, label %329

292:                                              ; preds = %285
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %294
  %296 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %7, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %329

300:                                              ; preds = %292
  %301 = load i32, i32* %7, align 4
  %302 = load i32, i32* %4, align 4
  call void @compute_eyes(i32 %301, %struct.eyevalue* %14, i32* %15, i32* %16, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 1, i32 %302)
  %303 = load i32, i32* @debug, align 4
  %304 = and i32 %303, 2
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %307, label %306

306:                                              ; preds = %300
  br label %311

307:                                              ; preds = %300
  %308 = load i32, i32* %7, align 4
  %309 = call i8* @eyevalue_to_string(%struct.eyevalue* %14)
  %310 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %308, i8* %309)
  br label %311

311:                                              ; preds = %307, %306
  %312 = load i32, i32* %7, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %313
  %315 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %314, i32 0, i32 4
  %316 = bitcast %struct.eyevalue* %315 to i8*
  %317 = bitcast %struct.eyevalue* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %316, i8* align 1 %317, i64 4, i1 false)
  %318 = load i32, i32* %15, align 4
  %319 = load i32, i32* %7, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %320
  %322 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %321, i32 0, i32 5
  store i32 %318, i32* %322, align 4
  %323 = load i32, i32* %16, align 4
  %324 = load i32, i32* %7, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %325
  %327 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %326, i32 0, i32 6
  store i32 %323, i32* %327, align 4
  %328 = load i32, i32* %7, align 4
  call void @propagate_eye(i32 %328, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0))
  br label %329

329:                                              ; preds = %311, %292, %285
  %330 = load i32, i32* %7, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %331
  %333 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 4
  %335 = icmp eq i32 %334, 4
  br i1 %335, label %336, label %373

336:                                              ; preds = %329
  %337 = load i32, i32* %7, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %338
  %340 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* %7, align 4
  %343 = icmp eq i32 %341, %342
  br i1 %343, label %344, label %373

344:                                              ; preds = %336
  %345 = load i32, i32* %7, align 4
  %346 = load i32, i32* %4, align 4
  call void @compute_eyes(i32 %345, %struct.eyevalue* %17, i32* %18, i32* %19, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0), %struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 1, i32 %346)
  %347 = load i32, i32* @debug, align 4
  %348 = and i32 %347, 2
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %344
  br label %355

351:                                              ; preds = %344
  %352 = load i32, i32* %7, align 4
  %353 = call i8* @eyevalue_to_string(%struct.eyevalue* %17)
  %354 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %352, i8* %353)
  br label %355

355:                                              ; preds = %351, %350
  %356 = load i32, i32* %7, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %357
  %359 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %358, i32 0, i32 4
  %360 = bitcast %struct.eyevalue* %359 to i8*
  %361 = bitcast %struct.eyevalue* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %360, i8* align 1 %361, i64 4, i1 false)
  %362 = load i32, i32* %18, align 4
  %363 = load i32, i32* %7, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %364
  %366 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %365, i32 0, i32 5
  store i32 %362, i32* %366, align 4
  %367 = load i32, i32* %19, align 4
  %368 = load i32, i32* %7, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %369
  %371 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %370, i32 0, i32 6
  store i32 %367, i32* %371, align 4
  %372 = load i32, i32* %7, align 4
  call void @propagate_eye(i32 %372, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0))
  br label %373

373:                                              ; preds = %355, %336, %329
  br label %374

374:                                              ; preds = %373, %284
  %375 = load i32, i32* %7, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %7, align 4
  br label %274, !llvm.loop !7

377:                                              ; preds = %274
  call void @analyze_false_eye_territory()
  store i32 21, i32* %7, align 4
  br label %378

378:                                              ; preds = %580, %377
  %379 = load i32, i32* %7, align 4
  %380 = icmp slt i32 %379, 400
  br i1 %380, label %381, label %583

381:                                              ; preds = %378
  %382 = load i32, i32* %7, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %383
  %385 = load i8, i8* %384, align 1
  %386 = zext i8 %385 to i32
  %387 = icmp ne i32 %386, 3
  br i1 %387, label %389, label %388

388:                                              ; preds = %381
  br label %580

389:                                              ; preds = %381
  %390 = load i32, i32* %7, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %391
  %393 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = icmp eq i32 %394, 5
  br i1 %395, label %396, label %484

396:                                              ; preds = %389
  %397 = load i32, i32* %7, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %398
  %400 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %399, i32 0, i32 3
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* %7, align 4
  %403 = icmp eq i32 %401, %402
  br i1 %403, label %404, label %484

404:                                              ; preds = %396
  %405 = load i32, i32* %7, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %406
  %408 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %407, i32 0, i32 3
  %409 = load i32, i32* %408, align 4
  %410 = call i32 @find_eye_dragons(i32 %409, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0), i32 2, i32* %8, i32 1)
  %411 = icmp eq i32 %410, 1
  br i1 %411, label %412, label %484

412:                                              ; preds = %404
  %413 = load i32, i32* %8, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %414
  %416 = load i8, i8* %415, align 1
  %417 = zext i8 %416 to i32
  %418 = icmp eq i32 %417, 2
  br i1 %418, label %419, label %420

419:                                              ; preds = %412
  br label %421

420:                                              ; preds = %412
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 -1, i32 -1)
  br label %421

421:                                              ; preds = %420, %419
  %422 = load i32, i32* @verbose, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %425, label %424

424:                                              ; preds = %421
  br label %429

425:                                              ; preds = %421
  %426 = load i32, i32* %7, align 4
  %427 = load i32, i32* %8, align 4
  %428 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %426, i32 %427)
  br label %429

429:                                              ; preds = %425, %424
  %430 = load i32, i32* %7, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %431
  %433 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %432, i32 0, i32 4
  %434 = call i32 @eye_move_urgency(%struct.eyevalue* %433)
  %435 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %436 = load i32, i32* %8, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %437
  %439 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %435, i64 %441
  %443 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %442, i32 0, i32 10
  %444 = call i32 @eye_move_urgency(%struct.eyevalue* %443)
  %445 = icmp sgt i32 %434, %444
  br i1 %445, label %446, label %461

446:                                              ; preds = %429
  %447 = load i32, i32* %7, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %448
  %450 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %449, i32 0, i32 6
  %451 = load i32, i32* %450, align 4
  %452 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %453 = load i32, i32* %8, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %454
  %456 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %455, i32 0, i32 1
  %457 = load i32, i32* %456, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %452, i64 %458
  %460 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %459, i32 0, i32 11
  store i32 %451, i32* %460, align 4
  br label %461

461:                                              ; preds = %446, %429
  %462 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %463 = load i32, i32* %8, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %464
  %466 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %465, i32 0, i32 1
  %467 = load i32, i32* %466, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %462, i64 %468
  %470 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %469, i32 0, i32 10
  %471 = load i32, i32* %7, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %472
  %474 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %473, i32 0, i32 4
  %475 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %476 = load i32, i32* %8, align 4
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %477
  %479 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %475, i64 %481
  %483 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %482, i32 0, i32 10
  call void @add_eyevalues(%struct.eyevalue* %470, %struct.eyevalue* %474, %struct.eyevalue* %483)
  br label %484

484:                                              ; preds = %461, %404, %396, %389
  %485 = load i32, i32* %7, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %486
  %488 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %487, i32 0, i32 0
  %489 = load i32, i32* %488, align 4
  %490 = icmp eq i32 %489, 4
  br i1 %490, label %491, label %579

491:                                              ; preds = %484
  %492 = load i32, i32* %7, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %493
  %495 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %494, i32 0, i32 3
  %496 = load i32, i32* %495, align 4
  %497 = load i32, i32* %7, align 4
  %498 = icmp eq i32 %496, %497
  br i1 %498, label %499, label %579

499:                                              ; preds = %491
  %500 = load i32, i32* %7, align 4
  %501 = sext i32 %500 to i64
  %502 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %501
  %503 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @find_eye_dragons(i32 %504, %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0), i32 1, i32* %8, i32 1)
  %506 = icmp eq i32 %505, 1
  br i1 %506, label %507, label %579

507:                                              ; preds = %499
  %508 = load i32, i32* %8, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %509
  %511 = load i8, i8* %510, align 1
  %512 = zext i8 %511 to i32
  %513 = icmp eq i32 %512, 1
  br i1 %513, label %514, label %515

514:                                              ; preds = %507
  br label %516

515:                                              ; preds = %507
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 266, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 -1, i32 -1)
  br label %516

516:                                              ; preds = %515, %514
  %517 = load i32, i32* @verbose, align 4
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %520, label %519

519:                                              ; preds = %516
  br label %524

520:                                              ; preds = %516
  %521 = load i32, i32* %7, align 4
  %522 = load i32, i32* %8, align 4
  %523 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %521, i32 %522)
  br label %524

524:                                              ; preds = %520, %519
  %525 = load i32, i32* %7, align 4
  %526 = sext i32 %525 to i64
  %527 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %526
  %528 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %527, i32 0, i32 4
  %529 = call i32 @eye_move_urgency(%struct.eyevalue* %528)
  %530 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %531 = load i32, i32* %8, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %532
  %534 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %533, i32 0, i32 1
  %535 = load i32, i32* %534, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %530, i64 %536
  %538 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %537, i32 0, i32 10
  %539 = call i32 @eye_move_urgency(%struct.eyevalue* %538)
  %540 = icmp sgt i32 %529, %539
  br i1 %540, label %541, label %556

541:                                              ; preds = %524
  %542 = load i32, i32* %7, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %543
  %545 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %544, i32 0, i32 6
  %546 = load i32, i32* %545, align 4
  %547 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %548 = load i32, i32* %8, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %549
  %551 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %550, i32 0, i32 1
  %552 = load i32, i32* %551, align 4
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %547, i64 %553
  %555 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %554, i32 0, i32 11
  store i32 %546, i32* %555, align 4
  br label %556

556:                                              ; preds = %541, %524
  %557 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %558 = load i32, i32* %8, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %559
  %561 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %560, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %557, i64 %563
  %565 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %564, i32 0, i32 10
  %566 = load i32, i32* %7, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %567
  %569 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %568, i32 0, i32 4
  %570 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %571 = load i32, i32* %8, align 4
  %572 = sext i32 %571 to i64
  %573 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %572
  %574 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %570, i64 %576
  %578 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %577, i32 0, i32 10
  call void @add_eyevalues(%struct.eyevalue* %565, %struct.eyevalue* %569, %struct.eyevalue* %578)
  br label %579

579:                                              ; preds = %556, %499, %491, %484
  br label %580

580:                                              ; preds = %579, %388
  %581 = load i32, i32* %7, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %7, align 4
  br label %378, !llvm.loop !8

583:                                              ; preds = %378
  store i32 21, i32* %7, align 4
  br label %584

584:                                              ; preds = %622, %583
  %585 = load i32, i32* %7, align 4
  %586 = icmp slt i32 %585, 400
  br i1 %586, label %587, label %625

587:                                              ; preds = %584
  %588 = load i32, i32* %7, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %589
  %591 = load i8, i8* %590, align 1
  %592 = zext i8 %591 to i32
  %593 = icmp eq i32 %592, 1
  br i1 %593, label %601, label %594

594:                                              ; preds = %587
  %595 = load i32, i32* %7, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %596
  %598 = load i8, i8* %597, align 1
  %599 = zext i8 %598 to i32
  %600 = icmp eq i32 %599, 2
  br i1 %600, label %601, label %621

601:                                              ; preds = %594, %587
  %602 = load i32, i32* %7, align 4
  %603 = sext i32 %602 to i64
  %604 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %603
  %605 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = load i32, i32* %7, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %621

609:                                              ; preds = %601
  %610 = load i32, i32* %7, align 4
  %611 = call i32 @compute_escape(i32 %610, i32 0)
  %612 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %613 = load i32, i32* %7, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %614
  %616 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %615, i32 0, i32 1
  %617 = load i32, i32* %616, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %612, i64 %618
  %620 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %619, i32 0, i32 9
  store i32 %611, i32* %620, align 4
  br label %621

621:                                              ; preds = %609, %601, %594
  br label %622

622:                                              ; preds = %621
  %623 = load i32, i32* %7, align 4
  %624 = add nsw i32 %623, 1
  store i32 %624, i32* %7, align 4
  br label %584, !llvm.loop !9

625:                                              ; preds = %584
  call void @resegment_initial_influence()
  call void @compute_refined_dragon_weaknesses()
  store i32 0, i32* %9, align 4
  br label %626

626:                                              ; preds = %642, %625
  %627 = load i32, i32* %9, align 4
  %628 = load i32, i32* @number_of_dragons, align 4
  %629 = icmp slt i32 %627, %628
  br i1 %629, label %630, label %645

630:                                              ; preds = %626
  %631 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %632 = load i32, i32* %9, align 4
  %633 = sext i32 %632 to i64
  %634 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %631, i64 %633
  %635 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %634, i32 0, i32 7
  %636 = load float, float* %635, align 4
  %637 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %638 = load i32, i32* %9, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %637, i64 %639
  %641 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %640, i32 0, i32 8
  store float %636, float* %641, align 4
  br label %642

642:                                              ; preds = %630
  %643 = load i32, i32* %9, align 4
  %644 = add nsw i32 %643, 1
  store i32 %644, i32* %9, align 4
  br label %626, !llvm.loop !10

645:                                              ; preds = %626
  store i32 21, i32* %7, align 4
  br label %646

646:                                              ; preds = %680, %645
  %647 = load i32, i32* %7, align 4
  %648 = icmp slt i32 %647, 400
  br i1 %648, label %649, label %683

649:                                              ; preds = %646
  %650 = load i32, i32* %7, align 4
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %651
  %653 = load i8, i8* %652, align 1
  %654 = zext i8 %653 to i32
  %655 = icmp ne i32 %654, 3
  br i1 %655, label %656, label %679

656:                                              ; preds = %649
  %657 = load i32, i32* %7, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %658
  %660 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %659, i32 0, i32 2
  %661 = load i32, i32* %660, align 4
  %662 = load i32, i32* %7, align 4
  %663 = icmp eq i32 %661, %662
  br i1 %663, label %664, label %678

664:                                              ; preds = %656
  %665 = load i32, i32* %7, align 4
  %666 = sext i32 %665 to i64
  %667 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %666
  %668 = load i8, i8* %667, align 1
  %669 = zext i8 %668 to i32
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %678

671:                                              ; preds = %664
  %672 = load i32, i32* %7, align 4
  %673 = call i32 @compute_crude_status(i32 %672)
  %674 = load i32, i32* %7, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %675
  %677 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %676, i32 0, i32 5
  store i32 %673, i32* %677, align 4
  br label %678

678:                                              ; preds = %671, %664, %656
  br label %679

679:                                              ; preds = %678, %649
  br label %680

680:                                              ; preds = %679
  %681 = load i32, i32* %7, align 4
  %682 = add nsw i32 %681, 1
  store i32 %682, i32* %7, align 4
  br label %646, !llvm.loop !11

683:                                              ; preds = %646
  store i32 21, i32* %7, align 4
  br label %684

684:                                              ; preds = %709, %683
  %685 = load i32, i32* %7, align 4
  %686 = icmp slt i32 %685, 400
  br i1 %686, label %687, label %712

687:                                              ; preds = %684
  %688 = load i32, i32* %7, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %689
  %691 = load i8, i8* %690, align 1
  %692 = zext i8 %691 to i32
  %693 = icmp ne i32 %692, 3
  br i1 %693, label %694, label %708

694:                                              ; preds = %687
  %695 = load i32, i32* %7, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %696
  store %struct.dragon_data* %697, %struct.dragon_data** %20, align 8
  %698 = load i32, i32* %7, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %699
  %701 = load %struct.dragon_data*, %struct.dragon_data** %20, align 8
  %702 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %701, i32 0, i32 2
  %703 = load i32, i32* %702, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %704
  %706 = bitcast %struct.dragon_data* %700 to i8*
  %707 = bitcast %struct.dragon_data* %705 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %706, i8* align 4 %707, i64 76, i1 false)
  br label %708

708:                                              ; preds = %694, %687
  br label %709

709:                                              ; preds = %708
  %710 = load i32, i32* %7, align 4
  %711 = add nsw i32 %710, 1
  store i32 %711, i32* %7, align 4
  br label %684, !llvm.loop !12

712:                                              ; preds = %684
  call void @find_neighbor_dragons()
  %713 = call double @time_report(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 0, double 1.000000e+00)
  %714 = load i32, i32* %5, align 4
  %715 = icmp ne i32 %714, 0
  br i1 %715, label %716, label %717

716:                                              ; preds = %712
  br label %1780

717:                                              ; preds = %712
  call void @purge_persistent_owl_cache()
  store i32 21, i32* %7, align 4
  br label %718

718:                                              ; preds = %980, %717
  %719 = load i32, i32* %7, align 4
  %720 = icmp slt i32 %719, 400
  br i1 %720, label %721, label %983

721:                                              ; preds = %718
  %722 = load i32, i32* %7, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %723
  %725 = load i8, i8* %724, align 1
  %726 = zext i8 %725 to i32
  %727 = icmp ne i32 %726, 3
  br i1 %727, label %728, label %979

728:                                              ; preds = %721
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  call void @set_eyevalue(%struct.eyevalue* %23, i32 0, i32 0, i32 0, i32 0)
  %729 = load i32, i32* %7, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %730
  %732 = load i8, i8* %731, align 1
  %733 = zext i8 %732 to i32
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %743, label %735

735:                                              ; preds = %728
  %736 = load i32, i32* %7, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %737
  %739 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %738, i32 0, i32 2
  %740 = load i32, i32* %739, align 4
  %741 = load i32, i32* %7, align 4
  %742 = icmp ne i32 %740, %741
  br i1 %742, label %743, label %744

743:                                              ; preds = %735, %728
  br label %980

744:                                              ; preds = %735
  %745 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %746 = load i32, i32* %7, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %747
  %749 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %748, i32 0, i32 1
  %750 = load i32, i32* %749, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %745, i64 %751
  %753 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %752, i32 0, i32 5
  %754 = load float, float* %753, align 4
  %755 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %756 = load i32, i32* %7, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %757
  %759 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %758, i32 0, i32 1
  %760 = load i32, i32* %759, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %755, i64 %761
  %763 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %762, i32 0, i32 9
  %764 = load i32, i32* %763, align 4
  %765 = sub nsw i32 %764, 10
  %766 = sitofp i32 %765 to float
  %767 = call float @crude_dragon_weakness(i32 1, %struct.eyevalue* %23, i32 0, float %754, float %766)
  %768 = fpext float %767 to double
  %769 = load i32, i32* %7, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %770
  %772 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %771, i32 0, i32 4
  %773 = load float, float* %772, align 4
  %774 = fpext float %773 to double
  %775 = fmul double 1.000000e-02, %774
  %776 = fsub double 3.200000e-01, %775
  %777 = fcmp olt double 1.200000e-01, %776
  br i1 %777, label %778, label %787

778:                                              ; preds = %744
  %779 = load i32, i32* %7, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %780
  %782 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %781, i32 0, i32 4
  %783 = load float, float* %782, align 4
  %784 = fpext float %783 to double
  %785 = fmul double 1.000000e-02, %784
  %786 = fsub double 3.200000e-01, %785
  br label %788

787:                                              ; preds = %744
  br label %788

788:                                              ; preds = %787, %778
  %789 = phi double [ %786, %778 ], [ 1.200000e-01, %787 ]
  %790 = fadd double 1.000000e-05, %789
  %791 = fcmp olt double %768, %790
  br i1 %791, label %792, label %805

792:                                              ; preds = %788
  %793 = load i32, i32* %7, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %794
  %796 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %795, i32 0, i32 7
  store i32 4, i32* %796, align 4
  %797 = load i32, i32* %7, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %798
  %800 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %799, i32 0, i32 8
  store i32 0, i32* %800, align 4
  %801 = load i32, i32* %7, align 4
  %802 = sext i32 %801 to i64
  %803 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %802
  %804 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %803, i32 0, i32 12
  store i32 0, i32* %804, align 4
  br label %978

805:                                              ; preds = %788
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  call void @start_timer(i32 3)
  %806 = load i32, i32* %7, align 4
  %807 = load i32, i32* %7, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %808
  %810 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %809, i32 0, i32 10
  %811 = call i32 @owl_attack(i32 %806, i32* %21, i32* %810, i32* %26)
  store i32 %811, i32* %24, align 4
  %812 = load i32, i32* %24, align 4
  %813 = icmp ne i32 %812, 0
  br i1 %813, label %814, label %929

814:                                              ; preds = %805
  %815 = load i32, i32* %21, align 4
  %816 = load i32, i32* %7, align 4
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %817
  %819 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %818, i32 0, i32 8
  store i32 %815, i32* %819, align 4
  %820 = load i32, i32* %24, align 4
  %821 = load i32, i32* %7, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %822
  %824 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %823, i32 0, i32 9
  store i32 %820, i32* %824, align 4
  %825 = load i32, i32* %26, align 4
  %826 = load i32, i32* %7, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %827
  %829 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %828, i32 0, i32 17
  store i32 %825, i32* %829, align 4
  %830 = load i32, i32* %21, align 4
  %831 = icmp ne i32 %830, 0
  br i1 %831, label %832, label %912

832:                                              ; preds = %814
  store i32 0, i32* %26, align 4
  %833 = load i32, i32* %7, align 4
  %834 = load i32, i32* %7, align 4
  %835 = sext i32 %834 to i64
  %836 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %835
  %837 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %836, i32 0, i32 14
  %838 = call i32 @owl_defend(i32 %833, i32* %22, i32* %837, i32* %26)
  store i32 %838, i32* %25, align 4
  %839 = load i32, i32* %25, align 4
  %840 = icmp ne i32 %839, 0
  br i1 %840, label %841, label %911

841:                                              ; preds = %832
  %842 = load i32, i32* %22, align 4
  %843 = icmp ne i32 %842, 0
  br i1 %843, label %844, label %868

844:                                              ; preds = %841
  %845 = load i32, i32* %24, align 4
  %846 = icmp eq i32 %845, 3
  %847 = zext i1 %846 to i64
  %848 = select i1 %846, i32 1, i32 2
  %849 = load i32, i32* %7, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %850
  %852 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %851, i32 0, i32 7
  store i32 %848, i32* %852, align 4
  %853 = load i32, i32* %22, align 4
  %854 = load i32, i32* %7, align 4
  %855 = sext i32 %854 to i64
  %856 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %855
  %857 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %856, i32 0, i32 12
  store i32 %853, i32* %857, align 4
  %858 = load i32, i32* %25, align 4
  %859 = load i32, i32* %7, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %860
  %862 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %861, i32 0, i32 13
  store i32 %858, i32* %862, align 4
  %863 = load i32, i32* %26, align 4
  %864 = load i32, i32* %7, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %865
  %867 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %866, i32 0, i32 18
  store i32 %863, i32* %867, align 4
  br label %910

868:                                              ; preds = %841
  %869 = load i32, i32* %24, align 4
  %870 = icmp eq i32 %869, 3
  %871 = zext i1 %870 to i64
  %872 = select i1 %870, i32 1, i32 2
  %873 = load i32, i32* %7, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %874
  %876 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %875, i32 0, i32 7
  store i32 %872, i32* %876, align 4
  %877 = load i32, i32* @debug, align 4
  %878 = and i32 %877, 4096
  %879 = icmp ne i32 %878, 0
  br i1 %879, label %881, label %880

880:                                              ; preds = %868
  br label %884

881:                                              ; preds = %868
  %882 = load i32, i32* %7, align 4
  %883 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i64 0, i64 0), i32 %882)
  br label %884

884:                                              ; preds = %881, %880
  %885 = load i32, i32* %7, align 4
  %886 = sext i32 %885 to i64
  %887 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %886
  %888 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %887, i32 0, i32 8
  %889 = load i32, i32* %888, align 4
  %890 = load i32, i32* %7, align 4
  %891 = call i32 @owl_does_defend(i32 %889, i32 %890, i32* null)
  store i32 %891, i32* %25, align 4
  %892 = load i32, i32* %25, align 4
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %894, label %909

894:                                              ; preds = %884
  %895 = load i32, i32* %7, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %896
  %898 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %897, i32 0, i32 8
  %899 = load i32, i32* %898, align 4
  %900 = load i32, i32* %7, align 4
  %901 = sext i32 %900 to i64
  %902 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %901
  %903 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %902, i32 0, i32 12
  store i32 %899, i32* %903, align 4
  %904 = load i32, i32* %25, align 4
  %905 = load i32, i32* %7, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %906
  %908 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %907, i32 0, i32 13
  store i32 %904, i32* %908, align 4
  br label %909

909:                                              ; preds = %894, %884
  br label %910

910:                                              ; preds = %909, %844
  br label %911

911:                                              ; preds = %910, %832
  br label %912

912:                                              ; preds = %911, %814
  %913 = load i32, i32* %25, align 4
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %928

915:                                              ; preds = %912
  %916 = load i32, i32* %7, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %917
  %919 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %918, i32 0, i32 7
  store i32 0, i32* %919, align 4
  %920 = load i32, i32* %7, align 4
  %921 = sext i32 %920 to i64
  %922 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %921
  %923 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %922, i32 0, i32 12
  store i32 0, i32* %923, align 4
  %924 = load i32, i32* %7, align 4
  %925 = sext i32 %924 to i64
  %926 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %925
  %927 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %926, i32 0, i32 13
  store i32 0, i32* %927, align 4
  br label %928

928:                                              ; preds = %915, %912
  br label %977

929:                                              ; preds = %805
  %930 = load i32, i32* %7, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %931
  %933 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %932, i32 0, i32 10
  %934 = load i32, i32* %933, align 4
  %935 = icmp ne i32 %934, 0
  br i1 %935, label %962, label %936

936:                                              ; preds = %929
  store i32 0, i32* %26, align 4
  %937 = load i32, i32* %7, align 4
  %938 = load i32, i32* %7, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %939
  %941 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %940, i32 0, i32 14
  %942 = call i32 @owl_defend(i32 %937, i32* %22, i32* %941, i32* %26)
  store i32 %942, i32* %25, align 4
  %943 = load i32, i32* %25, align 4
  %944 = icmp ne i32 %943, 0
  br i1 %944, label %945, label %961

945:                                              ; preds = %936
  %946 = load i32, i32* %22, align 4
  %947 = load i32, i32* %7, align 4
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %948
  %950 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %949, i32 0, i32 12
  store i32 %946, i32* %950, align 4
  %951 = load i32, i32* %25, align 4
  %952 = load i32, i32* %7, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %953
  %955 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %954, i32 0, i32 13
  store i32 %951, i32* %955, align 4
  %956 = load i32, i32* %26, align 4
  %957 = load i32, i32* %7, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %958
  %960 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %959, i32 0, i32 18
  store i32 %956, i32* %960, align 4
  br label %961

961:                                              ; preds = %945, %936
  br label %962

962:                                              ; preds = %961, %929
  %963 = load i32, i32* %7, align 4
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %964
  %966 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %965, i32 0, i32 7
  store i32 1, i32* %966, align 4
  %967 = load i32, i32* %7, align 4
  %968 = sext i32 %967 to i64
  %969 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %968
  %970 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %969, i32 0, i32 8
  store i32 0, i32* %970, align 4
  %971 = load i32, i32* %7, align 4
  %972 = sext i32 %971 to i64
  %973 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %972
  %974 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %973, i32 0, i32 9
  store i32 0, i32* %974, align 4
  %975 = load i32, i32* %7, align 4
  %976 = call double @time_report(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %975, double 1.000000e+00)
  br label %977

977:                                              ; preds = %962, %928
  br label %978

978:                                              ; preds = %977, %792
  br label %979

979:                                              ; preds = %978, %721
  br label %980

980:                                              ; preds = %979, %743
  %981 = load i32, i32* %7, align 4
  %982 = add nsw i32 %981, 1
  store i32 %982, i32* %7, align 4
  br label %718, !llvm.loop !13

983:                                              ; preds = %718
  %984 = call double @time_report(i32 2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 0, double 1.000000e+00)
  store i32 21, i32* %7, align 4
  br label %985

985:                                              ; preds = %1054, %983
  %986 = load i32, i32* %7, align 4
  %987 = icmp slt i32 %986, 400
  br i1 %987, label %988, label %1057

988:                                              ; preds = %985
  %989 = load i32, i32* %7, align 4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %990
  %992 = load i8, i8* %991, align 1
  %993 = zext i8 %992 to i32
  %994 = icmp ne i32 %993, 3
  br i1 %994, label %995, label %1053

995:                                              ; preds = %988
  %996 = load i32, i32* %7, align 4
  %997 = sext i32 %996 to i64
  %998 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %997
  %999 = load i8, i8* %998, align 1
  %1000 = zext i8 %999 to i32
  %1001 = icmp eq i32 %1000, 1
  br i1 %1001, label %1009, label %1002

1002:                                             ; preds = %995
  %1003 = load i32, i32* %7, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1004
  %1006 = load i8, i8* %1005, align 1
  %1007 = zext i8 %1006 to i32
  %1008 = icmp eq i32 %1007, 2
  br i1 %1008, label %1009, label %1052

1009:                                             ; preds = %1002, %995
  %1010 = load i32, i32* %7, align 4
  %1011 = sext i32 %1010 to i64
  %1012 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1011
  %1013 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1012, i32 0, i32 7
  %1014 = load i32, i32* %1013, align 4
  %1015 = icmp ne i32 %1014, 4
  br i1 %1015, label %1016, label %1026

1016:                                             ; preds = %1009
  %1017 = load i32, i32* %7, align 4
  %1018 = sext i32 %1017 to i64
  %1019 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1018
  %1020 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1019, i32 0, i32 7
  %1021 = load i32, i32* %1020, align 4
  %1022 = load i32, i32* %7, align 4
  %1023 = sext i32 %1022 to i64
  %1024 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1023
  %1025 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1024, i32 0, i32 16
  store i32 %1021, i32* %1025, align 4
  br label %1051

1026:                                             ; preds = %1009
  %1027 = load i32, i32* %7, align 4
  %1028 = sext i32 %1027 to i64
  %1029 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1028
  %1030 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1029, i32 0, i32 5
  %1031 = load i32, i32* %1030, align 4
  %1032 = icmp eq i32 %1031, 0
  br i1 %1032, label %1040, label %1033

1033:                                             ; preds = %1026
  %1034 = load i32, i32* %7, align 4
  %1035 = sext i32 %1034 to i64
  %1036 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1035
  %1037 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1036, i32 0, i32 5
  %1038 = load i32, i32* %1037, align 4
  %1039 = icmp eq i32 %1038, 2
  br i1 %1039, label %1040, label %1045

1040:                                             ; preds = %1033, %1026
  %1041 = load i32, i32* %7, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1042
  %1044 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1043, i32 0, i32 16
  store i32 3, i32* %1044, align 4
  br label %1050

1045:                                             ; preds = %1033
  %1046 = load i32, i32* %7, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1047
  %1049 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1048, i32 0, i32 16
  store i32 1, i32* %1049, align 4
  br label %1050

1050:                                             ; preds = %1045, %1040
  br label %1051

1051:                                             ; preds = %1050, %1016
  br label %1052

1052:                                             ; preds = %1051, %1002
  br label %1053

1053:                                             ; preds = %1052, %988
  br label %1054

1054:                                             ; preds = %1053
  %1055 = load i32, i32* %7, align 4
  %1056 = add nsw i32 %1055, 1
  store i32 %1056, i32* %7, align 4
  br label %985, !llvm.loop !14

1057:                                             ; preds = %985
  %1058 = call double @time_report(i32 2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 0, double 1.000000e+00)
  store i32 21, i32* %7, align 4
  br label %1059

1059:                                             ; preds = %1084, %1057
  %1060 = load i32, i32* %7, align 4
  %1061 = icmp slt i32 %1060, 400
  br i1 %1061, label %1062, label %1087

1062:                                             ; preds = %1059
  %1063 = load i32, i32* %7, align 4
  %1064 = sext i32 %1063 to i64
  %1065 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1064
  %1066 = load i8, i8* %1065, align 1
  %1067 = zext i8 %1066 to i32
  %1068 = icmp ne i32 %1067, 3
  br i1 %1068, label %1069, label %1083

1069:                                             ; preds = %1062
  %1070 = load i32, i32* %7, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1071
  store %struct.dragon_data* %1072, %struct.dragon_data** %27, align 8
  %1073 = load i32, i32* %7, align 4
  %1074 = sext i32 %1073 to i64
  %1075 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1074
  %1076 = load %struct.dragon_data*, %struct.dragon_data** %27, align 8
  %1077 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1076, i32 0, i32 2
  %1078 = load i32, i32* %1077, align 4
  %1079 = sext i32 %1078 to i64
  %1080 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1079
  %1081 = bitcast %struct.dragon_data* %1075 to i8*
  %1082 = bitcast %struct.dragon_data* %1080 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1081, i8* align 4 %1082, i64 76, i1 false)
  br label %1083

1083:                                             ; preds = %1069, %1062
  br label %1084

1084:                                             ; preds = %1083
  %1085 = load i32, i32* %7, align 4
  %1086 = add nsw i32 %1085, 1
  store i32 %1086, i32* %7, align 4
  br label %1059, !llvm.loop !15

1087:                                             ; preds = %1059
  %1088 = call i32 @get_last_move()
  store i32 %1088, i32* %10, align 4
  %1089 = load i32, i32* %10, align 4
  %1090 = icmp ne i32 %1089, 0
  br i1 %1090, label %1091, label %1110

1091:                                             ; preds = %1087
  %1092 = load i32, i32* %10, align 4
  %1093 = sext i32 %1092 to i64
  %1094 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1093
  %1095 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1094, i32 0, i32 16
  %1096 = load i32, i32* %1095, align 4
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1098, label %1110

1098:                                             ; preds = %1091
  %1099 = load i32, i32* %10, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1100
  %1102 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1101, i32 0, i32 2
  %1103 = load i32, i32* %1102, align 4
  store i32 %1103, i32* @thrashing_dragon, align 4
  %1104 = load i32, i32* %6, align 4
  %1105 = icmp ne i32 %1104, 0
  br i1 %1105, label %1106, label %1109

1106:                                             ; preds = %1098
  %1107 = load i32, i32* @thrashing_dragon, align 4
  %1108 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i32 %1107)
  br label %1109

1109:                                             ; preds = %1106, %1098
  br label %1111

1110:                                             ; preds = %1091, %1087
  store i32 0, i32* @thrashing_dragon, align 4
  br label %1111

1111:                                             ; preds = %1110, %1109
  store i32 21, i32* %7, align 4
  br label %1112

1112:                                             ; preds = %1298, %1111
  %1113 = load i32, i32* %7, align 4
  %1114 = icmp slt i32 %1113, 400
  br i1 %1114, label %1115, label %1301

1115:                                             ; preds = %1112
  %1116 = load i32, i32* %7, align 4
  %1117 = sext i32 %1116 to i64
  %1118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1117
  %1119 = load i8, i8* %1118, align 1
  %1120 = zext i8 %1119 to i32
  %1121 = icmp ne i32 %1120, 3
  br i1 %1121, label %1122, label %1297

1122:                                             ; preds = %1115
  %1123 = load i32, i32* %7, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1124
  %1126 = load i8, i8* %1125, align 1
  %1127 = zext i8 %1126 to i32
  %1128 = icmp ne i32 %1127, 0
  br i1 %1128, label %1129, label %1297

1129:                                             ; preds = %1122
  %1130 = load i32, i32* %7, align 4
  %1131 = sext i32 %1130 to i64
  %1132 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1131
  %1133 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1132, i32 0, i32 2
  %1134 = load i32, i32* %1133, align 4
  %1135 = load i32, i32* %7, align 4
  %1136 = icmp eq i32 %1134, %1135
  br i1 %1136, label %1137, label %1297

1137:                                             ; preds = %1129
  call void @set_eyevalue(%struct.eyevalue* %28, i32 0, i32 0, i32 0, i32 0)
  %1138 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1139 = load i32, i32* %7, align 4
  %1140 = sext i32 %1139 to i64
  %1141 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1140
  %1142 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1141, i32 0, i32 1
  %1143 = load i32, i32* %1142, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1138, i64 %1144
  %1146 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1145, i32 0, i32 5
  %1147 = load float, float* %1146, align 4
  %1148 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1149 = load i32, i32* %7, align 4
  %1150 = sext i32 %1149 to i64
  %1151 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1150
  %1152 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1151, i32 0, i32 1
  %1153 = load i32, i32* %1152, align 4
  %1154 = sext i32 %1153 to i64
  %1155 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1148, i64 %1154
  %1156 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1155, i32 0, i32 9
  %1157 = load i32, i32* %1156, align 4
  %1158 = sub nsw i32 %1157, 10
  %1159 = sitofp i32 %1158 to float
  %1160 = call float @crude_dragon_weakness(i32 1, %struct.eyevalue* %28, i32 0, float %1147, float %1159)
  %1161 = fpext float %1160 to double
  %1162 = load i32, i32* %7, align 4
  %1163 = sext i32 %1162 to i64
  %1164 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1163
  %1165 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1164, i32 0, i32 4
  %1166 = load float, float* %1165, align 4
  %1167 = fpext float %1166 to double
  %1168 = fmul double 1.000000e-02, %1167
  %1169 = fsub double 3.200000e-01, %1168
  %1170 = fcmp olt double 1.200000e-01, %1169
  br i1 %1170, label %1171, label %1180

1171:                                             ; preds = %1137
  %1172 = load i32, i32* %7, align 4
  %1173 = sext i32 %1172 to i64
  %1174 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1173
  %1175 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1174, i32 0, i32 4
  %1176 = load float, float* %1175, align 4
  %1177 = fpext float %1176 to double
  %1178 = fmul double 1.000000e-02, %1177
  %1179 = fsub double 3.200000e-01, %1178
  br label %1181

1180:                                             ; preds = %1137
  br label %1181

1181:                                             ; preds = %1180, %1171
  %1182 = phi double [ %1179, %1171 ], [ 1.200000e-01, %1180 ]
  %1183 = fadd double 1.000000e-05, %1182
  %1184 = fcmp olt double %1161, %1183
  br i1 %1184, label %1185, label %1198

1185:                                             ; preds = %1181
  %1186 = load i32, i32* %7, align 4
  %1187 = sext i32 %1186 to i64
  %1188 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1187
  %1189 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1188, i32 0, i32 6
  store i32 4, i32* %1189, align 4
  %1190 = load i32, i32* %7, align 4
  %1191 = sext i32 %1190 to i64
  %1192 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1191
  %1193 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1192, i32 0, i32 11
  store i32 0, i32* %1193, align 4
  %1194 = load i32, i32* %7, align 4
  %1195 = sext i32 %1194 to i64
  %1196 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1195
  %1197 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1196, i32 0, i32 15
  store i32 0, i32* %1197, align 4
  br label %1296

1198:                                             ; preds = %1181
  %1199 = load i32, i32* %7, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1200
  %1202 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1201, i32 0, i32 9
  %1203 = load i32, i32* %1202, align 4
  store i32 %1203, i32* %29, align 4
  %1204 = load i32, i32* %7, align 4
  %1205 = sext i32 %1204 to i64
  %1206 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1205
  %1207 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1206, i32 0, i32 13
  %1208 = load i32, i32* %1207, align 4
  store i32 %1208, i32* %30, align 4
  %1209 = load i32, i32* @level, align 4
  %1210 = icmp sge i32 %1209, 8
  br i1 %1210, label %1211, label %1293

1211:                                             ; preds = %1198
  %1212 = load i32, i32* @disable_threat_computation, align 4
  %1213 = icmp ne i32 %1212, 0
  br i1 %1213, label %1293, label %1214

1214:                                             ; preds = %1211
  %1215 = load i32, i32* @owl_threats, align 4
  %1216 = icmp ne i32 %1215, 0
  br i1 %1216, label %1225, label %1217

1217:                                             ; preds = %1214
  %1218 = load i32, i32* @thrashing_dragon, align 4
  %1219 = icmp ne i32 %1218, 0
  br i1 %1219, label %1220, label %1293

1220:                                             ; preds = %1217
  %1221 = load i32, i32* %7, align 4
  %1222 = load i32, i32* @thrashing_dragon, align 4
  %1223 = call i32 @is_same_dragon(i32 %1221, i32 %1222)
  %1224 = icmp ne i32 %1223, 0
  br i1 %1224, label %1225, label %1293

1225:                                             ; preds = %1220, %1214
  %1226 = load i32, i32* %29, align 4
  %1227 = icmp ne i32 %1226, 0
  br i1 %1227, label %1228, label %1263

1228:                                             ; preds = %1225
  %1229 = load i32, i32* %30, align 4
  %1230 = icmp ne i32 %1229, 0
  br i1 %1230, label %1263, label %1231

1231:                                             ; preds = %1228
  %1232 = load i32, i32* %7, align 4
  %1233 = sext i32 %1232 to i64
  %1234 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1233
  %1235 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1234, i32 0, i32 8
  %1236 = load i32, i32* %1235, align 4
  %1237 = icmp ne i32 %1236, 0
  br i1 %1237, label %1238, label %1263

1238:                                             ; preds = %1231
  %1239 = load i32, i32* %7, align 4
  %1240 = call i32 @owl_threaten_defense(i32 %1239, i32* %31, i32* %32)
  %1241 = icmp ne i32 %1240, 0
  br i1 %1241, label %1242, label %1257

1242:                                             ; preds = %1238
  %1243 = load i32, i32* %7, align 4
  %1244 = sext i32 %1243 to i64
  %1245 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1244
  %1246 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1245, i32 0, i32 6
  store i32 12, i32* %1246, align 4
  %1247 = load i32, i32* %31, align 4
  %1248 = load i32, i32* %7, align 4
  %1249 = sext i32 %1248 to i64
  %1250 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1249
  %1251 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1250, i32 0, i32 12
  store i32 %1247, i32* %1251, align 4
  %1252 = load i32, i32* %32, align 4
  %1253 = load i32, i32* %7, align 4
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1254
  %1256 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1255, i32 0, i32 15
  store i32 %1252, i32* %1256, align 4
  br label %1262

1257:                                             ; preds = %1238
  %1258 = load i32, i32* %7, align 4
  %1259 = sext i32 %1258 to i64
  %1260 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1259
  %1261 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1260, i32 0, i32 6
  store i32 0, i32* %1261, align 4
  br label %1262

1262:                                             ; preds = %1257, %1242
  br label %1292

1263:                                             ; preds = %1231, %1228, %1225
  %1264 = load i32, i32* %29, align 4
  %1265 = icmp ne i32 %1264, 0
  br i1 %1265, label %1291, label %1266

1266:                                             ; preds = %1263
  %1267 = load i32, i32* %7, align 4
  %1268 = call i32 @owl_threaten_attack(i32 %1267, i32* %33, i32* %34)
  %1269 = icmp ne i32 %1268, 0
  br i1 %1269, label %1270, label %1285

1270:                                             ; preds = %1266
  %1271 = load i32, i32* %7, align 4
  %1272 = sext i32 %1271 to i64
  %1273 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1272
  %1274 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1273, i32 0, i32 6
  store i32 11, i32* %1274, align 4
  %1275 = load i32, i32* %33, align 4
  %1276 = load i32, i32* %7, align 4
  %1277 = sext i32 %1276 to i64
  %1278 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1277
  %1279 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1278, i32 0, i32 8
  store i32 %1275, i32* %1279, align 4
  %1280 = load i32, i32* %34, align 4
  %1281 = load i32, i32* %7, align 4
  %1282 = sext i32 %1281 to i64
  %1283 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1282
  %1284 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1283, i32 0, i32 11
  store i32 %1280, i32* %1284, align 4
  br label %1290

1285:                                             ; preds = %1266
  %1286 = load i32, i32* %7, align 4
  %1287 = sext i32 %1286 to i64
  %1288 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1287
  %1289 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1288, i32 0, i32 6
  store i32 1, i32* %1289, align 4
  br label %1290

1290:                                             ; preds = %1285, %1270
  br label %1291

1291:                                             ; preds = %1290, %1263
  br label %1292

1292:                                             ; preds = %1291, %1262
  br label %1293

1293:                                             ; preds = %1292, %1220, %1217, %1211, %1198
  %1294 = load i32, i32* %7, align 4
  %1295 = call double @time_report(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i32 %1294, double 1.000000e+00)
  br label %1296

1296:                                             ; preds = %1293, %1185
  br label %1297

1297:                                             ; preds = %1296, %1129, %1122, %1115
  br label %1298

1298:                                             ; preds = %1297
  %1299 = load i32, i32* %7, align 4
  %1300 = add nsw i32 %1299, 1
  store i32 %1300, i32* %7, align 4
  br label %1112, !llvm.loop !16

1301:                                             ; preds = %1112
  store i32 21, i32* %7, align 4
  br label %1302

1302:                                             ; preds = %1327, %1301
  %1303 = load i32, i32* %7, align 4
  %1304 = icmp slt i32 %1303, 400
  br i1 %1304, label %1305, label %1330

1305:                                             ; preds = %1302
  %1306 = load i32, i32* %7, align 4
  %1307 = sext i32 %1306 to i64
  %1308 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1307
  %1309 = load i8, i8* %1308, align 1
  %1310 = zext i8 %1309 to i32
  %1311 = icmp ne i32 %1310, 3
  br i1 %1311, label %1312, label %1326

1312:                                             ; preds = %1305
  %1313 = load i32, i32* %7, align 4
  %1314 = sext i32 %1313 to i64
  %1315 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1314
  store %struct.dragon_data* %1315, %struct.dragon_data** %35, align 8
  %1316 = load i32, i32* %7, align 4
  %1317 = sext i32 %1316 to i64
  %1318 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1317
  %1319 = load %struct.dragon_data*, %struct.dragon_data** %35, align 8
  %1320 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1319, i32 0, i32 2
  %1321 = load i32, i32* %1320, align 4
  %1322 = sext i32 %1321 to i64
  %1323 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1322
  %1324 = bitcast %struct.dragon_data* %1318 to i8*
  %1325 = bitcast %struct.dragon_data* %1323 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1324, i8* align 4 %1325, i64 76, i1 false)
  br label %1326

1326:                                             ; preds = %1312, %1305
  br label %1327

1327:                                             ; preds = %1326
  %1328 = load i32, i32* %7, align 4
  %1329 = add nsw i32 %1328, 1
  store i32 %1329, i32* %7, align 4
  br label %1302, !llvm.loop !17

1330:                                             ; preds = %1302
  %1331 = call double @time_report(i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i32 0, double 1.000000e+00)
  store i32 0, i32* %9, align 4
  br label %1332

1332:                                             ; preds = %1391, %1330
  %1333 = load i32, i32* %9, align 4
  %1334 = load i32, i32* @number_of_dragons, align 4
  %1335 = icmp slt i32 %1333, %1334
  br i1 %1335, label %1336, label %1394

1336:                                             ; preds = %1332
  %1337 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1338 = load i32, i32* %9, align 4
  %1339 = sext i32 %1338 to i64
  %1340 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1337, i64 %1339
  %1341 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1340, i32 0, i32 0
  %1342 = load i32, i32* %1341, align 4
  %1343 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1344 = load i32, i32* %9, align 4
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1343, i64 %1345
  %1347 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1346, i32 0, i32 16
  %1348 = call i32 @compute_surroundings(i32 %1342, i32 0, i32 0, i32* %1347)
  %1349 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1350 = load i32, i32* %9, align 4
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1349, i64 %1351
  %1353 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1352, i32 0, i32 15
  store i32 %1348, i32* %1353, align 4
  %1354 = load i32, i32* @debug, align 4
  %1355 = and i32 %1354, 32
  %1356 = icmp ne i32 %1355, 0
  br i1 %1356, label %1357, label %1390

1357:                                             ; preds = %1336
  %1358 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1359 = load i32, i32* %9, align 4
  %1360 = sext i32 %1359 to i64
  %1361 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1358, i64 %1360
  %1362 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1361, i32 0, i32 15
  %1363 = load i32, i32* %1362, align 4
  %1364 = icmp eq i32 %1363, 1
  br i1 %1364, label %1365, label %1373

1365:                                             ; preds = %1357
  %1366 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1367 = load i32, i32* %9, align 4
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1366, i64 %1368
  %1370 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1369, i32 0, i32 0
  %1371 = load i32, i32* %1370, align 4
  %1372 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i64 0, i64 0), i32 %1371)
  br label %1373

1373:                                             ; preds = %1365, %1357
  %1374 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1375 = load i32, i32* %9, align 4
  %1376 = sext i32 %1375 to i64
  %1377 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1374, i64 %1376
  %1378 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1377, i32 0, i32 15
  %1379 = load i32, i32* %1378, align 4
  %1380 = icmp eq i32 %1379, 2
  br i1 %1380, label %1381, label %1389

1381:                                             ; preds = %1373
  %1382 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1383 = load i32, i32* %9, align 4
  %1384 = sext i32 %1383 to i64
  %1385 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1382, i64 %1384
  %1386 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1385, i32 0, i32 0
  %1387 = load i32, i32* %1386, align 4
  %1388 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.20, i64 0, i64 0), i32 %1387)
  br label %1389

1389:                                             ; preds = %1381, %1373
  br label %1390

1390:                                             ; preds = %1389, %1336
  br label %1391

1391:                                             ; preds = %1390
  %1392 = load i32, i32* %9, align 4
  %1393 = add nsw i32 %1392, 1
  store i32 %1393, i32* %9, align 4
  br label %1332, !llvm.loop !18

1394:                                             ; preds = %1332
  store i32 0, i32* %9, align 4
  br label %1395

1395:                                             ; preds = %1524, %1394
  %1396 = load i32, i32* %9, align 4
  %1397 = load i32, i32* @number_of_dragons, align 4
  %1398 = icmp slt i32 %1396, %1397
  br i1 %1398, label %1399, label %1527

1399:                                             ; preds = %1395
  %1400 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1401 = load i32, i32* %9, align 4
  %1402 = sext i32 %1401 to i64
  %1403 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1400, i64 %1402
  %1404 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1403, i32 0, i32 0
  %1405 = load i32, i32* %1404, align 4
  store i32 %1405, i32* %37, align 4
  %1406 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1407 = load i32, i32* %9, align 4
  %1408 = sext i32 %1407 to i64
  %1409 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1406, i64 %1408
  %1410 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1409, i32 0, i32 10
  store %struct.eyevalue* %1410, %struct.eyevalue** %38, align 8
  %1411 = load %struct.eyevalue*, %struct.eyevalue** %38, align 8
  %1412 = call i32 @max_eyes(%struct.eyevalue* %1411)
  %1413 = load %struct.eyevalue*, %struct.eyevalue** %38, align 8
  %1414 = call i32 @min_eyes(%struct.eyevalue* %1413)
  %1415 = add nsw i32 %1412, %1414
  store i32 %1415, i32* %36, align 4
  %1416 = load i32, i32* %37, align 4
  %1417 = call i32 @dragon_looks_inessential(i32 %1416)
  %1418 = icmp ne i32 %1417, 0
  br i1 %1418, label %1419, label %1425

1419:                                             ; preds = %1399
  %1420 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1421 = load i32, i32* %9, align 4
  %1422 = sext i32 %1421 to i64
  %1423 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1420, i64 %1422
  %1424 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1423, i32 0, i32 6
  store i32 5, i32* %1424, align 4
  br label %1523

1425:                                             ; preds = %1399
  %1426 = load i32, i32* %37, align 4
  %1427 = sext i32 %1426 to i64
  %1428 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1427
  %1429 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1428, i32 0, i32 3
  %1430 = load i32, i32* %1429, align 4
  %1431 = load i32, i32* %37, align 4
  %1432 = sext i32 %1431 to i64
  %1433 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1432
  %1434 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1433, i32 0, i32 1
  %1435 = load i32, i32* %1434, align 4
  %1436 = icmp eq i32 %1430, %1435
  br i1 %1436, label %1437, label %1459

1437:                                             ; preds = %1425
  %1438 = load i32, i32* %37, align 4
  %1439 = sext i32 %1438 to i64
  %1440 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1439
  %1441 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1440, i32 0, i32 16
  %1442 = getelementptr inbounds [10 x i32], [10 x i32]* %1441, i64 0, i64 0
  %1443 = load i32, i32* %1442, align 4
  %1444 = icmp ne i32 %1443, 0
  br i1 %1444, label %1445, label %1459

1445:                                             ; preds = %1437
  %1446 = load i32, i32* %37, align 4
  %1447 = sext i32 %1446 to i64
  %1448 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1447
  %1449 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1448, i32 0, i32 18
  %1450 = getelementptr inbounds [10 x i32], [10 x i32]* %1449, i64 0, i64 0
  %1451 = load i32, i32* %1450, align 4
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1453, label %1459

1453:                                             ; preds = %1445
  %1454 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1455 = load i32, i32* %9, align 4
  %1456 = sext i32 %1455 to i64
  %1457 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1454, i64 %1456
  %1458 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1457, i32 0, i32 6
  store i32 6, i32* %1458, align 4
  br label %1522

1459:                                             ; preds = %1445, %1437, %1425
  %1460 = load i32, i32* %37, align 4
  %1461 = sext i32 %1460 to i64
  %1462 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1461
  %1463 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1462, i32 0, i32 7
  %1464 = load i32, i32* %1463, align 4
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1466, label %1472

1466:                                             ; preds = %1459
  %1467 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1468 = load i32, i32* %9, align 4
  %1469 = sext i32 %1468 to i64
  %1470 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1467, i64 %1469
  %1471 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1470, i32 0, i32 6
  store i32 0, i32* %1471, align 4
  br label %1521

1472:                                             ; preds = %1459
  %1473 = load i32, i32* %37, align 4
  %1474 = sext i32 %1473 to i64
  %1475 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1474
  %1476 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1475, i32 0, i32 7
  %1477 = load i32, i32* %1476, align 4
  %1478 = icmp eq i32 %1477, 2
  br i1 %1478, label %1479, label %1485

1479:                                             ; preds = %1472
  %1480 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1481 = load i32, i32* %9, align 4
  %1482 = sext i32 %1481 to i64
  %1483 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1480, i64 %1482
  %1484 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1483, i32 0, i32 6
  store i32 2, i32* %1484, align 4
  br label %1520

1485:                                             ; preds = %1472
  %1486 = load i32, i32* %37, align 4
  %1487 = call i32 @dragon_invincible(i32 %1486)
  %1488 = icmp ne i32 %1487, 0
  br i1 %1488, label %1489, label %1495

1489:                                             ; preds = %1485
  %1490 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1491 = load i32, i32* %9, align 4
  %1492 = sext i32 %1491 to i64
  %1493 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1490, i64 %1492
  %1494 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1493, i32 0, i32 6
  store i32 9, i32* %1494, align 4
  br label %1519

1495:                                             ; preds = %1485
  %1496 = load i32, i32* %36, align 4
  %1497 = icmp sge i32 %1496, 6
  br i1 %1497, label %1506, label %1498

1498:                                             ; preds = %1495
  %1499 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1500 = load i32, i32* %9, align 4
  %1501 = sext i32 %1500 to i64
  %1502 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1499, i64 %1501
  %1503 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1502, i32 0, i32 4
  %1504 = load i32, i32* %1503, align 4
  %1505 = icmp sgt i32 %1504, 20
  br i1 %1505, label %1506, label %1512

1506:                                             ; preds = %1498, %1495
  %1507 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1508 = load i32, i32* %9, align 4
  %1509 = sext i32 %1508 to i64
  %1510 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1507, i64 %1509
  %1511 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1510, i32 0, i32 6
  store i32 8, i32* %1511, align 4
  br label %1518

1512:                                             ; preds = %1498
  %1513 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1514 = load i32, i32* %9, align 4
  %1515 = sext i32 %1514 to i64
  %1516 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1513, i64 %1515
  %1517 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1516, i32 0, i32 6
  store i32 1, i32* %1517, align 4
  br label %1518

1518:                                             ; preds = %1512, %1506
  br label %1519

1519:                                             ; preds = %1518, %1489
  br label %1520

1520:                                             ; preds = %1519, %1479
  br label %1521

1521:                                             ; preds = %1520, %1466
  br label %1522

1522:                                             ; preds = %1521, %1453
  br label %1523

1523:                                             ; preds = %1522, %1419
  br label %1524

1524:                                             ; preds = %1523
  %1525 = load i32, i32* %9, align 4
  %1526 = add nsw i32 %1525, 1
  store i32 %1526, i32* %9, align 4
  br label %1395, !llvm.loop !19

1527:                                             ; preds = %1395
  %1528 = call double @time_report(i32 2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i32 0, double 1.000000e+00)
  %1529 = load i32, i32* @experimental_semeai, align 4
  %1530 = icmp ne i32 %1529, 0
  br i1 %1530, label %1531, label %1536

1531:                                             ; preds = %1527
  %1532 = load i32, i32* @level, align 4
  %1533 = icmp sge i32 %1532, 8
  br i1 %1533, label %1534, label %1536

1534:                                             ; preds = %1531
  %1535 = load i32, i32* %4, align 4
  call void @new_semeai(i32 %1535)
  br label %1538

1536:                                             ; preds = %1531, %1527
  %1537 = load i32, i32* %4, align 4
  call void @semeai(i32 %1537)
  br label %1538

1538:                                             ; preds = %1536, %1534
  %1539 = call double @time_report(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 0, double 1.000000e+00)
  store i32 21, i32* %7, align 4
  br label %1540

1540:                                             ; preds = %1565, %1538
  %1541 = load i32, i32* %7, align 4
  %1542 = icmp slt i32 %1541, 400
  br i1 %1542, label %1543, label %1568

1543:                                             ; preds = %1540
  %1544 = load i32, i32* %7, align 4
  %1545 = sext i32 %1544 to i64
  %1546 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1545
  %1547 = load i8, i8* %1546, align 1
  %1548 = zext i8 %1547 to i32
  %1549 = icmp ne i32 %1548, 3
  br i1 %1549, label %1550, label %1564

1550:                                             ; preds = %1543
  %1551 = load i32, i32* %7, align 4
  %1552 = sext i32 %1551 to i64
  %1553 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1552
  %1554 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1553, i32 0, i32 2
  %1555 = load i32, i32* %1554, align 4
  %1556 = sext i32 %1555 to i64
  %1557 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1556
  %1558 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1557, i32 0, i32 16
  %1559 = load i32, i32* %1558, align 4
  %1560 = load i32, i32* %7, align 4
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1561
  %1563 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1562, i32 0, i32 16
  store i32 %1559, i32* %1563, align 4
  br label %1564

1564:                                             ; preds = %1550, %1543
  br label %1565

1565:                                             ; preds = %1564
  %1566 = load i32, i32* %7, align 4
  %1567 = add nsw i32 %1566, 1
  store i32 %1567, i32* %7, align 4
  br label %1540, !llvm.loop !20

1568:                                             ; preds = %1540
  store i32 21, i32* %7, align 4
  br label %1569

1569:                                             ; preds = %1653, %1568
  %1570 = load i32, i32* %7, align 4
  %1571 = icmp slt i32 %1570, 400
  br i1 %1571, label %1572, label %1656

1572:                                             ; preds = %1569
  %1573 = load i32, i32* %7, align 4
  %1574 = sext i32 %1573 to i64
  %1575 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1574
  %1576 = load i8, i8* %1575, align 1
  %1577 = zext i8 %1576 to i32
  %1578 = icmp ne i32 %1577, 3
  br i1 %1578, label %1579, label %1652

1579:                                             ; preds = %1572
  %1580 = load i32, i32* %7, align 4
  %1581 = load i32, i32* %7, align 4
  %1582 = call i32 @is_worm_origin(i32 %1580, i32 %1581)
  %1583 = icmp ne i32 %1582, 0
  br i1 %1583, label %1584, label %1651

1584:                                             ; preds = %1579
  %1585 = load i32, i32* %7, align 4
  %1586 = sext i32 %1585 to i64
  %1587 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1586
  %1588 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1587, i32 0, i32 16
  %1589 = getelementptr inbounds [10 x i32], [10 x i32]* %1588, i64 0, i64 0
  %1590 = load i32, i32* %1589, align 4
  %1591 = icmp ne i32 %1590, 0
  br i1 %1591, label %1592, label %1651

1592:                                             ; preds = %1584
  %1593 = load i32, i32* %7, align 4
  %1594 = sext i32 %1593 to i64
  %1595 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1594
  %1596 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1595, i32 0, i32 18
  %1597 = getelementptr inbounds [10 x i32], [10 x i32]* %1596, i64 0, i64 0
  %1598 = load i32, i32* %1597, align 4
  %1599 = icmp ne i32 %1598, 0
  br i1 %1599, label %1600, label %1651

1600:                                             ; preds = %1592
  %1601 = load i32, i32* %7, align 4
  %1602 = sext i32 %1601 to i64
  %1603 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1602
  %1604 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1603, i32 0, i32 12
  %1605 = load i32, i32* %1604, align 4
  %1606 = icmp ne i32 %1605, 0
  br i1 %1606, label %1651, label %1607

1607:                                             ; preds = %1600
  store i32 0, i32* %42, align 4
  %1608 = load i32, i32* %7, align 4
  %1609 = getelementptr inbounds [160 x i32], [160 x i32]* %39, i64 0, i64 0
  %1610 = call i32 @extended_chainlinks(i32 %1608, i32* %1609, i32 0)
  store i32 %1610, i32* %40, align 4
  store i32 0, i32* %41, align 4
  br label %1611

1611:                                             ; preds = %1627, %1607
  %1612 = load i32, i32* %41, align 4
  %1613 = load i32, i32* %40, align 4
  %1614 = icmp slt i32 %1612, %1613
  br i1 %1614, label %1615, label %1630

1615:                                             ; preds = %1611
  %1616 = load i32, i32* %41, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds [160 x i32], [160 x i32]* %39, i64 0, i64 %1617
  %1619 = load i32, i32* %1618, align 4
  %1620 = sext i32 %1619 to i64
  %1621 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1620
  %1622 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1621, i32 0, i32 16
  %1623 = load i32, i32* %1622, align 4
  %1624 = icmp ne i32 %1623, 0
  br i1 %1624, label %1625, label %1626

1625:                                             ; preds = %1615
  store i32 1, i32* %42, align 4
  br label %1630

1626:                                             ; preds = %1615
  br label %1627

1627:                                             ; preds = %1626
  %1628 = load i32, i32* %41, align 4
  %1629 = add nsw i32 %1628, 1
  store i32 %1629, i32* %41, align 4
  br label %1611, !llvm.loop !21

1630:                                             ; preds = %1625, %1611
  %1631 = load i32, i32* %42, align 4
  %1632 = icmp ne i32 %1631, 0
  br i1 %1632, label %1650, label %1633

1633:                                             ; preds = %1630
  %1634 = load i32, i32* %40, align 4
  %1635 = icmp sgt i32 %1634, 0
  br i1 %1635, label %1636, label %1650

1636:                                             ; preds = %1633
  %1637 = load i32, i32* @debug, align 4
  %1638 = and i32 %1637, 1024
  %1639 = icmp ne i32 %1638, 0
  br i1 %1639, label %1641, label %1640

1640:                                             ; preds = %1636
  br label %1644

1641:                                             ; preds = %1636
  %1642 = load i32, i32* %7, align 4
  %1643 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i32 %1642)
  br label %1644

1644:                                             ; preds = %1641, %1640
  %1645 = load i32, i32* %7, align 4
  %1646 = sext i32 %1645 to i64
  %1647 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1646
  %1648 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1647, i32 0, i32 12
  store i32 1, i32* %1648, align 4
  %1649 = load i32, i32* %7, align 4
  call void @propagate_worm(i32 %1649)
  br label %1650

1650:                                             ; preds = %1644, %1633, %1630
  br label %1651

1651:                                             ; preds = %1650, %1600, %1592, %1584, %1579
  br label %1652

1652:                                             ; preds = %1651, %1572
  br label %1653

1653:                                             ; preds = %1652
  %1654 = load i32, i32* %7, align 4
  %1655 = add nsw i32 %1654, 1
  store i32 %1655, i32* %7, align 4
  br label %1569, !llvm.loop !22

1656:                                             ; preds = %1569
  %1657 = call double @time_report(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0), i32 0, double 1.000000e+00)
  store i32 21, i32* %7, align 4
  br label %1658

1658:                                             ; preds = %1736, %1656
  %1659 = load i32, i32* %7, align 4
  %1660 = icmp slt i32 %1659, 400
  br i1 %1660, label %1661, label %1739

1661:                                             ; preds = %1658
  %1662 = load i32, i32* %7, align 4
  %1663 = sext i32 %1662 to i64
  %1664 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1663
  %1665 = load i8, i8* %1664, align 1
  %1666 = zext i8 %1665 to i32
  %1667 = icmp ne i32 %1666, 3
  br i1 %1667, label %1668, label %1735

1668:                                             ; preds = %1661
  %1669 = load i32, i32* %7, align 4
  %1670 = sext i32 %1669 to i64
  %1671 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %1670
  %1672 = load i8, i8* %1671, align 1
  %1673 = zext i8 %1672 to i32
  %1674 = icmp ne i32 %1673, 0
  br i1 %1674, label %1675, label %1735

1675:                                             ; preds = %1668
  %1676 = load i32, i32* %7, align 4
  %1677 = sext i32 %1676 to i64
  %1678 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1677
  %1679 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1678, i32 0, i32 2
  %1680 = load i32, i32* %1679, align 4
  %1681 = load i32, i32* %7, align 4
  %1682 = icmp eq i32 %1680, %1681
  br i1 %1682, label %1683, label %1735

1683:                                             ; preds = %1675
  %1684 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1685 = load i32, i32* %7, align 4
  %1686 = sext i32 %1685 to i64
  %1687 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1686
  %1688 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1687, i32 0, i32 1
  %1689 = load i32, i32* %1688, align 4
  %1690 = sext i32 %1689 to i64
  %1691 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1684, i64 %1690
  %1692 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1691, i32 0, i32 6
  %1693 = load i32, i32* %1692, align 4
  %1694 = icmp eq i32 %1693, 2
  br i1 %1694, label %1695, label %1735

1695:                                             ; preds = %1683
  %1696 = load i32, i32* %7, align 4
  %1697 = call i32 @first_worm_in_dragon(i32 %1696)
  store i32 %1697, i32* %43, align 4
  br label %1698

1698:                                             ; preds = %1710, %1695
  %1699 = load i32, i32* %43, align 4
  %1700 = icmp ne i32 %1699, 0
  br i1 %1700, label %1701, label %1713

1701:                                             ; preds = %1698
  %1702 = load i32, i32* %43, align 4
  %1703 = sext i32 %1702 to i64
  %1704 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %1703
  %1705 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %1704, i32 0, i32 12
  %1706 = load i32, i32* %1705, align 4
  %1707 = icmp ne i32 %1706, 0
  br i1 %1707, label %1709, label %1708

1708:                                             ; preds = %1701
  br label %1713

1709:                                             ; preds = %1701
  br label %1710

1710:                                             ; preds = %1709
  %1711 = load i32, i32* %43, align 4
  %1712 = call i32 @next_worm_in_dragon(i32 %1711)
  store i32 %1712, i32* %43, align 4
  br label %1698, !llvm.loop !23

1713:                                             ; preds = %1708, %1698
  %1714 = load i32, i32* %43, align 4
  %1715 = icmp eq i32 %1714, 0
  br i1 %1715, label %1716, label %1734

1716:                                             ; preds = %1713
  %1717 = load i32, i32* @debug, align 4
  %1718 = and i32 %1717, 32
  %1719 = icmp ne i32 %1718, 0
  br i1 %1719, label %1721, label %1720

1720:                                             ; preds = %1716
  br label %1724

1721:                                             ; preds = %1716
  %1722 = load i32, i32* %7, align 4
  %1723 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.25, i64 0, i64 0), i32 %1722)
  br label %1724

1724:                                             ; preds = %1721, %1720
  %1725 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1726 = load i32, i32* %7, align 4
  %1727 = sext i32 %1726 to i64
  %1728 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1727
  %1729 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1728, i32 0, i32 1
  %1730 = load i32, i32* %1729, align 4
  %1731 = sext i32 %1730 to i64
  %1732 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1725, i64 %1731
  %1733 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1732, i32 0, i32 6
  store i32 5, i32* %1733, align 4
  br label %1734

1734:                                             ; preds = %1724, %1713
  br label %1735

1735:                                             ; preds = %1734, %1683, %1675, %1668, %1661
  br label %1736

1736:                                             ; preds = %1735
  %1737 = load i32, i32* %7, align 4
  %1738 = add nsw i32 %1737, 1
  store i32 %1738, i32* %7, align 4
  br label %1658, !llvm.loop !24

1739:                                             ; preds = %1658
  %1740 = call double @time_report(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 0, double 1.000000e+00)
  store i32 0, i32* @lively_white_dragons, align 4
  store i32 0, i32* @lively_black_dragons, align 4
  store i32 0, i32* %9, align 4
  br label %1741

1741:                                             ; preds = %1777, %1739
  %1742 = load i32, i32* %9, align 4
  %1743 = load i32, i32* @number_of_dragons, align 4
  %1744 = icmp slt i32 %1742, %1743
  br i1 %1744, label %1745, label %1780

1745:                                             ; preds = %1741
  %1746 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1747 = load i32, i32* %9, align 4
  %1748 = sext i32 %1747 to i64
  %1749 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1746, i64 %1748
  %1750 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1749, i32 0, i32 0
  %1751 = load i32, i32* %1750, align 4
  %1752 = sext i32 %1751 to i64
  %1753 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1752
  %1754 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1753, i32 0, i32 5
  %1755 = load i32, i32* %1754, align 4
  %1756 = icmp ne i32 %1755, 0
  br i1 %1756, label %1757, label %1776

1757:                                             ; preds = %1745
  %1758 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %1759 = load i32, i32* %9, align 4
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1758, i64 %1760
  %1762 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %1761, i32 0, i32 0
  %1763 = load i32, i32* %1762, align 4
  %1764 = sext i32 %1763 to i64
  %1765 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %1764
  %1766 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %1765, i32 0, i32 0
  %1767 = load i32, i32* %1766, align 4
  %1768 = icmp eq i32 %1767, 1
  br i1 %1768, label %1769, label %1772

1769:                                             ; preds = %1757
  %1770 = load i32, i32* @lively_white_dragons, align 4
  %1771 = add nsw i32 %1770, 1
  store i32 %1771, i32* @lively_white_dragons, align 4
  br label %1775

1772:                                             ; preds = %1757
  %1773 = load i32, i32* @lively_black_dragons, align 4
  %1774 = add nsw i32 %1773, 1
  store i32 %1774, i32* @lively_black_dragons, align 4
  br label %1775

1775:                                             ; preds = %1772, %1769
  br label %1776

1776:                                             ; preds = %1775, %1745
  br label %1777

1777:                                             ; preds = %1776
  %1778 = load i32, i32* %9, align 4
  %1779 = add nsw i32 %1778, 1
  store i32 %1779, i32* %9, align 4
  br label %1741, !llvm.loop !25

1780:                                             ; preds = %716, %1741
  ret void
}

declare dso_local void @start_timer(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_dragon_data() #0 {
  %1 = alloca i32, align 4
  store i32 21, i32* %1, align 4
  br label %2

2:                                                ; preds = %146, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 400
  br i1 %4, label %5, label %149

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 3
  br i1 %11, label %12, label %145

12:                                               ; preds = %5
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %18
  %20 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %24, i32 0, i32 3
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* %1, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %28, i32 0, i32 2
  %30 = load float, float* %29, align 4
  %31 = load i32, i32* %1, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %33, i32 0, i32 4
  store float %30, float* %34, align 4
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %1, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %1, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %51, i32 0, i32 2
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %1, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %55, i32 0, i32 8
  store i32 0, i32* %56, align 4
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %59, i32 0, i32 9
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %1, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %63, i32 0, i32 10
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %67, i32 0, i32 12
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* %1, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %70
  %72 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %71, i32 0, i32 13
  store i32 0, i32* %72, align 4
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %75, i32 0, i32 14
  store i32 1, i32* %76, align 4
  %77 = load i32, i32* %1, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %79, i32 0, i32 7
  store i32 4, i32* %80, align 4
  %81 = load i32, i32* %1, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %83, i32 0, i32 5
  store i32 3, i32* %84, align 4
  %85 = load i32, i32* %1, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %87, i32 0, i32 16
  store i32 3, i32* %88, align 4
  %89 = load i32, i32* %1, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %91, i32 0, i32 6
  store i32 4, i32* %92, align 4
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %95, i32 0, i32 11
  store i32 0, i32* %96, align 4
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %99, i32 0, i32 15
  store i32 0, i32* %100, align 4
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %103, i32 0, i32 1
  store i8 0, i8* %104, align 4
  %105 = load i32, i32* %1, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %107, i32 0, i32 0
  store float 1.000000e+01, float* %108, align 16
  %109 = load i32, i32* %1, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %122, label %115

115:                                              ; preds = %12
  %116 = load i32, i32* %1, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %144

122:                                              ; preds = %115, %12
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %1, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %122
  %131 = load i32, i32* @debug, align 4
  %132 = and i32 %131, 32
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  br label %143

135:                                              ; preds = %130
  %136 = load i32, i32* %1, align 4
  %137 = load i32, i32* %1, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %138
  %140 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.27, i64 0, i64 0), i32 %136, i32 %141)
  br label %143

143:                                              ; preds = %135, %134
  br label %144

144:                                              ; preds = %143, %122, %115
  br label %145

145:                                              ; preds = %144, %5
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %1, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %1, align 4
  br label %2, !llvm.loop !26

149:                                              ; preds = %2
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([400 x i32]* @next_worm_list to i8*), i8 0, i64 1600, i1 false)
  ret void
}

declare dso_local void @make_domains(%struct.eye_data*, %struct.eye_data*, i32) #1

declare dso_local double @time_report(i32, i8*, i32, double) #1

declare dso_local void @find_connections() #1

declare dso_local i32 @is_ko_point(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dragon_eye(i32 %0, %struct.eye_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eye_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.eye_data* %1, %struct.eye_data** %4, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %12, i64 %14
  %16 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 3
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %20, i64 %22
  %24 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %164

28:                                               ; preds = %19, %2
  %29 = load i32, i32* @debug, align 4
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %28
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.113, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %32
  %37 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %37, i64 %39
  %41 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 2, i32* %9, align 4
  br label %56

45:                                               ; preds = %36
  %46 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %46, i64 %48
  %50 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %55

54:                                               ; preds = %45
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1516, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.114, i64 0, i64 0), i32 -1, i32 -1)
  br label %55

55:                                               ; preds = %54, %53
  store i32 1, i32* %9, align 4
  br label %56

56:                                               ; preds = %55, %44
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %161, %56
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @board_size, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %164

61:                                               ; preds = %57
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %157, %61
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @board_size, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %160

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = mul nsw i32 %67, 20
  %69 = add nsw i32 21, %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %7, align 4
  %72 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %73 = load i32, i32* %7, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %72, i64 %74
  %76 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %156

80:                                               ; preds = %66
  %81 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %81, i64 %83
  %85 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %84, i32 0, i32 7
  %86 = load i8, i8* %85, align 4
  %87 = icmp ne i8 %86, 0
  br i1 %87, label %156, label %88

88:                                               ; preds = %80
  %89 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %89, i64 %91
  %93 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %92, i32 0, i32 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = and i32 %95, 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %156, label %98

98:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %152, %98
  %100 = load i32, i32* %10, align 4
  %101 = icmp slt i32 %100, 4
  br i1 %101, label %102, label %155

102:                                              ; preds = %99
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %11, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = load i32, i32* %9, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %151

116:                                              ; preds = %102
  %117 = load i32, i32* %8, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %123
  %125 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  br label %150

127:                                              ; preds = %116
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %128, %129
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %131
  %133 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %149

137:                                              ; preds = %127
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* %11, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %8, align 4
  call void @join_dragons(i32 %140, i32 %141)
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %142, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %145
  %147 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %137, %127
  br label %150

150:                                              ; preds = %149, %119
  br label %151

151:                                              ; preds = %150, %102
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %99, !llvm.loop !27

155:                                              ; preds = %99
  br label %156

156:                                              ; preds = %155, %88, %80, %66
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %62, !llvm.loop !28

160:                                              ; preds = %62
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %5, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %5, align 4
  br label %57, !llvm.loop !29

164:                                              ; preds = %27, %57
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @initialize_supplementary_dragon_data() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* @number_of_dragons, align 4
  store i32 21, i32* %1, align 4
  br label %4

4:                                                ; preds = %52, %0
  %5 = load i32, i32* %1, align 4
  %6 = icmp slt i32 %5, 400
  br i1 %6, label %7, label %55

7:                                                ; preds = %4
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %9
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 3
  br i1 %13, label %15, label %14

14:                                               ; preds = %7
  br label %52

15:                                               ; preds = %7
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %15
  br label %52

28:                                               ; preds = %15
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load i32, i32* @number_of_dragons, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* @number_of_dragons, align 4
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %1, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  br label %52

52:                                               ; preds = %42, %27, %14
  %53 = load i32, i32* %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %1, align 4
  br label %4, !llvm.loop !30

55:                                               ; preds = %4
  %56 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %57 = icmp ne %struct.dragon_data2* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %60 = bitcast %struct.dragon_data2* %59 to i8*
  call void @free(i8* %60) #5
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32, i32* @number_of_dragons, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 104
  %65 = call noalias align 16 i8* @malloc(i64 %64) #5
  %66 = bitcast i8* %65 to %struct.dragon_data2*
  store %struct.dragon_data2* %66, %struct.dragon_data2** @dragon2, align 8
  %67 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %68 = icmp ne %struct.dragon_data2* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  br label %71

70:                                               ; preds = %61
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 773, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.108, i64 0, i64 0), i32 -1, i32 -1)
  br label %71

71:                                               ; preds = %70, %69
  store i32 21, i32* %1, align 4
  br label %72

72:                                               ; preds = %117, %71
  %73 = load i32, i32* %1, align 4
  %74 = icmp slt i32 %73, 400
  br i1 %74, label %75, label %120

75:                                               ; preds = %72
  %76 = load i32, i32* %1, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 3
  br i1 %81, label %83, label %82

82:                                               ; preds = %75
  br label %117

83:                                               ; preds = %75
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %97, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %97, label %116

97:                                               ; preds = %90, %83
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %1, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %97
  %106 = load i32, i32* %1, align 4
  %107 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %108 = load i32, i32* %1, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %107, i64 %113
  %115 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %114, i32 0, i32 0
  store i32 %106, i32* %115, align 4
  br label %116

116:                                              ; preds = %105, %97, %90
  br label %117

117:                                              ; preds = %116, %82
  %118 = load i32, i32* %1, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %1, align 4
  br label %72, !llvm.loop !31

120:                                              ; preds = %72
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %186, %120
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @number_of_dragons, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %189

125:                                              ; preds = %121
  %126 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %126, i64 %128
  %130 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %129, i32 0, i32 2
  store i32 0, i32* %130, align 4
  %131 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %131, i64 %133
  %135 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %134, i32 0, i32 3
  store i32 0, i32* %135, align 4
  %136 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %137 = load i32, i32* %2, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %136, i64 %138
  %140 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %139, i32 0, i32 4
  store i32 -1, i32* %140, align 4
  %141 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %141, i64 %143
  %145 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %144, i32 0, i32 5
  store float 0.000000e+00, float* %145, align 4
  %146 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %146, i64 %148
  %150 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %149, i32 0, i32 6
  store i32 -1, i32* %150, align 4
  %151 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %152 = load i32, i32* %2, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %151, i64 %153
  %155 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %154, i32 0, i32 9
  store i32 0, i32* %155, align 4
  %156 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %156, i64 %158
  %160 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %159, i32 0, i32 11
  store i32 0, i32* %160, align 4
  %161 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %162 = load i32, i32* %2, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %161, i64 %163
  %165 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %164, i32 0, i32 12
  store i32 0, i32* %165, align 4
  %166 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %167 = load i32, i32* %2, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %166, i64 %168
  %170 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %169, i32 0, i32 13
  store i32 0, i32* %170, align 4
  %171 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %171, i64 %173
  %175 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %174, i32 0, i32 14
  store i32 -1, i32* %175, align 4
  %176 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %177 = load i32, i32* %2, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %176, i64 %178
  %180 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %179, i32 0, i32 15
  store i32 0, i32* %180, align 4
  %181 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %182 = load i32, i32* %2, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %181, i64 %183
  %185 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %184, i32 0, i32 10
  call void @set_eyevalue(%struct.eyevalue* %185, i32 0, i32 0, i32 0, i32 0)
  br label %186

186:                                              ; preds = %125
  %187 = load i32, i32* %2, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %2, align 4
  br label %121, !llvm.loop !32

189:                                              ; preds = %121
  store i32 1, i32* @dragon2_initialized, align 4
  ret void
}

declare dso_local void @add_lunch(i32, i32) #1

declare dso_local i32 @gprintf(i8*, ...) #1

declare dso_local void @find_half_and_false_eyes(i32, %struct.eye_data*, %struct.half_eye_data*, i8*) #1

declare dso_local void @modify_eye_spaces() #1

declare dso_local void @compute_eyes(i32, %struct.eyevalue*, i32*, i32*, %struct.eye_data*, %struct.half_eye_data*, i32, i32) #1

declare dso_local i8* @eyevalue_to_string(%struct.eyevalue*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @propagate_eye(i32, %struct.eye_data*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analyze_false_eye_territory() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.eye_data*, align 8
  %5 = alloca i32, align 4
  store i32 21, i32* %1, align 4
  br label %6

6:                                                ; preds = %154, %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp slt i32 %7, 400
  br i1 %8, label %9, label %157

9:                                                ; preds = %6
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  br label %154

17:                                               ; preds = %9
  %18 = load i32, i32* %1, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %19
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.half_eye_data, %struct.half_eye_data* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 4
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %154

29:                                               ; preds = %17
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  store i32 4, i32* %3, align 4
  store %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0), %struct.eye_data** %4, align 8
  br label %47

37:                                               ; preds = %29
  %38 = load i32, i32* %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 5
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 2, i32* %2, align 4
  store i32 5, i32* %3, align 4
  store %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0), %struct.eye_data** %4, align 8
  br label %46

45:                                               ; preds = %37
  br label %154

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %36
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %92, %47
  %49 = load i32, i32* %5, align 4
  %50 = icmp slt i32 %49, 4
  br i1 %50, label %51, label %95

51:                                               ; preds = %48
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %52, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 3
  br i1 %62, label %63, label %91

63:                                               ; preds = %51
  %64 = load i32, i32* %1, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %64, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32, i32* %2, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %63
  %77 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %78 = load i32, i32* %1, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %78, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %77, i64 %84
  %86 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %3, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %95

91:                                               ; preds = %76, %63, %51
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %48, !llvm.loop !33

95:                                               ; preds = %90, %48
  %96 = load i32, i32* %5, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %154

99:                                               ; preds = %95
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %143, %99
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 4
  br i1 %102, label %103, label %146

103:                                              ; preds = %100
  %104 = load i32, i32* %1, align 4
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %104, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 3
  br i1 %114, label %115, label %142

115:                                              ; preds = %103
  %116 = load i32, i32* %1, align 4
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %116, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i32, i32* %2, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %115
  %129 = load i32, i32* %1, align 4
  %130 = load i32, i32* %1, align 4
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %130, %134
  %136 = load i32, i32* %2, align 4
  %137 = load i32, i32* %3, align 4
  %138 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %139 = call i32 @connected_to_eye(i32 %129, i32 %135, i32 %136, i32 %137, %struct.eye_data* %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %128
  br label %146

142:                                              ; preds = %128, %115, %103
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %5, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %5, align 4
  br label %100, !llvm.loop !34

146:                                              ; preds = %141, %100
  %147 = load i32, i32* %5, align 4
  %148 = icmp eq i32 %147, 4
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %1, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %151
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %149, %146
  br label %154

154:                                              ; preds = %153, %98, %45, %28, %16
  %155 = load i32, i32* %1, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %1, align 4
  br label %6, !llvm.loop !35

157:                                              ; preds = %6
  ret void
}

declare dso_local i32 @find_eye_dragons(i32, %struct.eye_data*, i32, i32*, i32) #1

declare dso_local i32 @eye_move_urgency(%struct.eyevalue*) #1

declare dso_local void @add_eyevalues(%struct.eyevalue*, %struct.eyevalue*, %struct.eyevalue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_escape(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [400 x i8], align 16
  %7 = alloca [400 x i8], align 16
  %8 = alloca [400 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %10
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %23

22:                                               ; preds = %15, %2
  br label %30

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = sdiv i32 %24, 20
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* %3, align 4
  %28 = srem i32 %27, 20
  %29 = sub nsw i32 %28, 1
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1871, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.115, i64 0, i64 0), i32 %26, i32 %29)
  br label %30

30:                                               ; preds = %23, %22
  store i32 21, i32* %5, align 4
  br label %31

31:                                               ; preds = %50, %30
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 400
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 3
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @is_same_dragon(i32 %42, i32 %43)
  %45 = trunc i32 %44 to i8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 %47
  store i8 %45, i8* %48, align 1
  br label %49

49:                                               ; preds = %41, %34
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %31, !llvm.loop !36

53:                                               ; preds = %31
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = sub nsw i32 3, %58
  %60 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  call void @get_lively_stones(i32 %59, i8* %60)
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds [400 x i8], [400 x i8]* %8, i64 0, i64 0
  %67 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  call void @compute_escape_influence(i32 %65, i8* %66, float* null, i8* %67)
  store i32 21, i32* %5, align 4
  br label %68

68:                                               ; preds = %162, %53
  %69 = load i32, i32* %5, align 4
  %70 = icmp slt i32 %69, 400
  br i1 %70, label %71, label %165

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ne i32 %76, 3
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %162

79:                                               ; preds = %71
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %130

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 %91
  store i8 6, i8* %92, align 1
  br label %129

93:                                               ; preds = %82
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %95
  %97 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = icmp eq i32 %98, 3
  br i1 %99, label %100, label %128

100:                                              ; preds = %93
  %101 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %101, i64 %107
  %109 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %108, i32 0, i32 9
  %110 = load i32, i32* %109, align 4
  %111 = icmp sgt i32 %110, 5
  br i1 %111, label %124, label %112

112:                                              ; preds = %100
  %113 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %113, i64 %119
  %121 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 5
  br i1 %123, label %124, label %128

124:                                              ; preds = %112, %100
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 %126
  store i8 4, i8* %127, align 1
  br label %128

128:                                              ; preds = %124, %112, %93
  br label %129

129:                                              ; preds = %128, %89
  br label %161

130:                                              ; preds = %79
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = icmp eq i32 %135, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %130
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %160, label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %5, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %150
  %152 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %151, i32 0, i32 16
  %153 = getelementptr inbounds [10 x i32], [10 x i32]* %152, i64 0, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load i32, i32* %5, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 %158
  store i8 2, i8* %159, align 1
  br label %160

160:                                              ; preds = %156, %148, %142, %130
  br label %161

161:                                              ; preds = %160, %129
  br label %162

162:                                              ; preds = %161, %78
  %163 = load i32, i32* %5, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %5, align 4
  br label %68, !llvm.loop !37

165:                                              ; preds = %68
  %166 = getelementptr inbounds [400 x i8], [400 x i8]* %6, i64 0, i64 0
  %167 = load i32, i32* %3, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = getelementptr inbounds [400 x i8], [400 x i8]* %7, i64 0, i64 0
  %173 = call i32 @dragon_escape(i8* %166, i32 %171, i8* %172)
  ret i32 %173
}

declare dso_local void @resegment_initial_influence() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_refined_dragon_weaknesses() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %12, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @number_of_dragons, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %7, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %10, i32 0, i32 4
  store i32 800, i32* %11, align 4
  br label %12

12:                                               ; preds = %6
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  br label %2, !llvm.loop !38

15:                                               ; preds = %2
  call void @compute_surrounding_moyo_sizes(%struct.influence_data* @initial_black_influence)
  call void @compute_surrounding_moyo_sizes(%struct.influence_data* @initial_white_influence)
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %28, %15
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @number_of_dragons, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %1, align 4
  %22 = call float @compute_dragon_weakness_value(i32 %21)
  %23 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %23, i64 %25
  %27 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %26, i32 0, i32 7
  store float %22, float* %27, align 4
  br label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  br label %16, !llvm.loop !39

31:                                               ; preds = %16
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compute_crude_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.eyevalue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %7, i64 %13
  %15 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %14, i32 0, i32 10
  store %struct.eyevalue* %15, %struct.eyevalue** %4, align 8
  %16 = load %struct.eyevalue*, %struct.eyevalue** %4, align 8
  %17 = call i32 @max_eyes(%struct.eyevalue* %16)
  %18 = load %struct.eyevalue*, %struct.eyevalue** %4, align 8
  %19 = call i32 @min_eyes(%struct.eyevalue* %18)
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %21, i64 %27
  %29 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %28, i32 0, i32 12
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @dragon2_initialized, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %35

34:                                               ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1625, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i64 0, i64 0), i32 -1, i32 -1)
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %172

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %44, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %39
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %54, i32 0, i32 16
  %56 = getelementptr inbounds [10 x i32], [10 x i32]* %55, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %62, i32 0, i32 18
  %64 = getelementptr inbounds [10 x i32], [10 x i32]* %63, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %172

71:                                               ; preds = %67, %59, %51, %39
  %72 = load i32, i32* %6, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp slt i32 %75, 3
  br i1 %76, label %77, label %109

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %80, i32 0, i32 18
  %82 = getelementptr inbounds [10 x i32], [10 x i32]* %81, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %77
  %86 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %88
  %90 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %86, i64 %92
  %94 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %95, 5
  br i1 %96, label %97, label %109

97:                                               ; preds = %85
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %107, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %100, %97
  store i32 2, i32* %2, align 4
  br label %172

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %85, %77, %74, %71
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %109
  %113 = load i32, i32* %5, align 4
  %114 = icmp sge i32 %113, 3
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 1, i32* %2, align 4
  br label %172

116:                                              ; preds = %112, %109
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %122, i32 0, i32 9
  %124 = load i32, i32* %123, align 4
  %125 = icmp slt i32 %124, 2
  br i1 %125, label %126, label %171

126:                                              ; preds = %119, %116
  %127 = load i32, i32* %5, align 4
  %128 = icmp slt i32 %127, 3
  br i1 %128, label %129, label %154

129:                                              ; preds = %126
  %130 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %131 = load i32, i32* %3, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %132
  %134 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %130, i64 %136
  %138 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %137, i32 0, i32 9
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %129
  %142 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %143 = load i32, i32* %3, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %142, i64 %148
  %150 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %151, 5
  br i1 %152, label %153, label %154

153:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %172

154:                                              ; preds = %141, %129, %126
  %155 = load i32, i32* %5, align 4
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %170

157:                                              ; preds = %154
  %158 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %159 = load i32, i32* %3, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %160
  %162 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %158, i64 %164
  %166 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = icmp slt i32 %167, 5
  br i1 %168, label %169, label %170

169:                                              ; preds = %157
  store i32 2, i32* %2, align 4
  br label %172

170:                                              ; preds = %157, %154
  br label %171

171:                                              ; preds = %170, %119
  store i32 3, i32* %2, align 4
  br label %172

172:                                              ; preds = %171, %169, %153, %115, %107, %70, %38
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_neighbor_dragons() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [400 x i32], align 16
  %9 = alloca [400 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [4 x i32], align 16
  %16 = load i32, i32* @dragon2_initialized, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %0
  br label %20

19:                                               ; preds = %0
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 830, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.109, i64 0, i64 0), i32 -1, i32 -1)
  br label %20

20:                                               ; preds = %19, %18
  store i32 21, i32* %3, align 4
  br label %21

21:                                               ; preds = %66, %20
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 400
  br i1 %23, label %24, label %69

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %50

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %3, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %45
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %48
  store i32 0, i32* %49, align 4
  br label %65

50:                                               ; preds = %31
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp ne i32 %55, 3
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %59
  store i32 -1, i32* %60, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %62
  store i32 -1, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %50
  br label %65

65:                                               ; preds = %64, %38
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %21, !llvm.loop !40

69:                                               ; preds = %21
  store i32 1, i32* %10, align 4
  br label %70

70:                                               ; preds = %218, %69
  %71 = load i32, i32* %10, align 4
  %72 = icmp sle i32 %71, 5
  br i1 %72, label %73, label %221

73:                                               ; preds = %70
  store i32 0, i32* %13, align 4
  store i32 21, i32* %3, align 4
  br label %74

74:                                               ; preds = %214, %73
  %75 = load i32, i32* %3, align 4
  %76 = icmp slt i32 %75, 400
  br i1 %76, label %77, label %217

77:                                               ; preds = %74
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp ne i32 %82, 3
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %214

85:                                               ; preds = %77
  %86 = load i32, i32* %3, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = sub nsw i32 %90, 1
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93, %85
  br label %214

100:                                              ; preds = %93
  %101 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %101, i64 %106
  %108 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %206, %100
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 4
  br i1 %116, label %117, label %209

117:                                              ; preds = %114
  %118 = load i32, i32* %3, align 4
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %118, %122
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp ult i32 %124, 421
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 3
  br i1 %132, label %134, label %133

133:                                              ; preds = %126, %117
  br label %206

134:                                              ; preds = %126
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %206

148:                                              ; preds = %140, %134
  %149 = load i32, i32* %10, align 4
  %150 = icmp eq i32 %149, 1
  br i1 %150, label %170, label %151

151:                                              ; preds = %148
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %152, 1
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %156 = load i32, i32* %3, align 4
  %157 = call i32 @whose_area(%struct.influence_data* %155, i32 %156)
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %205

160:                                              ; preds = %151
  %161 = load i32, i32* %12, align 4
  %162 = icmp eq i32 %161, 1
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @whose_area(%struct.influence_data* %164, i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 3, %167
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %205

170:                                              ; preds = %160, %148
  %171 = load i32, i32* %4, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %10, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %170
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* %3, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %181, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %177
  %188 = load i32, i32* %4, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %189
  store i32 -2, i32* %190, align 4
  br label %191

191:                                              ; preds = %187, %177
  br label %204

192:                                              ; preds = %170
  %193 = load i32, i32* %3, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %198
  store i32 %196, i32* %199, align 4
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %202
  store i32 %200, i32* %203, align 4
  store i32 1, i32* %13, align 4
  br label %204

204:                                              ; preds = %192, %191
  br label %205

205:                                              ; preds = %204, %160, %151
  br label %206

206:                                              ; preds = %205, %147, %133
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %114, !llvm.loop !41

209:                                              ; preds = %114
  %210 = load i32, i32* %13, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  br label %217

213:                                              ; preds = %209
  br label %214

214:                                              ; preds = %213, %99, %84
  %215 = load i32, i32* %3, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %3, align 4
  br label %74, !llvm.loop !42

217:                                              ; preds = %212, %74
  br label %218

218:                                              ; preds = %217
  %219 = load i32, i32* %10, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %10, align 4
  br label %70, !llvm.loop !43

221:                                              ; preds = %70
  store i32 21, i32* %3, align 4
  br label %222

222:                                              ; preds = %390, %221
  %223 = load i32, i32* %3, align 4
  %224 = icmp slt i32 %223, 400
  br i1 %224, label %225, label %393

225:                                              ; preds = %222
  %226 = load i32, i32* %3, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %227
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp ne i32 %230, 3
  br i1 %231, label %233, label %232

232:                                              ; preds = %225
  br label %390

233:                                              ; preds = %225
  %234 = load i32, i32* %3, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, -2
  br i1 %238, label %239, label %307

239:                                              ; preds = %233
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %240

240:                                              ; preds = %275, %239
  %241 = load i32, i32* %11, align 4
  %242 = icmp slt i32 %241, 4
  br i1 %242, label %243, label %278

243:                                              ; preds = %240
  %244 = load i32, i32* %3, align 4
  %245 = load i32, i32* %11, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %244, %248
  store i32 %249, i32* %4, align 4
  %250 = load i32, i32* %4, align 4
  %251 = icmp ult i32 %250, 421
  br i1 %251, label %252, label %274

252:                                              ; preds = %243
  %253 = load i32, i32* %4, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %254
  %256 = load i8, i8* %255, align 1
  %257 = zext i8 %256 to i32
  %258 = icmp ne i32 %257, 3
  br i1 %258, label %259, label %274

259:                                              ; preds = %252
  %260 = load i32, i32* %4, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = icmp sge i32 %263, 0
  br i1 %264, label %265, label %274

265:                                              ; preds = %259
  %266 = load i32, i32* %4, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* %14, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %14, align 4
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %272
  store i32 %269, i32* %273, align 4
  br label %274

274:                                              ; preds = %265, %259, %252, %243
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %11, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %11, align 4
  br label %240, !llvm.loop !44

278:                                              ; preds = %240
  store i32 0, i32* %5, align 4
  br label %279

279:                                              ; preds = %303, %278
  %280 = load i32, i32* %5, align 4
  %281 = load i32, i32* %14, align 4
  %282 = icmp slt i32 %280, %281
  br i1 %282, label %283, label %306

283:                                              ; preds = %279
  %284 = load i32, i32* %5, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %299, %283
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* %14, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %290, label %302

290:                                              ; preds = %286
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i32, i32* %6, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  call void @add_adjacent_dragons(i32 %294, i32 %298)
  br label %299

299:                                              ; preds = %290
  %300 = load i32, i32* %6, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %6, align 4
  br label %286, !llvm.loop !45

302:                                              ; preds = %286
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %5, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %5, align 4
  br label %279, !llvm.loop !46

306:                                              ; preds = %279
  br label %389

307:                                              ; preds = %233
  %308 = load i32, i32* %3, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp sge i32 %311, 0
  br i1 %312, label %313, label %388

313:                                              ; preds = %307
  %314 = load i32, i32* %3, align 4
  %315 = sub nsw i32 %314, 20
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %316
  %318 = load i8, i8* %317, align 1
  %319 = zext i8 %318 to i32
  %320 = icmp ne i32 %319, 3
  br i1 %320, label %321, label %350

321:                                              ; preds = %313
  %322 = load i32, i32* %3, align 4
  %323 = sub nsw i32 %322, 20
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %324
  %326 = load i32, i32* %325, align 4
  %327 = icmp sge i32 %326, 0
  br i1 %327, label %328, label %349

328:                                              ; preds = %321
  %329 = load i32, i32* %3, align 4
  %330 = sub nsw i32 %329, 20
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %3, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = icmp ne i32 %333, %337
  br i1 %338, label %339, label %349

339:                                              ; preds = %328
  %340 = load i32, i32* %3, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* %3, align 4
  %345 = sub nsw i32 %344, 20
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %346
  %348 = load i32, i32* %347, align 4
  call void @add_adjacent_dragons(i32 %343, i32 %348)
  br label %349

349:                                              ; preds = %339, %328, %321
  br label %350

350:                                              ; preds = %349, %313
  %351 = load i32, i32* %3, align 4
  %352 = add nsw i32 %351, 1
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = icmp ne i32 %356, 3
  br i1 %357, label %358, label %387

358:                                              ; preds = %350
  %359 = load i32, i32* %3, align 4
  %360 = add nsw i32 %359, 1
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = icmp sge i32 %363, 0
  br i1 %364, label %365, label %386

365:                                              ; preds = %358
  %366 = load i32, i32* %3, align 4
  %367 = add nsw i32 %366, 1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %368
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %3, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %370, %374
  br i1 %375, label %376, label %386

376:                                              ; preds = %365
  %377 = load i32, i32* %3, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %3, align 4
  %382 = add nsw i32 %381, 1
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [400 x i32], [400 x i32]* %8, i64 0, i64 %383
  %385 = load i32, i32* %384, align 4
  call void @add_adjacent_dragons(i32 %380, i32 %385)
  br label %386

386:                                              ; preds = %376, %365, %358
  br label %387

387:                                              ; preds = %386, %350
  br label %388

388:                                              ; preds = %387, %307
  br label %389

389:                                              ; preds = %388, %306
  br label %390

390:                                              ; preds = %389, %232
  %391 = load i32, i32* %3, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %3, align 4
  br label %222, !llvm.loop !47

393:                                              ; preds = %222
  ret void
}

declare dso_local void @purge_persistent_owl_cache() #1

declare dso_local void @set_eyevalue(%struct.eyevalue*, i32, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @crude_dragon_weakness(i32 %0, %struct.eyevalue* %1, i32 %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.eyevalue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  store i32 %0, i32* %7, align 4
  store %struct.eyevalue* %1, %struct.eyevalue** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  %18 = load %struct.eyevalue*, %struct.eyevalue** %8, align 8
  %19 = call i32 @max_eyes(%struct.eyevalue* %18)
  %20 = load %struct.eyevalue*, %struct.eyevalue** %8, align 8
  %21 = call i32 @min_eyes(%struct.eyevalue* %20)
  %22 = add nsw i32 %19, %21
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = add nsw i32 %22, %25
  %27 = sitofp i32 %26 to double
  %28 = fmul double 5.000000e-01, %27
  %29 = fptrunc double %28 to float
  store float %29, float* %12, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 9
  br i1 %31, label %35, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %5
  store float 0.000000e+00, float* %6, align 4
  br label %165

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, 6
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39, %36
  store float 1.000000e+00, float* %6, align 4
  br label %165

46:                                               ; preds = %42
  %47 = load float, float* %10, align 4
  %48 = call float @gg_interpolate(%struct.interpolation_data* bitcast ({ i32, float, float, <{ float, float, float, float, float, [16 x float] }> }* @moyo_value2weakness to %struct.interpolation_data*), float %47)
  %49 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  store float %48, float* %49, align 4
  %50 = load float, float* %11, align 4
  %51 = call float @gg_interpolate(%struct.interpolation_data* bitcast ({ i32, float, float, <{ float, float, float, float, float, [16 x float] }> }* @escape_route2weakness to %struct.interpolation_data*), float %50)
  %52 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  store float %51, float* %52, align 4
  %53 = load float, float* %12, align 4
  %54 = call float @gg_interpolate(%struct.interpolation_data* bitcast ({ i32, float, float, <{ float, float, float, float, float, float, [15 x float] }> }* @genus2weakness to %struct.interpolation_data*), float %53)
  %55 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  store float %54, float* %55, align 4
  %56 = load i32, i32* @debug, align 4
  %57 = and i32 %56, 32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %77

60:                                               ; preds = %46
  %61 = load float, float* %10, align 4
  %62 = fpext float %61 to double
  %63 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %64 = load float, float* %63, align 4
  %65 = fpext float %64 to double
  %66 = load float, float* %11, align 4
  %67 = fpext float %66 to double
  %68 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  %69 = load float, float* %68, align 4
  %70 = fpext float %69 to double
  %71 = load float, float* %12, align 4
  %72 = fpext float %71 to double
  %73 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  %74 = load float, float* %73, align 4
  %75 = fpext float %74 to double
  %76 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.71, i64 0, i64 0), double %62, double %65, double %67, double %70, double %72, double %75)
  br label %77

77:                                               ; preds = %60, %59
  store i32 0, i32* %15, align 4
  br label %78

78:                                               ; preds = %118, %77
  %79 = load i32, i32* %15, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %121

81:                                               ; preds = %78
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %16, align 4
  br label %84

84:                                               ; preds = %114, %81
  %85 = load i32, i32* %16, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %117

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 %89
  %91 = load float, float* %90, align 4
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 %93
  %95 = load float, float* %94, align 4
  %96 = fcmp olt float %91, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %87
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 %99
  %101 = load float, float* %100, align 4
  store float %101, float* %17, align 4
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 %103
  %105 = load float, float* %104, align 4
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 %107
  store float %105, float* %108, align 4
  %109 = load float, float* %17, align 4
  %110 = load i32, i32* %16, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 %111
  store float %109, float* %112, align 4
  br label %113

113:                                              ; preds = %97, %87
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %16, align 4
  br label %84, !llvm.loop !48

117:                                              ; preds = %84
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %78, !llvm.loop !49

121:                                              ; preds = %78
  %122 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %123 = load float, float* %122, align 4
  %124 = fpext float %123 to double
  %125 = fmul double 0x3FE6666666666666, %124
  %126 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  %127 = load float, float* %126, align 4
  %128 = fpext float %127 to double
  %129 = fmul double 3.000000e-01, %128
  %130 = fadd double %125, %129
  %131 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %132 = load float, float* %131, align 4
  %133 = fpext float %132 to double
  %134 = fmul double 1.300000e+00, %133
  %135 = fcmp olt double %130, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %121
  %137 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %138 = load float, float* %137, align 4
  %139 = fpext float %138 to double
  %140 = fmul double 0x3FE6666666666666, %139
  %141 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  %142 = load float, float* %141, align 4
  %143 = fpext float %142 to double
  %144 = fmul double 3.000000e-01, %143
  %145 = fadd double %140, %144
  br label %151

146:                                              ; preds = %121
  %147 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %148 = load float, float* %147, align 4
  %149 = fpext float %148 to double
  %150 = fmul double 1.300000e+00, %149
  br label %151

151:                                              ; preds = %146, %136
  %152 = phi double [ %145, %136 ], [ %150, %146 ]
  %153 = fptrunc double %152 to float
  store float %153, float* %14, align 4
  %154 = load float, float* %14, align 4
  %155 = fpext float %154 to double
  %156 = fcmp oge double %155, 0.000000e+00
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load float, float* %14, align 4
  %159 = fpext float %158 to double
  %160 = fcmp ole double %159, 1.000000e+00
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %163

162:                                              ; preds = %157, %151
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2071, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.72, i64 0, i64 0), i32 -1, i32 -1)
  br label %163

163:                                              ; preds = %162, %161
  %164 = load float, float* %14, align 4
  store float %164, float* %6, align 4
  br label %165

165:                                              ; preds = %163, %45, %35
  %166 = load float, float* %6, align 4
  ret float %166
}

declare dso_local i32 @owl_attack(i32, i32*, i32*, i32*) #1

declare dso_local i32 @owl_defend(i32, i32*, i32*, i32*) #1

declare dso_local i32 @owl_does_defend(i32, i32, i32*) #1

declare dso_local i32 @get_last_move() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_same_dragon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8, %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %65

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = icmp ult i32 %17, 421
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 3
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %34

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %4, align 4
  %29 = sdiv i32 %28, 20
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %4, align 4
  %32 = srem i32 %31, 20
  %33 = sub nsw i32 %32, 1
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.73, i64 0, i64 0), i32 %30, i32 %33)
  br label %34

34:                                               ; preds = %27, %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp ult i32 %35, 421
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %42, 3
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %52

45:                                               ; preds = %37, %34
  %46 = load i32, i32* %5, align 4
  %47 = sdiv i32 %46, 20
  %48 = sub nsw i32 %47, 1
  %49 = load i32, i32* %5, align 4
  %50 = srem i32 %49, 20
  %51 = sub nsw i32 %50, 1
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.74, i64 0, i64 0), i32 %48, i32 %51)
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %57, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %52, %11
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @owl_threaten_defense(i32, i32*, i32*) #1

declare dso_local i32 @owl_threaten_attack(i32, i32*, i32*) #1

declare dso_local i32 @compute_surroundings(i32, i32, i32, i32*) #1

declare dso_local i32 @max_eyes(%struct.eyevalue*) #1

declare dso_local i32 @min_eyes(%struct.eyevalue*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dragon_looks_inessential(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %5
  %7 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %8, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @owl_substantial(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %22

21:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dragon_invincible(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.eye_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [400 x i32], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %17, %1
  br label %26

25:                                               ; preds = %17
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1010, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.111, i64 0, i64 0), i32 -1, i32 -1)
  br label %26

26:                                               ; preds = %25, %24
  store i32 21, i32* %7, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 400
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %50

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @is_same_dragon(i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %45, i32 0, i32 13
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %184

50:                                               ; preds = %42, %37, %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %27, !llvm.loop !50

54:                                               ; preds = %27
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 0), %struct.eye_data** %4, align 8
  store i32 5, i32* %5, align 4
  br label %63

62:                                               ; preds = %54
  store %struct.eye_data* getelementptr inbounds ([400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 0), %struct.eye_data** %4, align 8
  store i32 4, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 0
  %65 = bitcast i32* %64 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %65, i8 0, i64 1600, i1 false)
  store i32 21, i32* %7, align 4
  br label %66

66:                                               ; preds = %143, %63
  %67 = load i32, i32* %7, align 4
  %68 = icmp slt i32 %67, 400
  br i1 %68, label %69, label %146

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %142

81:                                               ; preds = %69
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @is_same_dragon(i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %142

86:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %138, %86
  %88 = load i32, i32* %6, align 4
  %89 = icmp slt i32 %88, 4
  br i1 %89, label %90, label %141

90:                                               ; preds = %87
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %91, %95
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp ne i32 %101, 3
  br i1 %102, label %103, label %137

103:                                              ; preds = %90
  %104 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %104, i64 %106
  %108 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %112, label %137

112:                                              ; preds = %103
  %113 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %114 = load i32, i32* %10, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %113, i64 %115
  %117 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %112
  %121 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %121, i64 %123
  %125 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %124, i32 0, i32 7
  %126 = load i8, i8* %125, align 4
  %127 = icmp ne i8 %126, 0
  br i1 %127, label %137, label %128

128:                                              ; preds = %120
  %129 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %129, i64 %131
  %133 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %135
  store i32 1, i32* %136, align 4
  br label %137

137:                                              ; preds = %128, %120, %112, %103, %90
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %6, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %6, align 4
  br label %87, !llvm.loop !51

141:                                              ; preds = %87
  br label %142

142:                                              ; preds = %141, %81, %69
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %66, !llvm.loop !52

146:                                              ; preds = %66
  store i32 21, i32* %7, align 4
  br label %147

147:                                              ; preds = %176, %146
  %148 = load i32, i32* %7, align 4
  %149 = icmp slt i32 %148, 400
  br i1 %149, label %150, label %179

150:                                              ; preds = %147
  %151 = load i32, i32* %7, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [400 x i32], [400 x i32]* %9, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %175

156:                                              ; preds = %150
  %157 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %157, i64 %159
  %161 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %156
  %165 = load %struct.eye_data*, %struct.eye_data** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %165, i64 %167
  %169 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %168, i32 0, i32 4
  %170 = call i32 @min_eyes(%struct.eyevalue* %169)
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %164
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %175

175:                                              ; preds = %172, %164, %156, %150
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %7, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %7, align 4
  br label %147, !llvm.loop !53

179:                                              ; preds = %147
  %180 = load i32, i32* %8, align 4
  %181 = icmp sge i32 %180, 2
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 1, i32* %2, align 4
  br label %184

183:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %182, %49
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local void @new_semeai(i32) #1

declare dso_local void @semeai(i32) #1

declare dso_local i32 @is_worm_origin(i32, i32) #1

declare dso_local i32 @extended_chainlinks(i32, i32*, i32) #1

declare dso_local void @propagate_worm(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @first_worm_in_dragon(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @next_worm_in_dragon(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %12

11:                                               ; preds = %1
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 2201, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i64 0, i64 0), i32 -1, i32 -1)
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_strength_data(i32 %0, i8* %1, float* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca float*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store float* %2, float** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %9, %3
  br label %17

16:                                               ; preds = %12
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1146, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.28, i64 0, i64 0), i32 -1, i32 -1)
  br label %17

17:                                               ; preds = %16, %15
  %18 = load i32, i32* %4, align 4
  %19 = load i8*, i8** %5, align 8
  call void @get_alive_stones(i32 %18, i8* %19)
  %20 = load i8*, i8** %5, align 8
  %21 = load float*, float** %6, align 8
  call void @set_dragon_strengths(i8* %20, float* %21)
  %22 = load i32, i32* %4, align 4
  %23 = load i8*, i8** %5, align 8
  call void @mark_inessential_stones(i32 %22, i8* %23)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_alive_stones(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i8*, i8** %4, align 8
  call void @get_lively_stones(i32 %7, i8* %8)
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %62, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @number_of_dragons, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %65

13:                                               ; preds = %9
  %14 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %14, i64 %16
  %18 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %13
  %22 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %22, i64 %24
  %26 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %61

29:                                               ; preds = %21
  %30 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %30, i64 %32
  %34 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %3, align 4
  %41 = sub nsw i32 3, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %29, %13
  %44 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %44, i64 %46
  %48 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @first_worm_in_dragon(i32 %49)
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %57, %43
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %51
  %55 = load i32, i32* %6, align 4
  %56 = load i8*, i8** %4, align 8
  call void @mark_string(i32 %55, i8* %56, i8 signext 0)
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @next_worm_in_dragon(i32 %58)
  store i32 %59, i32* %6, align 4
  br label %51, !llvm.loop !54

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %29, %21
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %9, !llvm.loop !55

65:                                               ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dragon_strengths(i8* %0, float* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store float* %1, float** %4, align 8
  store i32 21, i32* %5, align 4
  br label %6

6:                                                ; preds = %72, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 400
  br i1 %8, label %9, label %75

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 3
  br i1 %15, label %16, label %71

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %23
  br label %45

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = sdiv i32 %39, 20
  %41 = sub nsw i32 %40, 1
  %42 = load i32, i32* %5, align 4
  %43 = srem i32 %42, 20
  %44 = sub nsw i32 %43, 1
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1111, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.112, i64 0, i64 0), i32 %41, i32 %44)
  br label %45

45:                                               ; preds = %38, %37
  %46 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %46, i64 %52
  %54 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %53, i32 0, i32 8
  %55 = load float, float* %54, align 4
  %56 = fpext float %55 to double
  %57 = fmul double 3.000000e-01, %56
  %58 = fsub double 1.000000e+00, %57
  %59 = fmul double 1.000000e+02, %58
  %60 = fptrunc double %59 to float
  %61 = load float*, float** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  store float %60, float* %64, align 4
  br label %70

65:                                               ; preds = %16
  %66 = load float*, float** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %66, i64 %68
  store float 0.000000e+00, float* %69, align 4
  br label %70

70:                                               ; preds = %65, %45
  br label %71

71:                                               ; preds = %70, %9
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %6, !llvm.loop !56

75:                                               ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_inessential_stones(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  store i32 21, i32* %5, align 4
  br label %6

6:                                                ; preds = %104, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 400
  br i1 %8, label %9, label %107

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %23, label %16

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %103

23:                                               ; preds = %16, %9
  %24 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %24, i64 %30
  %32 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 5
  br i1 %34, label %98, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %103

42:                                               ; preds = %35
  %43 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %43, i64 %49
  %51 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %42
  %55 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %55, i64 %61
  %63 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 6
  br i1 %65, label %66, label %78

66:                                               ; preds = %54
  %67 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %67, i64 %73
  %75 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 2
  br i1 %77, label %98, label %78

78:                                               ; preds = %66, %54, %42
  %79 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %81
  %83 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %79, i64 %85
  %87 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %103

90:                                               ; preds = %78
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = load i32, i32* %3, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %90, %66, %23
  %99 = load i8*, i8** %4, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  store i8 1, i8* %102, align 1
  br label %103

103:                                              ; preds = %98, %90, %78, %35, %16
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %6, !llvm.loop !57

107:                                              ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_dragon_influence() #0 {
  %1 = alloca [400 x i8], align 16
  %2 = alloca [400 x float], align 16
  %3 = getelementptr inbounds [400 x i8], [400 x i8]* %1, i64 0, i64 0
  %4 = getelementptr inbounds [400 x float], [400 x float]* %2, i64 0, i64 0
  call void @set_strength_data(i32 2, i8* %3, float* %4)
  %5 = getelementptr inbounds [400 x i8], [400 x i8]* %1, i64 0, i64 0
  %6 = getelementptr inbounds [400 x float], [400 x float]* %2, i64 0, i64 0
  call void @compute_influence(i32 2, i8* %5, float* %6, %struct.influence_data* @initial_black_influence, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0))
  %7 = getelementptr inbounds [400 x i8], [400 x i8]* %1, i64 0, i64 0
  %8 = getelementptr inbounds [400 x float], [400 x float]* %2, i64 0, i64 0
  call void @set_strength_data(i32 1, i8* %7, float* %8)
  %9 = getelementptr inbounds [400 x i8], [400 x i8]* %1, i64 0, i64 0
  %10 = getelementptr inbounds [400 x float], [400 x float]* %2, i64 0, i64 0
  call void @compute_influence(i32 1, i8* %9, float* %10, %struct.influence_data* @initial_white_influence, i32 0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i64 0, i64 0))
  ret void
}

declare dso_local void @compute_influence(i32, i8*, float*, %struct.influence_data*, i32, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_dragons() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.worm_data*, align 8
  %4 = alloca %struct.dragon_data*, align 8
  %5 = alloca %struct.dragon_data2*, align 8
  %6 = alloca i32, align 4
  store i32 21, i32* %1, align 4
  br label %7

7:                                                ; preds = %266, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 400
  br i1 %9, label %10, label %269

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %12
  store %struct.worm_data* %13, %struct.worm_data** %3, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %28, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  br label %266

28:                                               ; preds = %20, %10
  %29 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %30 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %1, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %265

34:                                               ; preds = %28
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %37
  %39 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %1, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = call i8* @color_to_string(i32 %45)
  %47 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %48 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %51 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %50, i32 0, i32 2
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  %54 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %55 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %58 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %61 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %64 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %67 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.43, i64 0, i64 0), i32 %35, i32 %40, i8* %46, i32 %49, double %53, i32 %56, i32 %59, i32 %62, i32 %65, i32 %68)
  %70 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %71 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %34
  %75 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.44, i64 0, i64 0))
  br label %86

76:                                               ; preds = %34
  %77 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %78 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i64 0, i64 0))
  br label %85

83:                                               ; preds = %76
  %84 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %81
  br label %86

86:                                               ; preds = %85, %74
  %87 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %88 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %93 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %91, %86
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %123, %96
  %98 = load i32, i32* %2, align 4
  %99 = icmp slt i32 %98, 10
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %102 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %101, i32 0, i32 16
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [10 x i32], [10 x i32]* %102, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %126

109:                                              ; preds = %100
  %110 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %111 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %110, i32 0, i32 15
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [10 x i32], [10 x i32]* %111, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %117 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %116, i32 0, i32 16
  %118 = load i32, i32* %2, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %117, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.48, i64 0, i64 0), i32 %115, i32 %121)
  br label %123

123:                                              ; preds = %109
  %124 = load i32, i32* %2, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %2, align 4
  br label %97, !llvm.loop !58

126:                                              ; preds = %108, %97
  store i32 0, i32* %2, align 4
  br label %127

127:                                              ; preds = %162, %126
  %128 = load i32, i32* %2, align 4
  %129 = icmp slt i32 %128, 10
  br i1 %129, label %130, label %165

130:                                              ; preds = %127
  %131 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %132 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %131, i32 0, i32 18
  %133 = load i32, i32* %2, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [10 x i32], [10 x i32]* %132, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %130
  br label %165

139:                                              ; preds = %130
  %140 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %141 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %140, i32 0, i32 18
  %142 = load i32, i32* %2, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [10 x i32], [10 x i32]* %141, i64 0, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %139
  %148 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %149 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %148, i32 0, i32 17
  %150 = load i32, i32* %2, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [10 x i32], [10 x i32]* %149, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %155 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %154, i32 0, i32 18
  %156 = load i32, i32* %2, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [10 x i32], [10 x i32]* %155, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.49, i64 0, i64 0), i32 %153, i32 %159)
  br label %161

161:                                              ; preds = %147, %139
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %2, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %2, align 4
  br label %127, !llvm.loop !59

165:                                              ; preds = %138, %127
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %192, %165
  %167 = load i32, i32* %2, align 4
  %168 = icmp slt i32 %167, 10
  br i1 %168, label %169, label %195

169:                                              ; preds = %166
  %170 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %171 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %170, i32 0, i32 20
  %172 = load i32, i32* %2, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [10 x i32], [10 x i32]* %171, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %169
  br label %195

178:                                              ; preds = %169
  %179 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %180 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %179, i32 0, i32 19
  %181 = load i32, i32* %2, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [10 x i32], [10 x i32]* %180, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %186 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %185, i32 0, i32 20
  %187 = load i32, i32* %2, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [10 x i32], [10 x i32]* %186, i64 0, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.50, i64 0, i64 0), i32 %184, i32 %190)
  br label %192

192:                                              ; preds = %178
  %193 = load i32, i32* %2, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %2, align 4
  br label %166, !llvm.loop !60

195:                                              ; preds = %177, %166
  store i32 0, i32* %2, align 4
  br label %196

196:                                              ; preds = %231, %195
  %197 = load i32, i32* %2, align 4
  %198 = icmp slt i32 %197, 10
  br i1 %198, label %199, label %234

199:                                              ; preds = %196
  %200 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %201 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %200, i32 0, i32 22
  %202 = load i32, i32* %2, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [10 x i32], [10 x i32]* %201, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %199
  br label %234

208:                                              ; preds = %199
  %209 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %210 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %209, i32 0, i32 22
  %211 = load i32, i32* %2, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [10 x i32], [10 x i32]* %210, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %230

216:                                              ; preds = %208
  %217 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %218 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %217, i32 0, i32 21
  %219 = load i32, i32* %2, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [10 x i32], [10 x i32]* %218, i64 0, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %224 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %223, i32 0, i32 22
  %225 = load i32, i32* %2, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [10 x i32], [10 x i32]* %224, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.51, i64 0, i64 0), i32 %222, i32 %228)
  br label %230

230:                                              ; preds = %216, %208
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %2, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %2, align 4
  br label %196, !llvm.loop !61

234:                                              ; preds = %207, %196
  %235 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %236 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %244

239:                                              ; preds = %234
  %240 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %241 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %240, i32 0, i32 8
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 %242)
  br label %244

244:                                              ; preds = %239, %234
  %245 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %246 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %245, i32 0, i32 12
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  %250 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i64 0, i64 0))
  br label %251

251:                                              ; preds = %249, %244
  %252 = load %struct.worm_data*, %struct.worm_data** %3, align 8
  %253 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %252, i32 0, i32 13
  %254 = load i32, i32* %253, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.54, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %251
  %259 = load i32, i32* %1, align 4
  %260 = call i32 @is_ko_point(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %258
  %263 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i64 0, i64 0))
  br label %264

264:                                              ; preds = %262, %258
  br label %265

265:                                              ; preds = %264, %28
  br label %266

266:                                              ; preds = %265, %27
  %267 = load i32, i32* %1, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %1, align 4
  br label %7, !llvm.loop !62

269:                                              ; preds = %7
  %270 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0))
  store i32 21, i32* %1, align 4
  br label %271

271:                                              ; preds = %425, %269
  %272 = load i32, i32* %1, align 4
  %273 = icmp slt i32 %272, 400
  br i1 %273, label %274, label %428

274:                                              ; preds = %271
  %275 = load i32, i32* %1, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %276
  store %struct.dragon_data* %277, %struct.dragon_data** %4, align 8
  %278 = load i32, i32* %1, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %279
  %281 = load i8, i8* %280, align 1
  %282 = zext i8 %281 to i32
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %292, label %284

284:                                              ; preds = %274
  %285 = load i32, i32* %1, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %286
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = icmp eq i32 %289, 2
  br i1 %290, label %292, label %291

291:                                              ; preds = %284
  br label %425

292:                                              ; preds = %284, %274
  %293 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %294 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %295 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %293, i64 %297
  store %struct.dragon_data2* %298, %struct.dragon_data2** %5, align 8
  %299 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %300 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = load i32, i32* %1, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %424

304:                                              ; preds = %292
  %305 = load i32, i32* %1, align 4
  %306 = load i32, i32* %1, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %307
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = icmp eq i32 %310, 2
  %312 = zext i1 %311 to i64
  %313 = select i1 %311, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.58, i64 0, i64 0)
  %314 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %315 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %318 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %317, i32 0, i32 4
  %319 = load float, float* %318, align 4
  %320 = fpext float %319 to double
  %321 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %322 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %321, i32 0, i32 10
  %323 = call i8* @eyevalue_to_string(%struct.eyevalue* %322)
  %324 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %325 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %324, i32 0, i32 9
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %328 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %327, i32 0, i32 5
  %329 = load i32, i32* %328, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [5 x i8*], [5 x i8*]* @show_dragons.snames, i64 0, i64 %330
  %332 = load i8*, i8** %331, align 8
  %333 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %334 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %333, i32 0, i32 16
  %335 = load i32, i32* %334, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds [5 x i8*], [5 x i8*]* @show_dragons.snames, i64 0, i64 %336
  %338 = load i8*, i8** %337, align 8
  %339 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %340 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %343 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %342, i32 0, i32 5
  %344 = load float, float* %343, align 4
  %345 = fpext float %344 to double
  %346 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %347 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %346, i32 0, i32 6
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds [10 x i8*], [10 x i8*]* @show_dragons.safety_names, i64 0, i64 %349
  %351 = load i8*, i8** %350, align 8
  %352 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %353 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %352, i32 0, i32 8
  %354 = load float, float* %353, align 4
  %355 = fpext float %354 to double
  %356 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %357 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %356, i32 0, i32 7
  %358 = load float, float* %357, align 4
  %359 = fpext float %358 to double
  %360 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([169 x i8], [169 x i8]* @.str.56, i64 0, i64 0), i32 %305, i8* %313, i32 %316, double %320, i8* %323, i32 %326, i8* %332, i8* %338, i32 %341, double %345, i8* %351, double %355, double %359)
  %361 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %362 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %361, i32 0, i32 7
  %363 = load i32, i32* %362, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [5 x i8*], [5 x i8*]* @show_dragons.snames, i64 0, i64 %364
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.59, i64 0, i64 0), i8* %366)
  %368 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %369 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %368, i32 0, i32 7
  %370 = load i32, i32* %369, align 4
  %371 = icmp eq i32 %370, 2
  br i1 %371, label %372, label %387

372:                                              ; preds = %304
  %373 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %374 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %373, i32 0, i32 8
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %377 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %376, i32 0, i32 9
  %378 = load i32, i32* %377, align 4
  %379 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.60, i64 0, i64 0), i32 %375, i32 %378)
  %380 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %381 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %380, i32 0, i32 12
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.dragon_data*, %struct.dragon_data** %4, align 8
  %384 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %383, i32 0, i32 13
  %385 = load i32, i32* %384, align 4
  %386 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i64 0, i64 0), i32 %382, i32 %385)
  br label %387

387:                                              ; preds = %372, %304
  %388 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %389

389:                                              ; preds = %409, %387
  %390 = load i32, i32* %2, align 4
  %391 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %392 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 4
  %394 = icmp slt i32 %390, %393
  br i1 %394, label %395, label %412

395:                                              ; preds = %389
  %396 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %397 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %396, i32 0, i32 1
  %398 = load i32, i32* %2, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [10 x i32], [10 x i32]* %397, i64 0, i64 %399
  %401 = load i32, i32* %400, align 4
  store i32 %401, i32* %6, align 4
  %402 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %403 = load i32, i32* %6, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %402, i64 %404
  %406 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i32 %407)
  br label %409

409:                                              ; preds = %395
  %410 = load i32, i32* %2, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %2, align 4
  br label %389, !llvm.loop !63

412:                                              ; preds = %389
  %413 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0))
  %414 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %415 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %414, i32 0, i32 12
  %416 = load i32, i32* %415, align 4
  %417 = icmp ne i32 %416, 0
  br i1 %417, label %418, label %423

418:                                              ; preds = %412
  %419 = load %struct.dragon_data2*, %struct.dragon_data2** %5, align 8
  %420 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %419, i32 0, i32 12
  %421 = load i32, i32* %420, align 4
  %422 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.52, i64 0, i64 0), i32 %421)
  br label %423

423:                                              ; preds = %418, %412
  br label %424

424:                                              ; preds = %423, %292
  br label %425

425:                                              ; preds = %424, %291
  %426 = load i32, i32* %1, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %1, align 4
  br label %271, !llvm.loop !64

428:                                              ; preds = %271
  ret void
}

declare dso_local i8* @color_to_string(i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @join_dragons(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %9
  %11 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %201

22:                                               ; preds = %2
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %36

35:                                               ; preds = %22
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1563, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.65, i64 0, i64 0), i32 -1, i32 -1)
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* @dragon2_initialized, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %41

40:                                               ; preds = %36
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1564, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.66, i64 0, i64 0), i32 -1, i32 -1)
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %3, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %48, %41
  br label %57

56:                                               ; preds = %48
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1565, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.67, i64 0, i64 0), i32 -1, i32 -1)
  br label %57

57:                                               ; preds = %56, %55
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %62, %67
  br i1 %68, label %85, label %69

69:                                               ; preds = %57
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %71
  %73 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %96

81:                                               ; preds = %69
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %96

85:                                               ; preds = %81, %57
  %86 = load i32, i32* %3, align 4
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @debug, align 4
  %88 = and i32 %87, 32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %85
  br label %95

91:                                               ; preds = %85
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %3, align 4
  %94 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i64 0, i64 0), i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %90
  br label %107

96:                                               ; preds = %81, %69
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @debug, align 4
  %99 = and i32 %98, 32
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %96
  br label %106

102:                                              ; preds = %96
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %4, align 4
  %105 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.68, i64 0, i64 0), i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %102, %101
  br label %107

107:                                              ; preds = %106, %95
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %3, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %114
  %116 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %112, %117
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %120
  %122 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %121, i32 0, i32 3
  store i32 %118, i32* %122, align 4
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %124
  %126 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %125, i32 0, i32 4
  %127 = load float, float* %126, align 4
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %129
  %131 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %130, i32 0, i32 4
  %132 = load float, float* %131, align 4
  %133 = fadd float %127, %132
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %136, i32 0, i32 4
  store float %133, float* %137, align 4
  %138 = load i32, i32* %6, align 4
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %145, %107
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %139
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %7, align 4
  br label %139, !llvm.loop !65

150:                                              ; preds = %139
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* %3, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %159

154:                                              ; preds = %150
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i64 0, i64 %157
  store i32 %155, i32* %158, align 4
  br label %164

159:                                              ; preds = %150
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [400 x i32], [400 x i32]* @next_worm_list, i64 0, i64 %162
  store i32 %160, i32* %163, align 4
  br label %164

164:                                              ; preds = %159, %154
  store i32 21, i32* %5, align 4
  br label %165

165:                                              ; preds = %198, %164
  %166 = load i32, i32* %5, align 4
  %167 = icmp slt i32 %166, 400
  br i1 %167, label %168, label %201

168:                                              ; preds = %165
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = icmp ne i32 %173, 3
  br i1 %174, label %175, label %197

175:                                              ; preds = %168
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %177
  %179 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %3, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %191, label %183

183:                                              ; preds = %175
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %4, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %197

191:                                              ; preds = %183, %175
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* %5, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %194
  %196 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %195, i32 0, i32 2
  store i32 %192, i32* %196, align 4
  br label %197

197:                                              ; preds = %191, %183, %168
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %5, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %5, align 4
  br label %165, !llvm.loop !66

201:                                              ; preds = %21, %165
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dragon_escape(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [361 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 3, %16
  store i32 %17, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %3
  br label %25

24:                                               ; preds = %20
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1721, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.69, i64 0, i64 0), i32 -1, i32 -1)
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* @dragon_escape.mx_initialized, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  call void @llvm.memset.p0i8.i64(i8* align 16 bitcast ([400 x i32]* @dragon_escape.mx to i8*), i8 0, i64 1600, i1 false)
  store i32 1, i32* @dragon_escape.mx_initialized, align 4
  br label %29

29:                                               ; preds = %28, %25
  store i32 21, i32* %7, align 4
  br label %30

30:                                               ; preds = %58, %29
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 400
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 3
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %55
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %40, %33
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %30, !llvm.loop !67

61:                                               ; preds = %30
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %921, %61
  %63 = load i32, i32* %13, align 4
  %64 = icmp sle i32 %63, 4
  br i1 %64, label %65, label %924

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %15, align 4
  br label %67

67:                                               ; preds = %919, %117, %65
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %920

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %97

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %83, i32 0, i32 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %86, 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %117, label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @white_eye, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %92, i32 0, i32 11
  %94 = load i8, i8* %93, align 4
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %117, label %97

97:                                               ; preds = %89, %71
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %118

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %103, i32 0, i32 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = and i32 %106, 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %117, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [400 x %struct.eye_data], [400 x %struct.eye_data]* @black_eye, i64 0, i64 %111
  %113 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %112, i32 0, i32 11
  %114 = load i8, i8* %113, align 4
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 1
  br i1 %116, label %117, label %118

117:                                              ; preds = %109, %100, %89, %80
  br label %67, !llvm.loop !68

118:                                              ; preds = %109, %97
  %119 = load i32, i32* %13, align 4
  %120 = icmp eq i32 %119, 4
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %14, align 4
  br label %919

130:                                              ; preds = %118
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 20
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp ne i32 %136, 3
  br i1 %137, label %138, label %228

138:                                              ; preds = %130
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 20
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %228, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 20
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = zext i8 %150 to i32
  %152 = load i32, i32* %5, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %217, label %154

154:                                              ; preds = %145
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 20
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %228

162:                                              ; preds = %154
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 20
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = zext i8 %168 to i32
  %170 = icmp ne i32 %169, 3
  br i1 %170, label %171, label %228

171:                                              ; preds = %162
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 20
  %174 = add nsw i32 %173, 1
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %228

181:                                              ; preds = %171
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 40
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = zext i8 %186 to i32
  %188 = icmp ne i32 %187, 3
  br i1 %188, label %189, label %228

189:                                              ; preds = %181
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 40
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %192
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = load i32, i32* %12, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %228

198:                                              ; preds = %189
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, 20
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %202
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp ne i32 %205, 3
  br i1 %206, label %207, label %228

207:                                              ; preds = %198
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 20
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = load i32, i32* %12, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %207, %145
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 20
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  %222 = sext i32 %220 to i64
  %223 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %222
  store i32 %219, i32* %223, align 4
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 20
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %226
  store i32 1, i32* %227, align 4
  br label %228

228:                                              ; preds = %217, %207, %198, %189, %181, %171, %162, %154, %138, %130
  %229 = load i32, i32* %7, align 4
  %230 = sub nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %231
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp ne i32 %234, 3
  br i1 %235, label %236, label %326

236:                                              ; preds = %228
  %237 = load i32, i32* %7, align 4
  %238 = sub nsw i32 %237, 1
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %326, label %243

243:                                              ; preds = %236
  %244 = load i32, i32* %7, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = load i32, i32* %5, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %315, label %252

252:                                              ; preds = %243
  %253 = load i32, i32* %7, align 4
  %254 = sub nsw i32 %253, 1
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %326

260:                                              ; preds = %252
  %261 = load i32, i32* %7, align 4
  %262 = add nsw i32 %261, 20
  %263 = sub nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp ne i32 %267, 3
  br i1 %268, label %269, label %326

269:                                              ; preds = %260
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, 20
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %273
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = load i32, i32* %12, align 4
  %278 = icmp ne i32 %276, %277
  br i1 %278, label %279, label %326

279:                                              ; preds = %269
  %280 = load i32, i32* %7, align 4
  %281 = sub nsw i32 %280, 2
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %282
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp ne i32 %285, 3
  br i1 %286, label %287, label %326

287:                                              ; preds = %279
  %288 = load i32, i32* %7, align 4
  %289 = sub nsw i32 %288, 2
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %290
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = load i32, i32* %12, align 4
  %295 = icmp ne i32 %293, %294
  br i1 %295, label %296, label %326

296:                                              ; preds = %287
  %297 = load i32, i32* %7, align 4
  %298 = sub nsw i32 %297, 20
  %299 = sub nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  %304 = icmp ne i32 %303, 3
  br i1 %304, label %305, label %326

305:                                              ; preds = %296
  %306 = load i32, i32* %7, align 4
  %307 = sub nsw i32 %306, 20
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %309
  %311 = load i8, i8* %310, align 1
  %312 = zext i8 %311 to i32
  %313 = load i32, i32* %12, align 4
  %314 = icmp ne i32 %312, %313
  br i1 %314, label %315, label %326

315:                                              ; preds = %305, %243
  %316 = load i32, i32* %7, align 4
  %317 = sub nsw i32 %316, 1
  %318 = load i32, i32* %11, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %11, align 4
  %320 = sext i32 %318 to i64
  %321 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %320
  store i32 %317, i32* %321, align 4
  %322 = load i32, i32* %7, align 4
  %323 = sub nsw i32 %322, 1
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %324
  store i32 1, i32* %325, align 4
  br label %326

326:                                              ; preds = %315, %305, %296, %287, %279, %269, %260, %252, %236, %228
  %327 = load i32, i32* %7, align 4
  %328 = sub nsw i32 %327, 20
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %329
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = icmp ne i32 %332, 3
  br i1 %333, label %334, label %424

334:                                              ; preds = %326
  %335 = load i32, i32* %7, align 4
  %336 = sub nsw i32 %335, 20
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %424, label %341

341:                                              ; preds = %334
  %342 = load i32, i32* %7, align 4
  %343 = sub nsw i32 %342, 20
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %344
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i32
  %348 = load i32, i32* %5, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %413, label %350

350:                                              ; preds = %341
  %351 = load i32, i32* %7, align 4
  %352 = sub nsw i32 %351, 20
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = zext i8 %355 to i32
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %424

358:                                              ; preds = %350
  %359 = load i32, i32* %7, align 4
  %360 = sub nsw i32 %359, 20
  %361 = sub nsw i32 %360, 1
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %362
  %364 = load i8, i8* %363, align 1
  %365 = zext i8 %364 to i32
  %366 = icmp ne i32 %365, 3
  br i1 %366, label %367, label %424

367:                                              ; preds = %358
  %368 = load i32, i32* %7, align 4
  %369 = sub nsw i32 %368, 20
  %370 = sub nsw i32 %369, 1
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  %375 = load i32, i32* %12, align 4
  %376 = icmp ne i32 %374, %375
  br i1 %376, label %377, label %424

377:                                              ; preds = %367
  %378 = load i32, i32* %7, align 4
  %379 = sub nsw i32 %378, 40
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %380
  %382 = load i8, i8* %381, align 1
  %383 = zext i8 %382 to i32
  %384 = icmp ne i32 %383, 3
  br i1 %384, label %385, label %424

385:                                              ; preds = %377
  %386 = load i32, i32* %7, align 4
  %387 = sub nsw i32 %386, 40
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  %392 = load i32, i32* %12, align 4
  %393 = icmp ne i32 %391, %392
  br i1 %393, label %394, label %424

394:                                              ; preds = %385
  %395 = load i32, i32* %7, align 4
  %396 = sub nsw i32 %395, 20
  %397 = add nsw i32 %396, 1
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %398
  %400 = load i8, i8* %399, align 1
  %401 = zext i8 %400 to i32
  %402 = icmp ne i32 %401, 3
  br i1 %402, label %403, label %424

403:                                              ; preds = %394
  %404 = load i32, i32* %7, align 4
  %405 = sub nsw i32 %404, 20
  %406 = add nsw i32 %405, 1
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %407
  %409 = load i8, i8* %408, align 1
  %410 = zext i8 %409 to i32
  %411 = load i32, i32* %12, align 4
  %412 = icmp ne i32 %410, %411
  br i1 %412, label %413, label %424

413:                                              ; preds = %403, %341
  %414 = load i32, i32* %7, align 4
  %415 = sub nsw i32 %414, 20
  %416 = load i32, i32* %11, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %11, align 4
  %418 = sext i32 %416 to i64
  %419 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %418
  store i32 %415, i32* %419, align 4
  %420 = load i32, i32* %7, align 4
  %421 = sub nsw i32 %420, 20
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %422
  store i32 1, i32* %423, align 4
  br label %424

424:                                              ; preds = %413, %403, %394, %385, %377, %367, %358, %350, %334, %326
  %425 = load i32, i32* %7, align 4
  %426 = add nsw i32 %425, 1
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %427
  %429 = load i8, i8* %428, align 1
  %430 = zext i8 %429 to i32
  %431 = icmp ne i32 %430, 3
  br i1 %431, label %432, label %522

432:                                              ; preds = %424
  %433 = load i32, i32* %7, align 4
  %434 = add nsw i32 %433, 1
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %435
  %437 = load i32, i32* %436, align 4
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %522, label %439

439:                                              ; preds = %432
  %440 = load i32, i32* %7, align 4
  %441 = add nsw i32 %440, 1
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %442
  %444 = load i8, i8* %443, align 1
  %445 = zext i8 %444 to i32
  %446 = load i32, i32* %5, align 4
  %447 = icmp eq i32 %445, %446
  br i1 %447, label %511, label %448

448:                                              ; preds = %439
  %449 = load i32, i32* %7, align 4
  %450 = add nsw i32 %449, 1
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %451
  %453 = load i8, i8* %452, align 1
  %454 = zext i8 %453 to i32
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %522

456:                                              ; preds = %448
  %457 = load i32, i32* %7, align 4
  %458 = sub nsw i32 %457, 20
  %459 = add nsw i32 %458, 1
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %460
  %462 = load i8, i8* %461, align 1
  %463 = zext i8 %462 to i32
  %464 = icmp ne i32 %463, 3
  br i1 %464, label %465, label %522

465:                                              ; preds = %456
  %466 = load i32, i32* %7, align 4
  %467 = sub nsw i32 %466, 20
  %468 = add nsw i32 %467, 1
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %469
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i32
  %473 = load i32, i32* %12, align 4
  %474 = icmp ne i32 %472, %473
  br i1 %474, label %475, label %522

475:                                              ; preds = %465
  %476 = load i32, i32* %7, align 4
  %477 = add nsw i32 %476, 2
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i32
  %482 = icmp ne i32 %481, 3
  br i1 %482, label %483, label %522

483:                                              ; preds = %475
  %484 = load i32, i32* %7, align 4
  %485 = add nsw i32 %484, 2
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %486
  %488 = load i8, i8* %487, align 1
  %489 = zext i8 %488 to i32
  %490 = load i32, i32* %12, align 4
  %491 = icmp ne i32 %489, %490
  br i1 %491, label %492, label %522

492:                                              ; preds = %483
  %493 = load i32, i32* %7, align 4
  %494 = add nsw i32 %493, 20
  %495 = add nsw i32 %494, 1
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %496
  %498 = load i8, i8* %497, align 1
  %499 = zext i8 %498 to i32
  %500 = icmp ne i32 %499, 3
  br i1 %500, label %501, label %522

501:                                              ; preds = %492
  %502 = load i32, i32* %7, align 4
  %503 = add nsw i32 %502, 20
  %504 = add nsw i32 %503, 1
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %505
  %507 = load i8, i8* %506, align 1
  %508 = zext i8 %507 to i32
  %509 = load i32, i32* %12, align 4
  %510 = icmp ne i32 %508, %509
  br i1 %510, label %511, label %522

511:                                              ; preds = %501, %439
  %512 = load i32, i32* %7, align 4
  %513 = add nsw i32 %512, 1
  %514 = load i32, i32* %11, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %11, align 4
  %516 = sext i32 %514 to i64
  %517 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %516
  store i32 %513, i32* %517, align 4
  %518 = load i32, i32* %7, align 4
  %519 = add nsw i32 %518, 1
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %520
  store i32 1, i32* %521, align 4
  br label %522

522:                                              ; preds = %511, %501, %492, %483, %475, %465, %456, %448, %432, %424
  %523 = load i32, i32* %13, align 4
  %524 = icmp eq i32 %523, 0
  br i1 %524, label %525, label %918

525:                                              ; preds = %522
  %526 = load i32, i32* %7, align 4
  %527 = add nsw i32 %526, 20
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %528
  %530 = load i8, i8* %529, align 1
  %531 = zext i8 %530 to i32
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %533, label %623

533:                                              ; preds = %525
  %534 = load i32, i32* %7, align 4
  %535 = sub nsw i32 %534, 1
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %536
  %538 = load i8, i8* %537, align 1
  %539 = zext i8 %538 to i32
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %541, label %623

541:                                              ; preds = %533
  %542 = load i32, i32* %7, align 4
  %543 = add nsw i32 %542, 20
  %544 = sub nsw i32 %543, 1
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %545
  %547 = load i32, i32* %546, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %623, label %549

549:                                              ; preds = %541
  %550 = load i32, i32* %7, align 4
  %551 = add nsw i32 %550, 20
  %552 = sub nsw i32 %551, 1
  %553 = sext i32 %552 to i64
  %554 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %553
  %555 = load i8, i8* %554, align 1
  %556 = zext i8 %555 to i32
  %557 = load i32, i32* %5, align 4
  %558 = icmp eq i32 %556, %557
  br i1 %558, label %610, label %559

559:                                              ; preds = %549
  %560 = load i32, i32* %7, align 4
  %561 = add nsw i32 %560, 20
  %562 = sub nsw i32 %561, 1
  %563 = sext i32 %562 to i64
  %564 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %563
  %565 = load i8, i8* %564, align 1
  %566 = zext i8 %565 to i32
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %623

568:                                              ; preds = %559
  %569 = load i32, i32* %7, align 4
  %570 = add nsw i32 %569, 20
  %571 = sub nsw i32 %570, 1
  %572 = add nsw i32 %571, 20
  %573 = sext i32 %572 to i64
  %574 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %573
  %575 = load i8, i8* %574, align 1
  %576 = zext i8 %575 to i32
  %577 = icmp ne i32 %576, 3
  br i1 %577, label %578, label %623

578:                                              ; preds = %568
  %579 = load i32, i32* %7, align 4
  %580 = add nsw i32 %579, 20
  %581 = sub nsw i32 %580, 1
  %582 = add nsw i32 %581, 20
  %583 = sext i32 %582 to i64
  %584 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %583
  %585 = load i8, i8* %584, align 1
  %586 = zext i8 %585 to i32
  %587 = load i32, i32* %12, align 4
  %588 = icmp ne i32 %586, %587
  br i1 %588, label %589, label %623

589:                                              ; preds = %578
  %590 = load i32, i32* %7, align 4
  %591 = add nsw i32 %590, 20
  %592 = sub nsw i32 %591, 1
  %593 = sub nsw i32 %592, 1
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %594
  %596 = load i8, i8* %595, align 1
  %597 = zext i8 %596 to i32
  %598 = icmp ne i32 %597, 3
  br i1 %598, label %599, label %623

599:                                              ; preds = %589
  %600 = load i32, i32* %7, align 4
  %601 = add nsw i32 %600, 20
  %602 = sub nsw i32 %601, 1
  %603 = sub nsw i32 %602, 1
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %604
  %606 = load i8, i8* %605, align 1
  %607 = zext i8 %606 to i32
  %608 = load i32, i32* %12, align 4
  %609 = icmp ne i32 %607, %608
  br i1 %609, label %610, label %623

610:                                              ; preds = %599, %549
  %611 = load i32, i32* %7, align 4
  %612 = add nsw i32 %611, 20
  %613 = sub nsw i32 %612, 1
  %614 = load i32, i32* %11, align 4
  %615 = add nsw i32 %614, 1
  store i32 %615, i32* %11, align 4
  %616 = sext i32 %614 to i64
  %617 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %616
  store i32 %613, i32* %617, align 4
  %618 = load i32, i32* %7, align 4
  %619 = add nsw i32 %618, 20
  %620 = sub nsw i32 %619, 1
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %621
  store i32 1, i32* %622, align 4
  br label %623

623:                                              ; preds = %610, %599, %589, %578, %568, %559, %541, %533, %525
  %624 = load i32, i32* %7, align 4
  %625 = sub nsw i32 %624, 1
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %626
  %628 = load i8, i8* %627, align 1
  %629 = zext i8 %628 to i32
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %631, label %721

631:                                              ; preds = %623
  %632 = load i32, i32* %7, align 4
  %633 = sub nsw i32 %632, 20
  %634 = sext i32 %633 to i64
  %635 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %634
  %636 = load i8, i8* %635, align 1
  %637 = zext i8 %636 to i32
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %721

639:                                              ; preds = %631
  %640 = load i32, i32* %7, align 4
  %641 = sub nsw i32 %640, 20
  %642 = sub nsw i32 %641, 1
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %643
  %645 = load i32, i32* %644, align 4
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %721, label %647

647:                                              ; preds = %639
  %648 = load i32, i32* %7, align 4
  %649 = sub nsw i32 %648, 20
  %650 = sub nsw i32 %649, 1
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %651
  %653 = load i8, i8* %652, align 1
  %654 = zext i8 %653 to i32
  %655 = load i32, i32* %5, align 4
  %656 = icmp eq i32 %654, %655
  br i1 %656, label %708, label %657

657:                                              ; preds = %647
  %658 = load i32, i32* %7, align 4
  %659 = sub nsw i32 %658, 20
  %660 = sub nsw i32 %659, 1
  %661 = sext i32 %660 to i64
  %662 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %661
  %663 = load i8, i8* %662, align 1
  %664 = zext i8 %663 to i32
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %666, label %721

666:                                              ; preds = %657
  %667 = load i32, i32* %7, align 4
  %668 = sub nsw i32 %667, 20
  %669 = sub nsw i32 %668, 1
  %670 = sub nsw i32 %669, 1
  %671 = sext i32 %670 to i64
  %672 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %671
  %673 = load i8, i8* %672, align 1
  %674 = zext i8 %673 to i32
  %675 = icmp ne i32 %674, 3
  br i1 %675, label %676, label %721

676:                                              ; preds = %666
  %677 = load i32, i32* %7, align 4
  %678 = sub nsw i32 %677, 20
  %679 = sub nsw i32 %678, 1
  %680 = sub nsw i32 %679, 1
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %681
  %683 = load i8, i8* %682, align 1
  %684 = zext i8 %683 to i32
  %685 = load i32, i32* %12, align 4
  %686 = icmp ne i32 %684, %685
  br i1 %686, label %687, label %721

687:                                              ; preds = %676
  %688 = load i32, i32* %7, align 4
  %689 = sub nsw i32 %688, 20
  %690 = sub nsw i32 %689, 1
  %691 = sub nsw i32 %690, 20
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %692
  %694 = load i8, i8* %693, align 1
  %695 = zext i8 %694 to i32
  %696 = icmp ne i32 %695, 3
  br i1 %696, label %697, label %721

697:                                              ; preds = %687
  %698 = load i32, i32* %7, align 4
  %699 = sub nsw i32 %698, 20
  %700 = sub nsw i32 %699, 1
  %701 = sub nsw i32 %700, 20
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %702
  %704 = load i8, i8* %703, align 1
  %705 = zext i8 %704 to i32
  %706 = load i32, i32* %12, align 4
  %707 = icmp ne i32 %705, %706
  br i1 %707, label %708, label %721

708:                                              ; preds = %697, %647
  %709 = load i32, i32* %7, align 4
  %710 = sub nsw i32 %709, 20
  %711 = sub nsw i32 %710, 1
  %712 = load i32, i32* %11, align 4
  %713 = add nsw i32 %712, 1
  store i32 %713, i32* %11, align 4
  %714 = sext i32 %712 to i64
  %715 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %714
  store i32 %711, i32* %715, align 4
  %716 = load i32, i32* %7, align 4
  %717 = sub nsw i32 %716, 20
  %718 = sub nsw i32 %717, 1
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %719
  store i32 1, i32* %720, align 4
  br label %721

721:                                              ; preds = %708, %697, %687, %676, %666, %657, %639, %631, %623
  %722 = load i32, i32* %7, align 4
  %723 = sub nsw i32 %722, 20
  %724 = sext i32 %723 to i64
  %725 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %724
  %726 = load i8, i8* %725, align 1
  %727 = zext i8 %726 to i32
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %729, label %819

729:                                              ; preds = %721
  %730 = load i32, i32* %7, align 4
  %731 = add nsw i32 %730, 1
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %732
  %734 = load i8, i8* %733, align 1
  %735 = zext i8 %734 to i32
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %819

737:                                              ; preds = %729
  %738 = load i32, i32* %7, align 4
  %739 = sub nsw i32 %738, 20
  %740 = add nsw i32 %739, 1
  %741 = sext i32 %740 to i64
  %742 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %741
  %743 = load i32, i32* %742, align 4
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %819, label %745

745:                                              ; preds = %737
  %746 = load i32, i32* %7, align 4
  %747 = sub nsw i32 %746, 20
  %748 = add nsw i32 %747, 1
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %749
  %751 = load i8, i8* %750, align 1
  %752 = zext i8 %751 to i32
  %753 = load i32, i32* %5, align 4
  %754 = icmp eq i32 %752, %753
  br i1 %754, label %806, label %755

755:                                              ; preds = %745
  %756 = load i32, i32* %7, align 4
  %757 = sub nsw i32 %756, 20
  %758 = add nsw i32 %757, 1
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %759
  %761 = load i8, i8* %760, align 1
  %762 = zext i8 %761 to i32
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %764, label %819

764:                                              ; preds = %755
  %765 = load i32, i32* %7, align 4
  %766 = sub nsw i32 %765, 20
  %767 = add nsw i32 %766, 1
  %768 = sub nsw i32 %767, 20
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %769
  %771 = load i8, i8* %770, align 1
  %772 = zext i8 %771 to i32
  %773 = icmp ne i32 %772, 3
  br i1 %773, label %774, label %819

774:                                              ; preds = %764
  %775 = load i32, i32* %7, align 4
  %776 = sub nsw i32 %775, 20
  %777 = add nsw i32 %776, 1
  %778 = sub nsw i32 %777, 20
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %779
  %781 = load i8, i8* %780, align 1
  %782 = zext i8 %781 to i32
  %783 = load i32, i32* %12, align 4
  %784 = icmp ne i32 %782, %783
  br i1 %784, label %785, label %819

785:                                              ; preds = %774
  %786 = load i32, i32* %7, align 4
  %787 = sub nsw i32 %786, 20
  %788 = add nsw i32 %787, 1
  %789 = add nsw i32 %788, 1
  %790 = sext i32 %789 to i64
  %791 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %790
  %792 = load i8, i8* %791, align 1
  %793 = zext i8 %792 to i32
  %794 = icmp ne i32 %793, 3
  br i1 %794, label %795, label %819

795:                                              ; preds = %785
  %796 = load i32, i32* %7, align 4
  %797 = sub nsw i32 %796, 20
  %798 = add nsw i32 %797, 1
  %799 = add nsw i32 %798, 1
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %800
  %802 = load i8, i8* %801, align 1
  %803 = zext i8 %802 to i32
  %804 = load i32, i32* %12, align 4
  %805 = icmp ne i32 %803, %804
  br i1 %805, label %806, label %819

806:                                              ; preds = %795, %745
  %807 = load i32, i32* %7, align 4
  %808 = sub nsw i32 %807, 20
  %809 = add nsw i32 %808, 1
  %810 = load i32, i32* %11, align 4
  %811 = add nsw i32 %810, 1
  store i32 %811, i32* %11, align 4
  %812 = sext i32 %810 to i64
  %813 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %812
  store i32 %809, i32* %813, align 4
  %814 = load i32, i32* %7, align 4
  %815 = sub nsw i32 %814, 20
  %816 = add nsw i32 %815, 1
  %817 = sext i32 %816 to i64
  %818 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %817
  store i32 1, i32* %818, align 4
  br label %819

819:                                              ; preds = %806, %795, %785, %774, %764, %755, %737, %729, %721
  %820 = load i32, i32* %7, align 4
  %821 = add nsw i32 %820, 1
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %822
  %824 = load i8, i8* %823, align 1
  %825 = zext i8 %824 to i32
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %917

827:                                              ; preds = %819
  %828 = load i32, i32* %7, align 4
  %829 = add nsw i32 %828, 20
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %830
  %832 = load i8, i8* %831, align 1
  %833 = zext i8 %832 to i32
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %917

835:                                              ; preds = %827
  %836 = load i32, i32* %7, align 4
  %837 = add nsw i32 %836, 20
  %838 = add nsw i32 %837, 1
  %839 = sext i32 %838 to i64
  %840 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %839
  %841 = load i32, i32* %840, align 4
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %917, label %843

843:                                              ; preds = %835
  %844 = load i32, i32* %7, align 4
  %845 = add nsw i32 %844, 20
  %846 = add nsw i32 %845, 1
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %847
  %849 = load i8, i8* %848, align 1
  %850 = zext i8 %849 to i32
  %851 = load i32, i32* %5, align 4
  %852 = icmp eq i32 %850, %851
  br i1 %852, label %904, label %853

853:                                              ; preds = %843
  %854 = load i32, i32* %7, align 4
  %855 = add nsw i32 %854, 20
  %856 = add nsw i32 %855, 1
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %857
  %859 = load i8, i8* %858, align 1
  %860 = zext i8 %859 to i32
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %862, label %917

862:                                              ; preds = %853
  %863 = load i32, i32* %7, align 4
  %864 = add nsw i32 %863, 20
  %865 = add nsw i32 %864, 1
  %866 = add nsw i32 %865, 1
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %867
  %869 = load i8, i8* %868, align 1
  %870 = zext i8 %869 to i32
  %871 = icmp ne i32 %870, 3
  br i1 %871, label %872, label %917

872:                                              ; preds = %862
  %873 = load i32, i32* %7, align 4
  %874 = add nsw i32 %873, 20
  %875 = add nsw i32 %874, 1
  %876 = add nsw i32 %875, 1
  %877 = sext i32 %876 to i64
  %878 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %877
  %879 = load i8, i8* %878, align 1
  %880 = zext i8 %879 to i32
  %881 = load i32, i32* %12, align 4
  %882 = icmp ne i32 %880, %881
  br i1 %882, label %883, label %917

883:                                              ; preds = %872
  %884 = load i32, i32* %7, align 4
  %885 = add nsw i32 %884, 20
  %886 = add nsw i32 %885, 1
  %887 = add nsw i32 %886, 20
  %888 = sext i32 %887 to i64
  %889 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %888
  %890 = load i8, i8* %889, align 1
  %891 = zext i8 %890 to i32
  %892 = icmp ne i32 %891, 3
  br i1 %892, label %893, label %917

893:                                              ; preds = %883
  %894 = load i32, i32* %7, align 4
  %895 = add nsw i32 %894, 20
  %896 = add nsw i32 %895, 1
  %897 = add nsw i32 %896, 20
  %898 = sext i32 %897 to i64
  %899 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %898
  %900 = load i8, i8* %899, align 1
  %901 = zext i8 %900 to i32
  %902 = load i32, i32* %12, align 4
  %903 = icmp ne i32 %901, %902
  br i1 %903, label %904, label %917

904:                                              ; preds = %893, %843
  %905 = load i32, i32* %7, align 4
  %906 = add nsw i32 %905, 20
  %907 = add nsw i32 %906, 1
  %908 = load i32, i32* %11, align 4
  %909 = add nsw i32 %908, 1
  store i32 %909, i32* %11, align 4
  %910 = sext i32 %908 to i64
  %911 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %910
  store i32 %907, i32* %911, align 4
  %912 = load i32, i32* %7, align 4
  %913 = add nsw i32 %912, 20
  %914 = add nsw i32 %913, 1
  %915 = sext i32 %914 to i64
  %916 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %915
  store i32 1, i32* %916, align 4
  br label %917

917:                                              ; preds = %904, %893, %883, %872, %862, %853, %835, %827, %819
  br label %918

918:                                              ; preds = %917, %522
  br label %919

919:                                              ; preds = %918, %121
  br label %67, !llvm.loop !68

920:                                              ; preds = %67
  br label %921

921:                                              ; preds = %920
  %922 = load i32, i32* %13, align 4
  %923 = add nsw i32 %922, 1
  store i32 %923, i32* %13, align 4
  br label %62, !llvm.loop !69

924:                                              ; preds = %62
  store i32 0, i32* %8, align 4
  br label %925

925:                                              ; preds = %959, %924
  %926 = load i32, i32* %8, align 4
  %927 = load i32, i32* %11, align 4
  %928 = icmp slt i32 %926, %927
  br i1 %928, label %929, label %962

929:                                              ; preds = %925
  %930 = load i32, i32* %8, align 4
  %931 = sext i32 %930 to i64
  %932 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %931
  %933 = load i32, i32* %932, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %934
  %936 = load i32, i32* %935, align 4
  %937 = icmp eq i32 %936, 1
  br i1 %937, label %938, label %939

938:                                              ; preds = %929
  br label %952

939:                                              ; preds = %929
  %940 = load i32, i32* %8, align 4
  %941 = sext i32 %940 to i64
  %942 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %941
  %943 = load i32, i32* %942, align 4
  %944 = sdiv i32 %943, 20
  %945 = sub nsw i32 %944, 1
  %946 = load i32, i32* %8, align 4
  %947 = sext i32 %946 to i64
  %948 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %947
  %949 = load i32, i32* %948, align 4
  %950 = srem i32 %949, 20
  %951 = sub nsw i32 %950, 1
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1853, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i32 %945, i32 %951)
  br label %952

952:                                              ; preds = %939, %938
  %953 = load i32, i32* %8, align 4
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds [361 x i32], [361 x i32]* %9, i64 0, i64 %954
  %956 = load i32, i32* %955, align 4
  %957 = sext i32 %956 to i64
  %958 = getelementptr inbounds [400 x i32], [400 x i32]* @dragon_escape.mx, i64 0, i64 %957
  store i32 0, i32* %958, align 4
  br label %959

959:                                              ; preds = %952
  %960 = load i32, i32* %8, align 4
  %961 = add nsw i32 %960, 1
  store i32 %961, i32* %8, align 4
  br label %925, !llvm.loop !70

962:                                              ; preds = %925
  %963 = load i32, i32* %14, align 4
  ret i32 %963
}

declare dso_local float @gg_interpolate(%struct.interpolation_data*, float) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compute_surrounding_moyo_sizes(%struct.influence_data* %0) #0 {
  %2 = alloca %struct.influence_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [362 x i32], align 16
  %6 = alloca %struct.moyo_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [400 x i32], align 16
  %12 = alloca [400 x float], align 16
  %13 = alloca [400 x float], align 16
  %14 = alloca [400 x float], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca float, align 4
  store %struct.influence_data* %0, %struct.influence_data** %2, align 8
  %23 = load i32, i32* @experimental_connections, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %142, label %25

25:                                               ; preds = %1
  %26 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  call void @influence_get_moyo_segmentation(%struct.influence_data* %26, %struct.moyo_data* %6)
  %27 = getelementptr inbounds [362 x i32], [362 x i32]* %5, i64 0, i64 0
  %28 = bitcast i32* %27 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 1448, i1 false)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %138, %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @number_of_dragons, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %141

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  store i32 21, i32* %3, align 4
  br label %34

34:                                               ; preds = %112, %33
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 400
  br i1 %36, label %37, label %115

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %6, i32 0, i32 1
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [400 x i32], [400 x i32]* %38, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %48, i64 %50
  %52 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %47, %57
  br i1 %58, label %82, label %59

59:                                               ; preds = %37
  %60 = load i32, i32* %9, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %82, label %70

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %6, i32 0, i32 3
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [361 x i32], [361 x i32]* %71, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %75, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70, %62, %59, %37
  br label %112

83:                                               ; preds = %70
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [362 x i32], [362 x i32]* %5, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  %90 = icmp ne i32 %87, %89
  br i1 %90, label %91, label %111

91:                                               ; preds = %83
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [362 x i32], [362 x i32]* %5, i64 0, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %6, i32 0, i32 2
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [361 x i32], [361 x i32]* %97, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %7, align 4
  %104 = getelementptr inbounds %struct.moyo_data, %struct.moyo_data* %6, i32 0, i32 4
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [361 x float], [361 x float]* %104, i64 0, i64 %106
  %108 = load float, float* %107, align 4
  %109 = load float, float* %8, align 4
  %110 = fadd float %109, %108
  store float %110, float* %8, align 4
  br label %111

111:                                              ; preds = %91, %83
  br label %112

112:                                              ; preds = %111, %82
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %34, !llvm.loop !71

115:                                              ; preds = %34
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %117, i64 %119
  %121 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %116, %122
  br i1 %123, label %124, label %137

124:                                              ; preds = %115
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %126, i64 %128
  %130 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %129, i32 0, i32 4
  store i32 %125, i32* %130, align 4
  %131 = load float, float* %8, align 4
  %132 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %132, i64 %134
  %136 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %135, i32 0, i32 5
  store float %131, float* %136, align 4
  br label %137

137:                                              ; preds = %124, %115
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %29, !llvm.loop !72

141:                                              ; preds = %29
  br label %398

142:                                              ; preds = %1
  %143 = load %struct.influence_data*, %struct.influence_data** %2, align 8
  %144 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 0
  %145 = getelementptr inbounds [400 x float], [400 x float]* %12, i64 0, i64 0
  call void @influence_get_moyo_data(%struct.influence_data* %143, i32* %144, float* %145)
  store i32 21, i32* %3, align 4
  br label %146

146:                                              ; preds = %156, %142
  %147 = load i32, i32* %3, align 4
  %148 = icmp slt i32 %147, 400
  br i1 %148, label %149, label %159

149:                                              ; preds = %146
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [400 x float], [400 x float]* %13, i64 0, i64 %151
  store float 0.000000e+00, float* %152, align 4
  %153 = load i32, i32* %3, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [400 x float], [400 x float]* %14, i64 0, i64 %154
  store float 0.000000e+00, float* %155, align 4
  br label %156

156:                                              ; preds = %149
  %157 = load i32, i32* %3, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %3, align 4
  br label %146, !llvm.loop !73

159:                                              ; preds = %146
  store i32 21, i32* %3, align 4
  br label %160

160:                                              ; preds = %342, %159
  %161 = load i32, i32* %3, align 4
  %162 = icmp slt i32 %161, 400
  br i1 %162, label %163, label %345

163:                                              ; preds = %160
  %164 = load i32, i32* %3, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp ne i32 %168, 3
  br i1 %169, label %171, label %170

170:                                              ; preds = %163
  br label %342

171:                                              ; preds = %163
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %3, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %175, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %171
  br label %342

183:                                              ; preds = %171
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %262

189:                                              ; preds = %183
  store i32 0, i32* %10, align 4
  br label %190

190:                                              ; preds = %258, %189
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_white_worms, i64 0, i64 %193
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %191, %195
  br i1 %196, label %197, label %261

197:                                              ; preds = %190
  %198 = load i32, i32* %3, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [400 x [4 x i32]], [400 x [4 x i32]]* @close_white_worms, i64 0, i64 %199
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [4 x i32], [4 x i32]* %200, i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %16, align 4
  %210 = load i32, i32* %3, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_white_worms, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %213, 5
  br i1 %214, label %215, label %220

215:                                              ; preds = %197
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_white_worms, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  br label %221

220:                                              ; preds = %197
  br label %221

221:                                              ; preds = %220, %215
  %222 = phi i32 [ %219, %215 ], [ 5, %220 ]
  store i32 %222, i32* %17, align 4
  %223 = load i32, i32* %17, align 4
  %224 = sitofp i32 %223 to double
  %225 = fdiv double 1.000000e+00, %224
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [400 x float], [400 x float]* %13, i64 0, i64 %227
  %229 = load float, float* %228, align 4
  %230 = fpext float %229 to double
  %231 = fadd double %230, %225
  %232 = fptrunc double %231 to float
  store float %232, float* %228, align 4
  %233 = load i32, i32* %3, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [400 x float], [400 x float]* %12, i64 0, i64 %234
  %236 = load float, float* %235, align 4
  %237 = fpext float %236 to double
  %238 = fcmp olt double %237, 1.000000e+00
  br i1 %238, label %239, label %245

239:                                              ; preds = %221
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds [400 x float], [400 x float]* %12, i64 0, i64 %241
  %243 = load float, float* %242, align 4
  %244 = fpext float %243 to double
  br label %246

245:                                              ; preds = %221
  br label %246

246:                                              ; preds = %245, %239
  %247 = phi double [ %244, %239 ], [ 1.000000e+00, %245 ]
  %248 = load i32, i32* %17, align 4
  %249 = sitofp i32 %248 to double
  %250 = fdiv double %247, %249
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [400 x float], [400 x float]* %14, i64 0, i64 %252
  %254 = load float, float* %253, align 4
  %255 = fpext float %254 to double
  %256 = fadd double %255, %250
  %257 = fptrunc double %256 to float
  store float %257, float* %253, align 4
  br label %258

258:                                              ; preds = %246
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %10, align 4
  br label %190, !llvm.loop !74

261:                                              ; preds = %190
  br label %262

262:                                              ; preds = %261, %183
  %263 = load i32, i32* %3, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [400 x i32], [400 x i32]* %11, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %268, label %341

268:                                              ; preds = %262
  store i32 0, i32* %10, align 4
  br label %269

269:                                              ; preds = %337, %268
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %3, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_black_worms, i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = icmp slt i32 %270, %274
  br i1 %275, label %276, label %340

276:                                              ; preds = %269
  %277 = load i32, i32* %3, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds [400 x [4 x i32]], [400 x [4 x i32]]* @close_black_worms, i64 0, i64 %278
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [4 x i32], [4 x i32]* %279, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %18, align 4
  %284 = load i32, i32* %18, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  store i32 %288, i32* %19, align 4
  %289 = load i32, i32* %3, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_black_worms, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = icmp slt i32 %292, 5
  br i1 %293, label %294, label %299

294:                                              ; preds = %276
  %295 = load i32, i32* %3, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [400 x i32], [400 x i32]* @number_close_black_worms, i64 0, i64 %296
  %298 = load i32, i32* %297, align 4
  br label %300

299:                                              ; preds = %276
  br label %300

300:                                              ; preds = %299, %294
  %301 = phi i32 [ %298, %294 ], [ 5, %299 ]
  store i32 %301, i32* %20, align 4
  %302 = load i32, i32* %20, align 4
  %303 = sitofp i32 %302 to double
  %304 = fdiv double 1.000000e+00, %303
  %305 = load i32, i32* %19, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [400 x float], [400 x float]* %13, i64 0, i64 %306
  %308 = load float, float* %307, align 4
  %309 = fpext float %308 to double
  %310 = fadd double %309, %304
  %311 = fptrunc double %310 to float
  store float %311, float* %307, align 4
  %312 = load i32, i32* %3, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [400 x float], [400 x float]* %12, i64 0, i64 %313
  %315 = load float, float* %314, align 4
  %316 = fpext float %315 to double
  %317 = fcmp olt double %316, 1.000000e+00
  br i1 %317, label %318, label %324

318:                                              ; preds = %300
  %319 = load i32, i32* %3, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [400 x float], [400 x float]* %12, i64 0, i64 %320
  %322 = load float, float* %321, align 4
  %323 = fpext float %322 to double
  br label %325

324:                                              ; preds = %300
  br label %325

325:                                              ; preds = %324, %318
  %326 = phi double [ %323, %318 ], [ 1.000000e+00, %324 ]
  %327 = load i32, i32* %20, align 4
  %328 = sitofp i32 %327 to double
  %329 = fdiv double %326, %328
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [400 x float], [400 x float]* %14, i64 0, i64 %331
  %333 = load float, float* %332, align 4
  %334 = fpext float %333 to double
  %335 = fadd double %334, %329
  %336 = fptrunc double %335 to float
  store float %336, float* %332, align 4
  br label %337

337:                                              ; preds = %325
  %338 = load i32, i32* %10, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %10, align 4
  br label %269, !llvm.loop !75

340:                                              ; preds = %269
  br label %341

341:                                              ; preds = %340, %262
  br label %342

342:                                              ; preds = %341, %182, %170
  %343 = load i32, i32* %3, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %3, align 4
  br label %160, !llvm.loop !76

345:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %346

346:                                              ; preds = %394, %345
  %347 = load i32, i32* %4, align 4
  %348 = load i32, i32* @number_of_dragons, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %397

350:                                              ; preds = %346
  %351 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %352 = load i32, i32* %4, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %351, i64 %353
  %355 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [400 x float], [400 x float]* %13, i64 0, i64 %357
  %359 = load float, float* %358, align 4
  %360 = fpext float %359 to double
  %361 = fadd double 1.000000e-02, %360
  %362 = fptosi double %361 to i32
  store i32 %362, i32* %21, align 4
  %363 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %364 = load i32, i32* %4, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %363, i64 %365
  %367 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [400 x float], [400 x float]* %14, i64 0, i64 %369
  %371 = load float, float* %370, align 4
  store float %371, float* %22, align 4
  %372 = load i32, i32* %21, align 4
  %373 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %374 = load i32, i32* %4, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %373, i64 %375
  %377 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %376, i32 0, i32 4
  %378 = load i32, i32* %377, align 4
  %379 = icmp slt i32 %372, %378
  br i1 %379, label %380, label %393

380:                                              ; preds = %350
  %381 = load i32, i32* %21, align 4
  %382 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %383 = load i32, i32* %4, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %382, i64 %384
  %386 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %385, i32 0, i32 4
  store i32 %381, i32* %386, align 4
  %387 = load float, float* %22, align 4
  %388 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %389 = load i32, i32* %4, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %388, i64 %390
  %392 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %391, i32 0, i32 5
  store float %387, float* %392, align 4
  br label %393

393:                                              ; preds = %380, %350
  br label %394

394:                                              ; preds = %393
  %395 = load i32, i32* %4, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %4, align 4
  br label %346, !llvm.loop !77

397:                                              ; preds = %346
  br label %398

398:                                              ; preds = %397, %141
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal float @compute_dragon_weakness_value(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %5, i64 %7
  %9 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @debug, align 4
  %12 = and i32 %11, 32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.119, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %15, %14
  %19 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %19, i64 %21
  %23 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %25, i64 %27
  %29 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %28, i32 0, i32 10
  %30 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %30, i64 %32
  %34 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %33, i32 0, i32 12
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %39 = load i32, i32* %2, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %38, i64 %40
  %42 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %41, i32 0, i32 5
  %43 = load float, float* %42, align 4
  %44 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %45 = load i32, i32* %2, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %44, i64 %46
  %48 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = sitofp i32 %49 to float
  %51 = call float @crude_dragon_weakness(i32 %24, %struct.eyevalue* %29, i32 %37, float %43, float %50)
  store float %51, float* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %82, label %58

58:                                               ; preds = %18
  %59 = load float, float* %4, align 4
  %60 = fpext float %59 to double
  %61 = fsub double 1.000000e+00, %60
  %62 = fmul double 2.500000e-01, %61
  %63 = load float, float* %4, align 4
  %64 = fpext float %63 to double
  %65 = fmul double 2.500000e-01, %64
  %66 = fcmp olt double %62, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load float, float* %4, align 4
  %69 = fpext float %68 to double
  %70 = fsub double 1.000000e+00, %69
  %71 = fmul double 2.500000e-01, %70
  br label %76

72:                                               ; preds = %58
  %73 = load float, float* %4, align 4
  %74 = fpext float %73 to double
  %75 = fmul double 2.500000e-01, %74
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi double [ %71, %67 ], [ %75, %72 ]
  %78 = load float, float* %4, align 4
  %79 = fpext float %78 to double
  %80 = fadd double %79, %77
  %81 = fptrunc double %80 to float
  store float %81, float* %4, align 4
  br label %82

82:                                               ; preds = %76, %18
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %85, i32 0, i32 14
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %113, label %89

89:                                               ; preds = %82
  %90 = load float, float* %4, align 4
  %91 = fpext float %90 to double
  %92 = fsub double 1.000000e+00, %91
  %93 = fmul double 2.500000e-01, %92
  %94 = load float, float* %4, align 4
  %95 = fpext float %94 to double
  %96 = fmul double 2.500000e-01, %95
  %97 = fcmp olt double %93, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load float, float* %4, align 4
  %100 = fpext float %99 to double
  %101 = fsub double 1.000000e+00, %100
  %102 = fmul double 2.500000e-01, %101
  br label %107

103:                                              ; preds = %89
  %104 = load float, float* %4, align 4
  %105 = fpext float %104 to double
  %106 = fmul double 2.500000e-01, %105
  br label %107

107:                                              ; preds = %103, %98
  %108 = phi double [ %102, %98 ], [ %106, %103 ]
  %109 = load float, float* %4, align 4
  %110 = fpext float %109 to double
  %111 = fadd double %110, %108
  %112 = fptrunc double %111 to float
  store float %112, float* %4, align 4
  br label %113

113:                                              ; preds = %107, %82
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 11
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load float, float* %4, align 4
  %122 = fpext float %121 to double
  %123 = fsub double 1.000000e+00, %122
  %124 = fmul double 1.500000e-01, %123
  %125 = load float, float* %4, align 4
  %126 = fpext float %125 to double
  %127 = fadd double %126, %124
  %128 = fptrunc double %127 to float
  store float %128, float* %4, align 4
  br label %129

129:                                              ; preds = %120, %113
  %130 = load float, float* %4, align 4
  %131 = fpext float %130 to double
  %132 = fcmp olt double %131, 0.000000e+00
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store float 0.000000e+00, float* %4, align 4
  br label %134

134:                                              ; preds = %133, %129
  %135 = load float, float* %4, align 4
  %136 = fpext float %135 to double
  %137 = fcmp ogt double %136, 1.000000e+00
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store float 1.000000e+00, float* %4, align 4
  br label %139

139:                                              ; preds = %138, %134
  %140 = load i32, i32* @debug, align 4
  %141 = and i32 %140, 32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  br label %148

144:                                              ; preds = %139
  %145 = load float, float* %4, align 4
  %146 = fpext float %145 to double
  %147 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.120, i64 0, i64 0), double %146)
  br label %148

148:                                              ; preds = %144, %143
  %149 = load float, float* %4, align 4
  ret float %149
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @are_neighbor_dragons(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %13
  %15 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %53, %2
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %21
  %23 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %19, i64 %25
  %27 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %18, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %17
  %31 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %32 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %34
  %36 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %32, i64 %38
  %40 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %39, i32 0, i32 1
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [10 x i32], [10 x i32]* %40, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %31, i64 %45
  %47 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %97

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %17, !llvm.loop !78

56:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %93, %56
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %59, i64 %65
  %67 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %58, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %57
  %71 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %72 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %74
  %76 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %72, i64 %78
  %80 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %79, i32 0, i32 1
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [10 x i32], [10 x i32]* %80, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %71, i64 %85
  %87 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %97

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %57, !llvm.loop !79

96:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %91, %51
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crude_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %5, i32 0, i32 5
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dragon_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %4
  %6 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %5, i32 0, i32 16
  %7 = load i32, i32* %6, align 4
  ret i32 %7
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lively_dragon_exists(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @lively_white_dragons, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %2, align 4
  br label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @lively_black_dragons, align 4
  %12 = icmp sgt i32 %11, 0
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %14

14:                                               ; preds = %10, %6
  %15 = load i32, i32* %2, align 4
  ret i32 %15
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ascii_report_dragon(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @board_size, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @string_to_location(i32 %5, i8* %6, i32* %3, i32* %4)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = load i32, i32* %3, align 4
  %10 = mul nsw i32 %9, 20
  %11 = add nsw i32 21, %10
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %11, %12
  call void @report_dragon(%struct._IO_FILE* %8, i32 %13)
  ret void
}

declare dso_local i32 @string_to_location(i32, i8*, i32*, i32*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @report_dragon(%struct._IO_FILE* %0, i32 %1) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dragon_data*, align 8
  %8 = alloca %struct.dragon_data2*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %10
  store %struct.dragon_data* %11, %struct.dragon_data** %7, align 8
  %12 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %13 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %14 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %12, i64 %16
  store %struct.dragon_data2* %17, %struct.dragon_data2** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.76, i64 0, i64 0), i32 %25)
  br label %212

27:                                               ; preds = %2
  %28 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %29 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.77, i64 0, i64 0), i32 %33)
  br label %212

35:                                               ; preds = %27
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %37 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %38 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @color_to_string(i32 %39)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.78, i64 0, i64 0), i8* %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %42 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %43 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0), i32 %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %46 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %47 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.80, i64 0, i64 0), i32 %48)
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %50 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %51 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %50, i32 0, i32 4
  %52 = load float, float* %51, align 4
  %53 = fpext float %52 to double
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.81, i64 0, i64 0), double %53)
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %55 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %56 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %55, i32 0, i32 10
  %57 = call i8* @eyevalue_to_string(%struct.eyevalue* %56)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.82, i64 0, i64 0), i8* %57)
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %59 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %60 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.83, i64 0, i64 0), i32 %61)
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %63 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %64 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.84, i64 0, i64 0), i32 %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %67 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %68 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.85, i64 0, i64 0), i32 %69)
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %71 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %72 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @status_to_string(i32 %73)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i64 0, i64 0), i8* %74)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %76 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %77 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @status_to_string(i32 %78)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.87, i64 0, i64 0), i8* %79)
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %81 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %82 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %81, i32 0, i32 16
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @status_to_string(i32 %83)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i64 0, i64 0), i8* %84)
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %86 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %87 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @status_to_string(i32 %88)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.89, i64 0, i64 0), i8* %89)
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %91 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %92 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.90, i64 0, i64 0), i32 %93)
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %95 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %96 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.91, i64 0, i64 0), i8* %100)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %102 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %103 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %101, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.94, i64 0, i64 0), i32 %104)
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %106 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %107 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %106, i32 0, i32 12
  %108 = load i32, i32* %107, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.95, i64 0, i64 0), i32 %108)
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %110 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %111 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %110, i32 0, i32 14
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.93, i64 0, i64 0)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.96, i64 0, i64 0), i8* %115)
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %117 = load %struct.dragon_data*, %struct.dragon_data** %7, align 8
  %118 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %117, i32 0, i32 15
  %119 = load i32, i32* %118, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.97, i64 0, i64 0), i32 %119)
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %121 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %122 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %121, i32 0, i32 13
  %123 = load i32, i32* %122, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.98, i64 0, i64 0), i32 %123)
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %125 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %126 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %125, i32 0, i32 14
  %127 = load i32, i32* %126, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.99, i64 0, i64 0), i32 %127)
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.100, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %152, %35
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %132 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %155

135:                                              ; preds = %129
  %136 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %137 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %138 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %139 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %138, i32 0, i32 1
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [10 x i32], [10 x i32]* %139, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %137, i64 %144
  %146 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %148
  %150 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i32 %151)
  br label %152

152:                                              ; preds = %135
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %6, align 4
  br label %129, !llvm.loop !80

155:                                              ; preds = %129
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %157 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %158 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.102, i64 0, i64 0), i32 %159)
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %161 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %162 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.103, i64 0, i64 0), i32 %163)
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %165 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %166 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %165, i32 0, i32 5
  %167 = load float, float* %166, align 4
  %168 = fpext float %167 to double
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.104, i64 0, i64 0), double %168)
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %170 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %171 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @safety_to_string(i32 %172)
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.105, i64 0, i64 0), i8* %173)
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %175 = load %struct.dragon_data2*, %struct.dragon_data2** %8, align 8
  %176 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %175, i32 0, i32 7
  %177 = load float, float* %176, align 4
  %178 = fpext float %177 to double
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.106, i64 0, i64 0), double %178)
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.107, i64 0, i64 0))
  store i32 21, i32* %5, align 4
  br label %180

180:                                              ; preds = %207, %155
  %181 = load i32, i32* %5, align 4
  %182 = icmp slt i32 %181, 400
  br i1 %182, label %183, label %210

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp ne i32 %188, 3
  br i1 %189, label %190, label %206

190:                                              ; preds = %183
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %192
  %194 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %190
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %4, align 4
  %201 = call i32 @is_same_dragon(i32 %199, i32 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %205 = load i32, i32* %5, align 4
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.101, i64 0, i64 0), i32 %205)
  br label %206

206:                                              ; preds = %203, %198, %190, %183
  br label %207

207:                                              ; preds = %206
  %208 = load i32, i32* %5, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %5, align 4
  br label %180, !llvm.loop !81

210:                                              ; preds = %180
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  call void (%struct._IO_FILE*, i8*, ...) @gfprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.64, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %32, %24
  ret void
}

declare dso_local void @gfprintf(%struct._IO_FILE*, i8*, ...) #1

declare dso_local i8* @status_to_string(i32) #1

declare dso_local i8* @safety_to_string(i32) #1

; Function Attrs: nounwind
declare dso_local void @free(i8*) #4

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #4

declare dso_local i32 @whose_area(%struct.influence_data*, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_adjacent_dragons(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sge i32 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @number_of_dragons, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @number_of_dragons, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %20

19:                                               ; preds = %14, %11, %7, %2
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 963, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.110, i64 0, i64 0), i32 -1, i32 -1)
  br label %20

20:                                               ; preds = %19, %18
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %4, align 4
  call void @add_adjacent_dragon(i32 %26, i32 %27)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  call void @add_adjacent_dragon(i32 %28, i32 %29)
  br label %30

30:                                               ; preds = %25, %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_adjacent_dragon(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @number_of_dragons, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i32, i32* %4, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @number_of_dragons, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  br label %21

20:                                               ; preds = %15, %12, %8, %2
  call void @abortgo(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 976, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.110, i64 0, i64 0), i32 -1, i32 -1)
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %22, i64 %24
  %26 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %103

30:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %54, %30
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %33, i64 %35
  %37 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %32, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %31
  %41 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %41, i64 %43
  %45 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %44, i32 0, i32 1
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %103

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %31, !llvm.loop !82

57:                                               ; preds = %31
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %59, i64 %61
  %63 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %62, i32 0, i32 1
  %64 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %64, i64 %66
  %68 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds [10 x i32], [10 x i32]* %63, i64 0, i64 %71
  store i32 %58, i32* %72, align 4
  %73 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %73, i64 %75
  %77 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %79
  %81 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %83, i64 %85
  %87 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %89
  %91 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 3, %92
  %94 = icmp eq i32 %82, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %57
  %96 = load %struct.dragon_data2*, %struct.dragon_data2** @dragon2, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %96, i64 %98
  %100 = getelementptr inbounds %struct.dragon_data2, %struct.dragon_data2* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %29, %52, %95, %57
  ret void
}

declare dso_local i32 @owl_substantial(i32) #1

declare dso_local void @get_lively_stones(i32, i8*) #1

declare dso_local void @mark_string(i32, i8*, i8 signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connected_to_eye(i32 %0, i32 %1, i32 %2, i32 %3, %struct.eye_data* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.eye_data*, align 8
  %12 = alloca [400 x i8], align 16
  %13 = alloca [400 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.eye_data* %4, %struct.eye_data** %11, align 8
  %16 = getelementptr inbounds [400 x i8], [400 x i8]* %12, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 400, i1 false)
  %17 = getelementptr inbounds [400 x i8], [400 x i8]* %13, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 400, i1 false)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x i8], [400 x i8]* %12, i64 0, i64 %19
  store i8 1, i8* %20, align 1
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %46, %5
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 8
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %14, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %25, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %36, label %45

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x i8], [400 x i8]* %12, i64 0, i64 %43
  store i8 1, i8* %44, align 1
  br label %45

45:                                               ; preds = %36, %24
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  br label %21, !llvm.loop !83

49:                                               ; preds = %21
  store i32 0, i32* %15, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.eye_data*, %struct.eye_data** %11, align 8
  %55 = getelementptr inbounds [400 x i8], [400 x i8]* %12, i64 0, i64 0
  %56 = getelementptr inbounds [400 x i8], [400 x i8]* %13, i64 0, i64 0
  call void @connected_to_eye_recurse(i32 %50, i32 %51, i32 %52, i32 %53, %struct.eye_data* %54, i8* %55, i8* %56, i32* %15)
  %57 = load i32, i32* %15, align 4
  %58 = icmp sge i32 %57, 2
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %61

60:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %59
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connected_to_eye_recurse(i32 %0, i32 %1, i32 %2, i32 %3, %struct.eye_data* %4, i8* %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.eye_data*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [241 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.eye_data* %4, %struct.eye_data** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i8*, i8** %14, align 8
  call void @mark_string(i32 %21, i8* %22, i8 signext 1)
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 0
  %25 = call i32 @findlib(i32 %23, i32 241, i32* %24)
  store i32 %25, i32* %17, align 4
  store i32 0, i32* %19, align 4
  br label %26

26:                                               ; preds = %100, %8
  %27 = load i32, i32* %19, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %103

30:                                               ; preds = %26
  %31 = load %struct.eye_data*, %struct.eye_data** %13, align 8
  %32 = load i32, i32* %19, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %31, i64 %36
  %38 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %99

42:                                               ; preds = %30
  %43 = load i32, i32* %19, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %99

49:                                               ; preds = %42
  %50 = load i8*, i8** %15, align 8
  %51 = load %struct.eye_data*, %struct.eye_data** %13, align 8
  %52 = load i32, i32* %19, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %51, i64 %56
  %58 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %50, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = icmp ne i8 %62, 0
  br i1 %63, label %99, label %64

64:                                               ; preds = %49
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.eye_data*, %struct.eye_data** %13, align 8
  %67 = load i32, i32* %19, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %66, i64 %71
  %73 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %65, i64 %75
  store i8 1, i8* %76, align 1
  %77 = load %struct.eye_data*, %struct.eye_data** %13, align 8
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %77, i64 %82
  %84 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %83, i32 0, i32 4
  %85 = call i32 @min_eyes(%struct.eyevalue* %84)
  %86 = load %struct.eye_data*, %struct.eye_data** %13, align 8
  %87 = load i32, i32* %19, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %86, i64 %91
  %93 = getelementptr inbounds %struct.eye_data, %struct.eye_data* %92, i32 0, i32 4
  %94 = call i32 @max_eyes(%struct.eyevalue* %93)
  %95 = add nsw i32 %85, %94
  %96 = load i32*, i32** %16, align 8
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %95
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %64, %49, %42, %30
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %19, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %19, align 4
  br label %26, !llvm.loop !84

103:                                              ; preds = %26
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  br label %224

108:                                              ; preds = %103
  store i32 0, i32* %19, align 4
  br label %109

109:                                              ; preds = %221, %108
  %110 = load i32, i32* %19, align 4
  %111 = load i32, i32* %17, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %224

113:                                              ; preds = %109
  %114 = load i8*, i8** %14, align 8
  %115 = load i32, i32* %19, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %114, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = icmp ne i8 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  br label %221

124:                                              ; preds = %113
  %125 = load i8*, i8** %14, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %125, i64 %130
  store i8 1, i8* %131, align 1
  store i32 0, i32* %20, align 4
  br label %132

132:                                              ; preds = %217, %124
  %133 = load i32, i32* %20, align 4
  %134 = icmp slt i32 %133, 4
  br i1 %134, label %135, label %220

135:                                              ; preds = %132
  %136 = load i32, i32* %19, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %139, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %145
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp ne i32 %148, 3
  br i1 %149, label %150, label %211

150:                                              ; preds = %135
  %151 = load i32, i32* %19, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %20, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %154, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = load i32, i32* %11, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %211

166:                                              ; preds = %150
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %19, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %20, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %171, %175
  %177 = call i32 @is_same_dragon(i32 %167, i32 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %211

179:                                              ; preds = %166
  %180 = load i8*, i8** %14, align 8
  %181 = load i32, i32* %19, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %184, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %180, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = icmp ne i8 %192, 0
  br i1 %193, label %211, label %194

194:                                              ; preds = %179
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %19, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [241 x i32], [241 x i32]* %18, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %20, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x i32], [8 x i32]* @delta, i64 0, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %199, %203
  %205 = load i32, i32* %11, align 4
  %206 = load i32, i32* %12, align 4
  %207 = load %struct.eye_data*, %struct.eye_data** %13, align 8
  %208 = load i8*, i8** %14, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = load i32*, i32** %16, align 8
  call void @connected_to_eye_recurse(i32 %195, i32 %204, i32 %205, i32 %206, %struct.eye_data* %207, i8* %208, i8* %209, i32* %210)
  br label %211

211:                                              ; preds = %194, %179, %166, %150, %135
  %212 = load i32*, i32** %16, align 8
  %213 = load i32, i32* %212, align 4
  %214 = icmp sge i32 %213, 2
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %224

216:                                              ; preds = %211
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %20, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %20, align 4
  br label %132, !llvm.loop !85

220:                                              ; preds = %132
  br label %221

221:                                              ; preds = %220, %123
  %222 = load i32, i32* %19, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %19, align 4
  br label %109, !llvm.loop !86

224:                                              ; preds = %107, %215, %109
  ret void
}

declare dso_local i32 @findlib(i32, i32, i32*) #1

declare dso_local void @compute_escape_influence(i32, i8*, float*, i8*) #1

declare dso_local void @influence_get_moyo_segmentation(%struct.influence_data*, %struct.moyo_data*) #1

declare dso_local void @influence_get_moyo_data(%struct.influence_data*, i32*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!75 = distinct !{!75, !5}
!76 = distinct !{!76, !5}
!77 = distinct !{!77, !5}
!78 = distinct !{!78, !5}
!79 = distinct !{!79, !5}
!80 = distinct !{!80, !5}
!81 = distinct !{!81, !5}
!82 = distinct !{!82, !5}
!83 = distinct !{!83, !5}
!84 = distinct !{!84, !5}
!85 = distinct !{!85, !5}
!86 = distinct !{!86, !5}
