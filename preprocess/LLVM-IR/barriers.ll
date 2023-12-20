; ModuleID = 'barriers.c'
source_filename = "barriers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern = type { %struct.patval*, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], i32, float, float, float, float, float, float, float, i32, i32 (%struct.pattern*, i32, i32, i32)*, i32 (i32, i32, i32, i32)*, i32, float }
%struct.patval = type { i32, i32 }
%struct.pattern_db = type { i32, i32, %struct.pattern*, %struct.dfa_rt* }
%struct.dfa_rt = type opaque
%struct.worm_data = type { i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32], [10 x i32] }
%struct.half_eye_data = type { float, i8, i32, [4 x i32], i32, [4 x i32] }

@barrierspat = internal global [187 x %struct.pattern] [%struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat0, i32 0, i32 0), i32 3, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 684, [8 x i32] [i32 4128768, i32 3158064, i32 15728640, i32 808452096, i32 808452096, i32 4128768, i32 3158064, i32 15728640], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat1, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 0, i32 685, [8 x i32] [i32 775880704, i32 3685432, i32 15785984, i32 -256901120, i32 1010302976, i32 4140544, i32 11595952, i32 -521142272], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat2, i32 0, i32 0), i32 9, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 356455680, i32 7631988, i32 1357926400, i32 1953759232, i32 1953759232, i32 356455680, i32 7631988, i32 1357926400], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat3, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 0, i32 685, [8 x i32] [i32 1061093376, i32 3947580, i32 15790080, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320, i32 -252706816], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat3, i32 3, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @barrierspat4, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 -1, i32 0, i32 0, i32 0, i32 1, i32 8, i32 721, [8 x i32] [i32 15728640, i32 808452096, i32 3932160, i32 3158016, i32 3158016, i32 15728640, i32 808452096, i32 3932160], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat5, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 7631872, i32 1357926400, i32 1953759232, i32 339481600, i32 1357926400, i32 1953759232, i32 339481600, i32 7631872], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat6, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 2, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat6, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat7, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat7, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat8, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2621440, i32 2105344, i32 10485760, i32 538968064, i32 538968064, i32 2621440, i32 2105344, i32 10485760], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat9, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1064960, i32 1074790400, i32 68157440, i32 1049600, i32 1064960, i32 1074790400, i32 68157440, i32 1049600], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat10, i32 0, i32 0), i32 4, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 2129920, i32 -2145386496, i32 136314880, i32 2099200, i32 2129920, i32 -2145386496, i32 136314880, i32 2099200], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat11, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2363392, i32 6295552, i32 274726912, i32 270794752, i32 274726912, i32 270794752, i32 2363392, i32 6295552], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat12, i32 0, i32 0), i32 4, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1581056, i32 9445376, i32 546308096, i32 538443776, i32 546308096, i32 538443776, i32 1581056, i32 9445376], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat12, i32 0, float 0x4006666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat13, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4132608, i32 3207408, i32 -1058013184, i32 1009778688, i32 -265289728, i32 255787008, i32 3161148, i32 15777792], [8 x i32] [i32 1048832, i32 1048640, i32 1048576, i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat14, i32 0, i32 0), i32 6, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2236928, i32 10485920, i32 538968064, i32 2621440, i32 10485760, i32 572653568, i32 2621480, i32 2105344], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat15, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4079360, i32 15790304, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061027840, i32 3947564, i32 15790080], [8 x i32] [i32 2105856, i32 10485888, i32 538968064, i32 2621440, i32 10485760, i32 572522496, i32 2621448, i32 2105344], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat15, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat16, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 0, i32 685, [8 x i32] [i32 356327189, i32 7664852, i32 -789557248, i32 2104819712, i32 -193724416, i32 524096768, i32 7699805, i32 1357959248], [8 x i32] [i32 2097664, i32 2097280, i32 2097152, i32 2097152, i32 2097152, i32 35651584, i32 2097160, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat17, i32 0, i32 0), i32 6, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2097664, i32 2097280, i32 2097152, i32 2097152, i32 2097152, i32 35651584, i32 2097160, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat17, i32 3, float 0x401A1CAC00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat18, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2228736, i32 2097312, i32 2097152, i32 2097152, i32 2097152, i32 35782656, i32 2097192, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat18, i32 3, float 0x4014A3D700000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat19, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2101760, i32 6291584, i32 270532608, i32 2359296, i32 6291456, i32 304087040, i32 2359304, i32 2101248], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat19, i32 3, float 0x4017851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat20, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 2167296, i32 6291600, i32 270532608, i32 2359296, i32 6291456, i32 304152576, i32 2359320, i32 2101248], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat20, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat21, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat21, i32 0, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat22, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1052672, i32 5242880, i32 269484032, i32 1310720, i32 5242880, i32 269484032, i32 1310720, i32 1052672], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat22, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat23, i32 0, i32 0), i32 16, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 3, i32 4, i32 3, i32 0, i32 686, [8 x i32] [i32 356455685, i32 7632245, i32 1357926464, i32 1970536448, i32 1970536448, i32 356455685, i32 7632245, i32 1357926464], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat24, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 3, i32 2, i32 3, i32 0, i32 685, [8 x i32] [i32 524230400, i32 7666940, i32 -789524480, i32 -59506688, i32 -59506688, i32 524230400, i32 7666940, i32 -789524480], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat24, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([28 x %struct.patval], [28 x %struct.patval]* @barrierspat25, i32 0, i32 0), i32 28, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i32 -2, i32 -1, i32 2, i32 4, i32 4, i32 5, i32 2, i32 723, [8 x i32] [i32 1434410837, i32 1417016821, i32 -722185136, i32 2104841472, i32 -176860160, i32 1602180373, i32 1433763197, i32 1425331284], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat26, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 0, i32 684, [8 x i32] [i32 4136725, i32 7401712, i32 -789577728, i32 1026883584, i32 -261095424, i32 524222464, i32 3489085, i32 15781968], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat26, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat27, i32 0, i32 0), i32 8, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat27, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @barrierspat28, i32 0, i32 0), i32 13, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 0, i32 721, [8 x i32] [i32 4173631, i32 -2135887632, i32 -386924544, i32 1060833280, i32 -256868352, i32 -1354825728, i32 138100543, i32 15788272], [8 x i32] [i32 1048592, i32 1048576, i32 1048576, i32 1114112, i32 1048576, i32 1048576, i32 1114112, i32 1048592], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @barrierspat29, i32 0, i32 0), i32 20, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 -2, i32 0, i32 3, i32 3, i32 5, i32 3, i32 0, i32 686, [8 x i32] [i32 356458261, i32 7665141, i32 -789557184, i32 2104819712, i32 -176947200, i32 524227845, i32 7699837, i32 1357959248], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat30, i32 0, i32 0), i32 8, i32 5, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4136704, i32 7401712, i32 -789577728, i32 1010040832, i32 -261095424, i32 524222464, i32 3423292, i32 15781888], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat30, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat31, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 12105912, i32 -1594843136, i32 -1195900928, i32 708782592, i32 -1594843136, i32 -1195900928, i32 708782592, i32 12105912], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat32, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 7631988, i32 1357926400, i32 1953759232, i32 356455680, i32 1357926400, i32 1953759232, i32 356455680, i32 7631988], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat33, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 2, i32 721, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat33, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat34, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 2, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1312768, i32 1085440, i32 -2142240768, i32 403701760, i32 -1877999616, i32 135528448, i32 1054720, i32 5275648], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @barrierspat35, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 758, [8 x i32] [i32 16711422, i32 -252645216, i32 -50593792, i32 1061109506, i32 -252645376, i32 -16908288, i32 1061109546, i32 16579838], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat36, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 3866366, i32 -1057955680, i32 -55574528, i32 792661760, i32 -521093120, i32 -29753344, i32 255799082, i32 11599100], [8 x i32] [i32 1081344, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 1050624], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat37, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 684, [8 x i32] [i32 4079423, i32 15790304, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061027840, i32 4144943, i32 15790320], [8 x i32] [i32 2361344, i32 2134016, i32 -2141192192, i32 404750336, i32 -1876951040, i32 136577024, i32 2103296, i32 6324224], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat37, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat38, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 4079166, i32 15790240, i32 -252706816, i32 1061093376, i32 -252706816, i32 1044250624, i32 4144938, i32 15790320], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat39, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 4144956, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144956, i32 15790320], [8 x i32] [i32 2425344, i32 2101392, i32 6291456, i32 270532608, i32 270532608, i32 35979264, i32 2101272, i32 6291456], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat39, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @barrierspat40, i32 0, i32 0), i32 15, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 12304319, i32 -1594826512, i32 -122159104, i32 792668672, i32 -521101312, i32 -1078263808, i32 708783935, i32 12122360], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @barrierspat41, i32 0, i32 0), i32 15, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 7831423, i32 1357959408, i32 -193724416, i32 524227840, i32 -789557248, i32 2138505216, i32 356458303, i32 7664884], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat42, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.42, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 684, [8 x i32] [i32 4013887, i32 15790288, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060962304, i32 4144927, i32 15790320], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat42, i32 0, float 0x3FDC5D6380000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat43, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 684, [8 x i32] [i32 4144128, i32 15790128, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010761728, i32 3947568, i32 15790080], [8 x i32] [i32 1638400, i32 1056784, i32 9437184, i32 537919488, i32 537919488, i32 1638400, i32 1056784, i32 9437184], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat43, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([19 x %struct.patval], [19 x %struct.patval]* @barrierspat44, i32 0, i32 0), i32 19, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), i32 0, i32 -3, i32 3, i32 1, i32 3, i32 4, i32 2, i32 795, [8 x i32] [i32 11598072, i32 -521109504, i32 -1086717952, i32 171913007, i32 -2131697440, i32 -122683392, i32 792660480, i32 3850175], [8 x i32] [i32 1048576, i32 1048576, i32 17825792, i32 1048580, i32 1048640, i32 1048576, i32 1048576, i32 1048832], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([19 x %struct.patval], [19 x %struct.patval]* @barrierspat45, i32 0, i32 0), i32 19, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0), i32 0, i32 -3, i32 3, i32 1, i32 3, i32 4, i32 2, i32 795, [8 x i32] [i32 7402740, i32 -789561344, i32 2134179840, i32 88022815, i32 1089523920, i32 -193986560, i32 524223744, i32 3506047], [8 x i32] [i32 2097152, i32 2097152, i32 35651584, i32 2097160, i32 2097280, i32 2097152, i32 2097152, i32 2097664], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat46, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.46, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat46, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat47, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat47, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat48, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 3948288, i32 15790272, i32 -252706816, i32 1010565120, i32 -252706816, i32 1060896768, i32 3947532, i32 15790080], [8 x i32] [i32 1573120, i32 1056832, i32 9437184, i32 537919488, i32 537919488, i32 18350080, i32 1056772, i32 9437184], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat48, i32 0, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @barrierspat49, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 3, i32 2, i32 4, i32 2, i32 721, [8 x i32] [i32 4177855, i32 -2131693328, i32 -118489088, i32 1061095936, i32 -252674048, i32 -1086390272, i32 171917119, i32 15792376], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat50, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 4194302, i32 -1057951504, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12648448, i32 255803198, i32 15793404], [8 x i32] [i32 2179072, i32 1075838992, i32 69206016, i32 2098176, i32 2113536, i32 1075904512, i32 69206032, i32 2098176], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat50, i32 3, float 0x4013333340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat51, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i32 0, i32 0, i32 2, i32 3, i32 2, i32 3, i32 2, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2236416, i32 10485792, i32 538968064, i32 2621440, i32 10485760, i32 539099136, i32 2621472, i32 2105344], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat52, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 0, i32 721, [8 x i32] [i32 16777214, i32 -252645136, i32 -50593792, i32 1061109504, i32 -252645376, i32 -65536, i32 1061109566, i32 16579836], [8 x i32] [i32 2179072, i32 1075838992, i32 69206016, i32 2098176, i32 2113536, i32 1075904512, i32 69206032, i32 2098176], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([28 x %struct.patval], [28 x %struct.patval]* @barrierspat53, i32 0, i32 0), i32 28, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 4, i32 3, i32 6, i32 2, i32 758, [8 x i32] [i32 12304319, i32 -1594826512, i32 -88473600, i32 792668714, i32 -521101152, i32 -1078263808, i32 708783935, i32 12253946], [8 x i32] [i32 1114112, i32 1048592, i32 1048576, i32 1048576, i32 1048576, i32 1114112, i32 1048592, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([35 x %struct.patval], [35 x %struct.patval]* @barrierspat54, i32 0, i32 0), i32 35, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 -1, i32 -2, i32 3, i32 4, i32 4, i32 6, i32 2, i32 759, [8 x i32] [i32 1433894783, i32 1425331444, i32 -176859904, i32 1602180437, i32 -722185132, i32 2138526976, i32 1434410879, i32 1433794037], [8 x i32] [i32 2228224, i32 2097184, i32 2097152, i32 2097152, i32 2097152, i32 2228224, i32 2097184, i32 2097152], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat55, i32 0, i32 0), i32 8, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 3948351, i32 15790272, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060896768, i32 4144911, i32 15790320], [8 x i32] [i32 1048577, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048577, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat56, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.56, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 3161151, i32 15777792, i32 -265289728, i32 255787008, i32 -1058013184, i32 1009778688, i32 4132611, i32 3207408], [8 x i32] [i32 1048577, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048577, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat57, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.57, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 3, i32 1, i32 3, i32 0, i32 685, [8 x i32] [i32 742326272, i32 3685424, i32 15785984, i32 -256901120, i32 1010302976, i32 4140032, i32 11595824, i32 -521142272], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @barrierspat58, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.58, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 2, i32 2, i32 4, i32 2, i32 758, [8 x i32] [i32 16580607, i32 -252645184, i32 -16908288, i32 1061109547, i32 -252645216, i32 -262144, i32 1061109519, i32 16711423], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat58, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat59, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.59, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 3210484, i32 -1057964032, i32 -63963136, i32 222236416, i32 -1057964032, i32 -63963136, i32 255790336, i32 3210364], [8 x i32] [i32 1074176, i32 1083195392, i32 1678770176, i32 68682752, i32 1083195392, i32 1678770176, i32 68682752, i32 1074176], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @barrierspat60, i32 0, i32 0), i32 20, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.60, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 3, i32 3, i32 4, i32 2, i32 722, [8 x i32] [i32 1568636927, i32 1425341684, i32 -185281536, i32 -8431872, i32 -51096576, i32 2139053312, i32 1468006271, i32 -722144004], [8 x i32] [i32 2490368, i32 2101280, i32 6291456, i32 270532608, i32 270532608, i32 2490368, i32 2101280, i32 6291456], i32 1024, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat60, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat61, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.61, i32 0, i32 0), i32 0, i32 0, i32 1, i32 3, i32 1, i32 3, i32 0, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat61, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat62, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 8323071, i32 -789516064, i32 -51118080, i32 1061101312, i32 -252653568, i32 -8519680, i32 524238639, i32 16055548], [8 x i32] [i32 2398208, i32 -2141155328, i32 -1738539008, i32 405014528, i32 -1872723968, i32 -1742471168, i32 136583168, i32 6330368], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat62, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat63, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 8323071, i32 -789516064, i32 -51118080, i32 1061101312, i32 -252653568, i32 -8519680, i32 524238639, i32 16055548], [8 x i32] [i32 2396192, i32 -2141188096, i32 408944640, i32 270927872, i32 274759680, i32 -1876688896, i32 136712192, i32 6297632], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat63, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat64, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3944448, i32 15740928, i32 821035008, i32 809238528, i32 821035008, i32 809238528, i32 3944448, i32 15740928], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat64, i32 3, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat65, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.65, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 0, i32 685, [8 x i32] [i32 775880704, i32 3685432, i32 15785984, i32 -256901120, i32 1010302976, i32 4140544, i32 11595952, i32 -521142272], [8 x i32] [i32 1638400, i32 1056784, i32 9437184, i32 537919488, i32 537919488, i32 1638400, i32 1056784, i32 9437184], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat65, i32 0, float 0x3F941205C0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat66, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 80, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat66, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat67, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 1028, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat68, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 65, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([36 x %struct.patval], [36 x %struct.patval]* @barrierspat69, i32 0, i32 0), i32 36, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0), i32 -2, i32 -3, i32 3, i32 2, i32 5, i32 5, i32 10, i32 797, [8 x i32] [i32 -16843010, i32 -16843094, i32 -86, i32 -1, i32 -16843010, i32 -16843094, i32 -86, i32 -1], [8 x i32] [i32 1081344, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 1050624], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat70, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.70, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 0, i32 758, [8 x i32] [i32 7404796, i32 -789528576, i32 -13369344, i32 255794959, i32 -1057959744, i32 -59768832, i32 524226304, i32 3473407], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 69, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat71, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 12582911, i32 -521080592, i32 -50855936, i32 1061105408, i32 -252649472, i32 -4259840, i32 792674111, i32 16317692], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat72, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 12582911, i32 -521080592, i32 -50855936, i32 1061105408, i32 -252649472, i32 -4259840, i32 792674111, i32 16317692], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat72, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat73, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 3996796, i32 -1057951744, i32 -51380224, i32 1061096704, i32 -252657664, i32 -63176704, i32 222248704, i32 15793396], [8 x i32] [i32 1081344, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 1050624], i32 65, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat73, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([36 x %struct.patval], [36 x %struct.patval]* @barrierspat74, i32 0, i32 0), i32 36, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0), i32 0, i32 -2, i32 5, i32 3, i32 5, i32 5, i32 10, i32 758, [8 x i32] [i32 16777215, i32 -252645136, i32 -65536, i32 1061109567, i32 -252645136, i32 -65536, i32 1061109567, i32 16777215], [8 x i32] [i32 2097188, i32 2097152, i32 2097152, i32 19005440, i32 2097152, i32 2097152, i32 2228480, i32 2097248], i32 64, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat75, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027407872, i32 4144917, i32 15790320, i32 4013373, i32 15790160, i32 -252706816, i32 1061093376], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat75, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat76, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.76, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027407872, i32 4144917, i32 15790320, i32 4013373, i32 15790160, i32 -252706816, i32 1061093376], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat76, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat77, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027407872, i32 4144917, i32 15790320, i32 4013373, i32 15790160, i32 -252706816, i32 1061093376], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat77, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat78, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027407872, i32 4144917, i32 15790320, i32 4013373, i32 15790160, i32 -252706816, i32 1061093376], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat78, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat79, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 2, i32 796, [8 x i32] [i32 1089531904, i32 -185597952, i32 1061095168, i32 3964156, i32 15791356, i32 -252690432, i32 2084306944, i32 121585408], [8 x i32] [i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048584, i32 1048576, i32 1048576, i32 34603008], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat79, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat80, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 2, i32 796, [8 x i32] [i32 -1057951744, i32 -51380224, i32 1061096704, i32 3996796, i32 15793396, i32 -252657664, i32 -63176704, i32 222248704], [8 x i32] [i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat80, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat81, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 2, i32 2, i32 3, i32 2, i32 721, [8 x i32] [i32 16777215, i32 -252645136, i32 -50593792, i32 1061109504, i32 -252645376, i32 -65536, i32 1061109567, i32 16579836], [8 x i32] [i32 9832448, i32 537956384, i32 -2141716480, i32 403709952, i32 -1877991424, i32 144048128, i32 537925664, i32 5799936], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat81, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat82, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.82, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 16579836, i32 -252645376, i32 -65536, i32 1061109567, i32 -252645136, i32 -50593792, i32 1061109504, i32 16777215], [8 x i32] [i32 1581056, i32 9445376, i32 546439168, i32 538443808, i32 546308128, i32 538443776, i32 1581056, i32 9576448], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat82, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat83, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 1581056, i32 9445376, i32 546308096, i32 538443776, i32 546308096, i32 538443776, i32 1581056, i32 9445376], i32 18874880, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat83, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat84, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.84, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3996796, i32 -1057951744, i32 -51380224, i32 1061096704, i32 -252657664, i32 -63176704, i32 222248704, i32 15793396], [8 x i32] [i32 1605632, i32 -2146426880, i32 143654912, i32 537921536, i32 537952256, i32 -2145910784, i32 135274496, i32 9439232], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat84, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat85, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.85, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144957, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144957, i32 15790320], [8 x i32] [i32 1572896, i32 1056768, i32 9437184, i32 538050560, i32 537919488, i32 1572864, i32 1187840, i32 9437216], i32 20972032, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat85, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat86, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.86, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 18874880, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat86, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat87, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.87, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 1061097216, i32 3996924, i32 -1057951744, i32 -51380224, i32 -63176704, i32 255803136, i32 15793404, i32 -252657664], [8 x i32] [i32 571475968, i32 1605640, i32 -2146426880, i32 143654912, i32 -2145910784, i32 135275008, i32 9439360, i32 537952256], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat87, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat88, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 685, [8 x i32] [i32 1010580480, i32 16579584, i32 -252645376, i32 -50593792, i32 -50593792, i32 1010580480, i32 16579584, i32 -252645376], [8 x i32] [i32 538443776, i32 1581056, i32 9445376, i32 546308096, i32 538443776, i32 1581056, i32 9445376, i32 546308096], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat88, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat89, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i32 -2, i32 -3, i32 0, i32 0, i32 2, i32 3, i32 2, i32 797, [8 x i32] [i32 -252706816, i32 1027342336, i32 4144901, i32 15790320, i32 3947837, i32 15790144, i32 -252706816, i32 1061093376], [8 x i32] [i32 -1877999616, i32 135528448, i32 1054720, i32 5275648, i32 1312768, i32 1085440, i32 -2142240768, i32 403701760], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat89, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat90, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat90, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat91, i32 0, i32 0), i32 12, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.91, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 16579836, i32 -252645376, i32 -50593792, i32 1061109504, i32 -252645376, i32 -50593792, i32 1061109504, i32 16579836], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat91, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat92, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.92, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 12123388, i32 -521084928, i32 -55050240, i32 792669952, i32 -521084928, i32 -55050240, i32 792669952, i32 12123388], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 18874881, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat92, i32 0, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([18 x %struct.patval], [18 x %struct.patval]* @barrierspat93, i32 0, i32 0), i32 18, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0), i32 0, i32 -3, i32 3, i32 1, i32 3, i32 4, i32 2, i32 795, [8 x i32] [i32 11599100, i32 -521093120, i32 -12910592, i32 255799103, i32 -1057955600, i32 -55574528, i32 792661760, i32 3932159], [8 x i32] [i32 1056768, i32 9437184, i32 537985024, i32 1572880, i32 9437200, i32 537919488, i32 1572864, i32 1122304], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat93, i32 0, float 0x3F90624DE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([14 x %struct.patval], [14 x %struct.patval]* @barrierspat94, i32 0, i32 0), i32 14, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 2, i32 3, i32 3, i32 2, i32 721, [8 x i32] [i32 3997695, i32 -1057951552, i32 -51380224, i32 1061097216, i32 -252657664, i32 -12845056, i32 255803151, i32 15793404], [8 x i32] [i32 1345536, i32 -2146398208, i32 -2008023040, i32 403703808, i32 -1877966848, i32 -2011955200, i32 135272448, i32 5277696], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat94, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat95, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 12123388, i32 -521084928, i32 -55050240, i32 792669952, i32 -521084928, i32 -55050240, i32 792669952, i32 12123388], [8 x i32] [i32 1057800, i32 9453568, i32 1611661312, i32 102236160, i32 1083179008, i32 605028352, i32 1574400, i32 1073280], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat95, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat96, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144951, i32 15790320, i32 -252706816, i32 1027538944, i32 -252706816, i32 1061093376, i32 4144447, i32 15790192], [8 x i32] [i32 1048578, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048578, i32 1048576], i32 16777728, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat97, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144951, i32 15790320, i32 -252706816, i32 1027538944, i32 -252706816, i32 1061093376, i32 4144447, i32 15790192], [8 x i32] [i32 1048610, i32 1048576, i32 1048576, i32 1179648, i32 1048576, i32 1048576, i32 1179650, i32 1048608], i32 16777728, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @barrierspat98, i32 0, i32 0), i32 15, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0), i32 -2, i32 0, i32 2, i32 2, i32 4, i32 2, i32 0, i32 686, [8 x i32] [i32 792669981, i32 12189693, i32 -521084720, i32 -4653056, i32 -4653056, i32 792669981, i32 12189693, i32 -521084720], [8 x i32] [i32 1048584, i32 1049088, i32 1048704, i32 34603008, i32 34603008, i32 1048584, i32 1049088, i32 1048704], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat99, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0), i32 -1, i32 0, i32 2, i32 2, i32 3, i32 2, i32 0, i32 685, [8 x i32] [i32 1061105437, i32 12385532, i32 -521080832, i32 -458752, i32 -54788096, i32 792674048, i32 16383997, i32 -252649264], [8 x i32] [i32 537919496, i32 1572864, i32 1056768, i32 42991616, i32 1572864, i32 1056768, i32 9437696, i32 537919616], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat99, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat100, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 12385280, i32 -521080832, i32 -50855936, i32 1010576384, i32 -252649472, i32 -54788096, i32 742145024, i32 16317440], [8 x i32] [i32 1073152, i32 1083179008, i32 605028352, i32 1573888, i32 9453568, i32 1611661312, i32 68681728, i32 1057792], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat100, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat101, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144927, i32 15790320, i32 -252706816, i32 1060962304, i32 -252706816, i32 1061093376, i32 4013887, i32 15790288], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat101, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat102, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.102, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 725556992, i32 7928060, i32 -789536768, i32 -1129054208, i32 -126353408, i32 524233472, i32 11844860, i32 -1594830848], [8 x i32] [i32 34603008, i32 1048584, i32 1048576, i32 1048576, i32 1048576, i32 1049088, i32 1048704, i32 1048576], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat102, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat103, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.103, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1179648, i32 1048608, i32 1048576, i32 1048576, i32 1048576, i32 1179648, i32 1048608, i32 1048576], i32 16777728, float 1.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat103, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat104, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.104, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 2, i32 684, [8 x i32] [i32 4144896, i32 15790320, i32 -252706816, i32 1010565120, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 16777728, float 1.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat104, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat105, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.105, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 2, i32 685, [8 x i32] [i32 1061093376, i32 3947580, i32 15790080, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320, i32 -252706816], [8 x i32] [i32 269484032, i32 1310720, i32 1052672, i32 5242880, i32 1310720, i32 1052672, i32 5242880, i32 269484032], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat105, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat106, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.106, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 759, [8 x i32] [i32 -50529028, i32 -50529280, i32 -256, i32 -1, i32 -50529028, i32 -50529280, i32 -256, i32 -1], [8 x i32] [i32 76546048, i32 537920512, i32 1589248, i32 1074798592, i32 68165632, i32 9438208, i32 537935872, i32 1075314688], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([16 x %struct.patval], [16 x %struct.patval]* @barrierspat107, i32 0, i32 0), i32 16, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.107, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 759, [8 x i32] [i32 -50529028, i32 -50529280, i32 -256, i32 -1, i32 -50529028, i32 -50529280, i32 -256, i32 -1], [8 x i32] [i32 76554240, i32 546309120, i32 538460160, i32 1075322880, i32 76554240, i32 546309120, i32 538460160, i32 1075322880], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat108, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.108, i32 0, i32 0), i32 0, i32 0, i32 3, i32 2, i32 3, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @barrierspat109, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 1, i32 3, i32 3, i32 2, i32 758, [8 x i32] [i32 3210492, i32 -1057964032, i32 -47185920, i32 255790855, i32 -1057963968, i32 -63963136, i32 255790848, i32 3210751], [8 x i32] [i32 1050624, i32 1081344, i32 -2146435072, i32 135266304, i32 -2146435072, i32 135266304, i32 1050624, i32 1081344], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat109, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([24 x %struct.patval], [24 x %struct.patval]* @barrierspat110, i32 0, i32 0), i32 24, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.110, i32 0, i32 0), i32 -2, i32 -1, i32 3, i32 2, i32 5, i32 3, i32 0, i32 723, [8 x i32] [i32 -1426128897, i32 -84215062, i32 -50550616, i32 -1077952768, i32 -84215296, i32 -87382, i32 -1077952593, i32 -1459815172], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([24 x %struct.patval], [24 x %struct.patval]* @barrierspat111, i32 0, i32 0), i32 24, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.111, i32 0, i32 0), i32 -2, i32 -1, i32 3, i32 2, i32 5, i32 3, i32 0, i32 723, [8 x i32] [i32 -1426128897, i32 -84215062, i32 -50550616, i32 -1077952768, i32 -84215296, i32 -87382, i32 -1077952593, i32 -1459815172], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat111, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([13 x %struct.patval], [13 x %struct.patval]* @barrierspat112, i32 0, i32 0), i32 13, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.112, i32 0, i32 0), i32 -1, i32 -1, i32 3, i32 1, i32 4, i32 2, i32 0, i32 722, [8 x i32] [i32 -1459815172, i32 -117901312, i32 -50550784, i32 -1077952768, i32 -117901312, i32 -50550784, i32 -1077952768, i32 -1459815172], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat112, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat113, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.113, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 722, [8 x i32] [i32 -1459815376, i32 -117901312, i32 -50550784, i32 -1128285184, i32 -117901312, i32 -50550784, i32 -1128285184, i32 -1459815376], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat113, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat114, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.114, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 722, [8 x i32] [i32 -1191379920, i32 -117639168, i32 -50546688, i32 -1124090880, i32 -117639168, i32 -50546688, i32 -1124090880, i32 -1191379920], [8 x i32] [i32 278396928, i32 538189824, i32 9965568, i32 542121984, i32 538189824, i32 9965568, i32 542121984, i32 278396928], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat115, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.115, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 1, i32 3, i32 2, i32 0, i32 722, [8 x i32] [i32 -1191379920, i32 -117639168, i32 -50546688, i32 -1124090880, i32 -117639168, i32 -50546688, i32 -1124090880, i32 -1191379920], [8 x i32] [i32 9961472, i32 537927680, i32 9961472, i32 537927680, i32 537927680, i32 9961472, i32 537927680, i32 9961472], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat115, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([22 x %struct.patval], [22 x %struct.patval]* @barrierspat116, i32 0, i32 0), i32 22, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.116, i32 0, i32 0), i32 -1, i32 -3, i32 3, i32 1, i32 4, i32 4, i32 10, i32 796, [8 x i32] [i32 -1057948420, i32 -51331072, i32 -12644608, i32 255852543, i32 -1057948420, i32 -51331072, i32 -12644608, i32 255852543], [8 x i32] [i32 -2146400256, i32 -2012184576, i32 -2012215296, i32 135301120, i32 -2146400256, i32 -2012184576, i32 -2012215296, i32 135301120], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat116, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat117, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.117, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 685, [8 x i32] [i32 205272064, i32 15760384, i32 1894825984, i32 -197394432, i32 2096103424, i32 876350464, i32 3994624, i32 -1057984512], [8 x i32] [i32 135274496, i32 9439232, i32 537952256, i32 -2145910784, i32 143654912, i32 537921536, i32 1605632, i32 -2146426880], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat117, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat118, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.118, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 0, i32 685, [8 x i32] [i32 205270016, i32 11598848, i32 -521093120, i32 -63438848, i32 -55574528, i32 742132736, i32 3734528, i32 -1057955840], [8 x i32] [i32 135268352, i32 1083392, i32 -2146402304, i32 -2012217344, i32 -2012217344, i32 135268352, i32 1083392, i32 -2146402304], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat118, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat119, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.119, i32 0, i32 0), i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 722, [8 x i32] [i32 -1058013184, i32 1009778688, i32 3935232, i32 3207168, i32 3161088, i32 15777792, i32 -265289728, i32 205258752], [8 x i32] [i32 -2146435072, i32 135266304, i32 1050624, i32 1081344, i32 1050624, i32 1081344, i32 -2146435072, i32 135266304], i32 16777728, float 5.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat119, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat120, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.120, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 222244608, i32 11599092, i32 -521093120, i32 -63438848, i32 -55574528, i32 792661248, i32 3734652, i32 -1057955840], [8 x i32] [i32 135266816, i32 1050752, i32 1081344, i32 -2146435072, i32 135266304, i32 34605056, i32 1081352, i32 -2146435072], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat120, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat121, i32 0, i32 0), i32 3, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.121, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 1009778688, i32 3935232, i32 3207168, i32 -1058013184, i32 205258752, i32 3161088, i32 15777792, i32 -265289728], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat121, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat122, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.122, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816], [8 x i32] [i32 537919488, i32 1572864, i32 1056768, i32 9437184, i32 1572864, i32 1056768, i32 9437184, i32 537919488], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat122, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([15 x %struct.patval], [15 x %struct.patval]* @barrierspat123, i32 0, i32 0), i32 15, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.123, i32 0, i32 0), i32 -1, i32 -2, i32 2, i32 1, i32 3, i32 3, i32 2, i32 759, [8 x i32] [i32 -386335492, i32 -50796544, i32 -4215808, i32 -1346371777, i32 -386335504, i32 -50796544, i32 -4215040, i32 -1396703233], [8 x i32] [i32 1083187200, i32 613416960, i32 538444800, i32 1597440, i32 9446400, i32 546324480, i32 1612185600, i32 68689920], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat123, i32 0, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat124, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.124, i32 0, i32 0), i32 -1, i32 -3, i32 1, i32 0, i32 2, i32 3, i32 0, i32 796, [8 x i32] [i32 -252649472, i32 -54788096, i32 792673280, i32 16317500, i32 12385520, i32 -521080832, i32 -50855936, i32 1010773760], [8 x i32] [i32 -1869611008, i32 672399360, i32 1579008, i32 5283840, i32 1320960, i32 9474048, i32 -1605369856, i32 404226048], i32 16777728, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat124, i32 0, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat125, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 0, i32 758, [8 x i32] [i32 15785984, i32 -256901120, i32 792657920, i32 3685436, i32 11596016, i32 -521142272, i32 1010302976, i32 4140800], [8 x i32] [i32 9437184, i32 537919488, i32 1572864, i32 1056768, i32 1056768, i32 9437184, i32 537919488, i32 1572864], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat125, i32 0, float 0x40001CAC00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat126, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.126, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 759, [8 x i32] [i32 -252125184, i32 -54779904, i32 801062656, i32 553188604, i32 549256444, i32 -520556544, i32 -50847744, i32 1069494016], [8 x i32] [i32 546308096, i32 538443776, i32 1581056, i32 9445376, i32 1581056, i32 9445376, i32 546308096, i32 538443776], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat126, i32 0, float 0x40001CAC00000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat127, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 2, i32 758, [8 x i32] [i32 16317692, i32 -252649472, i32 -4259840, i32 792674111, i32 -521080592, i32 -50855936, i32 1061105408, i32 12582911], [8 x i32] [i32 1056768, i32 9437184, i32 538050560, i32 1572896, i32 9437216, i32 537919488, i32 1572864, i32 1187840], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat127, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([20 x %struct.patval], [20 x %struct.patval]* @barrierspat128, i32 0, i32 0), i32 20, i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.128, i32 0, i32 0), i32 0, i32 -2, i32 3, i32 2, i32 3, i32 4, i32 2, i32 758, [8 x i32] [i32 16646141, i32 -252645168, i32 -196608, i32 1061109533, i32 -252645168, i32 -196608, i32 1061109533, i32 16646141], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 16777728, float 1.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat128, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat129, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i32 -2, i32 0, i32 0, i32 4, i32 2, i32 4, i32 2, i32 686, [8 x i32] [i32 792657920, i32 3685439, i32 15785984, i32 -256901120, i32 1010302976, i32 4140803, i32 11596016, i32 -521142272], [8 x i32] [i32 1048576, i32 1048578, i32 1048576, i32 1048576, i32 1048576, i32 1048578, i32 1048576, i32 1048576], i32 16777728, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat129, i32 0, float 0x3F847AE140000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat130, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.130, i32 0, i32 0), i32 -2, i32 0, i32 1, i32 2, i32 3, i32 2, i32 0, i32 686, [8 x i32] [i32 1061109504, i32 16580607, i32 -252645184, i32 -50593792, i32 -262144, i32 1061109519, i32 16579836, i32 -252645376], [8 x i32] [i32 1049088, i32 1049216, i32 1048704, i32 1048576, i32 34603008, i32 34603016, i32 1048584, i32 1048576], i32 16777728, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 0, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* null, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat131, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.131, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 0, i32 721, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 9961472, i32 537927680, i32 9961472, i32 537927680, i32 537927680, i32 9961472, i32 537927680, i32 9961472], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat131, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat132, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 2, i32 685, [8 x i32] [i32 255803136, i32 15793404, i32 -252657664, i32 -63176704, i32 -51380224, i32 1061097216, i32 3996924, i32 -1057951744], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 16777729, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat132, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat133, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.133, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 0, i32 721, [8 x i32] [i32 3210492, i32 -1057964032, i32 -63963136, i32 255790848, i32 -1057964032, i32 -63963136, i32 255790848, i32 3210492], [8 x i32] [i32 1083392, i32 -2146402304, i32 -2012217344, i32 135268352, i32 -2146402304, i32 -2012217344, i32 135268352, i32 1083392], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat133, i32 0, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat134, i32 0, i32 0), i32 7, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 1, i32 2, i32 2, i32 0, i32 722, [8 x i32] [i32 821885952, i32 -251858944, i32 -50581504, i32 1023163392, i32 -251858944, i32 -50581504, i32 1023163392, i32 821885952], [8 x i32] [i32 278405120, i32 546578432, i32 546836480, i32 542646272, i32 546578432, i32 546836480, i32 542646272, i32 278405120], i32 16777732, float 2.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat134, i32 0, float 5.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat135, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.135, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 2, i32 2, i32 2, i32 0, i32 685, [8 x i32] [i32 1027555072, i32 16579828, i32 -252645376, i32 -50593792, i32 -50593792, i32 1061108992, i32 16579708, i32 -252645376], [8 x i32] [i32 537921536, i32 1605632, i32 -2146426880, i32 143654912, i32 -2145910784, i32 135274496, i32 9439232, i32 537952256], i32 16777728, float 3.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat135, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat136, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 2, i32 1, i32 2, i32 0, i32 685, [8 x i32] [i32 1061093376, i32 3947580, i32 15790080, i32 -252706816, i32 1010565120, i32 4144896, i32 15790320, i32 -252706816], [8 x i32] [i32 538443776, i32 1581056, i32 9445376, i32 546308096, i32 538443776, i32 1581056, i32 9445376, i32 546308096], i32 16777728, float 5.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat136, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([11 x %struct.patval], [11 x %struct.patval]* @barrierspat137, i32 0, i32 0), i32 11, i32 8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0), i32 -1, i32 -2, i32 1, i32 1, i32 2, i32 3, i32 0, i32 759, [8 x i32] [i32 -252123136, i32 -54747136, i32 -1346420992, i32 687406332, i32 -1598227204, i32 -386338816, i32 -50845696, i32 1069526784], [8 x i32] [i32 546308096, i32 538443776, i32 1581056, i32 9445376, i32 1581056, i32 9445376, i32 546308096, i32 538443776], i32 16777728, float 4.000000e+01, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 1, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat137, i32 0, float 0x3FCD53CDE0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat138, i32 0, i32 0), i32 6, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.138, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 3619584, i32 15765744, i32 -1334837248, i32 406585344, i32 -1863319552, i32 993460224, i32 3938364, i32 7385088], [8 x i32] [i32 1122816, i32 9437328, i32 537919488, i32 1572864, i32 9437184, i32 571539456, i32 1572888, i32 1056768], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat138, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat139, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.139, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 3619584, i32 15765744, i32 -1334837248, i32 406585344, i32 -1863319552, i32 993460224, i32 3938364, i32 7385088], [8 x i32] [i32 1057280, i32 9437312, i32 537919488, i32 1572864, i32 9437184, i32 571473920, i32 1572872, i32 1056768], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat139, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat140, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.140, i32 0, i32 0), i32 0, i32 0, i32 1, i32 2, i32 1, i32 2, i32 0, i32 684, [8 x i32] [i32 3880704, i32 15753456, i32 1890582528, i32 607911936, i32 1626341376, i32 926613504, i32 3941436, i32 11563008], [8 x i32] [i32 2101504, i32 6291520, i32 270532608, i32 2359296, i32 6291456, i32 287309824, i32 2359300, i32 2101248], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat140, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat141, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.141, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 7401536, i32 -789577728, i32 1026818048, i32 3939591, i32 15781952, i32 -261095424, i32 490471424, i32 3423495], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572865, i32 9437184, i32 537919488, i32 1572864, i32 1056769], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat141, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat142, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.142, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 11595904, i32 -521142272, i32 1043857408, i32 3943947, i32 15786112, i32 -256901120, i32 775684096, i32 3685899], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359298, i32 6291456, i32 270532608, i32 2359296, i32 2101250], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat142, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat143, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.143, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 8, i32 721, [8 x i32] [i32 7385088, i32 -1863319552, i32 942931968, i32 3938304, i32 15765504, i32 -1334837248, i32 406585344, i32 3422208], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat143, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat144, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.144, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 8, i32 721, [8 x i32] [i32 3207280, i32 -1058013184, i32 1009778688, i32 4132096, i32 15777792, i32 -265289728, i32 222232576, i32 3161140], [8 x i32] [i32 1048608, i32 1048576, i32 1048576, i32 1179648, i32 1048576, i32 1048576, i32 1179648, i32 1048608], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat144, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat145, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.145, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 0, i32 2, i32 1, i32 8, i32 721, [8 x i32] [i32 3207344, i32 -1058013184, i32 1009778688, i32 4132352, i32 15777792, i32 -265289728, i32 239009792, i32 3161144], [8 x i32] [i32 2097168, i32 2097152, i32 2097152, i32 2162688, i32 2097152, i32 2097152, i32 2162688, i32 2097168], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat145, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat146, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 15793152, i32 -252657664, i32 -63176704, i32 205274112, i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat146, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat147, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.147, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 15793152, i32 -252657664, i32 -63176704, i32 205274112, i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat147, i32 3, float 0x400570A3E0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat148, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.148, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 1, i32 1, i32 3, i32 2, i32 758, [8 x i32] [i32 15793152, i32 -252657664, i32 -12648448, i32 205274172, i32 -1057951504, i32 -51380224, i32 1010568192, i32 4194048], [8 x i32] [i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 1075838976, i32 69206016, i32 2098176, i32 2113536], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat148, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat149, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.149, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 8189952, i32 -789532672, i32 -1124859904, i32 943463424, i32 -1326395392, i32 -126091264, i32 473708544, i32 16038912], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat149, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat150, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 1, i32 1, i32 2, i32 2, i32 721, [8 x i32] [i32 16579584, i32 -252645376, i32 -50593792, i32 1010580480, i32 -252645376, i32 -50593792, i32 1010580480, i32 16579584], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat150, i32 3, float 0x4006666660000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat151, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.151, i32 0, i32 0), i32 0, i32 -3, i32 2, i32 0, i32 2, i32 3, i32 0, i32 795, [8 x i32] [i32 15777984, i32 -265289728, i32 255787008, i32 3161918, i32 3207408, i32 -1058013184, i32 1060110336, i32 4132622], [8 x i32] [i32 2097216, i32 2097152, i32 2097152, i32 2097408, i32 2097152, i32 2097152, i32 18874368, i32 2097156], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat151, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat152, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.152, i32 0, i32 0), i32 -2, i32 0, i32 0, i32 2, i32 2, i32 2, i32 0, i32 686, [8 x i32] [i32 1061093376, i32 4144957, i32 15790320, i32 -252706816, i32 1061093376, i32 4144957, i32 15790320, i32 -252706816], [8 x i32] [i32 2490368, i32 2101280, i32 6291456, i32 270532608, i32 270532608, i32 2490368, i32 2101280, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat152, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat153, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i32 0, i32 -1, i32 2, i32 1, i32 2, i32 2, i32 2, i32 721, [8 x i32] [i32 12385532, i32 -521080832, i32 -50855936, i32 1061105408, i32 -252649472, i32 -54788096, i32 792674048, i32 16317692], [8 x i32] [i32 1597472, i32 1083187200, i32 613416960, i32 538575872, i32 546324480, i32 1612185600, i32 68820992, i32 9446432], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat153, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat154, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.154, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 809238528, i32 3944448, i32 15740928, i32 821035008, i32 809238528, i32 3944448, i32 15740928, i32 821035008], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat154, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat155, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.155, i32 0, i32 0), i32 -1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 685, [8 x i32] [i32 809238528, i32 3944448, i32 15740928, i32 821035008, i32 809238528, i32 3944448, i32 15740928, i32 821035008], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat155, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat156, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.156, i32 0, i32 0), i32 -2, i32 0, i32 0, i32 1, i32 2, i32 1, i32 0, i32 686, [8 x i32] [i32 1010565120, i32 4144128, i32 15790128, i32 -252706816, i32 1010761728, i32 3947568, i32 15790080, i32 -252706816], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat156, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat157, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.157, i32 0, i32 0), i32 -3, i32 0, i32 0, i32 1, i32 3, i32 1, i32 8, i32 687, [8 x i32] [i32 1010565120, i32 4144896, i32 15790320, i32 -252706816, i32 1061093376, i32 3947580, i32 15790080, i32 -252706816], [8 x i32] [i32 1572864, i32 1056768, i32 9437184, i32 537919488, i32 537919488, i32 1572864, i32 1056768, i32 9437184], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat157, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat158, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.158, i32 0, i32 0), i32 -1, i32 -1, i32 2, i32 0, i32 3, i32 1, i32 8, i32 722, [8 x i32] [i32 -1057951504, i32 -51380224, i32 1010568192, i32 4194048, i32 15793152, i32 -252657664, i32 -12648448, i32 205274172], [8 x i32] [i32 2097248, i32 2097152, i32 2097152, i32 2228480, i32 2097152, i32 2097152, i32 19005440, i32 2097188], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat158, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat159, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.159, i32 0, i32 0), i32 -1, i32 0, i32 1, i32 1, i32 2, i32 1, i32 8, i32 685, [8 x i32] [i32 1010580480, i32 16579584, i32 -252645376, i32 -50593792, i32 -50593792, i32 1010580480, i32 16579584, i32 -252645376], [8 x i32] [i32 2361344, i32 2134016, i32 -2141192192, i32 404750336, i32 -1876951040, i32 136577024, i32 2103296, i32 6324224], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat159, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat160, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.160, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 8, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 1057792, i32 9453568, i32 1611661312, i32 68681728, i32 1083179008, i32 605028352, i32 1573888, i32 1073152], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat160, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat161, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.161, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 721, [8 x i32] [i32 16709376, i32 -252677920, i32 2096889856, i32 876362752, i32 1894838272, i32 -134348800, i32 1010578476, i32 16546816], [8 x i32] [i32 2359552, i32 2101312, i32 6291456, i32 270532608, i32 270532608, i32 19136512, i32 2101252, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat161, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat162, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.162, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 2, i32 1, i32 4, i32 2, i32 758, [8 x i32] [i32 16709376, i32 -252677920, i32 2147418112, i32 876362812, i32 1894838512, i32 -134348800, i32 1010578476, i32 16744192], [8 x i32] [i32 2359552, i32 2101312, i32 6291456, i32 270532608, i32 270532608, i32 19136512, i32 2101252, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat162, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat163, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.163, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 0, i32 647, [8 x i32] [i32 -1057951744, i32 -51380224, i32 1010568192, i32 3996672, i32 15793152, i32 -252657664, i32 -63176704, i32 205274112], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat163, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat164, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.164, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 0, i32 1, i32 1, i32 0, i32 647, [8 x i32] [i32 15790080, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 3947520], [8 x i32] [i32 2101248, i32 6291456, i32 270532608, i32 2359296, i32 6291456, i32 270532608, i32 2359296, i32 2101248], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat164, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([5 x %struct.patval], [5 x %struct.patval]* @barrierspat165, i32 0, i32 0), i32 5, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.165, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 0, i32 722, [8 x i32] [i32 -252657664, i32 -63176704, i32 205274112, i32 15793152, i32 3996672, i32 -1057951744, i32 -51380224, i32 1010568192], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat165, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat166, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.166, i32 0, i32 0), i32 -1, i32 -1, i32 1, i32 0, i32 2, i32 1, i32 0, i32 647, [8 x i32] [i32 -1057964032, i32 -63963136, i32 205261824, i32 3210240, i32 3210240, i32 -1057964032, i32 -63963136, i32 205261824], [8 x i32] [i32 2113536, i32 1075838976, i32 69206016, i32 2098176, i32 2113536, i32 1075838976, i32 69206016, i32 2098176], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat166, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @barrierspat167, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.167, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 684, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat167, i32 0, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([2 x %struct.patval], [2 x %struct.patval]* @barrierspat168, i32 0, i32 0), i32 2, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.168, i32 0, i32 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 684, [8 x i32] [i32 3932160, i32 3158016, i32 15728640, i32 808452096, i32 808452096, i32 3932160, i32 3158016, i32 15728640], [8 x i32] [i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152, i32 2097152], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 2, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat168, i32 3, float 0.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat169, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.169, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 8, i32 684, [8 x i32] [i32 3947520, i32 15790080, i32 -252706816, i32 1010565120, i32 -252706816, i32 1010565120, i32 3947520, i32 15790080], [8 x i32] [i32 2359296, i32 2101248, i32 6291456, i32 270532608, i32 270532608, i32 2359296, i32 2101248, i32 6291456], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat169, i32 3, float 0x3FFCF5C280000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat170, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.170, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 15790320, i32 -252706816, i32 1060896768, i32 4144908, i32 15790272, i32 -252706816, i32 1061093376, i32 3948348], [8 x i32] [i32 2130016, i32 -2145386496, i32 153092096, i32 2230532, i32 2129984, i32 -2145386496, i32 153223168, i32 2099492], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat170, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([3 x %struct.patval], [3 x %struct.patval]* @barrierspat171, i32 0, i32 0), i32 3, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.171, i32 0, i32 0), i32 0, i32 0, i32 0, i32 2, i32 0, i32 2, i32 0, i32 684, [8 x i32] [i32 4128768, i32 3158064, i32 15728640, i32 808452096, i32 808452096, i32 4128768, i32 3158064, i32 15728640], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat171, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([4 x %struct.patval], [4 x %struct.patval]* @barrierspat172, i32 0, i32 0), i32 4, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.172, i32 0, i32 0), i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 684, [8 x i32] [i32 3939328, i32 7401472, i32 -789577728, i32 1010040832, i32 -261095424, i32 473694208, i32 3423232, i32 15781888], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576, i32 1048576], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat172, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat173, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.173, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 721, [8 x i32] [i32 4194048, i32 -1057951504, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12648448, i32 205274172, i32 15793152], [8 x i32] [i32 1343488, i32 -2146430976, i32 139460608, i32 269486080, i32 269516800, i32 -2146172928, i32 135270400, i32 5244928], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat173, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat174, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.174, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 2, i32 1, i32 3, i32 2, i32 721, [8 x i32] [i32 4194048, i32 -1057951504, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12648448, i32 205274172, i32 15793152], [8 x i32] [i32 2637824, i32 1075847168, i32 77594624, i32 538969088, i32 538984448, i32 1076363264, i32 69214208, i32 10486784], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat174, i32 3, float 0x3FFF5C2900000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat175, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.175, i32 0, i32 0), i32 0, i32 -1, i32 1, i32 3, i32 1, i32 4, i32 2, i32 721, [8 x i32] [i32 4194048, i32 -1057951504, i32 -51380224, i32 1010568192, i32 -252657664, i32 -12648448, i32 205274172, i32 15793152], [8 x i32] [i32 2768896, i32 1075847200, i32 77594624, i32 538969088, i32 538984448, i32 1076494336, i32 69214240, i32 10486784], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat175, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat176, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.176, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 0, i32 758, [8 x i32] [i32 15790320, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 4144959], [8 x i32] [i32 1048576, i32 1048576, i32 1048576, i32 1048578, i32 1048576, i32 1048576, i32 1048576, i32 1048578], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat176, i32 0, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat177, i32 0, i32 0), i32 9, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.177, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2162690, i32 2097168, i32 2097152, i32 2097152, i32 2097152, i32 2162688, i32 2097170, i32 2097152], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat177, i32 3, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat178, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.178, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 0, i32 2, i32 2, i32 2, i32 758, [8 x i32] [i32 15790192, i32 -252706816, i32 1060962304, i32 4144415, i32 15790288, i32 -252706816, i32 1027538944, i32 4013879], [8 x i32] [i32 1085456, i32 -2142240768, i32 403701760, i32 1378304, i32 5275648, i32 -1877999616, i32 135593984, i32 1054736], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat178, i32 0, float 0x3FF7F6D340000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([6 x %struct.patval], [6 x %struct.patval]* @barrierspat179, i32 0, i32 0), i32 6, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.179, i32 0, i32 0), i32 0, i32 -2, i32 1, i32 0, i32 1, i32 2, i32 0, i32 758, [8 x i32] [i32 15790080, i32 -252706816, i32 1061093376, i32 3947580, i32 15790320, i32 -252706816, i32 1010565120, i32 4144896], [8 x i32] [i32 1056768, i32 9437184, i32 537919488, i32 1572864, i32 9437184, i32 537919488, i32 1572864, i32 1056768], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat179, i32 0, float 0x3FF99999A0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat180, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.180, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 3948344, i32 15790272, i32 -252706816, i32 1044316160, i32 -252706816, i32 1060896768, i32 4144652, i32 15790256], [8 x i32] [i32 1574400, i32 1073280, i32 1083179008, i32 605028352, i32 1611661312, i32 102236160, i32 1057800, i32 9453568], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat180, i32 0, float 0x3FE3851EC0000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([7 x %struct.patval], [7 x %struct.patval]* @barrierspat181, i32 0, i32 0), i32 7, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.181, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 684, [8 x i32] [i32 3948340, i32 15790272, i32 -252706816, i32 1027538944, i32 -252706816, i32 1060896768, i32 4144396, i32 15790192], [8 x i32] [i32 2099456, i32 2129984, i32 -2145386496, i32 136314880, i32 -2145386496, i32 153092096, i32 2099204, i32 2129920], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat181, i32 3, float 0x3FEF0A3D80000000 }, %struct.pattern { %struct.patval* getelementptr inbounds ([8 x %struct.patval], [8 x %struct.patval]* @barrierspat182, i32 0, i32 0), i32 8, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.182, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 3948351, i32 15790272, i32 -252706816, i32 1061093376, i32 -252706816, i32 1060896768, i32 4144911, i32 15790320], [8 x i32] [i32 1574401, i32 1073280, i32 1083179008, i32 605028352, i32 1611661312, i32 102236160, i32 1057801, i32 9453568], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat182, i32 0, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([9 x %struct.patval], [9 x %struct.patval]* @barrierspat183, i32 0, i32 0), i32 9, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.183, i32 0, i32 0), i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 0, i32 684, [8 x i32] [i32 4144959, i32 15790320, i32 -252706816, i32 1061093376, i32 -252706816, i32 1061093376, i32 4144959, i32 15790320], [8 x i32] [i32 2164994, i32 2130000, i32 -2145386496, i32 136314880, i32 -2145386496, i32 153157632, i32 2099222, i32 2129920], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat183, i32 3, float 3.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([12 x %struct.patval], [12 x %struct.patval]* @barrierspat184, i32 0, i32 0), i32 12, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.184, i32 0, i32 0), i32 0, i32 -1, i32 3, i32 1, i32 3, i32 2, i32 2, i32 721, [8 x i32] [i32 12385532, i32 -521080832, i32 -50855936, i32 1061105408, i32 -252649472, i32 -54788096, i32 792674048, i32 16317692], [8 x i32] [i32 2121728, i32 1084227584, i32 606076928, i32 2622464, i32 10502144, i32 1612709888, i32 69730304, i32 2106368], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat184, i32 3, float 1.000000e+00 }, %struct.pattern { %struct.patval* getelementptr inbounds ([10 x %struct.patval], [10 x %struct.patval]* @barrierspat185, i32 0, i32 0), i32 10, i32 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.185, i32 0, i32 0), i32 0, i32 -2, i32 2, i32 1, i32 2, i32 3, i32 0, i32 758, [8 x i32] [i32 12123376, i32 -521084928, i32 -4718592, i32 742338319, i32 -521084736, i32 -55050240, i32 792669184, i32 12123967], [8 x i32] [i32 1049632, i32 1064960, i32 1108344832, i32 68288520, i32 1074790528, i32 68157440, i32 1180672, i32 1065504], i32 524288, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, i32 3, i32 (%struct.pattern*, i32, i32, i32)* null, i32 (i32, i32, i32, i32)* @autohelperbarrierspat185, i32 0, float 1.000000e+00 }, %struct.pattern zeroinitializer], align 16
@barrierspat_db = dso_local global %struct.pattern_db { i32 -1, i32 0, %struct.pattern* getelementptr inbounds ([187 x %struct.pattern], [187 x %struct.pattern]* @barrierspat, i32 0, i32 0), %struct.dfa_rt* null }, align 8
@barrierspat0 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }], align 16
@.str = private unnamed_addr constant [9 x i8] c"Barrier1\00", align 1
@barrierspat1 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 720, i32 5 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 757, i32 4 }], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"Barrier1b\00", align 1
@barrierspat2 = internal global [9 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 759, i32 3 }], align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"Barrier2\00", align 1
@barrierspat3 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 720, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.3 = private unnamed_addr constant [9 x i8] c"Barrier3\00", align 1
@barrierspat4 = internal global [2 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"Barrier4\00", align 1
@barrierspat5 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.5 = private unnamed_addr constant [9 x i8] c"Barrier5\00", align 1
@barrierspat6 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 648, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [9 x i8] c"Barrier6\00", align 1
@barrierspat7 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.7 = private unnamed_addr constant [10 x i8] c"Barrier6b\00", align 1
@barrierspat8 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"Barrier7\00", align 1
@barrierspat9 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.9 = private unnamed_addr constant [9 x i8] c"Barrier8\00", align 1
@barrierspat10 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }], align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"Barrier9\00", align 1
@barrierspat11 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 2 }], align 16
@.str.11 = private unnamed_addr constant [10 x i8] c"Barrier10\00", align 1
@barrierspat12 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.12 = private unnamed_addr constant [10 x i8] c"Barrier11\00", align 1
@barrierspat13 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.13 = private unnamed_addr constant [10 x i8] c"Barrier12\00", align 1
@barrierspat14 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 1 }], align 16
@.str.14 = private unnamed_addr constant [10 x i8] c"Barrier13\00", align 1
@barrierspat15 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 4 }], align 16
@.str.15 = private unnamed_addr constant [10 x i8] c"Barrier14\00", align 1
@barrierspat16 = internal global [12 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.16 = private unnamed_addr constant [10 x i8] c"Barrier15\00", align 1
@barrierspat17 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.17 = private unnamed_addr constant [10 x i8] c"Barrier16\00", align 1
@barrierspat18 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.18 = private unnamed_addr constant [11 x i8] c"Barrier16b\00", align 1
@barrierspat19 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.19 = private unnamed_addr constant [10 x i8] c"Barrier17\00", align 1
@barrierspat20 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 758, i32 2 }], align 16
@.str.20 = private unnamed_addr constant [10 x i8] c"Barrier18\00", align 1
@barrierspat21 = internal global [8 x %struct.patval] [%struct.patval { i32 758, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.21 = private unnamed_addr constant [10 x i8] c"Barrier19\00", align 1
@barrierspat22 = internal global [8 x %struct.patval] [%struct.patval { i32 758, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.22 = private unnamed_addr constant [10 x i8] c"Barrier20\00", align 1
@barrierspat23 = internal global [16 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 5 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 759, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 760, i32 3 }], align 16
@.str.23 = private unnamed_addr constant [10 x i8] c"Barrier21\00", align 1
@barrierspat24 = internal global [12 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 5 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.24 = private unnamed_addr constant [10 x i8] c"Barrier22\00", align 1
@barrierspat25 = internal global [28 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 758, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 831, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 832, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 793, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 833, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 834, i32 3 }], align 16
@.str.25 = private unnamed_addr constant [11 x i8] c"Barrier22a\00", align 1
@barrierspat26 = internal global [12 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.26 = private unnamed_addr constant [11 x i8] c"Barrier22b\00", align 1
@barrierspat27 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 795, i32 0 }], align 16
@.str.27 = private unnamed_addr constant [10 x i8] c"Barrier23\00", align 1
@barrierspat28 = internal global [13 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.28 = private unnamed_addr constant [10 x i8] c"Barrier24\00", align 1
@barrierspat29 = internal global [20 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 796, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 719, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 761, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 724, i32 3 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.29 = private unnamed_addr constant [10 x i8] c"Barrier25\00", align 1
@barrierspat30 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 796, i32 1 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.30 = private unnamed_addr constant [10 x i8] c"Barrier26\00", align 1
@barrierspat31 = internal global [9 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 723, i32 4 }], align 16
@.str.31 = private unnamed_addr constant [10 x i8] c"Barrier27\00", align 1
@barrierspat32 = internal global [9 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 723, i32 3 }], align 16
@.str.32 = private unnamed_addr constant [10 x i8] c"Barrier28\00", align 1
@barrierspat33 = internal global [4 x %struct.patval] [%struct.patval { i32 647, i32 5 }, %struct.patval { i32 648, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.33 = private unnamed_addr constant [10 x i8] c"Barrier29\00", align 1
@barrierspat34 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.34 = private unnamed_addr constant [10 x i8] c"Barrier30\00", align 1
@barrierspat35 = internal global [13 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 612, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.35 = private unnamed_addr constant [10 x i8] c"Barrier31\00", align 1
@barrierspat36 = internal global [11 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.36 = private unnamed_addr constant [10 x i8] c"Barrier32\00", align 1
@barrierspat37 = internal global [12 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.37 = private unnamed_addr constant [10 x i8] c"Barrier33\00", align 1
@barrierspat38 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.38 = private unnamed_addr constant [10 x i8] c"Barrier34\00", align 1
@barrierspat39 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.39 = private unnamed_addr constant [11 x i8] c"Barrier34b\00", align 1
@barrierspat40 = internal global [15 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 797, i32 4 }], align 16
@.str.40 = private unnamed_addr constant [10 x i8] c"Barrier35\00", align 1
@barrierspat41 = internal global [15 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 797, i32 3 }], align 16
@.str.41 = private unnamed_addr constant [10 x i8] c"Barrier36\00", align 1
@barrierspat42 = internal global [12 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.42 = private unnamed_addr constant [10 x i8] c"Barrier37\00", align 1
@barrierspat43 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.43 = private unnamed_addr constant [10 x i8] c"Barrier38\00", align 1
@barrierspat44 = internal global [19 x %struct.patval] [%struct.patval { i32 649, i32 5 }, %struct.patval { i32 686, i32 5 }, %struct.patval { i32 650, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 574, i32 4 }, %struct.patval { i32 724, i32 4 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 575, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 573, i32 4 }, %struct.patval { i32 610, i32 4 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 576, i32 4 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.44 = private unnamed_addr constant [10 x i8] c"Barrier39\00", align 1
@barrierspat45 = internal global [19 x %struct.patval] [%struct.patval { i32 649, i32 5 }, %struct.patval { i32 686, i32 5 }, %struct.patval { i32 650, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 611, i32 1 }, %struct.patval { i32 574, i32 3 }, %struct.patval { i32 724, i32 3 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 575, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 573, i32 3 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 576, i32 3 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.45 = private unnamed_addr constant [10 x i8] c"Barrier40\00", align 1
@barrierspat46 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 796, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.46 = private unnamed_addr constant [11 x i8] c"Barrier41a\00", align 1
@barrierspat47 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.47 = private unnamed_addr constant [11 x i8] c"Barrier41b\00", align 1
@barrierspat48 = internal global [5 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.48 = private unnamed_addr constant [10 x i8] c"Barrier42\00", align 1
@barrierspat49 = internal global [14 x %struct.patval] [%struct.patval { i32 722, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"Barrier43\00", align 1
@barrierspat50 = internal global [11 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.50 = private unnamed_addr constant [10 x i8] c"Barrier44\00", align 1
@barrierspat51 = internal global [12 x %struct.patval] [%struct.patval { i32 723, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 795, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.51 = private unnamed_addr constant [10 x i8] c"Barrier45\00", align 1
@barrierspat52 = internal global [12 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.52 = private unnamed_addr constant [10 x i8] c"Barrier46\00", align 1
@barrierspat53 = internal global [28 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 724, i32 5 }, %struct.patval { i32 761, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 4 }, %struct.patval { i32 796, i32 4 }, %struct.patval { i32 648, i32 4 }, %struct.patval { i32 612, i32 4 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 610, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 832, i32 4 }, %struct.patval { i32 797, i32 4 }, %struct.patval { i32 834, i32 4 }, %struct.patval { i32 613, i32 4 }, %struct.patval { i32 650, i32 4 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 833, i32 4 }, %struct.patval { i32 798, i32 4 }, %struct.patval { i32 835, i32 4 }], align 16
@.str.53 = private unnamed_addr constant [10 x i8] c"Barrier47\00", align 1
@barrierspat54 = internal global [35 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 686, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 724, i32 5 }, %struct.patval { i32 761, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 831, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 833, i32 3 }, %struct.patval { i32 612, i32 3 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 832, i32 3 }, %struct.patval { i32 797, i32 3 }, %struct.patval { i32 834, i32 3 }, %struct.patval { i32 613, i32 3 }, %struct.patval { i32 650, i32 3 }, %struct.patval { i32 720, i32 3 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 798, i32 3 }, %struct.patval { i32 835, i32 3 }], align 16
@.str.54 = private unnamed_addr constant [10 x i8] c"Barrier48\00", align 1
@barrierspat55 = internal global [8 x %struct.patval] [%struct.patval { i32 723, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.55 = private unnamed_addr constant [10 x i8] c"Barrier49\00", align 1
@barrierspat56 = internal global [6 x %struct.patval] [%struct.patval { i32 723, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.56 = private unnamed_addr constant [10 x i8] c"Barrier50\00", align 1
@barrierspat57 = internal global [6 x %struct.patval] [%struct.patval { i32 758, i32 5 }, %struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.57 = private unnamed_addr constant [10 x i8] c"Barrier51\00", align 1
@barrierspat58 = internal global [14 x %struct.patval] [%struct.patval { i32 649, i32 5 }, %struct.patval { i32 648, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 610, i32 4 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.58 = private unnamed_addr constant [10 x i8] c"Barrier52\00", align 1
@barrierspat59 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.59 = private unnamed_addr constant [10 x i8] c"Barrier53\00", align 1
@barrierspat60 = internal global [20 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 759, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 794, i32 3 }, %struct.patval { i32 795, i32 3 }, %struct.patval { i32 648, i32 3 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 683, i32 3 }, %struct.patval { i32 796, i32 3 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }], align 16
@.str.60 = private unnamed_addr constant [10 x i8] c"Barrier54\00", align 1
@barrierspat61 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 795, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.61 = private unnamed_addr constant [10 x i8] c"Barrier55\00", align 1
@barrierspat62 = internal global [12 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.62 = private unnamed_addr constant [10 x i8] c"Barrier56\00", align 1
@barrierspat63 = internal global [12 x %struct.patval] [%struct.patval { i32 759, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.63 = private unnamed_addr constant [11 x i8] c"Barrier56b\00", align 1
@barrierspat64 = internal global [3 x %struct.patval] [%struct.patval { i32 721, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }], align 16
@.str.64 = private unnamed_addr constant [10 x i8] c"Barrier57\00", align 1
@barrierspat65 = internal global [6 x %struct.patval] [%struct.patval { i32 720, i32 5 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 757, i32 4 }], align 16
@.str.65 = private unnamed_addr constant [10 x i8] c"Barrier58\00", align 1
@barrierspat66 = internal global [4 x %struct.patval] [%struct.patval { i32 683, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.66 = private unnamed_addr constant [10 x i8] c"Barrier59\00", align 1
@barrierspat67 = internal global [12 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.67 = private unnamed_addr constant [11 x i8] c"Barrier60a\00", align 1
@barrierspat68 = internal global [12 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.68 = private unnamed_addr constant [11 x i8] c"Barrier60b\00", align 1
@barrierspat69 = internal global [36 x %struct.patval] [%struct.patval { i32 609, i32 7 }, %struct.patval { i32 723, i32 7 }, %struct.patval { i32 572, i32 7 }, %struct.patval { i32 724, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 645, i32 4 }, %struct.patval { i32 571, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 759, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 608, i32 4 }, %struct.patval { i32 761, i32 4 }, %struct.patval { i32 760, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 574, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 575, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 576, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.69 = private unnamed_addr constant [10 x i8] c"Barrier61\00", align 1
@barrierspat70 = internal global [10 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.70 = private unnamed_addr constant [10 x i8] c"Barrier62\00", align 1
@barrierspat71 = internal global [16 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.71 = private unnamed_addr constant [10 x i8] c"Barrier63\00", align 1
@barrierspat72 = internal global [16 x %struct.patval] [%struct.patval { i32 685, i32 5 }, %struct.patval { i32 723, i32 5 }, %struct.patval { i32 760, i32 5 }, %struct.patval { i32 722, i32 5 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.72 = private unnamed_addr constant [10 x i8] c"Barrier64\00", align 1
@barrierspat73 = internal global [8 x %struct.patval] [%struct.patval { i32 686, i32 5 }, %struct.patval { i32 685, i32 5 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.73 = private unnamed_addr constant [10 x i8] c"Barrier65\00", align 1
@barrierspat74 = internal global [36 x %struct.patval] [%struct.patval { i32 724, i32 5 }, %struct.patval { i32 688, i32 5 }, %struct.patval { i32 687, i32 5 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 723, i32 2 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 797, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 761, i32 0 }, %struct.patval { i32 798, i32 0 }, %struct.patval { i32 614, i32 0 }, %struct.patval { i32 651, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 725, i32 0 }, %struct.patval { i32 762, i32 0 }, %struct.patval { i32 799, i32 0 }, %struct.patval { i32 615, i32 0 }, %struct.patval { i32 652, i32 0 }, %struct.patval { i32 689, i32 0 }, %struct.patval { i32 726, i32 0 }, %struct.patval { i32 763, i32 0 }, %struct.patval { i32 800, i32 0 }], align 16
@.str.74 = private unnamed_addr constant [10 x i8] c"Barrier66\00", align 1
@barrierspat75 = internal global [12 x %struct.patval] [%struct.patval { i32 610, i32 7 }, %struct.patval { i32 573, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 572, i32 0 }], align 16
@.str.75 = private unnamed_addr constant [11 x i8] c"Intrusion1\00", align 1
@barrierspat76 = internal global [12 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 572, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.76 = private unnamed_addr constant [12 x i8] c"Intrusion1b\00", align 1
@barrierspat77 = internal global [12 x %struct.patval] [%struct.patval { i32 610, i32 7 }, %struct.patval { i32 572, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.77 = private unnamed_addr constant [12 x i8] c"Intrusion1c\00", align 1
@barrierspat78 = internal global [12 x %struct.patval] [%struct.patval { i32 609, i32 7 }, %struct.patval { i32 572, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.78 = private unnamed_addr constant [12 x i8] c"Intrusion1d\00", align 1
@barrierspat79 = internal global [11 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 574, i32 7 }, %struct.patval { i32 609, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 572, i32 3 }, %struct.patval { i32 646, i32 3 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.79 = private unnamed_addr constant [11 x i8] c"Intrusion2\00", align 1
@barrierspat80 = internal global [11 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 574, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 572, i32 3 }, %struct.patval { i32 609, i32 3 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.80 = private unnamed_addr constant [11 x i8] c"Intrusion3\00", align 1
@barrierspat81 = internal global [12 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 649, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.81 = private unnamed_addr constant [11 x i8] c"Intrusion4\00", align 1
@barrierspat82 = internal global [12 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.82 = private unnamed_addr constant [12 x i8] c"Intrusion5a\00", align 1
@barrierspat83 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.83 = private unnamed_addr constant [12 x i8] c"Intrusion5b\00", align 1
@barrierspat84 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.84 = private unnamed_addr constant [11 x i8] c"Intrusion6\00", align 1
@barrierspat85 = internal global [9 x %struct.patval] [%struct.patval { i32 759, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.85 = private unnamed_addr constant [12 x i8] c"Intrusion7a\00", align 1
@barrierspat86 = internal global [4 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.86 = private unnamed_addr constant [12 x i8] c"Intrusion7b\00", align 1
@barrierspat87 = internal global [8 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 758, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.87 = private unnamed_addr constant [11 x i8] c"Intrusion8\00", align 1
@barrierspat88 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.88 = private unnamed_addr constant [11 x i8] c"Intrusion9\00", align 1
@barrierspat89 = internal global [11 x %struct.patval] [%struct.patval { i32 610, i32 7 }, %struct.patval { i32 573, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 645, i32 3 }, %struct.patval { i32 608, i32 3 }, %struct.patval { i32 571, i32 3 }, %struct.patval { i32 572, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 609, i32 0 }], align 16
@.str.89 = private unnamed_addr constant [12 x i8] c"Intrusion10\00", align 1
@barrierspat90 = internal global [12 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.90 = private unnamed_addr constant [12 x i8] c"Intrusion11\00", align 1
@barrierspat91 = internal global [12 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.91 = private unnamed_addr constant [13 x i8] c"Intrusion12a\00", align 1
@barrierspat92 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.92 = private unnamed_addr constant [13 x i8] c"Intrusion12b\00", align 1
@barrierspat93 = internal global [18 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 575, i32 1 }, %struct.patval { i32 574, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 610, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 576, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.93 = private unnamed_addr constant [12 x i8] c"Intrusion13\00", align 1
@barrierspat94 = internal global [14 x %struct.patval] [%struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.94 = private unnamed_addr constant [12 x i8] c"Intrusion14\00", align 1
@barrierspat95 = internal global [9 x %struct.patval] [%struct.patval { i32 649, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.95 = private unnamed_addr constant [12 x i8] c"Intrusion15\00", align 1
@barrierspat96 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.96 = private unnamed_addr constant [12 x i8] c"Intrusion16\00", align 1
@barrierspat97 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.97 = private unnamed_addr constant [12 x i8] c"Intrusion17\00", align 1
@barrierspat98 = internal global [15 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 682, i32 3 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.98 = private unnamed_addr constant [12 x i8] c"Intrusion18\00", align 1
@barrierspat99 = internal global [12 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 723, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.99 = private unnamed_addr constant [12 x i8] c"Intrusion19\00", align 1
@barrierspat100 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 4 }], align 16
@.str.100 = private unnamed_addr constant [12 x i8] c"Intrusion20\00", align 1
@barrierspat101 = internal global [9 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 686, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.101 = private unnamed_addr constant [12 x i8] c"Intrusion21\00", align 1
@barrierspat102 = internal global [9 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 757, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.102 = private unnamed_addr constant [13 x i8] c"Intrusion21b\00", align 1
@barrierspat103 = internal global [9 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 760, i32 0 }], align 16
@.str.103 = private unnamed_addr constant [12 x i8] c"Intrusion22\00", align 1
@barrierspat104 = internal global [6 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 759, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.104 = private unnamed_addr constant [12 x i8] c"Intrusion23\00", align 1
@barrierspat105 = internal global [6 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 758, i32 7 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.105 = private unnamed_addr constant [12 x i8] c"Intrusion24\00", align 1
@barrierspat106 = internal global [16 x %struct.patval] [%struct.patval { i32 609, i32 7 }, %struct.patval { i32 646, i32 7 }, %struct.patval { i32 610, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 720, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.106 = private unnamed_addr constant [12 x i8] c"Intrusion25\00", align 1
@barrierspat107 = internal global [16 x %struct.patval] [%struct.patval { i32 609, i32 7 }, %struct.patval { i32 646, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.107 = private unnamed_addr constant [12 x i8] c"Intrusion26\00", align 1
@barrierspat108 = internal global [12 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.108 = private unnamed_addr constant [12 x i8] c"Intrusion27\00", align 1
@barrierspat109 = internal global [13 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.109 = private unnamed_addr constant [12 x i8] c"Intrusion28\00", align 1
@barrierspat110 = internal global [24 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 645, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.110 = private unnamed_addr constant [12 x i8] c"Intrusion29\00", align 1
@barrierspat111 = internal global [24 x %struct.patval] [%struct.patval { i32 723, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 757, i32 4 }, %struct.patval { i32 719, i32 4 }, %struct.patval { i32 682, i32 4 }, %struct.patval { i32 756, i32 4 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 645, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 760, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 761, i32 0 }], align 16
@.str.111 = private unnamed_addr constant [12 x i8] c"Intrusion30\00", align 1
@barrierspat112 = internal global [13 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 687, i32 0 }], align 16
@.str.112 = private unnamed_addr constant [12 x i8] c"Intrusion31\00", align 1
@barrierspat113 = internal global [10 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.113 = private unnamed_addr constant [12 x i8] c"Intrusion32\00", align 1
@barrierspat114 = internal global [10 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.114 = private unnamed_addr constant [12 x i8] c"Intrusion33\00", align 1
@barrierspat115 = internal global [10 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 646, i32 4 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.115 = private unnamed_addr constant [12 x i8] c"Intrusion34\00", align 1
@barrierspat116 = internal global [22 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 687, i32 7 }, %struct.patval { i32 686, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 574, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 572, i32 0 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 575, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 576, i32 0 }, %struct.patval { i32 613, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.116 = private unnamed_addr constant [12 x i8] c"Intrusion35\00", align 1
@barrierspat117 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 3 }], align 16
@.str.117 = private unnamed_addr constant [12 x i8] c"Intrusion36\00", align 1
@barrierspat118 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 4 }], align 16
@.str.118 = private unnamed_addr constant [12 x i8] c"Intrusion37\00", align 1
@barrierspat119 = internal global [3 x %struct.patval] [%struct.patval { i32 647, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.119 = private unnamed_addr constant [12 x i8] c"Intrusion38\00", align 1
@barrierspat120 = internal global [8 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 7 }, %struct.patval { i32 720, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.120 = private unnamed_addr constant [12 x i8] c"Intrusion39\00", align 1
@barrierspat121 = internal global [3 x %struct.patval] [%struct.patval { i32 720, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.121 = private unnamed_addr constant [12 x i8] c"Intrusion40\00", align 1
@barrierspat122 = internal global [4 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 720, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.122 = private unnamed_addr constant [12 x i8] c"Intrusion41\00", align 1
@barrierspat123 = internal global [15 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 646, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 720, i32 4 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.123 = private unnamed_addr constant [12 x i8] c"Intrusion42\00", align 1
@barrierspat124 = internal global [9 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 611, i32 7 }, %struct.patval { i32 646, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.124 = private unnamed_addr constant [12 x i8] c"Intrusion43\00", align 1
@barrierspat125 = internal global [6 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 611, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.125 = private unnamed_addr constant [13 x i8] c"Intrusion44a\00", align 1
@barrierspat126 = internal global [10 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 609, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.126 = private unnamed_addr constant [13 x i8] c"Intrusion44b\00", align 1
@barrierspat127 = internal global [12 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 610, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.127 = private unnamed_addr constant [12 x i8] c"Intrusion45\00", align 1
@barrierspat128 = internal global [20 x %struct.patval] [%struct.patval { i32 722, i32 7 }, %struct.patval { i32 648, i32 7 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 3 }, %struct.patval { i32 761, i32 3 }, %struct.patval { i32 760, i32 3 }, %struct.patval { i32 612, i32 3 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 613, i32 3 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }, %struct.patval { i32 649, i32 0 }], align 16
@.str.128 = private unnamed_addr constant [12 x i8] c"Intrusion46\00", align 1
@barrierspat129 = internal global [12 x %struct.patval] [%struct.patval { i32 794, i32 7 }, %struct.patval { i32 756, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 4 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 793, i32 0 }, %struct.patval { i32 831, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 832, i32 0 }], align 16
@.str.129 = private unnamed_addr constant [12 x i8] c"Intrusion47\00", align 1
@barrierspat130 = internal global [11 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 719, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 756, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 683, i32 0 }], align 16
@.str.130 = private unnamed_addr constant [12 x i8] c"Intrusion48\00", align 1
@barrierspat131 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.131 = private unnamed_addr constant [12 x i8] c"Intrusion49\00", align 1
@barrierspat132 = internal global [8 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.132 = private unnamed_addr constant [12 x i8] c"Intrusion50\00", align 1
@barrierspat133 = internal global [7 x %struct.patval] [%struct.patval { i32 686, i32 7 }, %struct.patval { i32 648, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.133 = private unnamed_addr constant [13 x i8] c"Intrusion51a\00", align 1
@barrierspat134 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 7 }, %struct.patval { i32 722, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 683, i32 2 }, %struct.patval { i32 684, i32 2 }], align 16
@.str.134 = private unnamed_addr constant [13 x i8] c"Intrusion51b\00", align 1
@barrierspat135 = internal global [9 x %struct.patval] [%struct.patval { i32 721, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 3 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.135 = private unnamed_addr constant [12 x i8] c"Intrusion52\00", align 1
@barrierspat136 = internal global [6 x %struct.patval] [%struct.patval { i32 758, i32 7 }, %struct.patval { i32 720, i32 7 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 757, i32 0 }], align 16
@.str.136 = private unnamed_addr constant [12 x i8] c"Intrusion53\00", align 1
@barrierspat137 = internal global [11 x %struct.patval] [%struct.patval { i32 611, i32 7 }, %struct.patval { i32 647, i32 1 }, %struct.patval { i32 683, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 685, i32 4 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 609, i32 0 }], align 16
@.str.137 = private unnamed_addr constant [12 x i8] c"Intrusion54\00", align 1
@barrierspat138 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 722, i32 4 }], align 16
@.str.138 = private unnamed_addr constant [14 x i8] c"Nonterritory1\00", align 1
@barrierspat139 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 759, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 3 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.139 = private unnamed_addr constant [15 x i8] c"Nonterritory1b\00", align 1
@barrierspat140 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.140 = private unnamed_addr constant [15 x i8] c"Nonterritory1c\00", align 1
@barrierspat141 = internal global [7 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 612, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 611, i32 3 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.141 = private unnamed_addr constant [14 x i8] c"Nonterritory2\00", align 1
@barrierspat142 = internal global [7 x %struct.patval] [%struct.patval { i32 612, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 611, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.142 = private unnamed_addr constant [14 x i8] c"Nonterritory3\00", align 1
@barrierspat143 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 648, i32 4 }], align 16
@.str.143 = private unnamed_addr constant [14 x i8] c"Nonterritory4\00", align 1
@barrierspat144 = internal global [5 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.144 = private unnamed_addr constant [14 x i8] c"Nonterritory5\00", align 1
@barrierspat145 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 649, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.145 = private unnamed_addr constant [14 x i8] c"Nonterritory6\00", align 1
@barrierspat146 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.146 = private unnamed_addr constant [14 x i8] c"Nonterritory7\00", align 1
@barrierspat147 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.147 = private unnamed_addr constant [15 x i8] c"Nonterritory7b\00", align 1
@barrierspat148 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.148 = private unnamed_addr constant [15 x i8] c"Nonterritory7c\00", align 1
@barrierspat149 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 3 }, %struct.patval { i32 722, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.149 = private unnamed_addr constant [14 x i8] c"Nonterritory8\00", align 1
@barrierspat150 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.150 = private unnamed_addr constant [15 x i8] c"Nonterritory8b\00", align 1
@barrierspat151 = internal global [9 x %struct.patval] [%struct.patval { i32 574, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 612, i32 4 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 573, i32 0 }, %struct.patval { i32 610, i32 0 }], align 16
@.str.151 = private unnamed_addr constant [14 x i8] c"Nonterritory9\00", align 1
@barrierspat152 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 756, i32 3 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 757, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 682, i32 0 }, %struct.patval { i32 719, i32 0 }], align 16
@.str.152 = private unnamed_addr constant [15 x i8] c"Nonterritory10\00", align 1
@barrierspat153 = internal global [9 x %struct.patval] [%struct.patval { i32 686, i32 1 }, %struct.patval { i32 685, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 723, i32 0 }], align 16
@.str.153 = private unnamed_addr constant [15 x i8] c"Nonterritory11\00", align 1
@barrierspat154 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.154 = private unnamed_addr constant [15 x i8] c"Nonterritory12\00", align 1
@barrierspat155 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.155 = private unnamed_addr constant [15 x i8] c"Nonterritory13\00", align 1
@barrierspat156 = internal global [5 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 682, i32 0 }], align 16
@.str.156 = private unnamed_addr constant [15 x i8] c"Nonterritory14\00", align 1
@barrierspat157 = internal global [7 x %struct.patval] [%struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 719, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 720, i32 0 }, %struct.patval { i32 681, i32 0 }, %struct.patval { i32 682, i32 0 }], align 16
@.str.157 = private unnamed_addr constant [15 x i8] c"Nonterritory15\00", align 1
@barrierspat158 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 646, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.158 = private unnamed_addr constant [15 x i8] c"Nonterritory16\00", align 1
@barrierspat159 = internal global [6 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 720, i32 0 }], align 16
@.str.159 = private unnamed_addr constant [15 x i8] c"Nonterritory17\00", align 1
@barrierspat160 = internal global [4 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.160 = private unnamed_addr constant [16 x i8] c"Nonterritory17b\00", align 1
@barrierspat161 = internal global [8 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.161 = private unnamed_addr constant [16 x i8] c"Nonterritory18a\00", align 1
@barrierspat162 = internal global [10 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 722, i32 3 }, %struct.patval { i32 758, i32 4 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 611, i32 0 }], align 16
@.str.162 = private unnamed_addr constant [16 x i8] c"Nonterritory18b\00", align 1
@barrierspat163 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.163 = private unnamed_addr constant [15 x i8] c"Nonterritory19\00", align 1
@barrierspat164 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.164 = private unnamed_addr constant [15 x i8] c"Nonterritory20\00", align 1
@barrierspat165 = internal global [5 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 683, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.165 = private unnamed_addr constant [15 x i8] c"Nonterritory21\00", align 1
@barrierspat166 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 646, i32 0 }], align 16
@.str.166 = private unnamed_addr constant [15 x i8] c"Nonterritory22\00", align 1
@barrierspat167 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.167 = private unnamed_addr constant [15 x i8] c"Nonterritory23\00", align 1
@barrierspat168 = internal global [2 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.168 = private unnamed_addr constant [15 x i8] c"Nonterritory24\00", align 1
@barrierspat169 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.169 = private unnamed_addr constant [15 x i8] c"Nonterritory25\00", align 1
@barrierspat170 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 649, i32 2 }, %struct.patval { i32 611, i32 2 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.170 = private unnamed_addr constant [15 x i8] c"Nonterritory26\00", align 1
@barrierspat171 = internal global [3 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 758, i32 0 }], align 16
@.str.171 = private unnamed_addr constant [15 x i8] c"Nonterritory27\00", align 1
@barrierspat172 = internal global [4 x %struct.patval] [%struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 3 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }], align 16
@.str.172 = private unnamed_addr constant [15 x i8] c"Nonterritory28\00", align 1
@barrierspat173 = internal global [7 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 721, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.173 = private unnamed_addr constant [15 x i8] c"Nonterritory29\00", align 1
@barrierspat174 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 758, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }], align 16
@.str.174 = private unnamed_addr constant [15 x i8] c"Nonterritory30\00", align 1
@barrierspat175 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 758, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 795, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 796, i32 0 }], align 16
@.str.175 = private unnamed_addr constant [15 x i8] c"Nonterritory31\00", align 1
@barrierspat176 = internal global [9 x %struct.patval] [%struct.patval { i32 612, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 647, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.176 = private unnamed_addr constant [15 x i8] c"Nonterritory32\00", align 1
@barrierspat177 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 759, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.177 = private unnamed_addr constant [15 x i8] c"Nonterritory33\00", align 1
@barrierspat178 = internal global [9 x %struct.patval] [%struct.patval { i32 648, i32 1 }, %struct.patval { i32 686, i32 2 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 685, i32 2 }, %struct.patval { i32 649, i32 3 }, %struct.patval { i32 610, i32 3 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.178 = private unnamed_addr constant [15 x i8] c"Nonterritory34\00", align 1
@barrierspat179 = internal global [6 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 610, i32 0 }, %struct.patval { i32 611, i32 0 }, %struct.patval { i32 648, i32 0 }, %struct.patval { i32 647, i32 0 }], align 16
@.str.179 = private unnamed_addr constant [15 x i8] c"Nonterritory35\00", align 1
@barrierspat180 = internal global [7 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 723, i32 4 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 685, i32 0 }], align 16
@.str.180 = private unnamed_addr constant [15 x i8] c"Nonterritory36\00", align 1
@barrierspat181 = internal global [7 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 723, i32 3 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.181 = private unnamed_addr constant [15 x i8] c"Nonterritory37\00", align 1
@barrierspat182 = internal global [8 x %struct.patval] [%struct.patval { i32 759, i32 1 }, %struct.patval { i32 721, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 760, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 686, i32 0 }], align 16
@.str.182 = private unnamed_addr constant [15 x i8] c"Nonterritory38\00", align 1
@barrierspat183 = internal global [9 x %struct.patval] [%struct.patval { i32 684, i32 1 }, %struct.patval { i32 760, i32 1 }, %struct.patval { i32 722, i32 1 }, %struct.patval { i32 759, i32 2 }, %struct.patval { i32 758, i32 2 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 721, i32 0 }], align 16
@.str.183 = private unnamed_addr constant [15 x i8] c"Nonterritory39\00", align 1
@barrierspat184 = internal global [12 x %struct.patval] [%struct.patval { i32 685, i32 1 }, %struct.patval { i32 684, i32 1 }, %struct.patval { i32 648, i32 2 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 721, i32 0 }, %struct.patval { i32 722, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 686, i32 0 }, %struct.patval { i32 723, i32 0 }, %struct.patval { i32 650, i32 0 }, %struct.patval { i32 687, i32 0 }, %struct.patval { i32 724, i32 0 }], align 16
@.str.184 = private unnamed_addr constant [15 x i8] c"Nonterritory40\00", align 1
@barrierspat185 = internal global [10 x %struct.patval] [%struct.patval { i32 611, i32 1 }, %struct.patval { i32 686, i32 1 }, %struct.patval { i32 684, i32 2 }, %struct.patval { i32 722, i32 2 }, %struct.patval { i32 721, i32 4 }, %struct.patval { i32 647, i32 4 }, %struct.patval { i32 685, i32 0 }, %struct.patval { i32 612, i32 0 }, %struct.patval { i32 649, i32 0 }, %struct.patval { i32 648, i32 0 }], align 16
@.str.185 = private unnamed_addr constant [15 x i8] c"Nonterritory41\00", align 1
@transformation = external dso_local global [1369 x [8 x i32]], align 16
@stackp = external dso_local global i32, align 4
@worm = external dso_local global [400 x %struct.worm_data], align 16
@false_eye_territory = external dso_local global [400 x i32], align 16
@half_eye = external dso_local global [400 x %struct.half_eye_data], align 16

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat3(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32, i32, ...) @play_break_through_n(i32 %39, i32 2, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp eq i32 %45, 5
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat6(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %16
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
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %28
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
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 3, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %48, i32 1, i32 2, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br label %56

56:                                               ; preds = %47, %4
  %57 = phi i1 [ true, %4 ], [ %55, %47 ]
  %58 = zext i1 %57 to i32
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat7(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %13
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
  %24 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %23, i32 0, i32 18
  %25 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  br label %30

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @find_defense(i32 %28, i32* null)
  br label %30

30:                                               ; preds = %27, %20
  %31 = phi i32 [ %26, %20 ], [ %29, %27 ]
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat12(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %21
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
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @safe_move(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %37, i32 0, i32 1, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %36, %4
  %44 = phi i1 [ true, %4 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat15(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %32, i32 1, i32 2, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat17(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %30
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
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %53, i32 1, i32 3, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %69, label %61

61:                                               ; preds = %4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %62, i32 1, i32 2, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %61, %4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %13, align 4
  %76 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %70, i32 1, i32 3, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %12, align 4
  %84 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %79, i32 1, i32 2, i32 %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br label %87

87:                                               ; preds = %78, %69
  %88 = phi i1 [ true, %69 ], [ %86, %78 ]
  br label %89

89:                                               ; preds = %87, %61
  %90 = phi i1 [ false, %61 ], [ %88, %87 ]
  %91 = zext i1 %90 to i32
  ret i32 %91
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat18(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %35
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
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %46, i32 1, i32 3, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %55, i32 1, i32 2, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %54, %4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %63, i32 1, i32 2, i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %62, %54
  %71 = phi i1 [ false, %54 ], [ %69, %62 ]
  %72 = zext i1 %71 to i32
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat19(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %29
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
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %46, i32 1, i32 2, i32 %47, i32 %48, i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %54, i32 1, i32 3, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %63, i32 1, i32 2, i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %62, %53
  %72 = phi i1 [ true, %53 ], [ %70, %62 ]
  br label %73

73:                                               ; preds = %71, %4
  %74 = phi i1 [ false, %4 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  ret i32 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat20(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 2, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %47, i32 1, i32 2, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %46, %4
  %56 = phi i1 [ false, %4 ], [ %54, %46 ]
  %57 = zext i1 %56 to i32
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat21(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %16
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
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i32, ...) @play_break_through_n(i32 %39, i32 3, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat22(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %29
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
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %46, i32 1, i32 3, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %55, i32 1, i32 3, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %54, %4
  %65 = phi i1 [ true, %4 ], [ %63, %54 ]
  %66 = zext i1 %65 to i32
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat24(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 4, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 1, i32 4, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %48, %4
  %60 = phi i1 [ false, %4 ], [ %58, %48 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat26(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %28
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
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 4, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 1, i32 4, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %48, %4
  %60 = phi i1 [ false, %4 ], [ %58, %48 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat27(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 4, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 0, i32 4, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %48, %4
  %60 = phi i1 [ true, %4 ], [ %58, %48 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat30(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %28
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
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 4, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 1, i32 4, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  br label %59

59:                                               ; preds = %48, %4
  %60 = phi i1 [ false, %4 ], [ %58, %48 ]
  %61 = zext i1 %60 to i32
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat33(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %25, i32 1, i32 1, i32 %26, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat37(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %14
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
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 1, i32 %26, i32 %27)
  ret i32 %28
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat39(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %13
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
define internal i32 @autohelperbarrierspat42(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %16
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @countlib(i32 %39)
  %41 = icmp sgt i32 %40, 3
  br i1 %41, label %69, label %42

42:                                               ; preds = %4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @is_legal(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %69

47:                                               ; preds = %42
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @countlib(i32 %48)
  %50 = icmp sgt i32 %49, 2
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @accuratelib(i32 %52, i32 %53, i32 20, i32* null)
  %55 = icmp sle i32 %54, 2
  br i1 %55, label %65, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %57, i32 1, i32 3, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br label %65

65:                                               ; preds = %56, %51
  %66 = phi i1 [ true, %51 ], [ %64, %56 ]
  br label %67

67:                                               ; preds = %65, %47
  %68 = phi i1 [ false, %47 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67, %42, %4
  %70 = phi i1 [ true, %42 ], [ true, %4 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat43(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat46(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %21
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
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %32, i32 1, i32 3, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat47(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %17
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
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 796), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 795), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %46, i32 0, i32 4, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat48(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 2, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %47, i32 0, i32 2, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %46, %4
  %55 = phi i1 [ true, %4 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat50(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %46, i32 1, i32 4, i32 %47, i32 %48, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %56, i32 0, i32 3, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %55, %4
  %66 = phi i1 [ false, %4 ], [ %64, %55 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat58(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %14
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
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 1, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat60(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %18, i32 1, i32 1, i32 %19, i32 %20)
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat61(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sle i32 %33, 3
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp sge i32 %37, 3
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @countlib(i32 %40)
  %42 = icmp sge i32 %41, 3
  br label %43

43:                                               ; preds = %39, %35, %4
  %44 = phi i1 [ false, %35 ], [ false, %4 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat62(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 1, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat63(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = call i32 @safe_move(i32 %18, i32 %19)
  ret i32 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat64(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %13
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
define internal i32 @autohelperbarrierspat65(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %21
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
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sle i32 %33, 2
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @countlib(i32 %40)
  %42 = icmp sgt i32 %41, 1
  br label %43

43:                                               ; preds = %39, %35, %4
  %44 = phi i1 [ false, %35 ], [ false, %4 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat66(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 1, i32 2, i32 %26, i32 %27, i32 %28)
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat72(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %21
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
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %32, i32 1, i32 3, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat73(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %21
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
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %32, i32 1, i32 2, i32 %33, i32 %34, i32 %35)
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat75(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 534), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 533), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %47, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @connect_and_cut_helper(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i1 [ false, %35 ], [ %44, %39 ]
  br label %47

47:                                               ; preds = %45, %4
  %48 = phi i1 [ true, %4 ], [ %46, %45 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat76(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 534), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 533), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @countlib(i32 %32)
  %34 = icmp sgt i32 %33, 2
  br i1 %34, label %47, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @countlib(i32 %36)
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @connect_and_cut_helper(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %39, %35
  %46 = phi i1 [ false, %35 ], [ %44, %39 ]
  br label %47

47:                                               ; preds = %45, %4
  %48 = phi i1 [ true, %4 ], [ %46, %45 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat77(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 497), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 534), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 533), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @safe_move(i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  br label %64

45:                                               ; preds = %4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @countlib(i32 %46)
  %48 = icmp sgt i32 %47, 2
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @countlib(i32 %50)
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @connect_and_cut_helper(i32 %54, i32 %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %53, %49
  %60 = phi i1 [ false, %49 ], [ %58, %53 ]
  br label %61

61:                                               ; preds = %59, %45
  %62 = phi i1 [ true, %45 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %41
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat78(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 459), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 534), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 533), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  %37 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %32, i32 0, i32 3, i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  ret i32 %40
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat79(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 462), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 535), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 572), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 3, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 3, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 1, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %41
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat80(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 462), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 535), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 572), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 3, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %60

51:                                               ; preds = %4
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 3, %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 1, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %51, %41
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat81(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 2, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %56

47:                                               ; preds = %4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 3, %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 1, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %41
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat82(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 2, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %56

47:                                               ; preds = %4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 3, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 1, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %47, %41
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat83(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %56, i32 0, i32 3, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %75

66:                                               ; preds = %4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 3, %67
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %68, i32 1, i32 1, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %66, %55
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat84(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat85(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %21
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
  br i1 %33, label %39, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @countlib(i32 %35)
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %48

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 3, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %41, i32 1, i32 1, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %39, %34
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat86(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %42, i32 1, i32 2, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %57

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 3, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %50, i32 1, i32 1, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %48, %41
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat87(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %35, i32 1, i32 1, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load i32, i32* @stackp, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %46, i32 0, i32 16
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %47, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @attack(i32 %51, i32* null)
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i32 [ %49, %43 ], [ %52, %50 ]
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %34
  %58 = phi i1 [ false, %34 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %69

60:                                               ; preds = %4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 3, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %62, i32 1, i32 1, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat88(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %21
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
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %32, i32 1, i32 2, i32 %33, i32 %34, i32 %35)
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat89(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 534), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 497), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 533), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %42, i32 1, i32 2, i32 %43, i32 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %57

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 3, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %50, i32 1, i32 1, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %48, %41
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat90(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %28
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
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 2, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %46, i32 1, i32 2, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %45, %4
  %53 = phi i1 [ false, %4 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat91(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %28
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
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 2, i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %46, i32 1, i32 2, i32 %47, i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br label %52

52:                                               ; preds = %45, %4
  %53 = phi i1 [ true, %4 ], [ %51, %45 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat92(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i32, i32, i32, ...) @somewhere(i32 %42, i32 0, i32 1, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %13, align 4
  %52 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %47, i32 1, i32 2, i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %46, %41
  %55 = phi i1 [ true, %41 ], [ %53, %46 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %66

57:                                               ; preds = %4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 3, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %59, i32 1, i32 1, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %57, %54
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat93(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 499), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @countlib(i32 %25)
  %27 = icmp sge i32 %26, 2
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @countlib(i32 %29)
  %31 = icmp sge i32 %30, 2
  br label %32

32:                                               ; preds = %28, %4
  %33 = phi i1 [ false, %4 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat94(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 4, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat95(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 612), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 3, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %5, align 4
  br label %77

58:                                               ; preds = %4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @countlib(i32 %59)
  %61 = icmp sgt i32 %60, 2
  br i1 %61, label %62, label %74

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @countlib(i32 %63)
  %65 = icmp sgt i32 %64, 2
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 3, %67
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %68, i32 1, i32 1, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %66, %62, %58
  %75 = phi i1 [ false, %62 ], [ false, %58 ], [ %73, %66 ]
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %74, %48
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat99(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat100(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %4
  %56 = load i32, i32* %15, align 4
  %57 = call i32 @countlib(i32 %56)
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %60, i32 1, i32 1, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %59, %55
  %67 = phi i1 [ false, %55 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %87

69:                                               ; preds = %4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 3, %70
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %71, i32 1, i32 1, i32 %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %84, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 3, %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %78, i32 0, i32 1, i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br label %84

84:                                               ; preds = %76, %69
  %85 = phi i1 [ false, %69 ], [ %83, %76 ]
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %84, %66
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat101(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat102(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat103(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat104(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 759), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 1, i32 4, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %66

57:                                               ; preds = %4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 3, %58
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %14, align 4
  %62 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %59, i32 1, i32 1, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %57, %48
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat105(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %14
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
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat109(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 612), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 575), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 4, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat111(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %36
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
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 6, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat112(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat113(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat115(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %28, i32 1, i32 2, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat116(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 535), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 498), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 537), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 499), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %53, i32 1, i32 6, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60)
  ret i32 %61
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat117(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat118(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat119(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat120(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %40

31:                                               ; preds = %4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 3, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %33, i32 1, i32 1, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %31, %27
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat121(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %37

21:                                               ; preds = %4
  %22 = load i32, i32* @stackp, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %27, i32 0, i32 16
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %28, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  br label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @attack(i32 %32, i32* null)
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i32 [ %30, %24 ], [ %33, %31 ]
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %34, %4
  %38 = phi i1 [ false, %4 ], [ %36, %34 ]
  %39 = zext i1 %38 to i32
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat122(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %13
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
define internal i32 @autohelperbarrierspat123(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 535), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 (i32, i32, i32, ...) @somewhere(i32 %46, i32 0, i32 1, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub nsw i32 3, %52
  %54 = call i32 @safe_move(i32 %51, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %50, %4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %13, align 4
  %62 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %57, i32 0, i32 3, i32 %58, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %56, %50
  %66 = phi i1 [ false, %50 ], [ %64, %56 ]
  %67 = zext i1 %66 to i32
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat124(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 498), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 499), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 534), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @countlib(i32 %39)
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %42, label %66

42:                                               ; preds = %4
  %43 = load i32, i32* @stackp, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %47
  %49 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %48, i32 0, i32 16
  %50 = getelementptr inbounds [10 x i32], [10 x i32]* %49, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %66, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @attack(i32 %54, i32* null)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53, %45
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %58, i32 1, i32 3, i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  br label %66

66:                                               ; preds = %57, %53, %45, %4
  %67 = phi i1 [ false, %53 ], [ false, %45 ], [ false, %4 ], [ %65, %57 ]
  %68 = zext i1 %67 to i32
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat125(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 537), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %85, label %55

55:                                               ; preds = %4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @safe_move(i32 %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %55
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %13, align 4
  %63 = call i32 (i32, i32, i32, ...) @somewhere(i32 %61, i32 0, i32 1, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %66, i32 1, i32 2, i32 %67, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65, %60
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %15, align 4
  %79 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %73, i32 0, i32 3, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  br label %82

82:                                               ; preds = %72, %65, %55
  %83 = phi i1 [ false, %65 ], [ false, %55 ], [ %81, %72 ]
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %110

85:                                               ; preds = %4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 3, %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %87, i32 1, i32 1, i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 (i32, i32, i32, ...) @somewhere(i32 %93, i32 0, i32 1, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %8, align 4
  %99 = sub nsw i32 3, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %99, i32 1, i32 1, i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %97, %92
  %106 = phi i1 [ true, %92 ], [ %104, %97 ]
  br label %107

107:                                              ; preds = %105, %85
  %108 = phi i1 [ false, %85 ], [ %106, %105 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %107, %82
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat126(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 535), i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 572), i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %100, label %69

69:                                               ; preds = %4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @safe_move(i32 %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %97

74:                                               ; preds = %69
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 (i32, i32, i32, ...) @somewhere(i32 %75, i32 0, i32 1, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %80, i32 1, i32 2, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %79, %74
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* %17, align 4
  %94 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %87, i32 0, i32 4, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %86, %79, %69
  %98 = phi i1 [ false, %79 ], [ false, %69 ], [ %96, %86 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %109

100:                                              ; preds = %4
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 3, %101
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %102, i32 1, i32 1, i32 %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %100, %97
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat127(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %21
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
  %34 = call i32 @safe_move(i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %37, i32 1, i32 2, i32 %38, i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %36, %4
  %44 = phi i1 [ false, %4 ], [ %42, %36 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat128(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %16
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
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %28
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
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %39, i32 1, i32 3, i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat129(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @countlib(i32 %18)
  %20 = icmp sgt i32 %19, 2
  %21 = zext i1 %20 to i32
  ret i32 %21
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat131(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %60, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %35, i32 1, i32 1, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load i32, i32* @stackp, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %46, i32 0, i32 16
  %48 = getelementptr inbounds [10 x i32], [10 x i32]* %47, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @attack(i32 %51, i32* null)
  br label %53

53:                                               ; preds = %50, %43
  %54 = phi i32 [ %49, %43 ], [ %52, %50 ]
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br label %57

57:                                               ; preds = %53, %34
  %58 = phi i1 [ false, %34 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %69

60:                                               ; preds = %4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 3, %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %62, i32 1, i32 1, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %60, %57
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat132(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 757), i64 0, i64 %16
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %39, i32 1, i32 3, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat133(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 (i32, i32, ...) @play_break_through_n(i32 %49, i32 2, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %65

56:                                               ; preds = %4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 3, %57
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %58, i32 1, i32 1, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %56, %48
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat134(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %15
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
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i32, i32, ...) @play_break_through_n(i32 %32, i32 0, i32 %33, i32 %34, i32 %35)
  %37 = icmp eq i32 %36, 5
  %38 = zext i1 %37 to i32
  ret i32 %38
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat135(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %26, i32 1, i32 1, i32 %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat136(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %14
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
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %25, i32 0, i32 1, i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  ret i32 %31
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat137(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 571), i64 0, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 535), i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i32, i32, i32, ...) @somewhere(i32 %60, i32 0, i32 1, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %4
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i32, i32, ...) @somewhere(i32 %65, i32 0, i32 1, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 (i32, i32, i32, ...) @somewhere(i32 %70, i32 0, i32 1, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %69, %64, %4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i32, i32, i32, ...) @somewhere(i32 %75, i32 0, i32 1, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %86, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %80, i32 1, i32 2, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79, %74
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %87, i32 1, i32 2, i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %86, %79, %69
  %94 = phi i1 [ false, %79 ], [ false, %69 ], [ %92, %86 ]
  %95 = zext i1 %94 to i32
  ret i32 %95
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat138(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %31, i32 %32)
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 3, %41
  call void @influence_mark_non_territory(i32 %40, i32 %42)
  br label %43

43:                                               ; preds = %39, %33
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat139(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @is_halfeye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @is_false_eye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21, %4
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %34)
  br label %35

35:                                               ; preds = %31, %25, %21
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat140(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @is_false_eye(%struct.half_eye_data* getelementptr inbounds ([400 x %struct.half_eye_data], [400 x %struct.half_eye_data]* @half_eye, i64 0, i64 0), i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %28, i32 %29)
  br label %30

30:                                               ; preds = %27, %21, %4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat141(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  %26 = sub nsw i32 3, %25
  call void @influence_mark_non_territory(i32 %24, i32 %26)
  br label %27

27:                                               ; preds = %23, %4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat142(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %24, i32 %25)
  br label %26

26:                                               ; preds = %23, %4
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat143(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %31, i32 %32)
  br label %33

33:                                               ; preds = %30, %4
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [400 x i32], [400 x i32]* @false_eye_territory, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 3, %41
  call void @influence_mark_non_territory(i32 %40, i32 %42)
  br label %43

43:                                               ; preds = %39, %33
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat144(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 3, %26
  call void @influence_mark_non_territory(i32 %25, i32 %27)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 3, %29
  call void @influence_mark_non_territory(i32 %28, i32 %30)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat145(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %25, i32 %26)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %27, i32 %28)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat146(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %34)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 3, %36
  call void @influence_mark_non_territory(i32 %35, i32 %37)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat147(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %57, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @safe_move(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 1, i32 3, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @connect_and_cut_helper2(i32 %48, i32 %49, i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br label %54

54:                                               ; preds = %47, %39, %34
  %55 = phi i1 [ false, %39 ], [ false, %34 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %61

57:                                               ; preds = %4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %8, align 4
  %60 = sub nsw i32 3, %59
  call void @influence_mark_non_territory(i32 %58, i32 %60)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %54
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat148(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 537), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 0, i32 3, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %69

59:                                               ; preds = %4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 3, %61
  call void @influence_mark_non_territory(i32 %60, i32 %62)
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 3, %64
  call void @influence_mark_non_territory(i32 %63, i32 %65)
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 3, %67
  call void @influence_mark_non_territory(i32 %66, i32 %68)
  store i32 0, i32* %5, align 4
  br label %69

69:                                               ; preds = %59, %48
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat149(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %38

31:                                               ; preds = %4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %34)
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 3, %36
  call void @influence_mark_non_territory(i32 %35, i32 %37)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat150(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %67, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @safe_move(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %54, i32 0, i32 5, i32 %55, i32 %56, i32 %57, i32 0, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  br label %64

64:                                               ; preds = %53, %48
  %65 = phi i1 [ false, %48 ], [ %63, %53 ]
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 3, %69
  call void @influence_mark_non_territory(i32 %68, i32 %70)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat151(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 537), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 499), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @safe_move(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %45

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 3, %40
  call void @influence_mark_non_territory(i32 %39, i32 %41)
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 3, %43
  call void @influence_mark_non_territory(i32 %42, i32 %44)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %34
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat152(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 718), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 755), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 681), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 717), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 680), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @safe_move(i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %65

52:                                               ; preds = %4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 3, %54
  call void @influence_mark_non_territory(i32 %53, i32 %55)
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 3, %57
  call void @influence_mark_non_territory(i32 %56, i32 %58)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 3, %60
  call void @influence_mark_non_territory(i32 %59, i32 %61)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 3, %63
  call void @influence_mark_non_territory(i32 %62, i32 %64)
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %52, %48
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat153(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 612), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @safe_move(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 1, i32 1, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %39, %34
  %46 = phi i1 [ false, %34 ], [ %44, %39 ]
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %52

48:                                               ; preds = %4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sub nsw i32 3, %50
  call void @influence_mark_non_territory(i32 %49, i32 %51)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat154(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %34)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = sub nsw i32 3, %36
  call void @influence_mark_non_territory(i32 %35, i32 %37)
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 3, %39
  call void @influence_mark_non_territory(i32 %38, i32 %40)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat155(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %14
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
  %26 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %25, i32 %26)
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %27, i32 %28)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat156(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 681), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 718), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 680), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @safe_move(i32 %35, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 3, %40
  call void @influence_mark_non_territory(i32 %39, i32 %41)
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 3, %43
  call void @influence_mark_non_territory(i32 %42, i32 %44)
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 3, %46
  call void @influence_mark_non_territory(i32 %45, i32 %47)
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %38, %34
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat157(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 680), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 717), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 679), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 716), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 678), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 715), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @safe_move(i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %78

59:                                               ; preds = %4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 3, %61
  call void @influence_mark_non_territory(i32 %60, i32 %62)
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 3, %64
  call void @influence_mark_non_territory(i32 %63, i32 %65)
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %8, align 4
  %68 = sub nsw i32 3, %67
  call void @influence_mark_non_territory(i32 %66, i32 %68)
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 3, %70
  call void @influence_mark_non_territory(i32 %69, i32 %71)
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 3, %73
  call void @influence_mark_non_territory(i32 %72, i32 %74)
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 3, %76
  call void @influence_mark_non_territory(i32 %75, i32 %77)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %59, %55
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat158(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 646), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @safe_move(i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %68

52:                                               ; preds = %4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 3, %54
  call void @influence_mark_non_territory(i32 %53, i32 %55)
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sub nsw i32 3, %57
  call void @influence_mark_non_territory(i32 %56, i32 %58)
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 3, %60
  call void @influence_mark_non_territory(i32 %59, i32 %61)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 3, %63
  call void @influence_mark_non_territory(i32 %62, i32 %64)
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 3, %66
  call void @influence_mark_non_territory(i32 %65, i32 %67)
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %52, %48
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat159(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 682), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 719), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 720), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %42, i32 0, i32 4, i32 %43, i32 %44, i32 0, i32 %45, i32 %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %57

52:                                               ; preds = %4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %53, i32 %54)
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %55, i32 %56)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %41
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat160(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 3, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %36, i32 0, i32 1, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %47

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %34
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat161(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 610), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %14, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %49, i32 0, i32 5, i32 %50, i32 %51, i32 %52, i32 0, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %70

60:                                               ; preds = %4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub nsw i32 3, %62
  call void @influence_mark_non_territory(i32 %61, i32 %63)
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sub nsw i32 3, %65
  call void @influence_mark_non_territory(i32 %64, i32 %66)
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 3, %68
  call void @influence_mark_non_territory(i32 %67, i32 %69)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %60, %48
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat162(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 537), i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %56, i32 0, i32 7, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 0, i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %5, align 4
  br label %85

69:                                               ; preds = %4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %8, align 4
  %72 = sub nsw i32 3, %71
  call void @influence_mark_non_territory(i32 %70, i32 %72)
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %8, align 4
  %75 = sub nsw i32 3, %74
  call void @influence_mark_non_territory(i32 %73, i32 %75)
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %8, align 4
  %78 = sub nsw i32 3, %77
  call void @influence_mark_non_territory(i32 %76, i32 %78)
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %8, align 4
  %81 = sub nsw i32 3, %80
  call void @influence_mark_non_territory(i32 %79, i32 %81)
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 3, %83
  call void @influence_mark_non_territory(i32 %82, i32 %84)
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %69, %55
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat163(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %28, i32 1, i32 2, i32 %29, i32 %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @safe_move(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %27
  %40 = phi i1 [ false, %27 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %49

42:                                               ; preds = %4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = sub nsw i32 3, %44
  call void @influence_mark_non_territory(i32 %43, i32 %45)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 3, %47
  call void @influence_mark_non_territory(i32 %46, i32 %48)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat164(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %51, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @stackp, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %33, i32 0, i32 16
  %35 = getelementptr inbounds [10 x i32], [10 x i32]* %34, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %48

38:                                               ; preds = %27
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @attack(i32 %39, i32* null)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38, %30
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %43, i32 1, i32 1, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %42, %38, %30
  %49 = phi i1 [ false, %38 ], [ false, %30 ], [ %47, %42 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %54

51:                                               ; preds = %4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat165(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 609), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 645), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 608), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %35, i32 1, i32 2, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 2, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %41, %34
  %50 = phi i1 [ false, %34 ], [ %48, %41 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %59

52:                                               ; preds = %4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %53, i32 %54)
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %55, i32 %56)
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %57, i32 %58)
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %52, %49
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat166(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 683), i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @safe_move(i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %31

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 3, %26
  call void @influence_mark_non_territory(i32 %25, i32 %27)
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = sub nsw i32 3, %29
  call void @influence_mark_non_territory(i32 %28, i32 %30)
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %20
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat167(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 3, %19
  call void @influence_mark_non_territory(i32 %18, i32 %20)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat168(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %19 = load i32, i32* %7, align 4
  call void @influence_mark_non_territory(i32 %18, i32 %19)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat169(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 684), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %47, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @countlib(i32 %35)
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @connect_and_cut_helper(i32 %39, i32 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %38, %34
  %45 = phi i1 [ false, %34 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %52

47:                                               ; preds = %4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %48, i32 %49)
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %50, i32 %51)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %44
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat170(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %34)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat171(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %34)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat172(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @safe_move(i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %35

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 3, %33
  call void @influence_mark_non_territory(i32 %32, i32 %34)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat173(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %21
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
  br i1 %33, label %49, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @safe_move(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %40, i32 1, i32 2, i32 %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %39, %34
  %47 = phi i1 [ false, %34 ], [ %45, %39 ]
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %54

49:                                               ; preds = %4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %50, i32 %51)
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %52, i32 %53)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat174(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 648), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 647), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %74, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 2, i32 %50, i32 %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %56, i32 1, i32 3, i32 %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %14, align 4
  %69 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %64, i32 1, i32 3, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %63, %55, %48
  %72 = phi i1 [ false, %55 ], [ false, %48 ], [ %70, %63 ]
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %81

74:                                               ; preds = %4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 3, %76
  call void @influence_mark_non_territory(i32 %75, i32 %77)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 3, %79
  call void @influence_mark_non_territory(i32 %78, i32 %80)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %74, %71
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat175(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 758), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 2, i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 3, i32 %50, i32 %51, i32 %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br label %56

56:                                               ; preds = %48, %41
  %57 = phi i1 [ false, %41 ], [ %55, %48 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %66

59:                                               ; preds = %4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 3, %61
  call void @influence_mark_non_territory(i32 %60, i32 %62)
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %8, align 4
  %65 = sub nsw i32 3, %64
  call void @influence_mark_non_territory(i32 %63, i32 %65)
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %59, %56
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat176(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 575), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 612), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 537), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %13, align 4
  %56 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 1, i32 5, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %5, align 4
  br label %67

60:                                               ; preds = %4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %61, i32 %62)
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %63, i32 %64)
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %60, %48
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat177(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %22
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
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 3, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %50, i32 1, i32 3, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %49, %41
  %59 = phi i1 [ false, %41 ], [ %57, %49 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %71

61:                                               ; preds = %4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 3, %63
  call void @influence_mark_non_territory(i32 %62, i32 %64)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 3, %66
  call void @influence_mark_non_territory(i32 %65, i32 %67)
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 3, %69
  call void @influence_mark_non_territory(i32 %68, i32 %70)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %61, %58
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat178(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 575), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 537), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %71, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @safe_move(i32 %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = sub nsw i32 3, %40
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (i32, i32, i32, ...) @somewhere(i32 %41, i32 0, i32 1, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %46, i32 1, i32 1, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %66, label %51

51:                                               ; preds = %45, %39
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 3, %52
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i32, i32, i32, ...) @somewhere(i32 %53, i32 0, i32 1, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %58, i32 1, i32 2, i32 %59, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br label %64

64:                                               ; preds = %57, %51
  %65 = phi i1 [ false, %51 ], [ %63, %57 ]
  br label %66

66:                                               ; preds = %64, %45
  %67 = phi i1 [ true, %45 ], [ %65, %64 ]
  br label %68

68:                                               ; preds = %66, %34
  %69 = phi i1 [ false, %34 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 3, %73
  call void @influence_mark_non_territory(i32 %72, i32 %74)
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat179(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 573), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 536), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 537), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %42, i32 1, i32 3, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %50, i32 1, i32 3, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br label %58

58:                                               ; preds = %49, %41
  %59 = phi i1 [ false, %41 ], [ %57, %49 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %71

61:                                               ; preds = %4
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 3, %63
  call void @influence_mark_non_territory(i32 %62, i32 %64)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 3, %66
  call void @influence_mark_non_territory(i32 %65, i32 %67)
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 3, %69
  call void @influence_mark_non_territory(i32 %68, i32 %70)
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %61, %58
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat180(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %15 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @countlib(i32 %28)
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %47

31:                                               ; preds = %27
  %32 = load i32, i32* @stackp, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [400 x %struct.worm_data], [400 x %struct.worm_data]* @worm, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.worm_data, %struct.worm_data* %37, i32 0, i32 16
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* %38, i64 0, i64 0
  %40 = load i32, i32* %39, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @attack(i32 %42, i32* null)
  br label %44

44:                                               ; preds = %41, %34
  %45 = phi i32 [ %40, %34 ], [ %43, %41 ]
  %46 = icmp ne i32 %45, 0
  br label %47

47:                                               ; preds = %44, %27
  %48 = phi i1 [ false, %27 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %51, i32 %52)
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat181(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @countlib(i32 %35)
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @safe_move(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %44, i32 1, i32 1, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br label %49

49:                                               ; preds = %43, %38, %34
  %50 = phi i1 [ false, %38 ], [ false, %34 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %56

52:                                               ; preds = %4
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 3, %54
  call void @influence_mark_non_territory(i32 %53, i32 %55)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat182(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 760), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = sub nsw i32 3, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %36, i32 0, i32 1, i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %5, align 4
  br label %47

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %45, i32 %46)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %34
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat183(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %17 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 721), i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 723), i64 0, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 760), i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 722), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = call i32 (i32, i32, i32, ...) @play_attack_defend2_n(i32 %42, i32 0, i32 3, i32 %43, i32 0, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %55

51:                                               ; preds = %4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 3, %53
  call void @influence_mark_non_territory(i32 %52, i32 %54)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat184(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 649), i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 686), i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 685), i64 0, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 612), i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 650), i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %43, %44
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %49, i32 0, i32 4, i32 %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %64

59:                                               ; preds = %4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %60, i32 %61)
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  call void @influence_mark_non_territory(i32 %62, i32 %63)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %48
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autohelperbarrierspat185(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
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
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 574), i64 0, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 611), i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* getelementptr inbounds ([1369 x [8 x i32]], [1369 x [8 x i32]]* @transformation, i64 0, i64 575), i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 (i32, i32, i32, ...) @play_attack_defend_n(i32 %35, i32 1, i32 2, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %44

40:                                               ; preds = %4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 3, %42
  call void @influence_mark_non_territory(i32 %41, i32 %43)
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %34
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @play_break_through_n(i32, i32, ...) #1

declare dso_local i32 @play_attack_defend2_n(i32, i32, i32, ...) #1

declare dso_local i32 @find_defense(i32, i32*) #1

declare dso_local i32 @safe_move(i32, i32) #1

declare dso_local i32 @play_attack_defend_n(i32, i32, i32, ...) #1

declare dso_local i32 @attack(i32, i32*) #1

declare dso_local i32 @countlib(i32) #1

declare dso_local i32 @is_legal(i32, i32) #1

declare dso_local i32 @accuratelib(i32, i32, i32, i32*) #1

declare dso_local i32 @connect_and_cut_helper(i32, i32, i32) #1

declare dso_local i32 @somewhere(i32, i32, i32, ...) #1

declare dso_local void @influence_mark_non_territory(i32, i32) #1

declare dso_local i32 @is_halfeye(%struct.half_eye_data*, i32) #1

declare dso_local i32 @is_false_eye(%struct.half_eye_data*, i32) #1

declare dso_local i32 @connect_and_cut_helper2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
