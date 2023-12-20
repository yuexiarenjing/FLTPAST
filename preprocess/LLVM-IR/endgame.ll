; ModuleID = 'endgame.c'
source_filename = "endgame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.dfa_rt = type opaque
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.dragon_data = type { i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.influence_data = type opaque
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }

@endpat = internal global [96 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat0, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 4062464, i32 -1057951664, i32 -51380224, i32 1010568192, i32 -252657664, i32 -46333952, i32 205274132, i32 15793152], [8 x i32] [i32 1310720, i32 1052672, i32 5242880, i32 269484032, i32 269484032, i32 1310720, i32 1052672, i32 5242880], i32 4101, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat0, i32 0, float 0x3FCE282400000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat1, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 4062464, i32 -1057951664, i32 -51380224, i32 1010568192, i32 -252657664, i32 -46333952, i32 205274132, i32 15793152], [8 x i32] [i32 1310720, i32 1052672, i32 5242880, i32 269484032, i32 269484032, i32 1310720, i32 1052672, i32 5242880], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat1, i32 0, float 0x3FD75F6FE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @endpat2, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 686, [8 x i32] [i32 4136767, i32 7401712, i32 -789577728, i32 1060569088, i32 -261095424, i32 524222464, i32 3620671, i32 15782128], [8 x i32] [i32 1705216, i32 1073248, i32 1083179008, i32 605028352, i32 1611661312, i32 85590016, i32 1057828, i32 9453568], i32 67108869, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat2, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @endpat3, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1705216, i32 1073248, i32 1083179008, i32 605028352, i32 1611661312, i32 85590016, i32 1057828, i32 9453568], i32 67108869, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat3, i32 0, float 0x3FCE282400000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat4, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1705216, i32 1073248, i32 1083179008, i32 605028352, i32 1611661312, i32 85590016, i32 1057828, i32 9453568], i32 67108869, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat4, i32 0, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat5, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 2, i32 759, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2426880, i32 2134032, i32 -2141192192, i32 404750336, i32 -1876951040, i32 136642560, i32 2103312, i32 6324224], i32 603983877, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat5, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat6, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 722, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @endpat7, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 4, i32 1, i32 5, i32 2, i32 759, [8 x i32] [i32 16776960, i32 -252645136, i32 -50593792, i32 1010580480, i32 -252645376, i32 -65536, i32 1010580540, i32 16579584], [8 x i32] [i32 1376256, i32 1052688, i32 5242880, i32 269484032, i32 269484032, i32 1376256, i32 1052688, i32 5242880], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat7, i32 0, float 0x3FF2F9DB20000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat8, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 0, i32 685, [8 x i32] [i32 15793152, i32 -252657664, i32 -12845056, i32 205274124, i32 -1057951552, i32 -51380224, i32 1010568192, i32 3997440], [8 x i32] [i32 2097152, i32 2097152, i32 18874368, i32 2097156, i32 2097216, i32 2097152, i32 2097152, i32 2097408], i32 67108885, float 0.000000e+00, float 0.000000e+00, float 7.500000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat8, i32 3, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat9, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 2, i32 759, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1441792, i32 1052704, i32 5242880, i32 269484032, i32 269484032, i32 1441792, i32 1052704, i32 5242880], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat9, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @endpat10, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 -3, i32 2, i32 1, i32 2, i32 4, i32 2, i32 612, [8 x i32] [i32 3210480, i32 -1057964032, i32 -13631488, i32 205459215, i32 -1057963840, i32 -63963136, i32 255790080, i32 3211071], [8 x i32] [i32 2129920, i32 -2145386496, i32 169869312, i32 2099208, i32 2130048, i32 -2145386496, i32 136314880, i32 2099712], i32 603983877, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 7.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat10, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat11, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat11, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat12, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 3997440, i32 -1057951552, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12845056, i32 205274124, i32 15793152], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat12, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat13, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 3, i32 1, i32 4, i32 2, i32 722, [8 x i32] [i32 4194048, i32 -1057951504, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12648448, i32 205274172, i32 15793152], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat13, i32 0, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat14, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 2, i32 1, i32 4, i32 2, i32 722, [8 x i32] [i32 16580352, i32 -252645184, i32 -65536, i32 1010580540, i32 -252645136, i32 -262144, i32 1010580492, i32 16776960], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat14, i32 0, float 0x3FF4FDF3C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat15, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 9, i32 683, [8 x i32] [i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584, i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480], [8 x i32] [i32 1073152, i32 1083179008, i32 605028352, i32 1573888, i32 9453568, i32 1611661312, i32 68681728, i32 1057792], i32 16385, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat15, i32 0, float 0x3FFF5C2900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat16, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 3996672, i32 -1057951744, i32 -51380224, i32 1010568192, i32 -252657664, i32 -63176704, i32 205274112, i32 15793152], [8 x i32] [i32 2637824, i32 1075847168, i32 77594624, i32 538969088, i32 538984448, i32 1076363264, i32 69214208, i32 10486784], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat16, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat17, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 2, i32 759, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1704960, i32 1073184, i32 1083179008, i32 605028352, i32 1611661312, i32 68812800, i32 1057824, i32 9453568], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat17, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat18, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 2, i32 759, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1704960, i32 1073184, i32 1083179008, i32 605028352, i32 1611661312, i32 68812800, i32 1057824, i32 9453568], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat18, i32 0, float 0x3FD75F6FE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat19, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 3996672, i32 -1057951744, i32 -51380224, i32 1010568192, i32 -252657664, i32 -63176704, i32 205274112, i32 15793152], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat19, i32 3, float 0x3FE2F1AA00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat20, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 722, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2232320, i32 6291488, i32 270532608, i32 2359296, i32 6291456, i32 270663680, i32 2359328, i32 2101248], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat20, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat21, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 722, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 4101, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat22, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 722, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat22, i32 0, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat23, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 722, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat23, i32 0, float 0x3FF1893740000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat24, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 722, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1638400, i32 1056784, i32 9437184, i32 537919488, i32 537919488, i32 1638400, i32 1056784, i32 9437184], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat25, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.25, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 10, i32 686, [8 x i32] [i32 15793396, i32 -252657664, i32 -63176704, i32 222248704, i32 -1057951744, i32 -51380224, i32 1061096704, i32 3996796], [8 x i32] [i32 1054720, i32 5275648, i32 -1877999616, i32 135528448, i32 -2142240768, i32 403701760, i32 1312768, i32 1085440], i32 67145733, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @endpat26, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 10, i32 649, [8 x i32] [i32 8191228, i32 -789516288, i32 -720896, i32 1061101343, i32 -252653360, i32 -58982400, i32 524238592, i32 16121855], [8 x i32] [i32 2396160, i32 -2141188096, i32 408944640, i32 270796800, i32 274759680, i32 -1876688896, i32 136581120, i32 6297600], i32 1140887557, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat27, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 10, i32 722, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat27, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat28, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 10, i32 722, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 67112981, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat28, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat29, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 10, i32 686, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 1597440, i32 1083187200, i32 613416960, i32 538444800, i32 546324480, i32 1612185600, i32 68689920, i32 9446400], i32 16781333, float 1.500000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat29, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat30, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 10, i32 722, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat30, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat31, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 10, i32 722, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat32, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 10, i32 685, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 1574400, i32 1073280, i32 1083179008, i32 605028352, i32 1611661312, i32 102236160, i32 1057800, i32 9453568], i32 67108868, float 0.000000e+00, float 0.000000e+00, float 0x3FE3333340000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat32, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat33, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 10, i32 722, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 2363648, i32 6295616, i32 274726912, i32 270794752, i32 274726912, i32 287571968, i32 2363396, i32 6295552], i32 67108868, float 0.000000e+00, float 0.000000e+00, float 0x3FE3333340000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat33, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat34, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 10, i32 722, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 1581568, i32 9445504, i32 546308096, i32 538443776, i32 546308096, i32 571998208, i32 1581064, i32 9445376], i32 67108881, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat34, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat35, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 10, i32 685, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 2361600, i32 2134080, i32 -2141192192, i32 404750336, i32 -1876951040, i32 153354240, i32 2103300, i32 6324224], i32 67108881, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat35, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat36, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 10, i32 647, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 1085472, i32 -2142240768, i32 403701760, i32 1443840, i32 5275648, i32 -1877999616, i32 135659520, i32 1054752], i32 603979781, float 0.000000e+00, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat37, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 10, i32 649, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 2121744, i32 1084227584, i32 606076928, i32 2688000, i32 10502144, i32 1612709888, i32 69795840, i32 2106384], i32 1140850693, float 0.000000e+00, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat38, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 10, i32 723, [8 x i32] [i32 15793404, i32 -252657664, i32 -63176704, i32 255803136, i32 -1057951744, i32 -51380224, i32 1061097216, i32 3996924], [8 x i32] [i32 2122768, i32 1084243968, i32 1679818752, i32 69796864, i32 1084243968, i32 1679818752, i32 69796864, i32 2122768], i32 67108869, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @endpat39, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 10, i32 648, [8 x i32] [i32 7404796, i32 -789528576, i32 -63700992, i32 255794944, i32 -1057959936, i32 -59768832, i32 524226304, i32 3472636], [8 x i32] [i32 2103320, i32 6324224, i32 -1876951040, i32 170196992, i32 -2141192192, i32 404750336, i32 2427392, i32 2134160], i32 67145733, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat40, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 685, [8 x i32] [i32 3997440, i32 -1057951552, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12845056, i32 205274124, i32 15793152], [8 x i32] [i32 1590784, i32 1074815104, i32 1150287872, i32 605029376, i32 1611677696, i32 1175977984, i32 68166664, i32 9454592], i32 67108868, float 0.000000e+00, float 0.000000e+00, float 0x3FE3333340000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat40, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat41, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 722, [8 x i32] [i32 3997440, i32 -1057951552, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12845056, i32 205274124, i32 15793152], [8 x i32] [i32 1597952, i32 1083187328, i32 613416960, i32 538444800, i32 546324480, i32 1645740032, i32 68689928, i32 9446400], i32 67108881, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat41, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat42, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0), i32 -1, i32 -2, i32 0, i32 0, i32 1, i32 2, i32 2, i32 610, [8 x i32] [i32 -252706816, i32 1010565120, i32 4144896, i32 15790320, i32 3947580, i32 15790080, i32 -252706816, i32 1061093376], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 67112961, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat42, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat43, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -13631488, i32 255790863, i32 -1057963840, i32 -63963136, i32 255790848, i32 3211263], [8 x i32] [i32 1083392, i32 -2146402304, i32 -2012217344, i32 135268352, i32 -2146402304, i32 -2012217344, i32 135268352, i32 1083392], i32 603979781, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 5.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat43, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat44, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 8, i32 685, [8 x i32] [i32 15793396, i32 -252657664, i32 -63176704, i32 222248704, i32 -1057951744, i32 -51380224, i32 1061096704, i32 3996796], [8 x i32] [i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.500000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat45, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 8, i32 685, [8 x i32] [i32 15790320, i32 -252706816, i32 1010565120, i32 4144896, i32 15790080, i32 -252706816, i32 1061093376, i32 3947580], [8 x i32] [i32 2097168, i32 2097152, i32 2097152, i32 2162688, i32 2097152, i32 2097152, i32 2162688, i32 2097168], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat45, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @endpat46, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 88030976, i32 15791348, i32 -252690432, i32 2084306944, i32 -185597952, i32 1061094656, i32 3964028, i32 1089531904], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat46, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat47, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1180160, i32 1048736, i32 1048576, i32 1048576, i32 1048576, i32 34734080, i32 1048616, i32 1048576], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat47, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat48, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 759, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2626560, i32 6316032, i32 1352663040, i32 606339072, i32 1616904192, i32 338165760, i32 2368512, i32 10506240], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat49, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 759, [8 x i32] [i32 3620671, i32 15782128, i32 -261095424, i32 524222464, i32 -789577728, i32 1060569088, i32 4136767, i32 7401712], [8 x i32] [i32 1054720, i32 5275648, i32 -1877999616, i32 135528448, i32 -2142240768, i32 403701760, i32 1312768, i32 1085440], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 8.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat49, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat50, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 2232576, i32 6291552, i32 270532608, i32 2359296, i32 6291456, i32 287440896, i32 2359332, i32 2101248], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat50, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat51, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 1122816, i32 9437328, i32 537919488, i32 1572864, i32 9437184, i32 571539456, i32 1572888, i32 1056768], i32 603983877, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat51, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @endpat52, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 722, [8 x i32] [i32 3997695, i32 -1057951552, i32 -51380224, i32 1061097219, i32 -252657664, i32 -12845056, i32 255803151, i32 15793407], [8 x i32] [i32 2379776, i32 1080037376, i32 341835776, i32 270795778, i32 274743296, i32 1344536576, i32 69472256, i32 6296578], i32 4101, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat52, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @endpat53, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 1, i32 3, i32 3, i32 2, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -63963136, i32 255790851, i32 -1057964032, i32 -63963136, i32 255790848, i32 3210495], [8 x i32] [i32 2131008, i32 -2145370112, i32 1210056704, i32 69208321, i32 1075871744, i32 -2078277632, i32 153093120, i32 2115589], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 4.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat53, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat54, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 4132623, i32 3207408, i32 -1058013184, i32 1060110336, i32 -265289728, i32 255787008, i32 3161919, i32 15777984], [8 x i32] [i32 1181704, i32 1081376, i32 -2146435072, i32 168820736, i32 -2146435072, i32 135397376, i32 1051168, i32 1081472], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat54, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat55, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 722, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 1073741829, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 4.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat55, i32 0, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat56, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1074790400, i32 68157440, i32 1049600, i32 1064960], i32 1073741825, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat56, i32 0, float 0x3FEF62B6A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat57, i32 0, i32 0), i32 8, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 685, [8 x i32] [i32 3997500, i32 -1057951552, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12845056, i32 205471500, i32 15793392], [8 x i32] [i32 1590808, i32 1074815104, i32 1150287872, i32 638649344, i32 1611677696, i32 1175977984, i32 68232712, i32 9454736], i32 67108868, float 0.000000e+00, float 0.000000e+00, float 0x3FE3333340000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat57, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat58, i32 0, i32 0), i32 8, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 722, [8 x i32] [i32 3997500, i32 -1057951552, i32 -51380224, i32 1061096448, i32 -252657664, i32 -12845056, i32 205471500, i32 15793392], [8 x i32] [i32 1597976, i32 1083187328, i32 613416960, i32 572064768, i32 546324480, i32 1645740032, i32 68755976, i32 9446544], i32 67108881, float 0.000000e+00, float 0.000000e+00, float 5.000000e-01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat58, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat59, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.59, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1061109504, i32 16579836, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061109504, i32 16579836, i32 -252645376], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat60, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 648, [8 x i32] [i32 3207408, i32 -1058013184, i32 1060110336, i32 4132620, i32 15777984, i32 -265289728, i32 255787008, i32 3161916], [8 x i32] [i32 2097168, i32 2097152, i32 18874368, i32 2162692, i32 2097216, i32 2097152, i32 2162688, i32 2097424], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat60, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat61, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.61, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 648, [8 x i32] [i32 3207408, i32 -1058013184, i32 1060110336, i32 4132621, i32 15777984, i32 -265289728, i32 255787008, i32 3161917], [8 x i32] [i32 2097168, i32 2097152, i32 18874368, i32 2162692, i32 2097216, i32 2097152, i32 2162688, i32 2097424], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat61, i32 3, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @endpat62, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.62, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 3161088, i32 15777792, i32 -265289728, i32 205258752, i32 -1058013184, i32 1009778688, i32 3935232, i32 3207168], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat63, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 648, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 67112997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat63, i32 3, float 0x3FE3A29C80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @endpat64, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 721, [8 x i32] [i32 4128768, i32 3158064, i32 15728640, i32 808452096, i32 808452096, i32 4128768, i32 3158064, i32 15728640], [8 x i32] [i32 2162688, i32 2097168, i32 2097152, i32 2097152, i32 2097152, i32 2162688, i32 2097168, i32 2097152], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 0x3FB99999A0000000, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat65, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2228241, i32 2097184, i32 2097152, i32 2162688, i32 2097152, i32 2228224, i32 2162721, i32 2097168], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat65, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat66, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.66, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2228241, i32 2097184, i32 2097152, i32 2162688, i32 2097152, i32 2228224, i32 2162721, i32 2097168], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat66, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat67, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 15793404, i32 -252657664, i32 -63176704, i32 255803136, i32 -1057951744, i32 -51380224, i32 1061097216, i32 3996924], [8 x i32] [i32 2097284, i32 2097152, i32 2097152, i32 18874880, i32 2097152, i32 2097152, i32 35651840, i32 2097224], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat67, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @endpat68, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 3948351, i32 15790272, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060896768, i32 4144911, i32 15790320], [8 x i32] [i32 2621473, i32 2105344, i32 10485760, i32 539099136, i32 538968064, i32 2621440, i32 2236417, i32 10485792], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat68, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat69, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.69, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 15793344, i32 -252657664, i32 -63176704, i32 205274880, i32 -1057951744, i32 -51380224, i32 1060899840, i32 3996684], [8 x i32] [i32 2098304, i32 2113536, i32 1075838976, i32 69206528, i32 1075838976, i32 69206016, i32 35652608, i32 2113544], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat69, i32 3, float 0x3FA16872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat70, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 15793344, i32 -252657664, i32 -63176704, i32 205274880, i32 -1057951744, i32 -51380224, i32 1060899840, i32 3996684], [8 x i32] [i32 1050688, i32 1081344, i32 -2146435072, i32 135266560, i32 -2146435072, i32 135266304, i32 17827840, i32 1081348], i32 1140854789, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat70, i32 0, float 0x3FA16872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat71, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.71, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 722, [8 x i32] [i32 3947548, i32 15790080, i32 -252706816, i32 1060962304, i32 -252706816, i32 1010565120, i32 4013824, i32 15790288], [8 x i32] [i32 2359304, i32 2101248, i32 6291456, i32 304087040, i32 270532608, i32 2359296, i32 2101760, i32 6291584], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat71, i32 3, float 0x3FA16872C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat72, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 722, [8 x i32] [i32 3947564, i32 15790080, i32 -252706816, i32 1061027840, i32 -252706816, i32 1010565120, i32 4079360, i32 15790304], [8 x i32] [i32 1572868, i32 1056768, i32 9437184, i32 554696704, i32 537919488, i32 1572864, i32 1057024, i32 9437248], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat72, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat73, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.73, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 205471488, i32 15793392, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061096448, i32 3996732, i32 -1057951744], [8 x i32] [i32 2232576, i32 6291552, i32 270532608, i32 2359296, i32 6291456, i32 287440896, i32 2359332, i32 2101248], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat73, i32 3, float 0x3FD8106240000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat74, i32 0, i32 0), i32 5, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 205458432, i32 3210288, i32 -1057964032, i32 -63963136, i32 -63963136, i32 205458432, i32 3210288, i32 -1057964032], [8 x i32] [i32 1116160, i32 1081360, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135331840, i32 1050640, i32 1081344], i32 1140854821, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat74, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat75, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 222235648, i32 3210292, i32 -1057964032, i32 -63963136, i32 -63963136, i32 205458688, i32 3210352, i32 -1057964032], [8 x i32] [i32 1116160, i32 1081360, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135331840, i32 1050640, i32 1081344], i32 1140854821, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat75, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat76, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 490671104, i32 3472436, i32 -1057959936, i32 -59768832, i32 -63700992, i32 205462784, i32 7404656, i32 -789528576], [8 x i32] [i32 1116160, i32 1081360, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135331840, i32 1050640, i32 1081344], i32 1140854821, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat76, i32 0, float 0x3F964840E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat77, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.77, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 647, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 1590272, i32 1074814976, i32 1150287872, i32 605029376, i32 1611677696, i32 1142423552, i32 68166656, i32 9454592], i32 1140854821, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat77, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @endpat78, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.78, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 0, i32 685, [8 x i32] [i32 3210492, i32 -1057964032, i32 -63963136, i32 255790848, i32 -1057964032, i32 -63963136, i32 255790848, i32 3210492], [8 x i32] [i32 2097220, i32 2097152, i32 2097152, i32 18874624, i32 2097152, i32 2097152, i32 18874624, i32 2097220], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @endpat79, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i32 0, i32 0, i32 3, i32 2, i32 3, i32 2, i32 0, i32 685, [8 x i32] [i32 3161407, i32 15777856, i32 -265289728, i32 255787008, i32 -1058013184, i32 1026555904, i32 4132615, i32 3207408], [8 x i32] [i32 1050626, i32 1081344, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135266304, i32 1050626, i32 1081344], i32 67112965, float 0.000000e+00, float 0.000000e+00, float 2.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat79, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @endpat80, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 0, i32 648, [8 x i32] [i32 3996924, i32 -1057951744, i32 -1048576, i32 1061097228, i32 -252657472, i32 -63176704, i32 255803136, i32 15794172], [8 x i32] [i32 1573952, i32 1073152, i32 1116733440, i32 605028616, i32 1611661440, i32 68681728, i32 17835008, i32 9454084], i32 67108868, float 0.000000e+00, float 0.000000e+00, float 4.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat80, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat81, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.81, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1189888, i32 9469984, i32 -1609564160, i32 135790592, i32 -2138046464, i32 672268288, i32 1574944, i32 1089536], i32 67108869, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat81, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat82, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1122816, i32 9437328, i32 537919488, i32 1572864, i32 9437184, i32 571539456, i32 1572888, i32 1056768], i32 4101, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat83, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.83, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 1061096448, i32 3996732, i32 -1057951744, i32 -51380224, i32 -63176704, i32 205471488, i32 15793392, i32 -252657664], [8 x i32] [i32 2229248, i32 2113568, i32 1075838976, i32 69206016, i32 1075838976, i32 69337088, i32 2098208, i32 2113536], i32 67108864, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat83, i32 3, float 0x4008147AE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat84, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.84, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 722, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1572880, i32 1056768, i32 9437184, i32 537985024, i32 537919488, i32 1572864, i32 1122304, i32 9437200], i32 67112997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat84, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat85, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 0, i32 2, i32 1, i32 2, i32 1, i32 0, i32 722, [8 x i32] [i32 3947580, i32 15790080, i32 -252706816, i32 1061093376, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320], [8 x i32] [i32 1572880, i32 1056768, i32 9437184, i32 537985024, i32 537919488, i32 1572864, i32 1122304, i32 9437200], i32 4133, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @endpat86, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.86, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2232832, i32 6291616, i32 270532608, i32 2359296, i32 6291456, i32 304218112, i32 2359336, i32 2101248], i32 4101, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat86, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @endpat87, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.87, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 0, i32 2, i32 2, i32 0, i32 647, [8 x i32] [i32 15740928, i32 821035008, i32 809238528, i32 3944448, i32 15740928, i32 821035008, i32 809238528, i32 3944448], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 603983909, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 3.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat87, i32 3, float 0x3FC35FC3C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat88, i32 0, i32 0), i32 5, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.88, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 4131852, i32 3207216, i32 -1058013184, i32 1060110336, i32 -265289728, i32 205455360, i32 3161904, i32 15777984], [8 x i32] [i32 2228228, i32 2097184, i32 2097152, i32 18874368, i32 2097152, i32 2228224, i32 2097440, i32 2097216], i32 4101, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @endpat89, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.89, i32 0, i32 0), i32 0, i32 0, i32 0, i32 3, i32 0, i32 3, i32 0, i32 721, [8 x i32] [i32 4128768, i32 3158064, i32 15728640, i32 808452096, i32 808452096, i32 4128768, i32 3158064, i32 15728640], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 0, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat89, i32 0, float 0x400EA7EFA0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat90, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 4144128, i32 15790128, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010761728, i32 3947568, i32 15790080], [8 x i32] [i32 2164736, i32 2129936, i32 -2145386496, i32 136314880, i32 -2145386496, i32 136380416, i32 2099216, i32 2129920], i32 67112997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat90, i32 3, float 0x3F92988900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat91, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 648, [8 x i32] [i32 15790272, i32 -252706816, i32 1060896768, i32 3948303, i32 15790272, i32 -252706816, i32 1060896768, i32 3948303], [8 x i32] [i32 1048704, i32 1048576, i32 34603008, i32 1049096, i32 1048704, i32 1048576, i32 34603008, i32 1049096], i32 67112997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat91, i32 0, float 0x3F92988900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @endpat92, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.92, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 4144128, i32 15790128, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010761728, i32 3947568, i32 15790080], [8 x i32] [i32 1180672, i32 1064992, i32 1074790400, i32 68157440, i32 1074790400, i32 68288512, i32 1049632, i32 1064960], i32 67112997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat92, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat93, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.93, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 648, [8 x i32] [i32 15790272, i32 -252706816, i32 1060896768, i32 3948303, i32 15790272, i32 -252706816, i32 1060896768, i32 3948303], [8 x i32] [i32 2097216, i32 2097152, i32 18874368, i32 2097412, i32 2097216, i32 2097152, i32 18874368, i32 2097412], i32 67112997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat93, i32 3, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @endpat94, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 15790272, i32 -252706816, i32 1060896768, i32 3948303, i32 15790272, i32 -252706816, i32 1060896768, i32 3948303], [8 x i32] [i32 2097216, i32 2097152, i32 18874368, i32 2097412, i32 2097216, i32 2097152, i32 18874368, i32 2097412], i32 67112997, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperendpat94, i32 3, float 0x3FCDB22D00000000 }, %struct.pattern zeroinitializer], align 16
@endpat_db = dso_local global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([96 x %struct.pattern], [96 x %struct.pattern]* @endpat, i32 0, i32 0), %struct.dfa_rt* null }, align 8
@endpat0 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str = private unnamed_addr constant [4 x i8] c"EE1\00", align 1
@endpat1 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.1 = private unnamed_addr constant [5 x i8] c"EE1a\00", align 1
@endpat2 = internal global [12 x %struct.patval] [%struct.patval { i32 796, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"EE2\00", align 1
@endpat3 = internal global [12 x %struct.patval] [%struct.patval { i32 796, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"EE2b\00", align 1
@endpat4 = internal global [9 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"EE2c\00", align 1
@endpat5 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"EE4\00", align 1
@endpat6 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [4 x i8] c"EE5\00", align 1
@endpat7 = internal global [12 x %struct.patval] [%struct.patval { i32 832, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 833, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [4 x i8] c"EE6\00", align 1
@endpat8 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"EE7\00", align 1
@endpat9 = internal global [8 x %struct.patval] [%struct.patval { i32 795, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"EE101\00", align 1
@endpat10 = internal global [10 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 574, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 575, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.10 = private unnamed_addr constant [6 x i8] c"EE102\00", align 1
@endpat11 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.11 = private unnamed_addr constant [6 x i8] c"EE103\00", align 1
@endpat12 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.12 = private unnamed_addr constant [6 x i8] c"EE104\00", align 1
@endpat13 = internal global [9 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.13 = private unnamed_addr constant [6 x i8] c"EE105\00", align 1
@endpat14 = internal global [9 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"EE106\00", align 1
@endpat15 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.15 = private unnamed_addr constant [6 x i8] c"EE107\00", align 1
@endpat16 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.16 = private unnamed_addr constant [6 x i8] c"EE201\00", align 1
@endpat17 = internal global [8 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"EE202\00", align 1
@endpat18 = internal global [8 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.18 = private unnamed_addr constant [6 x i8] c"EE203\00", align 1
@endpat19 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.19 = private unnamed_addr constant [6 x i8] c"EE204\00", align 1
@endpat20 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.20 = private unnamed_addr constant [6 x i8] c"EE205\00", align 1
@endpat21 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"EE206\00", align 1
@endpat22 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.22 = private unnamed_addr constant [6 x i8] c"EE301\00", align 1
@endpat23 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.23 = private unnamed_addr constant [6 x i8] c"EE302\00", align 1
@endpat24 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.24 = private unnamed_addr constant [6 x i8] c"EE303\00", align 1
@endpat25 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.25 = private unnamed_addr constant [6 x i8] c"EE401\00", align 1
@endpat26 = internal global [12 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.26 = private unnamed_addr constant [6 x i8] c"EE402\00", align 1
@endpat27 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.27 = private unnamed_addr constant [6 x i8] c"EE403\00", align 1
@endpat28 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.28 = private unnamed_addr constant [6 x i8] c"EE404\00", align 1
@endpat29 = internal global [9 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.29 = private unnamed_addr constant [7 x i8] c"EE404b\00", align 1
@endpat30 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.30 = private unnamed_addr constant [6 x i8] c"EE405\00", align 1
@endpat31 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.31 = private unnamed_addr constant [6 x i8] c"EE406\00", align 1
@endpat32 = internal global [5 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.32 = private unnamed_addr constant [6 x i8] c"EE407\00", align 1
@endpat33 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.33 = private unnamed_addr constant [6 x i8] c"EE408\00", align 1
@endpat34 = internal global [5 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.34 = private unnamed_addr constant [6 x i8] c"EE409\00", align 1
@endpat35 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.35 = private unnamed_addr constant [6 x i8] c"EE410\00", align 1
@endpat36 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.36 = private unnamed_addr constant [6 x i8] c"EE411\00", align 1
@endpat37 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.37 = private unnamed_addr constant [6 x i8] c"EE412\00", align 1
@endpat38 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.38 = private unnamed_addr constant [6 x i8] c"EE413\00", align 1
@endpat39 = internal global [11 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 724, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.39 = private unnamed_addr constant [6 x i8] c"EE414\00", align 1
@endpat40 = internal global [6 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.40 = private unnamed_addr constant [6 x i8] c"EE501\00", align 1
@endpat41 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.41 = private unnamed_addr constant [6 x i8] c"EE502\00", align 1
@endpat42 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.42 = private unnamed_addr constant [6 x i8] c"EE504\00", align 1
@endpat43 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.43 = private unnamed_addr constant [6 x i8] c"EE601\00", align 1
@endpat44 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.44 = private unnamed_addr constant [6 x i8] c"EE801\00", align 1
@endpat45 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.45 = private unnamed_addr constant [6 x i8] c"EE802\00", align 1
@endpat46 = internal global [10 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.46 = private unnamed_addr constant [6 x i8] c"EE803\00", align 1
@endpat47 = internal global [6 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.47 = private unnamed_addr constant [6 x i8] c"EE804\00", align 1
@endpat48 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.48 = private unnamed_addr constant [6 x i8] c"EE805\00", align 1
@endpat49 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.49 = private unnamed_addr constant [6 x i8] c"EE851\00", align 1
@endpat50 = internal global [7 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.50 = private unnamed_addr constant [6 x i8] c"EE901\00", align 1
@endpat51 = internal global [7 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.51 = private unnamed_addr constant [6 x i8] c"EE902\00", align 1
@endpat52 = internal global [11 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 612, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.52 = private unnamed_addr constant [6 x i8] c"EE903\00", align 1
@endpat53 = internal global [12 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 612, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.53 = private unnamed_addr constant [7 x i8] c"EE1002\00", align 1
@endpat54 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.54 = private unnamed_addr constant [7 x i8] c"EE1003\00", align 1
@endpat55 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.55 = private unnamed_addr constant [6 x i8] c"EF101\00", align 1
@endpat56 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.56 = private unnamed_addr constant [6 x i8] c"EF102\00", align 1
@endpat57 = internal global [8 x %struct.patval] [%struct.patval { i32 723, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.57 = private unnamed_addr constant [4 x i8] c"CE1\00", align 1
@endpat58 = internal global [8 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.58 = private unnamed_addr constant [4 x i8] c"CE2\00", align 1
@endpat59 = internal global [9 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.59 = private unnamed_addr constant [4 x i8] c"CE3\00", align 1
@endpat60 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.60 = private unnamed_addr constant [5 x i8] c"CE4a\00", align 1
@endpat61 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 612, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.61 = private unnamed_addr constant [5 x i8] c"CE4b\00", align 1
@endpat62 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.62 = private unnamed_addr constant [4 x i8] c"CE6\00", align 1
@endpat63 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.63 = private unnamed_addr constant [4 x i8] c"CE9\00", align 1
@endpat64 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.64 = private unnamed_addr constant [5 x i8] c"CE12\00", align 1
@endpat65 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.65 = private unnamed_addr constant [5 x i8] c"CE13\00", align 1
@endpat66 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.66 = private unnamed_addr constant [5 x i8] c"CE14\00", align 1
@endpat67 = internal global [8 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.67 = private unnamed_addr constant [5 x i8] c"CE15\00", align 1
@endpat68 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.68 = private unnamed_addr constant [6 x i8] c"CE15b\00", align 1
@endpat69 = internal global [6 x %struct.patval] [%struct.patval { i32 649, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.69 = private unnamed_addr constant [5 x i8] c"CE16\00", align 1
@endpat70 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.70 = private unnamed_addr constant [6 x i8] c"CE16b\00", align 1
@endpat71 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.71 = private unnamed_addr constant [5 x i8] c"CE17\00", align 1
@endpat72 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 686, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.72 = private unnamed_addr constant [5 x i8] c"CE18\00", align 1
@endpat73 = internal global [7 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.73 = private unnamed_addr constant [5 x i8] c"CE19\00", align 1
@endpat74 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.74 = private unnamed_addr constant [6 x i8] c"CE20a\00", align 1
@endpat75 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.75 = private unnamed_addr constant [6 x i8] c"CE20b\00", align 1
@endpat76 = internal global [7 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.76 = private unnamed_addr constant [6 x i8] c"CE20c\00", align 1
@endpat77 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.77 = private unnamed_addr constant [5 x i8] c"CE21\00", align 1
@endpat78 = internal global [10 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 724, i32 4 }, %struct.patval { i32 687, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.78 = private unnamed_addr constant [5 x i8] c"CE22\00", align 1
@endpat79 = internal global [10 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 724, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 761, i32 2 }, %struct.patval { i32 687, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.79 = private unnamed_addr constant [5 x i8] c"CE23\00", align 1
@endpat80 = internal global [9 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.80 = private unnamed_addr constant [5 x i8] c"CE24\00", align 1
@endpat81 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.81 = private unnamed_addr constant [5 x i8] c"CE25\00", align 1
@endpat82 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.82 = private unnamed_addr constant [5 x i8] c"CE26\00", align 1
@endpat83 = internal global [7 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.83 = private unnamed_addr constant [5 x i8] c"CE27\00", align 1
@endpat84 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.84 = private unnamed_addr constant [5 x i8] c"CE28\00", align 1
@endpat85 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.85 = private unnamed_addr constant [6 x i8] c"CE28b\00", align 1
@endpat86 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.86 = private unnamed_addr constant [5 x i8] c"CE29\00", align 1
@endpat87 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.87 = private unnamed_addr constant [5 x i8] c"CE30\00", align 1
@endpat88 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.88 = private unnamed_addr constant [5 x i8] c"CE31\00", align 1
@endpat89 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.89 = private unnamed_addr constant [4 x i8] c"CF3\00", align 1
@endpat90 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.90 = private unnamed_addr constant [4 x i8] c"EY1\00", align 1
@endpat91 = internal global [7 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 649, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.91 = private unnamed_addr constant [4 x i8] c"EY2\00", align 1
@endpat92 = internal global [5 x %struct.patval] [%struct.patval { i32 758, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.92 = private unnamed_addr constant [4 x i8] c"EY3\00", align 1
@endpat93 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.93 = private unnamed_addr constant [4 x i8] c"EY4\00", align 1
@endpat94 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.94 = private unnamed_addr constant [4 x i8] c"EY5\00", align 1
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@stackp = external dso_local global i32, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@dragon = external dso_local global [400 x %struct.dragon_data], align 16
@initial_white_influence = external dso_local global %struct.influence_data, align 1
@initial_black_influence = external dso_local global %struct.influence_data, align 1
@half_eye = external dso_local global [400 x %struct.half_eye_data], align 16
@false_eye_territory = external dso_local global [400 x i32], align 16

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat0(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @is_marginal_eye_space(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @is_proper_eye_space(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @is_proper_eye_space(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 3, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %45, i32 1, i32 1, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %43, %39, %35, %4
  %52 = phi i1 [ false, %39 ], [ false, %35 ], [ false, %4 ], [ %50, %43 ]
  %53 = zext i1 %52 to i32
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat1(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @is_marginal_eye_space(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %59

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @is_proper_eye_space(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @is_proper_eye_space(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %39
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 3, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %45, i32 1, i32 2, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 3, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 1, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %51, %43, %39, %35, %4
  %60 = phi i1 [ false, %43 ], [ false, %39 ], [ false, %35 ], [ false, %4 ], [ %58, %51 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat2(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat3(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %16
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
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %28
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
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @is_marginal_eye_space(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @is_proper_eye_space(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @is_proper_eye_space(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 3, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %52, i32 1, i32 1, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %50, %46, %42, %4
  %58 = phi i1 [ false, %46 ], [ false, %42 ], [ false, %4 ], [ %56, %50 ]
  %59 = zext i1 %58 to i32
  ret i32 %59
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat4(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 796), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, ...) @somewhere(i32 %33, i32 1, i32 2, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 1, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %45, i32 1, i32 3, i32 %46, i32 0, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %44, %38, %4
  %53 = phi i1 [ false, %38 ], [ false, %4 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat5(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @is_marginal_eye_space(i32 %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat7(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %21
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
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @is_proper_eye_space(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %36, i32 1, i32 1, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 5, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 3, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 3, i32 %54, i32 %55, i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %51, %41, %35, %4
  %61 = phi i1 [ false, %41 ], [ false, %35 ], [ false, %4 ], [ %59, %51 ]
  %62 = zext i1 %61 to i32
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat8(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @is_proper_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @safe_move(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %4
  %27 = phi i1 [ false, %4 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat9(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %14
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
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat10(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
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
define internal i32 @autohelperendpat11(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @is_proper_eye_space(i32 %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat12(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %14
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
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat13(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @is_proper_eye_space(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @is_proper_eye_space(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %47, i32 1, i32 3, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %46, %42, %4
  %56 = phi i1 [ false, %42 ], [ false, %4 ], [ %54, %46 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat14(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %28
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
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @is_proper_eye_space(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @is_proper_eye_space(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 3, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %48, i32 1, i32 3, i32 %49, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load i32, i32* %7, align 4
  %58 = sub nsw i32 3, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %58, i32 1, i32 3, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %56, %46, %42, %4
  %67 = phi i1 [ false, %46 ], [ false, %42 ], [ false, %4 ], [ %65, %56 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat15(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %13
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
  %24 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %23, i32 0, i32 18
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %44

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @find_defense(i32 %29, i32* null)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 0, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 3, %40
  %42 = call i32 @safe_move(i32 %39, i32 %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %38, %32, %28, %20
  %45 = phi i1 [ false, %32 ], [ false, %28 ], [ false, %20 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat16(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @max_eye_value(i32 %26)
  %28 = icmp sgt i32 %27, 0
  br label %29

29:                                               ; preds = %25, %21, %4
  %30 = phi i1 [ false, %21 ], [ false, %4 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat17(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_marginal_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat18(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @is_marginal_eye_space(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @is_marginal_eye_space(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %68

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @is_marginal_eye_space(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %51, i32 1, i32 3, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %59, i32 1, i32 3, i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %58, %50
  %67 = phi i1 [ true, %50 ], [ %65, %58 ]
  br label %68

68:                                               ; preds = %66, %46, %42, %4
  %69 = phi i1 [ false, %46 ], [ false, %42 ], [ false, %4 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat19(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %21
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
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @is_marginal_eye_space(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @is_proper_eye_space(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 0, i32 3, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %48, i32 0, i32 3, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %47, %39
  %57 = phi i1 [ true, %39 ], [ %55, %47 ]
  br label %58

58:                                               ; preds = %56, %35, %4
  %59 = phi i1 [ false, %35 ], [ false, %4 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat20(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @is_marginal_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @is_proper_eye_space(i32 %33)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %28, %4
  %37 = phi i1 [ false, %28 ], [ false, %4 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat22(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 2, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %25, %21, %4
  %33 = phi i1 [ false, %21 ], [ false, %4 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat23(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @is_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %33, i32 0, i32 2, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %32, %28, %4
  %41 = phi i1 [ false, %28 ], [ false, %4 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat27(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @is_marginal_eye_space(i32 %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat28(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat29(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @is_marginal_eye_space(i32 %13)
  ret i32 %14
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat30(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat32(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat33(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat34(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat35(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat40(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat41(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat42(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 3, %13
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @whose_moyo(%struct.influence_data* %17, i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %19, %20
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat43(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %28, i32 1, i32 2, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %36

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  call void @add_replacement_move(i32 %34, i32 %35)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat45(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat46(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat47(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  ret i32 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat49(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 2, i32 %19, i32 %20, i32 %21)
  ret i32 %22
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat50(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat51(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat52(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @safe_move(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  ret i32 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat53(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp sgt i32 %19, 3
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat54(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %14
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
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp eq i32 %26, 3
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat55(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 2, i32 %27, i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %25, %21, %4
  %33 = phi i1 [ false, %21 ], [ false, %4 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat56(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @is_proper_eye_space(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %66

35:                                               ; preds = %4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 3, %36
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @whose_territory(%struct.influence_data* %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %46, i32 1, i32 1, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 3, %52
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 1, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 3, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %60, i32 1, i32 1, i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %58, %51, %45, %35, %4
  %67 = phi i1 [ false, %51 ], [ false, %45 ], [ false, %35 ], [ false, %4 ], [ %65, %58 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat57(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat58(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %19
  %21 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %20, i32 0, i32 16
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  ret i32 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat60(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat61(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @is_marginal_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @is_proper_eye_space(i32 %33)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %28, %4
  %37 = phi i1 [ false, %28 ], [ false, %4 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat63(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @safe_move(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 3, %28
  %30 = call i32 @obvious_false_eye(i32 %27, i32 %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %26, %21, %4
  %34 = phi i1 [ false, %21 ], [ false, %4 ], [ %32, %26 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat65(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ true, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat66(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat67(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat68(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat69(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @accuratelib(i32 %26, i32 %27, i32 20, i32* null)
  %29 = icmp sgt i32 %28, 2
  br label %30

30:                                               ; preds = %25, %21, %4
  %31 = phi i1 [ false, %21 ], [ false, %4 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat70(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub nsw i32 3, %27
  %29 = call i32 @accuratelib(i32 %26, i32 %28, i32 20, i32* null)
  %30 = icmp sgt i32 %29, 2
  br label %31

31:                                               ; preds = %25, %21, %4
  %32 = phi i1 [ false, %21 ], [ false, %4 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat71(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @accuratelib(i32 %26, i32 %27, i32 20, i32* null)
  %29 = icmp sgt i32 %28, 2
  br label %30

30:                                               ; preds = %25, %21, %4
  %31 = phi i1 [ false, %21 ], [ false, %4 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat72(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat73(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @is_marginal_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 2, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %32, %28, %4
  %40 = phi i1 [ false, %28 ], [ false, %4 ], [ %38, %32 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat74(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @is_marginal_eye_space(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_proper_eye_space(i32 %22)
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %21, %4
  %26 = phi i1 [ false, %4 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  ret i32 %27
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat75(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @is_marginal_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @is_proper_eye_space(i32 %33)
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %28, %4
  %37 = phi i1 [ false, %28 ], [ false, %4 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat76(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @is_marginal_eye_space(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @is_proper_eye_space(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @is_proper_eye_space(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @is_proper_eye_space(i32 %44)
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %43, %39, %35, %4
  %48 = phi i1 [ false, %39 ], [ false, %35 ], [ false, %4 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat77(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %14
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @countlib(i32 %29)
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  %35 = icmp eq i32 %34, 1
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @whose_territory(%struct.influence_data* %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %39, %40
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %32, %28, %4
  %44 = phi i1 [ false, %28 ], [ false, %4 ], [ %42, %32 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat79(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %14
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
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @is_proper_eye_space(i32 %29)
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat80(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = icmp eq i32 %26, 1
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @whose_moyo(%struct.influence_data* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @countlib(i32 %35)
  %37 = icmp eq i32 %36, 2
  br label %38

38:                                               ; preds = %34, %4
  %39 = phi i1 [ false, %4 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat81(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 2
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat83(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %15
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
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, %struct.influence_data* @initial_white_influence, %struct.influence_data* @initial_black_influence
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @whose_moyo(%struct.influence_data* %36, i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i32, i32, ...) @play_break_through_n(i32 %43, i32 2, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp eq i32 %49, 5
  br label %51

51:                                               ; preds = %42, %4
  %52 = phi i1 [ false, %4 ], [ %50, %42 ]
  %53 = zext i1 %52 to i32
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat84(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_proper_eye_space(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %29, i32 1, i32 2, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %28, %4
  %36 = phi i1 [ false, %4 ], [ %34, %28 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat86(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %25, i32 1, i32 2, i32 %26, i32 %27, i32 %28, i32 %29)
  ret i32 %30
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat87(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %28
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
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 (i32, i32, i32, ...) @somewhere(i32 %39, i32 1, i32 2, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @dragon_weak(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @dragon_weak(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @is_proper_eye_space(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %57, i32 1, i32 1, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br label %62

62:                                               ; preds = %56, %52, %48, %4
  %63 = phi i1 [ false, %52 ], [ false, %48 ], [ false, %4 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  ret i32 %64
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat89(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %66, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %37, i32 0, i32 16
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %34
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [400 x %struct.dragon_data], [400 x %struct.dragon_data]* @dragon, i64 0, i64 %43
  %45 = getelementptr inbounds %struct.dragon_data, %struct.dragon_data* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_connect_n(i32 %49, i32 0, i32 1, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %56, i32 1, i32 3, i32 %57, i32 0, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br label %63

63:                                               ; preds = %55, %48, %41, %34
  %64 = phi i1 [ false, %48 ], [ false, %41 ], [ false, %34 ], [ %62, %55 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %69

66:                                               ; preds = %4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  call void @threaten_to_save_helper(i32 %67, i32 %68)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat90(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_halfeye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @max_eye_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @dragon_weak(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %38, %32, %28, %4
  %44 = phi i1 [ false, %32 ], [ false, %28 ], [ false, %4 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat91(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_halfeye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @max_eye_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @dragon_weak(i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %38, %32, %28, %4
  %44 = phi i1 [ false, %32 ], [ false, %28 ], [ false, %4 ], [ %42, %38 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat92(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @is_halfeye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @max_eye_value(i32 %22)
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %25, %21, %4
  %33 = phi i1 [ false, %21 ], [ false, %4 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat93(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @is_halfeye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @max_eye_value(i32 %22)
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %25, %21, %4
  %33 = phi i1 [ false, %21 ], [ false, %4 ], [ %31, %25 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperendpat94(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %14
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
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @is_halfeye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @max_eye_value(i32 %29)
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 2, i32 %40, i32 %41, i32 %42)
  %44 = icmp eq i32 %43, 5
  br label %45

45:                                               ; preds = %38, %32, %28, %4
  %46 = phi i1 [ false, %32 ], [ false, %28 ], [ false, %4 ], [ %44, %38 ]
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i32 @is_marginal_eye_space(i32) #1

declare dso_local i32 @is_proper_eye_space(i32) #1

declare dso_local i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare dso_local i32 @somewhere(i32, i32, i32, ...) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local i32 @max_eye_value(i32) #1

declare dso_local i32 @is_eye_space(i32) #1

declare dso_local i32 @whose_moyo(%struct.influence_data*, i32) #1

declare dso_local void @add_replacement_move(i32, i32) #1

declare dso_local i32 @whose_territory(%struct.influence_data*, i32) #1

declare dso_local i32 @obvious_false_eye(i32, i32) #1

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

declare dso_local i32 @play_break_through_n(i32, i32, ...) #1

declare dso_local i32 @dragon_weak(i32) #1

declare dso_local i32 @play_connect_n(i32, i32, i32, ...) #1

declare dso_local void @threaten_to_save_helper(i32, i32) #1

declare dso_local i32 @is_halfeye(%struct.half_eye_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
