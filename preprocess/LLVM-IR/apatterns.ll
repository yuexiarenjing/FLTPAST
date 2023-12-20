; ModuleID = 'apatterns.c'
source_filename = "apatterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.dfa_rt = type opaque

@attpat = internal global [14 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @attpat0, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 0, i32 760, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2430992, i32 6328336, i32 -1872756736, i32 405078016, i32 -1872756736, i32 405078016, i32 2430992, i32 6328336], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @attpat1, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 16579836, i32 -252645376, i32 -65536, i32 1061109567, i32 -252645136, i32 -50593792, i32 1061109504, i32 16777215], [8 x i32] [i32 6852608, i32 -1872748544, i32 413466624, i32 539236368, i32 543199248, i32 -1872232448, i32 405020672, i32 10819584], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @attpat2, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 0, i32 610, [8 x i32] [i32 15790080, i32 -252706816, i32 1061093376, i32 3947580, i32 15790320, i32 -252706816, i32 1010565120, i32 4144896], [8 x i32] [i32 6328320, i32 -1872756736, i32 405012480, i32 2365440, i32 6328320, i32 -1872756736, i32 405012480, i32 2365440], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @attpat3, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 0, i32 3, i32 1, i32 8, i32 649, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 2134016, i32 -2141192192, i32 404750336, i32 2361344, i32 6324224, i32 -1876951040, i32 136577024, i32 2103296], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @attpat4, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 0, i32 3, i32 1, i32 0, i32 686, [8 x i32] [i32 3158256, i32 15728640, i32 808452096, i32 4129536, i32 15728640, i32 808452096, i32 54460416, i32 3158076], [8 x i32] [i32 2101376, i32 6291456, i32 270532608, i32 2359808, i32 6291456, i32 270532608, i32 35913728, i32 2101256], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @attpat5, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 722, [8 x i32] [i32 1023212592, i32 -251855872, i32 -50532352, i32 -50381824, i32 -50532352, i32 -50578432, i32 1023409152, i32 -251855824], [8 x i32] [i32 274743296, i32 1344536576, i32 69472256, i32 6296576, i32 2379776, i32 1080037376, i32 341835776, i32 270795776], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @attpat6, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 3, i32 4, i32 4, i32 0, i32 720, [8 x i32] [i32 -12632564, i32 251658172, i32 -252642056, i32 -212992, i32 -61952, i32 1044381628, i32 -1057161224, i32 -51318592], [8 x i32] [i32 1075847172, i32 77594624, i32 538969088, i32 19415040, i32 10486784, i32 538984448, i32 1076363520, i32 69214272], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @attpat7, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 1, i32 722, [8 x i32] [i32 1061109504, i32 16579836, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061109504, i32 16579836, i32 -252645376], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @attpat8, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 -2, i32 -1, i32 1, i32 1, i32 3, i32 2, i32 0, i32 646, [8 x i32] [i32 -50581504, i32 1023360000, i32 821886000, i32 -251858944, i32 1023360000, i32 821886000, i32 -251858944, i32 -50581504], [8 x i32] [i32 73666560, i32 274732032, i32 275005440, i32 1344540672, i32 341839872, i32 274990080, i32 270815232, i32 1080299520], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @attpat9, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 759, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2498560, i32 10489888, i32 543162368, i32 271056896, i32 278921216, i32 539361280, i32 2625568, i32 6299648], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperattpat9, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @attpat10, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 0, i32 647, [8 x i32] [i32 15793392, i32 -252657664, i32 -12845056, i32 205471500, i32 -1057951552, i32 -51380224, i32 1061096448, i32 3997500], [8 x i32] [i32 2103456, i32 6324224, i32 -1860173824, i32 136708612, i32 -2141192128, i32 404750336, i32 36046848, i32 2134312], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperattpat10, i32 3, float 0x3FA652BD40000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @attpat11, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 686, [8 x i32] [i32 3210296, i32 -1057964032, i32 -63963136, i32 239012864, i32 -1057964032, i32 -63963136, i32 205458944, i32 3210416], [8 x i32] [i32 2114560, i32 1075855360, i32 1142947840, i32 69207040, i32 1075855360, i32 1142947840, i32 69207040, i32 2114560], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @attpat12, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 2, i32 686, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 6307968, i32 1344274432, i32 69468160, i32 2102784, i32 2117632, i32 1080033280, i32 371195904, i32 2360328], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern zeroinitializer], align 16
@attpat_db = dso_local global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([14 x %struct.pattern], [14 x %struct.pattern]* @attpat, i32 0, i32 0), %struct.dfa_rt* null }, align 8
@attpat0 = internal global [11 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str = private unnamed_addr constant [8 x i8] c"Attack1\00", align 1
@attpat1 = internal global [12 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 610, i32 2 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.1 = private unnamed_addr constant [8 x i8] c"Attack2\00", align 1
@attpat2 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }], align 16
@.str.2 = private unnamed_addr constant [8 x i8] c"Attack4\00", align 1
@attpat3 = internal global [8 x %struct.patval] [%struct.patval { i32 687, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [8 x i8] c"Attack5\00", align 1
@attpat4 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 650, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"Attack6\00", align 1
@attpat5 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 2 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"Attack10\00", align 1
@attpat6 = internal global [16 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 646, i32 2 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 645, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 682, i32 0 }, %struct.patval { i32 719, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"Attack11\00", align 1
@attpat7 = internal global [12 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"Attack13\00", align 1
@attpat8 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 720, i32 2 }, %struct.patval { i32 647, i32 2 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 682, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"Attack14\00", align 1
@attpat9 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"Attack15\00", align 1
@attpat10 = internal global [8 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"Attack16\00", align 1
@attpat11 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.11 = private unnamed_addr constant [9 x i8] c"Attack17\00", align 1
@attpat12 = internal global [6 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"Attack18\00", align 1
@transformation = external dso_local global [1369 x [8 x i32]], align 16

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperattpat9(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperattpat10(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @accuratelib(i32 %29, i32 %30, i32 20, i32* null)
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @countlib(i32 %34)
  %36 = icmp sgt i32 %35, 1
  br label %37

37:                                               ; preds = %33, %28, %4
  %38 = phi i1 [ false, %28 ], [ false, %4 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
