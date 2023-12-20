; ModuleID = 'play_ascii.c'
source_filename = "play_ascii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.SGFTree_t = type { %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFNode_t = type { %struct.SGFProperty_t*, %struct.SGFNode_t*, %struct.SGFNode_t*, %struct.SGFNode_t* }
%struct.SGFProperty_t = type { %struct.SGFProperty_t*, i16, i8* }
%struct.Gameinfo = type { i32, i32, %struct.SGFTree_t, i32 }

@stdout = external dso_local global %struct._IO_FILE*, align 8
@sgftree = internal global %struct.SGFTree_t zeroinitializer, align 8
@sgf_initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"SZ\00", align 1
@current_score_estimate = internal global i32 4711, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"\0ABeginning ASCII mode game.\0A\0A\00", align 1
@opt_showboard = internal global i32 1, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s(%d): \00", align 1
@movenum = external dso_local global i32, align 4
@stdin = external dso_local global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"\0AThanks! for playing GNU Go.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"\0AGNU Go wins by resignation.\00", align 1
@.str.6 = private unnamed_addr constant [307 x i8] c"capture <pos>    try to capture indicated group\0Adead             Toggle display of dead stones\0Adefend <pos>     try to defend indicated group\0Alistdragons      print dragon info \0Ashowarea         display area\0Ashowdragons      display dragons\0Ashowmoyo         display moyo\0Ashowterri        display territory\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [54 x i8] c"Boardsize cannot be changed after record is started!\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\0AInvalid command syntax!\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"\0AInvalid board size: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"HA\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"Handicap cannot be changed after game is started!\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"\0AInvalid handicap: %d\0A\00", align 1
@board_size = external dso_local global i32, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"\0ASet handicap to %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"Komi cannot be modified after game record is started!\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@komi = external dso_local global float, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"\0ASet Komi to %.1f\0A\00", align 1
@mandated_depth = external dso_local global i32, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"\0ASet depth to %d\0A\00", align 1
@level = external dso_local global i32, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"\0ASet level to %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\0ASet hurry to %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Illegal forced move: %s %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"\0AInvalid number of moves specified: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"undone\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"\0ACan't undo.\0A\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"\0AEnd of game tree.\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"\0AEnter comment. Press ENTER when ready.\0A\00", align 1
@showscore = external dso_local global i32, align 4
@showdead = internal global i32 0, align 4
@.str.28 = private unnamed_addr constant [2 x i8] c" \00", align 1
@printmoyo = external dso_local global i32, align 4
@.str.29 = private unnamed_addr constant [24 x i8] c"You may resume the game\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c" with -l %s --mode ascii\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c"or load %s\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"Please specify filename\0A\00", align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.33 = private unnamed_addr constant [27 x i8] c"Cannot open or parse '%s'\0A\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"Please specify a filename\0A\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"\0AInvalid command: %s\00", align 1
@.str.36 = private unnamed_addr constant [51 x i8] c"\0AIf you disagree, we may count the game together.\0A\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"You may optionally save the game as an SGF file.\0A\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Type \22save <filename>\22 to save,\0A\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"     \22count\22 to recount,\0A\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"     \22quit\22 to quit\0A\00", align 1
@.str.41 = private unnamed_addr constant [27 x i8] c" or  \22game\22 to play again\0A\00", align 1
@.str.42 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.43 = private unnamed_addr constant [30 x i8] c"\0AThanks for playing GNU Go.\0A\0A\00", align 1
@emacs = internal global i32 0, align 4
@lower_bound = external dso_local global float, align 4
@upper_bound = external dso_local global float, align 4
@last_move_i = internal global i32 0, align 4
@last_move_j = internal global i32 0, align 4
@.str.44 = private unnamed_addr constant [12 x i8] c"%s(%d): %m\0A\00", align 1
@.str.45 = private unnamed_addr constant [34 x i8] c"    White has captured %d pieces\0A\00", align 1
@black_captured = external dso_local global i32, align 4
@.str.46 = private unnamed_addr constant [34 x i8] c"    Black has captured %d pieces\0A\00", align 1
@white_captured = external dso_local global i32, align 4
@.str.47 = private unnamed_addr constant [41 x i8] c"    No score estimate is available yet.\0A\00", align 1
@.str.48 = private unnamed_addr constant [43 x i8] c"    Estimated score: Black is ahead by %d\0A\00", align 1
@.str.49 = private unnamed_addr constant [43 x i8] c"    Estimated score: White is ahead by %d\0A\00", align 1
@.str.50 = private unnamed_addr constant [28 x i8] c"    Estimated score: Even!\0A\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"EMACS1\0A\00", align 1
@.str.53 = private unnamed_addr constant [5 x i8] c" %2d\00", align 1
@board = external dso_local global [421 x i8], align 16
@.str.54 = private unnamed_addr constant [4 x i8] c" %c\00", align 1
@hspots = internal global [19 x [19 x i8]] zeroinitializer, align 16
@.str.55 = private unnamed_addr constant [5 x i8] c"(%c)\00", align 1
@.str.56 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"Illegal board value %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c" %1d\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"%1d\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"%s\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@hspot_size = internal global i32 0, align 4
@.str.63 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"playblack\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"playwhite\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"showboard\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"showdragons\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"listdragons\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"boardsize\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"freehandicap\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"handicap\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"helpdebug\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"resign\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"showmoyo\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"showterri\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"showarea\00", align 1
@.str.78 = private unnamed_addr constant [6 x i8] c"depth\00", align 1
@.str.79 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"komi\00", align 1
@.str.81 = private unnamed_addr constant [5 x i8] c"play\00", align 1
@.str.82 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"hurry\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.86 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.87 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.88 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.90 = private unnamed_addr constant [5 x i8] c"move\00", align 1
@.str.91 = private unnamed_addr constant [5 x i8] c"undo\00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"dead\00", align 1
@.str.95 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.96 = private unnamed_addr constant [7 x i8] c"defend\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.98 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.100 = private unnamed_addr constant [5 x i8] c"back\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"forward\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"last\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"goto\00", align 1
@.str.104 = private unnamed_addr constant [5 x i8] c"game\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.106 = private unnamed_addr constant [12 x i8] c"\0ACommands:\0A\00", align 1
@.str.107 = private unnamed_addr constant [47 x i8] c" back                Take back your last move\0A\00", align 1
@.str.108 = private unnamed_addr constant [53 x i8] c" boardsize           Set boardsize (on move 1 only)\0A\00", align 1
@.str.109 = private unnamed_addr constant [52 x i8] c" comment             Write a comment to outputfile\0A\00", align 1
@.str.110 = private unnamed_addr constant [44 x i8] c" depth <num>         Set depth for reading\0A\00", align 1
@.str.111 = private unnamed_addr constant [41 x i8] c" display             Display game board\0A\00", align 1
@.str.112 = private unnamed_addr constant [34 x i8] c" exit                Exit GNU Go\0A\00", align 1
@.str.113 = private unnamed_addr constant [53 x i8] c" force <move>        Force a move for current color\0A\00", align 1
@.str.114 = private unnamed_addr constant [51 x i8] c" forward             Go to next node in game tree\0A\00", align 1
@.str.115 = private unnamed_addr constant [49 x i8] c" goto <movenum>      Go to movenum in game tree\0A\00", align 1
@.str.116 = private unnamed_addr constant [51 x i8] c" level <amount>      Playing level (default = 10)\0A\00", align 1
@.str.117 = private unnamed_addr constant [58 x i8] c" handicap <num>      Set fixed handicap (on move 1 only)\0A\00", align 1
@.str.118 = private unnamed_addr constant [59 x i8] c" freehandicap <num>  Place free handicap (on move 1 only)\0A\00", align 1
@.str.119 = private unnamed_addr constant [60 x i8] c"                     Omit <num> to place handicap yourself\0A\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c" help                Display this help menu\0A\00", align 1
@.str.121 = private unnamed_addr constant [46 x i8] c" helpdebug           Display debug help menu\0A\00", align 1
@.str.122 = private unnamed_addr constant [47 x i8] c" info                Display program settings\0A\00", align 1
@.str.123 = private unnamed_addr constant [48 x i8] c" komi                Set komi (on move 1 only)\0A\00", align 1
@.str.124 = private unnamed_addr constant [50 x i8] c" last                Goto last node in game tree\0A\00", align 1
@.str.125 = private unnamed_addr constant [40 x i8] c" pass                Pass on your move\0A\00", align 1
@.str.126 = private unnamed_addr constant [39 x i8] c" play <num>          Play <num> moves\0A\00", align 1
@.str.127 = private unnamed_addr constant [54 x i8] c" playblack           Play as Black (switch if White)\0A\00", align 1
@.str.128 = private unnamed_addr constant [54 x i8] c" playwhite           Play as White (switch if Black)\0A\00", align 1
@.str.129 = private unnamed_addr constant [34 x i8] c" quit                Exit GNU Go\0A\00", align 1
@.str.130 = private unnamed_addr constant [46 x i8] c" resign              Resign the current game\0A\00", align 1
@.str.131 = private unnamed_addr constant [44 x i8] c" save <file>         Save the current game\0A\00", align 1
@.str.132 = private unnamed_addr constant [44 x i8] c" load <file>         Load a game from file\0A\00", align 1
@.str.133 = private unnamed_addr constant [53 x i8] c" score               Toggle display of score On/Off\0A\00", align 1
@.str.134 = private unnamed_addr constant [53 x i8] c" showboard           Toggle display of board On/Off\0A\00", align 1
@.str.135 = private unnamed_addr constant [55 x i8] c" switch              Switch the color you are playing\0A\00", align 1
@.str.136 = private unnamed_addr constant [61 x i8] c" undo                Take the last move back (same as back)\0A\00", align 1
@.str.137 = private unnamed_addr constant [59 x i8] c" <move>              A move of the format <letter><number>\00", align 1
@.str.138 = private unnamed_addr constant [19 x i8] c"\0AInvalid move: %s\0A\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"\0AIllegal move: %s\00", align 1
@verbose = external dso_local global i32, align 4
@.str.140 = private unnamed_addr constant [17 x i8] c"\0Ayour move: %m\0A\0A\00", align 1
@.str.141 = private unnamed_addr constant [23 x i8] c"GNU Go is thinking...\0A\00", align 1
@.str.142 = private unnamed_addr constant [7 x i8] c"forced\00", align 1
@random_seed = external dso_local global i32, align 4
@chinese_rules = external dso_local global i32, align 4
@.str.143 = private unnamed_addr constant [27 x i8] c"\0AGame over. Let's count!.\0A\00", align 1
@.str.144 = private unnamed_addr constant [50 x i8] c"Dead stones are marked with small letters (x,o).\0A\00", align 1
@.str.145 = private unnamed_addr constant [52 x i8] c"\0AIf you don't agree, enter the location of a group\0A\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"to toggle its state or \22done\22.\0A\00", align 1
@.str.147 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@.str.148 = private unnamed_addr constant [6 x i8] c"xyzzy\00", align 1
@.str.149 = private unnamed_addr constant [64 x i8] c"\0AYou are in a debris room filled with stuff washed in from the\0A\00", align 1
@.str.150 = private unnamed_addr constant [59 x i8] c"surface.  A low wide passage with cobbles becomes plugged\0A\00", align 1
@.str.151 = private unnamed_addr constant [55 x i8] c"with mud and debris here, but an awkward canyon leads\0A\00", align 1
@.str.152 = private unnamed_addr constant [44 x i8] c"upward and west.  A note on the wall says:\0A\00", align 1
@.str.153 = private unnamed_addr constant [24 x i8] c"   Magic Word \22XYZZY\22\0A\0A\00", align 1
@.str.154 = private unnamed_addr constant [62 x i8] c"You are inside a building, a well house for a large spring.\0A\0A\00", align 1
@.str.155 = private unnamed_addr constant [60 x i8] c"\0AIf there are dead stones on the board I will remove them.\0A\00", align 1
@.str.156 = private unnamed_addr constant [60 x i8] c"You must tell me where they are. Type the coordinates of a\0A\00", align 1
@.str.157 = private unnamed_addr constant [28 x i8] c"dead group, or type \22done\22\0A\00", align 1
@.str.158 = private unnamed_addr constant [56 x i8] c"UNDO not allowed anymore. The status of the stones now\0A\00", align 1
@.str.159 = private unnamed_addr constant [44 x i8] c"toggles after entering the location of it.\0A\00", align 1
@.str.160 = private unnamed_addr constant [11 x i8] c"\0Ainvalid!\0A\00", align 1
@.str.161 = private unnamed_addr constant [17 x i8] c"\0Ainvalid point!\0A\00", align 1
@.str.162 = private unnamed_addr constant [33 x i8] c"\0ASuccessfull attack of %m at %m\0A\00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c"\0A%m cannot be attacked\0A\00", align 1
@.str.164 = private unnamed_addr constant [34 x i8] c"\0ASuccessfull defense of %m at %m\0A\00", align 1
@.str.165 = private unnamed_addr constant [24 x i8] c"\0A%m cannot be defended\0A\00", align 1
@.str.166 = private unnamed_addr constant [32 x i8] c"\0AThere is no need to defend %m\0A\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"9999\00", align 1
@.str.168 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.170 = private unnamed_addr constant [9 x i8] c"goto %s\0A\00", align 1
@.str.171 = private unnamed_addr constant [37 x i8] c"\0APlaced %d stones of free handicap.\0A\00", align 1
@.str.172 = private unnamed_addr constant [80 x i8] c"\0AType in coordinates of next handicap stone, or one of the following commands:\0A\00", align 1
@.str.173 = private unnamed_addr constant [47 x i8] c"  undo        take back the last stone placed\0A\00", align 1
@.str.174 = private unnamed_addr constant [51 x i8] c"  clear       remove all the stones placed so far\0A\00", align 1
@.str.175 = private unnamed_addr constant [40 x i8] c"  done        finish placing handicap\0A\0A\00", align 1
@.str.176 = private unnamed_addr constant [47 x i8] c"You have placed %d handicap stone(s) so far.\0A\0A\00", align 1
@.str.177 = private unnamed_addr constant [19 x i8] c"\0ANothing to undo.\0A\00", align 1
@.str.178 = private unnamed_addr constant [27 x i8] c"\0ARemoved the stone at %m.\0A\00", align 1
@.str.179 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@.str.180 = private unnamed_addr constant [80 x i8] c"\0AHandicap cannot be one stone. Either add some more, or delete the only stone.\0A\00", align 1
@.str.181 = private unnamed_addr constant [33 x i8] c"\0AThere's already a stone there.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_ascii(%struct.SGFTree_t* %0, %struct.Gameinfo* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca %struct.Gameinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [80 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %5, align 8
  store %struct.Gameinfo* %1, %struct.Gameinfo** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %13, align 4
  %20 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  store i8* %20, i8** %16, align 8
  store i32 1, i32* %19, align 4
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @setbuf(%struct._IO_FILE* %21, i8* null) #8
  %22 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %23 = bitcast %struct.SGFTree_t* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.SGFTree_t* @sgftree to i8*), i8* align 8 %23, i64 16, i1 false)
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %28 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  call void @gameinfo_load_sgfheader(%struct.Gameinfo* %27, %struct.SGFNode_t* %28)
  %29 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = call i32 @gameinfo_play_sgftree(%struct.Gameinfo* %29, %struct.SGFTree_t* @sgftree, i8* %30)
  %32 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %33 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  store i32 1, i32* @sgf_initialized, align 4
  br label %58

34:                                               ; preds = %4
  %35 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %36 = call i32 @sgfGetIntProperty(%struct.SGFNode_t* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %11)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  call void @gnugo_clear_board(i32 %39)
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %42 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %47 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %46, i32 0, i32 1
  store i32 2, i32* %47, align 4
  br label %57

48:                                               ; preds = %40
  %49 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %50 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @gnugo_placehand(i32 %51)
  %53 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %54 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %56 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %48, %45
  store i32 0, i32* @sgf_initialized, align 4
  br label %58

58:                                               ; preds = %57, %26
  br label %59

59:                                               ; preds = %610, %58
  %60 = load i32, i32* %19, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %617

62:                                               ; preds = %59
  store i32 4711, i32* @current_score_estimate, align 4
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @gameinfo_print(%struct.Gameinfo* %64)
  %65 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %66 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %69 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @computer_move(%struct.Gameinfo* %73, i32* %13)
  br label %74

74:                                               ; preds = %72, %62
  br label %75

75:                                               ; preds = %552, %74
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %553

78:                                               ; preds = %75
  %79 = load i32, i32* @opt_showboard, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  call void @ascii_showboard()
  br label %82

82:                                               ; preds = %81, %78
  %83 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %84 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @color_to_string(i32 %85)
  %87 = load i32, i32* @movenum, align 4
  %88 = add nsw i32 %87, 1
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 %88)
  %89 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  store i8* %89, i8** %16, align 8
  %90 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %92 = call i8* @fgets(i8* %90, i32 80, %struct._IO_FILE* %91)
  %93 = icmp ne i8* %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %82
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %619

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %551, %96
  %98 = load i8*, i8** %16, align 8
  %99 = call i8* @strtok(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #8
  store i8* %99, i8** %17, align 8
  store i8* null, i8** %16, align 8
  %100 = load i8*, i8** %17, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %102, label %552

102:                                              ; preds = %97
  %103 = load i8*, i8** %17, align 8
  %104 = call i32 @get_command(i8* %103)
  switch i32 %104, label %548 [
    i32 3, label %105
    i32 0, label %114
    i32 1, label %114
    i32 2, label %114
    i32 18, label %116
    i32 28, label %117
    i32 17, label %119
    i32 15, label %124
    i32 12, label %127
    i32 11, label %164
    i32 41, label %204
    i32 13, label %228
    i32 14, label %246
    i32 38, label %258
    i32 37, label %270
    i32 16, label %284
    i32 6, label %289
    i32 5, label %305
    i32 4, label %308
    i32 8, label %310
    i32 9, label %346
    i32 10, label %365
    i32 7, label %384
    i32 19, label %392
    i32 23, label %392
    i32 24, label %406
    i32 25, label %420
    i32 20, label %433
    i32 21, label %439
    i32 22, label %448
    i32 26, label %453
    i32 27, label %457
    i32 30, label %461
    i32 31, label %467
    i32 29, label %473
    i32 35, label %479
    i32 32, label %483
    i32 33, label %488
    i32 34, label %512
    i32 36, label %543
    i32 40, label %547
    i32 39, label %547
    i32 -1, label %547
  ]

105:                                              ; preds = %102
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %107 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %108 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 1
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, double -1.000000e+03, double 1.000000e+03
  %113 = fptrunc double %112 to float
  call void @sgftreeWriteResult(%struct.SGFTree_t* @sgftree, float %113, i32 1)
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  br label %114

114:                                              ; preds = %102, %102, %102, %105
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %619

116:                                              ; preds = %102
  call void @show_commands()
  br label %551

117:                                              ; preds = %102
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([307 x i8], [307 x i8]* @.str.6, i64 0, i64 0))
  br label %551

119:                                              ; preds = %102
  %120 = load i32, i32* @opt_showboard, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  store i32 %123, i32* @opt_showboard, align 4
  br label %551

124:                                              ; preds = %102
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %126 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @gameinfo_print(%struct.Gameinfo* %126)
  br label %551

127:                                              ; preds = %102
  %128 = load i32, i32* @sgf_initialized, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.8, i64 0, i64 0))
  br label %551

132:                                              ; preds = %127
  %133 = load i8*, i8** %17, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 10
  store i8* %134, i8** %17, align 8
  %135 = load i8*, i8** %17, align 8
  %136 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %135, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %10) #8
  %137 = icmp ne i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %551

140:                                              ; preds = %132
  %141 = load i32, i32* %10, align 4
  %142 = icmp slt i32 %141, 5
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %10, align 4
  %145 = icmp sgt i32 %144, 19
  br i1 %145, label %146, label %149

146:                                              ; preds = %143, %140
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i32 %147)
  br label %551

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  call void @gnugo_clear_board(i32 %151)
  %152 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %153 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @gnugo_placehand(i32 %154)
  %156 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %157 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  %158 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %159 = load i32, i32* %11, align 4
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %159)
  %160 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %161 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %162 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %163)
  br label %551

164:                                              ; preds = %102
  %165 = load i32, i32* @sgf_initialized, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  br label %551

169:                                              ; preds = %164
  %170 = load i8*, i8** %17, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 9
  store i8* %171, i8** %17, align 8
  %172 = load i8*, i8** %17, align 8
  %173 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %172, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %10) #8
  %174 = icmp ne i32 %173, 1
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %551

177:                                              ; preds = %169
  %178 = load i32, i32* %10, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %10, align 4
  %182 = icmp sgt i32 %181, 9
  br i1 %182, label %183, label %186

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %10, align 4
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %184)
  br label %551

186:                                              ; preds = %180
  %187 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %187)
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @gnugo_placehand(i32 %188)
  %190 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %191 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %193 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0), i32 %194)
  %196 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %197 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 1, i32 2
  %202 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %203 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  br label %551

204:                                              ; preds = %102
  %205 = load i32, i32* @sgf_initialized, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.13, i64 0, i64 0))
  br label %551

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %222, %209
  %211 = load i8*, i8** %17, align 8
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %210
  %216 = load i8*, i8** %17, align 8
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  %219 = icmp ne i32 %218, 32
  br label %220

220:                                              ; preds = %215, %210
  %221 = phi i1 [ false, %210 ], [ %219, %215 ]
  br i1 %221, label %222, label %225

222:                                              ; preds = %220
  %223 = load i8*, i8** %17, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %17, align 8
  br label %210, !llvm.loop !4

225:                                              ; preds = %220
  %226 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %227 = load i8*, i8** %17, align 8
  call void @ascii_free_handicap(%struct.Gameinfo* %226, i8* %227)
  br label %551

228:                                              ; preds = %102
  %229 = load i32, i32* @sgf_initialized, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %228
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  br label %551

233:                                              ; preds = %228
  %234 = load i8*, i8** %17, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 5
  store i8* %235, i8** %17, align 8
  %236 = load i8*, i8** %17, align 8
  %237 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0), float* %12) #8
  %238 = icmp ne i32 %237, 1
  br i1 %238, label %239, label %241

239:                                              ; preds = %233
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %551

241:                                              ; preds = %233
  %242 = load float, float* %12, align 4
  store float %242, float* @komi, align 4
  %243 = load float, float* @komi, align 4
  %244 = fpext float %243 to double
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), double %244)
  br label %551

246:                                              ; preds = %102
  %247 = load i8*, i8** %17, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 6
  store i8* %248, i8** %17, align 8
  %249 = load i8*, i8** %17, align 8
  %250 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %249, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %10) #8
  %251 = icmp ne i32 %250, 1
  br i1 %251, label %252, label %254

252:                                              ; preds = %246
  %253 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %551

254:                                              ; preds = %246
  %255 = load i32, i32* %10, align 4
  store i32 %255, i32* @mandated_depth, align 4
  %256 = load i32, i32* @mandated_depth, align 4
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %256)
  br label %551

258:                                              ; preds = %102
  %259 = load i8*, i8** %17, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 6
  store i8* %260, i8** %17, align 8
  %261 = load i8*, i8** %17, align 8
  %262 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %261, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %10) #8
  %263 = icmp ne i32 %262, 1
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %551

266:                                              ; preds = %258
  %267 = load i32, i32* %10, align 4
  store i32 %267, i32* @level, align 4
  %268 = load i32, i32* @level, align 4
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %268)
  br label %551

270:                                              ; preds = %102
  %271 = load i8*, i8** %17, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 6
  store i8* %272, i8** %17, align 8
  %273 = load i8*, i8** %17, align 8
  %274 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %273, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %10) #8
  %275 = icmp ne i32 %274, 1
  br i1 %275, label %276, label %278

276:                                              ; preds = %270
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %551

278:                                              ; preds = %270
  %279 = load i32, i32* %10, align 4
  %280 = sub nsw i32 10, %279
  store i32 %280, i32* @level, align 4
  %281 = load i32, i32* @level, align 4
  %282 = sub nsw i32 10, %281
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %282)
  br label %551

284:                                              ; preds = %102
  %285 = load i32, i32* @opt_showboard, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %284
  call void @ascii_showboard()
  br label %288

288:                                              ; preds = %287, %284
  br label %551

289:                                              ; preds = %102
  %290 = load i8*, i8** %17, align 8
  %291 = getelementptr inbounds i8, i8* %290, i64 6
  store i8* %291, i8** %17, align 8
  %292 = load i8*, i8** %17, align 8
  %293 = call i32 @get_command(i8* %292)
  switch i32 %293, label %299 [
    i32 5, label %294
    i32 4, label %297
  ]

294:                                              ; preds = %289
  %295 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %296 = load i8*, i8** %17, align 8
  call void @do_move(%struct.Gameinfo* %295, i8* %296, i32* %13, i32 1)
  br label %304

297:                                              ; preds = %289
  %298 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @do_pass(%struct.Gameinfo* %298, i32* %13, i32 1)
  br label %304

299:                                              ; preds = %289
  %300 = load i8*, i8** %17, align 8
  %301 = load i8*, i8** %17, align 8
  %302 = call i32 @get_command(i8* %301)
  %303 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i8* %300, i32 %302)
  br label %304

304:                                              ; preds = %299, %297, %294
  br label %551

305:                                              ; preds = %102
  %306 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %307 = load i8*, i8** %17, align 8
  call void @do_move(%struct.Gameinfo* %306, i8* %307, i32* %13, i32 0)
  br label %551

308:                                              ; preds = %102
  %309 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @do_pass(%struct.Gameinfo* %309, i32* %13, i32 0)
  br label %551

310:                                              ; preds = %102
  %311 = load i8*, i8** %17, align 8
  %312 = getelementptr inbounds i8, i8* %311, i64 5
  store i8* %312, i8** %17, align 8
  %313 = load i8*, i8** %17, align 8
  %314 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %313, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %10) #8
  %315 = icmp ne i32 %314, 1
  br i1 %315, label %316, label %318

316:                                              ; preds = %310
  %317 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %551

318:                                              ; preds = %310
  %319 = load i32, i32* %10, align 4
  %320 = icmp sge i32 %319, 0
  br i1 %320, label %321, label %342

321:                                              ; preds = %318
  store i32 0, i32* %9, align 4
  br label %322

322:                                              ; preds = %338, %321
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* %10, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %341

326:                                              ; preds = %322
  %327 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %328 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = sub nsw i32 3, %329
  %331 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %332 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 8
  %333 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @computer_move(%struct.Gameinfo* %333, i32* %13)
  %334 = load i32, i32* %13, align 4
  %335 = icmp sge i32 %334, 2
  br i1 %335, label %336, label %337

336:                                              ; preds = %326
  br label %341

337:                                              ; preds = %326
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %9, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %9, align 4
  br label %322, !llvm.loop !6

341:                                              ; preds = %336, %322
  br label %345

342:                                              ; preds = %318
  %343 = load i32, i32* %10, align 4
  %344 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i32 %343)
  br label %551

345:                                              ; preds = %341
  br label %551

346:                                              ; preds = %102
  %347 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %348 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 8
  %350 = icmp eq i32 %349, 1
  br i1 %350, label %351, label %354

351:                                              ; preds = %346
  %352 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %353 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %352, i32 0, i32 3
  store i32 2, i32* %353, align 8
  br label %354

354:                                              ; preds = %351, %346
  %355 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %356 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %359 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = icmp eq i32 %357, %360
  br i1 %361, label %362, label %364

362:                                              ; preds = %354
  %363 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @computer_move(%struct.Gameinfo* %363, i32* %13)
  br label %364

364:                                              ; preds = %362, %354
  br label %551

365:                                              ; preds = %102
  %366 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %367 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = icmp eq i32 %368, 2
  br i1 %369, label %370, label %373

370:                                              ; preds = %365
  %371 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %372 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %371, i32 0, i32 3
  store i32 1, i32* %372, align 8
  br label %373

373:                                              ; preds = %370, %365
  %374 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %375 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %378 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = icmp eq i32 %376, %379
  br i1 %380, label %381, label %383

381:                                              ; preds = %373
  %382 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @computer_move(%struct.Gameinfo* %382, i32* %13)
  br label %383

383:                                              ; preds = %381, %373
  br label %551

384:                                              ; preds = %102
  %385 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %386 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = sub nsw i32 3, %387
  %389 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %390 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %389, i32 0, i32 3
  store i32 %388, i32* %390, align 8
  %391 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @computer_move(%struct.Gameinfo* %391, i32* %13)
  br label %551

392:                                              ; preds = %102, %102
  %393 = call i32 @gnugo_undo_move(i32 1)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %403

395:                                              ; preds = %392
  call void @sgftreeAddComment(%struct.SGFTree_t* @sgftree, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  %396 = call i32 @sgftreeBack(%struct.SGFTree_t* @sgftree)
  %397 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %398 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %397, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = sub nsw i32 3, %399
  %401 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %402 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %401, i32 0, i32 1
  store i32 %400, i32* %402, align 4
  br label %405

403:                                              ; preds = %392
  %404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  br label %405

405:                                              ; preds = %403, %395
  br label %551

406:                                              ; preds = %102
  %407 = call i32 @sgftreeForward(%struct.SGFTree_t* @sgftree)
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %417

409:                                              ; preds = %406
  %410 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  %411 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %412 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %411, i32 0, i32 1
  %413 = load i32, i32* %412, align 4
  %414 = call i32 @gnugo_play_sgfnode(%struct.SGFNode_t* %410, i32 %413)
  %415 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %416 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %415, i32 0, i32 1
  store i32 %414, i32* %416, align 4
  br label %419

417:                                              ; preds = %406
  %418 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i64 0, i64 0))
  br label %419

419:                                              ; preds = %417, %409
  br label %551

420:                                              ; preds = %102
  br label %421

421:                                              ; preds = %424, %420
  %422 = call i32 @sgftreeForward(%struct.SGFTree_t* @sgftree)
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %432

424:                                              ; preds = %421
  %425 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  %426 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %427 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @gnugo_play_sgfnode(%struct.SGFNode_t* %425, i32 %428)
  %430 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %431 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %430, i32 0, i32 1
  store i32 %429, i32* %431, align 4
  br label %421, !llvm.loop !7

432:                                              ; preds = %421
  br label %551

433:                                              ; preds = %102
  %434 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.27, i64 0, i64 0))
  %435 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %437 = call i8* @fgets(i8* %435, i32 80, %struct._IO_FILE* %436)
  %438 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  call void @sgftreeAddComment(%struct.SGFTree_t* @sgftree, i8* %438)
  br label %551

439:                                              ; preds = %102
  %440 = load i32, i32* @showscore, align 4
  %441 = icmp ne i32 %440, 0
  %442 = xor i1 %441, true
  %443 = zext i1 %442 to i32
  store i32 %443, i32* @showscore, align 4
  %444 = load i32, i32* @showscore, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %447, label %446

446:                                              ; preds = %439
  store i32 4711, i32* @current_score_estimate, align 4
  br label %447

447:                                              ; preds = %446, %439
  br label %551

448:                                              ; preds = %102
  %449 = load i32, i32* @showdead, align 4
  %450 = icmp ne i32 %449, 0
  %451 = xor i1 %450, true
  %452 = zext i1 %451 to i32
  store i32 %452, i32* @showdead, align 4
  br label %551

453:                                              ; preds = %102
  %454 = load i8*, i8** %17, align 8
  %455 = call i8* @strtok(i8* %454, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  %456 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  call void @showcapture(i8* %456)
  br label %551

457:                                              ; preds = %102
  %458 = load i8*, i8** %17, align 8
  %459 = call i8* @strtok(i8* %458, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  %460 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  call void @showdefense(i8* %460)
  br label %551

461:                                              ; preds = %102
  %462 = load i32, i32* @printmoyo, align 4
  store i32 %462, i32* %14, align 4
  store i32 2, i32* @printmoyo, align 4
  %463 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %464 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  call void @examine_position(i32 %465, i32 4)
  call void @print_moyo()
  %466 = load i32, i32* %14, align 4
  store i32 %466, i32* @printmoyo, align 4
  br label %551

467:                                              ; preds = %102
  %468 = load i32, i32* @printmoyo, align 4
  store i32 %468, i32* %14, align 4
  store i32 1, i32* @printmoyo, align 4
  %469 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %470 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  call void @examine_position(i32 %471, i32 4)
  call void @print_moyo()
  %472 = load i32, i32* %14, align 4
  store i32 %472, i32* @printmoyo, align 4
  br label %551

473:                                              ; preds = %102
  %474 = load i32, i32* @printmoyo, align 4
  store i32 %474, i32* %14, align 4
  store i32 4, i32* @printmoyo, align 4
  %475 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %476 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  call void @examine_position(i32 %477, i32 4)
  call void @print_moyo()
  %478 = load i32, i32* %14, align 4
  store i32 %478, i32* @printmoyo, align 4
  br label %551

479:                                              ; preds = %102
  %480 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %481 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  call void @examine_position(i32 %482, i32 4)
  call void @showboard(i32 1)
  br label %551

483:                                              ; preds = %102
  %484 = load i8*, i8** %17, align 8
  %485 = call i8* @strtok(i8* %484, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  %486 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %487 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  call void @ascii_goto(%struct.Gameinfo* %486, i8* %487)
  br label %551

488:                                              ; preds = %102
  %489 = load i8*, i8** %17, align 8
  %490 = call i8* @strtok(i8* %489, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  %491 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  store i8* %491, i8** %18, align 8
  %492 = load i8*, i8** %18, align 8
  %493 = icmp ne i8* %492, null
  br i1 %493, label %494, label %509

494:                                              ; preds = %488
  %495 = load i8*, i8** %18, align 8
  %496 = load i8*, i8** %18, align 8
  %497 = call i64 @strlen(i8* %496) #9
  %498 = sub i64 %497, 1
  %499 = getelementptr inbounds i8, i8* %495, i64 %498
  store i8 0, i8* %499, align 1
  %500 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @init_sgf(%struct.Gameinfo* %500)
  %501 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %502 = load i8*, i8** %18, align 8
  %503 = call i32 @writesgf(%struct.SGFNode_t* %501, i8* %502)
  %504 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i64 0, i64 0))
  %505 = load i8*, i8** %18, align 8
  %506 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.30, i64 0, i64 0), i8* %505)
  %507 = load i8*, i8** %18, align 8
  %508 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* %507)
  br label %511

509:                                              ; preds = %488
  %510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  br label %511

511:                                              ; preds = %509, %494
  br label %551

512:                                              ; preds = %102
  %513 = load i8*, i8** %17, align 8
  %514 = call i8* @strtok(i8* %513, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  %515 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  store i8* %515, i8** %18, align 8
  %516 = load i8*, i8** %18, align 8
  %517 = icmp ne i8* %516, null
  br i1 %517, label %518, label %540

518:                                              ; preds = %512
  %519 = load i8*, i8** %18, align 8
  %520 = load i8*, i8** %18, align 8
  %521 = call i64 @strlen(i8* %520) #9
  %522 = sub i64 %521, 1
  %523 = getelementptr inbounds i8, i8* %519, i64 %522
  store i8 0, i8* %523, align 1
  %524 = load i8*, i8** %18, align 8
  %525 = call i32 @sgftree_readfile(%struct.SGFTree_t* @sgftree, i8* %524)
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %531, label %527

527:                                              ; preds = %518
  %528 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %529 = load i8*, i8** %18, align 8
  %530 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %528, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i64 0, i64 0), i8* %529)
  br label %551

531:                                              ; preds = %518
  store i32 1, i32* @sgf_initialized, align 4
  %532 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %533 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  call void @gameinfo_load_sgfheader(%struct.Gameinfo* %532, %struct.SGFNode_t* %533)
  %534 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %535 = call i32 @gameinfo_play_sgftree(%struct.Gameinfo* %534, %struct.SGFTree_t* @sgftree, i8* null)
  %536 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %537 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %538 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 8
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %536, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %539)
  br label %542

540:                                              ; preds = %512
  %541 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0))
  br label %542

542:                                              ; preds = %540, %531
  br label %551

543:                                              ; preds = %102
  %544 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %545 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  call void @examine_position(i32 %546, i32 4)
  call void @show_dragons()
  br label %551

547:                                              ; preds = %102, %102, %102
  br label %548

548:                                              ; preds = %102, %547
  %549 = load i8*, i8** %17, align 8
  %550 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* %549)
  br label %551

551:                                              ; preds = %548, %543, %542, %527, %511, %483, %479, %473, %467, %461, %457, %453, %448, %447, %433, %432, %419, %405, %384, %383, %364, %345, %342, %316, %308, %305, %304, %288, %278, %276, %266, %264, %254, %252, %241, %239, %231, %225, %207, %186, %183, %175, %167, %149, %146, %138, %130, %124, %119, %117, %116
  br label %97, !llvm.loop !8

552:                                              ; preds = %97
  br label %75, !llvm.loop !9

553:                                              ; preds = %75
  %554 = load i32, i32* %13, align 4
  %555 = icmp sge i32 %554, 2
  br i1 %555, label %556, label %561

556:                                              ; preds = %553
  %557 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %558 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %557, i32 0, i32 3
  %559 = load i32, i32* %558, align 8
  %560 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @gnugo_who_wins(i32 %559, %struct._IO_FILE* %560)
  br label %561

561:                                              ; preds = %556, %553
  %562 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.36, i64 0, i64 0))
  %563 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.37, i64 0, i64 0))
  %564 = call float @estimate_score(float* null, float* null)
  call void @sgftreeWriteResult(%struct.SGFTree_t* @sgftree, float %564, i32 1)
  store i32 0, i32* %19, align 4
  br label %565

565:                                              ; preds = %609, %561
  %566 = load i32, i32* %19, align 4
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %568, label %610

568:                                              ; preds = %565
  %569 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %570 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.38, i64 0, i64 0))
  %571 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i64 0, i64 0))
  %572 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.40, i64 0, i64 0))
  %573 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.41, i64 0, i64 0))
  %574 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  store i8* %574, i8** %16, align 8
  %575 = getelementptr inbounds [80 x i8], [80 x i8]* %15, i64 0, i64 0
  %576 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %577 = call i8* @fgets(i8* %575, i32 80, %struct._IO_FILE* %576)
  %578 = icmp ne i8* %577, null
  br i1 %578, label %580, label %579

579:                                              ; preds = %568
  br label %610

580:                                              ; preds = %568
  %581 = load i8*, i8** %16, align 8
  %582 = call i8* @strtok(i8* %581, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i64 0, i64 0)) #8
  store i8* %582, i8** %17, align 8
  %583 = load i8*, i8** %17, align 8
  %584 = call i32 @get_command(i8* %583)
  switch i32 %584, label %608 [
    i32 33, label %585
    i32 39, label %604
    i32 40, label %605
    i32 2, label %607
  ]

585:                                              ; preds = %580
  %586 = load i8*, i8** %17, align 8
  %587 = call i8* @strtok(i8* %586, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  %588 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  store i8* %588, i8** %18, align 8
  %589 = load i8*, i8** %18, align 8
  %590 = icmp ne i8* %589, null
  br i1 %590, label %591, label %601

591:                                              ; preds = %585
  %592 = load i8*, i8** %18, align 8
  %593 = load i8*, i8** %18, align 8
  %594 = call i64 @strlen(i8* %593) #9
  %595 = sub i64 %594, 1
  %596 = getelementptr inbounds i8, i8* %592, i64 %595
  store i8 0, i8* %596, align 1
  %597 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @init_sgf(%struct.Gameinfo* %597)
  %598 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %599 = load i8*, i8** %18, align 8
  %600 = call i32 @writesgf(%struct.SGFNode_t* %598, i8* %599)
  br label %603

601:                                              ; preds = %585
  %602 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0))
  br label %603

603:                                              ; preds = %601, %591
  br label %609

604:                                              ; preds = %580
  store i32 1, i32* %19, align 4
  br label %609

605:                                              ; preds = %580
  %606 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  call void @endgame(%struct.Gameinfo* %606)
  br label %609

607:                                              ; preds = %580
  store i32 2, i32* %19, align 4
  br label %609

608:                                              ; preds = %580
  store i32 0, i32* %19, align 4
  br label %609

609:                                              ; preds = %608, %607, %605, %604, %603
  br label %565, !llvm.loop !10

610:                                              ; preds = %579, %565
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  store i32 0, i32* %13, align 4
  call void @update_random_seed()
  %611 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  call void @sgfFreeNode(%struct.SGFNode_t* %611)
  call void @sgftree_clear(%struct.SGFTree_t* @sgftree)
  %612 = load i32, i32* @board_size, align 4
  %613 = load float, float* @komi, align 4
  call void @sgftreeCreateHeaderNode(%struct.SGFTree_t* @sgftree, i32 %612, float %613)
  store i32 0, i32* @sgf_initialized, align 4
  %614 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %615 = load i32, i32* @board_size, align 4
  %616 = load float, float* @komi, align 4
  call void @gameinfo_clear(%struct.Gameinfo* %614, i32 %615, float %616)
  br label %59, !llvm.loop !11

617:                                              ; preds = %59
  %618 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.43, i64 0, i64 0))
  br label %619

619:                                              ; preds = %617, %114, %94
  ret void
}

; Function Attrs: nounwind
declare dso_local void @setbuf(%struct._IO_FILE*, i8*) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @gameinfo_load_sgfheader(%struct.Gameinfo*, %struct.SGFNode_t*) #3

declare dso_local i32 @gameinfo_play_sgftree(%struct.Gameinfo*, %struct.SGFTree_t*, i8*) #3

declare dso_local i32 @sgfGetIntProperty(%struct.SGFNode_t*, i8*, i32*) #3

declare dso_local void @gnugo_clear_board(i32) #3

declare dso_local i32 @gnugo_placehand(i32) #3

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local void @gameinfo_print(%struct.Gameinfo*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @computer_move(%struct.Gameinfo* %0, i32* %1) #0 {
  %3 = alloca %struct.Gameinfo*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  call void @init_sgf(%struct.Gameinfo* %8)
  %9 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %10 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gnugo_genmove(i32* %5, i32* %6, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @showscore, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = call float @gnugo_estimate_score(float* @lower_bound, float* @upper_bound)
  %17 = load float, float* @lower_bound, align 4
  %18 = load float, float* @upper_bound, align 4
  %19 = fadd float %17, %18
  %20 = fpext float %19 to double
  %21 = fdiv double %20, 2.000000e+00
  %22 = fptosi double %21 to i32
  store i32 %22, i32* @current_score_estimate, align 4
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* @last_move_i, align 4
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* @last_move_j, align 4
  %26 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %27 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @color_to_string(i32 %28)
  %30 = load i32, i32* @movenum, align 4
  %31 = add nsw i32 %30, 1
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i64 0, i64 0), i8* %29, i32 %31, i32 %32, i32 %33)
  %34 = load i32, i32* %5, align 4
  %35 = mul nsw i32 %34, 20
  %36 = add nsw i32 21, %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @is_pass(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %23
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %47

45:                                               ; preds = %23
  %46 = load i32*, i32** %4, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %51 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  call void @gnugo_play_move(i32 %48, i32 %49, i32 %52)
  %53 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  %54 = load i32, i32* %7, align 4
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %53, i32 %54)
  %55 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %56 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* @sgftree, i32 %57, i32 %58, i32 %59)
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  %60 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %61 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 3, %62
  %64 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %65 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ascii_showboard() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @board_size, align 4
  %8 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  call void @make_letterbar(i32 %7, i8* %8)
  %9 = load i32, i32* @board_size, align 4
  call void @set_handicap_spots(i32 %9)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %11 = load i32, i32* @black_captured, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.45, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @white_captured, align 4
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.46, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @showscore, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %0
  %18 = load i32, i32* @current_score_estimate, align 4
  %19 = icmp eq i32 %18, 4711
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.47, i64 0, i64 0))
  br label %39

22:                                               ; preds = %17
  %23 = load i32, i32* @current_score_estimate, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* @current_score_estimate, align 4
  %27 = sub nsw i32 0, %26
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.48, i64 0, i64 0), i32 %27)
  br label %38

29:                                               ; preds = %22
  %30 = load i32, i32* @current_score_estimate, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* @current_score_estimate, align 4
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.49, i64 0, i64 0), i32 %33)
  br label %37

35:                                               ; preds = %29
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.50, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %32
  br label %38

38:                                               ; preds = %37, %25
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %39, %0
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %43 = call i32 @fflush(%struct._IO_FILE* %42)
  %44 = load i32, i32* @emacs, align 4
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.52, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.42, i64 0, i64 0)
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %51 = call i32 @fflush(%struct._IO_FILE* %50)
  store i32 0, i32* %1, align 4
  br label %52

52:                                               ; preds = %199, %40
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @board_size, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %202

56:                                               ; preds = %52
  %57 = load i32, i32* @board_size, align 4
  %58 = load i32, i32* %1, align 4
  %59 = sub nsw i32 %57, %58
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i32 %59)
  store i32 0, i32* %4, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %163, %56
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @board_size, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %166

65:                                               ; preds = %61
  %66 = load i32, i32* @last_move_i, align 4
  %67 = load i32, i32* %1, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* @last_move_j, align 4
  %71 = load i32, i32* %2, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i32 128, i32* %5, align 4
  br label %75

74:                                               ; preds = %69, %65
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %73
  %76 = load i32, i32* %1, align 4
  %77 = mul nsw i32 %76, 20
  %78 = add nsw i32 21, %77
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @dragon_status(i32 %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %75
  %84 = load i32, i32* @showdead, align 4
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %83, %75
  %87 = phi i1 [ false, %75 ], [ %85, %83 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %1, align 4
  %90 = mul nsw i32 %89, 20
  %91 = add nsw i32 21, %90
  %92 = load i32, i32* %2, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %97, %98
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %99, %100
  switch i32 %101, label %150 [
    i32 128, label %102
    i32 0, label %102
    i32 2, label %112
    i32 1, label %118
    i32 130, label %124
    i32 129, label %126
    i32 256, label %128
    i32 258, label %138
    i32 257, label %144
  ]

102:                                              ; preds = %86, %86
  %103 = load i32, i32* %1, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %104
  %106 = load i32, i32* %2, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [19 x i8], [19 x i8]* %105, i64 0, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %110)
  store i32 0, i32* %4, align 4
  br label %162

112:                                              ; preds = %86
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 120, i32 88
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %116)
  store i32 0, i32* %4, align 4
  br label %162

118:                                              ; preds = %86
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i32 111, i32 79
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i32 %122)
  store i32 0, i32* %4, align 4
  br label %162

124:                                              ; preds = %86
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i32 88)
  store i32 256, i32* %4, align 4
  br label %162

126:                                              ; preds = %86
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i64 0, i64 0), i32 79)
  store i32 256, i32* %4, align 4
  br label %162

128:                                              ; preds = %86
  %129 = load i32, i32* %1, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %130
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [19 x i8], [19 x i8]* %131, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32 %136)
  store i32 0, i32* %4, align 4
  br label %162

138:                                              ; preds = %86
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 120, i32 88
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32 %142)
  store i32 0, i32* %4, align 4
  br label %162

144:                                              ; preds = %86
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 111, i32 79
  %149 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32 %148)
  store i32 0, i32* %4, align 4
  br label %162

150:                                              ; preds = %86
  %151 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %152 = load i32, i32* %1, align 4
  %153 = mul nsw i32 %152, 20
  %154 = add nsw i32 21, %153
  %155 = load i32, i32* %2, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i32 %160)
  call void @exit(i32 1) #10
  unreachable

162:                                              ; preds = %144, %138, %128, %126, %124, %118, %112, %102
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  br label %61, !llvm.loop !12

166:                                              ; preds = %61
  %167 = load i32, i32* %4, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %183

169:                                              ; preds = %166
  %170 = load i32, i32* @board_size, align 4
  %171 = icmp sgt i32 %170, 10
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* @board_size, align 4
  %174 = load i32, i32* %1, align 4
  %175 = sub nsw i32 %173, %174
  %176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i64 0, i64 0), i32 %175)
  br label %182

177:                                              ; preds = %169
  %178 = load i32, i32* @board_size, align 4
  %179 = load i32, i32* %1, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i64 0, i64 0), i32 %180)
  br label %182

182:                                              ; preds = %177, %172
  br label %197

183:                                              ; preds = %166
  %184 = load i32, i32* @board_size, align 4
  %185 = icmp sgt i32 %184, 10
  br i1 %185, label %186, label %191

186:                                              ; preds = %183
  %187 = load i32, i32* @board_size, align 4
  %188 = load i32, i32* %1, align 4
  %189 = sub nsw i32 %187, %188
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i64 0, i64 0), i32 %189)
  br label %196

191:                                              ; preds = %183
  %192 = load i32, i32* @board_size, align 4
  %193 = load i32, i32* %1, align 4
  %194 = sub nsw i32 %192, %193
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %191, %186
  br label %197

197:                                              ; preds = %196, %182
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197
  %200 = load i32, i32* %1, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %1, align 4
  br label %52, !llvm.loop !13

202:                                              ; preds = %52
  %203 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %204 = call i32 @fflush(%struct._IO_FILE* %203)
  %205 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %206 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i64 0, i64 0), i8* %205)
  %207 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %208 = call i32 @fflush(%struct._IO_FILE* %207)
  ret void
}

declare dso_local void @mprintf(i8*, ...) #3

declare dso_local i8* @color_to_string(i32) #3

declare dso_local i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_command(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i64 0, i64 0), i8* %4, i32* %5) #8
  %8 = icmp ne i32 %7, 2
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  %12 = call i32 @toupper(i32 %11) #9
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp slt i32 %14, 65
  br i1 %15, label %28, label %16

16:                                               ; preds = %9
  %17 = load i8, i8* %4, align 1
  %18 = sext i8 %17 to i32
  %19 = call i32 @toupper(i32 %18) #9
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %4, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp sgt i32 %21, 90
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load i8, i8* %4, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 73
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 5, i32* %2, align 4
  br label %256

28:                                               ; preds = %23, %16, %9, %1
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 63
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 18, i32* %2, align 4
  br label %256

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %42, %35
  %37 = load i8*, i8** %3, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %3, align 8
  br label %36, !llvm.loop !14

45:                                               ; preds = %36
  %46 = load i8*, i8** %3, align 8
  %47 = call i32 @strncmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i64 0, i64 0), i64 9) #9
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store i32 9, i32* %2, align 4
  br label %256

50:                                               ; preds = %45
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strncmp(i8* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i64 0, i64 0), i64 9) #9
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 10, i32* %2, align 4
  br label %256

55:                                               ; preds = %50
  %56 = load i8*, i8** %3, align 8
  %57 = call i32 @strncmp(i8* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i64 0, i64 0), i64 9) #9
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 17, i32* %2, align 4
  br label %256

60:                                               ; preds = %55
  %61 = load i8*, i8** %3, align 8
  %62 = call i32 @strncmp(i8* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i64 0, i64 0), i64 9) #9
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store i32 35, i32* %2, align 4
  br label %256

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @strncmp(i8* %66, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i64 9) #9
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  store i32 36, i32* %2, align 4
  br label %256

70:                                               ; preds = %65
  %71 = load i8*, i8** %3, align 8
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0), i64 9) #9
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %70
  store i32 12, i32* %2, align 4
  br label %256

75:                                               ; preds = %70
  %76 = load i8*, i8** %3, align 8
  %77 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.70, i64 0, i64 0), i64 9) #9
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %75
  store i32 41, i32* %2, align 4
  br label %256

80:                                               ; preds = %75
  %81 = load i8*, i8** %3, align 8
  %82 = call i32 @strncmp(i8* %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i64 0, i64 0), i64 5) #9
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 11, i32* %2, align 4
  br label %256

85:                                               ; preds = %80
  %86 = load i8*, i8** %3, align 8
  %87 = call i32 @strncmp(i8* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i64 0, i64 0), i64 7) #9
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 16, i32* %2, align 4
  br label %256

90:                                               ; preds = %85
  %91 = load i8*, i8** %3, align 8
  %92 = call i32 @strncmp(i8* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0), i64 7) #9
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  store i32 28, i32* %2, align 4
  br label %256

95:                                               ; preds = %90
  %96 = load i8*, i8** %3, align 8
  %97 = call i32 @strncmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), i64 6) #9
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  store i32 3, i32* %2, align 4
  br label %256

100:                                              ; preds = %95
  %101 = load i8*, i8** %3, align 8
  %102 = call i32 @strncmp(i8* %101, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i64 0, i64 0), i64 6) #9
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i32 30, i32* %2, align 4
  br label %256

105:                                              ; preds = %100
  %106 = load i8*, i8** %3, align 8
  %107 = call i32 @strncmp(i8* %106, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i64 0, i64 0), i64 6) #9
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 31, i32* %2, align 4
  br label %256

110:                                              ; preds = %105
  %111 = load i8*, i8** %3, align 8
  %112 = call i32 @strncmp(i8* %111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i64 0, i64 0), i64 6) #9
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  store i32 29, i32* %2, align 4
  br label %256

115:                                              ; preds = %110
  %116 = load i8*, i8** %3, align 8
  %117 = call i32 @strncmp(i8* %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i64 0, i64 0), i64 5) #9
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store i32 14, i32* %2, align 4
  br label %256

120:                                              ; preds = %115
  %121 = load i8*, i8** %3, align 8
  %122 = call i32 @strncmp(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.79, i64 0, i64 0), i64 5) #9
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  store i32 7, i32* %2, align 4
  br label %256

125:                                              ; preds = %120
  %126 = load i8*, i8** %3, align 8
  %127 = call i32 @strncmp(i8* %126, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i64 0, i64 0), i64 4) #9
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %125
  store i32 13, i32* %2, align 4
  br label %256

130:                                              ; preds = %125
  %131 = load i8*, i8** %3, align 8
  %132 = call i32 @strncmp(i8* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i64 0, i64 0), i64 4) #9
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store i32 8, i32* %2, align 4
  br label %256

135:                                              ; preds = %130
  %136 = load i8*, i8** %3, align 8
  %137 = call i32 @strncmp(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i64 0, i64 0), i64 4) #9
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  store i32 15, i32* %2, align 4
  br label %256

140:                                              ; preds = %135
  %141 = load i8*, i8** %3, align 8
  %142 = call i32 @strncmp(i8* %141, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i64 0, i64 0), i64 4) #9
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  store i32 6, i32* %2, align 4
  br label %256

145:                                              ; preds = %140
  %146 = load i8*, i8** %3, align 8
  %147 = call i32 @strncmp(i8* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i64 0, i64 0), i64 5) #9
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %145
  store i32 37, i32* %2, align 4
  br label %256

150:                                              ; preds = %145
  %151 = load i8*, i8** %3, align 8
  %152 = call i32 @strncmp(i8* %151, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i64 0, i64 0), i64 5) #9
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150
  store i32 38, i32* %2, align 4
  br label %256

155:                                              ; preds = %150
  %156 = load i8*, i8** %3, align 8
  %157 = call i32 @strncmp(i8* %156, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i64 0, i64 0), i64 4) #9
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  store i32 4, i32* %2, align 4
  br label %256

160:                                              ; preds = %155
  %161 = load i8*, i8** %3, align 8
  %162 = call i32 @strncmp(i8* %161, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i64 0, i64 0), i64 3) #9
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %160
  store i32 33, i32* %2, align 4
  br label %256

165:                                              ; preds = %160
  %166 = load i8*, i8** %3, align 8
  %167 = call i32 @strncmp(i8* %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i64 0, i64 0), i64 3) #9
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %165
  store i32 34, i32* %2, align 4
  br label %256

170:                                              ; preds = %165
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 @strncmp(i8* %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i64 0, i64 0), i64 3) #9
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %170
  store i32 0, i32* %2, align 4
  br label %256

175:                                              ; preds = %170
  %176 = load i8*, i8** %3, align 8
  %177 = call i32 @strncmp(i8* %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.90, i64 0, i64 0), i64 3) #9
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  store i32 5, i32* %2, align 4
  br label %256

180:                                              ; preds = %175
  %181 = load i8*, i8** %3, align 8
  %182 = call i32 @strncmp(i8* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0), i64 3) #9
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  store i32 19, i32* %2, align 4
  br label %256

185:                                              ; preds = %180
  %186 = load i8*, i8** %3, align 8
  %187 = call i32 @strncmp(i8* %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.92, i64 0, i64 0), i64 3) #9
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %185
  store i32 20, i32* %2, align 4
  br label %256

190:                                              ; preds = %185
  %191 = load i8*, i8** %3, align 8
  %192 = call i32 @strncmp(i8* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i64 3) #9
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  store i32 21, i32* %2, align 4
  br label %256

195:                                              ; preds = %190
  %196 = load i8*, i8** %3, align 8
  %197 = call i32 @strncmp(i8* %196, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0), i64 3) #9
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %195
  store i32 22, i32* %2, align 4
  br label %256

200:                                              ; preds = %195
  %201 = load i8*, i8** %3, align 8
  %202 = call i32 @strncmp(i8* %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.95, i64 0, i64 0), i64 3) #9
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  store i32 26, i32* %2, align 4
  br label %256

205:                                              ; preds = %200
  %206 = load i8*, i8** %3, align 8
  %207 = call i32 @strncmp(i8* %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.96, i64 0, i64 0), i64 3) #9
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %210, label %209

209:                                              ; preds = %205
  store i32 27, i32* %2, align 4
  br label %256

210:                                              ; preds = %205
  %211 = load i8*, i8** %3, align 8
  %212 = call i32 @strncmp(i8* %211, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i64 0, i64 0), i64 4) #9
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %210
  store i32 1, i32* %2, align 4
  br label %256

215:                                              ; preds = %210
  %216 = load i8*, i8** %3, align 8
  %217 = call i32 @strncmp(i8* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), i64 4) #9
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  store i32 2, i32* %2, align 4
  br label %256

220:                                              ; preds = %215
  %221 = load i8*, i8** %3, align 8
  %222 = call i32 @strncmp(i8* %221, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0), i64 1) #9
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %220
  store i32 18, i32* %2, align 4
  br label %256

225:                                              ; preds = %220
  %226 = load i8*, i8** %3, align 8
  %227 = call i32 @strncmp(i8* %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.100, i64 0, i64 0), i64 2) #9
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  store i32 23, i32* %2, align 4
  br label %256

230:                                              ; preds = %225
  %231 = load i8*, i8** %3, align 8
  %232 = call i32 @strncmp(i8* %231, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.101, i64 0, i64 0), i64 2) #9
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %230
  store i32 24, i32* %2, align 4
  br label %256

235:                                              ; preds = %230
  %236 = load i8*, i8** %3, align 8
  %237 = call i32 @strncmp(i8* %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0), i64 2) #9
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %240, label %239

239:                                              ; preds = %235
  store i32 25, i32* %2, align 4
  br label %256

240:                                              ; preds = %235
  %241 = load i8*, i8** %3, align 8
  %242 = call i32 @strncmp(i8* %241, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i64 0, i64 0), i64 2) #9
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  store i32 32, i32* %2, align 4
  br label %256

245:                                              ; preds = %240
  %246 = load i8*, i8** %3, align 8
  %247 = call i32 @strncmp(i8* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.104, i64 0, i64 0), i64 2) #9
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %245
  store i32 39, i32* %2, align 4
  br label %256

250:                                              ; preds = %245
  %251 = load i8*, i8** %3, align 8
  %252 = call i32 @strncmp(i8* %251, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i64 0, i64 0), i64 2) #9
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %250
  store i32 40, i32* %2, align 4
  br label %256

255:                                              ; preds = %250
  store i32 -1, i32* %2, align 4
  br label %256

256:                                              ; preds = %255, %254, %249, %244, %239, %234, %229, %224, %219, %214, %209, %204, %199, %194, %189, %184, %179, %174, %169, %164, %159, %154, %149, %144, %139, %134, %129, %124, %119, %114, %109, %104, %99, %94, %89, %84, %79, %74, %69, %64, %59, %54, %49, %34, %27
  %257 = load i32, i32* %2, align 4
  ret i32 %257
}

declare dso_local void @sgftreeWriteResult(%struct.SGFTree_t*, float, i32) #3

declare dso_local void @sgffile_output(%struct.SGFTree_t*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_commands() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i64 0, i64 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.107, i64 0, i64 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.108, i64 0, i64 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.109, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.110, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.111, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.112, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.113, i64 0, i64 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.114, i64 0, i64 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.115, i64 0, i64 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.116, i64 0, i64 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.117, i64 0, i64 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.118, i64 0, i64 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.119, i64 0, i64 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.120, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.121, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.122, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.123, i64 0, i64 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.124, i64 0, i64 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.125, i64 0, i64 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.126, i64 0, i64 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.127, i64 0, i64 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.128, i64 0, i64 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.129, i64 0, i64 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.130, i64 0, i64 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.131, i64 0, i64 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.132, i64 0, i64 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.133, i64 0, i64 0))
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.134, i64 0, i64 0))
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.135, i64 0, i64 0))
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.136, i64 0, i64 0))
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.137, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @__isoc99_sscanf(i8*, i8*, ...) #1

declare dso_local void @sgfOverwritePropertyInt(%struct.SGFNode_t*, i8*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ascii_free_handicap(%struct.Gameinfo* %0, i8* %1) #0 {
  %3 = alloca %struct.Gameinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [80 x i8], align 16
  %8 = alloca [361 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* %5) #8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %174

23:                                               ; preds = %18
  %24 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %24)
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @place_free_handicap(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.171, i64 0, i64 0), i32 %27)
  br label %164

29:                                               ; preds = %2
  %30 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %30)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %162
  call void @ascii_showboard()
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.172, i64 0, i64 0))
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.173, i64 0, i64 0))
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.174, i64 0, i64 0))
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.175, i64 0, i64 0))
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.176, i64 0, i64 0), i32 %36)
  %38 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %40 = call i8* @fgets(i8* %38, i32 80, %struct._IO_FILE* %39)
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %31
  br label %174

43:                                               ; preds = %31
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %80, %43
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 80
  br i1 %46, label %47, label %83

47:                                               ; preds = %44
  %48 = call i16** @__ctype_b_loc() #11
  %49 = load i16*, i16** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %49, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 256
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = call i32 @tolower(i32 %66) #9
  br label %74

68:                                               ; preds = %47
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  br label %74

74:                                               ; preds = %68, %61
  %75 = phi i32 [ %67, %61 ], [ %73, %68 ]
  %76 = trunc i32 %75 to i8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 %78
  store i8 %76, i8* %79, align 1
  br label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %44, !llvm.loop !15

83:                                               ; preds = %44
  %84 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %85 = call i32 @strncmp(i8* %84, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0), i64 4) #9
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %112, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.177, i64 0, i64 0))
  br label %111

92:                                               ; preds = %87
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [361 x i32], [361 x i32]* %8, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  call void @remove_stone(i32 %97)
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [361 x i32], [361 x i32]* %8, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 20
  %103 = sub nsw i32 %102, 1
  %104 = load i32, i32* %5, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [361 x i32], [361 x i32]* %8, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = srem i32 %107, 20
  %109 = sub nsw i32 %108, 1
  %110 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.178, i64 0, i64 0), i32 %103, i32 %109)
  br label %111

111:                                              ; preds = %92, %90
  br label %162

112:                                              ; preds = %83
  %113 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %114 = call i32 @strncmp(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.179, i64 0, i64 0), i64 5) #9
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* @board_size, align 4
  call void @gnugo_clear_board(i32 %117)
  store i32 0, i32* %5, align 4
  br label %161

118:                                              ; preds = %112
  %119 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %120 = call i32 @strncmp(i8* %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #9
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %129, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.180, i64 0, i64 0))
  br label %128

127:                                              ; preds = %122
  br label %163

128:                                              ; preds = %125
  br label %160

129:                                              ; preds = %118
  %130 = load i32, i32* @board_size, align 4
  %131 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %132 = call i32 @string_to_location(i32 %130, i8* %131, i32* %9, i32* %10)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %129
  %135 = load i32, i32* %9, align 4
  %136 = mul nsw i32 %135, 20
  %137 = add nsw i32 21, %136
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %137, %138
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.181, i64 0, i64 0))
  br label %155

148:                                              ; preds = %134
  %149 = load i32, i32* %11, align 4
  call void @add_stone(i32 %149, i32 2)
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds [361 x i32], [361 x i32]* %8, i64 0, i64 %153
  store i32 %150, i32* %154, align 4
  br label %155

155:                                              ; preds = %148, %146
  br label %159

156:                                              ; preds = %129
  %157 = getelementptr inbounds [80 x i8], [80 x i8]* %7, i64 0, i64 0
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.35, i64 0, i64 0), i8* %157)
  br label %159

159:                                              ; preds = %156, %155
  br label %160

160:                                              ; preds = %159, %128
  br label %161

161:                                              ; preds = %160, %116
  br label %162

162:                                              ; preds = %161, %111
  br label %31

163:                                              ; preds = %127
  br label %164

164:                                              ; preds = %163, %23
  %165 = load i32, i32* %5, align 4
  %166 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %167 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %5, align 4
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 1, i32 2
  %172 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %173 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  br label %174

174:                                              ; preds = %164, %42, %21
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_move(%struct.Gameinfo* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.Gameinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @board_size, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @string_to_location(i32 %11, i8* %12, i32* %9, i32* %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.138, i64 0, i64 0), i8* %16)
  br label %85

18:                                               ; preds = %4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %22 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gnugo_is_legal(i32 %19, i32 %20, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i64 0, i64 0), i8* %27)
  br label %85

29:                                               ; preds = %18
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* @verbose, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %38

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i8*, ...) @gprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.140, i64 0, i64 0), i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %33
  %39 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  call void @init_sgf(%struct.Gameinfo* %39)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %43 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  call void @gnugo_play_move(i32 %40, i32 %41, i32 %44)
  %45 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %45, i32 0)
  %46 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %47 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* @sgftree, i32 %48, i32 %49, i32 %50)
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* @last_move_i, align 4
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* @last_move_j, align 4
  %53 = load i32, i32* @opt_showboard, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %38
  %56 = load i32, i32* @emacs, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  call void @ascii_showboard()
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.141, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55, %38
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %65 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 3, %66
  %68 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %69 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %71 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 3, %72
  %74 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %75 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  call void @sgftreeAddComment(%struct.SGFTree_t* @sgftree, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i64 0, i64 0))
  br label %85

76:                                               ; preds = %60
  %77 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %78 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 3, %79
  %81 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %82 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.Gameinfo*, %struct.Gameinfo** %5, align 8
  %84 = load i32*, i32** %7, align 8
  call void @computer_move(%struct.Gameinfo* %83, i32* %84)
  br label %85

85:                                               ; preds = %76, %63, %26, %15
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_pass(%struct.Gameinfo* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.Gameinfo*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  call void @init_sgf(%struct.Gameinfo* %10)
  %11 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %12 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  call void @gnugo_play_move(i32 -1, i32 -1, i32 %13)
  %14 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 1), align 8
  call void @sgffile_add_debuginfo(%struct.SGFNode_t* %14, i32 0)
  %15 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %16 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  call void @sgftreeAddPlay(%struct.SGFTree_t* @sgftree, i32 %17, i32 -1, i32 -1)
  call void @sgffile_output(%struct.SGFTree_t* @sgftree)
  %18 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %19 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 3, %20
  %22 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %23 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %28 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 3, %29
  %31 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %32 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  call void @sgftreeAddComment(%struct.SGFTree_t* @sgftree, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.142, i64 0, i64 0))
  br label %36

33:                                               ; preds = %3
  %34 = load %struct.Gameinfo*, %struct.Gameinfo** %4, align 8
  %35 = load i32*, i32** %5, align 8
  call void @computer_move(%struct.Gameinfo* %34, i32* %35)
  br label %36

36:                                               ; preds = %33, %26
  ret void
}

declare dso_local i32 @gnugo_undo_move(i32) #3

declare dso_local void @sgftreeAddComment(%struct.SGFTree_t*, i8*) #3

declare dso_local i32 @sgftreeBack(%struct.SGFTree_t*) #3

declare dso_local i32 @sgftreeForward(%struct.SGFTree_t*) #3

declare dso_local i32 @gnugo_play_sgfnode(%struct.SGFNode_t*, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showcapture(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @board_size, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @string_to_location(i32 %10, i8* %11, i32* %3, i32* %4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 20
  %17 = add nsw i32 21, %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14, %9
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.161, i64 0, i64 0))
  br label %41

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @gnugo_attack(i32 %29, i32 %30, i32* %5, i32* %6)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.162, i64 0, i64 0), i32 %34, i32 %35, i32 %36, i32 %37)
  br label %41

38:                                               ; preds = %28
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.163, i64 0, i64 0), i32 %39, i32 %40)
  br label %41

41:                                               ; preds = %25, %38, %33
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @showdefense(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i32, i32* @board_size, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @string_to_location(i32 %10, i8* %11, i32* %3, i32* %4)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = mul nsw i32 %15, 20
  %17 = add nsw i32 21, %16
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14, %9
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.161, i64 0, i64 0))
  br label %50

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @gnugo_attack(i32 %29, i32 %30, i32* %5, i32* %6)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @gnugo_find_defense(i32 %34, i32 %35, i32* %5, i32* %6)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.164, i64 0, i64 0), i32 %39, i32 %40, i32 %41, i32 %42)
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %4, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.165, i64 0, i64 0), i32 %44, i32 %45)
  br label %46

46:                                               ; preds = %43, %38
  br label %50

47:                                               ; preds = %28
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  call void (i8*, ...) @mprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.166, i64 0, i64 0), i32 %48, i32 %49)
  br label %50

50:                                               ; preds = %25, %47, %46
  ret void
}

declare dso_local void @examine_position(i32, i32) #3

declare dso_local void @print_moyo() #3

declare dso_local void @showboard(i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ascii_goto(%struct.Gameinfo* %0, i8* %1) #0 {
  %3 = alloca %struct.Gameinfo*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.Gameinfo* %0, %struct.Gameinfo** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %27

10:                                               ; preds = %2
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @strncmp(i8* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.102, i64 0, i64 0), i64 4) #9
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.167, i64 0, i64 0), i8** %5, align 8
  br label %21

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strncmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.168, i64 0, i64 0), i64 4) #9
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.169, i64 0, i64 0), i8** %5, align 8
  br label %20

20:                                               ; preds = %19, %15
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.170, i64 0, i64 0), i8* %22)
  %24 = load %struct.Gameinfo*, %struct.Gameinfo** %3, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @gameinfo_play_sgftree(%struct.Gameinfo* %24, %struct.SGFTree_t* @sgftree, i8* %25)
  br label %27

27:                                               ; preds = %21, %9
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sgf(%struct.Gameinfo* %0) #0 {
  %2 = alloca %struct.Gameinfo*, align 8
  store %struct.Gameinfo* %0, %struct.Gameinfo** %2, align 8
  %3 = load i32, i32* @sgf_initialized, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  store i32 1, i32* @sgf_initialized, align 4
  %7 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %8 = load i32, i32* @random_seed, align 4
  %9 = load float, float* @komi, align 4
  %10 = load i32, i32* @level, align 4
  %11 = load i32, i32* @chinese_rules, align 4
  call void @sgf_write_header(%struct.SGFNode_t* %7, i32 1, i32 %8, float %9, i32 %10, i32 %11)
  %12 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  %13 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %14 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  call void @sgfOverwritePropertyInt(%struct.SGFNode_t* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i32 %15)
  %16 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %17 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load %struct.SGFNode_t*, %struct.SGFNode_t** getelementptr inbounds (%struct.SGFTree_t, %struct.SGFTree_t* @sgftree, i32 0, i32 0), align 8
  call void @gnugo_recordboard(%struct.SGFNode_t* %21)
  br label %22

22:                                               ; preds = %5, %20, %6
  ret void
}

declare dso_local i32 @writesgf(%struct.SGFNode_t*, i8*) #3

declare dso_local i32 @sgftree_readfile(%struct.SGFTree_t*, i8*) #3

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare dso_local void @show_dragons() #3

declare dso_local void @gnugo_who_wins(i32, %struct._IO_FILE*) #3

declare dso_local float @estimate_score(float*, float*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @endgame(%struct.Gameinfo* %0) #0 {
  %2 = alloca %struct.Gameinfo*, align 8
  %3 = alloca [12 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.Gameinfo* %0, %struct.Gameinfo** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %7, align 4
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.143, i64 0, i64 0))
  store i32 1, i32* @showdead, align 4
  call void @ascii_showboard()
  br label %10

10:                                               ; preds = %144, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  br i1 %13, label %14, label %145

14:                                               ; preds = %10
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.144, i64 0, i64 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.145, i64 0, i64 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.146, i64 0, i64 0))
  %18 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %20 = call i8* @fgets(i8* %18, i32 12, %struct._IO_FILE* %19)
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %150

23:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %60, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 12
  br i1 %26, label %27, label %63

27:                                               ; preds = %24
  %28 = call i16** @__ctype_b_loc() #11
  %29 = load i16*, i16** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i16, i16* %29, i64 %35
  %37 = load i16, i16* %36, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 256
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %27
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 @tolower(i32 %46) #9
  br label %54

48:                                               ; preds = %27
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  br label %54

54:                                               ; preds = %48, %41
  %55 = phi i32 [ %47, %41 ], [ %53, %48 ]
  %56 = trunc i32 %55 to i8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 %58
  store i8 %56, i8* %59, align 1
  br label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %24, !llvm.loop !16

63:                                               ; preds = %24
  %64 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %65 = call i32 @strncmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.147, i64 0, i64 0), i64 4) #9
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %144

68:                                               ; preds = %63
  %69 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %70 = call i32 @strncmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.98, i64 0, i64 0), i64 4) #9
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %68
  br label %150

73:                                               ; preds = %68
  %74 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %75 = call i32 @strncmp(i8* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.148, i64 0, i64 0), i64 5) #9
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.149, i64 0, i64 0))
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.150, i64 0, i64 0))
  %83 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.151, i64 0, i64 0))
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.152, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.153, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %88

86:                                               ; preds = %77
  %87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.154, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %88

88:                                               ; preds = %86, %80
  br label %142

89:                                               ; preds = %73
  %90 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %91 = call i32 @strncmp(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i64 0, i64 0), i64 4) #9
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.155, i64 0, i64 0))
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.156, i64 0, i64 0))
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.157, i64 0, i64 0))
  br label %141

97:                                               ; preds = %89
  %98 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %99 = call i32 @strncmp(i8* %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.91, i64 0, i64 0), i64 4) #9
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %97
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.158, i64 0, i64 0))
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.159, i64 0, i64 0))
  call void @ascii_showboard()
  br label %140

104:                                              ; preds = %97
  %105 = load i32, i32* @board_size, align 4
  %106 = getelementptr inbounds [12 x i8], [12 x i8]* %3, i64 0, i64 0
  %107 = call i32 @string_to_location(i32 %105, i8* %106, i32* %5, i32* %6)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load i32, i32* %5, align 4
  %111 = mul nsw i32 %110, 20
  %112 = add nsw i32 21, %111
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [421 x i8], [421 x i8]* @board, i64 0, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %109, %104
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.160, i64 0, i64 0))
  br label %139

122:                                              ; preds = %109
  %123 = load i32, i32* %5, align 4
  %124 = mul nsw i32 %123, 20
  %125 = add nsw i32 21, %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %125, %126
  %128 = call i32 @dragon_status(i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 0
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %5, align 4
  %134 = mul nsw i32 %133, 20
  %135 = add nsw i32 21, %134
  %136 = load i32, i32* %6, align 4
  %137 = add nsw i32 %135, %136
  %138 = load i32, i32* %8, align 4
  call void @change_dragon_status(i32 %137, i32 %138)
  call void @ascii_showboard()
  br label %139

139:                                              ; preds = %122, %120
  br label %140

140:                                              ; preds = %139, %101
  br label %141

141:                                              ; preds = %140, %93
  br label %142

142:                                              ; preds = %141, %88
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %67
  br label %10, !llvm.loop !17

145:                                              ; preds = %10
  %146 = load %struct.Gameinfo*, %struct.Gameinfo** %2, align 8
  %147 = getelementptr inbounds %struct.Gameinfo, %struct.Gameinfo* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  call void @gnugo_who_wins(i32 %148, %struct._IO_FILE* %149)
  br label %150

150:                                              ; preds = %145, %72, %22
  ret void
}

declare dso_local void @update_random_seed() #3

declare dso_local void @sgfFreeNode(%struct.SGFNode_t*) #3

declare dso_local void @sgftree_clear(%struct.SGFTree_t*) #3

declare dso_local void @sgftreeCreateHeaderNode(%struct.SGFTree_t*, i32, float) #3

declare dso_local void @gameinfo_clear(%struct.Gameinfo*, i32, float) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @play_ascii_emacs(%struct.SGFTree_t* %0, %struct.Gameinfo* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.SGFTree_t*, align 8
  %6 = alloca %struct.Gameinfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.SGFTree_t* %0, %struct.SGFTree_t** %5, align 8
  store %struct.Gameinfo* %1, %struct.Gameinfo** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1, i32* @emacs, align 4
  %9 = load %struct.SGFTree_t*, %struct.SGFTree_t** %5, align 8
  %10 = load %struct.Gameinfo*, %struct.Gameinfo** %6, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %8, align 8
  call void @play_ascii(%struct.SGFTree_t* %9, %struct.Gameinfo* %10, i8* %11, i8* %12)
  ret void
}

declare dso_local i32 @gnugo_genmove(i32*, i32*, i32) #3

declare dso_local float @gnugo_estimate_score(float*, float*) #3

declare dso_local i32 @is_pass(i32) #3

declare dso_local void @gnugo_play_move(i32, i32, i32) #3

declare dso_local void @sgffile_add_debuginfo(%struct.SGFNode_t*, i32) #3

declare dso_local void @sgftreeAddPlay(%struct.SGFTree_t*, i32, i32, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @make_letterbar(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, 25
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %13 = call i8* @strcpy(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0)) #8
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strcpy(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i64 0, i64 0)) #8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %41, %14
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  store i32 65, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  %25 = icmp sge i32 %24, 73
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %32 = call i8* @strcat(i8* %30, i8* %31) #8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 (i8*, i8*, ...) @sprintf(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.56, i64 0, i64 0), i32 %36) #8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %8, i64 0, i64 0
  %40 = call i8* @strcat(i8* %38, i8* %39) #8
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %17, !llvm.loop !18

44:                                               ; preds = %17
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_handicap_spots(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @hspot_size, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %169

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* @hspot_size, align 4
  call void @llvm.memset.p0i8.i64(i8* align 16 getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i32 0, i32 0, i32 0), i8 46, i64 361, i1 false)
  %9 = load i32, i32* %2, align 4
  %10 = icmp eq i32 %9, 5
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 1, i64 1), align 1
  %12 = load i32, i32* %2, align 4
  %13 = sub nsw i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %14
  %16 = getelementptr inbounds [19 x i8], [19 x i8]* %15, i64 0, i64 1
  store i8 43, i8* %16, align 1
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 1), i64 0, i64 %19
  store i8 43, i8* %20, align 1
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %23
  %25 = load i32, i32* %2, align 4
  %26 = sub nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [19 x i8], [19 x i8]* %24, i64 0, i64 %27
  store i8 43, i8* %28, align 1
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %31
  %33 = load i32, i32* %2, align 4
  %34 = sdiv i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [19 x i8], [19 x i8]* %32, i64 0, i64 %35
  store i8 43, i8* %36, align 1
  br label %169

37:                                               ; preds = %7
  %38 = load i32, i32* %2, align 4
  %39 = srem i32 %38, 2
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %84, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %2, align 4
  %43 = icmp sgt i32 %42, 2
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = icmp slt i32 %45, 12
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 2, i64 2), align 2
  %48 = load i32, i32* %2, align 4
  %49 = sub nsw i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %50
  %52 = getelementptr inbounds [19 x i8], [19 x i8]* %51, i64 0, i64 2
  store i8 43, i8* %52, align 1
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 2), i64 0, i64 %55
  store i8 43, i8* %56, align 1
  %57 = load i32, i32* %2, align 4
  %58 = sub nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %59
  %61 = load i32, i32* %2, align 4
  %62 = sub nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [19 x i8], [19 x i8]* %60, i64 0, i64 %63
  store i8 43, i8* %64, align 1
  br label %83

65:                                               ; preds = %44, %41
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 3, i64 3), align 1
  %66 = load i32, i32* %2, align 4
  %67 = sub nsw i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %68
  %70 = getelementptr inbounds [19 x i8], [19 x i8]* %69, i64 0, i64 3
  store i8 43, i8* %70, align 1
  %71 = load i32, i32* %2, align 4
  %72 = sub nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 3), i64 0, i64 %73
  store i8 43, i8* %74, align 1
  %75 = load i32, i32* %2, align 4
  %76 = sub nsw i32 %75, 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %77
  %79 = load i32, i32* %2, align 4
  %80 = sub nsw i32 %79, 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [19 x i8], [19 x i8]* %78, i64 0, i64 %81
  store i8 43, i8* %82, align 1
  br label %83

83:                                               ; preds = %65, %47
  br label %168

84:                                               ; preds = %37
  %85 = load i32, i32* %2, align 4
  %86 = icmp sgt i32 %85, 2
  br i1 %86, label %87, label %116

87:                                               ; preds = %84
  %88 = load i32, i32* %2, align 4
  %89 = icmp slt i32 %88, 12
  br i1 %89, label %90, label %116

90:                                               ; preds = %87
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 2, i64 2), align 2
  %91 = load i32, i32* %2, align 4
  %92 = sub nsw i32 %91, 3
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %93
  %95 = getelementptr inbounds [19 x i8], [19 x i8]* %94, i64 0, i64 2
  store i8 43, i8* %95, align 1
  %96 = load i32, i32* %2, align 4
  %97 = sub nsw i32 %96, 3
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 2), i64 0, i64 %98
  store i8 43, i8* %99, align 1
  %100 = load i32, i32* %2, align 4
  %101 = sub nsw i32 %100, 3
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %102
  %104 = load i32, i32* %2, align 4
  %105 = sub nsw i32 %104, 3
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [19 x i8], [19 x i8]* %103, i64 0, i64 %106
  store i8 43, i8* %107, align 1
  %108 = load i32, i32* %2, align 4
  %109 = sdiv i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %110
  %112 = load i32, i32* %2, align 4
  %113 = sdiv i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [19 x i8], [19 x i8]* %111, i64 0, i64 %114
  store i8 43, i8* %115, align 1
  br label %167

116:                                              ; preds = %87, %84
  store i8 43, i8* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 3, i64 3), align 1
  %117 = load i32, i32* %2, align 4
  %118 = sub nsw i32 %117, 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %119
  %121 = getelementptr inbounds [19 x i8], [19 x i8]* %120, i64 0, i64 3
  store i8 43, i8* %121, align 1
  %122 = load i32, i32* %2, align 4
  %123 = sub nsw i32 %122, 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 3), i64 0, i64 %124
  store i8 43, i8* %125, align 1
  %126 = load i32, i32* %2, align 4
  %127 = sub nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %128
  %130 = load i32, i32* %2, align 4
  %131 = sub nsw i32 %130, 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [19 x i8], [19 x i8]* %129, i64 0, i64 %132
  store i8 43, i8* %133, align 1
  %134 = load i32, i32* %2, align 4
  %135 = sdiv i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [19 x i8], [19 x i8]* getelementptr inbounds ([19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 3), i64 0, i64 %136
  store i8 43, i8* %137, align 1
  %138 = load i32, i32* %2, align 4
  %139 = sdiv i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %140
  %142 = getelementptr inbounds [19 x i8], [19 x i8]* %141, i64 0, i64 3
  store i8 43, i8* %142, align 1
  %143 = load i32, i32* %2, align 4
  %144 = sdiv i32 %143, 2
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %145
  %147 = load i32, i32* %2, align 4
  %148 = sub nsw i32 %147, 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [19 x i8], [19 x i8]* %146, i64 0, i64 %149
  store i8 43, i8* %150, align 1
  %151 = load i32, i32* %2, align 4
  %152 = sub nsw i32 %151, 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %153
  %155 = load i32, i32* %2, align 4
  %156 = sdiv i32 %155, 2
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [19 x i8], [19 x i8]* %154, i64 0, i64 %157
  store i8 43, i8* %158, align 1
  %159 = load i32, i32* %2, align 4
  %160 = sdiv i32 %159, 2
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @hspots, i64 0, i64 %161
  %163 = load i32, i32* %2, align 4
  %164 = sdiv i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [19 x i8], [19 x i8]* %162, i64 0, i64 %165
  store i8 43, i8* %166, align 1
  br label %167

167:                                              ; preds = %116, %90
  br label %168

168:                                              ; preds = %167, %83
  br label %169

169:                                              ; preds = %168, %11, %6
  ret void
}

declare dso_local i32 @fflush(%struct._IO_FILE*) #3

declare dso_local i32 @dragon_status(i32) #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) #5

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32) #4

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strncmp(i8*, i8*, i64) #4

declare dso_local i32 @string_to_location(i32, i8*, i32*, i32*) #3

declare dso_local i32 @gnugo_is_legal(i32, i32, i32) #3

declare dso_local i32 @gprintf(i8*, ...) #3

declare dso_local void @sgf_write_header(%struct.SGFNode_t*, i32, i32, float, i32, i32) #3

declare dso_local void @gnugo_recordboard(%struct.SGFNode_t*) #3

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #7

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32) #4

declare dso_local void @change_dragon_status(i32, i32) #3

declare dso_local i32 @gnugo_attack(i32, i32, i32*, i32*) #3

declare dso_local i32 @gnugo_find_defense(i32, i32, i32*, i32*) #3

declare dso_local i32 @place_free_handicap(i32) #3

declare dso_local void @remove_stone(i32) #3

declare dso_local void @add_stone(i32, i32) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone willreturn }

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
