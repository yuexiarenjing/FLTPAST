; ModuleID = 'conn.c'
source_filename = "conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.dfa_rt = type opaque
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.influence_data = type opaque

@conn = internal global [102 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @conn0, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 2, i32 648, [8 x i32] [i32 15790080, i32 -252706816, i32 1060896768, i32 3947532, i32 15790272, i32 -252706816, i32 1010565120, i32 3948288], [8 x i32] [i32 9437184, i32 537919488, i32 18350080, i32 1056772, i32 1056832, i32 9437184, i32 537919488, i32 1573120], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn1, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 2, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1060896768, i32 4144911, i32 15790272, i32 -252706816, i32 1061093376, i32 3948351], [8 x i32] [i32 9437184, i32 537919488, i32 18350080, i32 1056772, i32 1056832, i32 9437184, i32 537919488, i32 1573120], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn2, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 2097118208, i32 1962736688, i32 -184749056, i32 -50564096, i32 -50564096, i32 2097118208, i32 1962736688, i32 -184749056], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @conn3, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 15791356, i32 -252690432, i32 2134835200, i32 121585471, i32 1089532144, i32 -185597952, i32 1061095168, i32 4161535], [8 x i32] [i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048608, i32 1048576, i32 1048576, i32 1179648], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @conn4, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 648, [8 x i32] [i32 16055548, i32 -252653568, i32 -8454144, i32 524238655, i32 -789516048, i32 -51118080, i32 1061101312, i32 8388607], [8 x i32] [i32 1049600, i32 1064960, i32 1074921472, i32 68157472, i32 1074790432, i32 68157440, i32 1049600, i32 1196032], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn5, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1638400, i32 1056784, i32 9437184, i32 537919488, i32 537919488, i32 1638400, i32 1056784, i32 9437184], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @conn6, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 0, i32 3, i32 2, i32 2, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1060896768, i32 4144911, i32 15790272, i32 -252706816, i32 1061093376, i32 3948351], [8 x i32] [i32 9437184, i32 537919488, i32 18350080, i32 1056772, i32 1056832, i32 9437184, i32 537919488, i32 1573120], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn6, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @conn7, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 876560191, i32 16577776, i32 -252678144, i32 2147418112, i32 -184811520, i32 1061106688, i32 16744255, i32 1894838512], [8 x i32] [i32 537985024, i32 1572880, i32 1056768, i32 9437184, i32 1572864, i32 1122304, i32 9437200, i32 537919488], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn7, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn8, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -63963136, i32 255790848, i32 -1057964032, i32 -63963136, i32 255790848, i32 3210492], [8 x i32] [i32 1081408, i32 -2146435072, i32 135266304, i32 1050880, i32 1081344, i32 -2146435072, i32 152043520, i32 1050628], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn9, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 2, i32 685, [8 x i32] [i32 821886204, i32 -251858944, i32 -50581504, i32 1073692416, i32 -251858944, i32 -50581504, i32 1073692416, i32 821886204], [8 x i32] [i32 546849792, i32 1612210176, i32 1150820352, i32 613426176, i32 1612210176, i32 1150820352, i32 613426176, i32 546849792], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn9, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn10, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1179904, i32 1048672, i32 1048576, i32 1048576, i32 1048576, i32 17956864, i32 1048612, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn10, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @conn11, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 3, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 255803199, i32 15793404, i32 -252657664, i32 -12648448, i32 -51380224, i32 1061097216, i32 4194303, i32 -1057951504], [8 x i32] [i32 168886272, i32 1050648, i32 1081344, i32 -2146435072, i32 135266304, i32 1116672, i32 1081488, i32 -2146435072], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn11, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @conn12, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 3, i32 3, i32 3, i32 2, i32 758, [8 x i32] [i32 54476607, i32 15790332, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061094144, i32 4145151, i32 15790320], [8 x i32] [i32 34603008, i32 1048584, i32 1048576, i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn12, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn13, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 205467136, i32 11599024, i32 -521093120, i32 -63438848, i32 -55574528, i32 775883776, i32 3734584, i32 -1057955840], [8 x i32] [i32 135331840, i32 1050640, i32 1081344, i32 -2146435072, i32 135266304, i32 1116160, i32 1081360, i32 -2146435072], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn13, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([17 x %struct.patval], [17 x %struct.patval]* @conn14, i32 0, i32 0), i32 17, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 -1, i32 0, i32 3, i32 3, i32 4, i32 3, i32 2, i32 758, [8 x i32] [i32 54476607, i32 15790332, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061094144, i32 4145151, i32 15790320], [8 x i32] [i32 34603008, i32 1048584, i32 1048576, i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn14, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn15, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 722, [8 x i32] [i32 3997695, i32 -1057951552, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12845056, i32 255803151, i32 15793404], [8 x i32] [i32 1573121, i32 1056832, i32 9437184, i32 537919488, i32 537919488, i32 18350080, i32 1056773, i32 9437184], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn16, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 54476544, i32 15790332, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061094144, i32 3947772, i32 15790080], [8 x i32] [i32 34603008, i32 1048584, i32 1048576, i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn16, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @conn17, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 -1, i32 0, i32 3, i32 2, i32 4, i32 2, i32 2, i32 722, [8 x i32] [i32 205471551, i32 15793392, i32 -252657664, i32 -12648448, i32 -51380224, i32 1061096448, i32 4194111, i32 -1057951504], [8 x i32] [i32 135856128, i32 1058832, i32 9469952, i32 -1609564160, i32 672137216, i32 1640448, i32 1089552, i32 -2138046464], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn18, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 2, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 4144959], [8 x i32] [i32 1048576, i32 1048576, i32 17956864, i32 1048612, i32 1048672, i32 1048576, i32 1048576, i32 1179904], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn18, i32 0, float 0x4012B851E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn19, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 2, i32 648, [8 x i32] [i32 15790080, i32 -252706816, i32 1061093376, i32 3947580, i32 15790320, i32 -252706816, i32 1010565120, i32 4144896], [8 x i32] [i32 1048576, i32 1048576, i32 17956864, i32 1048612, i32 1048672, i32 1048576, i32 1048576, i32 1179904], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn19, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @conn20, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 -1, i32 0, i32 3, i32 3, i32 4, i32 3, i32 2, i32 722, [8 x i32] [i32 205471551, i32 15793392, i32 -252657664, i32 -12648448, i32 -51380224, i32 1061096448, i32 4194111, i32 -1057951504], [8 x i32] [i32 135790592, i32 1058816, i32 9469952, i32 -1609564160, i32 672137216, i32 1574912, i32 1089536, i32 -2138046464], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @conn21, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 218103807, i32 -252642064, i32 -50544640, i32 -12632320, i32 -51318784, i32 -62464, i32 1061158719, i32 -1057161988], [8 x i32] [i32 135331840, i32 1050640, i32 1081344, i32 -2146435072, i32 135266304, i32 1116160, i32 1081360, i32 -2146435072], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn21, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @conn22, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i32 -1, i32 -2, i32 3, i32 1, i32 4, i32 3, i32 2, i32 685, [8 x i32] [i32 821886204, i32 -251858944, i32 -249856, i32 1073692431, i32 -251858752, i32 -50581504, i32 1073692416, i32 821886975], [8 x i32] [i32 546849792, i32 1612210176, i32 1150820352, i32 613426176, i32 1612210176, i32 1150820352, i32 613426176, i32 546849792], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn22, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn23, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1179649, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048609, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn24, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 -2, i32 -2, i32 1, i32 0, i32 3, i32 2, i32 2, i32 647, [8 x i32] [i32 -252649472, i32 -54591488, i32 792673328, i32 16317500, i32 12582128, i32 -521080784, i32 -50855936, i32 1010773760], [8 x i32] [i32 1048576, i32 1179648, i32 1048608, i32 1048576, i32 1179648, i32 1048608, i32 1048576, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn24, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn25, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn25, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn26, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 3996732, i32 -1057951744, i32 -51380224, i32 1061096448, i32 -252657664, i32 -63176704, i32 205471488, i32 15793392], [8 x i32] [i32 1082384, i32 -2146418688, i32 1209008128, i32 68225024, i32 1074823168, i32 -2079326208, i32 135332864, i32 1067024], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn26, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn27, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 3996732, i32 -1057951744, i32 -51380224, i32 1061096448, i32 -252657664, i32 -63176704, i32 205471488, i32 15793392], [8 x i32] [i32 1082384, i32 -2146418688, i32 1209008128, i32 68225024, i32 1074823168, i32 -2079326208, i32 135332864, i32 1067024], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn27, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn28, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 686, [8 x i32] [i32 3947772, i32 15790080, i32 -252706816, i32 1061094144, i32 -252706816, i32 1010565120, i32 54476544, i32 15790332], [8 x i32] [i32 1048708, i32 1048576, i32 1048576, i32 17826304, i32 1048576, i32 1048576, i32 34603264, i32 1048648], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn28, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn29, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 686, [8 x i32] [i32 3947772, i32 15790080, i32 -252706816, i32 1061094144, i32 -252706816, i32 1010565120, i32 54476544, i32 15790332], [8 x i32] [i32 1048708, i32 1048576, i32 1048576, i32 17826304, i32 1048576, i32 1048576, i32 34603264, i32 1048648], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn29, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn30, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144956, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144956, i32 15790320], [8 x i32] [i32 1114628, i32 1048720, i32 1048576, i32 17825792, i32 1048576, i32 34668544, i32 1048856, i32 1048640], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn30, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn31, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144956, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144956, i32 15790320], [8 x i32] [i32 1114628, i32 1048720, i32 1048576, i32 17825792, i32 1048576, i32 34668544, i32 1048856, i32 1048640], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn31, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn32, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 15793200, i32 -252657664, i32 -63176704, i32 205470720, i32 -1057951744, i32 -51380224, i32 1010764800, i32 3996720], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* @basic_cut_helper, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn33, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* @basic_cut_helper, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn34, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* @ugly_cutstone_helper, i32 (i32, i32, i32, i32)* @autohelperconn34, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn35, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 512, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* @cutstone2_helper, i32 (i32, i32, i32, i32)* @autohelperconn35, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn36, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -63963136, i32 255790848, i32 -1057964032, i32 -63963136, i32 255790848, i32 3210492], [8 x i32] [i32 1050628, i32 1081344, i32 -2146435072, i32 152043520, i32 -2146435072, i32 135266304, i32 1050880, i32 1081408], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @conn37, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 0, i32 3, i32 2, i32 0, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 4144959], [8 x i32] [i32 1048576, i32 1048576, i32 17956864, i32 1048613, i32 1048672, i32 1048576, i32 1048576, i32 1179905], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn37, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn38, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 792673792, i32 16317628, i32 -252649472, i32 -54788096, i32 -50855936, i32 1044328192, i32 12385528, i32 -521080832], [8 x i32] [i32 34676736, i32 9437208, i32 537919488, i32 1572864, i32 9437184, i32 537985536, i32 1573008, i32 1056768], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn38, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn39, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 686, [8 x i32] [i32 3997503, i32 -1057951552, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12845056, i32 205471503, i32 15793392], [8 x i32] [i32 1590785, i32 1074815104, i32 1150287872, i32 605029376, i32 1611677696, i32 1175977984, i32 68166665, i32 9454592], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn39, i32 0, float 0x40016872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @conn40, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 0, i32 686, [8 x i32] [i32 3997503, i32 -1057951552, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12845056, i32 205471503, i32 15793392], [8 x i32] [i32 1590785, i32 1074815104, i32 1150287872, i32 605029376, i32 1611677696, i32 1175977984, i32 68166665, i32 9454592], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn40, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn41, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 88030976, i32 15791348, i32 -252690432, i32 2084306944, i32 -185597952, i32 1061094656, i32 3964028, i32 1089531904], [8 x i32] [i32 1057024, i32 9437248, i32 537919488, i32 1572864, i32 9437184, i32 554696704, i32 1572868, i32 1056768], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn41, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn42, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 648, [8 x i32] [i32 15790320, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 4144959], [8 x i32] [i32 1048592, i32 1048576, i32 17825792, i32 1114118, i32 1048640, i32 1048576, i32 1114112, i32 1048850], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn42, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @conn43, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 2, i32 3, i32 2, i32 0, i32 721, [8 x i32] [i32 1061106944, i32 16612733, i32 1894838352, i32 -184811520, i32 2113732608, i32 893337365, i32 16577780, i32 -252678144], [8 x i32] [i32 1122304, i32 9437200, i32 537919488, i32 1572864, i32 9437184, i32 537985024, i32 1572880, i32 1056768], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn43, i32 0, float 0x4017851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn44, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 0, i32 721, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 9520128, i32 1611677712, i32 1142423552, i32 68166656, i32 1074814976, i32 1150353408, i32 605029392, i32 1590272], i32 4194820, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn44, i32 0, float 0x4006666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn45, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.45, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 720, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 1639424, i32 1073168, i32 1083179008, i32 605028352, i32 1611661312, i32 68747264, i32 1057808, i32 9453568], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn45, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn46, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 720, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 1639424, i32 1073168, i32 1083179008, i32 605028352, i32 1611661312, i32 68747264, i32 1057808, i32 9453568], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn46, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn47, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 0, i32 3, i32 1, i32 0, i32 685, [8 x i32] [i32 3174640, i32 1089470464, i32 875560960, i32 4130560, i32 15745024, i32 1882193920, i32 121569280, i32 3159100], [8 x i32] [i32 1048720, i32 1048576, i32 1048576, i32 1114624, i32 1048576, i32 1048576, i32 34668544, i32 1048600], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn47, i32 0, float 1.600000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn48, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144176, i32 15790128, i32 -252706816, i32 1010761728, i32 -252706816, i32 1010761728, i32 4144176, i32 15790128], [8 x i32] [i32 1114128, i32 1048592, i32 1048576, i32 1114112, i32 1048576, i32 1114112, i32 1114128, i32 1048592], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn48, i32 0, float 1.000000e+01 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn49, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.49, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 2, i32 3, i32 2, i32 0, i32 759, [8 x i32] [i32 1061097216, i32 3997692, i32 -1057951552, i32 -51380224, i32 -12845056, i32 255803148, i32 15793404, i32 -252657664], [8 x i32] [i32 572064768, i32 1597976, i32 1083187328, i32 613416960, i32 1645740032, i32 68755976, i32 9446544, i32 546324480], i32 -2147483136, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn49, i32 0, float 7.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn50, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 686, [8 x i32] [i32 3948351, i32 15790272, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060896768, i32 4144911, i32 15790320], [8 x i32] [i32 1574401, i32 1073280, i32 1083179008, i32 605028352, i32 1611661312, i32 102236160, i32 1057801, i32 9453568], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn50, i32 0, float 0x40016872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn51, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1044265984, i32 16579624, i32 -252645376, i32 -50593792, i32 -50593792, i32 1010712064, i32 16579744, i32 -252645376], [8 x i32] [i32 537927680, i32 9961472, i32 537927680, i32 9961472, i32 9961472, i32 537927680, i32 9961472, i32 537927680], i32 4194816, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn51, i32 0, float 0x3FF9A85880000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([24 x %struct.patval], [24 x %struct.patval]* @conn52, i32 0, i32 0), i32 24, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 4, i32 4, i32 5, i32 2, i32 723, [8 x i32] [i32 1069531071, i32 -1594032386, i32 -117903232, i32 -54784, i32 -16998400, i32 -1077985526, i32 721420287, i32 -252118792], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([28 x %struct.patval], [28 x %struct.patval]* @conn53, i32 0, i32 0), i32 28, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.53, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 5, i32 3, i32 7, i32 2, i32 759, [8 x i32] [i32 1073741823, i32 -251855620, i32 -16846848, i32 -49366, i32 -50532192, i32 -49408, i32 1073741823, i32 -251724034], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn54, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn54, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([25 x %struct.patval], [25 x %struct.patval]* @conn55, i32 0, i32 0), i32 25, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i32 -1, i32 -1, i32 3, i32 3, i32 4, i32 4, i32 2, i32 722, [8 x i32] [i32 -1077952577, i32 -1459815172, i32 -117901312, i32 -22016, i32 -50550784, i32 -1077952768, i32 -1426063361, i32 -117901064], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn55, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([23 x %struct.patval], [23 x %struct.patval]* @conn56, i32 0, i32 0), i32 23, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.56, i32 0, i32 0), i32 -1, i32 -1, i32 3, i32 3, i32 4, i32 4, i32 2, i32 722, [8 x i32] [i32 -1073741825, i32 -117637892, i32 -50530304, i32 -16640, i32 -50530304, i32 -16640, i32 -1073741825, i32 -117637892], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn56, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn57, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 2, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn57, i32 0, float 0x400FAE1480000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn58, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn58, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn59, i32 0, i32 0), i32 6, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1310740, i32 1052672, i32 5242880, i32 286326784, i32 269484032, i32 1310720, i32 1118464, i32 5242960], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([26 x %struct.patval], [26 x %struct.patval]* @conn60, i32 0, i32 0), i32 26, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 4, i32 4, i32 5, i32 0, i32 723, [8 x i32] [i32 -1077952726, i32 -1459683586, i32 -117901152, i32 -16865280, i32 -16865280, i32 -1077952726, i32 -1459683586, i32 -117901152], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([30 x %struct.patval], [30 x %struct.patval]* @conn61, i32 0, i32 0), i32 30, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i32 -2, i32 -1, i32 3, i32 4, i32 5, i32 5, i32 0, i32 723, [8 x i32] [i32 -1077952593, i32 -1459683586, i32 -117901152, i32 -87552, i32 -16865280, i32 -1077952726, i32 -1426128897, i32 -117901080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([21 x %struct.patval], [21 x %struct.patval]* @conn62, i32 0, i32 0), i32 21, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 3, i32 4, i32 4, i32 0, i32 723, [8 x i32] [i32 -214, i32 -50397442, i32 -50529120, i32 -16843776, i32 -16843776, i32 -214, i32 -50397442, i32 -50529120], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @conn63, i32 0, i32 0), i32 20, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 3, i32 3, i32 4, i32 0, i32 721, [8 x i32] [i32 16760767, i32 -1326386960, i32 -117702656, i32 1061108224, i32 -252661760, i32 -1073807360, i32 977223487, i32 16578808], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @conn64, i32 0, i32 0), i32 20, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 3, i32 3, i32 4, i32 0, i32 721, [8 x i32] [i32 16760767, i32 -1326386960, i32 -117702656, i32 1061108224, i32 -252661760, i32 -1073807360, i32 977223487, i32 16578808], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @conn65, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 0, i32 0, i32 3, i32 2, i32 3, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn65, i32 0, float 0x3F99578A20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @conn66, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i32 0, i32 0, i32 3, i32 3, i32 3, i32 3, i32 0, i32 684, [8 x i32] [i32 4079166, i32 15790240, i32 -252706816, i32 1061093376, i32 -252706816, i32 1044250624, i32 4144938, i32 15790320], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 128, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn66, i32 0, float 0x3F964840E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn67, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1310736, i32 1052672, i32 5242880, i32 269549568, i32 269484032, i32 1310720, i32 1118208, i32 5242896], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn67, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn68, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1310744, i32 1052672, i32 5242880, i32 303104000, i32 269484032, i32 1310720, i32 1118720, i32 5243024], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn68, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn69, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 0, i32 721, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 9437280, i32 537919488, i32 1572864, i32 1188096, i32 1056768, i32 9437184, i32 554827776, i32 1572900], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn69, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @conn70, i32 0, i32 0), i32 3, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 0, i32 684, [8 x i32] [i32 3158064, i32 15728640, i32 808452096, i32 4128768, i32 15728640, i32 808452096, i32 4128768, i32 3158064], [8 x i32] [i32 1048592, i32 1048576, i32 1048576, i32 1114112, i32 1048576, i32 1048576, i32 1114112, i32 1048592], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn70, i32 0, float 0x3FF0275260000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn71, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 0, i32 759, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn71, i32 0, float 0x3FB4BD6620000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn72, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144938, i32 15790320, i32 -252706816, i32 1044250624, i32 -252706816, i32 1061093376, i32 4079166, i32 15790240], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn72, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @conn73, i32 0, i32 0), i32 15, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.73, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 0, i32 721, [8 x i32] [i32 12582911, i32 -521080592, i32 -50855936, i32 1061105408, i32 -252649472, i32 -4259840, i32 792674111, i32 16317692], [8 x i32] [i32 1310736, i32 1052672, i32 5242880, i32 269549568, i32 269484032, i32 1310720, i32 1118208, i32 5242896], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn73, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn74, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9461760, i32 1620049920, i32 605552640, i32 1582080, i32 9461760, i32 1620049920, i32 605552640, i32 1582080], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn74, i32 0, float 0x400570A3E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn75, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1573888, i32 1073152, i32 1083179008, i32 605028352, i32 1611661312, i32 68681728, i32 1057792, i32 9453568], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn75, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn76, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i32 0, i32 0, i32 3, i32 1, i32 3, i32 1, i32 0, i32 684, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1319936, i32 9457664, i32 1615855616, i32 337117184, i32 1351614464, i32 605290496, i32 1577984, i32 5267456], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn76, i32 0, float 0x400CCCCCC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn77, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3996732, i32 -1057951744, i32 -51380224, i32 1061096448, i32 -252657664, i32 -63176704, i32 205471488, i32 15793392], [8 x i32] [i32 1048592, i32 1048576, i32 1048576, i32 1114112, i32 1048576, i32 1048576, i32 1114112, i32 1048592], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn77, i32 0, float 0x3FF5B089A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn78, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.78, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn78, i32 0, float 0x3FFBE76C80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn79, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 0, i32 3, i32 1, i32 0, i32 721, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 1048640, i32 1048576, i32 1048576, i32 1048832, i32 1048576, i32 1048576, i32 17825792, i32 1048580], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn79, i32 0, float 0x40016B1A20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn80, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn80, i32 0, float 0x401A666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn81, i32 0, i32 0), i32 8, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.81, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn81, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn82, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn82, i32 0, float 0x4014A3D700000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn83, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 4194432, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn83, i32 0, float 0x4016E4B060000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn84, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3996732, i32 -1057951744, i32 -51380224, i32 1061096448, i32 -252657664, i32 -63176704, i32 205471488, i32 15793392], [8 x i32] [i32 1082384, i32 -2146418688, i32 1209008128, i32 68225024, i32 1074823168, i32 -2079326208, i32 135332864, i32 1067024], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn84, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @conn85, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 721, [8 x i32] [i32 3947772, i32 15790080, i32 -252706816, i32 1061094144, i32 -252706816, i32 1010565120, i32 54476544, i32 15790332], [8 x i32] [i32 1048708, i32 1048576, i32 1048576, i32 17826304, i32 1048576, i32 1048576, i32 34603264, i32 1048648], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn85, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn86, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 7401472, i32 -789577728, i32 1010040832, i32 3939328, i32 15781888, i32 -261095424, i32 473694208, i32 3423232], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 -2147483504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn86, i32 0, float 0x3FA99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn87, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 -2147483504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn87, i32 0, float 0x3FC47AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn88, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 -2147483504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn88, i32 0, float 0x3FBB22D0E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @conn89, i32 0, i32 0), i32 3, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0), i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 0, i32 684, [8 x i32] [i32 3158064, i32 15728640, i32 808452096, i32 4128768, i32 15728640, i32 808452096, i32 4128768, i32 3158064], [8 x i32] [i32 1048592, i32 1048576, i32 1048576, i32 1114112, i32 1048576, i32 1048576, i32 1114112, i32 1048592], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn89, i32 0, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn90, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn90, i32 0, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn91, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 9461760, i32 1620049920, i32 605552640, i32 1582080, i32 9461760, i32 1620049920, i32 605552640, i32 1582080], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn91, i32 0, float 0x4014CCCCC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn92, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.92, i32 0, i32 0), i32 0, i32 0, i32 3, i32 0, i32 3, i32 0, i32 0, i32 684, [8 x i32] [i32 3158064, i32 15728640, i32 808452096, i32 4128768, i32 15728640, i32 808452096, i32 4128768, i32 3158064], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn92, i32 0, float 0x400CED9160000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn93, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.93, i32 0, i32 0), i32 0, i32 0, i32 3, i32 1, i32 3, i32 1, i32 0, i32 684, [8 x i32] [i32 3946556, i32 15773696, i32 -1326448640, i32 993984512, i32 -1326448640, i32 943456256, i32 4143872, i32 15773936], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn93, i32 0, float 0x40016FD220000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn94, i32 0, i32 0), i32 6, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3423260, i32 15781888, i32 -261095424, i32 524091392, i32 -789577728, i32 1010040832, i32 4005632, i32 7401680], [8 x i32] [i32 1048580, i32 1048576, i32 1048576, i32 17825792, i32 1048576, i32 1048576, i32 1048832, i32 1048640], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn94, i32 0, float 0x400CED9160000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @conn95, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 684, [8 x i32] [i32 3161116, i32 15777792, i32 -265289728, i32 255655936, i32 -1058013184, i32 1009778688, i32 4001536, i32 3207376], [8 x i32] [i32 1050628, i32 1081344, i32 -2146435072, i32 152043520, i32 -2146435072, i32 135266304, i32 1050880, i32 1081408], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn95, i32 0, float 0x40180A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @conn96, i32 0, i32 0), i32 8, i32 5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.96, i32 0, i32 0), i32 0, i32 0, i32 3, i32 1, i32 3, i32 1, i32 0, i32 684, [8 x i32] [i32 3423292, i32 15781888, i32 -261095424, i32 524222464, i32 -789577728, i32 1010040832, i32 4136704, i32 7401712], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 -2147483520, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn96, i32 0, float 0x3FF5158B80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @conn97, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 -2147483504, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn97, i32 0, float 0x3FF9B13160000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @conn98, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 0, i32 3, i32 1, i32 4, i32 721, [8 x i32] [i32 15790240, i32 -252706816, i32 1010565120, i32 4079104, i32 15790080, i32 -252706816, i32 1044250624, i32 3947560], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 65552, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn98, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn99, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.99, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 4, i32 721, [8 x i32] [i32 15790256, i32 -252706816, i32 1010565120, i32 4144640, i32 15790080, i32 -252706816, i32 1044316160, i32 3947576], [8 x i32] [i32 9461760, i32 1620049920, i32 605552640, i32 1582080, i32 9461760, i32 1620049920, i32 605552640, i32 1582080], i32 65552, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn99, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @conn100, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 6, i32 721, [8 x i32] [i32 15790240, i32 -252706816, i32 1010565120, i32 4079104, i32 15790080, i32 -252706816, i32 1044250624, i32 3947560], [8 x i32] [i32 9453568, i32 1611661312, i32 68681728, i32 1057792, i32 1073152, i32 1083179008, i32 605028352, i32 1573888], i32 65552, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperconn100, i32 0, float 0.000000e+00 }, %struct.pattern zeroinitializer], align 16
@conn_db = dso_local global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([102 x %struct.pattern], [102 x %struct.pattern]* @conn, i32 0, i32 0), %struct.dfa_rt* null }, align 8
@conn0 = internal global [5 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 0 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"EB1\00", align 1
@conn1 = internal global [8 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"EB2\00", align 1
@conn2 = internal global [10 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 758, i32 7 }, %struct.patval { i32 720, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"EB3\00", align 1
@conn3 = internal global [11 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [4 x i8] c"EB4\00", align 1
@conn4 = internal global [12 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"EB4a\00", align 1
@conn5 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"EB5\00", align 1
@conn6 = internal global [11 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 650, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"EB6\00", align 1
@conn7 = internal global [11 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"EB7\00", align 1
@conn8 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"EB8\00", align 1
@conn9 = internal global [10 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.9 = private unnamed_addr constant [4 x i8] c"EB9\00", align 1
@conn10 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.10 = private unnamed_addr constant [5 x i8] c"EB10\00", align 1
@conn11 = internal global [14 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.11 = private unnamed_addr constant [5 x i8] c"EB11\00", align 1
@conn12 = internal global [13 x %struct.patval] [%struct.patval { i32 759, i32 7 }, %struct.patval { i32 760, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.12 = private unnamed_addr constant [5 x i8] c"EB12\00", align 1
@conn13 = internal global [7 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.13 = private unnamed_addr constant [5 x i8] c"EB13\00", align 1
@conn14 = internal global [17 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 760, i32 7 }, %struct.patval { i32 761, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 798, i32 0 }], align 16
@.str.14 = private unnamed_addr constant [5 x i8] c"EB14\00", align 1
@conn15 = internal global [10 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.15 = private unnamed_addr constant [5 x i8] c"EB15\00", align 1
@conn16 = internal global [9 x %struct.patval] [%struct.patval { i32 759, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.16 = private unnamed_addr constant [5 x i8] c"EB16\00", align 1
@conn17 = internal global [13 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 724, i32 7 }, %struct.patval { i32 760, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"EB17\00", align 1
@conn18 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.18 = private unnamed_addr constant [5 x i8] c"EB18\00", align 1
@conn19 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.19 = private unnamed_addr constant [5 x i8] c"EB19\00", align 1
@conn20 = internal global [14 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 724, i32 7 }, %struct.patval { i32 760, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.20 = private unnamed_addr constant [5 x i8] c"EB20\00", align 1
@conn21 = internal global [13 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.21 = private unnamed_addr constant [5 x i8] c"EB21\00", align 1
@conn22 = internal global [16 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.22 = private unnamed_addr constant [5 x i8] c"EB22\00", align 1
@conn23 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.23 = private unnamed_addr constant [5 x i8] c"EB23\00", align 1
@conn24 = internal global [9 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 646, i32 7 }, %struct.patval { i32 682, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.24 = private unnamed_addr constant [5 x i8] c"EB24\00", align 1
@conn25 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.25 = private unnamed_addr constant [5 x i8] c"EB25\00", align 1
@conn26 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.26 = private unnamed_addr constant [4 x i8] c"CB1\00", align 1
@conn27 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.27 = private unnamed_addr constant [5 x i8] c"CB1b\00", align 1
@conn28 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.28 = private unnamed_addr constant [4 x i8] c"CB2\00", align 1
@conn29 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.29 = private unnamed_addr constant [5 x i8] c"CB2b\00", align 1
@conn30 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.30 = private unnamed_addr constant [4 x i8] c"CB3\00", align 1
@conn31 = internal global [8 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.31 = private unnamed_addr constant [5 x i8] c"CB3b\00", align 1
@conn32 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.32 = private unnamed_addr constant [4 x i8] c"CB4\00", align 1
@conn33 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.33 = private unnamed_addr constant [4 x i8] c"CB5\00", align 1
@conn34 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.34 = private unnamed_addr constant [4 x i8] c"CB6\00", align 1
@conn35 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.35 = private unnamed_addr constant [4 x i8] c"CB7\00", align 1
@conn36 = internal global [10 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 650, i32 3 }, %struct.patval { i32 724, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.36 = private unnamed_addr constant [4 x i8] c"CB8\00", align 1
@conn37 = internal global [11 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 687, i32 1 }, %struct.patval { i32 650, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 612, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.37 = private unnamed_addr constant [4 x i8] c"CB9\00", align 1
@conn38 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 720, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.38 = private unnamed_addr constant [5 x i8] c"CB10\00", align 1
@conn39 = internal global [10 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.39 = private unnamed_addr constant [5 x i8] c"CB11\00", align 1
@conn40 = internal global [10 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.40 = private unnamed_addr constant [6 x i8] c"CB11b\00", align 1
@conn41 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.41 = private unnamed_addr constant [5 x i8] c"CB12\00", align 1
@conn42 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 647, i32 7 }, %struct.patval { i32 612, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.42 = private unnamed_addr constant [6 x i8] c"CB12a\00", align 1
@conn43 = internal global [12 x %struct.patval] [%struct.patval { i32 720, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.43 = private unnamed_addr constant [5 x i8] c"CB13\00", align 1
@conn44 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.44 = private unnamed_addr constant [5 x i8] c"CB14\00", align 1
@conn45 = internal global [7 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.45 = private unnamed_addr constant [5 x i8] c"CB15\00", align 1
@conn46 = internal global [7 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.46 = private unnamed_addr constant [6 x i8] c"CB15b\00", align 1
@conn47 = internal global [7 x %struct.patval] [%struct.patval { i32 687, i32 7 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 650, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.47 = private unnamed_addr constant [5 x i8] c"CB16\00", align 1
@conn48 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"CB17\00", align 1
@conn49 = internal global [9 x %struct.patval] [%struct.patval { i32 719, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.49 = private unnamed_addr constant [5 x i8] c"CB18\00", align 1
@conn50 = internal global [8 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.50 = private unnamed_addr constant [5 x i8] c"CB19\00", align 1
@conn51 = internal global [8 x %struct.patval] [%struct.patval { i32 683, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.51 = private unnamed_addr constant [5 x i8] c"CB20\00", align 1
@conn52 = internal global [24 x %struct.patval] [%struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 833, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 834, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 832, i32 4 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 794, i32 0 }], align 16
@.str.52 = private unnamed_addr constant [4 x i8] c"EC1\00", align 1
@conn53 = internal global [28 x %struct.patval] [%struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 869, i32 4 }, %struct.patval { i32 870, i32 4 }, %struct.patval { i32 610, i32 4 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 612, i32 4 }, %struct.patval { i32 871, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 832, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 833, i32 0 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 834, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.53 = private unnamed_addr constant [5 x i8] c"EC1b\00", align 1
@conn54 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.54 = private unnamed_addr constant [4 x i8] c"EC2\00", align 1
@conn55 = internal global [25 x %struct.patval] [%struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 794, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.55 = private unnamed_addr constant [5 x i8] c"EC3a\00", align 1
@conn56 = internal global [23 x %struct.patval] [%struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.56 = private unnamed_addr constant [5 x i8] c"EC3b\00", align 1
@conn57 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.57 = private unnamed_addr constant [4 x i8] c"EC4\00", align 1
@conn58 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.58 = private unnamed_addr constant [6 x i8] c"CC101\00", align 1
@conn59 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.59 = private unnamed_addr constant [6 x i8] c"CC102\00", align 1
@conn60 = internal global [26 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 833, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 831, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 793, i32 4 }, %struct.patval { i32 832, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.60 = private unnamed_addr constant [6 x i8] c"CC103\00", align 1
@conn61 = internal global [30 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 724, i32 4 }, %struct.patval { i32 761, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 794, i32 4 }, %struct.patval { i32 831, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 834, i32 4 }, %struct.patval { i32 832, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 833, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.61 = private unnamed_addr constant [6 x i8] c"CC104\00", align 1
@conn62 = internal global [21 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 794, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.62 = private unnamed_addr constant [6 x i8] c"CC105\00", align 1
@conn63 = internal global [20 x %struct.patval] [%struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 761, i32 0 }, %struct.patval { i32 795, i32 0 }], align 16
@.str.63 = private unnamed_addr constant [6 x i8] c"CC106\00", align 1
@conn64 = internal global [20 x %struct.patval] [%struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 761, i32 2 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 798, i32 0 }], align 16
@.str.64 = private unnamed_addr constant [6 x i8] c"CC107\00", align 1
@conn65 = internal global [12 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.65 = private unnamed_addr constant [6 x i8] c"CC108\00", align 1
@conn66 = internal global [16 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 761, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.66 = private unnamed_addr constant [6 x i8] c"CC109\00", align 1
@conn67 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.67 = private unnamed_addr constant [6 x i8] c"CC201\00", align 1
@conn68 = internal global [6 x %struct.patval] [%struct.patval { i32 723, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.68 = private unnamed_addr constant [6 x i8] c"CC202\00", align 1
@conn69 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.69 = private unnamed_addr constant [6 x i8] c"CC203\00", align 1
@conn70 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.70 = private unnamed_addr constant [6 x i8] c"CC204\00", align 1
@conn71 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.71 = private unnamed_addr constant [6 x i8] c"CC205\00", align 1
@conn72 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.72 = private unnamed_addr constant [6 x i8] c"CC206\00", align 1
@conn73 = internal global [15 x %struct.patval] [%struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 797, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.73 = private unnamed_addr constant [7 x i8] c"CC206a\00", align 1
@conn74 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.74 = private unnamed_addr constant [6 x i8] c"CC207\00", align 1
@conn75 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.75 = private unnamed_addr constant [6 x i8] c"CC208\00", align 1
@conn76 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.76 = private unnamed_addr constant [6 x i8] c"CC209\00", align 1
@conn77 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.77 = private unnamed_addr constant [6 x i8] c"CC302\00", align 1
@conn78 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.78 = private unnamed_addr constant [6 x i8] c"CC311\00", align 1
@conn79 = internal global [8 x %struct.patval] [%struct.patval { i32 649, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.79 = private unnamed_addr constant [6 x i8] c"CC312\00", align 1
@conn80 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.80 = private unnamed_addr constant [6 x i8] c"CC313\00", align 1
@conn81 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.81 = private unnamed_addr constant [6 x i8] c"CC321\00", align 1
@conn82 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.82 = private unnamed_addr constant [6 x i8] c"CC322\00", align 1
@conn83 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.83 = private unnamed_addr constant [6 x i8] c"CC323\00", align 1
@conn84 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.84 = private unnamed_addr constant [6 x i8] c"CC401\00", align 1
@conn85 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.85 = private unnamed_addr constant [6 x i8] c"CC402\00", align 1
@conn86 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.86 = private unnamed_addr constant [6 x i8] c"CC501\00", align 1
@conn87 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.87 = private unnamed_addr constant [6 x i8] c"CC502\00", align 1
@conn88 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.88 = private unnamed_addr constant [7 x i8] c"CC502b\00", align 1
@conn89 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.89 = private unnamed_addr constant [6 x i8] c"CC503\00", align 1
@conn90 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.90 = private unnamed_addr constant [6 x i8] c"CC504\00", align 1
@conn91 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.91 = private unnamed_addr constant [6 x i8] c"CC505\00", align 1
@conn92 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.92 = private unnamed_addr constant [6 x i8] c"CC506\00", align 1
@conn93 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 687, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.93 = private unnamed_addr constant [7 x i8] c"CC506b\00", align 1
@conn94 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.94 = private unnamed_addr constant [6 x i8] c"CC507\00", align 1
@conn95 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.95 = private unnamed_addr constant [6 x i8] c"CC508\00", align 1
@conn96 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 687, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.96 = private unnamed_addr constant [6 x i8] c"CC509\00", align 1
@conn97 = internal global [4 x %struct.patval] [%struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.97 = private unnamed_addr constant [6 x i8] c"CC511\00", align 1
@conn98 = internal global [7 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 687, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.98 = private unnamed_addr constant [7 x i8] c"Lunch1\00", align 1
@conn99 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.99 = private unnamed_addr constant [7 x i8] c"Lunch2\00", align 1
@conn100 = internal global [6 x %struct.patval] [%struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.100 = private unnamed_addr constant [7 x i8] c"Lunch3\00", align 1
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@stackp = external dso_local global i32, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@initial_white_influence = external dso_local global %struct.influence_data, align 1
@initial_black_influence = external dso_local global %struct.influence_data, align 1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn6(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 3, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 3, %41
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 3, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %40, %4
  %51 = phi i1 [ true, %4 ], [ %49, %40 ]
  %52 = zext i1 %51 to i32
  ret i32 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn7(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 2, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 3, %40
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %41, i32 1, i32 3, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %39, %4
  %50 = phi i1 [ false, %4 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn9(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %31, %4
  %39 = phi i1 [ true, %4 ], [ %37, %31 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn10(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 2, i32 %27, i32 %28, i32 %29)
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn11(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 1, i32 4, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn12(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 4, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn13(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 1, i32 2, i32 %34, i32 %35, i32 %36, i32 %37)
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn14(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 3, %53
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %54, i32 1, i32 7, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn16(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 1, i32 4, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39)
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn18(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 1, i32 2, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 3, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 2, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 3, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %57, i32 1, i32 4, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %55, %47
  %67 = phi i1 [ true, %47 ], [ %65, %55 ]
  br label %68

68:                                               ; preds = %66, %4
  %69 = phi i1 [ false, %4 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn19(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 1, i32 2, i32 %27, i32 %28, i32 %29, i32 %30)
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn21(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn22(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 3
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn24(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 3, %18
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %19, i32 0, i32 1, i32 %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn25(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 1, i32 2, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 3, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 1, i32 2, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %47, %4
  %57 = phi i1 [ false, %4 ], [ %55, %47 ]
  %58 = zext i1 %57 to i32
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn26(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 1, i32 3, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 3, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %36, i32 1, i32 3, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %34, %4
  %46 = phi i1 [ false, %4 ], [ %44, %34 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn27(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn28(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 1, i32 3, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 3, %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %43, i32 0, i32 4, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %41, %4
  %53 = phi i1 [ false, %4 ], [ %51, %41 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn29(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn30(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @countlib(i32 %29)
  %31 = icmp eq i32 %30, 2
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn31(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i32 @basic_cut_helper(%struct.pattern*, i32, i32, i32) #1

declare dso_local i32 @ugly_cutstone_helper(%struct.pattern*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn34(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @stackp, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %23, i32 0, i32 16
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %38

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @attack(i32 %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 3, %34
  %36 = call i32 @safe_move(i32 %33, i32 %35)
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %32, %28, %20
  %39 = phi i1 [ false, %28 ], [ false, %20 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

declare dso_local i32 @cutstone2_helper(%struct.pattern*, i32, i32, i32) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn35(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @stackp, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %23, i32 0, i32 16
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @attack(i32 %28, i32* null)
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i32 [ %26, %20 ], [ %29, %27 ]
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn37(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 0, i32 2, i32 %27, i32 %28, i32 %29, i32 %30)
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn38(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 0, i32 2, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 3, %48
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 0, i32 2, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %47, %4
  %57 = phi i1 [ false, %4 ], [ %55, %47 ]
  %58 = zext i1 %57 to i32
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn39(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @stackp, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %44, i32 0, i32 16
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %87, label %53

49:                                               ; preds = %4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @attack(i32 %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %87, label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* @stackp, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %59, i32 0, i32 16
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @attack(i32 %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 3, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %70, i32 1, i32 3, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 3, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %79, i32 1, i32 3, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %77, %68, %64, %56, %49, %41
  %88 = phi i1 [ false, %68 ], [ false, %64 ], [ false, %56 ], [ false, %49 ], [ false, %41 ], [ %86, %77 ]
  %89 = zext i1 %88 to i32
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn40(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn41(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 0, i32 2, i32 %27, i32 %28, i32 %29, i32 %30)
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn42(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 0, i32 3, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn43(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 3, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %47, i32 0, i32 3, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %75

55:                                               ; preds = %4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 3, %56
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %57, i32 0, i32 3, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 3, %66
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %67, i32 0, i32 3, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br label %75

75:                                               ; preds = %65, %55, %4
  %76 = phi i1 [ false, %55 ], [ false, %4 ], [ %74, %65 ]
  %77 = zext i1 %76 to i32
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn44(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 1, i32 3, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %38, %4
  %50 = phi i1 [ false, %4 ], [ %48, %38 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn45(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 1, i32 3, i32 %27, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %7, align 4
  %36 = sub nsw i32 3, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %36, i32 1, i32 3, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  br label %45

45:                                               ; preds = %34, %4
  %46 = phi i1 [ false, %4 ], [ %44, %34 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn46(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn47(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %26, i32 1, i32 0, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br label %40

40:                                               ; preds = %31, %4
  %41 = phi i1 [ false, %4 ], [ %39, %31 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn48(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn49(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 1, i32 1, i32 %41, i32 %42)
  %44 = icmp slt i32 %43, 5
  br i1 %44, label %45, label %55

45:                                               ; preds = %4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 3, %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %47, i32 1, i32 3, i32 %48, i32 0, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %45, %4
  %56 = phi i1 [ false, %4 ], [ %54, %45 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn50(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @stackp, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %44, i32 0, i32 16
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %87, label %53

49:                                               ; preds = %4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @attack(i32 %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %87, label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* @stackp, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %59, i32 0, i32 16
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %87, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @attack(i32 %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 3, %69
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %70, i32 1, i32 3, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %7, align 4
  %79 = sub nsw i32 3, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %79, i32 1, i32 3, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %77, %68, %64, %56, %49, %41
  %88 = phi i1 [ false, %68 ], [ false, %64 ], [ false, %56 ], [ false, %49 ], [ false, %41 ], [ %86, %77 ]
  %89 = zext i1 %88 to i32
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn51(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @stackp, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %44, i32 0, i32 16
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %74, label %53

49:                                               ; preds = %4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @attack(i32 %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %74, label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* @stackp, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %59, i32 0, i32 16
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %68

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @attack(i32 %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i32, i32, i32, ...) @somewhere(i32 %69, i32 0, i32 2, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %68, %64, %56, %49, %41
  %75 = phi i1 [ false, %64 ], [ false, %56 ], [ false, %49 ], [ false, %41 ], [ %73, %68 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn54(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 0, i32 4, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 3, %49
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %50, i32 0, i32 4, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %48, %4
  %60 = phi i1 [ false, %4 ], [ %58, %48 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn55(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 3, %18
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @whose_moyo(%struct.influence_data* %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %24, %25
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn56(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %66, %67
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %78, %79
  store i32 %80, i32* %18, align 4
  %81 = load i32, i32* %7, align 4
  %82 = sub nsw i32 3, %81
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %18, align 4
  %94 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %82, i32 1, i32 10, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  ret i32 %97
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn57(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 796), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 3, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %54, i32 1, i32 3, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 3, %63
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %64, i32 1, i32 2, i32 %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %81, label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 3, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %72, i32 1, i32 4, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %70, %62, %4
  %82 = phi i1 [ false, %62 ], [ false, %4 ], [ %80, %70 ]
  %83 = zext i1 %82 to i32
  ret i32 %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn58(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 3, %26
  %28 = call i32 @cut_possible(i32 %25, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = call i32 @cut_possible(i32 %31, i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %30, %4
  %38 = phi i1 [ false, %4 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn65(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 760), i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 3, %60
  %62 = icmp eq i32 %61, 1
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @whose_moyo(%struct.influence_data* %64, i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %156

69:                                               ; preds = %4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 3, %70
  %72 = icmp eq i32 %71, 1
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @whose_area(%struct.influence_data* %74, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %156

79:                                               ; preds = %69
  %80 = load i32, i32* %7, align 4
  %81 = sub nsw i32 3, %80
  %82 = icmp eq i32 %81, 1
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @whose_area(%struct.influence_data* %84, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %156

89:                                               ; preds = %79
  %90 = load i32, i32* %7, align 4
  %91 = sub nsw i32 3, %90
  %92 = icmp eq i32 %91, 1
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @whose_moyo(%struct.influence_data* %94, i32 %95)
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 3, %100
  %102 = icmp eq i32 %101, 1
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @whose_moyo(%struct.influence_data* %104, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = add nsw i32 %99, %109
  %111 = load i32, i32* %7, align 4
  %112 = sub nsw i32 3, %111
  %113 = icmp eq i32 %112, 1
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @whose_moyo(%struct.influence_data* %115, i32 %116)
  %118 = load i32, i32* %7, align 4
  %119 = icmp eq i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = add nsw i32 %110, %120
  %122 = load i32, i32* %7, align 4
  %123 = sub nsw i32 3, %122
  %124 = icmp eq i32 %123, 1
  %125 = zext i1 %124 to i64
  %126 = select i1 %124, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %127 = load i32, i32* %13, align 4
  %128 = call i32 @whose_moyo(%struct.influence_data* %126, i32 %127)
  %129 = load i32, i32* %7, align 4
  %130 = icmp eq i32 %128, %129
  %131 = zext i1 %130 to i32
  %132 = add nsw i32 %121, %131
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 3, %133
  %135 = icmp eq i32 %134, 1
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @whose_moyo(%struct.influence_data* %137, i32 %138)
  %140 = load i32, i32* %7, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i32
  %143 = add nsw i32 %132, %142
  %144 = load i32, i32* %7, align 4
  %145 = sub nsw i32 3, %144
  %146 = icmp eq i32 %145, 1
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %149 = load i32, i32* %15, align 4
  %150 = call i32 @whose_moyo(%struct.influence_data* %148, i32 %149)
  %151 = load i32, i32* %7, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i32
  %154 = add nsw i32 %143, %153
  %155 = icmp sge i32 %154, 3
  br label %156

156:                                              ; preds = %89, %79, %69, %4
  %157 = phi i1 [ false, %79 ], [ false, %69 ], [ false, %4 ], [ %155, %89 ]
  %158 = zext i1 %157 to i32
  ret i32 %158
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn66(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 724), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = icmp eq i32 %40, 1
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @whose_moyo(%struct.influence_data* %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 3, %49
  %51 = icmp eq i32 %50, 1
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @whose_moyo(%struct.influence_data* %53, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %48
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @countlib(i32 %59)
  %61 = icmp sge i32 %60, 4
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @countlib(i32 %63)
  %65 = icmp sge i32 %64, 4
  br label %66

66:                                               ; preds = %62, %58, %48, %4
  %67 = phi i1 [ false, %58 ], [ false, %48 ], [ false, %4 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn67(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 1, i32 3, i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn68(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 0, i32 2, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn69(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 0, i32 2, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 3, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 0, i32 2, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %47, %4
  %58 = phi i1 [ false, %4 ], [ %56, %47 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn70(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 3, %19
  %21 = call i32 @safe_move(i32 %18, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @is_ko_point(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 3, %29
  %31 = call i32 @cut_possible(i32 %28, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br label %34

34:                                               ; preds = %27, %23, %4
  %35 = phi i1 [ false, %23 ], [ false, %4 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn71(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 535), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 572), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, i32, i32, ...) @somewhere(i32 %40, i32 0, i32 1, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i32, i32, i32, ...) @somewhere(i32 %45, i32 0, i32 1, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 3, %51
  %53 = call i32 @cut_possible(i32 %50, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %49, %44, %4
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 3, %56
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i32, i32, ...) @somewhere(i32 %57, i32 0, i32 1, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 (i32, i32, i32, ...) @somewhere(i32 %62, i32 0, i32 1, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 3, %68
  %70 = call i32 @cut_possible(i32 %67, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %87, label %72

72:                                               ; preds = %66, %61, %55
  %73 = load i32, i32* @stackp, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %77
  %79 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %78, i32 0, i32 16
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %79, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %106, label %87

83:                                               ; preds = %72
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @attack(i32 %84, i32* null)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %106, label %87

87:                                               ; preds = %83, %75, %66, %49
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @is_ko_point(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %104, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* %7, align 4
  %94 = sub nsw i32 3, %93
  %95 = call i32 @cut_possible(i32 %92, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %7, align 4
  %100 = sub nsw i32 3, %99
  %101 = call i32 @safe_move(i32 %98, i32 %100)
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %97, %91, %87
  %105 = phi i1 [ false, %91 ], [ false, %87 ], [ %103, %97 ]
  br label %106

106:                                              ; preds = %104, %83, %75
  %107 = phi i1 [ true, %83 ], [ true, %75 ], [ %105, %104 ]
  %108 = zext i1 %107 to i32
  ret i32 %108
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn72(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 1, i32 3, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp eq i32 %46, 5
  br i1 %47, label %48, label %58

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 3, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %50, i32 1, i32 3, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp eq i32 %56, 5
  br label %58

58:                                               ; preds = %48, %4
  %59 = phi i1 [ false, %4 ], [ %57, %48 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn73(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 612), i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 3, %60
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %15, align 4
  %71 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %61, i32 1, i32 7, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70)
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn74(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @stackp, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %30, i32 0, i32 16
  %32 = getelementptr inbounds [10 x i32], [10 x i32]* %31, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %61

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @attack(i32 %36, i32* null)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %35, %27
  %40 = load i32, i32* @stackp, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %45, i32 0, i32 16
  %47 = getelementptr inbounds [10 x i32], [10 x i32]* %46, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %61

50:                                               ; preds = %39
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @attack(i32 %51, i32* null)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %50, %42
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %55, i32 0, i32 0, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %54, %50, %42, %35, %27
  %62 = phi i1 [ false, %50 ], [ false, %42 ], [ false, %35 ], [ false, %27 ], [ %60, %54 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn75(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28, i32 %29)
  %31 = icmp eq i32 %30, 5
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn76(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 724), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 1, i32 3, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 3, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %50, i32 0, i32 2, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %48, %4
  %58 = phi i1 [ false, %4 ], [ %56, %48 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn77(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @accuratelib(i32 %60, i32 %61, i32 20, i32* null)
  %63 = icmp sgt i32 %62, 1
  br i1 %63, label %64, label %103

64:                                               ; preds = %4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 3, %65
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %66, i32 1, i32 5, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 3, %76
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %77, i32 1, i32 5, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %75, %64
  %87 = load i32, i32* %7, align 4
  %88 = sub nsw i32 3, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %88, i32 1, i32 2, i32 %89, i32 %90, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 3, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %96, i32 1, i32 2, i32 %97, i32 %98, i32 %99)
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %94, %86, %75, %4
  %104 = phi i1 [ false, %86 ], [ false, %75 ], [ false, %4 ], [ %102, %94 ]
  %105 = zext i1 %104 to i32
  ret i32 %105
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn78(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @countlib(i32 %53)
  %55 = icmp sgt i32 %54, 2
  br i1 %55, label %56, label %80

56:                                               ; preds = %4
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @countlib(i32 %57)
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 3, %61
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %62, i32 1, i32 3, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %70, label %80

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  %72 = sub nsw i32 3, %71
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %72, i32 1, i32 3, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  %79 = icmp eq i32 %78, 5
  br label %80

80:                                               ; preds = %70, %60, %56, %4
  %81 = phi i1 [ false, %60 ], [ false, %56 ], [ false, %4 ], [ %79, %70 ]
  %82 = zext i1 %81 to i32
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn79(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 1, i32 3, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 3, %48
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 3, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %81

56:                                               ; preds = %47, %4
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 3, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %58, i32 1, i32 3, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 3, %66
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %67, i32 1, i32 3, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %65, %56
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 3, %76
  %78 = call i32 @cut_possible(i32 %75, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %74, %65, %47
  %82 = phi i1 [ false, %65 ], [ false, %47 ], [ %80, %74 ]
  %83 = zext i1 %82 to i32
  ret i32 %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn80(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 3, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %54, i32 1, i32 3, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp eq i32 %60, 5
  br i1 %61, label %62, label %87

62:                                               ; preds = %4
  %63 = load i32, i32* %7, align 4
  %64 = sub nsw i32 3, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %64, i32 1, i32 3, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %85, label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 3, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 (i32, i32, ...) @play_break_through_n(i32 %74, i32 4, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br label %85

85:                                               ; preds = %72, %62
  %86 = phi i1 [ true, %62 ], [ %84, %72 ]
  br label %87

87:                                               ; preds = %85, %4
  %88 = phi i1 [ false, %4 ], [ %86, %85 ]
  %89 = zext i1 %88 to i32
  ret i32 %89
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn81(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %40, i32 0, i32 4, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %4
  %50 = load i32, i32* %7, align 4
  %51 = sub nsw i32 3, %50
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %51, i32 0, i32 4, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  br label %61

61:                                               ; preds = %49, %4
  %62 = phi i1 [ false, %4 ], [ %60, %49 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn82(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 796), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 3, %46
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %47, i32 1, i32 5, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %4
  %58 = load i32, i32* %7, align 4
  %59 = sub nsw i32 3, %58
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %12, align 4
  %66 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %59, i32 0, i32 4, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 3, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %70, i32 1, i32 3, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br label %77

77:                                               ; preds = %68, %57, %4
  %78 = phi i1 [ false, %57 ], [ false, %4 ], [ %76, %68 ]
  %79 = zext i1 %78 to i32
  ret i32 %79
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn83(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 796), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 3, %53
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %54, i32 0, i32 4, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %128, label %63

63:                                               ; preds = %4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 3, %64
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %65, i32 1, i32 5, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %128

75:                                               ; preds = %63
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 3, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %77, i32 0, i32 4, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %75
  %86 = load i32, i32* %7, align 4
  %87 = sub nsw i32 3, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %87, i32 1, i32 5, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = sub nsw i32 3, %97
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %98, i32 1, i32 5, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %96
  %108 = load i32, i32* %7, align 4
  %109 = sub nsw i32 3, %108
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %109, i32 1, i32 5, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %107, %75
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 3, %119
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %14, align 4
  %126 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %120, i32 0, i32 3, i32 %121, i32 %122, i32 %123, i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br label %128

128:                                              ; preds = %118, %107, %96, %85, %63, %4
  %129 = phi i1 [ false, %107 ], [ false, %96 ], [ false, %85 ], [ false, %63 ], [ false, %4 ], [ %127, %118 ]
  %130 = zext i1 %129 to i32
  ret i32 %130
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn84(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 3, %43
  %45 = call i32 @cut_possible(i32 %42, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %50

46:                                               ; preds = %4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %13, align 4
  call void @amalgamate_most_valuable_helper(i32 %47, i32 %48, i32 %49)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %41
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn85(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 650), i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 3, %64
  %66 = call i32 @cut_possible(i32 %63, i32 %65)
  store i32 %66, i32* %5, align 4
  br label %95

67:                                               ; preds = %4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 3, %68
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %69, i32 1, i32 3, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 3, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %79, i32 1, i32 3, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %77, %67
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  call void @join_dragons(i32 %88, i32 %89)
  br label %94

90:                                               ; preds = %77
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* %16, align 4
  call void @amalgamate_most_valuable_helper(i32 %91, i32 %92, i32 %93)
  br label %94

94:                                               ; preds = %90, %87
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %62
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn86(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 3, %19
  %21 = call i32 @is_suicide(i32 %18, i32 %20)
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn87(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %58

35:                                               ; preds = %4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 3, %41
  %43 = call i32 @cut_possible(i32 %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = call i32 @accuratelib(i32 %46, i32 %48, i32 20, i32* null)
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 3, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 1, i32 %54, i32 %55)
  %57 = icmp eq i32 %56, 5
  br label %58

58:                                               ; preds = %51, %45, %39, %35, %4
  %59 = phi i1 [ false, %45 ], [ false, %39 ], [ false, %35 ], [ false, %4 ], [ %57, %51 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn88(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @countlib(i32 %39)
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %71

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @countlib(i32 %43)
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %71

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 3, %48
  %50 = call i32 @cut_possible(i32 %47, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %71, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 3, %54
  %56 = call i32 @cut_possible(i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 3, %60
  %62 = call i32 @accuratelib(i32 %59, i32 %61, i32 20, i32* null)
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 3, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %66, i32 1, i32 1, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %64, %58, %52, %46, %42, %4
  %72 = phi i1 [ false, %58 ], [ false, %52 ], [ false, %46 ], [ false, %42 ], [ false, %4 ], [ %70, %64 ]
  %73 = zext i1 %72 to i32
  ret i32 %73
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn89(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  %35 = call i32 @cut_possible(i32 %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %38, i32 0, i32 0, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %37, %4
  %45 = phi i1 [ false, %4 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn90(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  %35 = call i32 @cut_possible(i32 %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %38, i32 0, i32 0, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %37, %4
  %45 = phi i1 [ false, %4 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn91(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @stackp, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %44, i32 0, i32 16
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %68, label %53

49:                                               ; preds = %4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @attack(i32 %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %68, label %53

53:                                               ; preds = %49, %41
  %54 = load i32, i32* @stackp, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %59, i32 0, i32 16
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %75

64:                                               ; preds = %53
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @attack(i32 %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %64, %56, %49, %41
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %69, i32 0, i32 0, i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %68, %64, %56
  %76 = phi i1 [ false, %64 ], [ false, %56 ], [ %74, %68 ]
  %77 = zext i1 %76 to i32
  ret i32 %77
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn92(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 687), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 3, %40
  %42 = call i32 @cut_possible(i32 %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 3, %46
  %48 = call i32 @cut_possible(i32 %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %51, i32 0, i32 0, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %50, %44, %4
  %58 = phi i1 [ false, %44 ], [ false, %4 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn93(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 687), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = call i32 @cut_possible(i32 %46, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 3, %53
  %55 = call i32 @cut_possible(i32 %52, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @countlib(i32 %58)
  %60 = icmp sle i32 %59, 2
  br i1 %60, label %61, label %68

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %62, i32 0, i32 0, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %61, %57, %51, %4
  %69 = phi i1 [ false, %57 ], [ false, %51 ], [ false, %4 ], [ %67, %61 ]
  %70 = zext i1 %69 to i32
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn94(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 3, %40
  %42 = call i32 @cut_possible(i32 %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sub nsw i32 3, %46
  %48 = call i32 @cut_possible(i32 %45, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %51, i32 0, i32 0, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %50, %44, %4
  %58 = phi i1 [ false, %44 ], [ false, %4 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn95(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  %35 = call i32 @cut_possible(i32 %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %38, i32 0, i32 0, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %37, %4
  %45 = phi i1 [ false, %4 ], [ %43, %37 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn96(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 724), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 3, %54
  %56 = call i32 @cut_possible(i32 %53, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %83, label %58

58:                                               ; preds = %4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 3, %60
  %62 = call i32 @cut_possible(i32 %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = sub nsw i32 3, %66
  %68 = call i32 @cut_possible(i32 %65, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %83, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %7, align 4
  %73 = sub nsw i32 3, %72
  %74 = call i32 @cut_possible(i32 %71, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %14, align 4
  %80 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %77, i32 0, i32 0, i32 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br label %83

83:                                               ; preds = %76, %70, %64, %58, %4
  %84 = phi i1 [ false, %70 ], [ false, %64 ], [ false, %58 ], [ false, %4 ], [ %82, %76 ]
  %85 = zext i1 %84 to i32
  ret i32 %85
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn97(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @stackp, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %44, i32 0, i32 16
  %46 = getelementptr inbounds [10 x i32], [10 x i32]* %45, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %81

49:                                               ; preds = %4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @attack(i32 %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %81

53:                                               ; preds = %49, %41
  %54 = load i32, i32* @stackp, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %58
  %60 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %59, i32 0, i32 16
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %60, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %68, label %81

64:                                               ; preds = %53
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @attack(i32 %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %7, align 4
  %71 = sub nsw i32 3, %70
  %72 = call i32 @cut_possible(i32 %69, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 3, %76
  %78 = call i32 @cut_possible(i32 %75, i32 %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %74, %68, %64, %56, %49, %41
  %82 = phi i1 [ false, %68 ], [ false, %64 ], [ false, %56 ], [ false, %49 ], [ false, %41 ], [ %80, %74 ]
  %83 = zext i1 %82 to i32
  ret i32 %83
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn98(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @not_lunch_helper(i32 %25, i32 %26)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn99(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %66, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @stackp, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %47, i32 0, i32 16
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %48, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %56

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @attack(i32 %53, i32* null)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %52, %44
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 3, %58
  %60 = call i32 @safe_move(i32 %57, i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %56, %52, %44
  %64 = phi i1 [ false, %52 ], [ false, %44 ], [ %62, %56 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %70

66:                                               ; preds = %4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @not_lunch_helper(i32 %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperconn100(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @not_lunch_helper(i32 %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare dso_local i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @play_connect_n(i32, i32, i32, ...) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @somewhere(i32, i32, i32, ...) #1

declare dso_local i32 @whose_moyo(%struct.influence_data*, i32) #1

declare dso_local i32 @cut_possible(i32, i32) #1

declare dso_local i32 @whose_area(%struct.influence_data*, i32) #1

declare dso_local i32 @is_ko_point(i32) #1

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

declare dso_local i32 @play_break_through_n(i32, i32, ...) #1

declare dso_local void @amalgamate_most_valuable_helper(i32, i32, i32) #1

declare dso_local void @join_dragons(i32, i32) #1

declare dso_local i32 @is_suicide(i32, i32) #1

declare dso_local i32 @not_lunch_helper(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
