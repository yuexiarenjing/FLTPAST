; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gg_option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }

@komi = external dso_local global float, align 4
@level = external dso_local global i32, align 4
@semeai_variations = external dso_local global i32, align 4
@mandated_depth = external dso_local global i32, align 4
@mandated_backfill_depth = external dso_local global i32, align 4
@mandated_backfill2_depth = external dso_local global i32, align 4
@mandated_superstring_depth = external dso_local global i32, align 4
@mandated_fourlib_depth = external dso_local global i32, align 4
@mandated_ko_depth = external dso_local global i32, align 4
@mandated_branch_depth = external dso_local global i32, align 4
@mandated_owl_distrust_depth = external dso_local global i32, align 4
@mandated_owl_branch_depth = external dso_local global i32, align 4
@mandated_owl_reading_depth = external dso_local global i32, align 4
@mandated_owl_node_limit = external dso_local global i32, align 4
@mandated_aa_depth = external dso_local global i32, align 4
@debug = external dso_local global i32, align 4
@fusekidb = external dso_local global i32, align 4
@disable_fuseki = external dso_local global i32, align 4
@josekidb = external dso_local global i32, align 4
@chinese_rules = external dso_local global i32, align 4
@owl_threats = external dso_local global i32, align 4
@experimental_owl_ext = external dso_local global i32, align 4
@experimental_semeai = external dso_local global i32, align 4
@experimental_connections = external dso_local global i32, align 4
@allow_suicide = external dso_local global i32, align 4
@capture_all_dead = external dso_local global i32, align 4
@play_out_aftermath = external dso_local global i32, align 4
@board_size = external dso_local global i32, align 4
@.str = private unnamed_addr constant [45 x i8] c"-ab:B:d:D:EF:gh::H:K:l:L:M:m:o:O:p:r:fsStTvw\00", align 1
@long_options = internal constant [83 x %struct.gg_option] [%struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 1, i32* null, i32 135 }, %struct.gg_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i32 0, i32 0), i32 1, i32* null, i32 143 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 0, i32* null, i32 138 }, %struct.gg_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i32 0, i32* null, i32 138 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 1, i32* null, i32 139 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 1, i32* null, i32 140 }, %struct.gg_option { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0), i32 1, i32* null, i32 140 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 1, i32* null, i32 141 }, %struct.gg_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 1, i32* null, i32 108 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 1, i32* null, i32 76 }, %struct.gg_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0), i32 1, i32* null, i32 111 }, %struct.gg_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.60, i32 0, i32 0), i32 1, i32* null, i32 79 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 1, i32* null, i32 127 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 1, i32* null, i32 129 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.63, i32 0, i32 0), i32 1, i32* null, i32 128 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 1, i32* null, i32 130 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 2, i32* null, i32 104 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 0, i32* null, i32 142 }, %struct.gg_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.gg_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.68, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.69, i32 0, i32 0), i32 0, i32* null, i32 84 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 0, i32* null, i32 69 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i32 0, i32* null, i32 167 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 1, i32* null, i32 68 }, %struct.gg_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i32 0, i32 0), i32 1, i32* null, i32 66 }, %struct.gg_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.74, i32 0, i32 0), i32 1, i32* null, i32 163 }, %struct.gg_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.75, i32 0, i32 0), i32 1, i32* null, i32 164 }, %struct.gg_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0), i32 1, i32* null, i32 165 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.77, i32 0, i32 0), i32 1, i32* null, i32 70 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 1, i32* null, i32 75 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.79, i32 0, i32 0), i32 1, i32* null, i32 166 }, %struct.gg_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.80, i32 0, i32 0), i32 1, i32* null, i32 168 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i32 1, i32* null, i32 169 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 1, i32* null, i32 170 }, %struct.gg_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), i32 1, i32* null, i32 171 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 1, i32* null, i32 175 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.85, i32 0, i32 0), i32 1, i32* null, i32 132 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i32 1, i32* null, i32 133 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 0, i32* null, i32 134 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.88, i32 0, i32 0), i32 0, i32* null, i32 181 }, %struct.gg_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.89, i32 0, i32 0), i32 0, i32* null, i32 184 }, %struct.gg_option { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.90, i32 0, i32 0), i32 0, i32* null, i32 151 }, %struct.gg_option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.91, i32 0, i32 0), i32 0, i32* null, i32 152 }, %struct.gg_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0), i32 1, i32* null, i32 153 }, %struct.gg_option { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.93, i32 0, i32 0), i32 0, i32* null, i32 154 }, %struct.gg_option { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i32 0, i32* null, i32 182 }, %struct.gg_option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.95, i32 0, i32 0), i32 0, i32* null, i32 183 }, %struct.gg_option { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i32 0, i32 0), i32 0, i32* null, i32 158 }, %struct.gg_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.97, i32 0, i32 0), i32 0, i32* null, i32 157 }, %struct.gg_option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i32 0, i32* null, i32 156 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i32 0, i32* null, i32 185 }, %struct.gg_option { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.100, i32 0, i32 0), i32 0, i32* null, i32 186 }, %struct.gg_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.101, i32 0, i32 0), i32 0, i32* null, i32 187 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i32 0, i32 0), i32 1, i32* null, i32 72 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0), i32 0, i32* null, i32 119 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i32 0, i32 0), i32 1, i32* null, i32 109 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0), i32 1, i32* null, i32 98 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.106, i32 0, i32 0), i32 0, i32* null, i32 83 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.107, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.gg_option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.109, i32 0, i32 0), i32 1, i32* null, i32 144 }, %struct.gg_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.110, i32 0, i32 0), i32 1, i32* null, i32 145 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.111, i32 0, i32 0), i32 1, i32* null, i32 146 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.112, i32 0, i32 0), i32 1, i32* null, i32 146 }, %struct.gg_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.113, i32 0, i32 0), i32 1, i32* null, i32 147 }, %struct.gg_option { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.114, i32 0, i32 0), i32 1, i32* null, i32 148 }, %struct.gg_option { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.115, i32 0, i32 0), i32 1, i32* null, i32 150 }, %struct.gg_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i32 0, i32* null, i32 160 }, %struct.gg_option { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.117, i32 0, i32 0), i32 1, i32* null, i32 149 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.118, i32 0, i32 0), i32 1, i32* null, i32 161 }, %struct.gg_option { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.119, i32 0, i32 0), i32 0, i32* null, i32 162 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.120, i32 0, i32 0), i32 0, i32* null, i32 172 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.121, i32 0, i32 0), i32 0, i32* null, i32 173 }, %struct.gg_option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.122, i32 0, i32 0), i32 0, i32* null, i32 174 }, %struct.gg_option { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.123, i32 0, i32 0), i32 1, i32* null, i32 178 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0), i32 0, i32* null, i32 176 }, %struct.gg_option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.125, i32 0, i32 0), i32 0, i32* null, i32 177 }, %struct.gg_option { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.126, i32 0, i32 0), i32 1, i32* null, i32 179 }, %struct.gg_option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i32 1, i32* null, i32 180 }, %struct.gg_option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.128, i32 0, i32 0), i32 0, i32* null, i32 188 }, %struct.gg_option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.129, i32 0, i32 0), i32 1, i32* null, i32 189 }, %struct.gg_option zeroinitializer], align 16
@printboard = external dso_local global i32, align 4
@verbose = external dso_local global i32, align 4
@allpats = external dso_local global i32, align 4
@gg_optarg = external dso_local global i8*, align 8
@showstatistics = external dso_local global i32, align 4
@printworms = external dso_local global i32, align 4
@printmoyo = external dso_local global i32, align 4
@hashflags = external dso_local global i32, align 4
@outfilename = external dso_local global [128 x i8], align 16
@output_flags = external dso_local global i32, align 4
@quiet = external dso_local global i32, align 4
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Illegal orientation: %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Try `gnugo --help' for more information.\0A\00", align 1
@gtp_version = external dso_local global i32, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"configure option enabled: experimental connections\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"configure option enabled: experimental semeai\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Owl node limit: %d\0A\00", align 1
@showtime = external dso_local global i32, align 4
@showscore = external dso_local global i32, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Illegal handicap: %d.\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Illegal board size: %d.\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Invalid komi selection: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"gtp\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Invalid mode selection: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"Invalid board coordinate: %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"usage: --decide-connection [first string]/[second string]\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"usage: --decide-semeai [first dragon]/[second dragon]\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"usage: --decide-tactical-semeai [first dragon]/[second dragon]\0A\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"white\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"black\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"Invalid replay color: %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Invalid color selection: %s\0A\00", align 1
@play_mirror_go = external dso_local global i32, align 4
@mirror_stones_limit = external dso_local global i32, align 4
@.str.24 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@gg_optind = external dso_local global i32, align 4
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@random_seed = external dso_local global i32, align 4
@.str.26 = private unnamed_addr constant [27 x i8] c"Cannot open or parse '%s'\0A\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Error: could not open '%s' for writing\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"You must use -l infile with replay mode.\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"You must use -l infile with load and analyze mode.\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"gnugo: --score must be used with -l\0A\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"gnugo: --printsgf must be used with -l\0A\00", align 1
@.str.33 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-string must be used with -l\0A\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-string: strange coordinate \0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"gnugo: --decide-connection must be used with -l\0A\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-dragon must be used with -l\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-dragon: strange coordinate \0A\00", align 1
@.str.38 = private unnamed_addr constant [50 x i8] c"gnugo: --decide-dragon-data must be used with -l\0A\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"gnugo: --decide-dragon-data: strange coordinate \0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"gnugo: --decide-semeai must be used with -l\0A\00", align 1
@.str.41 = private unnamed_addr constant [54 x i8] c"gnugo: --decide-tactical-semeai must be used with -l\0A\00", align 1
@.str.42 = private unnamed_addr constant [47 x i8] c"gnugo: --decide-position must be used with -l\0A\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"gnugo: --decide-eye must be used with -l\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"gnugo: --decide-eye: strange coordinate \0A\00", align 1
@.str.45 = private unnamed_addr constant [50 x i8] c"gnugo: --decide-combination must be used with -l\0A\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"usage: --decide-surrounded [pos]\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"gnugo: Cannot open file %s\0A\00", align 1
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.49 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"replay\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"silent\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"gtp-input\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"orientation\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"gtp-initial-orientation\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"gtp-version\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"infile\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"until\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"output-flags\00", align 1
@.str.61 = private unnamed_addr constant [10 x i8] c"boardsize\00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@.str.64 = private unnamed_addr constant [5 x i8] c"komi\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"copyright\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.68 = private unnamed_addr constant [8 x i8] c"allpats\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"printboard\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"printeyes\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"debug-flags\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"backfill-depth\00", align 1
@.str.74 = private unnamed_addr constant [13 x i8] c"branch-depth\00", align 1
@.str.75 = private unnamed_addr constant [16 x i8] c"backfill2-depth\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"superstring-depth\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"fourlib-depth\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"ko-depth\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"aa-depth\00", align 1
@.str.80 = private unnamed_addr constant [13 x i8] c"owl-distrust\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"owl-branch\00", align 1
@.str.82 = private unnamed_addr constant [12 x i8] c"owl-reading\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"owl-node-limit\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.85 = private unnamed_addr constant [9 x i8] c"byo-time\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"byo-period\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"autolevel\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"chinese-rules\00", align 1
@.str.89 = private unnamed_addr constant [15 x i8] c"japanese-rules\00", align 1
@.str.90 = private unnamed_addr constant [20 x i8] c"experimental-semeai\00", align 1
@.str.91 = private unnamed_addr constant [21 x i8] c"experimental-owl-ext\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"semeai-variations\00", align 1
@.str.93 = private unnamed_addr constant [25 x i8] c"experimental-connections\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"owl-threats\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"no-owl-threats\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"standard-connections\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c"standard-semeai\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"allow-suicide\00", align 1
@.str.100 = private unnamed_addr constant [17 x i8] c"capture-all-dead\00", align 1
@.str.101 = private unnamed_addr constant [19 x i8] c"play-out-aftermath\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"worms\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"moyo\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"benchmark\00", align 1
@.str.106 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@.str.107 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"seed\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"decide-string\00", align 1
@.str.110 = private unnamed_addr constant [18 x i8] c"decide-connection\00", align 1
@.str.111 = private unnamed_addr constant [14 x i8] c"decide-dragon\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"decide-owl\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"decide-dragon-data\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"decide-semeai\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"decide-tactical-semeai\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"decide-position\00", align 1
@.str.117 = private unnamed_addr constant [18 x i8] c"decide-surrounded\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"decide-eye\00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c"decide-combination\00", align 1
@.str.120 = private unnamed_addr constant [11 x i8] c"nofusekidb\00", align 1
@.str.121 = private unnamed_addr constant [9 x i8] c"nofuseki\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"nojosekidb\00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"debug-influence\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"showtime\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"showscore\00", align 1
@.str.126 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"printsgf\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.129 = private unnamed_addr constant [13 x i8] c"mirror-limit\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"GNU Go Version %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"3.3.14\00", align 1
@.str.132 = private unnamed_addr constant [1519 x i8] c"\0AUsage: gnugo [-opts]\0A\0AMain Options:\0A       --mode <mode>     Force the playing mode ('ascii' or 'gtp').\0A                         Default is GTP.\0A       --quiet           Don't print copyright and informational messages\0A       --gtp-input <file>Read gtp commands from file instead of stdin\0A   -l, --infile <file>   Load name sgf file\0A   -L, --until <move>    Stop loading just before move is played. <move>\0A                         can be the move number or location (eg L10).\0A   -o, --outfile <file>  Write sgf output to file\0A   --printsgf <file>     Write position as a diagram to file (use with -l)\0A\0AOptions that affect strength (higher = stronger, slower):\0A   -D, --depth <depth>          deep reading cutoff (default %d)\0A   -B, --backfill-depth <depth> deep reading cutoff (default %d)\0A   -F, --fourlib-depth <depth>  deep reading cutoff (default %d)\0A   -K, --ko-depth <depth>       deep reading cutoff (default %d)\0A   --branch-depth <depth>       deep reading cutoff (default %d)\0A   --backfill2-depth <depth>    deep reading cutoff (default %d)\0A   --superstring-depth <depth>  deep reading cutoff (default %d)\0A   --aa-depth <depth>           deep reading cutoff (default %d)\0A   --owl-distrust <depth>       owl distrust depth (default %d)\0A   --owl-branch <depth>         owl branching depth (default %d)\0A   --owl-reading <depth>        owl reading depth (default %d)\0A   --owl-node-limit <limit>     max nodes for owl reading (default %d)\0A   --level <amount>             strength (default %d, up to 10 supported)\0A\00", align 1
@depth = external dso_local global i32, align 4
@backfill_depth = external dso_local global i32, align 4
@fourlib_depth = external dso_local global i32, align 4
@ko_depth = external dso_local global i32, align 4
@branch_depth = external dso_local global i32, align 4
@backfill2_depth = external dso_local global i32, align 4
@superstring_depth = external dso_local global i32, align 4
@aa_depth = external dso_local global i32, align 4
@owl_distrust_depth = external dso_local global i32, align 4
@owl_branch_depth = external dso_local global i32, align 4
@owl_reading_depth = external dso_local global i32, align 4
@owl_node_limit = external dso_local global i32, align 4
@.str.133 = private unnamed_addr constant [1138 x i8] c"\0AExperimental options:\0A   --nofusekidb            turn off fuseki database\0A   --nofuseki              turn off fuseki moves entirely\0A   --nojosekidb            turn off joseki database\0A   --mirror                try to play mirror go\0A   --mirror-limit <n>      stop mirroring when n stones on board\0AScoring:\0A   --score estimate        estimate score at loaded position\0A   --score finish          generate moves to finish game, then score\0A   --score aftermath       generate moves to finish, use best algorithm\0A   --score aftermath --capture-all-dead --chinese-rules   Tromp-Taylor score\0A\0AGame Options: (--mode ascii)\0A       --boardsize num   Set the board size to use (%d--%d)\0A       --color <color>   Choose your color ('black' or 'white')\0A       --handicap <num>  Set the number of handicap stones (0--%d)\0A       --komi <num>      Set the komi\0A\0AInformative Output:\0A   -v, --version         Display the version of GNU Go\0A   --options             Display configure options\0A   -h, --help            Display this help message\0A       --help debug      Display help about debugging options\0A       --copyright       Display copyright notice\0A\0A\00", align 1
@.str.134 = private unnamed_addr constant [2489 x i8] c"\0ADebugging Options:\0A\0A       --replay <color> replay the moves in a game for color.\0A                        (requires -l)\0A                     white: replay only white moves\0A                     black: replay only black moves\0A                     both:  replay all moves\0A   -a, --allpats                 test all patterns\0A   -T, --printboard              colored display of dragons\0A   -E, --printeyes               colored display of eye spaces\0A   -d, --debug <flags>           debugging output (see next item for bits)\0A   --debug-flags                 print the debug flags for previous item\0A   -H, --hash <level>            hash (see gnugo.h for bits)\0A   -w, --worms                   print worm and dragon data and move reasons\0A   -m, --moyo <level>            moyo debugging, show moyo board\0A   -b, --benchmark num           benchmarking mode - can be used with -l\0A   -S, --statistics              print statistics (for debugging purposes)\0A\0A   -t, --trace                   verbose tracing\0A   -O, --output-flags <flags>    optional output (use with -o)\0A                    d: mark dead and critical dragons\0A                    v: show values of considered moves\0A                    specify either 'd', 'v' or 'dv' (nothing by default)\0A   --showtime                    print timing diagnostic\0A   --replay <color>              replay game. Use with -o.\0A   --showscore                   print estimated score\0A   -r, --seed number             set random number seed\0A       --decide-string <string>  can this string live? (try with -o)\0A       --decide-connection <str/str> can these strings connect? (try with -o)\0A       --decide-dragon <dragon>  can this dragon live? (try with -o or -t)\0A       --decide-position         evaluate all dragons (try with -o or -t)\0A       --decide-eye <string>     evaluate the eye\0A       --decide-combination      search for combination attack (try with -o)\0A       --genmove <color>         generate a move for color\0A       --nofusekidb              turn off fuseki database\0A       --nofuseki                turn off fuseki moves entirely\0A       --nojosekidb              turn off joseki database\0A       --debuginfluence <move>   print influence map after making a move\0A       --score <end|last|move>   count or estimate territory\0A       --profile-patterns        print statistics for pattern usage\0A       --attack-by-pattern       use pattern-based tactical reading for attack\0A       --defend-by-pattern       use pattern-based tactical reading for defense\0A\00", align 1
@.str.135 = private unnamed_addr constant [857 x i8] c"DEBUG_INFLUENCE             0x0001\0ADEBUG_EYES                  0x0002\0ADEBUG_OWL                   0x0004\0ADEBUG_ESCAPE                0x0008\0ADEBUG_MATCHER               0x0010\0ADEBUG_DRAGONS               0x0020\0ADEBUG_SEMEAI                0x0040\0ADEBUG_LOADSGF               0x0080\0ADEBUG_HELPER                0x0100\0ADEBUG_READING               0x0200\0ADEBUG_WORMS                 0x0400\0ADEBUG_MOVE_REASONS          0x0800\0ADEBUG_OWL_PERFORMANCE       0x1000\0ADEBUG_LIFE                  0x2000\0ADEBUG_FILLLIB               0x4000\0ADEBUG_READING_PERFORMANCE   0x8000\0ADEBUG_SCORING               0x010000\0ADEBUG_AFTERMATH             0x020000\0ADEBUG_ATARI_ATARI           0x040000\0ADEBUG_READING_CACHE         0x080000\0ADEBUG_TERRITORY             0x100000\0ADEBUG_OWL_PERSISTENT_CACHE  0X200000\0ADEBUG_TOP_MOVES             0x400000\0ADEBUG_MISCELLANEOUS         0x800000\0A\00", align 1
@.str.136 = private unnamed_addr constant [817 x i8] c"\0A\0AThis is GNU GO, a Go program. Contact gnugo@gnu.org, or see\0Ahttp://www.gnu.org/software/gnugo/ for more information.\0A\0ACopyright 1999, 2000, 2001, 2002 by the Free Software Foundation.\0A\0AThis program is free software; you can redistribute it and/or\0Amodify it under the terms of the GNU General Public License\0Aas published by the Free Software Foundation - version 2.\0A\0AThis program is distributed in the hope that it will be\0Auseful, but WITHOUT ANY WARRANTY; without even the implied\0Awarranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR\0APURPOSE.  See the GNU General Public License in file COPYING\0Afor more details.\0A\0AYou should have received a copy of the GNU General Public\0ALicense along with this program; if not, write to the Free\0ASoftware Foundation, Inc., 59 Temple Place - Suite 330,\0ABoston, MA 02111, USA.\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.Gameinfo, align 8
  %7 = alloca %struct.SGFTree_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [8 x i8], align 1
  %20 = alloca i8*, align 8
  %21 = alloca [4 x i8], align 1
  %22 = alloca i32, align 4
  %23 = alloca %struct._IO_FILE*, align 8
  %24 = alloca %struct._IO_FILE*, align 8
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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %20, align 8
  %55 = bitcast [4 x i8]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %55, i8 0, i64 4, i1 false)
  store i32 0, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store float 0.000000e+00, float* @komi, align 4
  store i32 10, i32* @level, align 4
  store i32 250, i32* @semeai_variations, align 4
  store i32 -1, i32* @mandated_depth, align 4
  store i32 -1, i32* @mandated_backfill_depth, align 4
  store i32 -1, i32* @mandated_backfill2_depth, align 4
  store i32 -1, i32* @mandated_superstring_depth, align 4
  store i32 -1, i32* @mandated_fourlib_depth, align 4
  store i32 -1, i32* @mandated_ko_depth, align 4
  store i32 -1, i32* @mandated_branch_depth, align 4
  store i32 -1, i32* @mandated_owl_distrust_depth, align 4
  store i32 -1, i32* @mandated_owl_branch_depth, align 4
  store i32 -1, i32* @mandated_owl_reading_depth, align 4
  store i32 -1, i32* @mandated_owl_node_limit, align 4
  store i32 -1, i32* @mandated_aa_depth, align 4
  store i32 0, i32* @debug, align 4
  store i32 1, i32* @fusekidb, align 4
  store i32 0, i32* @disable_fuseki, align 4
  store i32 1, i32* @josekidb, align 4
  store i32 0, i32* @chinese_rules, align 4
  store i32 0, i32* @owl_threats, align 4
  store i32 0, i32* @experimental_owl_ext, align 4
  store i32 1, i32* @experimental_semeai, align 4
  store i32 1, i32* @experimental_connections, align 4
  store i32 0, i32* @allow_suicide, align 4
  store i32 0, i32* @capture_all_dead, align 4
  store i32 0, i32* @play_out_aftermath, align 4
  call void @sgftree_clear(%struct.SGFTree_t* %7)
  %56 = load i32, i32* @board_size, align 4
  %57 = load float, float* @komi, align 4
  call void @gameinfo_clear(%struct.Gameinfo* %6, i32 %56, float %57)
  br label %58

58:                                               ; preds = %504, %2
  %59 = load i32, i32* %4, align 4
  %60 = load i8**, i8*** %5, align 8
  %61 = call i32 @gg_getopt_long(i32 %59, i8** %60, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.gg_option* getelementptr inbounds ([83 x %struct.gg_option], [83 x %struct.gg_option]* @long_options, i64 0, i64 0), i32* null)
  store i32 %61, i32* %8, align 4
  %62 = icmp ne i32 %61, -1
  br i1 %62, label %63, label %505

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  switch i32 %64, label %501 [
    i32 84, label %65
    i32 116, label %68
    i32 97, label %71
    i32 1, label %72
    i32 108, label %72
    i32 98, label %74
    i32 114, label %77
    i32 83, label %80
    i32 119, label %81
    i32 109, label %82
    i32 100, label %86
    i32 68, label %93
    i32 72, label %96
    i32 69, label %100
    i32 66, label %101
    i32 70, label %104
    i32 75, label %107
    i32 76, label %110
    i32 111, label %112
    i32 79, label %116
    i32 138, label %140
    i32 139, label %141
    i32 140, label %143
    i32 141, label %158
    i32 156, label %161
    i32 176, label %168
    i32 177, label %169
    i32 128, label %170
    i32 127, label %187
    i32 130, label %203
    i32 181, label %214
    i32 182, label %215
    i32 183, label %216
    i32 184, label %217
    i32 152, label %218
    i32 151, label %219
    i32 153, label %220
    i32 157, label %223
    i32 154, label %224
    i32 158, label %225
    i32 185, label %226
    i32 186, label %227
    i32 187, label %228
    i32 135, label %229
    i32 144, label %253
    i32 145, label %265
    i32 146, label %285
    i32 147, label %297
    i32 148, label %309
    i32 150, label %329
    i32 160, label %349
    i32 161, label %350
    i32 162, label %362
    i32 149, label %363
    i32 163, label %375
    i32 164, label %378
    i32 165, label %381
    i32 166, label %384
    i32 168, label %387
    i32 169, label %390
    i32 170, label %393
    i32 171, label %396
    i32 172, label %399
    i32 173, label %400
    i32 174, label %401
    i32 175, label %402
    i32 178, label %405
    i32 143, label %417
    i32 179, label %441
    i32 180, label %447
    i32 129, label %449
    i32 142, label %467
    i32 188, label %468
    i32 189, label %469
    i32 118, label %472
    i32 104, label %473
    i32 167, label %499
    i32 63, label %500
  ]

65:                                               ; preds = %63
  %66 = load i32, i32* @printboard, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @printboard, align 4
  br label %504

68:                                               ; preds = %63
  %69 = load i32, i32* @verbose, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @verbose, align 4
  br label %504

71:                                               ; preds = %63
  store i32 1, i32* @allpats, align 4
  br label %504

72:                                               ; preds = %63, %63
  %73 = load i8*, i8** @gg_optarg, align 8
  store i8* %73, i8** %12, align 8
  br label %504

74:                                               ; preds = %63
  %75 = load i8*, i8** @gg_optarg, align 8
  %76 = call i32 @atoi(i8* %75) #7
  store i32 %76, i32* %22, align 4
  store i32 8, i32* %10, align 4
  br label %504

77:                                               ; preds = %63
  %78 = load i8*, i8** @gg_optarg, align 8
  %79 = call i32 @atoi(i8* %78) #7
  store i32 %79, i32* %26, align 4
  br label %504

80:                                               ; preds = %63
  store i32 1, i32* @showstatistics, align 4
  br label %504

81:                                               ; preds = %63
  store i32 1, i32* @printworms, align 4
  br label %504

82:                                               ; preds = %63
  %83 = load i8*, i8** @gg_optarg, align 8
  %84 = call i64 @strtol(i8* %83, i8** null, i32 0) #8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* @printmoyo, align 4
  br label %504

86:                                               ; preds = %63
  %87 = load i8*, i8** @gg_optarg, align 8
  %88 = call i64 @strtol(i8* %87, i8** null, i32 0) #8
  %89 = load i32, i32* @debug, align 4
  %90 = sext i32 %89 to i64
  %91 = xor i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* @debug, align 4
  br label %504

93:                                               ; preds = %63
  %94 = load i8*, i8** @gg_optarg, align 8
  %95 = call i32 @atoi(i8* %94) #7
  store i32 %95, i32* @mandated_depth, align 4
  br label %504

96:                                               ; preds = %63
  %97 = load i8*, i8** @gg_optarg, align 8
  %98 = call i64 @strtol(i8* %97, i8** null, i32 0) #8
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* @hashflags, align 4
  br label %504

100:                                              ; preds = %63
  store i32 2, i32* @printboard, align 4
  br label %504

101:                                              ; preds = %63
  %102 = load i8*, i8** @gg_optarg, align 8
  %103 = call i32 @atoi(i8* %102) #7
  store i32 %103, i32* @mandated_backfill_depth, align 4
  br label %504

104:                                              ; preds = %63
  %105 = load i8*, i8** @gg_optarg, align 8
  %106 = call i32 @atoi(i8* %105) #7
  store i32 %106, i32* @mandated_fourlib_depth, align 4
  br label %504

107:                                              ; preds = %63
  %108 = load i8*, i8** @gg_optarg, align 8
  %109 = call i32 @atoi(i8* %108) #7
  store i32 %109, i32* @mandated_ko_depth, align 4
  br label %504

110:                                              ; preds = %63
  %111 = load i8*, i8** @gg_optarg, align 8
  store i8* %111, i8** %13, align 8
  br label %504

112:                                              ; preds = %63
  %113 = load i8*, i8** @gg_optarg, align 8
  store i8* %113, i8** %15, align 8
  %114 = load i8*, i8** @gg_optarg, align 8
  %115 = call i8* @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @outfilename, i64 0, i64 0), i8* %114) #8
  br label %504

116:                                              ; preds = %63
  %117 = load i8*, i8** @gg_optarg, align 8
  store i8* %117, i8** %16, align 8
  store i32 0, i32* @output_flags, align 4
  %118 = load i8*, i8** %16, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %120, label %139

120:                                              ; preds = %116
  br label %121

121:                                              ; preds = %135, %120
  %122 = load i8*, i8** %16, align 8
  %123 = load i8, i8* %122, align 1
  %124 = icmp ne i8 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %121
  %126 = load i8*, i8** %16, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  switch i32 %128, label %135 [
    i32 100, label %129
    i32 118, label %132
  ]

129:                                              ; preds = %125
  %130 = load i32, i32* @output_flags, align 4
  %131 = or i32 %130, 1
  store i32 %131, i32* @output_flags, align 4
  br label %135

132:                                              ; preds = %125
  %133 = load i32, i32* @output_flags, align 4
  %134 = or i32 %133, 2
  store i32 %134, i32* @output_flags, align 4
  br label %135

135:                                              ; preds = %125, %132, %129
  %136 = load i8*, i8** %16, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %16, align 8
  br label %121, !llvm.loop !4

138:                                              ; preds = %121
  br label %139

139:                                              ; preds = %138, %116
  br label %504

140:                                              ; preds = %63
  store i32 1, i32* @quiet, align 4
  br label %504

141:                                              ; preds = %63
  %142 = load i8*, i8** @gg_optarg, align 8
  store i8* %142, i8** %17, align 8
  br label %504

143:                                              ; preds = %63
  %144 = load i8*, i8** @gg_optarg, align 8
  %145 = call i32 @atoi(i8* %144) #7
  store i32 %145, i32* %25, align 4
  %146 = load i32, i32* %25, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %25, align 4
  %150 = icmp sgt i32 %149, 7
  br i1 %150, label %151, label %157

151:                                              ; preds = %148, %143
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %153 = load i32, i32* %25, align 4
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %153)
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

157:                                              ; preds = %148
  br label %504

158:                                              ; preds = %63
  %159 = load i8*, i8** @gg_optarg, align 8
  %160 = call i32 @atoi(i8* %159) #7
  store i32 %160, i32* @gtp_version, align 4
  br label %504

161:                                              ; preds = %63
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %163 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 1000)
  store i32 0, i32* %3, align 4
  br label %941

168:                                              ; preds = %63
  store i32 1, i32* @showtime, align 4
  br label %504

169:                                              ; preds = %63
  store i32 1, i32* @showscore, align 4
  br label %504

170:                                              ; preds = %63
  %171 = load i8*, i8** @gg_optarg, align 8
  %172 = call i32 @atoi(i8* %171) #7
  store i32 %172, i32* %27, align 4
  %173 = load i32, i32* %27, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %27, align 4
  %177 = icmp sgt i32 %176, 9
  br i1 %177, label %178, label %184

178:                                              ; preds = %175, %170
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %180 = load i32, i32* %27, align 4
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %180)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

184:                                              ; preds = %175
  %185 = load i32, i32* %27, align 4
  %186 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 0
  store i32 %185, i32* %186, align 8
  br label %504

187:                                              ; preds = %63
  %188 = load i8*, i8** @gg_optarg, align 8
  %189 = call i32 @atoi(i8* %188) #7
  store i32 %189, i32* %28, align 4
  %190 = load i32, i32* %28, align 4
  %191 = icmp slt i32 %190, 5
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %28, align 4
  %194 = icmp sgt i32 %193, 19
  br i1 %194, label %195, label %201

195:                                              ; preds = %192, %187
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %197 = load i32, i32* %28, align 4
  %198 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %197)
  %199 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %199, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

201:                                              ; preds = %192
  %202 = load i32, i32* %28, align 4
  call void @gnugo_clear_board(i32 %202)
  br label %504

203:                                              ; preds = %63
  %204 = load i8*, i8** @gg_optarg, align 8
  %205 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), float* @komi) #8
  %206 = icmp ne i32 %205, 1
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %209 = load i8*, i8** @gg_optarg, align 8
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %209)
  %211 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %211, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

213:                                              ; preds = %203
  br label %504

214:                                              ; preds = %63
  store i32 1, i32* @chinese_rules, align 4
  br label %504

215:                                              ; preds = %63
  store i32 1, i32* @owl_threats, align 4
  br label %504

216:                                              ; preds = %63
  store i32 0, i32* @owl_threats, align 4
  br label %504

217:                                              ; preds = %63
  store i32 0, i32* @chinese_rules, align 4
  br label %504

218:                                              ; preds = %63
  store i32 1, i32* @experimental_owl_ext, align 4
  br label %504

219:                                              ; preds = %63
  store i32 1, i32* @experimental_semeai, align 4
  br label %504

220:                                              ; preds = %63
  %221 = load i8*, i8** @gg_optarg, align 8
  %222 = call i32 @atoi(i8* %221) #7
  store i32 %222, i32* @semeai_variations, align 4
  br label %504

223:                                              ; preds = %63
  store i32 0, i32* @experimental_semeai, align 4
  br label %504

224:                                              ; preds = %63
  store i32 1, i32* @experimental_connections, align 4
  br label %504

225:                                              ; preds = %63
  store i32 0, i32* @experimental_connections, align 4
  br label %504

226:                                              ; preds = %63
  store i32 1, i32* @allow_suicide, align 4
  br label %504

227:                                              ; preds = %63
  store i32 1, i32* @capture_all_dead, align 4
  br label %504

228:                                              ; preds = %63
  store i32 1, i32* @play_out_aftermath, align 4
  br label %504

229:                                              ; preds = %63
  %230 = load i8*, i8** @gg_optarg, align 8
  %231 = call i32 @strcmp(i8* %230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)) #7
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  store i32 1, i32* %10, align 4
  br label %252

234:                                              ; preds = %229
  %235 = load i8*, i8** @gg_optarg, align 8
  %236 = call i32 @strcmp(i8* %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0)) #7
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  store i32 2, i32* %10, align 4
  br label %251

239:                                              ; preds = %234
  %240 = load i8*, i8** @gg_optarg, align 8
  %241 = call i32 @strcmp(i8* %240, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)) #7
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  store i32 3, i32* %10, align 4
  br label %250

244:                                              ; preds = %239
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %246 = load i8*, i8** @gg_optarg, align 8
  %247 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %245, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8* %246)
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %249 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %248, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

250:                                              ; preds = %243
  br label %251

251:                                              ; preds = %250, %238
  br label %252

252:                                              ; preds = %251, %233
  br label %504

253:                                              ; preds = %63
  %254 = load i8*, i8** @gg_optarg, align 8
  %255 = call i64 @strlen(i8* %254) #7
  %256 = icmp ugt i64 %255, 3
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %259 = load i8*, i8** @gg_optarg, align 8
  %260 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %258, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %259)
  call void @exit(i32 1) #9
  unreachable

261:                                              ; preds = %253
  %262 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %263 = load i8*, i8** @gg_optarg, align 8
  %264 = call i8* @strcpy(i8* %262, i8* %263) #8
  store i32 10, i32* %10, align 4
  br label %504

265:                                              ; preds = %63
  %266 = load i8*, i8** @gg_optarg, align 8
  %267 = call i64 @strlen(i8* %266) #7
  %268 = icmp ugt i64 %267, 7
  br i1 %268, label %269, label %272

269:                                              ; preds = %265
  %270 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %271 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %270, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

272:                                              ; preds = %265
  %273 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %274 = load i8*, i8** @gg_optarg, align 8
  %275 = call i8* @strcpy(i8* %273, i8* %274) #8
  %276 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %277 = call i8* @strtok(i8* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  %278 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  store i8* %278, i8** %20, align 8
  %279 = load i8*, i8** %20, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %284, label %281

281:                                              ; preds = %272
  %282 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %283 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %282, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

284:                                              ; preds = %272
  store i32 11, i32* %10, align 4
  br label %504

285:                                              ; preds = %63
  %286 = load i8*, i8** @gg_optarg, align 8
  %287 = call i64 @strlen(i8* %286) #7
  %288 = icmp ugt i64 %287, 3
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %291 = load i8*, i8** @gg_optarg, align 8
  %292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %290, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %291)
  call void @exit(i32 1) #9
  unreachable

293:                                              ; preds = %285
  %294 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %295 = load i8*, i8** @gg_optarg, align 8
  %296 = call i8* @strcpy(i8* %294, i8* %295) #8
  store i32 12, i32* %10, align 4
  br label %504

297:                                              ; preds = %63
  %298 = load i8*, i8** @gg_optarg, align 8
  %299 = call i64 @strlen(i8* %298) #7
  %300 = icmp ugt i64 %299, 3
  br i1 %300, label %301, label %305

301:                                              ; preds = %297
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %303 = load i8*, i8** @gg_optarg, align 8
  %304 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %302, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %303)
  call void @exit(i32 1) #9
  unreachable

305:                                              ; preds = %297
  %306 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %307 = load i8*, i8** @gg_optarg, align 8
  %308 = call i8* @strcpy(i8* %306, i8* %307) #8
  store i32 13, i32* %10, align 4
  br label %504

309:                                              ; preds = %63
  %310 = load i8*, i8** @gg_optarg, align 8
  %311 = call i64 @strlen(i8* %310) #7
  %312 = icmp ugt i64 %311, 7
  br i1 %312, label %313, label %316

313:                                              ; preds = %309
  %314 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %315 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %314, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

316:                                              ; preds = %309
  %317 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %318 = load i8*, i8** @gg_optarg, align 8
  %319 = call i8* @strcpy(i8* %317, i8* %318) #8
  %320 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %321 = call i8* @strtok(i8* %320, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  %322 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  store i8* %322, i8** %20, align 8
  %323 = load i8*, i8** %20, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %316
  %326 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %326, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

328:                                              ; preds = %316
  store i32 14, i32* %10, align 4
  br label %504

329:                                              ; preds = %63
  %330 = load i8*, i8** @gg_optarg, align 8
  %331 = call i64 @strlen(i8* %330) #7
  %332 = icmp ugt i64 %331, 7
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %335 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %334, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

336:                                              ; preds = %329
  %337 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %338 = load i8*, i8** @gg_optarg, align 8
  %339 = call i8* @strcpy(i8* %337, i8* %338) #8
  %340 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %341 = call i8* @strtok(i8* %340, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  %342 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0)) #8
  store i8* %342, i8** %20, align 8
  %343 = load i8*, i8** %20, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %348, label %345

345:                                              ; preds = %336
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %347 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %346, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

348:                                              ; preds = %336
  store i32 15, i32* %10, align 4
  br label %504

349:                                              ; preds = %63
  store i32 16, i32* %10, align 4
  br label %504

350:                                              ; preds = %63
  %351 = load i8*, i8** @gg_optarg, align 8
  %352 = call i64 @strlen(i8* %351) #7
  %353 = icmp ugt i64 %352, 3
  br i1 %353, label %354, label %358

354:                                              ; preds = %350
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %356 = load i8*, i8** @gg_optarg, align 8
  %357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %355, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %356)
  call void @exit(i32 1) #9
  unreachable

358:                                              ; preds = %350
  %359 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %360 = load i8*, i8** @gg_optarg, align 8
  %361 = call i8* @strcpy(i8* %359, i8* %360) #8
  store i32 17, i32* %10, align 4
  br label %504

362:                                              ; preds = %63
  store i32 18, i32* %10, align 4
  br label %504

363:                                              ; preds = %63
  %364 = load i8*, i8** @gg_optarg, align 8
  %365 = call i64 @strlen(i8* %364) #7
  %366 = icmp ugt i64 %365, 3
  br i1 %366, label %367, label %371

367:                                              ; preds = %363
  %368 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %369 = load i8*, i8** @gg_optarg, align 8
  %370 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %368, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %369)
  call void @exit(i32 1) #9
  unreachable

371:                                              ; preds = %363
  %372 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %373 = load i8*, i8** @gg_optarg, align 8
  %374 = call i8* @strcpy(i8* %372, i8* %373) #8
  store i32 19, i32* %10, align 4
  br label %504

375:                                              ; preds = %63
  %376 = load i8*, i8** @gg_optarg, align 8
  %377 = call i32 @atoi(i8* %376) #7
  store i32 %377, i32* @mandated_branch_depth, align 4
  br label %504

378:                                              ; preds = %63
  %379 = load i8*, i8** @gg_optarg, align 8
  %380 = call i32 @atoi(i8* %379) #7
  store i32 %380, i32* @mandated_backfill2_depth, align 4
  br label %504

381:                                              ; preds = %63
  %382 = load i8*, i8** @gg_optarg, align 8
  %383 = call i32 @atoi(i8* %382) #7
  store i32 %383, i32* @mandated_superstring_depth, align 4
  br label %504

384:                                              ; preds = %63
  %385 = load i8*, i8** @gg_optarg, align 8
  %386 = call i32 @atoi(i8* %385) #7
  store i32 %386, i32* @mandated_aa_depth, align 4
  br label %387

387:                                              ; preds = %63, %384
  %388 = load i8*, i8** @gg_optarg, align 8
  %389 = call i32 @atoi(i8* %388) #7
  store i32 %389, i32* @mandated_owl_distrust_depth, align 4
  br label %504

390:                                              ; preds = %63
  %391 = load i8*, i8** @gg_optarg, align 8
  %392 = call i32 @atoi(i8* %391) #7
  store i32 %392, i32* @mandated_owl_branch_depth, align 4
  br label %504

393:                                              ; preds = %63
  %394 = load i8*, i8** @gg_optarg, align 8
  %395 = call i32 @atoi(i8* %394) #7
  store i32 %395, i32* @mandated_owl_reading_depth, align 4
  br label %504

396:                                              ; preds = %63
  %397 = load i8*, i8** @gg_optarg, align 8
  %398 = call i32 @atoi(i8* %397) #7
  store i32 %398, i32* @mandated_owl_node_limit, align 4
  br label %504

399:                                              ; preds = %63
  store i32 0, i32* @fusekidb, align 4
  br label %504

400:                                              ; preds = %63
  store i32 1, i32* @disable_fuseki, align 4
  br label %504

401:                                              ; preds = %63
  store i32 0, i32* @josekidb, align 4
  br label %504

402:                                              ; preds = %63
  %403 = load i8*, i8** @gg_optarg, align 8
  %404 = call i32 @atoi(i8* %403) #7
  store i32 %404, i32* @level, align 4
  br label %504

405:                                              ; preds = %63
  %406 = load i8*, i8** @gg_optarg, align 8
  %407 = call i64 @strlen(i8* %406) #7
  %408 = icmp ugt i64 %407, 3
  br i1 %408, label %409, label %413

409:                                              ; preds = %405
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %411 = load i8*, i8** @gg_optarg, align 8
  %412 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %410, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* %411)
  call void @exit(i32 1) #9
  unreachable

413:                                              ; preds = %405
  %414 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %415 = load i8*, i8** @gg_optarg, align 8
  %416 = call i8* @strcpy(i8* %414, i8* %415) #8
  br label %504

417:                                              ; preds = %63
  store i32 9, i32* %10, align 4
  %418 = load i8*, i8** @gg_optarg, align 8
  %419 = call i32 @strcmp(i8* %418, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #7
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i32 1, i32* %11, align 4
  br label %440

422:                                              ; preds = %417
  %423 = load i8*, i8** @gg_optarg, align 8
  %424 = call i32 @strcmp(i8* %423, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #7
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %422
  store i32 2, i32* %11, align 4
  br label %439

427:                                              ; preds = %422
  %428 = load i8*, i8** @gg_optarg, align 8
  %429 = call i32 @strcmp(i8* %428, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0)) #7
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %427
  store i32 3, i32* %11, align 4
  br label %438

432:                                              ; preds = %427
  %433 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %434 = load i8*, i8** @gg_optarg, align 8
  %435 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %433, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), i8* %434)
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %437 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %436, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

438:                                              ; preds = %431
  br label %439

439:                                              ; preds = %438, %426
  br label %440

440:                                              ; preds = %439, %421
  br label %504

441:                                              ; preds = %63
  %442 = load i8*, i8** @gg_optarg, align 8
  store i8* %442, i8** %14, align 8
  %443 = load i32, i32* %10, align 4
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %446

445:                                              ; preds = %441
  store i32 6, i32* %10, align 4
  br label %446

446:                                              ; preds = %445, %441
  br label %504

447:                                              ; preds = %63
  store i32 7, i32* %10, align 4
  %448 = load i8*, i8** @gg_optarg, align 8
  store i8* %448, i8** %18, align 8
  br label %504

449:                                              ; preds = %63
  %450 = load i8*, i8** @gg_optarg, align 8
  %451 = call i32 @strcmp(i8* %450, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i64 0, i64 0)) #7
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %449
  store i32 1, i32* %9, align 4
  br label %466

454:                                              ; preds = %449
  %455 = load i8*, i8** @gg_optarg, align 8
  %456 = call i32 @strcmp(i8* %455, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0)) #7
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %454
  store i32 2, i32* %9, align 4
  br label %465

459:                                              ; preds = %454
  %460 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %461 = load i8*, i8** @gg_optarg, align 8
  %462 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %460, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i8* %461)
  %463 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %464 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %463, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

465:                                              ; preds = %458
  br label %466

466:                                              ; preds = %465, %453
  br label %504

467:                                              ; preds = %63
  call void @show_copyright()
  store i32 0, i32* %3, align 4
  br label %941

468:                                              ; preds = %63
  store i32 1, i32* @play_mirror_go, align 4
  br label %504

469:                                              ; preds = %63
  %470 = load i8*, i8** @gg_optarg, align 8
  %471 = call i32 @atoi(i8* %470) #7
  store i32 %471, i32* @mirror_stones_limit, align 4
  br label %504

472:                                              ; preds = %63
  call void @show_version()
  store i32 0, i32* %3, align 4
  br label %941

473:                                              ; preds = %63
  call void @show_version()
  %474 = load i8*, i8** @gg_optarg, align 8
  %475 = icmp ne i8* %474, null
  br i1 %475, label %476, label %482

476:                                              ; preds = %473
  %477 = load i8*, i8** @gg_optarg, align 8
  %478 = call i32 @strncmp(i8* %477, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 5) #7
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %480, label %481

480:                                              ; preds = %476
  call void @show_debug_help()
  br label %481

481:                                              ; preds = %480, %476
  br label %498

482:                                              ; preds = %473
  %483 = load i32, i32* @gg_optind, align 4
  %484 = load i32, i32* %4, align 4
  %485 = icmp slt i32 %483, %484
  br i1 %485, label %486, label %496

486:                                              ; preds = %482
  %487 = load i8**, i8*** %5, align 8
  %488 = load i32, i32* @gg_optind, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i8*, i8** %487, i64 %489
  %491 = load i8*, i8** %490, align 8
  %492 = call i32 @strncmp(i8* %491, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i64 5) #7
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %494, label %495

494:                                              ; preds = %486
  call void @show_debug_help()
  br label %495

495:                                              ; preds = %494, %486
  br label %497

496:                                              ; preds = %482
  call void @show_help()
  br label %497

497:                                              ; preds = %496, %495
  br label %498

498:                                              ; preds = %497, %481
  store i32 0, i32* %3, align 4
  br label %941

499:                                              ; preds = %63
  call void @show_debug_flags()
  store i32 0, i32* %3, align 4
  br label %941

500:                                              ; preds = %63
  br label %501

501:                                              ; preds = %63, %500
  %502 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %503 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %502, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

504:                                              ; preds = %469, %468, %466, %447, %446, %440, %413, %402, %401, %400, %399, %396, %393, %390, %387, %381, %378, %375, %371, %362, %358, %349, %348, %328, %305, %293, %284, %261, %252, %228, %227, %226, %225, %224, %223, %220, %219, %218, %217, %216, %215, %214, %213, %201, %184, %169, %168, %158, %157, %141, %140, %139, %112, %110, %107, %104, %101, %100, %96, %93, %86, %82, %81, %80, %77, %74, %72, %71, %68, %65
  br label %58, !llvm.loop !6

505:                                              ; preds = %58
  %506 = load i32, i32* %10, align 4
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %514

508:                                              ; preds = %505
  %509 = load i8*, i8** %12, align 8
  %510 = icmp ne i8* %509, null
  br i1 %510, label %511, label %512

511:                                              ; preds = %508
  store i32 5, i32* %10, align 4
  br label %513

512:                                              ; preds = %508
  store i32 3, i32* %10, align 4
  br label %513

513:                                              ; preds = %512, %511
  br label %514

514:                                              ; preds = %513, %505
  %515 = load i32, i32* @quiet, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %523, label %517

517:                                              ; preds = %514
  %518 = load i32, i32* %10, align 4
  %519 = icmp ne i32 %518, 3
  br i1 %519, label %520, label %523

520:                                              ; preds = %517
  %521 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %522 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %521, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0))
  call void @show_version()
  call void @show_copyright()
  br label %523

523:                                              ; preds = %520, %517, %514
  %524 = load i32, i32* %26, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %527, label %526

526:                                              ; preds = %523
  store i32 1, i32* %26, align 4
  br label %527

527:                                              ; preds = %526, %523
  %528 = load i32, i32* %26, align 4
  call void @gg_srand(i32 %528)
  %529 = load i32, i32* %26, align 4
  store i32 %529, i32* @random_seed, align 4
  call void @init_gnugo()
  %530 = load i8*, i8** %12, align 8
  %531 = icmp ne i8* %530, null
  br i1 %531, label %532, label %544

532:                                              ; preds = %527
  %533 = load i8*, i8** %12, align 8
  %534 = call i32 @sgftree_readfile(%struct.SGFTree_t* %7, i8* %533)
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %540, label %536

536:                                              ; preds = %532
  %537 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %538 = load i8*, i8** %12, align 8
  %539 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %537, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i64 0, i64 0), i8* %538)
  call void @exit(i32 1) #9
  unreachable

540:                                              ; preds = %532
  %541 = load i8*, i8** %13, align 8
  %542 = load i32, i32* %25, align 4
  %543 = call i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo* %6, %struct.SGFTree_t* %7, i8* %541, i32 %542)
  br label %547

544:                                              ; preds = %527
  %545 = load i32, i32* @board_size, align 4
  %546 = load float, float* @komi, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* %7, i32 %545, float %546)
  br label %547

547:                                              ; preds = %544, %540
  %548 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 2
  %549 = bitcast %struct.SGFTree_t* %548 to i8*
  %550 = bitcast %struct.SGFTree_t* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %549, i8* align 8 %550, i64 16, i1 false)
  %551 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %552 = load i8, i8* %551, align 1
  %553 = icmp ne i8 %552, 0
  br i1 %553, label %554, label %560

554:                                              ; preds = %547
  %555 = load i32, i32* @board_size, align 4
  %556 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i64 0, i64 0
  %557 = call i32 @string_to_location(i32 %555, i8* %556, i32* %29, i32* %30)
  %558 = load i32, i32* %29, align 4
  %559 = load i32, i32* %30, align 4
  call void @debug_influence_move(i32 %558, i32 %559)
  br label %560

560:                                              ; preds = %554, %547
  %561 = load i8*, i8** %15, align 8
  %562 = icmp ne i8* %561, null
  br i1 %562, label %563, label %578

563:                                              ; preds = %560
  %564 = load i32, i32* %10, align 4
  %565 = icmp ne i32 %564, 7
  br i1 %565, label %566, label %578

566:                                              ; preds = %563
  %567 = load i8*, i8** %15, align 8
  %568 = call %struct._IO_FILE* @fopen(i8* %567, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i64 0, i64 0))
  store %struct._IO_FILE* %568, %struct._IO_FILE** %24, align 8
  %569 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %570 = icmp ne %struct._IO_FILE* %569, null
  br i1 %570, label %575, label %571

571:                                              ; preds = %566
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %573 = load i8*, i8** %15, align 8
  %574 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %572, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0), i8* %573)
  call void @exit(i32 1) #9
  unreachable

575:                                              ; preds = %566
  %576 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %577 = call i32 @fclose(%struct._IO_FILE* %576)
  br label %578

578:                                              ; preds = %575, %563, %560
  %579 = load i32, i32* %10, align 4
  switch i32 %579, label %930 [
    i32 8, label %580
    i32 9, label %582
    i32 5, label %590
    i32 6, label %603
    i32 7, label %617
    i32 10, label %634
    i32 11, label %658
    i32 12, label %699
    i32 13, label %723
    i32 14, label %747
    i32 15, label %788
    i32 16, label %829
    i32 17, label %844
    i32 18, label %868
    i32 19, label %883
    i32 3, label %901
    i32 2, label %919
    i32 1, label %929
  ]

580:                                              ; preds = %578
  %581 = load i32, i32* %22, align 4
  call void @play_solo(%struct.Gameinfo* %6, i32 %581)
  br label %940

582:                                              ; preds = %578
  %583 = load i8*, i8** %12, align 8
  %584 = icmp ne i8* %583, null
  br i1 %584, label %588, label %585

585:                                              ; preds = %582
  %586 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %587 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %586, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

588:                                              ; preds = %582
  %589 = load i32, i32* %11, align 4
  call void @play_replay(%struct.Gameinfo* %6, i32 %589)
  br label %940

590:                                              ; preds = %578
  %591 = load i32, i32* %9, align 4
  %592 = icmp ne i32 %591, 0
  br i1 %592, label %593, label %596

593:                                              ; preds = %590
  %594 = load i32, i32* %9, align 4
  %595 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 1
  store i32 %594, i32* %595, align 4
  br label %596

596:                                              ; preds = %593, %590
  %597 = load i8*, i8** %12, align 8
  %598 = icmp ne i8* %597, null
  br i1 %598, label %602, label %599

599:                                              ; preds = %596
  %600 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %601 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %600, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.30, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

602:                                              ; preds = %596
  call void @load_and_analyze_sgf_file(%struct.Gameinfo* %6)
  br label %940

603:                                              ; preds = %578
  %604 = load i32, i32* %9, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %606, label %609

606:                                              ; preds = %603
  %607 = load i32, i32* %9, align 4
  %608 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 1
  store i32 %607, i32* %608, align 4
  br label %609

609:                                              ; preds = %606, %603
  %610 = load i8*, i8** %12, align 8
  %611 = icmp ne i8* %610, null
  br i1 %611, label %615, label %612

612:                                              ; preds = %609
  %613 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %614 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %613, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

615:                                              ; preds = %609
  %616 = load i8*, i8** %14, align 8
  call void @load_and_score_sgf_file(%struct.SGFTree_t* %7, %struct.Gameinfo* %6, i8* %616)
  br label %940

617:                                              ; preds = %578
  %618 = load i8*, i8** %12, align 8
  %619 = icmp ne i8* %618, null
  br i1 %619, label %623, label %620

620:                                              ; preds = %617
  %621 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %622 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %621, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.32, i64 0, i64 0))
  call void @exit(i32 1) #9
  unreachable

623:                                              ; preds = %617
  %624 = load i32, i32* %9, align 4
  %625 = icmp ne i32 %624, 0
  br i1 %625, label %626, label %629

626:                                              ; preds = %623
  %627 = load i32, i32* %9, align 4
  %628 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 1
  store i32 %627, i32* %628, align 4
  br label %629

629:                                              ; preds = %626, %623
  %630 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 1
  %631 = load i32, i32* %630, align 4
  %632 = load i8*, i8** %18, align 8
  call void @sgffile_printsgf(i32 %631, i8* %632)
  br label %633

633:                                              ; preds = %629
  br label %940

634:                                              ; preds = %578
  %635 = load i8*, i8** %12, align 8
  %636 = icmp ne i8* %635, null
  br i1 %636, label %640, label %637

637:                                              ; preds = %634
  %638 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %639 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %638, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.33, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

640:                                              ; preds = %634
  %641 = load i32, i32* @board_size, align 4
  %642 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %643 = call i32 @string_to_location(i32 %641, i8* %642, i32* %31, i32* %32)
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %648, label %645

645:                                              ; preds = %640
  %646 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %647 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %646, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.34, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

648:                                              ; preds = %640
  %649 = load i32, i32* %31, align 4
  %650 = load i32, i32* %32, align 4
  %651 = load i32, i32* @board_size, align 4
  %652 = load i32, i32* %25, align 4
  call void @rotate(i32 %649, i32 %650, i32* %31, i32* %32, i32 %651, i32 %652)
  %653 = load i32, i32* %31, align 4
  %654 = mul nsw i32 %653, 20
  %655 = add nsw i32 21, %654
  %656 = load i32, i32* %32, align 4
  %657 = add nsw i32 %655, %656
  call void @decide_string(i32 %657)
  br label %940

658:                                              ; preds = %578
  %659 = load i8*, i8** %12, align 8
  %660 = icmp ne i8* %659, null
  br i1 %660, label %664, label %661

661:                                              ; preds = %658
  %662 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %663 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %662, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.35, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

664:                                              ; preds = %658
  %665 = load i32, i32* @board_size, align 4
  %666 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %667 = call i32 @string_to_location(i32 %665, i8* %666, i32* %33, i32* %34)
  %668 = icmp ne i32 %667, 0
  br i1 %668, label %672, label %669

669:                                              ; preds = %664
  %670 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %671 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %670, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

672:                                              ; preds = %664
  %673 = load i32, i32* @board_size, align 4
  %674 = load i8*, i8** %20, align 8
  %675 = call i32 @string_to_location(i32 %673, i8* %674, i32* %35, i32* %36)
  %676 = icmp ne i32 %675, 0
  br i1 %676, label %680, label %677

677:                                              ; preds = %672
  %678 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %679 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %678, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

680:                                              ; preds = %672
  %681 = load i32, i32* %33, align 4
  %682 = load i32, i32* %34, align 4
  %683 = load i32, i32* @board_size, align 4
  %684 = load i32, i32* %25, align 4
  call void @rotate(i32 %681, i32 %682, i32* %33, i32* %34, i32 %683, i32 %684)
  %685 = load i32, i32* %35, align 4
  %686 = load i32, i32* %36, align 4
  %687 = load i32, i32* @board_size, align 4
  %688 = load i32, i32* %25, align 4
  call void @rotate(i32 %685, i32 %686, i32* %35, i32* %36, i32 %687, i32 %688)
  %689 = load i32, i32* %33, align 4
  %690 = mul nsw i32 %689, 20
  %691 = add nsw i32 21, %690
  %692 = load i32, i32* %34, align 4
  %693 = add nsw i32 %691, %692
  %694 = load i32, i32* %35, align 4
  %695 = mul nsw i32 %694, 20
  %696 = add nsw i32 21, %695
  %697 = load i32, i32* %36, align 4
  %698 = add nsw i32 %696, %697
  call void @decide_connection(i32 %693, i32 %698)
  br label %940

699:                                              ; preds = %578
  %700 = load i8*, i8** %12, align 8
  %701 = icmp ne i8* %700, null
  br i1 %701, label %705, label %702

702:                                              ; preds = %699
  %703 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %704 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %703, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.36, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

705:                                              ; preds = %699
  %706 = load i32, i32* @board_size, align 4
  %707 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %708 = call i32 @string_to_location(i32 %706, i8* %707, i32* %37, i32* %38)
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %713, label %710

710:                                              ; preds = %705
  %711 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %712 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %711, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.37, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

713:                                              ; preds = %705
  %714 = load i32, i32* %37, align 4
  %715 = load i32, i32* %38, align 4
  %716 = load i32, i32* @board_size, align 4
  %717 = load i32, i32* %25, align 4
  call void @rotate(i32 %714, i32 %715, i32* %37, i32* %38, i32 %716, i32 %717)
  %718 = load i32, i32* %37, align 4
  %719 = mul nsw i32 %718, 20
  %720 = add nsw i32 21, %719
  %721 = load i32, i32* %38, align 4
  %722 = add nsw i32 %720, %721
  call void @decide_owl(i32 %722)
  br label %940

723:                                              ; preds = %578
  %724 = load i8*, i8** %12, align 8
  %725 = icmp ne i8* %724, null
  br i1 %725, label %729, label %726

726:                                              ; preds = %723
  %727 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %728 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %727, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.38, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

729:                                              ; preds = %723
  %730 = load i32, i32* @board_size, align 4
  %731 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %732 = call i32 @string_to_location(i32 %730, i8* %731, i32* %39, i32* %40)
  %733 = icmp ne i32 %732, 0
  br i1 %733, label %737, label %734

734:                                              ; preds = %729
  %735 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %736 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %735, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.39, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

737:                                              ; preds = %729
  %738 = load i32, i32* %39, align 4
  %739 = load i32, i32* %40, align 4
  %740 = load i32, i32* @board_size, align 4
  %741 = load i32, i32* %25, align 4
  call void @rotate(i32 %738, i32 %739, i32* %39, i32* %40, i32 %740, i32 %741)
  %742 = load i32, i32* %39, align 4
  %743 = mul nsw i32 %742, 20
  %744 = add nsw i32 21, %743
  %745 = load i32, i32* %40, align 4
  %746 = add nsw i32 %744, %745
  call void @decide_dragon_data(i32 %746)
  br label %940

747:                                              ; preds = %578
  %748 = load i8*, i8** %12, align 8
  %749 = icmp ne i8* %748, null
  br i1 %749, label %753, label %750

750:                                              ; preds = %747
  %751 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %752 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %751, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

753:                                              ; preds = %747
  %754 = load i32, i32* @board_size, align 4
  %755 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %756 = call i32 @string_to_location(i32 %754, i8* %755, i32* %41, i32* %42)
  %757 = icmp ne i32 %756, 0
  br i1 %757, label %761, label %758

758:                                              ; preds = %753
  %759 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %760 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %759, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

761:                                              ; preds = %753
  %762 = load i32, i32* @board_size, align 4
  %763 = load i8*, i8** %20, align 8
  %764 = call i32 @string_to_location(i32 %762, i8* %763, i32* %43, i32* %44)
  %765 = icmp ne i32 %764, 0
  br i1 %765, label %769, label %766

766:                                              ; preds = %761
  %767 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %768 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %767, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

769:                                              ; preds = %761
  %770 = load i32, i32* %41, align 4
  %771 = load i32, i32* %42, align 4
  %772 = load i32, i32* @board_size, align 4
  %773 = load i32, i32* %25, align 4
  call void @rotate(i32 %770, i32 %771, i32* %41, i32* %42, i32 %772, i32 %773)
  %774 = load i32, i32* %43, align 4
  %775 = load i32, i32* %44, align 4
  %776 = load i32, i32* @board_size, align 4
  %777 = load i32, i32* %25, align 4
  call void @rotate(i32 %774, i32 %775, i32* %43, i32* %44, i32 %776, i32 %777)
  %778 = load i32, i32* %41, align 4
  %779 = mul nsw i32 %778, 20
  %780 = add nsw i32 21, %779
  %781 = load i32, i32* %42, align 4
  %782 = add nsw i32 %780, %781
  %783 = load i32, i32* %43, align 4
  %784 = mul nsw i32 %783, 20
  %785 = add nsw i32 21, %784
  %786 = load i32, i32* %44, align 4
  %787 = add nsw i32 %785, %786
  call void @decide_semeai(i32 %782, i32 %787)
  br label %940

788:                                              ; preds = %578
  %789 = load i8*, i8** %12, align 8
  %790 = icmp ne i8* %789, null
  br i1 %790, label %794, label %791

791:                                              ; preds = %788
  %792 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %793 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %792, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.41, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

794:                                              ; preds = %788
  %795 = load i32, i32* @board_size, align 4
  %796 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %797 = call i32 @string_to_location(i32 %795, i8* %796, i32* %45, i32* %46)
  %798 = icmp ne i32 %797, 0
  br i1 %798, label %802, label %799

799:                                              ; preds = %794
  %800 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %801 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %800, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

802:                                              ; preds = %794
  %803 = load i32, i32* @board_size, align 4
  %804 = load i8*, i8** %20, align 8
  %805 = call i32 @string_to_location(i32 %803, i8* %804, i32* %47, i32* %48)
  %806 = icmp ne i32 %805, 0
  br i1 %806, label %810, label %807

807:                                              ; preds = %802
  %808 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %809 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %808, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

810:                                              ; preds = %802
  %811 = load i32, i32* %45, align 4
  %812 = load i32, i32* %46, align 4
  %813 = load i32, i32* @board_size, align 4
  %814 = load i32, i32* %25, align 4
  call void @rotate(i32 %811, i32 %812, i32* %45, i32* %46, i32 %813, i32 %814)
  %815 = load i32, i32* %47, align 4
  %816 = load i32, i32* %48, align 4
  %817 = load i32, i32* @board_size, align 4
  %818 = load i32, i32* %25, align 4
  call void @rotate(i32 %815, i32 %816, i32* %47, i32* %48, i32 %817, i32 %818)
  %819 = load i32, i32* %45, align 4
  %820 = mul nsw i32 %819, 20
  %821 = add nsw i32 21, %820
  %822 = load i32, i32* %46, align 4
  %823 = add nsw i32 %821, %822
  %824 = load i32, i32* %47, align 4
  %825 = mul nsw i32 %824, 20
  %826 = add nsw i32 21, %825
  %827 = load i32, i32* %48, align 4
  %828 = add nsw i32 %826, %827
  call void @decide_tactical_semeai(i32 %823, i32 %828)
  br label %940

829:                                              ; preds = %578
  %830 = load i8*, i8** %12, align 8
  %831 = icmp ne i8* %830, null
  br i1 %831, label %835, label %832

832:                                              ; preds = %829
  %833 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %834 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %833, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.42, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

835:                                              ; preds = %829
  %836 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 1
  %837 = load i32, i32* %836, align 4
  store i32 %837, i32* %49, align 4
  %838 = load i32, i32* %9, align 4
  %839 = icmp ne i32 %838, 0
  br i1 %839, label %840, label %842

840:                                              ; preds = %835
  %841 = load i32, i32* %9, align 4
  store i32 %841, i32* %49, align 4
  br label %842

842:                                              ; preds = %840, %835
  %843 = load i32, i32* %49, align 4
  call void @decide_position(i32 %843)
  br label %940

844:                                              ; preds = %578
  %845 = load i8*, i8** %12, align 8
  %846 = icmp ne i8* %845, null
  br i1 %846, label %850, label %847

847:                                              ; preds = %844
  %848 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %849 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %848, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

850:                                              ; preds = %844
  %851 = load i32, i32* @board_size, align 4
  %852 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %853 = call i32 @string_to_location(i32 %851, i8* %852, i32* %50, i32* %51)
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %858, label %855

855:                                              ; preds = %850
  %856 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %857 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %856, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.44, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

858:                                              ; preds = %850
  %859 = load i32, i32* %50, align 4
  %860 = load i32, i32* %51, align 4
  %861 = load i32, i32* @board_size, align 4
  %862 = load i32, i32* %25, align 4
  call void @rotate(i32 %859, i32 %860, i32* %50, i32* %51, i32 %861, i32 %862)
  %863 = load i32, i32* %50, align 4
  %864 = mul nsw i32 %863, 20
  %865 = add nsw i32 21, %864
  %866 = load i32, i32* %51, align 4
  %867 = add nsw i32 %865, %866
  call void @decide_eye(i32 %867)
  br label %940

868:                                              ; preds = %578
  %869 = load i8*, i8** %12, align 8
  %870 = icmp ne i8* %869, null
  br i1 %870, label %874, label %871

871:                                              ; preds = %868
  %872 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %873 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %872, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.45, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

874:                                              ; preds = %868
  %875 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 1
  %876 = load i32, i32* %875, align 4
  store i32 %876, i32* %52, align 4
  %877 = load i32, i32* %9, align 4
  %878 = icmp ne i32 %877, 0
  br i1 %878, label %879, label %881

879:                                              ; preds = %874
  %880 = load i32, i32* %9, align 4
  store i32 %880, i32* %52, align 4
  br label %881

881:                                              ; preds = %879, %874
  %882 = load i32, i32* %52, align 4
  call void @decide_combination(i32 %882)
  br label %940

883:                                              ; preds = %578
  %884 = load i32, i32* @board_size, align 4
  %885 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 0
  %886 = call i32 @string_to_location(i32 %884, i8* %885, i32* %53, i32* %54)
  %887 = icmp ne i32 %886, 0
  br i1 %887, label %891, label %888

888:                                              ; preds = %883
  %889 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %890 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %889, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %941

891:                                              ; preds = %883
  %892 = load i32, i32* %53, align 4
  %893 = load i32, i32* %54, align 4
  %894 = load i32, i32* @board_size, align 4
  %895 = load i32, i32* %25, align 4
  call void @rotate(i32 %892, i32 %893, i32* %53, i32* %54, i32 %894, i32 %895)
  %896 = load i32, i32* %53, align 4
  %897 = mul nsw i32 %896, 20
  %898 = add nsw i32 21, %897
  %899 = load i32, i32* %54, align 4
  %900 = add nsw i32 %898, %899
  call void @decide_surrounded(i32 %900)
  br label %940

901:                                              ; preds = %578
  %902 = load i8*, i8** %17, align 8
  %903 = icmp ne i8* %902, null
  br i1 %903, label %904, label %914

904:                                              ; preds = %901
  %905 = load i8*, i8** %17, align 8
  %906 = call %struct._IO_FILE* @fopen(i8* %905, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.47, i64 0, i64 0))
  store %struct._IO_FILE* %906, %struct._IO_FILE** %23, align 8
  %907 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %908 = icmp eq %struct._IO_FILE* %907, null
  br i1 %908, label %909, label %913

909:                                              ; preds = %904
  %910 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %911 = load i8*, i8** %17, align 8
  %912 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %910, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0), i8* %911)
  store i32 1, i32* %3, align 4
  br label %941

913:                                              ; preds = %904
  br label %916

914:                                              ; preds = %901
  %915 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %915, %struct._IO_FILE** %23, align 8
  br label %916

916:                                              ; preds = %914, %913
  %917 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %918 = load i32, i32* %25, align 4
  call void @play_gtp(%struct._IO_FILE* %917, i32 %918)
  br label %940

919:                                              ; preds = %578
  %920 = load i32, i32* %9, align 4
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %926

922:                                              ; preds = %919
  %923 = load i32, i32* %9, align 4
  %924 = sub nsw i32 3, %923
  %925 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 3
  store i32 %924, i32* %925, align 8
  br label %926

926:                                              ; preds = %922, %919
  %927 = load i8*, i8** %12, align 8
  %928 = load i8*, i8** %13, align 8
  call void @play_ascii_emacs(%struct.SGFTree_t* %7, %struct.Gameinfo* %6, i8* %927, i8* %928)
  br label %940

929:                                              ; preds = %578
  br label %930

930:                                              ; preds = %578, %929
  %931 = load i32, i32* %9, align 4
  %932 = icmp ne i32 %931, 0
  br i1 %932, label %933, label %937

933:                                              ; preds = %930
  %934 = load i32, i32* %9, align 4
  %935 = sub nsw i32 3, %934
  %936 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %6, i32 0, i32 3
  store i32 %935, i32* %936, align 8
  br label %937

937:                                              ; preds = %933, %930
  %938 = load i8*, i8** %12, align 8
  %939 = load i8*, i8** %13, align 8
  call void @play_ascii(%struct.SGFTree_t* %7, %struct.Gameinfo* %6, i8* %938, i8* %939)
  br label %940

940:                                              ; preds = %937, %926, %916, %891, %881, %858, %842, %810, %769, %737, %713, %680, %648, %633, %615, %602, %588, %580
  store i32 0, i32* %3, align 4
  br label %941

941:                                              ; preds = %940, %909, %888, %871, %855, %847, %832, %807, %799, %791, %766, %758, %750, %734, %726, %710, %702, %677, %669, %661, %645, %637, %499, %498, %472, %467, %345, %333, %325, %313, %281, %269, %161
  %942 = load i32, i32* %3, align 4
  ret i32 %942
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @sgftree_clear(%struct.SGFTree_t*) #2

declare dso_local void @gameinfo_clear(%struct.Gameinfo*, i32, float) #2

declare dso_local i32 @gg_getopt_long(i32, i8**, i8*, %struct.gg_option*, i32*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #3

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #4

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

declare dso_local void @gnugo_clear_board(i32) #2

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_copyright() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 @fputs(i8* getelementptr inbounds ([817 x i8], [817 x i8]* @.str.136, i64 0, i64 0), %struct._IO_FILE* %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_version() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.131, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_debug_help() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([2489 x i8], [2489 x i8]* @.str.134, i64 0, i64 0))
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_help() #0 {
  call void @set_depth_values(i32 10)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i32, i32* @depth, align 4
  %3 = load i32, i32* @backfill_depth, align 4
  %4 = load i32, i32* @fourlib_depth, align 4
  %5 = load i32, i32* @ko_depth, align 4
  %6 = load i32, i32* @branch_depth, align 4
  %7 = load i32, i32* @backfill2_depth, align 4
  %8 = load i32, i32* @superstring_depth, align 4
  %9 = load i32, i32* @aa_depth, align 4
  %10 = load i32, i32* @owl_distrust_depth, align 4
  %11 = load i32, i32* @owl_branch_depth, align 4
  %12 = load i32, i32* @owl_reading_depth, align 4
  %13 = load i32, i32* @owl_node_limit, align 4
  %14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([1519 x i8], [1519 x i8]* @.str.132, i64 0, i64 0), i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 10)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([1138 x i8], [1138 x i8]* @.str.133, i64 0, i64 0), i32 5, i32 19, i32 9)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_debug_flags() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([857 x i8], [857 x i8]* @.str.135, i64 0, i64 0))
  ret void
}

declare dso_local void @gg_srand(i32) #2

declare dso_local void @init_gnugo() #2

declare dso_local i32 @sgftree_readfile(%struct.SGFTree_t*, i8*) #2

declare dso_local i32 @gameinfo_play_sgftree_rot(%struct.Gameinfo*, %struct.SGFTree_t*, i8*, i32) #2

declare dso_local void @sgftreeCreateHeaderNode(%struct.SGFTree_t*, i32, float) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare dso_local i32 @string_to_location(i32, i8*, i32*, i32*) #2

declare dso_local void @debug_influence_move(i32, i32) #2

declare dso_local %struct._IO_FILE* @fopen(i8*, i8*) #2

declare dso_local i32 @fclose(%struct._IO_FILE*) #2

declare dso_local void @play_solo(%struct.Gameinfo*, i32) #2

declare dso_local void @play_replay(%struct.Gameinfo*, i32) #2

declare dso_local void @load_and_analyze_sgf_file(%struct.Gameinfo*) #2

declare dso_local void @load_and_score_sgf_file(%struct.SGFTree_t*, %struct.Gameinfo*, i8*) #2

declare dso_local void @sgffile_printsgf(i32, i8*) #2

declare dso_local void @rotate(i32, i32, i32*, i32*, i32, i32) #2

declare dso_local void @decide_string(i32) #2

declare dso_local void @decide_connection(i32, i32) #2

declare dso_local void @decide_owl(i32) #2

declare dso_local void @decide_dragon_data(i32) #2

declare dso_local void @decide_semeai(i32, i32) #2

declare dso_local void @decide_tactical_semeai(i32, i32) #2

declare dso_local void @decide_position(i32) #2

declare dso_local void @decide_eye(i32) #2

declare dso_local void @decide_combination(i32) #2

declare dso_local void @decide_surrounded(i32) #2

declare dso_local void @play_gtp(%struct._IO_FILE*, i32) #2

declare dso_local void @play_ascii_emacs(%struct.SGFTree_t*, %struct.Gameinfo*, i8*, i8*) #2

declare dso_local void @play_ascii(%struct.SGFTree_t*, %struct.Gameinfo*, i8*, i8*) #2

declare dso_local void @set_depth_values(i32) #2

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
